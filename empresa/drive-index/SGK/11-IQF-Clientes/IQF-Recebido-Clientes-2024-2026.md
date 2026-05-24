---
tipo: drive-index
area: kab
categoria: sgk-satisfacao-cliente
fonte: drive
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/11 - IQF Clientes/
modificado: 2026-05-20
indexado: 2026-05-20
total_arquivos: 64
tags: [sgk, iqf, satisfacao-cliente, yorozu, indab, sumiriko, polistampo, dn, batch-indexado]
---

# IQF Recebido dos Clientes (2024-2026) — 64 arquivos

**Índice batch — os 64 IQFs originais que os 5 clientes enviam mensalmente pra KAB**

## Resumo executivo

A KAB recebe **IQF mensal de 5 clientes formais** (Yorozu, Indab, Sumiriko, Polistampo, DN). Cada cliente tem **formato próprio**: Yorozu chama IDF, Indab usa código próprio (002734 KOID), Sumiriko envia "KOIDE BRASIL", Polistampo usa RANKING, DN chama IQF Koide. **Não extraídos individualmente** porque a visão consolidada está em [[Monitoramento-Satisfacao-Clientes-2025]]. Esta nota serve como índice e descrição da estrutura de cada cliente. **64 arquivos no total** (61 PDFs + 3 outros) cobrindo 2024-2026.

## Distribuição por cliente

| Cliente | Pasta | 2024 | 2025 | 2026 | Total |
|---|---|---|---|---|---|
| Yorozu (YAB) | `2 - Yorozu` | 1 | 8 | 2 | **11** |
| Indab | `3 - Indab` | 5 | 9 | 1 | **15** |
| Sumiriko (SRK) | `6 - Sumiriko` | — | 9 | 2 | **11** |
| Polistampo | `8 - Polistampo` | 7 | 9 | 3 | **19** |
| DN Automotivos | `9 - DN Automotivos` | — | 4 | 4 | **8** |
| **TOTAL** | | **13** | **39** | **12** | **64** |

## Formato por cliente

### 🟦 Yorozu (YAB) — "IDF" Índice de Desempenho do Fornecedor
- **Nome arquivo**: `IDF - <MÊS> <ANO> KOIDE.pdf`
- **Estrutura**: tabela mensal 12 meses + classificação A/B/C/D/E
- **Classificação**:
  - **A**: IDF ≥ 90 — aprovado sem restrição
  - **B**: IDF 80-89 — aprovado com restrições
  - **C**: IDF 70-79 — aprovado com restrições + ação corretiva
  - **D**: IDF 60-79 (?) — manter OCs abertas + ações urgentes
  - **E**: IDF ≤ 0 < 39 — desqualificado
- **KOIDE no Yorozu**: **Classe A com 100% todos os meses** (perfeito)
- **Responsáveis Yorozu**: Tamiris Jacinto (elaborou), Lucas Siqueira (aprovou) — PC Log/QA

### 🟧 Indab — "002734 KOID" (código KAB no sistema Indab)
- **Nome arquivo**: `002734 KOID <MMSS>.pdf` (ex 0625 = jun/2025) ou `002734 KOID <MES>24.pdf` em 2024
- **Estrutura**: tabela com IQP (Produto), IQS (Sistema), IPO (Pontualidade), IQI (Qualidade Item), **IQF** (consolidado)
- **Detalha por produto** com aprovado sem/com desvio, rejeitado, selecionado pelo fornecedor
- **Exemplo PN**: 02.0036.00044 (Tubo usinado Ø 40×47.2×38 mm — material STKM13C — cliente toyota)
- **KOIDE no Indab**: variável (94-100%), caiu em ago-set/25

### 🟪 Sumiriko (SRK) — "KOIDE BRASIL"
- **Nome arquivo**: `KOIDE BRASIL.pdf` (frequente) ou `KOIDE BRASIL <MES>.pdf`
- **Estrutura**: gráficos com IQF + histórico mensal + breakdown IDF Parcial:
  - **IDF Parcial Qualidade**: max 62 (KOIDE: 60)
  - **IDF Parcial Logística**: max 26 (KOIDE: 26)
  - **IDF Parcial Compras**: max 12 (KOIDE: 12)
  - **Total IQF**: max 100 (KOIDE: **98**)
