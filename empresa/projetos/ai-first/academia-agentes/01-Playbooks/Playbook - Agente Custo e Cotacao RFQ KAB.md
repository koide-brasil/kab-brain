---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, ai-first, agente-cotacao, rfq, m2]
---

# Playbook — Agente Custo e Cotação RFQ KAB

## Missão

Gerar cálculo preliminar de cotação usando M2 v4, custo direto, MP decomposta, peça similar e política de aprovação.

## Fontes

- Skill `cotacao-kab` / M2 v4.
- Custeio mensal.
- SG&A / DRE.
- Receita de sucata.
- DBCorp read-only para peças similares.
- [[Playbook - Agente Viabilidade RFQ KAB]] para parecer técnico.

## Regra comercial vigente

Usar margem operacional alvo:
- vendedor pode aprovar se margem operacional alvo ≥10% sem ressalvas;
- Gabriel aprova entre 5% e 10% ou com ressalvas;
- Erico aprova abaixo de 5% ou exceções estratégicas.

Critério adicional do Erico:
- profit ≥30% **ou** profit ≥R$1,00/peça.

## Não pode

- enviar proposta ao cliente;
- escrever no DBCorp;
- esconder premissas;
- forçar target sem sinalizar risco.

## Links relacionados
- [[KAB AI First - Fluxo RFQ]]
- [[Regras de Escalonamento - Agentes RFQ KAB]]
