---
tipo: drive-index
area: kab
categoria: geral-daily-meeting
fonte: drive
drive_path: GERAL/34 - Reunião Bom dia/
drive_id: 1t33ZhSj-Rx1BxqnWDPf_IhliL7iXIvD-
modificado: 2026-05-20
indexado: 2026-05-20
total_arquivos: 18
tags: [geral, daily-meeting, reuniao-bom-dia, power-bi, indicadores, fonte]
---

# Reunião Bom Dia — Pasta-mãe do Daily Meeting Físico KAB

⭐ **18 arquivos modificados HOJE (20/05/2026)** · 3 dashboards Power BI · fonte dos relatórios diários

## Resumo executivo

Esta é a pasta-MÃE do **"Bom dia" da KAB** — a reunião matinal de gestão. Concentra **18 arquivos atualizados HOJE** (20/05/2026) com indicadores, dashboards Power BI, relatórios de faturamento, refugo, produção, RH, financeiro. **Provavelmente é a fonte que o [[skill-daily-meeting]] (HTML do Bruce) está digitalizando/substituindo gradualmente**.

## Inventário (modificados HOJE — top 11)

### 📊 Relatórios CSV (extração DBCorp)
| Arquivo | Tamanho | Modif | Conteúdo |
|---|---|---|---|
| **RptFaturamentoCliente.csv** | 1.7 MB | 20/05 | Relatório faturamento por cliente (DBCorp) |
| **RptRecebimentoNotaFiscalAnaliticoFinanceiro.csv** | 82 KB | 20/05 | NFs recebidas (analítico) |

### 📈 Planilhas vivas
| Arquivo | Tamanho | Modif | Conteúdo |
|---|---|---|---|
| **Refugos** | 164 KB | 20/05 | Refugo do dia (cruza KPI 0,5% meta) |
| **Produção** | 166 KB | 20/05 | Produção do dia |
| **FINANCEIRO - BUDGET.xlsx** | 56 KB | 20/05 | Orçamento × realizado |
| **Apoio Produção.xlsx** | 232 KB | 19/05 | Manutenção+Ferramentaria |
| **RH-HE.xlsx** | 83 KB | 15/05 | Horas Extras RH |
| **Indicadores RH.xlsx** | 28 KB | 15/05 | KPIs RH |
| **Novos Clientes.xlsx** | 9 KB | 07/05 | Pipeline novos clientes |
| **Metas Prod.xlsx** | 22 KB | 30/04 | Metas Produção |
| **Produto.xlsx** | 11 KB | 07/04 | Produto/PN |

### 🎯 Dashboards Power BI (.pbix)
| Dashboard | Tamanho | Modif |
|---|---|---|
| **Bom dia.pbix** | 1.55 MB | 11/12/2025 ⭐ |
| **Indicadores Madora.pbix** | 1.46 MB | 10/10/2025 |
| **Indicadores.pbix** | 1.50 MB | 07/10/2025 |

🎯 **3 reports Power BI ativos** — confirma uso do Power BI mencionado em [[ITs-PCP-Sistemas-Atualizacao]] (IT-073). Quem mantém: Madora (Sup SGQ — provavelmente).

### 📚 Históricos relevantes
- **Dados reunião Bom dia.xlsx** (279 KB, 08/07/2025)
- **Programação Semanal Produção.xlsx** (12 KB, 30/04/2025)
- **Pendencias diária reunião do bom dia.xlsx** (25 KB, 10/02/2025)
- **Financeiro - Redução de Custo e Ganhos.xlsx** (22 KB, 06/12/2024)
- 📁 **Movimentação XML** (14/01/2025)
- 📁 **Entregas** (11/05/2023)
- 📁 **Old** (09/12/2022)

## 🎯 Quem participa do Bom dia (extrapolação)

Pela natureza dos arquivos:
- **Madora** (Sup SGQ) — dashboards Power BI, indicadores
- **Fernando Macedo** (Coord Produção) — Produção, Refugos, Metas Prod
- **Carla** (Coord Financeiro) — FINANCEIRO BUDGET
- **Suelen** (Sup Logística) — Programação Semanal
- **Mayra** (Gerente RH) — Indicadores RH, RH-HE
- **Jônatas** (Sup Ferramentaria) — Apoio Produção
- **Gabriel/Josielen** (Comercial) — Novos Clientes
- **Erico** — preside

## Relação com daily-meeting do Bruce

| Aba do daily-meeting Bruce | Fonte equivalente aqui |
|---|---|
| Vendas (RptFatCliente) | RptFaturamentoCliente.csv ✅ MESMA fonte |
| Produção | Produção.xlsx / Metas Prod |
| Refugo | Refugos |
| RH | RH-HE + Indicadores RH |
| Apoio Produção | Apoio Produção.xlsx |
| Financeiro | FINANCEIRO - BUDGET |

🎯 **O daily-meeting HTML do Bruce REPLICA quase 100% desta pasta** — substituindo o trabalho manual (csv export + xlsx) por automação SQL + HTML dinâmico. **Madora pode estar gradualmente migrando**.

## ⚠️ Coexistência: 2 sistemas paralelos

Atualmente:
- **Bruce daily-meeting** (HTML dinâmico, SQL DBCorp) — Erico usa diariamente
- **34 - Reunião Bom dia** (planilhas manuais + Power BI) — Madora e equipe alimentam

**Risco**: dados podem divergir se atualização não for sincronizada.

## Sugestões pra o Erico

1. **Discutir com Madora** se ela quer migrar 100% pro daily-meeting do Bruce (ou manter ambos)
2. **Sincronizar fontes** — RptFaturamentoCliente.csv e a query SQL do Bruce devem dar o mesmo número (validar)
3. **Pegar os .pbix** se quiser entender exatamente o que o Power BI mostrava (pode revelar gaps no Bruce)
4. **Pendências.xlsx** (10/02/2025) — vale ver o que é (talvez agenda compartilhada de pendências)

## Quando consultar

- Conferir o que Madora prepara pro Bom dia (vs daily do Bruce)
- Investigar divergência entre os 2 sistemas
- Recuperar planilha histórica (Old)
- Sob demanda — abrir arquivo específico

## Relacionado

- [[_sobre]] — pasta GERAL
- [[skill-daily-meeting]] — substituto digital (Bruce)
- [[Acompanhamento-Meta-Solucao-Diario]] (PRODUCAO FOR-111) — outro daily físico, parou jul/2025
- [[ITs-PCP-Sistemas-Atualizacao]] — IT-073 Atualização Power BI
- [[Indicadores-RH]] (RH) — fonte similar
- [[Demonstracoes-Financeiras-KAB-2023-2025]] (FINANCEIRO) — fonte cruzada
- [[Ranking-Vendas-por-Cliente-2024-2025]] (COMERCIAL)

## Conteúdo bruto

<details>
<summary>18 arquivos · ~6 MB total · 3 .pbix Power BI · diversos xlsx/csv</summary>

Drive path: `GERAL/34 - Reunião Bom dia/`
ID: `1t33ZhSj-Rx1BxqnWDPf_IhliL7iXIvD-`

Pra abrir um arquivo específico: acessar Drive direto.

</details>
