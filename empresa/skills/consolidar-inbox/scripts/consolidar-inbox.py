#!/usr/bin/env python3
"""consolidar-inbox.py — 3º estágio do fluxo de captura do kab-brain.

Lê staging/{area}/*.md, calcula confiança, promove o que tá maduro pra
areas/{area}/contexto/, preserva original em staging/{area}/.processed/.

Sprint 3b (2026-05-22).
"""

from __future__ import annotations

import argparse
import re
import shutil
import sys
from dataclasses import dataclass, field
from datetime import datetime, timezone
from pathlib import Path
from typing import Optional

import yaml

# ─── Constantes ──────────────────────────────────────────────────────

AREAS_VALIDAS = {
    "producao", "vendas", "qualidade",
    "logistica", "manutencao", "rh", "financeiro",
}

# Slug vago = palavras que sinalizam imaturidade
PALAVRAS_VAGAS = {
    "duvida", "ideia", "talvez", "rascunho",
    "incompleto", "wip", "tbd", "rascunhar",
}

# Heurística 3 gatilhos (mesma do save-kab.sh / team-sync.sh)
GATILHO_REGEX = re.compile(
    r"(salário|comissão|comissao|bônus individual|bonus individual|"
    r"pró-labore|pro-labore|holerite|"
    r"R\$[ ]?\d+[\.,]\d+ (do|para|de o) [A-Z][a-zà-ÿ]+|"
    r"intercompany|Koide Kokan|empréstimo intercompany|emprestimo intercompany|"
    r"NE \d|notas explicativas|DRE detalhad|"
    r"conflito.*[A-Z][a-zà-ÿ]+|"
    r"avaliação.*[A-Z][a-zà-ÿ]+|avaliacao.*[A-Z][a-zà-ÿ]+|"
    r"desligamento|"
    r"contrato (Gestamp|Yamaha|Indab|Sumiriko|YAB|Tuopu|DN Automotivos|Polistampo)|"
    r"RHiD|banco de horas|ponto individual|cargo no RHiD|d[íi]vida de cadastro|"
    r"candor|pontos sens[íi]veis|avalia[çc][ãa]o de desempenho|escala de turno)",
    re.IGNORECASE,
)

DATA_PREFIX_RE = re.compile(r"^\d{4}-\d{2}-\d{2}-")

# ─── Modelos ─────────────────────────────────────────────────────────


@dataclass
class Item:
    md_path: Path
    sidecar_path: Optional[Path]
    area: str
    slug_sem_data: str
    frontmatter: dict
    body: str

    confianca_alta: bool = True
    motivos_baixa: list[str] = field(default_factory=list)
    destino_canonico: Optional[Path] = None
    audit_path: Optional[Path] = None


@dataclass
class Relatorio:
    promovidos: list[tuple[Path, Path]] = field(default_factory=list)
    precisa_revisao: list[tuple[Path, list[str]]] = field(default_factory=list)
    bloqueados_gatilho: list[Path] = field(default_factory=list)

    def imprimir(self) -> str:
        linhas: list[str] = []
        linhas.append(f"# Consolidação — {datetime.now().strftime('%Y-%m-%d %H:%M')}")
        linhas.append("")
        linhas.append(f"- ✅ Promovidos: **{len(self.promovidos)}**")
        linhas.append(f"- ⚠️ Precisa revisão: **{len(self.precisa_revisao)}**")
        linhas.append(f"- 🚨 Bloqueados por gatilho: **{len(self.bloqueados_gatilho)}**")
        linhas.append("")

        if self.promovidos:
            linhas.append("## ✅ Promovidos pra canônico")
            for origem, destino in self.promovidos:
                linhas.append(f"- `{origem}` → `{destino}`")
            linhas.append("")

        if self.precisa_revisao:
            linhas.append("## ⚠️ Precisa revisão humana")
            for path, motivos in self.precisa_revisao:
                linhas.append(f"- `{path}` — {', '.join(motivos)}")
            linhas.append("")

        if self.bloqueados_gatilho:
            linhas.append("## 🚨 Bloqueados por gatilho (3 gatilhos sensíveis)")
            for path in self.bloqueados_gatilho:
                linhas.append(f"- `{path}`")
            linhas.append("")

        return "\n".join(linhas)


# ─── Parsing ─────────────────────────────────────────────────────────


def parse_md(path: Path) -> tuple[dict, str]:
    """Retorna (frontmatter_dict, body_str). Tolerante a frontmatter ausente."""
    txt = path.read_text(encoding="utf-8")
    if not txt.startswith("---"):
        return {}, txt

    # Frontmatter delimitado por --- ... ---
    partes = txt.split("---", 2)
    if len(partes) < 3:
        return {}, txt

    try:
        fm = yaml.safe_load(partes[1]) or {}
    except yaml.YAMLError as e:
        print(f"⚠️  YAML inválido em {path}: {e}", file=sys.stderr)
        fm = {}
    body = partes[2].lstrip("\n")
    return fm, body


