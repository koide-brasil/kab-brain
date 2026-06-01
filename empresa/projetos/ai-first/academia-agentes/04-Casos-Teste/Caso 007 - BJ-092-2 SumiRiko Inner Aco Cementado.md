---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, calibracao, docling, cementacao, tolerancia]
rfq_id: "BJ-092-2"
cliente: SumiRiko do Brasil
classe_agente: Atende com ressalva
classe_humano: (pendente FOR-018 oficial)
modo: calibracao
---

# Caso 007 — BJ-092-2 · SumiRiko do Brasil · INNER (aço forjado/cementado)

> Caso de **calibração** (2026-06-01) com desenho real do Inbox (`BJ-092-2.pdf`). Gerou 2
> correções de calibração do Erico — valiosas pro gate de tolerância e pra leitura.

## Entrada (do desenho)
- Cliente SumiRiko do Brasil · Part **BJ-092-2** (proto final TJ-205 / 3G-BA289-2) · grade F · "FOR PLANNING" (26-out-2017)
- Material **SWCH25K** (aço recalque a frio, **forjado**) · massa 116 g
- Diâmetros escalonados: Ø16,2 (+0,2/−0,05) · **Ø20,6 ±0,2** · Ø23 ±0,15 · Ø26 ±0,1 · Ø31,4 ±0,2 · comprimento 50 (−0,05/−0,5)
- Raios: **4× R6 ±0,5 · R12,5 ±0,5 · R3,8 · R2,8** · forging R · geom Φ0,3(A)/0,1/0,2
- Notas: rebarba ≤0,2 · **cementação + têmpera + revenido (TSH5200G), camada 0,3 mm, dureza sup. Hv 550–850** · **flambagem ≥ 119,2 kN** (δ ≤ 0,099) · calibrador-tampão Ø16,15 +0,01/0 deve passar · **usinar após piercing**

## Parecer do agente (viab_drawing)
- **Processo externo:** **Tratamento Térmico (cementação) → Itarai** ✅
- **Estrutural (flambagem):** 119,2 kN sobre seção ~568 mm² ≈ **210 MPa « escoamento SWCH25K ~360 MPa** → **OK** ✅
- **Processo KAB:** não é só corte+chanfro — **forjado + piercing + usinagem** (operação secundária; ferramental novo → Jônatas).
- **Tolerâncias (1ª leitura, ERRADA):** flagou Ø20,6 e Ø16,2 como ±0,05 → RESSALVA.
- **Classe: Atende com ressalva** (cementação Itarai + usinagem/piercing + ferramental).

## Calibração do Erico (2 correções)
1. **Ø20,6 é ±0,2, não ±0,05** — erro de leitura (visão). Com ±0,2 → folgado, sem ressalva.
2. **Raios: 4× R6 ±0,5, R12,5 ±0,5, R3,8, R2,8** (eu li R22,8 → era R2,8).
- "De modo geral foi bem, precisamos calibrar um pouco mais."

## Avaliação
- ✅ **Acertou:** cementação → Itarai; estrutural OK; identificou que é peça complexa (forjada, piercing+usinagem), não tubo simples.
- ❌ **Errou (não-crítico):** leitura de valor (Ø20,6) → falso RESSALVA; e o gate de tolerância aplicou folga-MP em **furo usinado** (Ø16,2 controlado por calibrador) que não é MP-driven.
- **Causa-raiz:** (a) leitura por visão/OCR erra valor de cota — confirmar antes de flag; (b) gate ±0,08 estava aplicando a TODA cota, inclusive **usinada in-house**.

## Correções aplicadas (catálogo)
- **Folga de MP ±0,08 só p/ cota de matéria-prima** (OD/parede do tubo); cota usinada in-house (furo pós-piercing, calibrador, faceamento) → capacidade de usinagem.
- **Confirmar cota apertada/raio no desenho antes de gerar flag** (skill é Nível-0, humano valida).
- Registrado em [[Testes e Propriedades de Material KAB]].

Links: [[Testes e Propriedades de Material KAB]] · [[Caso 006 - 3G-BM509-1 SumiRiko Inner Aluminio Flambagem]]
