---
tipo: catalogo
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [academia-agentes, viabilidade-rfq, testes, material, tolerancia, processo-externo]
---

# Testes, Propriedades de Material e Processos Externos — Catálogo KAB

> Catálogo canônico pra a `viabilidade-rfq` responder os 4 pontos do Erico (2026-06-01):
> tolerância apertada? processo externo? quais testes? material × parede aguenta a carga?
> Operacionalizado em `scripts/viab_drawing.py` (extração Docling + 3 checagens-gate).

## 1. Política de tolerância (gate)

| Referência | Valor | Origem |
|---|---|---|
| Corte (comprimento) | **± 0,10 mm** | TR-80 / CMB-75 / SA-90 |
| Chanfro / faceamento | **± 0,05 mm** | chanfradeiras (degrada com ovalização) |
| **Folga pedida ao fornecedor de MP** | **± 0,08 mm** | KAB pede essa folga no tubo p/ ter margem de processo |

**Regra:** tolerância de cota que depende da MP (OD/ID/parede) **< ± 0,08** → sem folga →
ressalva (negociar com fornecedor ou inspeção 100%). Chanfro/faceamento **< ± 0,05** → try-out.
Comprimento **< ± 0,10** → apertado no corte. ≥ ± 0,10 → folgado.

> ⚠️ **Aplicar a folga ±0,08 SÓ a cotas que vêm da matéria-prima** (OD/ID/parede do tubo).
> Cota **usinada in-house** (furo após piercing, faceamento, bore por calibrador) usa a
> **capacidade de usinagem** (não a folga de MP) — senão superalarma. Ex. real (BJ-092-2):
> furo Ø16,2 +0,2/−0,05 controlado por calibrador-tampão Ø16,15 → é usinado, não MP → OK.
> (Calibração 2026-06-01 com Erico.)
>
> ⚠️ **Verificar a cota no desenho antes de gerar flag de "apertado".** Leitura por OCR/visão
> erra valor (ex. Ø20,6 lido como ±0,05 era ±0,2). Tolerância apertada = confirmar com o
> humano (skill é Nível-0). Idem raios: confirmar (R2,8 ≠ R22,8).

## 2. Regime de testes KAB (FOR-060 — Teste de Liberação de Setup)

A KAB valida cada setup/lote do componente metálico com (registro em FOR-060, lab Instron):

| Teste | O que mede | Como | Exemplo real |
|---|---|---|---|
| **Compressão** | deformação axial (mm) sob carga | prensa Instron | BJ-037-2: 0,05 mm (OK) |
| **Expansão** | % de aumento do Ø externo sob força | mandril Instron, **~30 kN** | BJ-036-2: Ø18,53→20,56 = **10,96%** @ 30 kN |
| **Dureza** | HV (Vickers) / HRC | durômetro | aço 150–200 HV; SCM435 HRC32-39 |

Os testes de **compressão/histerese/expansão do CONJUNTO (bucha metal+borracha)** são do
cliente (DN); a KAB garante o **componente metálico** (tubo) via expansão/compressão/dureza.
A carga/critério do teste vem da **spec de teste do cliente** (não do desenho do componente).

## 3. Propriedades de material (REFERÊNCIA — confirmar c/ ficha do fornecedor)

Valores típicos do estado de fornecimento, p/ usar como **gate**, não laudo:

| Material | Escoamento (MPa) | UTS (MPa) | Along. (%) | Tipo | Nota |
|---|---|---|---|---|---|
| **A6082-T6** | 260 | 310 | **9** | Al | ⚠️ along. baixo → expansão >~9% trinca |
| **A6061-T6** | 240 | 290 | 10 | Al | |
| A6063-T6 | 170 | 215 | 12 | Al | |
| **SCM435** | 400 | 560 | 20 | aço | recozido p/ conformar; temperado muda tudo |
| STKM13C | 380 | 470 | 15 | aço | |
| STKM15C | 480 | 580 | 12 | aço | |
| SAE1020 | 350 | 420 | 15 | aço | |
| E195 | 195 | 320 | 25 | aço | |

**Check de expansão:** expansão exigida **> alongamento** → FALHA (trinca); **> 70% do
alongamento** → ressalva (validar c/ corpo de prova). Ex.: peça em **A6082-T6** com expansão
exigida 11% → **não atende** (along. ~9%) → escalar p/ engenharia (mudar liga/estado ou reduzir expansão).

## 4. Processo externo → fornecedor parceiro

| Requisito no desenho/spec | Processo | Fornecedor |
|---|---|---|
| Zincagem / zincado / Zn-Cr / galvânico | Zincagem | **Ecoplating** |
| Têmpera / cementação / nitretação / dureza HRC-HV com valor | Tratamento Térmico | **Itarai** |

> Só conta como requisito se houver **valor/processo explícito** (ex.: "HRC32-39", "zincado
> 8 µm") — o rótulo vazio "HEAT TREATMENT"/"FINISH" aparece em todo desenho e **não** dispara.

## Links
- [[Biblioteca de Tolerancias KAB]] · [[Catalogo de Maquinas KAB]] · [[Matriz Peca Processo KAB]]
- Operacional: `scripts/viab_drawing.py` · Docling em `/home/eps/venvs/docling`
