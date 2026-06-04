---
tipo: agente
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [agente, bruce, tony, tools, permissoes]
---

# TOOLS.md — O que o `tony` sabe fazer (escopo restrito)

> Subset das ferramentas do Bruce-pessoal. Aqui só o que faz sentido pra time KAB e respeita a regra dos 3 gatilhos.

## Skills permitidas neste escopo

### Vault (compartilháveis com time)

| Skill | Trigger | O que faz neste repo |
|---|---|---|
| `/sync-kab` | (Sprint 2) | `git add` + commit + push em `kab-cerebro` |
| `/cerebro-kab` | (Sprint 2) | `git fetch` + pull --ff-only em `kab-cerebro` |
| `/save-kab` | (Sprint 2/3) | Captura em `inbox/{nome}/` + sidecar `.meta.yaml`, checa 3 gatilhos |
| `/consolidar-inbox` | (Sprint 3) | Lê inbox + sidecars, propõe destino, move com aprovação |

### KAB (subset permitido)

| Skill | Trigger | Permitida aqui? |
|---|---|---|
| `daily-meeting` | `/daily-meeting` | ❌ — gera HTML com dados sensíveis (financeiro, salários) |
| `custeio-mensal` / `custeio-anual` | | ❌ — dados de custo confidenciais |
| `relatorio-mensal-matriz` | | ❌ — relatório interno KAB-Matriz |
| `captura-atas-mes` | `/captura-atas-mes` | ⚠️ — só ATAs revisadas (sem nominais sensíveis) — Sprint 4+ |
| `heartbeat-rentabilidade` | (cron) | ❌ — KPIs financeiros |
| `heartbeat-rh` | (cron) | ❌ — banco horas individual |
| `rhid-client` | | ❌ — dados individuais |
| `auditoria-nfs-mp` | | ❌ — valores nominais com fornecedor |
| `treinar-sgk` | `/treinar-sgk` | ⚠️ — só mapas de processo + procedimentos públicos (sem rev notes confidenciais) — Sprint 4+ |
| `movimentacao-contas` | | ❌ — financeiro |

**Regra geral**: skills que tocam dados nominais, financeiros detalhados, ou contratuais → **não rodam aqui**. Bruce-pessoal as opera no cofre.

## Agentes Sonnet permitidos

| Agente | Permitido aqui? | Por quê |
|---|---|---|
| `triage-gmail-kab` | ❌ | Gmail é só do Erico; relatórios contêm sensível |
| `briefing-diario` | ❌ | Agenda + emails do Erico |
| `captura-email-vault` | ❌ | Captura no cofre pessoal |
| `hunting-leiloes-imobiliarias` | ❌ | Investimentos pessoais do Erico |
| `arquivar-nfe-drive` | ❌ | NFe da KAB com valores |

**Todos** os agentes Sonnet atuais ficam no cofre pessoal. Este repo recebe **conteúdo destilado** e não-sensível, manualmente ou via `/consolidar-inbox` no Sprint 3.

## MCPs

Os mesmos do Bruce-pessoal (Gmail, Calendar, Drive, Sheets, Docs). Mas neste escopo:

| MCP | Uso permitido aqui |
|---|---|
| Gmail | Read/draft só de emails operacionais não-sensíveis. ⚠️ Triagem completa fica no cofre |
| Calendar | Read events públicos do time (G5, treinamentos). Sem leitura de eventos pessoais |
| Drive | Read mapas de processo públicos do SGK. Sem leitura de pastas RH ou Financeiro. **Escrita só via broker, escopada a pastas de departamento permitidas, nunca delete** |
| Sheets/Docs | Edição de docs compartilháveis (treinamentos, FAQs) — escopada, via broker |

## Acessos a sistemas externos

> **Tudo passa pelo broker read-only** (`tony-broker`, user `proxy`). O Tony (user `hermes`) **nunca segura credencial crua** de DBCorp/RHiD/RD Station — nem com terminal. Cada sistema só expõe operações limitadas. Ver [[../../../erico-brain/91-Memoria/_bruce-cross-sessao/tony-credential-broker|broker read-only]].

| Sistema | `tony` tem? |
|---|---|
| DBCorp | ✅ **read-only** (SELECT-only via broker) — **NUNCA** escreve/deleta. Correto e definitivo. |
| RD Station CRM | ✅ **read-only** (GET whitelist via broker) — **NUNCA** escreve/deleta |
| RHiD | ✅ **read-only** (GET whitelist via broker) — **NUNCA** escreve/deleta; dados individuais conforme papel |
| Google Workspace KAB | ✅ via broker — leitura + **escrita ESCOPADA no Drive** (só pastas de departamento permitidas, **nunca delete**, nunca fora da árvore). Token nunca na mão do Tony |
| GitHub | ✅ — só este repo (`kab-brain`) |

## Skills compartilháveis específicas deste repo

(Vivem em `skills/` e `empresa/skills/` deste repo, não em `~/.claude/skills/` do Erico.)

| Skill | Destino | Sprint |
|---|---|---|
| `consolidar-inbox` | `empresa/skills/consolidar-inbox/` | 3 |
| `save-kab` (captura com sidecar) | `skills/save-kab/` | 2/3 |
| `validar-3-gatilhos` (pre-commit hook) | `skills/validar-3-gatilhos/` | 5+ |

## O que o `tony` NÃO pode fazer

- ❌ Acessar o cofre pessoal do Erico (`my-second-brain`)
- ❌ Rodar skills com dados nominais (salário, comissão, contrato)
- ❌ Rodar heartbeats financeiros
- ❌ Decidir sozinho casos limítrofes da regra dos 3 gatilhos
- ❌ Push pra outros repos (só este)

---

## Links

- [[SOUL]] · [[IDENTITY]] · [[USER]] · [[MEMORY]] · [[HEARTBEAT]]
- [[../../empresa/contexto/PRINCIPIOS]] (regra dos 3 gatilhos)
- [[../../empresa/contexto/gestao]] (coaching de gestores: problema + opções + recomendação)
- [[../../CLAUDE]]
