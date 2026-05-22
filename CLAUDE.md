# CLAUDE.md — Instruções para agentes neste cérebro KAB

> Este é o cérebro operacional compartilhável da KAB. Diferente do vault pessoal do Erico (`my-second-brain`), aqui o conteúdo é **não-sensível**. Bruce e outros agentes lendo este arquivo: respeitem a regra dos 3 gatilhos abaixo.

---

## 0. Identidade — quem é o agente neste repo

Identidade formal: **`agentes/geral-kab/`**

Leia esses arquivos antes de qualquer ação:
1. `agentes/geral-kab/SOUL.md` — personalidade (Bruce em modo time)
2. `agentes/geral-kab/IDENTITY.md` — papel: consolidador time KAB, escopo restrito
3. `agentes/geral-kab/USER.md` — quem este agente serve (Erico + time)
4. `agentes/geral-kab/MEMORY.md` — onde lembra (cross-link com vault pessoal)
5. `agentes/geral-kab/TOOLS.md` — skills permitidas neste escopo

**Bruce é o mesmo do vault pessoal**, mas neste repo opera com **escopo limitado** — não fala de dinheiro nominal, pessoa específica, ou jurídico.

---

## 1. Regra fundamental — os 3 gatilhos

Conteúdo **NÃO PODE** entrar neste repo se dispara qualquer um:

| Gatilho | Exemplos do que NÃO entra | Onde mora isso |
|---|---|---|
| 💰 Dinheiro com nome próprio | Salário do João, comissão da Mariana, bônus do Fernando, pró-labore, negociação nominal de fornecedor com valor confidencial | Vault pessoal do Erico |
| 👤 Pessoa específica | "Gabriel tá performando mal", "Suelen vai sair", avaliação 360 nominal, conflito interno detalhado | Vault pessoal do Erico |
| ⚖️ Peso jurídico/contratual | Contrato Gestamp/Yamaha/etc na íntegra, NDA, litígio, LGPD individualizada, contrato Koide Kokan intercompany, NEs financeiras | Vault pessoal do Erico |

**Contratos operacionais OK aqui**: hosting SaaS, gateway de pagamento, fornecedor genérico de material de escritório.

**Em dúvida → NÃO entra**. Pergunte ao Erico ou capture no vault pessoal.

Detalhes e edge cases em [[empresa/contexto/PRINCIPIOS]].

---

## 2. O que é este repo

Cérebro operacional compartilhável da **Koide Autopeças do Brasil (KAB)** — fábrica de peças usinadas em Pindamonhangaba/SP. Versionado em GitHub privado, acessível pra: Erico + 1-2 gerentes piloto (Gabriel inicialmente).

**Distinção crítica**:
- **`my-second-brain`** (Erico) = cofre privado, inclui sensível, ~350 notas
- **`kab-cerebro`** (este) = compartilhável, só não-sensível, ~25 arquivos iniciais

---

## 3. Mapa de pastas

| Pasta | Conteúdo | Status |
|---|---|---|
| `agentes/geral-kab/` | Identidade formal do agente neste escopo | Sprint 1 ✅ |
| `areas/producao/` | Processos, indicadores públicos, FAQs do chão de fábrica | Sprint 2 (seed) |
| `areas/vendas/` | Funil, qualificação de leads, ATAs de visita (sem deals nominais) | Sprint 2 (seed) |
| `areas/qualidade/` | SGK, normas, mapas de processo, RNC fluxo | Sprint 2 (seed) |
| `areas/logistica/` | Frete, OTD, expedição | Sprint 2 (seed) |
| `areas/manutencao/` | OS, paradas, ferramentaria | Sprint 2 (seed) |
| `areas/rh/` | Políticas, treinamentos, benefícios (sem salários nominais) | Sprint 2 (seed) |
| `areas/financeiro/` | KPIs públicos, fluxo de caixa agregado (sem intercompany) | Sprint 2 (seed) |
| `inbox/{nome}/` | Capturas brutas, antes de classificar | Estrutura pronta |
| `empresa/contexto/` | Princípios e arquitetura | Sprint 1 ✅ |
| `empresa/skills/` | Skills da empresa (consolidar-inbox, etc) | Sprint 3 |
| `skills/` | Skills compartilháveis | Sprint 2/3 |
| `onboarding/` | 1-pagers pra novos membros | Sprint 3 |

Cada `areas/{x}/` tem 3 subpastas:
- `contexto/` — fatos duráveis, FAQs, mapas
- `rotinas/` — automações, scripts agendados
- `skills/` — skills específicas da área (`_index.md` aponta pra elas)

---

## 4. Frontmatter padrão

```yaml
---
tipo: nota          # nota | rotina | skill | reuniao | indicador
area: producao      # producao | vendas | qualidade | logistica | manutencao | rh | financeiro
status: ativo       # inbox | ativo | revisado | canonico | arquivado
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico        # autor humano da nota
tags: []
---
```

---

## 5. Fluxo de captura

1. **Capturar**: `inbox/{seu_nome}/2026-MM-DD-{slug}.md` — pode ter sidecar `.meta.yaml`
2. **Consolidar**: skill `/consolidar-inbox` (futuro) lê sidecar e propõe destino
3. **Aprovar**: humano valida; commit + push em main
4. **Operar**: nota em `areas/{x}/contexto/` ou `rotinas/`

**Sem branch staging** enquanto for 1-2 humanos (adotar quando time ≥ 3).

---

## 6. Sync

- `/sync-kab` (Sprint 2) — git add + commit + push
- `/cerebro-kab` (Sprint 2) — git pull
- Branch única: `main`
- Push direto pra main enquanto for piloto (sem PR obrigatório)
- CODEOWNERS em `.github/CODEOWNERS` força Erico como aprovador final quando time crescer

---

## 7. O que NÃO fazer

- ❌ Não criar notas com dados sensíveis (regra dos 3 gatilhos)
- ❌ Não duplicar conteúdo do vault pessoal — preferir link textual ("conteúdo completo no cofre pessoal")
- ❌ Não criar wikilinks pra fora deste repo (vão quebrar)
- ❌ Não rodar `/sync` aqui (essa é a skill do vault pessoal) — usar `/sync-kab`
- ❌ Não tomar decisão de negócio com base só no que tá aqui (este repo é parte da operação, não a totalidade)

---

## 8. Cross-link com vault pessoal

Quando uma nota daqui precisa referenciar conteúdo sensível do vault pessoal, use **referência textual** em vez de wikilink:

```markdown
> Contexto financeiro detalhado: no cofre pessoal do Erico (`my-second-brain` → `01-KAB/Financeiro/`).
```

Wikilinks `[[...]]` neste repo só pra notas DESTE repo.

---

## 9. Como o agente acessa este repo

| Local | Path |
|---|---|
| Laptop Erico | `~/Área de trabalho/Erico/kab-cerebro/` |
| HERMES (VPS) | `/opt/data/kab-cerebro/` (a configurar) |
| GitHub | `git@github.com:eshiroiwa/kab-cerebro` (a criar) |

Bruce abre Claude Code aqui dentro → este `CLAUDE.md` é lido automaticamente.

---

## Origem

Adotado em 2026-05-22 a partir da metodologia OpenClaw (versão híbrida invertida). Plano em `~/.claude/plans/agora-vamos-para-algo-playful-diffie.md`.
