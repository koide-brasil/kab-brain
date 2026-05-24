---
tipo: projeto
area: kab
status: em-andamento
criado: 2026-05-17
atualizado: 2026-05-17
tags: [projeto, crm, bi, bigquery, rdstation, api, dados]
atualizacao_recente: 2026-05-17 — API REST validada; mapeamento completo de deals/tasks/activities; trilha BigQuery em standby
horizonte: curto-prazo
prioridade: media
---

# Projeto — Integração BI RD Station CRM via BigQuery

## Objetivo

Disponibilizar os dados do CRM (RD Station) num data warehouse (BigQuery) e construir dashboards analíticos de pipeline comercial e performance da KAB, no Looker Studio.

## Motivação

- O CRM concentra dados de pipeline, contatos, atividades e funil que hoje não saem da interface da RD.
- O plano da RD Station inclui o add-on **Integração BI** (libera dataset BigQuery), já habilitado em **2026-05-17** para `e.shiroiwa@koidebrasil.com`.
- Caso de uso de momento: **analítico/dashboard** (não operacional/integração). Decisão de descartar API REST e Kondado/Albato por enquanto.
- Médio prazo: cruzar deals do CRM com faturamento DBCorp (ver [[project-erp-agentes-kab]] no MEMORY).

## Escopo

- **In**:
  - Setup de projeto GCP (`kab-rdstation-bi`) com billing.
  - Aceitar e configurar dataset compartilhado da RD no BigQuery.
  - Validar acesso via console BigQuery.
  - Dashboard inicial no Looker Studio (pipeline + funil + atividades).
- **Out** (por enquanto):
  - Integração via API REST do RD Station (descartada — só BigQuery).
  - Ferramentas third-party (Kondado, Albato, Erathos).
  - Cruzamento DBCorp ↔ RD (segundo passo, depois do dashboard básico).

## Estado atual (2026-05-17)

- ✅ Solicitado à RD a liberação da Integração BI.
- ✅ Recebido email de confirmação ("Integração BI habilitada") da RD Station (`info@rdstation.com.br`), threadId Gmail: `19e36eed44db87f5`.
- 🟡 Painel "Integração BI" ainda não aparece no CRM — aguardando RD responder o ticket.
- 🔄 **Caminho atual: API REST**. Mapeamento técnico completo feito em 2026-05-17 (ver seções "Dicionário de dados" e "Queries úteis" abaixo). Token guardado em `/home/eps/projetos/erp-agentes-kab/.env` (variável `RDSTATION_CRM_TOKEN`).
- ⏳ BigQuery em standby — só faz sentido quando passar de ~1.000 deals ou pra cruzar com DBCorp.

## Decisão: API REST > BigQuery (no momento)

Caso de uso atual (visitas + cotações enviadas) tem **270 itens totais** entre deals/tasks/activities. Volume muito baixo pra justificar a complexidade do BigQuery — `curl` + script Python resolve. BigQuery fica pra quando:
- Volume crescer pra >1k deals.
- Precisar cruzar deals com faturamento real do [[dbcorp-mapeamento|DBCorp]].
- Equipe quiser dashboards self-service no Looker Studio.

## Marcos

- [ ] **M1** — Acessar painel Integração BI no CRM e coletar ID do projeto BigQuery + lista de tabelas — **prazo: 2026-05-19**
- [ ] **M2** — Criar projeto GCP `kab-rdstation-bi` com billing ativo — **prazo: 2026-05-20**
- [ ] **M3** — Aceitar compartilhamento do dataset RD e validar query no BigQuery — **prazo: 2026-05-21**
- [ ] **M4** — Primeiro dashboard no Looker Studio (pipeline + funil) — **prazo: 2026-05-31**
- [ ] **M5** — Documentar dicionário de dados e queries úteis nesta nota — **prazo: 2026-05-31**

## Stack / ferramentas

- **RD Station CRM** — origem dos dados.
- **Google Cloud Platform (GCP)** — projeto `kab-rdstation-bi` (a criar).
- **BigQuery** — data warehouse onde a RD compartilha o dataset.
- **Looker Studio** — camada de visualização (gratuito).
- Email vinculado: `e.shiroiwa@koidebrasil.com` (mesmo do CRM e do Workspace KAB).

