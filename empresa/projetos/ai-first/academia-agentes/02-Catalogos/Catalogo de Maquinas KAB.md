---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-09
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

## Capacidades reais e envelope dimensional (validação humana — NÃO sobrescrever)

> O DBCorp dá volume/refugo, mas **não guarda o envelope dimensional** (Ø máx, parede, comp.) nem o que cada máquina faz de fato. Bloco mantido à mão (fonte: Erico, 2026-06-01). **É a fonte principal pro agente julgar se a geometria de um RFQ cabe na fábrica.**

### Corte (serras) — Ø externo máximo, tipo de corte e precisão

| Máquina | Ø ext. máx | Tipo de corte | Precisão | Uso típico |
|---|---|---|---|---|
| **SA-90** | **Ø92** | 3 discos/facas circulam e avançam | **± 0,1 mm** | **parede fina ≤ 3 mm** |
| **TR-80** | **Ø80** | serra circular | **± 0,1 mm** | **parede mais grossa** |
| **CMB-75** | **Ø75** | serra circular | **± 0,1 mm** | **parede mais grossa** |

- **Alumínio:** TR-80 e CMB-75 **não são ideais** p/ alumínio (rotação máx ~280 RPM), mas a KAB **consegue cortar alguns itens de alumínio** nelas. SA-90 é a de maior Ø (até Ø92).
- **Precisão de corte (comprimento): ± 0,1 mm** (as três). RFQ com tolerância de comprimento **mais apertada que ± 0,1 mm** → ressalva (mas a tolerância fina é dada no chanfro, não no corte).
- **Particularidade da SA-90:** os 3 discos **circulam ao redor da peça e avançam** → o corte **não sai reto** e gera **elevações nas extremidades**. Por isso a peça cortada na SA-90 sai com **~1,5 mm de sobremetal** (vs ~1 mm das serras) pra essas elevações serem totalmente removidas no chanfro. **Conforme as facas perdem afiação, as elevações aumentam** → mais sobremetal/refugo. Implicação: peça de parede fina (SA-90) tem **rendimento de material um pouco pior** e é sensível à manutenção das facas.

### Chanfro (chanfradeiras) — frota real = **5 máquinas** (2 FA-100, 1 NPK-250, 2 NP-57)

> O ERP lista um 6º centro "CHANFRO-06" **sem modelo e sem apontamento** — é fantasma/inativo. A frota real são **5 chanfradeiras**.

| Máquina | Ø ext. máx | Comp. máx | Precisão | Produtividade-alvo | Observação |
|---|---|---|---|---|---|
| **NPK-250** (×1) | **Ø92** | 120 mm | ± 0,05 mm | ~300 pç/h (mais se bem ajustada) | tubos **maiores → mais lenta** |
| **FA-100** (×2) | **Ø80** | 120 mm | ± 0,05 mm | até **600 pç/h** | |
| **NP-57** (×2) | **Ø47** (talvez Ø50) | 120 mm | ± 0,05 mm | até **600 pç/h** | tubos menores |

- **Precisão de chanfro/faceamento: ± 0,05 mm** — **mas depende da condição da peça**: tubo **ovalizado** ou tolerância muito apertada derrubam essa capacidade. RFQ com tolerância de chanfro/comprimento usinado **mais apertada que ± 0,05 mm** → ressalva (try-out obrigatório).

> ⚠️ **Produtividade real está ABAIXO dos alvos nominais** (verificado no DBCorp, 2026-06-01): FA-100/NP-57 rodam ~350–470 pç/h (vs alvo 600); NPK-250 ~250–310 (bate o alvo ~300). A **velocidade quando rodando é estável** ao longo dos anos — o que caiu foi **volume/utilização**: pico 8,4 mi pç (2021) → fundo 5,0 mi (2024, −40%), horas-máq 18,6k→13,4k, recup. parcial 2025. "Produzimos mais devagar" = menos volume/horas por demanda baixa, não ciclo mais lento.

### Como a chanfradeira trabalha (e onde refuga)

1. O tubo chega cortado com sobremetal (**~1 mm** vindo das serras TR-80/CMB-75; **~1,5 mm** vindo da SA-90, por causa das elevações de extremidade dos discos).
2. Entra na chanfradeira **fixo no meio**; **2 motores (um de cada lado)** com cabeçotes montados pra aquela peça, **3 pastilhas cada** (faceamento + chanfro interno + chanfro externo).
3. Os cabeçotes **rotacionam (rotação controlada)** e **avançam (avanço controlado)**, usinando **os dois lados simultaneamente**.
- **Maior dificuldade = chanfro irregular por OVALIZAÇÃO do tubo** (e/ou tolerância de chanfro muito apertada): tubo ovalizado ou tol. estreita → difícil manter as tolerâncias. **Isto explica o refugo:** *chanfro irregular* e *ovalização* são top motivos no DBCorp, e a **NPK-250 é a de maior refugo (1,22%) justamente por trabalhar os tubos maiores (Ø92), mais sujeitos a ovalização.** → Em RFQ com **tolerância de chanfro apertada** ou **tubo grande/parede fina** (propenso a ovalizar) = **ressalva técnica**.