- **Classes**: A (>=90), B (80-89), C (70-79), D (<=69)
- **KOIDE no SRK**: **Classe A com 98%** estável, caiu pra 92% em out-nov/25 (RNCs)
- Plano de Ação solicitado

### 🟨 Polistampo — "RANKING <MÊS> - <ANO>"
- **Nome arquivo**: `RANKING <MÊS> - <ANO>.pdf`
- **Estrutura**: ranking de fornecedores ordenado por IQF + classificação
- **Fórmula IQF Polistampo**: `(PPM + Certificação + Prazo de entrega + Auditoria de Processo) / 4`
- **KOIDE no Polistampo**: F000XX (não confirmado exato — está entre F00007X e F00008X com 89-92)
- **KOIDE no ranking**: **92% — Classe A com pequenas restrições** (aprovado, apresentar Plano de Melhoria)
- Polistampo avalia ~80+ fornecedores

### 🟩 DN Automotivos — "IQF Koide"
- **Nome arquivo**: `IQF Koide - <Mês><Ano>.pdf` (ex: IQF Koide - Abr26.pdf)
- **Estrutura**: 3 gráficos lado a lado mensal:
  - **IPL** (On Time Delivery): KOIDE 100% todos meses
  - **PPM** (NC Product): KOIDE com 35 PPM em mar/26 (pico)
  - **EVOLUÇÃO IQF**: KOIDE 100% todos meses
- **Classes**: Classe A/B / Classe C / Classe D
- **KOIDE no DN**: **Classe A com 100% estável** ✅

## Achados transversais

1. ✅ **Yorozu e DN são os clientes mais fáceis** — 100% absoluto
2. ⚠️ **Sumiriko é o mais técnico** — quebra em 3 componentes (Q+L+C) e tem critério mais rígido (98 max sem perder pontos)
3. ⚠️ **Polistampo é "morno"** — travado em 92% sem upside
4. 📉 **Único cliente que despreza relação** seria GESTAMP (mencionado nas memórias como travado/em homologação) mas **não envia IQF formal** ainda
5. 🎯 Cada cliente tem **regra de classificação diferente** — comparar % entre clientes pode ser enganador. Comparar SEMPRE o cliente consigo mesmo ao longo do tempo

## Quando consultar

- **Análise de tendência específica** — entrar na pasta do cliente, ver mês por mês
- **Resposta a queda no IQF** — buscar o PDF do mês específico pra ver detalhamento
- **Negociação com cliente novo** — usar IQF como prova de qualidade
- Cruzar com [[Monitoramento-Satisfacao-Clientes-2025]] (visão consolidada)
- Cruzar com [[FOR-027-Matriz-RNC-2026]] (RNCs ativas) e [[FOR-027-Matriz-RNC-2025-2024-Historico]] (histórico)

## Pra acessar IQF específico

Drive path por cliente: `QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/11 - IQF Clientes/<Pasta cliente>/<Ano>/`

Pra extrair PDF específico via script:
```bash
python3 92-Skills/kab/treinar-sgk/scripts/treinar_sgk.py extract <DRIVE_ID>
```

(IDs catalogados no SQLite — usar `--list` ou consulta direta)

## Relacionado

- [[Monitoramento-Satisfacao-Clientes-2025]] — visão consolidada interna
- [[ATA-Analise-Critica-2025-1S]] — usa IQF como dado
- [[FOR-027-Matriz-RNC-2026]] · [[FOR-027-Matriz-RNC-2025-2024-Historico]]
- [[Requisitos-DN-Automotivos]] · [[Requisitos-SRK-SumiRiko]] · [[Requisitos-Tuopu]] · [[Requisitos-Polistampo-YAB]]
- [[kab-clientes-formais]]
- [[Licoes-Aprendidas-Book-Defeitos]]

## Conteúdo bruto

<details>
<summary>64 PDFs ~150-580 KB cada · 2024-2026 · 5 clientes</summary>

Todos catalogados no SQLite. Consultar:
```sql
SELECT * FROM arquivos WHERE categoria='11-IQF-Clientes';
```

</details>
