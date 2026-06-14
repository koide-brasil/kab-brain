# CRONS — Selina

## Cadência aprovada

- Health cognitivo: semanal em shadow mode; diário quando houver RFQ ativo.
- Radar externo: antes do expediente comercial.

## Alertas

Mudanças fiscais/material/câmbio/ferramentas sobem somente para Bruce/Tony. Selina não alerta diretamente o time comercial nesta fase.

## Regra crítica

Radar externo gera sinal e proposta. Não altera motor de custo, alíquota, margem, NCM ou alçada automaticamente.

## Jobs Hermes ativos — atualizado em 2026-06-14

- `4f96e7a268d9` — **Selina — RFQ health + radar fiscal/material** — `30 10 * * 1-5` UTC — antes do expediente comercial; RFQ health + radar fiscal/material/ferramentas.
- `f7e916c8706b` — **SAS — saúde técnica diária dos agentes** — `0 4 * * *` UTC — verifica estrutura mínima do agente.

## Política

Selina alerta Bruce/Tony, não o time comercial. Radar externo não altera motor, alíquota, NCM, margem ou alçada.
