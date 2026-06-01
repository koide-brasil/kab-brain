---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-06-01
tags: [kab, tolerancias, qualidade, rfq, coleta]
---

# Biblioteca de Tolerâncias KAB

> Biblioteca para evitar que o agente "ache" que qualquer tolerância é possível. Máquina não lê argumento convincente; ela só entrega ou não entrega.

## Capacidade de processo por operação (fonte: Erico, 2026-06-01)

| Operação | Máquina | Precisão típica | Quando degrada |
|---|---|---|---|
| **Corte (comprimento)** | TR-80 / CMB-75 (serra circular) | **± 0,1 mm** | — |
| **Corte (comprimento)** | SA-90 (disco/faca) | _não especificado_ | parede > 3 mm (não é a máquina certa) |
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

## Regras

- Se tolerância não estiver aqui ou em fonte oficial, classificar como `dados insuficientes` ou `exige validação`.
- Toda tolerância crítica precisa indicar método de medição.
- Requisitos de cliente prevalecem sobre regra genérica.

## Links relacionados
- [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]]
- [[Requisitos-DN-Automotivos]]
- [[Requisitos-SRK-SumiRiko]]
