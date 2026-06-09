---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-09
tags: [kab, tolerancias, qualidade, rfq, coleta, metrologia]
---

# Biblioteca de Tolerâncias KAB

> Biblioteca para evitar que o agente "ache" que qualquer tolerância é possível. Máquina não lê argumento convincente; ela só entrega ou não entrega.

## Capacidade de processo por operação (fonte: Erico, 2026-06-01)

| Operação | Máquina | Precisão típica | Quando degrada |
|---|---|---|---|
| **Corte (comprimento)** | TR-80 / CMB-75 (serra circular) | **± 0,1 mm** | — |
| **Corte (comprimento)** | SA-90 (3 discos/facas) | **± 0,1 mm** | facas sem afiação → elevações maiores; parede > 3 mm (não é a máquina certa) |
| **Chanfro / faceamento** | NPK-250 / FA-100 / NP-57 | **± 0,05 mm** | **tubo ovalizado** ou tolerância muito apertada |

**Regra de bolso para o agente:**
- Tolerância de **comprimento de corte mais apertada que ± 0,1 mm** → no limite/fora do corte → ressalva.
- Tolerância de **chanfro/faceamento mais apertada que ± 0,05 mm** → exige try-out → ressalva.
- A peça **chega ao chanfro com ~1 mm de sobremetal** (o corte é grosseiro; a tolerância fina é dada no chanfro/usinagem, não no corte).
- **Ovalização do tubo é o maior inimigo da tolerância de chanfro** — tubo grande/parede fina (propenso a ovalizar) + chanfro apertado = combinação de risco alto.

## Por característica (preencher faixas com Flávio/Madora)

| Característica | Faixa tranquila | Exige validação | Fora da capacidade atual | Método de medição | Fonte / responsável |
|---|---|---|---|---|---|
| Diâmetro externo (MP aço/tubo) | **± 0,08 mm** (restringir no fornecedor) | < ± 0,08 mm | > Ø92 (fora do envelope) | micrômetro / tridimensional | Qualidade (Flávio, 08/06) |
| Diâmetro externo (MP alumínio) | **conforme desenho** (não se restringe) | — | fornecedor já pede folga 0,25→0,30/0,35 | micrômetro | Qualidade (Flávio, 08/06) |
| Diâmetro interno | a validar | a validar | a validar | paquímetro / projetor | Jônatas/Fernando/Qualidade |
| Comprimento | **± 0,1 mm (corte)** · chanfradeira ideal **≥ 0,15 mm** (décimo e meio) | < ± 0,1 mm | **< 0,05 mm (5 centésimos)** → acende alerta de risco | paquímetro | Produção / Qualidade (Flávio, 08/06) |
| Concentricidade | **0,2 mm** (obtida restringindo Ø em ± 0,08) | < 0,2 mm | depende de medição (tridimensional) | tridimensional / CMM | Qualidade (Flávio, 08/06) |
| Retilineidade | a validar | a validar | a validar | a validar | Qualidade |
| Chanfro / faceamento | **± 0,05 mm** | < ± 0,05 mm ou peça ovalizada | a validar | projetor de perfil | Produção/Qualidade |
| Rosca (De/Dp) | — | sempre (terceiro/Ergomat) | sem metrologia de rosca hoje | _investir (tridim./perfilômetro)_ | Qualidade |

## Tolerância de MP e sobremetal por material (fonte: Qualidade/Flávio, entrevista 08/06/2026)

| Material / contexto | Regra de tolerância / sobremetal | Observação |
|---|---|---|
| **Aço / tubo** (Ø externo da MP) | restringir a **± 0,08 mm** no fornecedor | melhora chanfro e concentricidade (cai p/ ~0,20) |
| **Alumínio** | **não se restringe** — conforme desenho | fornecedor já entrega com folga (0,25 → 0,30/0,35); não adianta apertar |
| **Maciço p/ Ergomat** | cotar **~0,5 a 1,0 mm de sobremetal** acima da tabela do fornecedor (tabela em polegada) | sobremetal em **mm, não em décimos** (lição aprendida) — evita vibração/marca na usinagem |
| **Comprimento na chanfradeira** | ideal **≥ 0,15 mm**; **< 0,05 mm = alerta** | abaixo de 5 centésimos a chanfradeira não segura |
| **Concentricidade** | alvo **0,2 mm** (desenho costuma pedir 0,3) | obtida via restrição de Ø ± 0,08 |

