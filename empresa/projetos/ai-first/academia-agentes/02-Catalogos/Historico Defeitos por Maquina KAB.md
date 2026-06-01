---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-01
tags: [kab, defeitos, refugo, qualidade, rfq, dbcorp]
fonte: DBCorp (bootstrap automático)
gerado_por: 92-Skills/kab/viabilidade-rfq/scripts/bootstrap_catalogos.py
---

# Histórico de Defeitos por Máquina KAB

> 🤖 **Bootstrap automático do DBCorp em 2026-06-01.** Refugo real por máquina, operação e motivo. Serve para o agente de RFQ **antecipar risco**: se a peça nova depende de uma característica que historicamente refuga, vira ressalva.
> Janela de histórico: últimos **24 meses**. Re-rode o script pra atualizar.
> O factual vem do ERP; o tácito (limitações finas, gargalos, try-out) é validado por
> Jônatas/Fernando/Flávio nas entrevistas — ver bloco "Coleta humana" no fim.

## Refugo por máquina × operação (24m)

Fonte: `TbApontamentoOrdemProducao` (exclui SETUP). Ordenado por % refugo.

| Máquina | Operação | Produzido | Refugado | Refugo % |
|---|---|---:|---:|---:|
| CHANFRO - 02 - NPK-250 | CHANFRO | 1,472,461 | 18,191 | 1.22 ⚠️ |
| ERGOMAT - 02 | USINAGEM | 113,446 | 1,037 | 0.91 |
| ERGOMAT - 01 | USINAGEM | 725,870 | 6,605 | 0.90 |
| ERGOMAT - 01 | INSPEÇÃO USINAGEM | 167,968 | 1,137 | 0.67 |
| CHANFRO - 01 - FA-100 | CHANFRO | 2,035,812 | 12,066 | 0.59 |
| ESTAMPARIA - 02 - VERTICAL | ESTAMPARIA | 2,024,552 | 9,273 | 0.46 |
| CHANFRO - 05 - NP-57 | CHANFRO | 2,753,941 | 12,681 | 0.46 |
| CHANFRO - 03 - NP-57 | CHANFRO | 2,639,058 | 10,598 | 0.40 |
| ERGOMAT - 02 | INSPEÇÃO USINAGEM | 39,752 | 159 | 0.40 |
| ESTAMPARIA - 01 - VERTICAL | ESTAMPARIA | 2,579,819 | 9,077 | 0.35 |
| CHANFRO - 04 - FA-100 | CHANFRO | 2,619,759 | 8,647 | 0.33 |
| CORTE - 01 - SA-90 | CHANFRO | 6,273 | 18 | 0.29 |
| CORTE - 03 - TR80 | CHANFRO | 3,620 | 2 | 0.06 |
| CORTE - 06 - CMB-75 | CORTE | 1,966,477 | 569 | 0.03 |
| CORTE - 03 - TR80 | CORTE | 2,377,760 | 516 | 0.02 |
| CORTE - 04 - TR-80 | CORTE | 2,793,929 | 569 | 0.02 |
| CORTE - 01 - SA-90 | CORTE | 1,444,598 | 117 | 0.01 |
| CORTE - 02 - SA-90 | CORTE | 1,757,109 | 114 | 0.01 |
| CHANFRO - 04 - FA-100 | CORTE | 13,532 | 0 | 0.00 |
| CHANFRO - 05 - NP-57 | CORTE | 4,852 | 0 | 0.00 |
| CORTE - 05 - CMB 75 | CORTE | 1,687,437 | 59 | 0.00 |

## Top motivos de refugo (24m)

Fonte: `TbMotivoRefugo` + `TbQuantidadeMotivoRefugo`. Quantidade total de peças refugadas por motivo.

| Motivo | Peças refugadas | Ocorrências |
|---|---:|---:|
| Comprimento Menor usi | 23,158 | 1,852 |
| Chanfro irregular | 7,656 | 806 |
| Amassado | 6,771 | 1,141 |
| Peças de Setup | 5,677 | 426 |
| Marca de faceamento | 5,100 | 357 |
| Ovalização | 4,732 | 650 |
| Comprimento Maior usi | 4,558 | 464 |
| Trinca | 3,507 | 297 |
| Batida | 3,158 | 871 |
| Quebra de pastilha | 2,548 | 163 |
| Ranhura | 1,832 | 306 |
| Vibração | 1,434 | 98 |
| Rebarba | 1,089 | 106 |
| Comprimento maior prensa | 916 | 64 |
| Giro na Castanha | 899 | 90 |
| Sem Chanfro | 643 | 107 |
| Comprimento menor prensa | 631 | 30 |
| Chanfro Invertido | 602 | 262 |
| Chanfro Ext. Maior | 570 | 32 |
| Outros | 563 | 34 |
| Peças para teste QA | 535 | 21 |
| Ø Externo Usinado Maior (rebaixo) | 447 | 49 |
| Faceamento faca (fino) | 432 | 39 |
| Ø Interno Menor | 418 | 8 |
| Comprimento Corte Menor | 399 | 57 |

## Motivos por operação (o que dá errado em cada processo)

Mapa direto pro RFQ: a peça nova passa por qual operação? Veja como ela costuma falhar.

**CORTE** — modos de falha mais comuns:

- Ovalização (475 pç)
- Comprimento Menor usi (195 pç)
- Ranhura (106 pç)
- Planicidade irregular (91 pç)
- Giro na Castanha (60 pç)
- Comprimento Corte Menor (59 pç)

