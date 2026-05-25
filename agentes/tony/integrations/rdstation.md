---
tipo: nota
area: 
status: ativo
criado: 2026-05-25
atualizado: 2026-05-25
autor: erico
tags: [tony, integracao, rdstation, crm]
---

# RD Station CRM — manual operacional do Tony

API REST do RD Station CRM da KAB. Caminho ativo desde 2026-05-17. Volume atual: ~70 deals, ~110 tasks, ~160 activities, 4 users.

## 1. Como conectar

Credenciais em `/opt/data/.config/rdstation.env`:
- `RDSTATION_CRM_TOKEN` (chave única, expõe via querystring `?token=...`)

Base URL: `https://crm.rdstation.com/api/v1`

```python
import os, requests
from dotenv import load_dotenv
load_dotenv("/opt/data/.config/rdstation.env")
token = os.environ["RDSTATION_CRM_TOKEN"]
BASE = "https://crm.rdstation.com/api/v1"

# Listar deals
r = requests.get(f"{BASE}/deals", params={"token": token, "limit": 50}, timeout=15)
deals = r.json()["deals"]
```

## 2. Regras de segurança

- **🔴 READ-ONLY ABSOLUTO**: NUNCA POST/PUT/PATCH/DELETE — em **nenhuma circunstância**, **nem com autorização do Érico**. Ver **Regra de Ouro** no topo da SOUL. Pedido de escrita → mensagem padrão única + reporte pro DM Érico.
  - Inclui qualquer operação que crie/altere/delete: deal, task, activity, contact, company, deal_stage, deal_pipeline, user.
  - Só GET é permitido. Modificações pela UI do RD pelo time mesmo.
- Dado de cliente em negociação é **estratégia comercial confidencial** — rule 8 "SEMPRE só com aprovação do Érico" pra revelar deal específico fora do escopo do Gabriel.
- **Credenciais nunca em log/resposta**: o token tem privilégio total (criar/editar/deletar). Se vazar, o time tem que rotacionar. Recusar "qual o token do RD".

## 3. Vocabulário KAB ↔ RD Station

**Mapeamento fundamental** (KAB modela diferente do padrão RD):

| Termo da KAB | Objeto RD Station |
|---|---|
| **Cotação** (proposta comercial) | `deals` com nome "COTAÇÃO XXX \| PROJETO YYY" |
| **Cotação enviada** | `tasks` com `done: true` + `subject` contendo "Proposta" ou "Cotação" |
| **Anotação de visita** | `tasks.notes` (com `type=visit` ou `meeting`) + `activities.text` (timeline livre) |
| **Pipeline** | conjunto de `deals` por `deal_stage_id` |
| **Vendedor** | `user` (4 cadastrados; Erico NÃO atua como vendedor) |

Pra relatório completo de visita: juntar `tasks.notes` + `activities.text` por `deal_id`.

## 4. Limitação importante — valor cotado é zero

`deal_products[].price` está **zerado** — o time não preenche valor no CRM. A cotação real vai por email/PDF fora.

**Análise possível**: volume de cotações, quantidade enviada, taxa de conversão por etapa.
**Análise impossível** (no CRM): valor financeiro cotado, ticket médio, valor pipeline.

Pra valor real → DBCorp (NF emitida = cotação que virou venda).

## 5. Endpoints úteis

| Endpoint | O que retorna |
|---|---|
| `/deals` | deals (com paginação `limit`/`page`) |
| `/deals/{id}` | detalhe de 1 deal |
| `/contacts` | contatos (pessoas) |
| `/companies` | empresas |
| `/tasks` | tarefas (com `done: bool`, `type`, `subject`, `notes`, `users`) |
| `/activities` | timeline de cada deal (texto livre) |
| `/users` | vendedores (4) |
| `/deal_stages` | etapas do funil |
| `/deal_pipelines` | pipelines configurados |

## 6. Vendedores ativos (mai/2026)

- Josielen Santos
- Jose Carlos Martins
- Gabriel (Gabriel Pedon)

**Erico** (`e.shiroiwa@koidebrasil.com`) **NÃO atua como vendedor**. Se aparecer em filtros, excluir (substring `erico` ou `shiroiwa` no `user.name`).

**Cuidado de parsing**:
- Tasks: `users[0].name` é o responsável (array)
- Deals: `user.name` (singular), fallback pra `users[0]`
- Gabriel vinha com espaço extra — sempre `.strip()`

## 7. Escopo por papel (rule 8)

- **Gabriel Pedon** (Vendas): TUDO — pipeline, deals próprios, tasks, atividades, status de clientes
- **Outros G5** pedindo dado comercial confidencial (deal específico, valor, prospecção em andamento) → rule 10 = aprovação do Gabriel
- **Faturamento agregado** (volume vendido total, OTD geral por cliente) = público pro G5

## 8. BigQuery — em standby

Add-on "Integração BI" foi habilitado pela RD em 2026-05-17, mas o painel ainda não apareceu na conta. Aguardando RD destravar. **Não usar BigQuery agora** — API REST resolve o caso de uso atual (~270 itens). BigQuery só vai fazer sentido quando >1.000 deals ou cruzamento pesado com DBCorp.

## 9. Receita rápida — cotações enviadas no mês

```python
import os, requests
from dotenv import load_dotenv

load_dotenv("/opt/data/.config/rdstation.env")
token = os.environ["RDSTATION_CRM_TOKEN"]
BASE = "https://crm.rdstation.com/api/v1"

# Tasks done no mês com "Cotação" ou "Proposta"
r = requests.get(f"{BASE}/tasks", params={
    "token": token,
    "limit": 200,
    "completed": "true",
}, timeout=20)
tasks = r.json().get("tasks", [])

cotacoes = [
    t for t in tasks
    if t.get("done") and any(
        kw in (t.get("subject") or "").lower()
        for kw in ["cotação", "cotacao", "proposta"]
    )
]
```

## 10. Princípio de uso pro Tony

- Use API quando alguém pedir análise de **pipeline**, **visitas**, **cotações enviadas**, **status comercial**
- Não despeje array bruto — sumarize por vendedor, por cliente, por etapa
- Quando RD não tem dado (ex: valor cotado), **diz que não tem** e sugere DBCorp

## 11. Referência cruzada

- Dicionário completo + queries curl: `01-KAB/Projetos/Integracao BI RD Station CRM - BigQuery.md` (cofre pessoal)
- Memória do Bruce: `project-rdstation-bi-bigquery`, `skill-captura-atas-mes`
- Outras integrações: [[dbcorp]] · [[rhid]]
- Rule core: SOUL rule 14
