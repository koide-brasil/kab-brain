---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-01
tags: [kab, maquinas, capacidade, rfq, dbcorp]
fonte: DBCorp (bootstrap automático)
gerado_por: 92-Skills/kab/viabilidade-rfq/scripts/bootstrap_catalogos.py
---

# Catálogo de Máquinas KAB

> 🤖 **Bootstrap automático do DBCorp em 2026-06-01.** Frota física de produção (recursos do ERP), capacidade nominal e desempenho real (volume produzido + % refugo) por máquina.
> Janela de histórico: últimos **24 meses**. Re-rode o script pra atualizar.
> O factual vem do ERP; o tácito (limitações finas, gargalos, try-out) é validado por
> Jônatas/Fernando/Flávio nas entrevistas — ver bloco "Coleta humana" no fim.

## Frota física — recursos de produção

Uma linha por máquina real cadastrada no DBCorp (`TbRecursoProducao`), com a operação que mais roda nela, volume e refugo dos últimos 24 meses (`TbApontamentoOrdemProducao`). O modelo do equipamento está no próprio nome do recurso.

| Máquina (recurso) | Operação principal | Volume 24m | Refugo % | OPs | Modelo |
|---|---|---:|---:|---:|---|
| CHANFRO - 01 - FA-100 | CHANFRO | 2,037,242 | 0.59 | 636 | FA-100 |
| CHANFRO - 02 - NPK-250 | CHANFRO | 1,472,461 | 1.22 | 453 | NPK-250 |
| CHANFRO - 03 - NP-57 | CHANFRO | 2,639,058 | 0.40 | 580 | NP-57 |
| CHANFRO - 04 - FA-100 | CHANFRO | 2,619,759 | 0.33 | 780 | FA-100 |
| CHANFRO - 05 - NP-57 | CHANFRO | 2,753,941 | 0.46 | 611 | NP-57 |
| CHANFRO - 06 | _sem apontamento no período_ | — | — | — | — |
| CORTE - 01 - SA-90 | CORTE | 1,445,395 | 0.01 | 443 | SA-90 |
| CORTE - 02 - SA-90 | CORTE | 1,757,109 | 0.01 | 525 | SA-90 |
| CORTE - 03 - TR80 | CORTE | 2,377,760 | 0.02 | 624 | TR80 |
| CORTE - 04 - TR-80 | CORTE | 2,793,929 | 0.02 | 815 | TR-80 |
| CORTE - 05 - CMB 75 | CORTE | 1,687,437 | 0.00 | 411 | CMB 75 |
| CORTE - 06 - CMB-75 | CORTE | 1,966,477 | 0.03 | 360 | CMB-75 |
| ERGOMAT - 01 | USINAGEM | 725,870 | 0.90 | 268 | — |
| ERGOMAT - 02 | USINAGEM | 113,446 | 0.91 | 44 | — |
| ESTAMPARIA - 01 - VERTICAL | ESTAMPARIA | 2,579,819 | 0.35 | 829 | VERTICAL |
| ESTAMPARIA - 02 - VERTICAL | ESTAMPARIA | 2,024,552 | 0.46 | 618 | VERTICAL |

## Capacidade nominal por centro de trabalho

Fonte: `TbCentroTrabalho` (centros ativos). Capacidade em horas/semana cadastrada no ERP.

| Centro | Máquinas | Pessoas | Cap. h/sem | Eficiência |
|---|---:|---:|---:|---:|
| CORTE 01 | 0 | 1 | 500 | 100% |
| CORTE 02 | 1 | 1 | 400 | 100% |
| CORTE 03 | 1 | 1 | 400 | 100% |
| CORTE 04 | 1 | 1 | 400 | 100% |
| CORTE 05 | 1 | 1 | 400 | 100% |
| CORTE 06 | 1 | 1 | 400 | 100% |
| CHANFRO 01 | 1 | 1 | 400 | 100% |
| CHANFRO 02 | 1 | 1 | 400 | 100% |
| CHANFRO 03 | 1 | 1 | 400 | 100% |
| CHANFRO 04 | 1 | 1 | 400 | 100% |
| CHANFRO 05 | 1 | 1 | 400 | 100% |
| CHANFRO 06 | 1 | 1 | 400 | 100% |
| ESTAMPARIA 01 | 1 | 1 | 400 | 100% |
| ESTAMPARIA 02 | 1 | 1 | 400 | 100% |
| ESTAMPARIA 03 | 1 | 1 | 400 | 100% |
| ERGOMAT - 01 | 1 | 1 | 144 | 100% |
| ERGOMAT - 02 | 1 | 1 | 144 | 100% |
| LINHA-01 | 1 | 1 | 400 | 100% |
| LINHA-02 | 1 | 1 | 350 | 100% |
| LINHA-03 | 1 | 1 | 0 | 100% |
| LINHA-04 | 1 | 1 | 0 | 100% |
| LINHA-05 | 1 | 1 | 0 | 100% |
| LINHA-06 | 1 | 1 | 0 | 100% |

