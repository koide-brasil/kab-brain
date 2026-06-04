---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-03
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
| Diâmetro externo | a validar | a validar | > Ø92 (fora do envelope) | paquímetro / micrômetro | Jônatas/Fernando/Qualidade |
| Diâmetro interno | a validar | a validar | a validar | paquímetro / projetor | Jônatas/Fernando/Qualidade |
| Comprimento | **± 0,1 mm (corte)** | < ± 0,1 mm | a validar | paquímetro | Produção |
| Concentricidade | a validar | a validar | a validar | a validar | Qualidade |
| Retilineidade | a validar | a validar | a validar | a validar | Qualidade |
| Chanfro / faceamento | **± 0,05 mm** | < ± 0,05 mm ou peça ovalizada | a validar | projetor de perfil | Produção/Qualidade |
| Rosca (De/Dp) | — | sempre (terceiro/Ergomat) | sem metrologia de rosca hoje | _investir (tridim./perfilômetro)_ | Qualidade |

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
- [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]]
- [[Requisitos-DN-Automotivos]]
- [[Requisitos-SRK-SumiRiko]]
