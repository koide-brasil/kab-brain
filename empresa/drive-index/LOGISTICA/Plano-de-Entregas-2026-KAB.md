---
tipo: drive-index
area: kab
categoria: logistica-plano-entregas
fonte: drive
drive_ids: [1SwUqk-LMrsQiAjO_n0N99YGfil99PIXv, 1e1W0x-l6V9S0oAnuPhq7GG4V0cwOcqD1, 1JuU2Ru_EbcxhN68AslRykeM6Ju6VaCVv]
drive_path: LOGISTICA/PLANO DE ENTREGAS 2026 KAB.xlsx
modificado: 2026-05-20
indexado: 2026-05-20
tamanho: 3122 KB
tags: [logistica, plano-entregas, suelen, 2025, 2026, mestre]
---

# PLANO DE ENTREGAS 2026 KAB (Mestre)

**Planilha-mestre da Logística · 3.1 MB · 12+ abas mensais · ~311k chars de dado · modificada HOJE**

## Resumo executivo

A planilha-mestre da Suelen com **TODAS as entregas planejadas vs realizadas por PN/mês**. Modificada HOJE (20/05/2026 — provável atualização rotineira). Estrutura: **abas por mês** (JAN_2025 a DEZ_2025 visíveis + provavelmente 2026), **cada linha 1 PN** (formato BJ-XXX-X-XX / códigos cliente), **colunas pra cada semana** com Pedido / Entrega / Saldo. Cobre clientes principais: **SUMIRIKO/SRK** (toda família BJ-XXX) + **YOROZU** (51351, 54438, 55XXX) + **INDAB** (BJ-066, 2003600026, BJ-047A, BJ-051A, BJ-056A) + **GESTAMP** (48711, 48723).

## Estrutura

### 📅 Abas mensais

Aba por mês com formato `MES_ANO`:
- JAN_2025 → DEZ_2025 (12 meses 2025)
- Provavelmente JAN_2026, FEV_2026 etc também
- Cada aba reseta as colunas pra novas semanas do mês

### 📊 Colunas por aba

Cada PN tem:
- **2 valores no início**: pode ser meta peso (kg) + meta unidades (peças)
- **Múltiplas colunas semanais**: para cada semana, 3 sub-colunas:
  - **Pedido**: qtd pedida pelo cliente naquela semana
  - **Entrega**: qtd entregue pela KAB
  - **Saldo**: diferença (positivo = entregou mais, negativo = atraso)

### 📋 PNs cobertos (amostra de JAN_2025)

**Família BJ (Sumiriko/SRK)** — ~40 PNs:
- BJ-024, BJ-031, BJ-035, BJ-036, BJ-037, BJ-040, BJ-041, BJ-042A, BJ-045A, BJ-048, BJ-052, BJ-053, BJ-059, BJ-072, BJ-073, BJ-074, BJ-075A, BJ-084, BJ-087, BJ-092, BJ-093, BJ-094, BJ-095, BJ-097, BJ-098, BJ-103, BJ-107, BJ-109, BJ-111, BJ-112, BJ-113, BJ-120

**Família BL (Sumiriko)**: BL-012, BL-039, BL-040, BL-046, BL-047, BL-048

**Família BK (Sumiriko)**: BK-014A, BK-015A

**Família BQ (Sumiriko)**: BQ-001, BQ-002, BQ-003, BQ-004

**INDAB**:
- BJ-047A-1-2, BJ-051A-1-1, BJ-056A-1-1, 2003600026, BJ-066

**GESTAMP** (homologação):
- 48711-150DL (48717-0A070)
- 48723-150DL (48723-0A070)

**YOROZU**:
- 51351-T5R-A000-30Y
- 54438 5RB0AY-2-D15-0302
- 54438-5RB0BY-3-D15-0302
- 54519-5JL0A, 54534-5JL0A, 55116-5JL0A, 55124-5JL0A, 55132-5JL0A (descontinuados — em [[Controle-Auditoria-Layout-Produto-Processo]] aparecem como "Descontinuado")

## Análise de Janeiro/2025 (amostra)

Algumas observações dos dados extraídos:

