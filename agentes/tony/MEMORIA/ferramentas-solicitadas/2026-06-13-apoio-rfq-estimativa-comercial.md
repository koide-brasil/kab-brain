---
tipo: ferramenta-solicitada
status: proposta
solicitante: tony
area: vendas
criado: 2026-06-13
atualizado: 2026-06-13
sensibilidade: media
tags: [tony, ferramenta-solicitada, rfq, vendas]
---

# Ferramenta solicitada — apoio controlado a RFQ e estimativa comercial

Referência de escopo: [[SOUL]] e [[USERS]].

## Pedido original

Josielen pediu estimativa de preço para itens do RFQ 013-26 BYD usando desenhos/referências no Drive e depois solicitou apresentação com os detalhes.

## Resposta que seria ruim sem a ferramenta

Entregar um preço aparentemente preciso sem extração confiável de desenho, material, dimensões, processo, premissas de custo e margem. Isso criaria risco comercial e técnico.

## Ferramenta/integração necessária

Rotina assistida para RFQs com:
- leitura/extração controlada de PDFs/desenhos e arquivos do Drive;
- checklist de premissas técnicas e comerciais;
- vínculo com bases permitidas de custo/capacidade quando autorizadas;
- geração de apresentação KAB com premissas e lacunas.

## Motivo operacional

Vendas precisa responder RFQs com rapidez, mas o Tony deve distinguir estimativa fundamentada de chute. A ferramenta reduziria erro, padronizaria premissas e deixaria rastreabilidade.

## Risco e mitigação

- Risco comercial: preço errado ou premissa implícita. Mitigação: sempre declarar premissas e nível de confiança.
- Risco de confidencialidade: desenhos/dados de cliente. Mitigação: restringir saída a Vendas/Gabriel/Josielen/Érico conforme escopo.
- Risco técnico: OCR/leitura de desenho falhar. Mitigação: exigir validação humana quando a extração for incerta.

## Escopo pedido

Proposta inicial: rotina recorrente de apoio a RFQ comercial, sem escrita em DBCorp/RD Station/RHiD e sem alteração de arquivos de cliente. Pode começar como checklist + template de apresentação antes de qualquer automação maior.

## Aprovador necessário

- Érico/Bruce

## Decisão

- pendente

## Links relacionados

- [[SOUL]]
- [[USERS]]
