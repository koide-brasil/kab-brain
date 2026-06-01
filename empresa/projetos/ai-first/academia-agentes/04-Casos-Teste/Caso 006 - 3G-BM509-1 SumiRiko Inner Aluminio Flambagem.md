---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, calibracao, docling, flambagem]
rfq_id: "3G-BM509-1"
cliente: Sumitomo Riko
classe_agente: Atende com ressalva
classe_humano: (pendente FOR-018 oficial)
modo: calibracao
---

# Caso 006 — 3G-BM509-1 · SumiRiko · INNER (alumínio, flambagem 80 kN)

> Caso de **calibração** (2026-06-01) com desenho real posto pelo Erico no Inbox
> (`3F-BM509A-1 (ALUMINIO).pdf`). Testa o pipeline novo: extração Docling/visão + 3 checagens
> (`viab_drawing.py`). Não há FOR-018 oficial em mãos — o ground truth parcial é o próprio
> desenho + correções do Erico.

## Entrada (do desenho)
- Cliente Sumitomo Riko · Part **AV-C4939** · Dwg **3G-BM509-1** (ref AV-C4005) · grade S · protótipo (試作)
- Material **A6061-T6** (alumínio) · massa 75 g
- OD **Ø27 ±0,1** · furo escalonado Ø18 ±0,15 / Ø14 ±0,15 · comprimento 77 (−0,1/−0,5) · largura 7 ±0,2
- **Recartilhado/Knurling (TSZ1311G)** · chanfro C0,5 máx ambos lados · Ra 6,3 · geom. Φ0,4(B)/0,15
- Notas: sem aresta viva · **flambagem ≥ 80 kN** (Fig.1/2, δ@80kN ≤ 0,002×L) · ID-El ≤ 0,5

## Parecer do agente (viab_drawing)
- **Tolerâncias:** todas folgadas (≥ ±0,1) → OK.
- **Processo externo:** nenhum na peça. ✅ (a placa SKD11 HRC58-62 do Fig.2 é o **dispositivo de teste**, não a peça — não confundir com TT na peça).
- **Estrutural (flambagem):** 80 kN sobre seção ~318 mm² ≈ **252 MPa > escoamento A6061-T6 ~240 MPa** → **flag marginal**: tensão passa do escoamento → validar fisicamente.
- **Classe sugerida: Atende com ressalva** — geometria/tolerância OK, mas a **flambagem de 80 kN em A6061-T6 é o ponto crítico** (no limite). Escalar: confirmar liga/estado/seção efetiva (knurling) que garantam os 80 kN.

## Calibração do Erico
- "Peças realmente mais complexas, mas de modo geral a skill se saiu bem."
- Sem correção de valor neste desenho (a leitura bateu).

## Avaliação
- ✅ **Acertou o risco que importa:** flambagem 80 kN no limite do A6061-T6 — exatamente o que define a viabilidade desta peça.
- ✅ Não caiu na armadilha de flagar TT pela placa de teste SKD11.
- ⚠️ Check de flambagem é **tensão axial simplificada** (F/A) — serve de gate/alerta, não laudo. Para borderline, exige validação física (que o próprio desenho pede via Fig.1/2).

## Correção aplicada
- Módulo `viab_drawing.py` ganhou check de **flambagem** (carga axial kN × seção × escoamento).
- Regra: distinguir **placa/dispositivo de teste** (SKD11, fixture) do **material da peça**.

Links: [[Testes e Propriedades de Material KAB]] · [[Catalogo de Maquinas KAB]] · [[Caso 007 - BJ-092-2 SumiRiko Inner Aco Cementado]]
