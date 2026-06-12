# DBCorp — Catálogo de queries validadas (Tony)

> Complementa `dbcorp.md` (conexão/credenciais/regras). Estas queries foram validadas
> em produção pelo Bruce (2026-05/06). **Read-only sempre** (Regra de Ouro).
> Use `tony-py` com pymssql. Datas: `NFDataEmissao` é datetime — use `>= ini AND < fim+1d`.

## 1. Faturamento (NFs de SAÍDA emitidas pela KAB)

Tabelas: `TbNotaFiscal` (nf) × `TbItemNotaFiscal` (i) × `TbCliente` (cli, via `nf.CliId`).
Filtro base: `nf.NFTipo=6 AND nf.NFStatus='I' AND nf.NFEntradaSaida='S'`.

- **Bruto**: `SUM(i.ItemNFValorTotal)`
- **Líquido** (o que o plano usa): `SUM(i.ItemNFValorTotal - COALESCE(i.ItemNFValorICMS,0) - COALESCE(i.ItemNFValorPIS,0) - COALESCE(i.ItemNFValorCOFINS,0))` (alíquota efetiva ~20%)
- Nome do cliente: `cli.CliApelidoNomeAbrev` (NÃO existe TbClienteFantasia). Número da NF: `NFNum` (não NFNumero).
- Top clientes MTD: agrupar por cliente com o filtro base no mês corrente.

## 2. Produção (apontamentos)

`TbApontamentoOrdemProducao` × `TbOperacaoRoteiroOrdemProducao`, filtrando `OperProdId IN (2, 9)` — **só CHANFRO + USINAGEM** (critério do Erico; corte/prensa/inspeção/setup NÃO contam como peça produzida).
Apontamentos com duração > 24h são erro de apontamento — excluir.

### Sufixos de código de item (estágio do fluxo)
`-MP` matéria-prima · `-CC` cortado/chanfrado · `-US` usinagem externa (retorno da LW via NF) · `-00` item final (soma a cadeia). Não somar estágios como se fossem itens distintos.

## 3. Estoque

- NÃO existe `TbSaldoEstoque`. Saldo deriva de `TbMovimentacaoEstoque` ou, contábil, de `TbSaldoMesContabil`.
- Contábil: conta `1103020010` = MP, `1103020030` = PA+WIP. Saldo do mês só confia depois que a Carla roda a contabilidade.

## 4. Contas a receber / pagar (títulos)

`TbTitulo` (t, parcela) JOIN `TbDocumento` (d, origem) ON `d.DocId = t.DocId`.
- **A receber**: `d.CliId IS NOT NULL` (JOIN TbCliente) · **A pagar**: `d.FornecId IS NOT NULL` (JOIN TbFornecedor)
- Aberto: `t.TitStatus='A' AND t.MotCancId IS NULL AND t.TitDataPagamento IS NULL`
- Atrasado: `+ t.TitDataVencimento < hoje`. Valor em aberto: `t.TitValor - COALESCE(t.TitValorPago,0)`
- Status: 'L' liquidado, 'C' cancelado, 'A' aberto/vencido.
- Lixo contábil: existem títulos de 2021 sem baixa, considerados resolvidos extracontabilmente — cite mas não alarme.

## 5. Compras (NFs de ENTRADA)

**Armadilha nº1 do DBCorp**: NF recebida NÃO está em TbNotaFiscal — está em **`TbRecebimentoNotaFiscal`**.
Colunas: `RecNFDataEntrada`, `RecNFValorTotal`, `RecNFNum`, `FornecId`. Filtrar `MotCancId IS NULL`.

## 6. Orçamento × realizado por Centro de Custo (teto de consumo indireto)

- Planejado: `TbOrcamentoFinanceiro` → `TbDetalheOrcamentoFinanceiro` (filtrar `DetOrcFinanRecDesp='D'`) → `TbAnoMesDetalheOrcamentoFinanceiro` (`AnoMesDetOrcFinanData='YYYYMM'`). **JOIN obrigatório com `TbCentroCusto`** (nível por CC) — sem isso soma 4 níveis da árvore e infla 4x.
- Realizado: `TbPedidoCompra` com **UNION dos dois rateios**: itens (`TbItemPedidoCompra`+`TbRateioItemPedidoCompra`) E serviços (`TbServicoPedidoCompra`+`TbRateioServicoPedidoCompra`) — ignorar serviços subestima 10-15%. Filtrar `PedCpStatus <> 6` e `MotCancId IS NULL`.
- **SEMPRE excluir o CC MATÉRIA PRIMA (CnCstId=1)** da comparação — MP não passa por pedido de compra (vai via MRP).
- O budget é teto de CONSUMO INDIRETO por setor, não opex total (não inclui aluguel/folha/energia) — não reportar como "estouro de despesa total".

### Centros de custo
1 MATÉRIA PRIMA · 2 MANUTENÇÃO · 3 ADMINISTRATIVO · 4 QUALIDADE · 5 COMERCIAL · 6 RH · 7 LOGÍSTICA · 8 DIREÇÃO · 9 PRODUÇÃO · 10 FERRAMENTARIA (+MARKETING, PROJETOS)

## 7. Cadastros

- Clientes: `TbCliente` (CliId, CliNomeRazaoSocial, CliApelidoNomeAbrev, CliCPFCNPJ, CliAtivo). IDs úteis: SRK=1, YOROZU=2, INDAB=3, DN=12, POLISTAMPO=19, Tuopu=22, GESTAMP=45.
- Fornecedores: `TbFornecedor` (FornecId, ...). LW Usinagem = FornecId 38 (terceiro de usinagem).
- Contatos/IQF: TbContatoCliente/Fornecedor, TbIndiceQualidadeFornecedor.

## 8. Manutenção (OS)

`TbOrdemServico` = OS corretivas. "AJUSTE FERRAMENTAL" é pausa de ferramenta, não quebra de máquina — separar na contagem.

## 9. Armadilhas gerais (resumo)

1. `TbRecebimentoNotaFiscal` = entradas; `TbNotaFiscal` = saídas
2. `CnCstId` = centro de custo ≠ `CCId` = conta corrente
3. Datetime sem CAST estoura agrupamento por dia
4. Orçamento sem JOIN em TbCentroCusto soma 4x
5. Realizado sem serviços subestima; comparação com MP não faz sentido
6. Sufixo de item indica estágio, não item novo
7. `TbTitulo`: sempre `MotCancId IS NULL` + `TitDataPagamento IS NULL` pra aberto real


## Links relacionados

- [[agentes/MAPA|agentes]]
