---
tipo: nota
area: institucional
status: revisado
criado: 2026-05-23
atualizado: 2026-05-29
fonte_original: SGK + uso operacional KAB
validado_por: Bruce
validado_em: 2026-05-29
sensibilidade: gestao
recencia: sob-demanda
tags: [glossario, siglas]
---

# Glossário KAB

Siglas e termos próprios usados na KAB. Pra Tony entender + onboarding de novos membros (Gabriel/Mayra/Carla/Fernando e futuros).

## SGK — Sistema de Gestão Koide

| Sigla | Significado |
|---|---|
| **SGK** | Sistema de Gestão Koide — equivalente ao SGQ + outros aspectos (ambiental, segurança) |
| **MQ** | Manual da Qualidade (MQ-01 a MQ-XX). MQ-01 rev 06 é o principal. |
| **PR** | Procedimento (PR-01 a PR-10). Ver `sgk/Procedimentos/` |
| **IT** | Instrução de Trabalho (IT-XXX). Vive em `04-Formulários` no Drive + Facilite |
| **FOR** | Formulário (FOR-XXX). Ex: FOR-024 BCP, FOR-030 Treinamentos, FOR-114 BCP Análise Riscos |
| **NC** | Não Conformidade |
| **RNC** | Relatório de Não Conformidade (ver [[sgk/rnc-fluxo-resumido]]) |
| **ISO 9001** | Norma de gestão da qualidade — KAB certificada (TUV NORD) |
| **APQP** | Advanced Product Quality Planning (planejamento avançado da qualidade) — fase de desenvolvimento de produto novo |
| **PPAP** | Production Part Approval Process — aprovação da peça antes de produção em série |
| **FMEA** | Failure Mode and Effects Analysis — análise de modos de falha |
| **MSA** | Measurement System Analysis — análise do sistema de medição |
| **CEP** | Controle Estatístico de Processo |

## Indicadores

| Sigla | Nome | Onde vê |
|---|---|---|
| **OTD** | On-Time Delivery (entrega no prazo) | [[indicadores/OTD]] |
| **IQF** | Índice de Qualidade de Fornecedores | [[indicadores/IQF Fornecedores]] |
| **OEE** | Overall Equipment Effectiveness (eficiência global do equipamento) | Daily-meeting |
| **CPV** | Custo do Produto Vendido | Custeio mensal (cofre pessoal) |
| **GGF** | Gastos Gerais de Fabricação (overhead) | Custeio mensal |
| **MTD** | Month To Date (acumulado do mês até a data atual) | Daily-meeting |

## Operacional

| Sigla | Significado |
|---|---|
| **OP** | Ordem de Produção (no DBCorp: `TbOrdemProducao`) |
| **CC** | Centro de Custo (no DBCorp: `TbCentroCusto`, campo `CnCstId`) |
| **MP** | Matéria-Prima (conta contábil 1103020010) |
| **PA** | Produto Acabado (conta 1103020030) |
| **P TER** | Produto em poder de Terceiros (conta 1103020060) |
| **WIP** | Work In Progress (estoque em processo, dentro de PA) |
| **PCP** | Planejamento e Controle da Produção |
| **PN** | Part Number (código da peça) |

## Comercial

| Sigla | Significado |
|---|---|
| **AR** | Accounts Receivable (contas a receber) |
| **AP** | Accounts Payable (contas a pagar) |
| **NF** | Nota Fiscal |
| **NFe** | Nota Fiscal Eletrônica |
| **ICMS** | Imposto estadual |
| **PIS/COFINS** | Tributos federais |
| **ITBI** | Imposto de Transmissão de Bens Imóveis (não confundir com IPI) |
| **Aftermarket** | Mercado de reposição (peças avulsas, não OEM) |
| **Resourcing** | Cliente trocando de fornecedor — oportunidade comercial |
| **OEM** | Original Equipment Manufacturer (montadora) |

## RH

| Sigla | Significado |
|---|---|
| **HE** | Hora Extra |
| **HC** | Hora Contratual |
| **MTE** | Ministério do Trabalho e Emprego |
| **CLT** | Consolidação das Leis do Trabalho |
| **VA / VC** | Vale Alimentação / Vale Compra (Sodexo) |

## Sistemas

| Sistema | O que é |
|---|---|
| **DBCorp** | ERP da KAB (SQL Server) — ver [[contexto/integracoes/dbcorp]] |
| **RD Station** | CRM comercial — ver [[contexto/integracoes/rdstation]] |
| **RHiD** | Ponto eletrônico Control iD — ver [[contexto/integracoes/rhid]] |
| **Facilite** | Espelho das IT do SGK (acesso fácil pelo time) |
| **Sanitas** | Plano de saúde médico |
| **Sodexo** | Benefícios (VA + VC) |

## Empresa / partes interessadas

| Termo | Significado |
|---|---|
| **KAB** | Koide Autopeças do Brasil (subsidiária brasileira) |
| **Koide Kokan** | Matriz japonesa (Takamatsu, Kagawa — Japão, fundada 1974) |
| **G5** | Comitê estratégico — 5 pessoas-chave KAB |
| **Conselheiro** | Mentor sênior do conselho que orienta KAB+KTI+KMEX (relatório mensal) |
| **Matriz** | Termo usado pra se referir ao Koide Kokan Japan |
| **Houkokusho** (報告書) | Relatório mensal pra Matriz (月次業務報告書) |
| **差異要因** | Seção do relatório mensal explicando variações no mês |

## Termos de leilão (Tony pode encontrar referência ao Bruce que opera Garimpo no cofre pessoal)

| Termo | Significado |
|---|---|
| **AF** | Alienação Fiduciária (Lei 9.514) |
| **CMA** | Comparative Market Analysis (avaliação por comparação de mercado) |
| **ROI** | Return on Investment |
| **NBR 14653** | Norma ABNT de avaliação de bens |

(Tony geralmente não trabalha com leilão imobiliário — é tema do Bruce no cofre pessoal. Mas se cliente do time perguntar sobre investimento imobiliário, Tony aponta pro Bruce.)

## Adicionar termo novo

Quando G5 introduzir sigla nova:
1. Adicionar na seção apropriada acima
2. Atualizar `atualizado` no frontmatter
3. Commit com mensagem `glossário: adiciona <SIGLA>`
