---
tipo: drive-index
area: kab
categoria: sgk-especificacao
fonte: drive
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/10 - Especificação de pedido/
modificado: 2026-01-13
indexado: 2026-05-20
total_arquivos: 44
elaborado_por: Flávio Sales (Qualidade KAB)
tags: [sgk, especificacao-pedido, fornecedor, mp, dn, gestamp, cbv, hitachi, batch-indexado]
---

# Especificações de Pedido pra Fornecedores — 44 arquivos

**Documentos formais que a KAB envia pros FORNECEDORES de matéria-prima**

## Resumo executivo

⚠️ **Inversão importante**: este NÃO é especificação que KAB recebe — é o que a KAB **envia pros próprios fornecedores** de matéria-prima (tubos, perfis). Cada arquivo é uma Especificação de Pedido instanciada pra um **PN do cliente final** (DN, Gestamp, CBV, Hitachi), traduzindo os requisitos técnicos pra o tubo bruto que o fornecedor deve entregar. **Elaborado por Flávio Sales** (Qualidade). É a **contrapartida espelho** dos Manuais de Fornecedores que a KAB recebe dos seus clientes ([[Requisitos-DN-Automotivos]], [[Requisitos-SRK-SumiRiko]], [[Requisitos-Tuopu]]). Cada PN tem 2 versões: xlsx (editável) + PDF (envio formal). 44 arquivos = 22 PNs cobertos.

## Distribuição por cliente final

| Cliente final | Arquivos | PNs cobertos |
|---|---|---|
| **DN Automotivos** | 30 | 15 PNs (maior cobertura) |
| **CBV** | 8 | 4 PNs (novos — modif dez/2025) |
| **Gestamp** | 4 | 2 PNs (48717-0A070 + 48723-0A070) |
| **HITACHI** | 2 | 1 PN (HGCC1-311-51-BR — Maciço) |
| **TOTAL** | **44** | **22 PNs** |

## Estrutura típica da Especificação de Pedido (modelo)

Cabeçalho:
- N° Revisão + Data
- Denominação do item
- N° do item KOIDE BRASIL (cód interno)
- N° do item CLIENTE (cód do cliente final)
- N° do item FORNECEDOR (dimensões — ex: Ø 32,00 × 19,00 mm)

Tabela de requisitos (códigos AIAG PPAP-style):
- **P1 / P2 / PPAP**: preenchimento conforme Especificação
- **P5**: amostragem por norma NBR 5426:1985 (NiS4 = zero defeito)
- **P8**: testes de compressão (com corpo de prova específico)
- **P9**: inspeção visual (isento rebarbas, oxidação, manchas, marcas extrusão)
- **P11**: dimensional crítico (diâmetro ext/int, concentricidade, retilineidade, comprimento)
- **P12**: auditoria de Produto + Lay-Out
- **P13**: auditoria de Processo
- **WD**: liga material conforme norma DIN EN AW (ex: liga 6005 T6)
- **SC** (Significant Characteristic): característica crítica monitorada

Notas finais:
- Plano de Controle a ser **acordado com KAB Qualidade + Produção**
- Pode usar simbologia do cliente em substituição
- **Manter apenas uma única fonte de fornecimento** quando marcado (SC)
- Assinaturas: Engenharia + Comercial + Qualidade KAB + Fornecedor

## Inventário detalhado

### 🟦 DN Automotivos (15 PNs)

PNs com Especificação de Pedido emitida:
- 3430430 (40304300) Rev 02 — Ø 76,50 × 3,00 mm
- 3431510 (40315100) — Ø 32,00 × 19,00 mm (exemplo lido)
- 3434460/3434470 (40344600/700) — Ø 61,00 × 56,00 mm (par)
- 3434650/660/670/680 (40346500/600/700/800) — Ø 41,30 × 31,20 mm + **4 beneficiamentos separados**
- 3438320 (40383200) Rev 04 — Ø 64,40 × 2,10 mm
- 3439740 (40397400) — 42,30 × 46,80 mm + beneficiamento
- 3440470 (40404700) — 42,50 × 47,80 mm + beneficiamento
- 3441360 (40413600) — Ø 92,00 × 2,00 mm
- **MP1 Inner Core 3443450** — Perfil 39,70 × 36,50 mm Rev 01
- **MP1 Outer 3443460** — Ø 79,00 × 2,00 mm Rev 01
- **MP1 Inner Core 3443720** — Perfil 39,70 × 36,50 mm Rev 01
- **MP1 Inner Sleeve 3443740/480** — Ø 24,84 × 12,50 mm Rev 01

Padrão: **DN compartilha PN com versão MP1** (matéria-prima bruta) — sinaliza que algumas peças têm requisito específico de MP que o fornecedor deve seguir.

### 🟨 CBV (4 PNs — todos novos dez/2025)
- **470.60434 + 470.60715** (compartilhado) — Tubo Ø 28,60 × 25,07 mm
- **472.60535** — Tubo 19,50 × 16,40 × 60,00 mm (compartilhado com 472.6049)
- **472.60419** — Tubo 10,40 × 14,00 × 36,00 mm

