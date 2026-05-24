---
tipo: drive-index
area: kab
categoria: sgk-rnc
fonte: drive
drive_ids: [1eDCPyuYOtZRY9xANNTAZlua3PX86X7uD, 1NYVrBr3CyQg6zjydg08rSCnQqMwdWwDB]
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/09 - Não conformidade/Lições Aprendidas/
modificado: 2025-04-29
indexado: 2026-05-20
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
tags: [sgk, licoes-aprendidas, book-defeitos, historico, banco-conhecimento, madora-ferreira]
---

# Lições Aprendidas + BOOK 002 (Peças Gerais)

**Banco histórico de RNCs desde 2016 + catálogo visual de defeitos**

## Resumo executivo

Dois documentos complementares: **Lições Aprendidas** (xlsx, 22MB com fotos) é o **banco histórico de TODAS as NCs encerradas desde 2016** — mais de 80 NCs catalogadas com cliente, item, descrição, causa e contenção. **BOOK 002 Peças Gerais** é o catálogo visual de defeitos típicos (Madora elaborou, Flávio aprovou, abr/2025). Juntos, são a **memória institucional de qualidade** da KAB — pra usar antes de investigar NC nova (procurar precedente) e durante treinamento de novos inspetores.

## Lições Aprendidas (xlsx)

- **Drive ID**: 1eDCPyuYOtZRY9xANNTAZlua3PX86X7uD
- **Tamanho real**: 22 MB (extraído ~33k chars de texto — fotos incluídas pesam)
- **Cobertura temporal**: agosto/2016 a setembro/2021 (~5 anos)
- **80+ NCs catalogadas** com: Item · Cliente · Data emissão · Não conformidade (foto) · Descrição da causa · Contenção · Ação corretiva · Data ação corretiva · Eficácia
- ⚠️ **NCs pós-2021 não estão neste arquivo** — provavelmente migraram para FOR-027 anual desde 2022. Vale confirmar se há atualização ou se é arquivo histórico congelado.

### Distribuição por cliente (NCs documentadas)

| Cliente | NCs | Comentário |
|---|---|---|
| **SUMIRIKO/SRK** | **44** | Cliente histórico com mais NCs (~50% do total) |
| **DTR** | 22 | Cliente histórico (estrutura DN/familiares) |
| **INDAB** | 10 | Cliente formal — concentração em problemas de cavaco/óleo (2016-2017) |
| **POLISTAMPO** | 4 | Cliente formal |
| **KMEX** | 1 | Pontual (2020) |
| **BOGE** | 1 | Histórica (2018) |

### Top defeitos catalogados (frequência)

| Defeito | Ocorrências |
|---|---|
| Variação de comprimento | 18 |
| Rebarba | 14 |
| Marca / Marca de corte | 9 |
| Chanfro irregular/rebarbas | 7 |
| Bolha (alumínio) | 6 |
| Excesso de óleo / peças grudentas | 5 |
| Cavaco grudado / sujidade | 5 + 2 |
| Rebaixo nos dois lados | 3 |
| Oxidação | 1 |

### Padrão recorrente de "contenção"

A grande maioria das contenções foi **"Inspeção 100%"** (PNP, visual ou dimensional). Sinaliza que a KAB usa **inspeção 100% como salvaguarda padrão** — eficaz no curto prazo mas custosa de manter.

## BOOK 002 — Peças Gerais (xlsx)

- **Drive ID**: 1NYVrBr3CyQg6zjydg08rSCnQqMwdWwDB
- **Rev 00 · 25/04/2025**
- **Elaborado por**: Madora Ferreira · **Aprovado por**: Flávio Sales
- **Função**: catálogo visual de defeitos típicos pra treinamento e referência rápida do inspetor
- **Defeitos listados na aba "Geral"**:
  - Marcas Internas
  - Corte parcial
  - Chanfro irregular e rebarbas
  - Oxidação
  - Sujidade no interno
  - Marcas de corte irregular e arraste
  - Rebaixo nos dois lados (este é apenas um lado)
  - Variação de comprimento
  - Ovalizadas, arraste de material e ponta de barra
  - Bolha no alumínio
  - Rebarba
  - Planicidade fora do especificado
  - Marcas de Serra
  - Diâmetro interno maior
  - Peças viscosas, grudentas e excesso de óleo
  - Chanfro maior também no lado quebra canto
- **Provável**: é a "modelo prático" para o template do [[FOR-043-...]] (Book Defeitos vazio referenciado em formulários)
- **Limitação**: foi extraído pouco texto (1k chars) — defeitos têm fotos que não vieram no extract

## Quando consultar

- **Sempre que investigar NC nova** — procurar precedente em Lições Aprendidas
- **Onboarding/treinamento de inspetor** — usar BOOK 002 como referência visual
- **Antes de propor "Inspeção 100%"** como contenção — verificar se há precedente que mostre solução melhor
- **Análise estratégica**: 80+ NCs com SUMIRIKO ao longo de 5 anos sinalizam que **a relação SRK-Koide tem histórico denso de não conformidades** — isso justifica a atenção contínua
- Cruzar com [[FOR-027-Matriz-RNC-2026]] e [[FOR-027-Matriz-RNC-2025-2024-Historico]]
- Cruzar com [[RNCs-2025-Internas-e-Sistema]]

## Achados estratégicos

1. **SRK domina o histórico de NCs** (44/82 = 54%) — cliente crítico
2. **Variação de comprimento é o defeito #1** (18 ocorrências) — vale ter PNP sistemático no setup
3. **Excesso de óleo + cavaco** = problema histórico de Indab (2016-2017) — provavelmente resolvido (sem novas ocorrências)
4. **Lições Aprendidas parou em 2021** — possível gap entre o doc estratégico e os FOR-027 anuais. Falar com Madora pra confirmar se há atualização planejada.
5. **Reincidência de tipos**: rebarba (14) + chanfro irregular (7) = 21 ocorrências relacionadas a corte/usinagem — gargalo persistente

## Relacionado

- [[FOR-027-Matriz-RNC-2026]] · [[FOR-027-Matriz-RNC-2025-2024-Historico]]
- [[RNCs-2025-Internas-e-Sistema]]
- [[FOR-111-043-Indicadores-Diarios]] — FOR-043 Book Defeitos (template em branco)
- [[MAPA-QUALIDADE-2026]] — Flávio Sales
- [[kab-clientes-formais]]

## Conteúdo bruto

<details>
<summary>Lições: 22MB (extract 33k chars) · BOOK 002: 9MB (extract 1k chars)</summary>

Imagens não extraídas — re-baixar arquivo no Drive pra ver fotos completas

</details>