### Seleção de chanfradeira por família de peça (fonte: Jônatas/Ferramentaria, 08/06/2026)

A KAB trabalha duas famílias de peça: **Inner** e **Outer**. Regra prática de alocação:

| Tipo de peça | Chanfradeira preferencial | Motivo |
|---|---|---|
| **Inner** (maioria) | **NP-57** | vai bem nos inners (tubos menores, Ø≤47) |
| **Outer** | **FA-100** | família "alta" |
| **Diâmetro bem maior** | **NPK-250** | Ø grande (até Ø92) — mais lenta e maior refugo por ovalização |
| **Serrilhado / recartilho** | **FA-100 linha 1** | **única com lubrificação** → dedicada ao serrilhado |

- Seleção segue o **manual da máquina**. A mesma tolerância de comprimento é garantida na NP-57 e na FA-100.
- **Peça curta** → compensar com **anel extensivo** (geometria do cabeçote).
- **Cabeçote dedicado é o ideal** (menos setup, mais conformidade); decisão de dedicar/comprar = **pelo volume** (comercial). Ver [[Coleta - Jonatas (Ferramentaria) - Analise de Viabilidade]].

### Usinagem e terceirização

- **Ergomat TNG-32 (usinagem):** **tornea, rosqueia e fura barra maciça** (ex.: adaptador filtro 12L14, rosca M18×1,5 — FOR-018 RFQ 40001331). **Limitação:** garante chanfro interno de **um lado só**. Rosca nova → investir em ferramental; **metrologia de rosca** (De/Dp) não existe hoje (precisa tridimensional/perfilômetro/rugosímetro).
- **Path LW Usinagem (parceiro, FornecId 38):** **perfil de alumínio não-tubular** e usinagem complexa → **LW Usinagem**. Custo entra na **linha LW da cotação** (modelo M1: LW, CASTEL, WINOA, ECOPLATING, ITARAÌ, LIMMAR). Ex. reais: Zhongding TA60-1001300AC R$ 1,35/pç, TA60-1001400BC R$ 3,70/pç. → Peça desse tipo = **"Atende via LW"**, NÃO "Não atende". FOR-018 com Fernando "não temos equipamento" = visão só-in-house → checar path LW antes.
- **Maciço:** a KAB **estoca barra maciça 12L14** (Ø18,15) — material de peça torneada não é gargalo.
- **Processos que NEM a KAB NEM a rede de parceiros faz** (→ "Não atende" legítimo): fundição, forjaria, embutimento profundo, extrusão (compra perfil extrudado, não extruda).

## Resumo da frota (para pitch de capacidade)

- **Corte (serras) — Ø máx Ø92 (SA-90) / Ø80 (TR-80) / Ø75 (CMB-75):** 6 máquina(s)
- **Chanfro (chanfradeiras) — Ø máx Ø92 (NPK-250) / Ø80 (FA-100) / Ø47 (NP-57):** 5 máquina(s)
- **Estamparia (prensas verticais):** 2 máquina(s)
- **Usinagem (células Ergomat):** 2 máquina(s)
- **Ø externo máximo da fábrica: Ø92** (corte SA-90 + chanfro NPK-250). Peça com tubo acima de Ø92 → fora do envelope atual.

> ⚠️ Usar em pitch comercial só como capacidade **nominal expansível** (turnos), nunca como dado auditável (Run@Rate/PPAP exigem medição real). Ver [[kab-pitch-capacidade-comercial]].

## Coleta humana (validar com Jônatas/Fernando)

O DBCorp dá o **factual** (que máquina existe, quanto roda, quanto refuga). Falta o **tácito**:

- Faixa dimensional real de cada máquina (Ø min/max, comprimento min/max) — ERP não guarda.
- Tolerâncias tranquilas vs. as que exigem try-out.
- Que peça cada máquina faz bem, faz com dor de cabeça, ou não deve fazer.
- Qual é o gargalo hoje e em que condição o setup precisa de liberação formal.
- Por que a **CHANFRO-02 (NPK-250)** refuga mais que as demais chanfradeiras (ver doc de defeitos).

Links: [[Roteiro Entrevista - Jonatas - Maquinas e Ferramental]] · [[Roteiro Entrevista - Fernando - Producao e Capacidade]] · [[Matriz Peca Processo KAB]] · [[Historico Defeitos por Maquina KAB]]
