#!/usr/bin/env bash
# save-kab.sh — captura uma nota no inbox individual do kab-brain (1º estágio).
#
# Uso:
#   save-kab.sh --autor erico --area vendas --titulo "Regra nova qualificacao" \
#               --conteudo "Lead de agência só prioriza acima de R$20k/mês" \
#               --fonte manual
#
# Flags:
#   --autor      Nome em lowercase (erico, gabriel, fernando, carla, mayra)
#   --area       producao | vendas | qualidade | logistica | manutencao | rh | financeiro
#                (deixar vazio se ambíguo)
#   --titulo     Texto curto que vira o # heading + base do slug
#   --conteudo   Corpo da nota (ou - pra ler de stdin)
#   --fonte      manual | telegram-bot | voz | email (default: manual)
#   --tags       Lista separada por vírgula (opcional)
#   --sidecar    Gera .meta.yaml ao lado (default: só se fonte != manual)
#   --vault      Path do kab-brain (default: ~/Área de trabalho/Erico/brains/kab-brain)
#   --dry-run    Mostra o que faria, não grava
#
# Saída:
#   - Imprime o path do arquivo criado
#   - Retorna 0 se sucesso, 1 se erro, 2 se gatilho sensível detectado

set -euo pipefail

VAULT_KAB="${VAULT_KAB:-/home/eps/Área de trabalho/Erico/brains/kab-brain}"
VAULT_PESSOAL="${VAULT_PESSOAL:-/home/eps/Área de trabalho/Erico/brains/erico-brain}"

AUTOR=""
AREA=""
TITULO=""
CONTEUDO=""
FONTE="manual"
TAGS=""
SIDECAR=""
DRY_RUN="no"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --autor)     AUTOR="$2"; shift 2;;
        --area)      AREA="$2"; shift 2;;
        --titulo)    TITULO="$2"; shift 2;;
        --conteudo)  CONTEUDO="$2"; shift 2;;
        --fonte)     FONTE="$2"; shift 2;;
        --tags)      TAGS="$2"; shift 2;;
        --sidecar)   SIDECAR="yes"; shift;;
        --vault)     VAULT_KAB="$2"; shift 2;;
        --dry-run)   DRY_RUN="yes"; shift;;
        *) echo "❌ Flag desconhecida: $1" >&2; exit 1;;
    esac
done

# ─── Validações ──────────────────────────────────────────────────────

if [[ -z "$AUTOR" ]]; then
    echo "❌ --autor é obrigatório" >&2; exit 1
fi
if [[ -z "$TITULO" ]]; then
    echo "❌ --titulo é obrigatório" >&2; exit 1
fi
if [[ -z "$CONTEUDO" ]]; then
    echo "❌ --conteudo é obrigatório (use '-' pra stdin)" >&2; exit 1
fi

# Conteúdo de stdin?
if [[ "$CONTEUDO" == "-" ]]; then
    CONTEUDO=$(cat)
fi

# Sidecar default: yes se fonte != manual
if [[ -z "$SIDECAR" ]]; then
    [[ "$FONTE" != "manual" ]] && SIDECAR="yes" || SIDECAR="no"
fi

# Áreas válidas
AREAS_VALIDAS="producao vendas qualidade logistica manutencao rh financeiro"
if [[ -n "$AREA" ]] && ! grep -qw "$AREA" <<< "$AREAS_VALIDAS"; then
    echo "❌ Área inválida: '$AREA'. Use uma de: $AREAS_VALIDAS" >&2
    exit 1
fi

# ─── Heurística dos 3 gatilhos ───────────────────────────────────────

# Regex bem conservadora — captura padrões claros, não tudo.
GATILHO_REGEX='(salário|comissão|comissao|bônus individual|bonus individual|pró-labore|pro-labore|holerite|R\$[ ]?[0-9]+[\.,][0-9]+ (do|para|de o) [A-Z][a-z]+|intercompany|Koide Kokan|empréstimo intercompany|emprestimo intercompany|NE [0-9]|notas explicativas|DRE detalhad|conflito.*[A-Z][a-z]+|avaliação.*[A-Z][a-z]+|avaliacao.*[A-Z][a-z]+|desligamento|contrato (Gestamp|Yamaha|Indab|Sumiriko|YAB|Tuopu|DN Automotivos|Polistampo))'