| PN | Pedido | Entregue | Saldo | Comentário |
|---|---|---|---|---|
| BJ-031-3-00 | 14.400 | 14.400 | 0 | ✅ no prazo |
| BJ-035-1-00 | 18.000 | 20.160 | +2.160 | ✅ entregou mais (boa pra próxima) |
| BJ-036-1-00 | 9.216 | 6.144 | **-3.072** | ⚠️ atraso |
| BJ-036-2-00 | 9.216 | 9.216 | 0 | ✅ |
| BJ-037-1-00 | 8.640 | 2.304 | **-6.336** | 🔴 ATRASO GRANDE |
| BJ-037-2-00 | 8.064 | 8.064 | 0 | ✅ |
| BJ-098-1-00 | 2.400 | — | **-2.400** | 🔴 não entregou nada |
| BJ-107-1-00 | 2.304 | — | **-2.304** | 🔴 não entregou |
| BJ-109-1-00 | 7.920 | — | **-7.920** | 🔴 atraso forte |
| BJ-111-2-00 | 4.224 | — | **-4.224** | 🔴 atraso forte |
| 51351 (Yorozu) | 14.400 | 7.200 | **-7.200** | 🔴 metade |
| BJ-103-1-00 | 5.490 | 5.700 | +210 | ✅ |
| BJ-066 (Indab) | 4.000 | 4.104 | +104 | ✅ |

🚨 **Janeiro/2025 teve VÁRIOS atrasos** — bate com a memória de produção difícil no início do ano + DN ainda subindo. Saldos negativos em SRK (BJ-037, BJ-098, BJ-107, BJ-109, BJ-111) e Yorozu (51351 metade).

## Função da planilha

- **Controle operacional diário** da Logística (Suelen)
- **Source-of-truth pra OTD** (On Time Delivery) — cruzar pedido vs entrega
- **Base pra ata Análise Crítica** (KPI Logística)
- **Cobrança da Produção** (Suelen alimenta esta planilha com dados de expedição, Fernando vê o saldo)

## ⚠️ 3 cópias do arquivo no Drive

Drive IDs (todas 3.1 MB):
1. `1SwUqk-LMrsQiAjO_n0N99YGfil99PIXv` (3.122 KB)
2. `1e1W0x-l6V9S0oAnuPhq7GG4V0cwOcqD1` (3.117 KB)
3. `1JuU2Ru_EbcxhN68AslRykeM6Ju6VaCVv` (3.117 KB)

Provavelmente: 1 mestre + 2 cópias (backup ou colaborador diferente). **Risco de divergência de versão**. Vale conversar com Suelen pra consolidar.

## Conexões poderosas

| Fonte | Conexão |
|---|---|
| **DBCorp** | `TbItemPedidoVendaEntrega` é a fonte ORIGINAL dos pedidos (Suelen alimenta a planilha a partir do DBCorp) |
| **skill-daily-meeting** | aba Produção/Logística usa **mesma fonte DBCorp** — provavelmente mostra coisas similares (atrasos por cliente) |
| **[[Ranking-Vendas-por-Cliente-2024-2025]]** | Cruzar: SRK 55% do faturamento × saldo negativo em jan/2025 ⇒ explica queda Q1 |
| **[[Indicador-Abril-2026-Vendas]]** | Estratégia "vender estoque DN/YAB/SRK" = atender saldos negativos pendentes |
| **[[Monitoramento-Satisfacao-Clientes-2025]]** | IQF SRK caiu 98→92% em out-nov/2025 — cruzar com saldo |

## Decisão sobre conteúdo bruto

311k chars é gigante. **Não detalhei todos os PNs** — só amostra de jan/2025. Pra análise específica de um PN/mês, abrir direto a planilha (a aba está pelos nomes `MES_ANO`).

## Quando consultar

- Análise de OTD por cliente
- Investigação de atraso específico (ex: BJ-037 em jan/2025)
- Preparar ata Análise Crítica (KPI Logística)
- Validar dados do daily-meeting

## Relacionado

- [[MAPA-LOGISTICA-2026]] — Suelen Silvestrini gestora
- [[Programacoes-Mensais-por-Cliente]] (PCP) — fonte das programações
- [[Ranking-Vendas-por-Cliente-2024-2025]] (COMERCIAL)
- skill-daily-meeting — aba Logística
- [[Controle-Auditoria-Layout-Produto-Processo]] (SGK) — quais PNs ativos
- dbcorp-mapeamento
- kab-processo-logistica

## Conteúdo bruto

<details>
<summary>1 xlsx · 3.1 MB · 12 abas mensais 2025 + provável 2026 · 311k chars extraídos</summary>

3 cópias no Drive (IDs no header)

</details>
