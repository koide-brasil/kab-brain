---
tipo: nota
area: institucional
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [clientes, comercial, parceiros]
---

# Clientes formais da KAB

Lista de clientes ativos (ou em homologação) com quem a KAB tem relacionamento formal. **Sem valores comerciais nominais** — apenas relação institucional pra Tony saber a quem servimos.

> Valores específicos de contrato, preço unitário, volume mensal por cliente vivem **no cofre pessoal do Erico** (sensibilidade comercial).

## Clientes ativos

| Cliente | Setor / Segmento | Status | Notas |
|---|---|---|---|
| **YAB (Yamada Autopeças do Brasil)** | Automotivo (Nissan supplier) | Ativo histórico | Cliente importante; projeto H60 encerrado em 2026 |
| **Indab** | Industrial | Ativo | Volume regular |
| **SumiRiko (SRK)** | Borracha automotivo | Ativo | Auditoria BCP aprovada ago/2024 |
| **Polistampo** | Estamparia automotiva | Ativo | Múltiplos contratos |
| **DN Automotivos** | Automotivo (24 PNs) | Ativo / Salva-pátria | Cliente que sustentou volume em 2025; muitos itens novos em homologação |
| **Tuopu** | Automotivo elétricos | Novo (2026) | Cliente entrante; requisitos específicos documentados em `empresa/drive-index/SGK/07-Requisitos-Clientes/Requisitos-Tuopu.md` |

## Em homologação

| Cliente | Status | Bloqueio |
|---|---|---|
| **Gestamp** | Em homologação travada | Ariba aprovado, GoSupply pendente — questão financeira específica (detalhes no cofre pessoal) |

## Clientes históricos que saíram

(Conhecimento institucional pra explicar lacunas no IQF e em históricos)

- Lacunas IQF #1, #4, #5, #7 correspondem a clientes que saíram. Razões variadas (mercado, mudança de fornecedor estratégico do cliente). Detalhes específicos no cofre pessoal.

## Critério "cliente formal"

Pra entrar nesta lista, o cliente deve ter:
1. NDA assinado
2. Contrato comercial ou pedido recorrente
3. Cadastro completo no DBCorp (`TbCliente` com `CliAtivo=true`)
4. Pelo menos 1 NF emitida nos últimos 24 meses

## Cliente novo entrando — workflow

Quando vendedor (Gabriel) trazer prospect:
1. Cadastro inicial em `TbCliente` (DBCorp)
2. Registro em deal/cotação no RD Station CRM
3. Trocas técnicas (drawings, samples, qualificação)
4. Se passar APQP/PPAP → produção comercial → entra nesta lista

Detalhes processuais em [[../sgk/Procedimentos/PR-04 Processo Vendas]].

## Links

- [[contexto/integracoes/dbcorp]] — tabelas onde clientes vivem
- [[contexto/integracoes/rdstation]] — pipeline comercial
- [[sgk/Procedimentos/PR-04 Processo Vendas]] — processo formal
- [[sgk/Mapas-Processo/Vendas]] — mapa do processo
- [[drive-index/SGK/07-Requisitos-Clientes/_sobre]] — requisitos específicos por cliente
