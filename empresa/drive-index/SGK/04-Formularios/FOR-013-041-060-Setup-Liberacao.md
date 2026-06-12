---
tipo: drive-index
area: kab
categoria: sgk-formulario
fonte: drive
drive_ids: [1z7D4tpoBtkrPQah2jRg7GRJxEHp6_oPq, 1I_Lickmh6ujp49FVeZ-8o669oP6bQTjl, 10VpCbInalsfzvTn6vZY6C7_fYBe--mjd]
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/04 - Formulários/
modificado: 2025-01-27
indexado: 2026-05-20
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
codigos: [FOR-013, FOR-041, FOR-060]
tags: [sgk, formulario, for-013, for-041, for-060, setup, liberacao, qualidade, msa]
---

# FOR-013 + FOR-041 + FOR-060 — Trio de Setup/Liberação

**3 formulários complementares pra liberação de setup e instrumentos**

## Resumo executivo

3 formulários do **fluxo de liberação de setup** descrito no [[MAPA-PRODUCAO-2026]] (atividade 18-19): peça em setup → medições → liberação. Compõem o ritual de aprovação antes de iniciar produção em série. FOR-013 mede o setup mecânico (rotação motor, tempos, dimensional 3 peças). FOR-041 verifica que os instrumentos do operador (paquímetro principalmente) estão calibrados antes do uso. FOR-060 é teste específico de compressão/expansão/dureza (provavelmente prensa).

## FOR-013 — Liberação de Setup (Rev 03, jan/2025)

- **Drive ID**: 1z7D4tpoBtkrPQah2jRg7GRJxEHp6_oPq
- **Aba "Estampagem"**: liberação de setup de prensas/estampo
- **Parâmetros medidos**:
  - Tempo do avanço do extrator (OK/NOK)
  - Rotação média e em alta do motor
  - Tempo do avanço do punção primeiro (2x — duplicata?)
  - Tempo de falta de peças
  - **Dimensional em 3 peças**: diâmetro externo, diâmetro externo flange, etc
- **Quem usa**: operador no início do setup, responsável aprova
- Citado no [[MAPA-PRODUCAO-2026]] como FOR-013 "Registro de Medição para Liberação de Produção (Setup)"

## FOR-041 — Liberação de Instrumentos pra Produção (Rev 05, jan/2025)

- **Drive ID**: 1I_Lickmh6ujp49FVeZ-8o669oP6bQTjl
- **2 abas**: LIBERAÇÃO DE INSTR. PRODUÇÃO + COMENTÁRIOS
- **Foco**: validar **paquímetros** usando **bloco padrão** antes do uso
- **Bloco padrão dimensões**: INTERNO 20,00 · EXTERNO 35,91 · BASE 7,54 · BICO 7,54
- **Desvio máximo permitido**: 0,03 mm
- **Regra NOK**: operador segrega instrumento, avisa Líder, pega reserva
- **Conferência cruzada**: operador → Qualidade
- **Mais recente revisão**: Rev 05 (mais avançada que outros) — sinaliza FOR muito usado
- Citado no [[MAPA-QUALIDADE-2026]] como **FOR-041 "Liberação de Instrumentos para Produção"** (PR-05 Controle de Meios de Medição)

## FOR-060 — Testes de Liberação de Setup (Rev 01, nov/2024)

- **Drive ID**: 10VpCbInalsfzvTn6vZY6C7_fYBe--mjd
- **Template em branco** (~190 chars)
- **Parâmetros**: data, peça, OP, compressão/expansão (OK/NOK), dureza (OK/NOK), responsável
- **Provável uso**: setup de prensas/estampo com teste de propriedade mecânica
- Formulário complementar ao FOR-013

## Quando consultar

- Discussões sobre liberação de setup, ritmo de produção, problemas de início
- Análise de instrumentos descalibrados causando refugo (vínculo com Qualidade)
- Cruzar com [[MAPA-PRODUCAO-2026]] (Fernando) e [[MAPA-QUALIDADE-2026]] (Flávio)
- Quando KPI "setup médio" do daily-meeting estiver alto

## Relacionado

- [[MAPA-PRODUCAO-2026]] — Fernando, fluxo setup
- [[MAPA-QUALIDADE-2026]] — Flávio, calibração PR-05
- [[FOR-042-Controle-Informacao-Documentada]]
- skill-daily-meeting — aba Manutenção mostra setup médio

## Conteúdo bruto consolidado

<details>
<summary>FOR-013: 6k · FOR-041: 2.4k · FOR-060: 190 chars (template)</summary>

3 IDs: 1z7D4tpoBtkrPQah2jRg7GRJxEHp6_oPq · 1I_Lickmh6ujp49FVeZ-8o669oP6bQTjl · 10VpCbInalsfzvTn6vZY6C7_fYBe--mjd

</details>
