---
tipo: nota
area: financeiro
status: ativo
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [financeiro, rotinas, index]
---

# Financeiro — índice de rotinas

> Automações da área. *Se tem horário → cron; se depende de estado → heartbeat.*
> Atenção: rotina financeira que toque em **valores, saldos ou dívida** roda no cofre
> pessoal, **não aqui**.

## Ativas

_Nenhuma rotina não-sensível ativa nesta área ainda._

## Planejadas

| Rotina | Tipo | Objetivo |
|---|---|---|
| Alerta Gastos/Faturamento (só % e direção) | heartbeat | Avisar quando o indicador tende a furar a meta de 2,5% — **expresso apenas como % e tendência, sem valores** |
| Painel público do indicador de processo | cron | Resumo do KPI Gastos/Faturamento em % (sem números absolutos) |

> Projeções de caixa, AR/AP aging e qualquer rotina com valor em R$ rodam no cofre pessoal.

## Links

- [[../MAPA]] · [[../skills/_index|Skills]]