def escrever_md(path: Path, frontmatter: dict, body: str) -> None:
    fm_yaml = yaml.dump(
        frontmatter,
        sort_keys=False,
        allow_unicode=True,
        default_flow_style=False,
    )
    conteudo = f"---\n{fm_yaml}---\n\n{body}".rstrip() + "\n"
    path.write_text(conteudo, encoding="utf-8")


# ─── Lógica ──────────────────────────────────────────────────────────


def slug_sem_data(filename: str) -> str:
    """Remove prefix YYYY-MM-DD- e extensão .md."""
    base = filename.removesuffix(".md")
    if DATA_PREFIX_RE.match(base):
        return base[11:]  # remove "2026-05-22-"
    return base


def inventariar(vault: Path, area_filter: Optional[str] = None) -> list[Item]:
    staging = vault / "staging"
    itens: list[Item] = []

    areas_a_processar = [area_filter] if area_filter else sorted(AREAS_VALIDAS)

    for area in areas_a_processar:
        area_dir = staging / area
        if not area_dir.is_dir():
            continue

        # Só *.md no nível raiz da área — .processed/ é ignorado
        for md_path in sorted(area_dir.glob("*.md")):
            fm, body = parse_md(md_path)
            sidecar = md_path.with_suffix(".meta.yaml")
            if not sidecar.exists():
                # algumas vezes pode ser .yaml em vez de .meta.yaml
                alt = md_path.with_suffix(".yaml")
                sidecar = alt if alt.exists() else None

            item = Item(
                md_path=md_path,
                sidecar_path=sidecar if (sidecar and sidecar.exists()) else None,
                area=area,
                slug_sem_data=slug_sem_data(md_path.name),
                frontmatter=fm,
                body=body,
            )
            itens.append(item)

    return itens


def avaliar(item: Item, vault: Path) -> None:
    """Mutates item: define confianca_alta + motivos_baixa + destino_canonico."""
    motivos: list[str] = []

    # Critério 1: area definida e válida
    area_fm = item.frontmatter.get("area", "").strip().lower() if item.frontmatter else ""
    if not area_fm or area_fm not in AREAS_VALIDAS:
        motivos.append("area-vazia-ou-invalida")
    elif area_fm != item.area:
        # area do frontmatter diverge da pasta — usa a pasta como fonte de verdade
        # mas marca como motivo
        motivos.append(f"area-fm-diverge ({area_fm}!={item.area})")

    # Critério 2: slug sem palavras vagas
    slug_lower = item.slug_sem_data.lower()
    palavras_vagas_achadas = [p for p in PALAVRAS_VAGAS if p in slug_lower]
    if palavras_vagas_achadas:
        motivos.append(f"slug-vago ({','.join(palavras_vagas_achadas)})")

    # Critério 3: status atual
    status = item.frontmatter.get("status", "").lower() if item.frontmatter else ""
    if status == "precisa-revisao":
        motivos.append("ja-marcado-revisao")

    # Critério 4: gatilho sensível
    texto_completo = item.body + " " + str(item.frontmatter.get("tags", ""))
    if GATILHO_REGEX.search(texto_completo):
        motivos.append("gatilho-sensivel")

    # Critério 5: conflito de destino
    destino = vault / "areas" / item.area / "contexto" / f"{item.slug_sem_data}.md"
    item.destino_canonico = destino
    if destino.exists():
        motivos.append("conflito-destino-existente")

    # Critério 6: sidecar destino_sugerido coerente (se houver)
    if item.sidecar_path:
        try:
            sc = yaml.safe_load(item.sidecar_path.read_text(encoding="utf-8")) or {}
            destino_sug = (sc.get("destino_sugerido") or "").strip()
            if destino_sug and item.area not in destino_sug:
                motivos.append(f"sidecar-destino-diverge ({destino_sug})")
        except Exception:
            motivos.append("sidecar-yaml-invalido")

    # Resultado
    item.motivos_baixa = motivos
    item.confianca_alta = len(motivos) == 0

    # Audit path
    item.audit_path = vault / "staging" / item.area / ".processed" / item.md_path.name


# ─── Ações ───────────────────────────────────────────────────────────


