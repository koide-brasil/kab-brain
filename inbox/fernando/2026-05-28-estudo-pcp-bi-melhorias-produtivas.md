---
tipo: nota
area: producao
status: inbox
criado: 2026-05-28
atualizado: 2026-05-28
autor: fernando
tags: [pcp, bi, drive, producao, melhorias]
---

# Estudo de arquivos PCP/BI para melhorias produtivas

Fernando pediu para estudar, arquivo por arquivo, a pasta do Drive `GERAL / Marcelo / Desenvolvimento`, entendendo os conteúdos junto com ele para usar em melhorias no processo produtivo.

## Contexto da pasta

Pasta analisada no Google Drive:

- `GERAL / Marcelo / Desenvolvimento`
- Dono observado: M Gois
- Conteúdo identificado inicialmente: subpastas e arquivos relacionados a Power BI, PCP, reunião "Bom Dia", vendas DBCorp, faturamento, pedidos, produtos e relatórios auxiliares.

Subpastas principais observadas:

- `Arquivos Bom Dia`
- `BI PCP BASE VENDAS DBCORP`
- `Instrução de Trabalho PCP`

Arquivos diretos relevantes observados:

- `Bom dia_Flavio.pbix`
- `Bom dia - ERGOMAT.pbix`
- `Bom dia Local.pbix`
- `Bom dia Local - Comercial.pbix`
- `2023.xlsx`
- `Faturamento Mensal.xlsx`
- `Pedidos de Venda.xlsx`
- `Produto.xlsx`
- `RptRecebimentoNotaFiscalAnaliticoFinanceiro.xls`
- `Caminho.txt`

## Arquivo já estudado: Caminho.txt

Conteúdo integral extraído:

```text
Caminho PC MADORA 

PASTA ARQUIVOS BOM DIA: C:\Users\KOIDE\Desktop\Arquivos Bom Dia
PASTA ENTREGAS: C:\Users\KOIDE\Desktop\Arquivos Bom Dia\Entregas
PASTA XML: C:\Users\KOIDE\Desktop\Arquivos Bom Dia\XML
```

Leitura inicial:

- Nota de referência de caminhos locais no computador da Madora.
- Indica que `Arquivos Bom Dia`, `Entregas` e `XML` eram pastas locais usadas no processo.
- Sugere dependência de arquivos locais fora de uma fonte central controlada.

## Arquivo já estudado: Instrução PCP.docx

Conteúdo extraído do documento:

- Instrução para atualizar a planilha de pedidos com o Plano de Entrega.
- Fluxo orienta acessar o Google Drive, pasta `LOGISTICA`, baixar o arquivo `PLANO DE ENTREGAS` do ano corrente e selecionar a guia do mês corrente.
- Na planilha do Plano de Entregas, abrir os clientes pelo sinal `+`, rolar até a coluna `TOTAL PEDIDOS`, copiar valores e colar na planilha local correspondente ao ano corrente.
- Caminho local citado: `C:\Users\KOIDE\Desktop\BI KOIDE\PCP\DATA SETS\Entregas`.
- Alerta do documento: a sequência dos itens nas duas planilhas deve ser a mesma antes de colar os valores, para não inserir valor em item errado.
- Também traz início de instrução para atualização de estoque de material atual via DBCorp: menu `Estoques > Saldo de Estoque`, com quebra por `Depósito` e tipo de detalhe `Localização e Lote`, depois imprimir.

Leitura operacional inicial:

- O processo atual depende de cópia/cola manual entre planilhas.
- Existe risco de erro por sequência de itens divergente entre planilhas.
- Existe dependência de arquivo local no PC `KOIDE` e de extrações manuais do DBCorp.
- A confiabilidade do BI/PCP depende da disciplina de atualização manual.

## Hipótese de melhoria levantada

A primeira frente clara de melhoria é mapear e, quando possível, automatizar ou padronizar a atualização das bases que alimentam PCP/BI, especialmente:

- plano de entregas;
- pedidos;
- produtos;
- faturamento;
- estoque de material;
- bases da reunião "Bom Dia".

Objetivo combinado: construir, junto com Fernando, um mapa `fonte -> planilha -> BI/relatório -> decisão produtiva`, identificando riscos manuais e oportunidades de melhoria.

## Próximo passo sugerido

Próximo arquivo recomendado para estudo: `Pedidos de Venda.xlsx`, por estar diretamente ligado a plano de entrega, PCP e programação produtiva.

## Links

- [[Producao]]
- [[PCP]]
- [[BI]]
- [[DBCorp]]
- [[Google Drive]]
