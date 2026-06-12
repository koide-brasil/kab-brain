---
tipo: nota
area: kab
status: ativo
criado: 2026-05-19
atualizado: 2026-05-19
tags: [meta, sobre, indicadores]
---

# Sobre — Indicadores (KAB)

## Escopo

Uma nota perene por **KPI estratégico ou tático** da KAB, com:

- Definição clara e fórmula
- Fonte (DBCorp, planilha, contábil, manual)
- Meta atual (e quem define)
- Periodicidade
- Responsável
- Histórico mensal/trimestral/semestral (tabela append-only)
- Alavancas conhecidas

## Origens das metas

- **Análise Crítica semestral** (oficial, com responsável e prazo)
- **Mapas de Processo** (formal SGK — pode divergir da Análise Crítica)
- **Plano Orçamento anual** (do vault)

Quando há divergência entre as origens, **Análise Crítica ganha** (mais recente, com plano de ação). Anotar a divergência.

## Convenções

- Título: nome do KPI (ex.: `EBITDA`, `OTD`, `Refugo Producao`).
- Frontmatter `tipo: indicador`.
- Status: `ativo` | `descontinuado`.
- Tag adicional pra área: `#financeiro`, `#producao`, `#qualidade`, `#logistica`, etc.

## Vínculo com skills

- skill-daily-meeting já monitora vários no daily.
- skill-custeio-mensal e skill-custeio-anual cobrem custos por máquina/peça.
- KPIs **sem skill ainda**: EBITDA (gap!), Satisfação Cliente, IQF Fornecedor.

## MOC

[[../indicadores/MAPA]]

## Links

- [[CLAUDE]] · _MOC-KAB · contexto-kab
