#!/usr/bin/env bash
# team-sync.sh — promove notas de inbox/{autor}/ pro staging/{area}/.
#
# 2º estágio do fluxo de captura do kab-brain (Sprint 3a).
#
# Uso:
#   team-sync.sh                                     # interativo (lista + pergunta)
#   team-sync.sh --all                               # promove tudo
#   team-sync.sh --item 2026-05-22-foo.md           # arquivo específico
#   team-sync.sh --autor erico                       # explicita autor (default: $USER)
#   team-sync.sh --area-override vendas              # força área (se ambíguo)
#   team-sync.sh --dry-run                           # mostra o que faria
#
# NÃO faz git. Use /sync depois.

set -euo pipefail

VAULT_KAB="${VAULT_KAB:-/home/eps/Área de trabalho/Erico/brains/kab-brain}"
AUTOR="${KAB_AUTHOR:-${USER:-erico}}"
ITEM=""
AREA_OVERRIDE=""
MODO="interativo"
DRY_RUN="no"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --autor)          AUTOR="$2"; shift 2;;
        --item)           ITEM="$2"; MODO="single"; shift 2;;
        --all)            MODO="all"; shift;;
        --area-override)  AREA_OVERRIDE="$2"; shift 2;;
        --vault)          VAULT_KAB="$2"; shift 2;;
        --dry-run)        DRY_RUN="yes"; shift;;
        *) echo "❌ Flag desconhecida: $1" >&2; exit 1;;
    esac
done

INBOX_DIR="$VAULT_KAB/inbox/$AUTOR"
STAGING_BASE="$VAULT_KAB/staging"

if [[ ! -d "$INBOX_DIR" ]]; then
    echo "❌ Inbox não existe: $INBOX_DIR" >&2
    echo "   Cria com: mkdir -p '$INBOX_DIR'" >&2
    exit 1
fi

# ─── Helpers ────────────────────────────────────────────────────────

# Mesma regex do save-kab.sh (defesa em camadas)
GATILHO_REGEX='(salário|comissão|comissao|bônus individual|bonus individual|pró-labore|pro-labore|holerite|R\$[ ]?[0-9]+[\.,][0-9]+ (do|para|de o) [A-Z][a-z]+|intercompany|Koide Kokan|empréstimo intercompany|emprestimo intercompany|NE [0-9]|notas explicativas|DRE detalhad|conflito.*[A-Z][a-z]+|avaliação.*[A-Z][a-z]+|avaliacao.*[A-Z][a-z]+|desligamento|contrato (Gestamp|Yamaha|Indab|Sumiriko|YAB|Tuopu|DN Automotivos|Polistampo))'

# Extrai um campo do frontmatter YAML simples
extrai_campo() {
    local arquivo=$1
    local campo=$2
    awk -v c="$campo" '
        /^---$/ { fm++; next }
        fm == 1 && $0 ~ "^"c":" {
            sub("^"c":[ ]*", "")
            gsub(/^["\x27 ]+|["\x27 ]+$/, "")
            print
            exit
        }
        fm >= 2 { exit }
    ' "$arquivo"
}

# Valida área
area_valida() {
    local a=$1
    grep -qw "$a" <<< "producao vendas qualidade logistica manutencao rh financeiro"
}

# Move um arquivo específico
mover_item() {
    local arq=$1
    local arq_base
    arq_base=$(basename "$arq")

    # Já tá num staging? Ignora.
    if [[ "$arq" == *"/staging/"* ]]; then
        echo "  ⏭  $arq_base — já está no staging"
        return 0
    fi

    # Lê área do frontmatter
    local area
    area=$(extrai_campo "$arq" "area")

    # Override?
    if [[ -n "$AREA_OVERRIDE" ]]; then
        area="$AREA_OVERRIDE"
    fi

    if [[ -z "$area" ]]; then
        echo "  ❌ $arq_base — frontmatter sem 'area'. Use --area-override ou edite o arquivo." >&2
        return 1
    fi

    if ! area_valida "$area"; then
        echo "  ❌ $arq_base — área inválida: '$area'" >&2
        return 1
    fi

    # Re-checagem dos 3 gatilhos
    if grep -qiE "$GATILHO_REGEX" "$arq"; then
        echo "  🚨 $arq_base — gatilho dos 3 detectado. NÃO movendo. Inspecione o conteúdo:"
        echo "     grep -iE '$GATILHO_REGEX' '$arq' | head -3" >&2
        return 1
    fi

    # Destino
    local destino="$STAGING_BASE/$area/$arq_base"
    if [[ -f "$destino" ]]; then
        echo "  ⚠️  $arq_base — já existe em staging/$area/. Pulando (use --force pra overwrite)." >&2
        return 1
    fi

    if [[ "$DRY_RUN" == "yes" ]]; then
        echo "  [dry] $arq_base → staging/$area/"
        return 0
    fi

    # Atualizar frontmatter: status inbox → staging + staged_at
    local timestamp
    timestamp=$(date -Iseconds)
    local tmpfile
    tmpfile=$(mktemp)

    awk -v ts="$timestamp" '
        BEGIN { fm = 0; staged_at_added = 0 }
        /^---$/ { fm++; print; next }
        fm == 1 && /^status:/ {
            sub(/inbox/, "staging")
            print
            if (!staged_at_added) {
                print "staged_at: " ts
                staged_at_added = 1
            }
            next
        }
        { print }
    ' "$arq" > "$tmpfile"

    mv "$tmpfile" "$destino"
    rm -f "$arq"

    # Move sidecar se existir
    local sidecar="${arq%.md}.meta.yaml"
    if [[ -f "$sidecar" ]]; then
        mv "$sidecar" "$STAGING_BASE/$area/$(basename "$sidecar")"
    fi

    echo "  ✅ $arq_base → staging/$area/"
    return 0
}