if grep -qiE "$GATILHO_REGEX" <<< "$CONTEUDO $TITULO"; then
    echo "⚠️  ALERTA: captura tem padrão dos 3 gatilhos (dinheiro nominal / pessoa específica / jurídico)."
    echo "    Vou salvar no cofre pessoal (erico-brain/00-Inbox/) em vez do kab-brain."
    echo "    Cancele com Ctrl-C nos próximos 5s se quiser sobrescrever a decisão."
    for i in 5 4 3 2 1; do
        printf "    %d... " $i
        sleep 1
    done
    echo ""

    # Redirecionar pro cofre
    DESTINO_DIR="$VAULT_PESSOAL/00-Inbox"
    mkdir -p "$DESTINO_DIR"
    SENSIVEL="yes"
else
    SENSIVEL="no"
    # Garantir inbox/{autor}/ existe no kab-brain
    DESTINO_DIR="$VAULT_KAB/inbox/$AUTOR"
    mkdir -p "$DESTINO_DIR"
fi

# ─── Gerar slug e path ───────────────────────────────────────────────

# Slug: lowercase, sem acentos, kebab-case, max 6 palavras
slugify() {
    echo "$1" \
        | iconv -f utf-8 -t ascii//TRANSLIT 2>/dev/null \
        | tr '[:upper:]' '[:lower:]' \
        | sed -E 's/[^a-z0-9 ]+/ /g; s/ +/ /g; s/^ //; s/ $//' \
        | awk '{ for(i=1;i<=NF && i<=6;i++) printf "%s%s", $i, (i<NF && i<6 ? "-" : ""); print "" }'
}

SLUG=$(slugify "$TITULO")
DATA=$(date +%Y-%m-%d)
TIMESTAMP_ISO=$(date -Iseconds)
ARQUIVO="$DESTINO_DIR/$DATA-$SLUG.md"

# Idempotência: se já existe, sufixar
if [[ -f "$ARQUIVO" ]]; then
    SUFIXO=2
    while [[ -f "$DESTINO_DIR/$DATA-$SLUG-$SUFIXO.md" ]]; do
        SUFIXO=$((SUFIXO+1))
    done
    ARQUIVO="$DESTINO_DIR/$DATA-$SLUG-$SUFIXO.md"
fi

# ─── Montar conteúdo ─────────────────────────────────────────────────

TAGS_YAML="[]"
if [[ -n "$TAGS" ]]; then
    TAGS_YAML=$(echo "$TAGS" | sed 's/,/, /g' | awk '{print "["$0"]"}')
fi

MD_CONTENT=$(cat <<EOF
---
tipo: nota
area: ${AREA:-}
status: inbox
criado: $DATA
autor: $AUTOR
fonte: $FONTE
tags: $TAGS_YAML
---

# $TITULO

$CONTEUDO
EOF
)

if [[ "$DRY_RUN" == "yes" ]]; then
    echo "=== DRY RUN ==="
    echo "Arquivo: $ARQUIVO"
    echo ""
    echo "$MD_CONTENT"
    if [[ "$SIDECAR" == "yes" ]]; then
        echo ""
        echo "=== Sidecar: ${ARQUIVO%.md}.meta.yaml ==="
        echo "fonte: $FONTE"
        echo "capturado_em: $TIMESTAMP_ISO"
        echo "area_sugerida: ${AREA:-}"
        echo "gatilhos_sensiveis_detectados: $SENSIVEL"
    fi
    exit 0
fi

# ─── Gravar ──────────────────────────────────────────────────────────

printf '%s\n' "$MD_CONTENT" > "$ARQUIVO"

if [[ "$SIDECAR" == "yes" ]]; then
    SIDECAR_PATH="${ARQUIVO%.md}.meta.yaml"
    cat > "$SIDECAR_PATH" <<EOF
fonte: $FONTE
capturado_em: $TIMESTAMP_ISO
area_sugerida: ${AREA:-}
gatilhos_sensiveis_detectados: $SENSIVEL
confianca: ${AREA:+alta}${AREA:-baixa}
EOF
fi

# ─── Saída ───────────────────────────────────────────────────────────

if [[ "$SENSIVEL" == "yes" ]]; then
    echo "🔒 Salvo no COFRE PESSOAL (gatilho dos 3): $ARQUIVO"
    exit 2
else
    echo "✅ Capturado em: $ARQUIVO"
    [[ "$SIDECAR" == "yes" ]] && echo "   + sidecar: ${ARQUIVO%.md}.meta.yaml"
    echo ""
    echo "   Quando estiver maduro pra time ver, roda /team-sync"
    exit 0
fi
