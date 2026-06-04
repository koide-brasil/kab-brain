---
tipo: nota
area: manutencao
status: ativo
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [manutencao, ferramentaria, rotinas, index]
---

# Apoio à Produção — índice de rotinas

> Automações da área. *Se tem horário → cron; se depende de estado → heartbeat.*

## Ativas

_Nenhuma rotina não-sensível ativa nesta área ainda._

## Planejadas

| Rotina | Tipo | Objetivo |
|---|---|---|
| Alerta de corretivas (agregado) | heartbeat | Avisar quando a contagem de corretivas do mês tende a furar a meta de ≤ 5/mês |
| Painel de OS em aberto | cron | Resumo de OS criadas/encerradas e tempo de ajuste (sem custo) |
| Alerta de sobressalente crítico | heartbeat | Avisar quando item crítico (cilindro, sensor, válvula) cair abaixo do estoque mínimo |

> Relatórios com custo/financeiro (custeio, daily completo) rodam no cofre pessoal, não aqui.

## Links

- [[../MAPA]] · [[../skills/_index|Skills]]
