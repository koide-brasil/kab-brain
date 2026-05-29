---
tipo: nota
area: institucional
status: revisado
criado: 2026-05-23
atualizado: 2026-05-29
fonte_original: RD Station CRM + uso comercial KAB
validado_por: Bruce
validado_em: 2026-05-29
sensibilidade: gestao
recencia: sob-demanda
tags: [integracao, rdstation, crm, comercial]
---

# RD Station CRM — comercial da KAB

O time comercial da KAB usa **RD Station CRM** pra:
- Gerir pipeline de cotações (deals)
- Registrar atividades de vendedor (tasks)
- Acompanhar funil de novos clientes (PR-04 — meta de 3 novos clientes/ano)

## Como acessar

- **API REST**: `https://api.rd.services/`
- **Credenciais**: token de API em `~/.config/rdstation.env` (NUNCA git). Vive também no `.env` do projeto `erp-agentes-kab` no laptop do Erico.
- **BigQuery (em standby)**: integração BI planejada mas não ativa. Quando ativar, dados vão pra `kab-rdstation-bi` no GCP.

## Mapeamento de conceitos (RD ↔ KAB)

| Termo RD Station | Significado na KAB |
|---|---|
| **Deal** | **"Cotação"** — oportunidade comercial em pipeline |
| **Task** (tipo "Email" ou "Reunião") com `done=true` | **"Cotação enviada"** — quando vendedor de fato mandou o orçamento |
| **Contact** | Pessoa do cliente (compras, qualidade, engenharia, gerência) |
| **Organization** | Cliente PJ (Yamada, Indab, etc) |
| **Pipeline stage** | Etapa do funil (Lead → Qualificado → Cotação Enviada → Negociação → Fechamento) |

## Endpoints úteis

### Deals (cotações)

```
GET /platform/deals — lista deals
GET /platform/deals/{id} — detalhe
GET /platform/deals?deal_pipeline_id=X — por pipeline
```

Filtros úteis:
- `created_at_period[from]=2026-05-01` — deals criados no mês
- `prediction_date_period[from]=...` — fechamento esperado

### Tasks (atividades comerciais)

```
GET /platform/tasks?done=true&period[from]=YYYY-MM-DD
```

Pra contar "cotações enviadas no mês" = `tasks` do tipo "Email" ou "Reunião" com `done=true` no período.

### Atividades por vendedor

`task.user_id` ou `deal.user_id` identifica o vendedor. Mapeamento de IDs em config local (não nominal aqui — vive em `~/.config/rdstation-users.env`).

## Convenções operacionais

- **Cada cotação enviada vira 1 task done** (tracking pra meta mensal)
- **Pipeline padrão da KAB**: estágios alinhados com PR-04 Vendas
- **Tags em deals**: usar pra categorizar (aftermarket, resourcing, novo cliente)

## Skills existentes que usam RD Station

Vivem no cofre pessoal do Erico, executadas pelo Bruce:

- `captura-atas-mes` — puxa ATAs de visitas comerciais do CRM e gera notas no vault
- `daily-meeting` — inclui atividades CRM por vendedor (count tasks done MTD)

Tony **referencia** mas não executa (credenciais sensíveis).

## Roadmap

Quando Tony for promovido a executor (Sprint 4+), poderá:
- Listar pipeline atual sem valores nominais (só count + estágio)
- Reportar atividades de vendedor agregadas
- Alertar deals parados há > X dias

NÃO terá acesso a:
- Valor de cotação por cliente nominal
- Histórico de negociação detalhado

## Links

- [[_sobre]] — índice integrações
- [[../../sgk/Procedimentos/PR-04 Processo Vendas]] — processo formal
- [[../../sgk/Mapas-Processo/Vendas]] — mapa do processo