## Próximas ações

### Trilha A — API REST (curto prazo, caminho ativo)

- [ ] Definir formato de saída desejado pelo Érico (CSV simples? Markdown no vault como relatório semanal? Dashboard com Streamlit/Plotly local?).
- [ ] Escrever script Python `rdstation_crm_dump.py` em `/home/eps/projetos/erp-agentes-kab/` que:
  - Pagina todos os deals/tasks/activities.
  - Salva em SQLite ou DuckDB local pra análise.
  - Roda incremental (só puxa o que mudou desde a última execução).
- [ ] Relatório semanal automatizado (skill ou cron): "visitas da semana" + "propostas enviadas na semana" → nota no vault em `01-KAB/Relatorios/`.
- [ ] Pedir ao time comercial pra **preencher o preço cotado** em `deal_products` no CRM (hoje fica em zero — perde a possibilidade de analisar valor).

### Trilha B — BigQuery (médio prazo, em standby)

- [ ] Aguardar RD destravar o painel "Integração BI" (ticket aberto).
- [ ] Quando aparecer: criar projeto GCP `kab-rdstation-bi` com billing.
- [ ] Aceitar compartilhamento do dataset e validar query no BigQuery.
- [ ] Conectar Looker Studio e migrar relatórios da Trilha A pra dashboards self-service.

## Dicionário de dados (validado via API em 2026-05-17)

**Base URL:** `https://crm.rdstation.com/api/v1`
**Auth:** query string `?token=$RDSTATION_CRM_TOKEN`
**Paginação:** `?limit=100&page=2` (max 100/página; resposta traz `has_more` e `next_page`).

### Endpoints e volumes

| Endpoint | Total atual | O que tem |
|---|---|---|
| `/users` | 4 | Vendedores (Gabriel, Martins, Josielen, Érico) |
| `/deals` | 70 | Cotações/oportunidades — uma cotação da KAB = um deal |
| `/deals/{id}` | — | Estrutura completa de 1 deal |
| `/tasks` | 110 | **Visitas, follow-ups, envios de proposta** — `notes` traz anotações |
| `/activities` | 160 | Anotações livres da timeline do deal |
| `/deal_stages` | 5+ | Estágios do funil |
| `/deal_pipelines` | — | Funis |
| `/campaigns` | 1 | Campanhas (pouco usado) |

### Campos-chave de `/deals`

```
id, name, amount_total, prediction_date, rating, win, hold, closed_at,
created_at, updated_at,
organization.{name, id, organization_segments},
user.{name, email}  ← vendedor responsável
deal_stage.{name, nickname}  ← estágio atual no funil
deal_source.{name}  ← origem (ex.: "Cliente em Desenvolvimento")
contacts[].{name, title, emails, phones},
deal_products[].{name, amount, price, recurrence, discount, total}
deal_custom_fields[]  ← vazio hoje (não usam campos custom)
```

### Campos-chave de `/tasks` (a fonte mais rica)

```
id, subject, type, hour, date, done_date, done, status, notes, deal_id,
user_ids[], users[].{name, email},
deal.{id, name, rating}
```

**Tipos de task encontrados** (em ordem de frequência):
- `task` — Envio da Proposta Comercial (29×), Follow up da proposta enviada (7×), Envio de amostras (3×)…
- `visit` — Visita de primeiro contato (5×), Visita Técnico Comercial (3×), outros…
- `meeting` — Visita Técnico Comercial (2×), Agendar visita (2×)
- `call` — Primeiro contato (3×), Follow up da visita (2×)
- `email` — Envio da Proposta Comercial (3×)
- `whatsapp` — follow-ups e agendamentos

### Funil — deal_stages observados

`Sem contato (SC)` → `Tentativa de Contato (TDC)` → `Agendamento de Visita (ADV)` → `Visita (V)` → `Envio de documentações (EDDPCDKB)` → ... (próximas etapas a mapear).

## Queries úteis (via API REST)

Carregar o token (a cada sessão de terminal):
```bash
set -a; source /home/eps/projetos/erp-agentes-kab/.env; set +a
BASE="https://crm.rdstation.com/api/v1"
```