# ─── Modo single ────────────────────────────────────────────────────

if [[ "$MODO" == "single" ]]; then
    arq="$INBOX_DIR/$ITEM"
    if [[ ! -f "$arq" ]]; then
        echo "❌ Não achei: $arq" >&2
        exit 1
    fi
    echo "Promovendo 1 item:"
    mover_item "$arq"
    exit $?
fi

# ─── Listar pendentes ───────────────────────────────────────────────

# Mapfile inválido pra paths com espaço — uso array com find
declare -a PENDENTES
while IFS= read -r -d '' f; do
    PENDENTES+=("$f")
done < <(find "$INBOX_DIR" -maxdepth 1 -type f -name '*.md' -print0 | sort -z)

if [[ ${#PENDENTES[@]} -eq 0 ]]; then
    echo "✅ Inbox de '$AUTOR' está vazia. Nada pra promover."
    exit 0
fi

echo "━━━ 📦 Inbox de '$AUTOR' (${#PENDENTES[@]} itens) ━━━"
for i in "${!PENDENTES[@]}"; do
    arq="${PENDENTES[$i]}"
    arq_base=$(basename "$arq")
    area=$(extrai_campo "$arq" "area")
    tags=$(extrai_campo "$arq" "tags")
    [[ -z "$area" ]] && area="(sem área)"
    [[ -z "$tags" || "$tags" == "[]" ]] && tags="" || tags=" · tags=$tags"

    # 1ª linha de conteúdo após frontmatter (excluindo #)
    preview=$(awk '/^---$/{fm++;next} fm==2 && NF && !/^#/ { print; exit }' "$arq" | head -c 80)

    echo "[$((i+1))] $arq_base · area=$area$tags"
    [[ -n "$preview" ]] && echo "    > $preview"
done

# ─── Modo all ───────────────────────────────────────────────────────

if [[ "$MODO" == "all" ]]; then
    echo ""
    echo "Promovendo todos os ${#PENDENTES[@]} itens…"
    for arq in "${PENDENTES[@]}"; do
        mover_item "$arq" || true
    done
    echo ""
    [[ "$DRY_RUN" == "no" ]] && echo "💡 Pra subir pro GitHub: roda /sync"
    exit 0
fi

# ─── Modo interativo ────────────────────────────────────────────────

echo ""
read -p "Quais promover? (números separados por vírgula, 'all' pra tudo, 'q' pra sair): " RESPOSTA

if [[ "$RESPOSTA" == "q" || -z "$RESPOSTA" ]]; then
    echo "Saindo sem mover nada."
    exit 0
fi

if [[ "$RESPOSTA" == "all" ]]; then
    INDICES=$(seq 1 ${#PENDENTES[@]})
else
    INDICES=$(echo "$RESPOSTA" | tr ',' ' ')
fi

echo ""
echo "Promovendo…"
for n in $INDICES; do
    idx=$((n-1))
    if [[ $idx -lt 0 || $idx -ge ${#PENDENTES[@]} ]]; then
        echo "  ❌ Índice fora do range: $n" >&2
        continue
    fi
    mover_item "${PENDENTES[$idx]}" || true
done

echo ""
[[ "$DRY_RUN" == "no" ]] && echo "💡 Pra subir pro GitHub: roda /sync"
