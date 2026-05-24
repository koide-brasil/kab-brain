---
tipo: nota
area: institucional
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [integracao, dbcorp, erp]
---

# DBCorp — ERP da KAB

DBCorp é o ERP principal da KAB (SQL Server). Centraliza pedidos, NFs, estoque, produção, contas a pagar/receber, cadastros.

## Como acessar

- **Driver**: `pymssql` (pure Python, instala via `pip --user`). **NÃO usar pyodbc** (problemas de driver).
- **Credenciais**: vivem em `~/.config/dbcorp.env` (NUNCA git). Cada operador (laptop/HERMES) tem suas próprias.
- **Acesso**: read-only por convenção (queries SELECT). Mudanças via UI do ERP, não via SQL direto.

## Tabelas críticas (estrutura institucional, sem queries de valores)

### Vendas e NFs

| Tabela | Conteúdo |
|---|---|
| `TbNotaFiscal` | NFs (cabeçalho). Filtros padrão pra venda: `NFTipo=6`, `NFStatus='I'`, `NFEntradaSaida='S'` |
| `TbItemNotaFiscal` | Itens das NFs (PN, qtde, valor unitário, impostos) |
| `TbRecebimentoNotaFiscal` | NFs **recebidas** (não confundir com `TbNotaFiscal` que é emitidas) — usar pra contas a pagar de fornecedores |

**Convenção da Matriz** (relatório mensal pra Koide Kokan):
- Receita líquida = `SUM(ItemNFValorTotal - ICMS - PIS - COFINS)`
- Produção contada = só `OperProdId IN (2, 9)` (CHANFRO + USINAGEM). NÃO conta CORTE, ESTAMPARIA, INSPEÇÃO, SETUP.

### Produção

| Tabela | Conteúdo |
|---|---|
| `TbOrdemProducao` | OPs (status: 0=criada, 3=execução, 9=concluída) |
| `TbApontamentoOrdemProducao` | Apontamentos de hora-máquina por operador |
| `TbOperacaoRoteiroOrdemProducao` | Operações do roteiro (chanfro, usinagem, corte, etc) |

**Regras importantes:**
- Filtro apontamento >24h pra remover ruído (operador que esqueceu fim)
- Refugo de SETUP: ≤10 peças não conta como refugo (é normal de calibração)

### Estoque

| Tabela | Conteúdo |
|---|---|
| `TbSaldoMesContabil` | Saldo contábil mensal por conta |
| `TbMovimentacaoEstoque` | Movimentos detalhados (entrada/saída/baixa) |

**Contas de estoque KAB**:
- `1103020010` = MP (Matéria-Prima — 材料)
- `1103020030` = PA (Produto Acabado + WIP — 製品)
- `1103020060` = P TER (Produto em Terceiros)

**Validação mensal**: `月初` (saldo anterior) bate exato; `月末` (saldo final) fica acima do real até financeiro rodar contabilidade do mês.

### Contas a pagar / receber

| Tabela | Conteúdo |
|---|---|
| `TbTitulo` | Parcela (todos AR e AP misturados) |
| `TbDocumento` | Documento de origem (NF, contrato, etc) |
| `TbCliente`, `TbFornecedor` | Cadastros |
| `TbCentroCusto` | CCs |

**Distinguir AR vs AP**:
```sql
-- AR (a receber)
FROM TbTitulo t JOIN TbDocumento d ON d.DocId = t.DocId
WHERE d.CliId IS NOT NULL

-- AP (a pagar)
FROM TbTitulo t JOIN TbDocumento d ON d.DocId = t.DocId
WHERE d.FornecId IS NOT NULL
```

**Status de título**:
- `TitStatus = 'A'` → Aberto (vencido ou a vencer)
- `TitDataPagamento IS NOT NULL` → pago
- `MotCancId IS NOT NULL` → cancelado

### Cadastros

| Tabela | Campos importantes |
|---|---|
| `TbCliente` | `CliId`, `CliNomeRazaoSocial`, `CliApelidoNomeAbrev`, `CliCPFCNPJ`, `CliAtivo` |
| `TbFornecedor` | `FornecId`, `FornecNomeRazaoSocial`, `FornecApelidoNomeAbrev` (⚠️ NÃO é `FornecNome`), `FornecCPFCNPJ` |
| `TbIndiceQualidadeFornecedor` | IQF + histórico de avaliações |

## Armadilhas conhecidas (não-óbvio)

- **`NFNum`** (não `NFNumero`) — pegar número da NF
- **`FornecApelidoNomeAbrev`** (não `FornecNome`) — pegar nome curto do fornecedor
- **`CnCstId` / `CnCstDescr`** (não `CCId`) — Centro de Custo
- **`TbClienteFantasia` → `TbCliente`** — fantasia não é canônica, sempre resolver via JOIN
- **MP excluída de comparação de orçamento** — matéria-prima tem dinâmica própria, não cabe em "gastos por CC"
- **Hierarquia de cancelamento**: `DocStatus='C'` cancela toda a cascata de títulos; `MotCancId` individual cancela só 1 título
- **`CCCliId`/`CCFornecId` estão vazios** e `TbOperacaoTitulo` está vazia → não dá pra distinguir AR vs AP só via `TbTitulo`, precisa JOIN com `TbDocumento`

## CCs principais da KAB (Centros de Custo)

Operacionais (excluem MP em comparações orçamento):
- Produção
- Vendas
- Qualidade
- Logística
- Manutenção
- Ferramentaria
- RH
- Financeiro
- TI / Sistemas

(IDs específicos em `~/.config/dbcorp-ccids.env` no laptop do operador — não nominal aqui)

## Skills existentes que usam DBCorp

Estas vivem no cofre pessoal do Erico (`erico-brain/92-Skills/kab/`), executadas pelo Bruce. Tony **referencia** mas não executa diretamente (precisa credenciais sensíveis):

- `daily-meeting` — relatório diário consolidado 6 departamentos
- `custeio-mensal` — custo real de produção por OP/máquina/peça (absorção ampla)
- `custeio-anual` — agregado YTD
- `movimentacao-contas` — xlsx mensal pro escritório Dorna (MP/PA/P TER)
- `relatorio-mensal-matriz` — 月次業務報告書 mensal pra Koide Kokan
- `auditoria-nfs-mp` — detecta sobrecobranças em NFs de aço/alumínio

Quando G5 pede algo que envolve query DBCorp com valores → Tony aponta pra Bruce executar (Erico precisa autorizar via /sync depois).

## Roadmap

Quando Tony for promovido a executor (Sprint 4+), terá credenciais DBCorp próprias com:
- Read-only obrigatório
- Filtro institucional aplicado (não retorna salários, intercompany, valores nominais por CC sensível)

## Links

- [[_sobre]] — índice integrações
- [[google-drive-mapeamento]] — outra integração
- [[../../sgk/Procedimentos/PR-06 Compras]] — onde NFs de entrada são protocoladas