### 1) Cotações enviadas (proof já validada)

```bash
curl -s "${BASE}/tasks?token=${RDSTATION_CRM_TOKEN}&status=completed&limit=100" \
  | jq -r '.tasks[]
    | select(.subject | test("proposta|cotaç|cotac"; "i"))
    | "[\(.done_date // .date | .[0:10])] \(.users[0].name) | \(.deal.name) | \(.subject)"'
```

### 2) Anotações de visitas (tasks tipo visit/meeting com notes)

```bash
curl -s "${BASE}/tasks?token=${RDSTATION_CRM_TOKEN}&limit=100" \
  | jq -r '.tasks[]
    | select(.type=="visit" or .type=="meeting")
    | "[\(.date | .[0:10])] \(.users[0].name) | \(.deal.name) | \(.notes // "(sem nota)")"'
```

### 3) Anotações livres da timeline (activities)

```bash
curl -s "${BASE}/activities?token=${RDSTATION_CRM_TOKEN}&limit=100" \
  | jq -r '.activities[] | "[\(.date | .[0:10])] deal=\(.deal_id) | \(.text)"'
```

### 4) Pipeline aberto por vendedor (deals ativos)

```bash
curl -s "${BASE}/deals?token=${RDSTATION_CRM_TOKEN}&limit=100" \
  | jq -r '.deals[]
    | select(.win == null and .hold == null)
    | "\(.user.name) | \(.deal_stage.name) | \(.name)"' | sort
```

### 5) Listar funil

```bash
curl -s "${BASE}/deal_stages?token=${RDSTATION_CRM_TOKEN}" \
  | jq '.[] | {id, name, nickname}'
```

## Custos

- **RD Station**: add-on da Integração BI (incluso no plano contratado pela KAB).
- **GCP / BigQuery**:
  - Free tier: 1 TB de query/mês + 10 GB storage grátis.
  - Acima disso: ~US$ 5 por TB consultado.
  - Estimativa pra volume de CRM da KAB: **abaixo de R$ 50/mês** se cachear no Looker Studio.

## Aprendizados

_(Append-only.)_

- 2026-05-17 — Modelo da RD é **dataset compartilhado** no BigQuery deles, não push de dados pro nosso projeto. Por isso o acesso é amarrado ao email registrado (`e.shiroiwa@koidebrasil.com`) e a query roda contra o projeto da RD, mas o billing do compute fica no projeto GCP do usuário.
- 2026-05-17 — **Painel "Integração BI" ainda não aparece na conta** mesmo com email de confirmação recebido — aguardando RD destravar.
- 2026-05-17 — Plano da KAB inclui API REST (Basic e Pro têm; só Free não tem). Token obtido e validado.
- 2026-05-17 — **Anotações de visita moram em dois lugares**: `tasks.notes` (estruturadas, com `type=visit` ou `meeting`) e `activities.text` (timeline livre do deal). Pra um relatório completo de visita, juntar os dois filtrando por `deal_id`.
- 2026-05-17 — **"Cotação enviada" = task com `done: true` e subject contendo "Proposta" ou "Cotação"**. A maioria é da Josielen (farming/carteira), o que casa com a estrutura hunting/farming pós-Pro Líder. Volume alto: 13 propostas só na 1ª quinzena de maio.
- 2026-05-17 — `deal_products` traz as peças cotadas com `amount` (qtd) e `price` (unitário). Mas no deal de exemplo (`COTAÇÃO ITENS CORRENTES | PROJETO MAN`), todos os preços vieram `0.0`. Indica que o vendedor está usando o deal como "registro da cotação" mas não preenchendo valor cotado dentro do CRM — o valor real vai por outro canal (email/PDF). **Limitação importante**: o CRM hoje não tem o valor financeiro das cotações, só os volumes.

## Bloqueios

- Nenhum no momento. Próximo passo só depende de abrir o painel da RD.

## Links relacionados

- [[Comercial]] — departamento dono do dado
- [[_MOC-KAB]]
- Email RD Station (Gmail): threadId `19e36eed44db87f5`, assunto "✅ Integração BI habilitada"
