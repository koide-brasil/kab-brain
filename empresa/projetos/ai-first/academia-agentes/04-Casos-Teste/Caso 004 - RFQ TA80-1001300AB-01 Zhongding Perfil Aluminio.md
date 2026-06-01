---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "TA80-1001300AB-01"
cliente: Anhui Zhongding (大内芯 / inner core)
classe_agente: Atende com ressalva
classe_humano: Não atende (sem equipamento - usinagem+tempera+parceiro)
veredito_teste: MISS otimista
modo: sombra
---

# Caso 004 — TA80-1001300AB-01 · Zhongding · Perfil Alumínio (núcleo interno)

> Sombra (2026-06-01), só desenho + DBCorp. FOR-018 conferida depois.

## Intake
Cliente Anhui Zhongding (fabricante de borracha/anti-vibração) · PN TA80-1001300AB-01 (大内芯,
"núcleo interno grande") · desenho ✅ (folha 4/4) · material ✅ **alumínio 6061-T6** (GB/T 6892-2015,
extrudado) · perfil **70,4×56,4 mm**, peso 291 g · tol GB/T 1804 · volume/SOP ⚠️ não no desenho.
**Intake completo para análise técnica.**

## Parecer de Viabilidade Técnica
**Conclusão: Atende com ressalva.**

## Evidências
- **Matriz Peça×Processo (DBCorp):** KAB **corta e chanfra perfil/tubo de alumínio** (41 peças de
  alumínio; ex. rota CORTE→CHANFRO). Núcleo interno de coxim de borracha = exatamente o tipo de peça.
- **Material/faixa:** KAB processa **alumínio 6061** em bitolas grandes (cadastro tem tubo AL 6061
  63,50×60,30 e **85,00×81,80**) → o perfil 70,4×56,4 está **dentro da faixa**.
- **Histórico:** PN/cliente novos; sem similar exato, mas a família (perfil AL extrudado cortado +
  chanfrado) é recorrente.

## Análise técnica
- **Material:** 6061-T6 extrudado — padrão da casa para perfis de alumínio.
- **Geometria:** **seção extrudada complexa** (cavidades internas, furo central) — a complexidade
  vem da **extrusão (fornecida)**; a KAB faz **corte no comprimento + chanfro**.
- **Tolerâncias:** GB/T 1804 (gerais) — não apertadas; OK para corte+chanfro.
- **Operações:** CORTE (perfil) → CHANFRO. No portfólio.
- **Máquina candidata:** serras de corte (CMB/TR/SA) + chanfro. **Ressalva:** chanfrar perfil de
  **seção não-circular complexa** pode exigir **dispositivo/fixação dedicada** (não é tubo redondo).
- **Qualidade:** peça de 291 g, maior que a média da matriz (0,04–0,1 kg) → fixação/manuseio
  diferente; sem requisito especial visível além de GB/T.

## Riscos
- **Técnico:** médio — chanfro/acabamento em perfil de seção complexa (não redondo).
- **Qualidade:** médio — geometria de seção exige gabarito de inspeção próprio.
- **Produção/capacidade:** baixo-médio — corte OK; chanfro pode pedir dispositivo dedicado.
- **Fornecedor:** ⚠️ **perfil 6061 novo precisa ser sourçado/extrudado** (matriz de extrusão do
  cliente ou fornecedor de alumínio) — prazo e mínimo de extrusão a confirmar.

## Escalonamento
- **Validar com:** Jônatas (dispositivo de chanfro p/ seção complexa) + Compras (sourcing do perfil).
- **Pergunta objetiva:** "Conseguimos chanfrar essa seção extrudada complexa com nosso ferramental,
  ou precisa dispositivo novo? E quem extruda/fornece o perfil 6061 70,4×56,4?"

## Dados faltantes
- Volume anual e SOP. Fornecedor/origem do perfil extrudado. Detalhe do chanfro na seção complexa.

---
## Comparação vs FOR-018 (ground truth) — ❌ MISS (otimista demais)
KAB: "Já produzimos similar? **NÃO**"; **característica especial: "Usinagem após o corte"**; **TT:
Têmpera T6**; processo externo SIM (parceiros agregados); CEP pelo parceiro de beneficiamento;
investir em metrologia (tridimensional/perfilômetro). **Produção (Fernando): investimento em
máquina SIM — "NÃO TEMOS EQUIPAMENTO para produzir o item"; mão de obra SIM — "não temos".**
Volume 40.000/ano.
- **Agente: Atende com ressalva · KAB: Não atende (sem equipamento p/ usinagem + têmpera T6 + parceiro).** ❌
- **Causa-raiz:** tratei o "núcleo interno" como perfil de alumínio **só cortado+chanfrado**. Na
  verdade exige **usinagem após o corte** + **têmpera T6** — fora do cut+chanfro, e o Ergomat NÃO
  cobre. Subestimei a complexidade da peça (furo/feature central usinada) e fui otimista.
- **Lição:** quando a peça pede **usinagem além de chanfro/faceamento** ou **tratamento térmico**, o
  agente NÃO pode dar "atende com ressalva" (lê como sinal verde). Deve **escalar a capacidade de
  usinagem pro Fernando** e classificar no máximo "Provavelmente atende, exige validação" — ou
  "Dados insuficientes" — destacando a pergunta de equipamento.
