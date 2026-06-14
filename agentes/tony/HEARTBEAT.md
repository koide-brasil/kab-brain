---
tipo: agente
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [agente, bruce, tony, heartbeat, automacao]
---

# HEARTBEAT.md — Rotinas do `tony`

> O que Bruce-time faz sem alguém pedir. Hoje: nada — repo recém-criado. Sprint 3+: consolidação.

## Estado atual (2026-05-22)

🟡 **Nenhuma rotina automática ainda** — repo em fase de bootstrap.

## Rotinas planejadas

| Quando | O que vai fazer | Status | Sprint |
|---|---|---|---|
| (futuro) Diário 22h | `/consolidar-inbox` — lê `inbox/*/` + sidecars, propõe destino, aplica se confiança alta | ⏳ | Sprint 3 |
| (futuro) Semanal | Resumo do que entrou na semana → `04-Pessoal/Diario/` do cofre pessoal | ⏳ | Sprint 4 |
| (futuro) Pre-commit hook | Valida regra dos 3 gatilhos via heurística (LLM ou regex) — bloqueia commit se suspeito | ⏳ | Sprint 5+ |

## Princípios herdados do Bruce-pessoal

1. Silencioso quando verde. Só fala se algo precisa atenção.
2. Idempotente.
3. Nunca apaga (consolida = move; original fica em `inbox/`).
4. Logs locais.
5. Falha não-bloqueante.

## Onde rodam (planejado)

| Rotina | Instância | Como |
|---|---|---|
| `/consolidar-inbox` diário | HERMES `/opt/data/kab-cerebro/` | Cron 22h via systemd timer |
| Resumo semanal | HERMES | Cron domingo 20h |
| Pre-commit hook | Laptop + HERMES (qualquer um que commita) | `.git/hooks/pre-commit` |

## Logs e debugging

```bash
# Quando ativo (Sprint 3+):
ssh vps-hermes 'tail -30 /opt/data/logs/consolidar-inbox.log'
journalctl --user -u consolidar-inbox-kab.service -n 50
```

---

## Links

- [[SOUL]] · [[IDENTITY]] · [[USER]] · [[MEMORY]] · [[TOOLS]]
- [[../../empresa/skills|empresa/skills/]] (consolidar-inbox vai morar aqui)

## Padrão canônico — Super Agent Standard

Este agente segue o Super Agent Standard — SAS v1: agente é cérebro contextual; ferramentas/scripts/crons são mãos, sensores e guardrails; aprendizado contínuo é supervisionado; health técnico e cognitivo devem ser auditáveis; radar externo é obrigatório quando promovido a VPS própria.
