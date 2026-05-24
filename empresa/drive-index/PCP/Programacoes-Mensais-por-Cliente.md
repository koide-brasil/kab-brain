---
tipo: drive-index
area: kab
categoria: pcp-programacao
fonte: drive
drive_path: COMERCIAL/00- OBSOLETO/PLANEJAMENTO/1 - PLANO DE ENTREGA/1- PEDIDOS CLIENTES/
drive_id: 1dDagZkGjXlf0a59bWvvWHppsF_6qsWcu
modificado: 2026-05-07
indexado: 2026-05-20
tags: [pcp, programacao, dn, sumiriko, yorozu, indab, polistampo, marcelo-gois]
---

# Programações Mensais por Cliente (PCP)

**Estrutura hierárquica Cliente / Ano / Mês com xlsx de programação mensal**

## Resumo executivo

PCP da KAB funciona com **arquivos mensais por cliente**. Estrutura: `PLANEJAMENTO / 1 - PLANO DE ENTREGA / 1- PEDIDOS CLIENTES / [Cliente] / [Ano] / [Mês]`. Cada mês tem 2-3 arquivos (geralmente Programação xlsx + e-mail recebido do cliente + planejamento próprio KAB). **DN AUTOMOTIVOS é o cliente mais atualizado** com programações até Maio/2026. Programações antigas (Sumiriko, Yorozu, Indab, Polistampo) podem estar dentro das próprias subpastas por ano.

## Estrutura ativa (12 clientes mapeados)

### 🔥 Cliente ATIVO mais recente

**DN AUTOMOTIVOS** — programações 2024-2026:
- 2024: 2 meses (parcial — talvez só out-dez)
- **2025: 12 meses (completo)**
- **2026: 5 meses (jan-mai)** — última atualização 27/04/2026 (Programação Mensal Abril/26 + Maio 2026 - mod 07/05)

### 📋 Clientes catalogados (12)

| Cliente | Subpastas | Status |
|---|---|---|
| **DN AUTOMOTIVOS** | 3 (2024-2026) | 🔥 ATIVO |
| BOGE | 3 arq | 📦 Legado |
| DTR | 6 sub | 📦 Legado |
| INDAB | 10 sub | ❓ Verificar |
| KMEX | 2 sub | 📦 Legado |
| POLISTAMPO | 7 sub | ❓ Verificar |
| SAMPEL | 4 sub | 📦 Legado |
| **SUMIRIKO** | **10 sub** | ❓ Verificar (cliente top, esperado ativo) |
| TENNECO | 5 sub | 📦 Legado |
| VIBRACOUSTIC | 3 sub | 📦 Legado |
| **YOROZU** | **10 sub** | ❓ Verificar (cliente top) |
| OBSOLETO | 4 sub | Arquivado |

⚠️ **SUMIRIKO e YOROZU com 10 subpastas mas 0 modif recente no nível 1** — mas conteúdo pode estar dentro. SRK é cliente #1 de faturamento (55% em 2025), então **alguma programação deve existir** — talvez em outro lugar (e-mail direto, Drive da SRK).

## Padrão de arquivos por mês

Pelo exemplo de DN AUTOMOTIVOS/2026/05-MAIO (2 arquivos):
- `Programacao MAIO 2026 KOIDE.xlsx` — programação consolidada
- `Programação Mensal - Maio_26 - KOIDE.eml` — e-mail original do cliente

Cada arquivo ~50-100 KB, contendo cronograma de entregas por PN + quantidades + datas.

## Pastas-irmãs (PLANEJAMENTO)

Além de "1 - PLANO DE ENTREGA", a pasta PLANEJAMENTO tem:

| Subpasta | Itens | Função |
|---|---|---|
| **BENEFICIAMENTO** | 3 sub | Beneficiamento (provavelmente terceirizado) |
| **PEDIDOS PARA FORNECEDOR** | 5 sub | Pedidos pra fornecedores |
| **PLANEJAMENTO DE M.P** | 17 sub | Planejamento de matéria-prima 🔥 |
| **PO IMPORTADOS** | 7 sub | Purchase Orders importados |

⚠️ Misturando função: PCP entrega (clientes) + PCP MP (fornecedores) + Beneficiamento + Importados. **Estruturalmente tudo é "Planejamento"** mas conceitualmente PCP entrega ≠ Compras MP.

## Achados estratégicos

🚨 **Estrutura escondida em pasta "00- OBSOLETO"** — má organização. PLANEJAMENTO está dentro de uma pasta chamada OBSOLETO mas é o sistema vivo. Vale renomear:
- **Antes**: `COMERCIAL/00-OBSOLETO/PLANEJAMENTO/`
- **Depois**: `PCP/2026/` ou `PCP-VIVO/`

📅 **Apenas DN AUTOMOTIVOS tem cobertura visível 2024-2026** — outros clientes podem ter programação em outro lugar (ex: e-mails diretos, drives compartilhados). **Vale conversar com Marcelo**.

🎯 **Programação Maio/2026 modificada 07/05** — Marcelo está atualizando rotineiramente.

📦 **PLANEJAMENTO DE M.P (17 subpastas)** = controle de matéria-prima — provavelmente 1 sub por tipo de MP (aço carbono, alumínio, etc). Cruza com [[FOR-058-Controle-Informacao-Documentada-Processos]] e [[Especificacoes-de-Pedido-Fornecedor]].

## Decisão sobre absorção

**NÃO baixei programações mensais arquivo a arquivo** porque:
1. Centenas de xlsx parecidos (1 por mês × cliente × ano)
2. Conteúdo dinâmico — vira obsoleto rápido
3. **DBCorp é fonte viva mais útil** (skill daily-meeting já consome)
4. Valor estratégico baixo (programação executável vs análise de tendência)

Se precisar de uma programação específica, abrir direto no Drive.

## Quando consultar

- Verificar programação específica de cliente/mês
- Auditoria interna (Rodrigo Wilder)
- Investigação de NC de PCP (auditoria 2025 identificou "PCP: última programação com prazos jan/25" → RNC S002)
- Cruzar com [[skill-daily-meeting]] aba Produção (carteira viva)
- Renegociação de prazos com cliente

## Relacionado

- [[ITs-PCP-Sistemas-Atualizacao]] — IT-041, 071, 072, 073, 090
- [[MAPA-PRODUCAO-2026]] — Fernando Macedo (Coord)
- [[skill-daily-meeting]] — aba Produção
- [[dbcorp-mapeamento]] — fonte viva
- [[RNCs-2025-Internas-e-Sistema]] — S002 mencionou PCP
- [[Plano-Programa-Auditoria-Interna-2024-2025]]
- [[Especificacoes-de-Pedido-Fornecedor]] — pro fornecedor
- [[../COMERCIAL/Cadastro-Clientes-Comercial]]

## Conteúdo bruto

<details>
<summary>~100+ xlsx mensais por cliente · não baixados individualmente · acessar Drive</summary>

Caminho: `COMERCIAL/00- OBSOLETO/PLANEJAMENTO/1 - PLANO DE ENTREGA/1- PEDIDOS CLIENTES/[Cliente]/[Ano]/[Mês]/`

</details>
