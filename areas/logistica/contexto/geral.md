---
tipo: nota
area: logistica
status: canonico
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [logistica, contexto, geral, kpi, sgk]
---

# Logística — contexto geral

> Fonte de verdade não-sensível da área de Logística da KAB. Tarifas nominais de
> transportadora e negociações em curso **não entram aqui** — vivem no cofre pessoal
> (`my-second-brain → 01-KAB/`).

## Função no negócio

Mover material e produto pela cadeia da KAB: recebimento de MP, disponibilização nos berços, expedição para fornecedores de beneficiamento, recebimento do beneficiamento e expedição do produto acabado ao cliente. Cuida ainda do plano de entrega (OTD) e da gestão de frete. É o processo mais recentemente formalizado da fábrica (Mapa de Processo SGK **rev 1**, aprovado 12/02/2025).

## Escopo

- **Expedição** de produto acabado ao cliente.
- **OTD (on-time delivery)** — cumprimento do plano de entrega acordado.
- **Gestão de frete** — cotação e contratação de transporte.
- **Embalagem / KLT** na interface com a Produção (caixas de papelão e KLT retornáveis).
- **Beneficiamento externo** — expedir e receber peças de fornecedores de usinagem/tratamento.

## Indicadores (KPIs formais)

| Indicador | Meta | Resp. | Período |
|---|---|---|---|
| Gasto de frete (% do faturamento) | ≤ 1,45% | Supervisora de Logística | Mensal |

> O mapa de processo traz **um único indicador formal**. Métricas como OTD são acompanhadas operacionalmente (ver `decisions.md` / daily), mas não estão formalizadas como meta no mapa rev 1. _(a confirmar)_

## Fluxo macro (SIPOC resumido)

1. **Pedido do cliente:** receber pedido → atualizar plano de entrega → lançar a venda no DBCorp.
2. **Monitoramento:** acompanhar os prazos acordados → atualizar o cliente por e-mail.
3. **Recebimento de MP:** receber matéria-prima → disponibilizar nos berços.
4. **Beneficiamento (saída):** expedir para fornecedor de beneficiamento externo.
5. **Beneficiamento (retorno):** receber o produto beneficiado → liberação da Qualidade.
6. **Expedição:** expedir produto acabado → atualizar o plano de entrega.
7. **Frete:** solicitar orçamento de transporte → cotação → contratar fornecedor.

## Procedimentos e ferramentas

- **Sistema:** DBCorp (lançamento de pedido de venda, plano de entrega).
- **Referenciados:** MQ-01 (Manual da Qualidade), ISO 9001 vigente, PR-04 (Vendas), IT-025 (lançamento de pedido de venda no DBCorp).

> Lista de procedimentos enxuta — provavelmente faltam PRs específicos da área, coerente com processo formalizado recentemente. _(a confirmar)_

## Riscos e oportunidades (do mapa de processo)

- ⚠️ **Risco:** coleta em terceiros mais de uma vez por semana (custo extra de frete).
- ⚠️ **Risco:** atraso de fornecedores (especialmente de MP).
- ⚠️ **Risco:** atraso na produção dos itens pendentes (cliente fica aguardando).
- 💡 **Oportunidade:** sistematizar o acompanhamento de datas de entrega e status (hoje manual/reativo).

*Atualizado: 2026-06-03 | Responsável: Supervisora de Logística*


## Links relacionados

- [[Logistica]] · [[areas/MAPA|areas]]
