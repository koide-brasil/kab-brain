---
tipo: nota
status: ativo
criado: 2026-06-12
atualizado: 2026-06-14
tags: [mapa, agentes]
---

# 🗺️ MAPA — agentes/

> Agentes IA do ecossistema Koide. A constituição **operacional** do Tony roda na VPS dele; aqui ficam os docs compartilháveis com o time.

## O que vive aqui

Padrão canônico atual: [[_padroes/super-agent-standard]] — agente como cérebro contextual, aprendizado contínuo, health técnico+cognitivo, radar externo e prontidão VPS.


| Item | Conteúdo |
|---|---|
| [[_arquitetura]] | Hierarquia 3 camadas: Bruce (cofre Erico) → Tony (este vault) → Hermes departamentais |
| `tony/` | Agente gerente **read-only** do time KAB (G5) — identidade + memória de julgamento |
| `selina/` | Agente de viabilidade técnica + cotação RFQ da KAB, subordinada ao Tony/Bruce |
| `_padroes/` | Padrões compartilháveis de agentes. Ver [[_padroes/super-agent-standard]] |

## tony/

- **Identidade**: [[tony/IDENTITY]] · [[tony/SOUL]] · [[tony/USER]] · [[tony/USERS]] · [[tony/MEMORY]] · [[tony/HEARTBEAT]] · [[tony/TOOLS]]
- **`integrations/`** — mapeamento dos sistemas que o Tony lê: dbcorp, dbcorp-queries, rdstation, rhid
- **`MEMORIA/`** — memória de julgamento calibrável: aprendizados-aprovados, aprendizados-propostos, erros-de-julgamento, feedback-julgamento, padroes-narrativos, reflexoes-operacionais
- **`OUTPUTS/`** — revisoes-semanais
- **`PROMPTS/`** — tony-self-reflection
- **`TEMPLATES/`** — entrevista-onboarding, feedback-julgamento, reflexao-operacional, revisao-semanal-tony

## Links

[[../MAPA|MAPA raiz]] · [[../CLAUDE|CLAUDE]]

## selina/

- **Identidade**: [[selina/IDENTITY]] · [[selina/SOUL]] · [[selina/USERS]] · [[selina/MEMORY]] · [[selina/HEARTBEAT]] · [[selina/TOOLS]]
- **Governança/loop**: [[selina/GOVERNANCE]] · [[selina/PLAYBOOK]] · [[selina/RUNTIME]] · [[selina/EVALUATION]]
- **Memória**: `MEMORIA/` com aprendizados propostos/aprovados, erros, feedback, casos, pesquisas e sinais externos.
