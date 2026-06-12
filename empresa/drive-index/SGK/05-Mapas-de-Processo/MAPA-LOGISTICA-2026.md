---
tipo: drive-index
area: kab
categoria: sgk-mapas-processo
fonte: drive
drive_id: 1qt_UqMQ7grHiSzjdP6XlY2OARL2i6QGf
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/05 - Mapas de Processo/Mapa de Processos - LOGISTICA 2026.xlsx
modificado: 2026-04-09
indexado: 2026-05-20
hash_sha: 2773f66f72a4fc50
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
revisao: 1
gestor: Suelen Silvestrini
data_aprovacao: 2025-02-12
tags: [sgk, mapa-processo, logistica, suelen-silvestrini]
---

# Mapa de Processo — Logística 2026

**Rev. 1 · aprovado 2025-02-12 por Suelen Silvestrini**

## Resumo executivo

Mapa mais novo da KAB (rev 1), gestora **Suelen Silvestrini**. Formaliza o processo de logística que antes era informal. Cobre recebimento de MP, disponibilização nos berços, expedição pra fornecedores de beneficiamento, recebimento de beneficiamento e expedição de produto acabado. **1 indicador único**: gasto de frete ≤1,45% do faturamento. Capa do arquivo copiada da Produção sem ajuste (texto de "limites" fala de setup e produção — sinal de processo formalizado em copiar-colar e não totalmente revisado).

## Pontos-chave

- **Gestora**: Suelen Silvestrini (Supervisora de Logística)
- **Equipe**: Supervisora + Assistente de Logística
- **Meta única**: Frete gasto ≤ **1,45%** do faturamento (mensal, gestão Suelen)
- **Procedimentos**: MQ-01 + ISO 9001 (lista enxuta — provavelmente faltam PRs específicos)
- **⚠️ Anomalia**: campos "Início" e "Fim" do mapa copiados literalmente do mapa da Produção ("Realização de setup de máquinas...") — não fala de logística. Sinal de processo formalizado recém, sem polimento.
- **Fluxo SIPOC**: lançamento pedido venda (Suelen) → monitoramento prazos → cotação com fornecedores → ...
- **Operação física**: Célio é quem atua na expedição (memória do Bruce)

## Quando consultar

- Discussões sobre OTD, expedição, frete, beneficiamento externo
- Cruzar com skill-daily-meeting (aba Logística — OTD + Top clientes com entrega atrasada + transportadoras)
- Cruzar com kab-processo-logistica (memória sintética)
- Validar fluxo de envio pra beneficiamento (LW Usinagem, Hydro, etc)

## Indicadores formais

| Indicador | Meta | Resp. | Período |
|---|---|---|---|
| Frete gasto | ≤ 1,45% do faturamento | Suelen Silvestrini | Mensal |

## Procedimentos referenciados

- **MQ-01** — Manual da Qualidade
- **ISO 9001** versão vigente
- **PR-04** — Processo de Vendas (referenciado no SIPOC, lançamento pedido)
- **IT-025** — Lançamento de Pedido de Venda DBCorp

## Fluxo SIPOC macro

1. Receber pedido cliente → atualizar plano de entrega + lançar venda DBCorp (Suelen)
2. Monitorar prazos acordados → atualizar cliente por e-mail
3. Recebimento de MP → disponibilizar nos berços
4. Expedir pra fornecedor de beneficiamento (LW Usinagem, Hydro)
5. Receber produto de beneficiamento → liberação Qualidade
6. Expedir produto acabado → atualizar plano de entrega
7. Solicitar orçamento de transporte → cotação → fornecedor

## Riscos identificados

- Coleta em terceiros mais de uma vez na semana (custo extra de frete)
- Atraso de fornecedores (especialmente MP)
- Atraso na produção dos itens pendentes (cliente fica esperando)

## Oportunidades

- Sistemática de acompanhamento das datas de entrega e status (atualmente manual/reativo)

## Relacionado

- kab-processo-logistica — síntese anterior (memória do Bruce)
- skill-daily-meeting — aba Logística mostra OTD diário + transportadoras
- [[MAPA-PRODUCAO-2026]] — interdependência (Logística recebe produto acabado da Produção)
- [[MAPA-VENDAS-2026]] — interdependência (lançamento de pedido de venda)
- dbcorp-cadastros — fornecedores de transporte e beneficiamento
- contexto-kab

## Conteúdo bruto extraído

<details>
<summary>Estrutura do xlsx (clique pra expandir)</summary>

7 abas (estrutura padrão dos mapas):
- Mapa de Processo (⚠️ "Início" e "Fim" copiados da Produção)
- SIPOC (atividades de receb/expedição)
- Análise de Riscos (3 ameaças)
- SWOT
- Critérios oportunidades / ameaças
- Plano de Ações

File ID: 1qt_UqMQ7grHiSzjdP6XlY2OARL2i6QGf
Path Drive: DOCUMENTOS SGK/05 - Mapas de Processo/Mapa de Processos - LOGISTICA 2026.xlsx
Texto bruto disponível em staging temporário (não versionado).

</details>
