---
tipo: nota
area: qualidade
status: canonico
criado: 2026-06-03
atualizado: 2026-06-04
autor: bruce
tags: [qualidade, contexto, lessons]
---

# Qualidade — lições aprendidas

> Mais recentes primeiro. **Cada lição gera uma ação concreta.**

### [2026-06-04] Medição crítica precisa ter método validado antes da produção
- **Contexto:** uma peça nova com característica crítica foi considerada boa por método alternativo, mas a medição tridimensional mostrou divergência. A empresa precisou recorrer a CMM externa para contenção.
- **Lição:** instrumento disponível não significa método validado. Para cota crítica, Qualidade precisa confirmar previamente se o método interno mede com confiança ou se será necessário CMM/terceiro.
- **Ação:** criar gate de metrologia para peça nova: característica crítica, método de medição, instrumento, fornecedor externo alternativo, frequência de amostragem e critério de liberação.

### [2026-06-03] Refugo está acima da meta — custo de qualidade cresce em silêncio
- **Contexto:** o indicador de custo de refugo de produção está atualmente acima da meta do SGK.
- **Lição:** falha na identificação de refugo durante a produção (risco formal nº 3 do mapa) deixa o custo subir sem visibilidade até o fechamento do mês.
- **Ação:** reforçar a identificação de refugo no chão de fábrica (interface com Produção) e tratar via PR-07 já na detecção.

### [2026-06-03] NC com baixa quantidade tratada só com Alerta da Qualidade pode mascarar problema
- **Contexto:** risco formal do mapa — quando a quantidade não conforme no cliente é baixa, a tratativa fica apenas em Alerta da Qualidade, sem RNC completo.
- **Lição:** problema com volume pequeno pode reincidir e furar a meta de NC de Cliente = 0; a meta é contagem, não percentual.
- **Ação:** abrir RNC e causa raiz mesmo em NC de baixa quantidade quando há sinal de reincidência.

### [2026-06-03] Beneficiamento externo escapa do controle direto da Qualidade
- **Contexto:** risco formal — peças que passam por beneficiamento externo ficam fora do raio de inspeção direto.
- **Lição:** sem inspeção definida no retorno, defeito de terceiro entra na cadeia sem barreira.
- **Ação:** garantir inspeção de retorno do beneficiamento externo e usar IQF para cobrar o fornecedor.

*Atualizado: 2026-06-04*


## Links relacionados

- [[Qualidade]] · [[areas/MAPA|areas]]
