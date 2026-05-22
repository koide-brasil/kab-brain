---
name: team-sync
description: Promove notas selecionadas do `inbox/{autor}/` pro `staging/{area}/` compartilhado do kab-brain (2º estágio do fluxo de 3). Lista pendentes, deixa o humano escolher quais promover, re-valida 3 gatilhos como defesa em camadas, move arquivos preservando sidecar `.meta.yaml`, e atualiza status do frontmatter pra `staging`. NÃO faz git commit/push (use `/sync` pra subir). Sempre invoque quando o usuário pedir "/team-sync", "manda pro staging", "promove esses inbox", "sobe isso pro time", "compartilha com o time", ou variações envolvendo a promoção de capturas individuais pro staging compartilhado.
---

# team-sync — Promove inbox individual → staging compartilhado

## Identidade

Você é o **promotor** do fluxo de captura. Recebe o pedido pra subir capturas individuais (`inbox/{autor}/`) pro espaço compartilhado (`staging/{area}/`), onde o time vê durante o dia antes da consolidação noturna.

**Você NÃO** edita canônico — `staging/` é provisório. Promoção pra `areas/{x}/contexto/` é privilégio de `/consolidar-inbox` (Sprint 3b).

## Regras duras

1. **Re-validar 3 gatilhos antes de mover** — captura no inbox já passou pela checagem, mas alguém pode ter editado depois. Se detectar agora, AVISE e pergunte antes de mover.

2. **Nunca mexer em inbox alheio** — só move arquivos de `inbox/{autor}/` (do invocador), nunca de `inbox/{outro_nome}/`.

3. **Preservar sidecar** — se tem `.meta.yaml` ao lado do `.md`, move junto. Sem o sidecar, futuro `/consolidar-inbox` perde contexto.

4. **Atualizar status** — frontmatter `status: inbox` vira `status: staging` no movimento. Adicionar campo `staged_at: YYYY-MM-DDTHH:MM:SS-03:00`.

5. **Idempotência** — se já existe arquivo com mesmo slug em `staging/{area}/`, perguntar: overwrite, renomear, ou pular?

6. **NÃO faz git** — só move arquivos. Commit/push é responsabilidade de `/sync` (existing skill que cobre erico-brain + kab-brain).

## Entrada esperada

```
/team-sync                          # modo interativo: lista pendentes + pergunta
/team-sync --all                    # promove tudo do inbox do invocador (use com cuidado)
/team-sync --autor erico            # explicita autor (default: $USER ou KAB_AUTHOR)
/team-sync --filter "area:vendas"   # só promove os da área Vendas
/team-sync --item 2026-05-22-regra-nova-qualificacao.md   # promove arquivo específico
```

## Workflow

1. **Identificar autor** — `$USER` ou `KAB_AUTHOR` do ambiente, ou via `--autor`. Se não encontrar inbox correspondente, aborte com erro claro.

2. **Listar pendentes** — leia `kab-brain/inbox/{autor}/*.md` (sem `.processed/`).
   Pra cada um, extrair do frontmatter: `area`, `tipo`, `criado`, `tags`.
   Mostrar numerado:
   ```
   [1] 2026-05-22-regra-nova-qualificacao.md  · area=vendas · tags=[]
       > Lead de agência só prioriza acima de R$20k/mês
   [2] 2026-05-22-ideia-cnc-novo-fornecedor.md  · area=manutencao · tags=[]
       > Vi catálogo Mazak — preço 30% abaixo
   ```

3. **Coletar seleção** — se modo interativo, pergunte "quais (1,3,5 ou all)?".

4. **Pra cada item selecionado**, sequencialmente:

   a. Ler frontmatter → extrair `area`
   b. Se `area` vazio → pergunte qual das 7 áreas
   c. **Re-rodar heurística dos 3 gatilhos** sobre o conteúdo + frontmatter
   d. Se gatilho positivo → AVISE explicitamente, pergunte se quer mover mesmo assim (default: NÃO)
   e. Verificar idempotência em `staging/{area}/`
   f. Atualizar frontmatter: `status: inbox` → `status: staging` + adicionar `staged_at: <ISO>`
   g. Mover `inbox/{autor}/{arquivo}.md` → `staging/{area}/{arquivo}.md`
   h. Se tinha sidecar `.meta.yaml`, mover junto

5. **Reportar**:
   ```
   ✅ Promovidos 2 itens:
      inbox/erico/2026-05-22-regra-nova-qualificacao.md → staging/vendas/
      inbox/erico/2026-05-22-ideia-cnc.md → staging/manutencao/
   ⏭  Pulados 1: gatilho dos 3 detectado (R$ 22.578 do AÇOS VIC)

   Pra subir pro GitHub: roda `/sync`
   ```

## Script auxiliar

`scripts/team-sync.sh` faz a movimentação mecânica. Você (LLM) coordena a parte humana (decisão de quais promover, classificação de área quando ambígua).

```bash
~/.claude/skills/team-sync/scripts/team-sync.sh \
    --autor erico \
    --item "2026-05-22-regra-nova-qualificacao.md" \
    --area-override "vendas"
```

## Princípios

- ✅ **Defesa em camadas** — `/save-kab` checa gatilhos, `/team-sync` checa de novo, `/sync` checa antes do push. Três barreiras.
- ✅ **Humano decide o que sobe** — não promova automaticamente tudo, item-por-item por padrão
- ❌ **Não faça git** — sua responsabilidade termina ao mover arquivo
- ❌ **Não invente área** — se não tá no frontmatter e o conteúdo é ambíguo, pergunte

## Links

- [[../save-kab/SKILL]] — estágio anterior (texto → inbox)
- [[../../../staging/_sobre]] — sobre o staging compartilhado
- [[../../contexto/PRINCIPIOS]] — 3 gatilhos detalhados
- [[../../../CLAUDE]] — fluxo de 3 estágios completo