**CHANFRO** — modos de falha mais comuns:

- Comprimento Menor usi (18,189 pç)
- Amassado (6,290 pç)
- Chanfro irregular (6,289 pç)
- Marca de faceamento (5,004 pç)
- Batida (2,570 pç)
- Quebra de pastilha (2,510 pç)

**ESTAMPARIA** — modos de falha mais comuns:

- Trinca (3,501 pç)
- Ovalização (3,267 pç)
- Chanfro irregular (1,313 pç)
- Comprimento maior prensa (916 pç)
- Comprimento menor prensa (631 pç)
- Peças de Setup (631 pç)

**USINAGEM** — modos de falha mais comuns:

- Comprimento Menor usi (3,710 pç)
- Comprimento Maior usi (1,621 pç)
- Ø Externo Usinado Maior (rebaixo) (420 pç)
- Batida (266 pç)
- Peças de Setup (251 pç)
- Primeira peça do corte (226 pç)

## Peças mais difíceis (maior refugo, vol ≥ 5.000 pç no período)

Fonte: `TbOrdemProducao`. Peças com refugo alto = candidatas a ressalva técnica em RFQ similar.

| Peça | Produzido | Refugado | Refugo % |
|---|---:|---:|---:|
| 07.050.0270 - BJ-092-1 | 197,712 | 8,208 | 3.99 |
| 3434460 - ANEL EXTERNO ALUM. - RDM ANT | 8,118 | 157 | 1.90 |
| 07.050.0230 - BL-040-2 | 98,865 | 781 | 0.78 |
| 07.050.0327 - BJ-036-1 | 734,960 | 3,835 | 0.52 |
| 208.0000072 - BL-020-2-1 | 36,792 | 136 | 0.37 |
| 07.050.0328 - BJ-036-2 | 712,832 | 2,346 | 0.33 |
| 07.050.0336 - BK-015A-1 | 435,612 | 1,316 | 0.30 |
| 3411130 - TUBO INTERNO AÇO - CARAMELLA | 205,942 | 493 | 0.24 |
| 3441350 - TUBO INTERNO ALUMINIO - TR 291 | 284,123 | 558 | 0.20 |
| 02.0036.00038 - BJ-051-1-1 | 12,636 | 19 | 0.15 |
| 40437200 - INSERTO INTERNO - MP1 TR N3 | 39,014 | 45 | 0.12 |
| 07.050.0332 - BJ-037-2 | 750,288 | 641 | 0.09 |
| 40304300-CC | 630,316 | 510 | 0.08 |
| 3439740 - INSERTO INTERNO TRR - 358 | 12,700 | 7 | 0.06 |
| 55116-5JL0A | 59,952 | 35 | 0.06 |
| 3430430 - ANEL EXTERNO AÇO - PT2 | 616,817 | 191 | 0.03 |
| 40383200-CC | 339,815 | 66 | 0.02 |
| 07.050.0079 - BJ-052-1 | 77,327 | 8 | 0.01 |
| 40434500 - INSERTO INTERNO - MP1 TR N4 | 35,516 | 3 | 0.01 |
| TUBO DE AÇO 47,8MM X 44,2MM  - BJ-035-1-CC | 1,423,993 | 8 | 0.00 |
| 3434660 - TUBO INTERNO ALUM - RDM POST | 43,127 | 1 | 0.00 |
| 07.050.0290 | 190,080 | 2 | 0.00 |
| 07.050.0325 - BJ-035-1 | 1,489,140 | 33 | 0.00 |
| 3441360 - ANEL EXTERNO ALUMINIO - TR 291 | 263,495 | 5 | 0.00 |

## Como o agente de RFQ usa este doc

1. Identifique as operações da peça nova (da Matriz Peça×Processo).
2. Para cada operação, leia os modos de falha históricos acima.
3. Se a peça nova **acentua** um modo de falha conhecido (ex.: chanfro apertado, parede fina, tolerância de comprimento estreita) → **ressalva técnica** no parecer, com o dado citado.
4. Se vai rodar na **CHANFRO-02 (NPK-250)** ou em **usinagem (Ergomat)** → atenção redobrada (máquinas de maior refugo histórico).

## Cruzamento com RNCs / Alertas do Drive (causa-raiz)

O DBCorp dá o **quanto** (refugo por máquina/motivo, acima). O **porquê** está nas RNCs internas (série RNC-I) e Alertas da Qualidade do Drive — já curados num cross-reference que liga máquina → defeito → causa-raiz documentada (ex.: SA90 / TR80 / CMB75 / prensa / Ergomat com caso real).

> 🔒 Esse cross-reference cita cliente e PN específicos → vive no **cofre** (erico-brain), não aqui:
> `01-KAB/Sensivel/Drive-Index/Academia-Agentes/Defeitos Internos por Maquina - RNCs e Alertas (cross DBCorp).md`.
> O agente de RFQ no laptop (Bruce) lê os dois; o agente compartilhável usa só este doc agregado.

Pendência humana (Flávio/Madora): confirmar causa-raiz dos outliers (NPK-250, usinagem) — máquina, ferramenta ou peça? E se já foi tratada ou segue aberta.

Links: [[Catálogo de Máquinas KAB]] · [[Matriz Peca Processo KAB]] · [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]] · [[kab-rnc-fluxo]]
