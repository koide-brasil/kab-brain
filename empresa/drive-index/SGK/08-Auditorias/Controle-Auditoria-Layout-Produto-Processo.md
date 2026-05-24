---
tipo: drive-index
area: kab
categoria: sgk-controle
fonte: drive
drive_id: 1I-ELuRYpoPAzISv0EonSxCXTwMTjOoFi
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/08 - Auditorias/Produto e Layout/Controle de Auditoria Layout, Produto e Processo.xlsx
modificado: 2025-11-20
indexado: 2026-05-20
hash_sha: 6639faa4b59d3872
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
tags: [sgk, auditoria-layout, controle, sumiriko, yorozu, indab, polistampo, validade]
---

# Controle de Auditoria Layout, Produto e Processo

**Catálogo central de inspeções de layout por PN — última atualização 20/11/2025**

## Resumo executivo

Planilha-mestre que **rastreia a validade das inspeções de layout** de cada PN por cliente. A regra é: cada PN tem uma "última inspeção de Layout" e uma "data próxima Inspeção" (geralmente 1 ano depois). Tem tolerância de 30 dias antes/depois. Cobre **39 PNs** distribuídos em Polistampo, Yorozu, Indab e **Sumiriko (15+ PNs — maior concentração)**. Mostra também data programada de produção e itens **descontinuados** (vários — sinal de redução de portfólio Yorozu/Sumiriko ao longo dos anos).

## Estrutura

| Coluna | Significado |
|---|---|
| Peça | Código do PN |
| Revisão Desenho | Versão do desenho do cliente |
| Data Desenho | Data da emissão original do desenho |
| Cliente | Polistampo / Yorozu / Indab / Sumiriko |
| Última inspeção de Layout | Quando a KAB fez inspeção formal |
| Data próxima Inspeção | Geralmente +1 ano (validade) |
| Data Programada de Produção | Status: "Sem produção após essa data" / "Descontinuado" / vazio (ativo) |

### Legenda de cores
- `XX/XX/XX` Vencido mas dentro de tolerância de 30 dias antes/depois
- `XX/XX/XX` Vencido **fora do prazo**
- `XX/XX/XX` Próximo de vencer (em menos de 30 dias)

## Distribuição por cliente

### Polistampo (5 PNs)
- 208.0000070, 208.05.95, 208.0000072, 208.0000073, 208.06.02
- ⚠️ **208.05.95 está VENCIDO desde 2020** (sem produção depois) — mantido no controle

### Yorozu/YAB (12 PNs — vários descontinuados)
- 51351-T5R-A000-30Y (vencido 2024 — ainda ativo?)
- 54438 5RA0AY (próxima inspeção 25/11/2025)
- 544F85726R (vencido 2024)
- 54534, 55116, 55124, 55132, 55133, 54519-5JL0A (todos **DESCONTINUADOS**)
- 54438 7LR0AY, 5RA0AY, 5RA0BY (ativos com inspeção 2024-2025)

### Indab (4 PNs)
- 02.0036.00026 (vencido 02/2024)
- BJ-051-1-1 (vencido 01/2024)
- ⚠️ **BJ-056-1-1 vencido desde 01/2017** — sem produção depois
- BJ-066-1 (vencido 03/2025 — recente)

### **Sumiriko (15+ PNs — maior concentração)**

| PN | Última inspeção | Próxima | Status |
|---|---|---|---|
| BJ-031-3 | 25/02/2025 | 25/02/2026 | Ativo |
| BJ-035-1 | 24/02/2025 | 24/02/2026 | Ativo |
| BJ-036-1 | 27/02/2025 | 27/02/2026 | Ativo |
| BJ-036-2 | 14/01/2025 | 14/01/2026 | Ativo |
| BJ-037-1 | 17/03/2025 | 17/03/2026 | Ativo |
| BJ-037-2 | 21/03/2025 | 21/03/2026 | Ativo |
| BJ-041-2 | 14/02/2025 | 14/02/2026 | Ativo |
| BJ-045-2 | 31/07/2023 | 30/07/2024 | Sem produção depois |
| BJ-048-2 | 15/04/2025 | 15/04/2026 | **Descontinuado** |
| BJ-052-1 | 17/03/2025 | 17/03/2026 | **Descontinuado** |
| BJ-052-2 | 14/02/2025 | 14/02/2026 | **Descontinuado** |
| BJ-053-2 | 07/04/2025 | 07/04/2026 | **Descontinuado** |
| BJ-074-2 | 24/03/2025 | 24/03/2026 | **Descontinuado** |
| BJ-087-1 | 21/03/2025 | 21/03/2026 | **Descontinuado** |
| BJ-092-1 | 17/03/2025 | 17/03/2026 | Ativo |

⚠️ **Curiosidade**: vários itens **DESCONTINUADOS** ainda têm próxima inspeção planejada — sinaliza falta de limpeza do controle (PNs zombies).

## Achados

1. **Sumiriko domina** com 15+ PNs no controle (alinha com história de NCs e Manual de Fornecedores ([[Requisitos-SRK-SumiRiko]]))
2. **Yorozu perdeu volume**: 6 PNs descontinuados (família 5JL0A — provavelmente plataforma de carro descontinuada)
3. **PNs zombies**: Descontinuados ainda têm próxima inspeção marcada — limpar o controle
4. **Itens vencidos sem ação**: BJ-056-1-1 INDAB vencido desde 2017, 208.05.95 Polistampo vencido desde 2020 — manter ou remover?
5. **Padrão de inspeção fev-abr/2025**: bateria concentrada de inspeções no início do ano — provavelmente preparação pra auditoria interna jun/2025

## Quando consultar

- Antes de produzir um PN: validar se inspeção de layout está vigente
- Planejamento anual de inspeções (próximos 12 meses)
- Cruzar com [[Inspecao-Layout-SRK-2025]] (PDFs específicos de cada Sumiriko)
- Cruzar com [[FOR-058-Controle-Informacao-Documentada-Processos]] (catálogo Facilites por peça)

## Relacionado

- [[Inspecao-Layout-SRK-2025]] — 34 PDFs de Sumiriko enviados em 11/2025
- [[FOR-058-Controle-Informacao-Documentada-Processos]]
- [[FOR-061-Auditoria-Layout-Produto-Processo]] — formulário de auditoria
- [[kab-clientes-formais]]
- [[Plano-Programa-Auditoria-Interna-2024-2025]]

## Conteúdo bruto

<details>
<summary>12k chars · 1 aba (Controle por PN — 39 entradas)</summary>

File ID: 1I-ELuRYpoPAzISv0EonSxCXTwMTjOoFi

</details>
