---
tipo: projeto
area: kab
status: concluido
criado: 2026-05-20
atualizado: 2026-05-20
tags: [daily-meeting, skill, roadmap]
---

# Daily Meeting — Roadmap de Melhorias

Lista das melhorias mapeadas em 2026-05-20 (sessão Bruce) para implementar na
skill-daily-meeting conforme prioridade do Erico.

> **Status 2026-05-20 (fim da tarde):** Top 5 + Treinamentos FOR-030 **TODOS ENTREGUES**
> na mesma sessão. v3 da skill em produção.

## Top 5 prioritários (mais ROI) — ✅ TODOS ENTREGUES

| # | Sugestão | Aba | Status | Implementação |
|---|---|---|---|---|
| 1 | **Contas a receber em atraso + top inadimplentes** | Financeiro | ✅ | `TbTitulo` + `TbDocumento` + AR aging buckets (1-30/31-60/61-90/90+) |
| 2 | **Programado vs Realizado (PCP)** | Produção | ✅ | `TbOrdemProducao` status=3 + aging vs `OrdProdDataFimPrevista` |
| 3 | **Top clientes com entrega atrasada** | Logística | ✅ | `TbItemPedidoVendaEntrega` com saldo > 0 e prevista < hoje |
| 4 | **Tendência mensal de refugo (últimos 6m)** | Qualidade | ✅ | Chart.js combo (barras pç + linha % refugo), mês corrente em hachura |
| 5 | **Top 10 clientes MTD (faturamento)** | Vendas | ✅ | Agregação do `detalhe_dia` por cliente + % de concentração |
| 6 | **Treinamentos FOR-030** | RH | ✅ | 6 planilhas do Drive consolidadas, KPIs YTD/MTD/vencidos + pendentes |

---

## Por aba — sugestões completas

### 📊 Aba Resumo
- **"Pendências do dia" consolidado** — semáforo único somando faltas + RNCs atrasadas + OS abertas + carteira atrasada. **Esforço: baixo · Impacto: alto** pro daily — visão instantânea de "tem fogo hoje?".
- **Compras MTD como KPI no topo** — já existe no Financeiro, faltou subir pra capa. Esforço: trivial.

### 📦 Aba Produção
- **Programado vs Realizado (PCP)** — `TbOrdemProducao.OrdProdDataPrev`. Mostrar OPs no prazo/atrasadas + barras "previsto vs concluído". **Esforço: médio · Impacto: alto.**
- **Eficiência (pç/h) por máquina** — `produção / horas apontadas` vs média histórica. Esforço: baixo. Impacto: médio.
- **Tempo de parada por máquina (top)** — separar "manutenção" vs "setup" vs "falta MP" — gargalo de produção mais claro.

### 💼 Aba Vendas
- **Top 10 clientes MTD** (faturamento líquido + qtd NFs) — concentração de receita. Esforço: baixo.
- **Cotações enviadas vs novos deals criados** — ritmo do comercial. Esforço: baixo.
- **Tempo médio do deal por estágio** — dias na "Análise" antes de virar "Proposta". Identifica gargalo de funil. Esforço: médio.

### ✅ Aba Qualidade
- **Tendência mensal de refugo (últimos 6 meses)** — barras/linha mostrando MoM. **Esforço: médio · Impacto: alto** pra Análise Crítica.
- **RNCs: tempo médio de encerramento** + RNCs reabertas — métrica SGQ. Esforço: baixo (dado no FOR-027).
- **Reincidência de itens** — itens com refugo em ≥3 meses seguidos. Sinaliza problema crônico.
- **Top 3 reclamações de cliente** — extrair texto das RNCs de Cliente.

### 🚚 Aba Logística
- **Top clientes com entrega atrasada** (`TbItemPedidoVendaEntrega` com data < hoje E saldo > 0). Esforço: baixo, mesma tabela da carteira.
- **Lead time médio** (data emissão NF − data prevista pedido) — proxy de capacidade. Esforço: médio.
- **Custo de transporte por peça** — transporte MTD R$ ÷ qtd peças expedidas. Esforço: baixo.

### 🔧 Aba Manutenção
- **MTBF por máquina** (tempo médio entre falhas corretivas). **Esforço: médio · Impacto: alto** pra Jônatas.
- **OS preventivas vencendo nos próximos 30 dias**. Esforço: médio.
- **Custo de manutenção MTD** — `TbPedidoCompra` com CC manutenção/ferramentaria. Esforço: baixo.

### 💰 Aba Financeiro
- **🥇 Contas a receber em atraso + top clientes inadimplentes** — `TbTitulo` (parcelas) com `DataVencimento < hoje` e não pagas. **Esforço: médio · Impacto: alto** — cash flow direto.
- **DSO (Days Sales Outstanding)** = AR médio ÷ receita × 30. Indicador de saúde financeira. Esforço: médio.
- **Cash flow projetado próximos 30d** — soma de títulos a receber por semana. Esforço: médio.

