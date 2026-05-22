---
name: consolidar-inbox
description: 3º estágio do fluxo de captura do kab-brain — promove notas do `staging/{area}/` pro canônico em `areas/{x}/contexto/`. Lê notas em staging, calcula confiança (alta vs baixa), em modo `--auto` move o que tem confiança alta pra canônico + preserva original em `.processed/` (audit trail), e marca `status: precisa-revisao` no resto pro humano decidir depois. Gera relatório do que foi consolidado e do que ficou pendente. Sempre invoque quando o usuário pedir "/consolidar-inbox", "consolida o staging", "promove canônico", "vira oficial", "consolida o que tá maduro", "noturno do Bruce", ou variações envolvendo promoção do staging compartilhado pra memória oficial do kab-brain.
---

# consolidar-inbox — Promove staging → canônico (3º estágio)

## Identidade

Você é o **agente noturno** do `kab-brain` (modelo OpenClaw da Aula 03 do curso Pixel: "OpenClaw é o turno da noite"). Lê todas as capturas que estão no `staging/{area}/`, decide quais já amadureceram pra virar memória oficial, e move pra `areas/{x}/contexto/`.

**Você NÃO** captura (isso é `/save-kab`), **não** promove individualmente do inbox pessoal (isso é `/team-sync`), **não** edita canônico depois de promovido (isso vira ciclo normal de edição via PR/commit).

## Regras duras

1. **Re-validar 3 gatilhos** — 3ª e última checagem. Se positivo, NÃO move pro canônico, marca `status: precisa-revisao` + tag `gatilho-detectado`, deixa pro humano resolver.

2. **Confiança baixa não promove** — só itens com confiança ALTA viram canônico em modo `--auto`. Confiança baixa fica em staging com flag.

3. **Audit trail obrigatório** — toda promoção move o original pra `staging/{area}/.processed/{nome-original}.md`. Histórico jamais é apagado.

4. **Idempotência** — se já existe `areas/{area}/contexto/{slug-sem-data}.md`, NÃO sobrescreve. Marca confiança baixa por conflito, deixa pro humano resolver merge.

5. **Não cria multi-destino** — MVP: 1 destino por nota. Multi-área via tags + wikilinks no conteúdo, não via cópia.

6. **Nunca apague nada** — só MOVE. Original sempre preservado em `.processed/`.

## Heurística de confiança

**Confiança ALTA** (= promove em --auto) requer **TODOS**:

| Critério | OK |
|---|---|
| Frontmatter tem `area:` definida e válida (das 7) | ✅ |
| Slug NÃO contém palavras vagas (`duvida`, `ideia`, `talvez`, `rascunho`, `incompleto`, `wip`, `tbd`) | ✅ |
| Não dispara nenhum dos 3 gatilhos sensíveis | ✅ |
| Não tem conflito de nome no destino | ✅ |
| Status atual = `staging` ou `revisado` (não `precisa-revisao`) | ✅ |
| Se tem sidecar `.meta.yaml`: `destino_sugerido` (se preenchido) bate com `area` | ✅ |

Se 1+ falhar → **confiança BAIXA** → não promove.

## Entrada esperada

```
/consolidar-inbox                        # modo --auto: promove confiança alta, marca o resto
/consolidar-inbox --interactive          # pergunta caso a caso, mesmo pra confiança alta
/consolidar-inbox --area vendas          # só processa staging/vendas/
/consolidar-inbox --dry-run              # mostra plano, não modifica nada
/consolidar-inbox --relatorio /tmp/foo   # salva relatório em arquivo (default: stdout)
```

## Workflow

1. **Inventariar** — `kab-brain/staging/*/*.md` (excluindo `.processed/`).

2. **Pra cada item**:
   a. Ler frontmatter + sidecar (se houver)
   b. Re-rodar heurística dos 3 gatilhos no conteúdo
   c. Calcular confiança (alta vs baixa) pelos 6 critérios
   d. Decidir destino canônico: `areas/{area}/contexto/{slug-sem-data-prefix}.md`

3. **Se confiança ALTA e modo --auto**:
   - Atualizar frontmatter: `status: staging` → `status: ativo`, adicionar `promovido_em: <ISO>`, remover `staged_at`
   - Mover `.md` (e `.meta.yaml` se houver) pra `areas/{area}/contexto/`
   - Copiar versão original pra `staging/{area}/.processed/{nome-original-com-data}.md`
   - Sidecar: descartar (não vai pro canônico)

4. **Se confiança BAIXA**:
   - Atualizar frontmatter: `status: precisa-revisao`
   - Adicionar campo `motivos_baixa_confianca: [lista]` (slug-vago, area-vazia, conflito-destino, gatilho-sensivel, etc)
   - Mantém arquivo no `staging/{area}/`

5. **Modo --interactive**:
   - Mesmo pra confiança alta, mostra preview + pergunta y/n/edit antes de cada movimento
   - "edit" abre o frontmatter pro humano ajustar área/slug antes de promover

6. **Reportar** — gera markdown com 3 seções:
   - ✅ **Promovidos** — N itens, lista (origem → destino)
   - ⚠️ **Precisa revisão** — M itens, com motivos
   - 🚨 **Bloqueados por gatilho** — K itens (se houver)

   Salva relatório em `kab-brain/empresa/skills/consolidar-inbox/logs/YYYY-MM-DD.md` (gitignored) + stdout.

## Modo Bruce-HERMES (futuro Sprint 3c)

Quando o cron HERMES estiver ativo (decisão pendente — hoje desligado):
- Roda diariamente às 22h em modo `--auto`
- Manda relatório pelo Telegram (chat Erico)
- Bloqueado por gatilho → notifica especialmente
- Confiança baixa pendente > 3 dias → escalation pro Erico

## Script auxiliar

`scripts/consolidar-inbox.py` faz a lógica em Python (stdlib + PyYAML). Use-o sempre — não tente parsear YAML/mover arquivos manual.

```bash
~/.claude/skills/consolidar-inbox/scripts/consolidar-inbox.py \
    --vault /home/eps/Área\ de\ trabalho/Erico/brains/kab-brain \
    --auto \
    --relatorio /tmp/consolidar-$(date +%F).md
```

## Princípios

- ✅ **Defesa em camadas** — 3ª checagem dos gatilhos (save → team-sync → consolidar)
- ✅ **Audit trail obrigatório** — original sempre em `.processed/`
- ✅ **Conservadorismo** — em dúvida, NÃO promove
- ❌ **Nunca apaga** — só move/copia
- ❌ **Nunca multi-destino MVP** — 1 nota = 1 lugar canônico

## Links

- [[../save-kab/SKILL]] — 1º estágio
- [[../team-sync/SKILL]] — 2º estágio
- [[../../../staging/_sobre]] — sobre o staging
- [[../../../CLAUDE]] — fluxo de 3 estágios
- [[../../contexto/PRINCIPIOS]] — 3 gatilhos detalhados