## Capacidades conhecidas além do ERP (validação humana — NÃO sobrescrever)

> O DBCorp só registra a operação genérica "USINAGEM". O que o **Ergomat** realmente faz vai além disso e **não está no ERP** — não confundir "não está no ERP" com "a fábrica não consegue". Bloco mantido à mão a partir de FOR-018 reais; expandir com Jônatas/Fernando.

- **Ergomat TNG-32 (usinagem):** **tornea, rosqueia e fura barra maciça** (ex.: adaptador de filtro 12L14, rosca M18×1,5 — FOR-018 RFQ 40001331). **Limitação conhecida:** garante precisão do **chanfro interno de apenas um dos lados**. Rosca nova pode exigir **investimento em ferramental** e a **metrologia de rosca** (De/Dp) não existe hoje — exige investir em tridimensional/perfilômetro/rugosímetro.
- **Maciço:** a KAB **estoca barra maciça 12L14** (ex.: Ø18,15) — material de peça torneada não é gargalo; o gargalo costuma ser ferramental/metrologia, não a capacidade-máquina.
- **Path LW Usinagem (parceiro, FornecId 38):** **perfil de alumínio não-tubular** e **usinagem mais complexa** (furo/feature/torneamento) vão pra **LW Usinagem** — é o caminho padrão da KAB pra usinagem fora do core. O custo entra na **linha LW da cotação** (modelo M1 tem bloco de terceirização: LW, CASTEL, WINOA, ECOPLATING, ITARAÌ, LIMMAR). Exemplos reais: Zhongding TA60-1001300AC R$ 1,35/pç, TA60-1001400BC R$ 3,70/pç. → Peça desse tipo = **"Atende via LW"**, NÃO "Não atende". Quando a FOR-018 traz Fernando "não temos equipamento", é a visão só-in-house — checar o path LW antes de concluir. Ver `LW Usinagem` em Fornecedores.
- **Processos que NEM a KAB NEM a rede de parceiros faz** (→ "Não atende" legítimo): fundição, forjaria, embutimento profundo, extrusão (a KAB compra perfil extrudado, não extruda).

## Resumo da frota (para pitch de capacidade)

- **Corte (serras):** 6 máquina(s)
- **Chanfro (chanfradeiras):** 6 máquina(s)
- **Estamparia (prensas verticais):** 2 máquina(s)
- **Usinagem (células Ergomat):** 2 máquina(s)

> ⚠️ Usar em pitch comercial só como capacidade **nominal expansível** (turnos), nunca como dado auditável (Run@Rate/PPAP exigem medição real). Ver [[kab-pitch-capacidade-comercial]].

## Coleta humana (validar com Jônatas/Fernando)

O DBCorp dá o **factual** (que máquina existe, quanto roda, quanto refuga). Falta o **tácito**:

- Faixa dimensional real de cada máquina (Ø min/max, comprimento min/max) — ERP não guarda.
- Tolerâncias tranquilas vs. as que exigem try-out.
- Que peça cada máquina faz bem, faz com dor de cabeça, ou não deve fazer.
- Qual é o gargalo hoje e em que condição o setup precisa de liberação formal.
- Por que a **CHANFRO-02 (NPK-250)** refuga mais que as demais chanfradeiras (ver doc de defeitos).

Links: [[Roteiro Entrevista - Jonatas - Maquinas e Ferramental]] · [[Roteiro Entrevista - Fernando - Producao e Capacidade]] · [[Matriz Peca Processo KAB]] · [[Historico Defeitos por Maquina KAB]]
