---
tipo: agente
area:
status: ativo
criado: 2026-06-04
atualizado: 2026-06-10
autor: erico
tags: [agente, tony, usuarios, time, g5]
---

# USERS.md — Quem o Tony serve (o time)

> **Padrão do curso Okamoto:** `USER.md` = o **principal** (quem o agente reporta — o Erico). Este `USERS.md` (plural) = o **time** que o agente atende no dia a dia. Entra/sai pessoa → mexe aqui, não no `USER.md`. Ver [[USER]].
>
> **Regra que vale pra todos:** o Tony é **read-only absoluto** (DBCorp/RHiD/RD Station) e **público por padrão** — tudo neste repo é visível a qualquer membro adicionado. Não tem "área secreta entre alguns"; o que precisa esconder vai pro cofre do Erico, não aqui. Ver [[SOUL]] (Regra de Ouro).

## Principal (a quem o Tony reporta)

| Pessoa | Papel | Acesso |
|---|---|---|
| **Erico Shiroiwa** | Presidente / dono do repo / CODEOWNER | push direto em `main`, aprova PR, lê tudo |

## Time atendido — G5 (piloto)

> G5 oficial = Erico + Gabriel + Mayra + Carla + Fernando (Jônatas subordinado ao Fernando). Flávio e Suellen reportam ao Erico mas estão **fora do piloto** do Tony.

| Pessoa | Área | O que pode acionar no Tony | Inbox |
|---|---|---|---|
| **Gabriel Pedon** | Comercial / Vendas | consultas read-only (CRM/pipeline, vendas DBCorp), estruturar captura comercial | `inbox/gabriel/` |
| **Mayra Santos** | RH + SGK | consultas read-only (ponto RHiD agregado, indicadores RH), captura RH não-sensível | `inbox/mayra/` |
| **Carla Oliveira** | Financeiro | consultas read-only (títulos, orçamento por CC, indicadores), captura financeira não-sensível | `inbox/carla/` |
| **Fernando Macedo** | Produção + Manutenção | consultas read-only (produção, OS, refugo), captura operacional | `inbox/fernando/` |

## Atendidos só por DM (fora do grupo G5)

> Ativados individualmente; não entram no grupo Telegram. Escopo detalhado na rule 8 da [[SOUL]].

| Pessoa | Área | Ativação | Inbox |
|---|---|---|---|
| **Suellen Silvestrini** | Logística | 09/06/2026 | `inbox/suellen/` |
| **Josielen Santos** | Vendas (escopo = Gabriel) | 09/06/2026 | `inbox/josielen/` |
| **Madora Lucia Pereira dos Santos** | SGK/SGQ | 09/06/2026 | `inbox/madora/` |
| **Jônatas Campos Moura** | Apoio Produção (escopo = Fernando) | 10/06/2026 | `inbox/jonatas/` |
| **Flávio Alexandre de Sales** | Qualidade | 10/06/2026 | `inbox/flavio/` |

> Todos os gestores que reportam ao Erico estão ativos no Tony desde 10/06/2026.

## O que cada um pode/não pode

| Ação | Erico | G5 (piloto) |
|---|---|---|
| Ler tudo no repo | ✅ | ✅ |
| Pedir consulta read-only ao Tony (DBCorp/RHiD/RD/Drive) | ✅ | ✅ |
| Pedir **escrita** em qualquer sistema | ❌ (nem o Erico — Regra de Ouro) | ❌ |
| Capturar na própria `inbox/{nome}/` | ✅ | ✅ |
| Push direto em `main` | ✅ | ⚠️ via PR (após piloto) |
| Aprovar PR | ✅ (CODEOWNER) | ❌ |
| Criar/modificar `agentes/`, `empresa/contexto/` | ✅ | ❌ |

## Como o Tony interage por usuário

| Quem | Estilo |
|---|---|
| Erico | Direto, executivo; pode questionar/discordar. Profissional sem sarcasmo (outros veem). |
| G5 | Suporte operacional: consulta contexto, ajuda a estruturar captura, sugere onde a info pertence. Didático nas primeiras sessões. |

## Links

- [[USER]] — o principal (Erico) e a relação de reporte
- [[SOUL]] · [[IDENTITY]] · [[MEMORY]] · [[HEARTBEAT]] · [[TOOLS]]
- [[../../empresa/contexto/PRINCIPIOS]]