def promover(item: Item, dry_run: bool, relatorio: Relatorio) -> None:
    """Move o item pra canônico. Atualiza frontmatter. Copia original pra .processed/."""
    assert item.destino_canonico is not None
    assert item.audit_path is not None

    if dry_run:
        relatorio.promovidos.append((item.md_path, item.destino_canonico))
        return

    # Atualiza frontmatter
    fm = dict(item.frontmatter)
    fm["status"] = "ativo"
    fm["promovido_em"] = datetime.now(timezone.utc).astimezone().isoformat()
    fm["atualizado"] = datetime.now().strftime("%Y-%m-%d")
    fm.pop("staged_at", None)

    # Cria pasta de destino
    item.destino_canonico.parent.mkdir(parents=True, exist_ok=True)
    escrever_md(item.destino_canonico, fm, item.body)

    # Copia original pra .processed/ (versão original, sem mudança de frontmatter)
    item.audit_path.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(item.md_path, item.audit_path)

    # Move sidecar pra audit também (descartado do canônico)
    if item.sidecar_path:
        sidecar_audit = item.audit_path.with_suffix(".meta.yaml")
        shutil.copy2(item.sidecar_path, sidecar_audit)
        item.sidecar_path.unlink()

    # Remove original do staging/
    item.md_path.unlink()

    relatorio.promovidos.append((item.md_path, item.destino_canonico))


def marcar_revisao(item: Item, dry_run: bool, relatorio: Relatorio) -> None:
    """Atualiza frontmatter pra precisa-revisao + motivos."""
    if "gatilho-sensivel" in item.motivos_baixa:
        relatorio.bloqueados_gatilho.append(item.md_path)
    else:
        relatorio.precisa_revisao.append((item.md_path, item.motivos_baixa))

    if dry_run:
        return

    fm = dict(item.frontmatter)
    fm["status"] = "precisa-revisao"
    fm["motivos_baixa_confianca"] = item.motivos_baixa
    fm["avaliado_em"] = datetime.now(timezone.utc).astimezone().isoformat()
    escrever_md(item.md_path, fm, item.body)


# ─── Modo interativo ─────────────────────────────────────────────────


def perguntar(item: Item) -> str:
    """Retorna: 'y' (promove), 'n' (deixa em staging), 's' (skip), 'e' (edit), 'q' (quit)."""
    print(f"\n━━━ {item.md_path.name} (área: {item.area}) ━━━")
    print(f"  Confiança: {'ALTA' if item.confianca_alta else 'BAIXA'}")
    if item.motivos_baixa:
        print(f"  Motivos baixa: {', '.join(item.motivos_baixa)}")
    print(f"  Destino: {item.destino_canonico}")
    preview = item.body.strip().split("\n", 2)
    print(f"  Preview: {preview[0] if preview else '(vazio)'}")
    resp = input("  Promover? [y/n/s(kip)/q(uit)]: ").strip().lower()
    return resp or "n"


# ─── Main ────────────────────────────────────────────────────────────


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Consolida staging do kab-brain → canônico em areas/{x}/contexto/",
    )
    parser.add_argument(
        "--vault",
        default="/home/eps/Área de trabalho/Erico/brains/kab-brain",
        help="Path do kab-brain",
    )
    parser.add_argument(
        "--auto",
        action="store_true",
        help="Modo automático (default): promove confiança alta, marca o resto",
    )
    parser.add_argument(
        "--interactive",
        action="store_true",
        help="Pergunta item por item, mesmo confiança alta",
    )
    parser.add_argument("--area", help="Filtra por uma área específica")
    parser.add_argument("--dry-run", action="store_true", help="Não modifica nada")
    parser.add_argument("--relatorio", help="Salva relatório em arquivo (default: stdout)")

    args = parser.parse_args()

    if args.interactive and args.auto:
        print("❌ --auto e --interactive são mutuamente exclusivos", file=sys.stderr)
        return 1
    # Default: --auto
    if not args.interactive:
        args.auto = True

    if args.area and args.area not in AREAS_VALIDAS:
        print(f"❌ Área inválida: {args.area}. Use uma de: {AREAS_VALIDAS}", file=sys.stderr)
        return 1

    vault = Path(args.vault)
    if not vault.is_dir():
        print(f"❌ Vault não existe: {vault}", file=sys.stderr)
        return 1

    # 1. Inventariar
    itens = inventariar(vault, area_filter=args.area)
    if not itens:
        print("✅ Nada pra consolidar — staging está vazio.")
        return 0

    print(f"📦 {len(itens)} itens em staging.")

    # 2. Avaliar
    for it in itens:
        avaliar(it, vault)

    relatorio = Relatorio()

    # 3. Agir
    for item in itens:
        if args.interactive:
            resp = perguntar(item)
            if resp == "q":
                break
            if resp == "y":
                promover(item, args.dry_run, relatorio)
            else:
                marcar_revisao(item, args.dry_run, relatorio)
        else:  # --auto
            if item.confianca_alta:
                promover(item, args.dry_run, relatorio)
            else:
                marcar_revisao(item, args.dry_run, relatorio)

    # 4. Reportar
    txt = relatorio.imprimir()
    print()
    print(txt)

    if args.relatorio:
        Path(args.relatorio).write_text(txt, encoding="utf-8")
        print(f"\n📄 Relatório salvo: {args.relatorio}")

    if args.dry_run:
        print("\n⚠️  DRY-RUN — nada foi modificado.")

    return 0


if __name__ == "__main__":
    sys.exit(main())