### 👥 Aba RH
- **🆕 Treinamentos do FOR-030** (planejado vs realizado por colaborador) — `[[#Treinamentos — FOR-030 (pasta no Drive)]]` abaixo. Dona: Maria Cecília Caldas (DP).
- **Aniversariantes do mês** — campo `dateOfBirth` no Person do RHiD. Esforço: trivial. Impacto: cultural.
- **Turnover rate MTD** — admissões/demissões via `admissionDate` / `dismissalDate`. Esforço: baixo.
- **Exames periódicos vencendo** — se cadastrado no RHiD ou Drive.

---

## Treinamentos — FOR-030 (pasta no Drive)

**Caminho no Drive da KAB:**
`RH > DP 2026 > treinamentos > 2026-treinamentos > [cargo]`

**Dona / responsável:** Maria Cecília Caldas (mc.caldas@koidebrasil.com — DP)

**Arquivos identificados (2026-05-20):**

| Arquivo | File ID | Modificado |
|---|---|---|
| FOR-030 REV01 — Auxiliar de Manutenção | `1h_QxSLuhhpbWKSBOeUK00AWDaXIjoxZK` | 2026-05-20 |
| FOR-030 REV01 — Auxiliar e Assistente de Manutenção | `1ApvOxWeuYEn9_A_QQIeQ2Cxqy-URbqLh` | 2026-05-20 |
| FOR-030 REV01 — MANUTENÇÃO | `1SRDv3F8Iare92iMFRM2_j1ayvcErS3QF` | 2026-01-21 |
| FOR-030 REV01 — Manutenção - Operadores | `1LNVdcWHlu7lsjA8HFnyFj_w18Jc4FYp4` | 2026-05-20 |
| FOR-030 REV01 — Assistente de Manutenção | `1EAgulhyHkK9jGCEPVBuIU9JFk-4Wrk5n` | 2026-05-20 |
| **FOR-030 REV01 — OPERADORES I, II, III e IV (2026)** | `1oqhzrBYzMtAoanM1ZckLSsdjcUW73CCC` | 2026-05-20 |

**Estrutura suposta** (validar antes de implementar — abrir 1 e ver):
- 1 arquivo por cargo/grupo de colaboradores
- Planejamento anual: matriz de treinamentos × colaboradores × período de execução
- Marca de "Realizado" quando feito

**Cards a implementar na aba RH:**
1. KPI **"Treinamentos vencendo (próximos 30d)"** — qtd planejados ainda não realizados
2. KPI **"Treinamentos realizados MTD"**
3. Tabela **"Treinamentos pendentes por colaborador"** com data prevista vs status
4. (Opcional) **% conclusão YTD do plano anual** — barra de progresso por cargo/depto

**Considerações técnicas:**
- Mesmo padrão de leitura usado em skill-daily-meeting pra Matriz RNC (FOR-027): OAuth refresh_token + `_baixar_drive_xlsx` + openpyxl
- Como são vários arquivos (1 por cargo), criar função `_listar_treinamentos_drive()` que busca todos os `FOR-030.*2026.*` e consolida
- Cuidado: arquivos antigos (2024, 2025) também aparecem na busca — filtrar por nome `'2026'`
- Pasta-mãe da maioria: `1hwjQafbK_zYJ_6UWkJ5rsLsm-G1jDXEY`
- Pasta dos OPERADORES (separada): `1qnR0Wrf-LUu6fnQXwLapXJG4gmrtuSfR`

---

## Histórico

- **2026-05-20 (manhã)** — Roadmap criado durante sessão Bruce após mapeamento completo das fontes (DBCorp, RD Station, RHiD, Drive). Bruce sugere top 5 por ROI; Erico aprova roadmap e adiciona treinamentos como item explícito.
- **2026-05-20 (tarde)** — Sessão de implementação: Top 5 + Treinamentos FOR-030 entregues sequencialmente em ordem de complexidade crescente (Top 10 clientes → Top atrasados → AR → PCP → Tendência refugo → FOR-030). Daily v3 em produção, ~5k linhas no script principal. Itens secundários (DSO, MTBF, aniversariantes, etc.) continuam em backlog pra próximas sessões.

## Links

- Skill: skill-daily-meeting
- Memória do RHiD: rhid-api-mapeamento
- Tabelas financeiras DBCorp: dbcorp-tabelas-financeiras
- Estrutura SGK: kab-sgk-estrutura
- Pessoas sem ponto (excluir de faltas/HE): kab-pessoas-sem-ponto