Padrão CBV: **PNs novos do final de 2025** → entrou na carteira recentemente (compatível com MATRIZ-Correlacao-Objetivos-1S25-2S25 que cita "CBV do Brasil" no pipeline SOP 2026).

### 🟥 Gestamp (2 PNs)
- **48717-0A070** — Ø 21,00 × 3,20 mm Rev 01
- **48723-0A070** — Ø 56,85 × 43,95 mm Rev 01

Padrão Gestamp: **Especificação de COTAÇÃO** (não pedido) — sinaliza que ainda está em fase de homologação. Bate com a memória kab-clientes-formais (Gestamp travada Ariba aprovado, GoSupply pendente).

### 🟪 Hitachi (1 PN)
- **HGCC1-311-51-BR** — Maciço Ø 20,64 mm — SAE 12L 14 Rev 05

Padrão Hitachi: única peça é **MACIÇO** (não tubo) — material SAE 12L 14 (aço de usinagem fácil). PN tem rev 05 (mais maduro) — produzido há tempo.

## Achados estratégicos

1. 🎯 **DN domina** com 15 PNs (68% dos PNs cobertos) — confirma a centralidade no portfolio
2. 🆕 **CBV é cliente novo** — todas Especificações de dez/2025 (PNs novos)
3. ⚠️ **Gestamp ainda em homologação** — usa "Especificação de Cotação" não "de Pedido"
4. 🔄 **MP1 = matéria-prima específica DN** — vários PNs DN têm versão MP1 separada, com requisitos próprios (provavelmente tubo bruto antes do beneficiamento)
5. 🤝 **Flávio Sales** é o autor único — concentração de elaboração na Qualidade
6. 📋 **Cada PN tem 2 arquivos**: xlsx (editável) + PDF (versão enviada) — boa prática de controle de versão

## Conexões com outras notas

| Pasta | Conexão |
|---|---|
| **[[Planos-de-Controle-Facilites-por-PN]]** | 37 Planos de Controle internos × 22 Especificações pra fornecedor = controle dos 2 lados (KAB produz + fornecedor entrega) |
| **[[Requisitos-DN-Automotivos]]** | Cliente final que define os requisitos que a KAB traduz pro fornecedor |
| **[[Requisitos-SRK-SumiRiko]]** | Mesma lógica pra SRK (mas não tem arquivo específico aqui — SRK não usa esse fluxo formal de Especificação de Pedido) |
| **[[FOR-027-Matriz-RNC-2025-2024-Historico]]** | RNCs de fornecedor (especialmente **GOLIN, 6 NCs em 2024**) reforçam a importância dessa Especificação |
| **[[FOR-015-IQF-Indice-Qualidade-Fornecedores]]** | IQF dos fornecedores que recebem essas Especificações |

## Quando consultar

- **Antes de cotar/pedir MP** de um PN específico — verificar se há Especificação vigente
- **Antes de auditar fornecedor** novo (sigla P12) — referência dos requisitos
- **Investigação de NC fornecedor** — verificar se a Especificação estava clara
- **Mudança de fornecedor** de um PN — usar Especificação pra cotar com novo fornecedor
- **Negociação de preço com fornecedor** — Especificação define complexidade

## Quem usa este documento na prática

- **KAB (interna)**: Comercial (envia pra fornecedor), Qualidade (define), Engenharia (revisa)
- **Fornecedor MP**: tem que assinar reconhecendo os requisitos antes de produzir
- **Auditor de fornecedor**: usa como referência pra auditoria de processo

## Relacionado

- [[Planos-de-Controle-Facilites-por-PN]] — 37 Planos internos (mesmos PNs)
- [[Requisitos-DN-Automotivos]] · [[Requisitos-SRK-SumiRiko]] · [[Requisitos-Tuopu]] · [[Requisitos-Polistampo-YAB]]
- [[FOR-015-IQF-Indice-Qualidade-Fornecedores]] — IQF dos fornecedores
- [[FOR-027-Matriz-RNC-2025-2024-Historico]] — NCs fornecedor (GOLIN crítico)
- [[FOR-061-Auditoria-Layout-Produto-Processo]] — auditoria mencionada P12/P13
- [[MAPA-QUALIDADE-2026]] — Flávio Sales
- [[MAPA-VENDAS-2026]] — Gabriel Pedon (Compras hoje)
- [[ITs-Comercial-APQP]] — IT-082 cita FOR-018 + FOR-071 Especificação de Pedido

## Conteúdo bruto

<details>
<summary>44 arquivos (~ 4 MB total) · 22 PNs × 2 formatos (xlsx + PDF) · DN/CBV/Gestamp/Hitachi</summary>

Catalogados no SQLite:
```sql
SELECT * FROM arquivos WHERE categoria='10-Especificacao-Pedido';
```

Pra extrair um específico:
```bash
python3 92-Skills/kab/treinar-sgk/scripts/treinar_sgk.py extract <DRIVE_ID>
```

</details>