**Regra de material (Qualidade):** material **abaixo de SAE 1010** dá problema para a família **Outer** (KAB trabalha duas famílias: **Outer** e **Inner**) → **trabalhar de 1010 pra cima**. Atenção também ao **estado de fornecimento** (material **normalizado** oculto): caso real na peça **BL-048-1 (SumiRiko)** — estava normalizada sem o desenho pedir, foi removida ao descobrir. Referências do relato: cliente novo **CBV** e máquina de corte **SA-90**.

## Chanfro e comprimento por família (fonte: Jônatas/Ferramentaria, 08/06/2026)

A KAB trabalha duas famílias: **Inner** e **Outer**. Tolerâncias confortáveis na ótica da usinagem/chanfro:

| Característica | Confortável | Difícil / alerta |
|---|---|---|
| Comprimento **Inner** | **± 0,2 mm** (até ± 0,1 ok) | — |
| Comprimento **Outer** | **± 0,2 mm** | **± 0,1 = complicado** (corte preciso + risco de "sorrisinho"/marca no chanfro por ovalização) |
| **Dimensão do chanfro** | **0,5 a 1,0 mm** (0,4–0,5 dentro do padrão c/ qualidade) | muito apertado → concentricidade/ovalização; **raio no chanfro = nunca feito** (alto risco) |
| **Ângulo do chanfro** | **30° (padrão)** quando desenho não amarra (prensa 25–35°) | **45° tende ao erro** (lados desiguais 0,2×0,1 → parece fora); sem amarração → usar **range aberto ±10°** e registrar |

**Regra (Ferramentaria):** "livre de rebarba" no desenho = **não amarra chanfro** — **não adicionar chanfro/feature que não se sustenta em série** (caso SumiRiko: KAB pôs por conta própria e virou refém). Se adicionar por estética, amarrar com **range aberto** e anotar no histórico.

## Capacidade de MEDIÇÃO (metrologia) — o que a KAB consegue *verificar* (fonte: reunião de produção IRBAS, 2026-06-03)

> **Gate novo e crítico:** produzir ≠ verificar. Uma peça pode estar dentro da capacidade
> de processo e ainda assim ser **inviável hoje** porque a KAB não tem como **medir** a
> característica com confiança. Este gate é tão decisivo quanto o de processo.

| Meio de medição | Status | Serve para | NÃO serve para |
|---|---|---|---|
| Paquímetro / micrômetro | ✅ interno | cotas externas/internas grosseiras, comprimento | cota fina, forma, concentricidade |
| **Projetor de perfil (2D)** | ✅ interno, mas **não confiável p/ cota dimensional fina** | conferência visual rápida de contorno | **cota dimensional precisa** — caso IRBAS: projetor deu peça boa, tridimensional deu ~2 centésimos fora |
| Durômetro | ✅ interno | dureza | dimensional |
| **Tridimensional / CMM** | ⚠️ **terceirizado hoje** (Taubaté/SJC) | cota fina, forma, concentricidade, estria, validação de amostra | — (mas é **gargalo**: custo por medição + prazo; indisponível em feriado/fim de semana) |
| **CMM Mitutoyo (resolução 0,0001 mm)** | 🔜 **em aquisição (~60 dias)** — ver CAPEX | tudo acima, **internamente** | — |

**Regras-gate de metrologia para o agente:**
- Característica crítica que **só fecha em tridimensional/CMM** (concentricidade, estria,
  cota apertada de forma) → **hoje "Atende com ressalva (metrologia terceirizada — gargalo de
  prazo e custo)"**. Vira **"Atende"** quando a CMM Mitutoyo entrar em operação.
- **Projetor de perfil NÃO substitui CMM** para cota dimensional precisa (lição empírica
  IRBAS). Não classificar como "atende" só porque "tem projetor".
- Se a peça exige **controle 100%** de característica que só o tridimensional mede → hoje é
  **inviável em escala** (medição externa não escala). Cabe amostragem controlada + alerta.
- Sem meio de medição interno para a característica crítica → no mínimo **ressalva** +
  escalonar a **Flávio/Madora** (qualidade).

## Regras

- Se tolerância não estiver aqui ou em fonte oficial, classificar como `dados insuficientes` ou `exige validação`.
- Toda tolerância crítica precisa indicar método de medição.
- Requisitos de cliente prevalecem sobre regra genérica.

## Links relacionados
- [[Coleta - Flavio (Qualidade) - Analise de Viabilidade]] (fonte da atualização 08/06)
- [[Coleta - Jonatas (Ferramentaria) - Analise de Viabilidade]] (chanfro/ângulo/comprimento por família)
- [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]]
- [[Requisitos-DN-Automotivos]]
- [[Requisitos-SRK-SumiRiko]]
