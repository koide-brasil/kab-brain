---
tipo: drive-index
area: kab
categoria: producao-registro-corte
fonte: drive
drive_path: PRODUCAO/REGISTRO DE CORTE ATUALIZADO/
modificado: 2026-05-11
indexado: 2026-05-20
total_arquivos: 91
tags: [producao, registro-corte, pn, fernando-macedo, parametros]
---

# Registros de Corte por PN (91 arquivos)

**1 arquivo por PN com parâmetros + vida útil de ferramenta · pasta ativa (23 modif últimos 18m)**

## Resumo executivo

Pasta com **91 arquivos** (1 xlsx por PN/dimensão de tubo), cada um sendo um **registro de corte atualizado** com parâmetros, vida útil de ferramenta (serra/disco), set up validado, tolerâncias. Distribuição temporal mostra **base histórica de 2022** (41 arq, maioria de quando o sistema foi instalado) + **atualizações regulares**: 18 em 2023, 10 em 2024, 13 em 2025, **9 em 2026**. **Arquivo mais recente: 11/05/2026** (PN BR22202756-00 — 21,5×14,2×40mm). Tamanho típico: ~177 KB cada.

## Distribuição por ano (criados/atualizados)

| Ano | Arquivos | Observação |
|---|---|---|
| **2022** | 41 | Sistema implantado (boa base) |
| **2023** | 18 | Crescimento — novos PNs |
| **2024** | 10 | Manutenção |
| **2025** | 13 | DN e MP1 (Stellantis) |
| **2026** | 9 | CBV e PNs novos |

## Top 10 arquivos mais recentes (2026)

| Data | PN | Dimensão (D ext × D int × comprimento) |
|---|---|---|
| 11/05/2026 | **BR22202756-00** | 21,50 × 14,20 × 40,00 |
| 08/04/2026 | **212.0000046** | 19,50 × 32,00 × 41,00 (Polistampo — amostras Abril 26) |
| 28/01/2026 | **40304300** | (DN) |
| 22/01/2026 | **40344700 (3434470)** | (DN) |
| 22/01/2026 | **40344600 (3434460)** | (DN) |
| 12/01/2026 | **472.60419** | 14,00 × 10,40 × 37,00 (CBV) |
| 12/01/2026 | **472.60535** | 19,50 × 16,40 × 61,00 (CBV) |
| 12/01/2026 | **470.60434** | 28,70 × 25,00 × 81,00 (CBV) |
| 12/01/2026 | **470.60715** | 28,70 × 25,00 × 101,00 (CBV) |
| 28/10/2025 | **MP1 3443480** | (DN — Stellantis MP1 Inner Sleeve) |

🎯 **Padrão**: registros de corte são **criados quando entra um PN novo**, modificados quando otimização ocorre. 4 PNs CBV de janeiro/2026 = entrada do cliente novo na carteira ([[Indicador-Abril-2026-Vendas]]).

## Estrutura de cada arquivo (extrapolação — não baixei individualmente)

Cada arquivo `<PN> REGISTRO DE CORTE.xlsx` provavelmente tem:
- Cabeçalho: PN, dimensões, material, cliente
- Parâmetros de corte: rotação serra, avanço, refrigeração, ângulo
- Vida útil de ferramenta: histórico de cortes feitos com cada serra/disco
- Set up validado: foto/medida da peça com paquímetro/projetor
- Tolerâncias: limites Min/Max + SC (Característica Significativa)
- Histórico de revisões/ajustes

## Conexão com SGK

| Documento SGK | Conexão |
|---|---|
| [[ITs-Operacao-Maquinas]] | IT-055/056/057 Set Up Corte CMB-75/SA-90/TR-80 |
| [[Planos-de-Controle-Facilites-por-PN]] | 37 Planos de Controle — 1 por PN também |
| [[Especificacoes-de-Pedido-Fornecedor]] | 44 Especificações pra Fornecedor — 1 por PN |
| [[FOR-058-Controle-Informacao-Documentada-Processos]] | índice de Facilites por PN |

⚠️ **Possível redundância**: 91 Registros + 37 Planos de Controle + 44 Especificações = **3 sistemas paralelos por PN**. Pode ter overlap.

## Quando consultar

- Antes de produzir PN específico (set up validado)
- Após troca de serra/disco (atualizar vida útil)
- Auditoria interna (Rodrigo Wilder)
- Cruzar com Plano de Controle ([[Planos-de-Controle-Facilites-por-PN]])

## Relacionado

- [[Planos-de-Controle-Facilites-por-PN]] — 37 Planos (SGK)
- [[Especificacoes-de-Pedido-Fornecedor]] — 44 specs pra fornecedor (SGK)
- [[FOR-058-Controle-Informacao-Documentada-Processos]]
- [[ITs-Operacao-Maquinas]]
- [[Acompanhamento-Meta-Solucao-Diario]] — FOR-111 mensal
- [[MAPA-PRODUCAO-2026]] — Fernando Macedo

## Conteúdo bruto

<details>
<summary>91 xlsx (~ 177 KB cada · ~ 16 MB total) — não baixados individualmente</summary>

Pra acessar um PN específico: pasta no Drive `PRODUCAO/REGISTRO DE CORTE ATUALIZADO/`

Catalogados no Drive — query SQL não disponível (esses não foram indexados na skill treinar-sgk).

</details>
