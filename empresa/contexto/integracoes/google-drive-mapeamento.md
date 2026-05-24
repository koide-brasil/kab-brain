---
tipo: nota
area: institucional
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [drive, google, integracao, sgk]
---

# Google Drive — mapeamento institucional

Como o time KAB usa o Google Workspace + Drive como repositório oficial de documentos. Este documento é **conhecimento institucional**, sem credenciais (que vivem em `~/.config/claude-google/` no laptop, gitignored).

## Visão geral

A KAB usa **Google Workspace** (`koidebrasil.com.br`). Cada colaborador tem conta corporativa. O Drive da empresa centraliza:

- Documentos do **Sistema de Gestão Koide (SGK)** — auditáveis ISO 9001
- Documentos operacionais por área (Produção, Vendas, Qualidade, RH, etc)
- ATAs, atas de reunião, materiais comerciais
- Relatórios mensais, planilhas operacionais

## Conta-chave: `servidor@koidebrasil.com.br`

É o **file server** da KAB no Drive. Conta corporativa especial que:
- É dona de pastas críticas (GERAL, ADM)
- Compartilha pastas com colaboradores conforme necessidade
- Bruce (agente do Erico) acessa via OAuth do **Erico** — sem necessidade de service account dedicada

## Pastas críticas (estrutura)

Estrutura observada (resumo institucional — IDs específicos NÃO ficam aqui, vivem em config local):

| Pasta | Conteúdo | Acesso típico |
|---|---|---|
| **GERAL** | Documentos transversais da empresa | Time todo |
| **ADM** | Administrativo + financeiro | Restrito (RH, financeiro, diretoria) |
| **SGK** (Sistema de Gestão Koide) | Manuais, procedimentos, instruções, formulários, mapas de processo | Time todo (auditável ISO) |
| **Departamentos** (cada área) | Operacional próprio | Membros do departamento + gerentes |
| **Reuniões** | ATAs, presentações | Conforme reunião |

## Estrutura interna do SGK (no Drive)

Pasta-mãe do SGK contém 7 subpastas críticas:

1. `01 - Manuais` — MQ-XX (Manual da Qualidade rev 06, MQ Estatístico, MQ FMEA, MQ APQP/PPAP, etc)
2. `02 - Procedimentos` — PR-01 a PR-10
3. `03 - Instruções de Trabalho` — IT-XXX (também espelhadas no Facilite)
4. `04 - Formulários` — FOR-XXX
5. `05 - Mapas de Processos` — 7 mapas (1 por área)
6. `13 - Normas` — ISO 9001 + outras
7. `14 - Atas Análise Crítica` — semestral

Mais detalhes em [[../../sgk/MAPA]] (Sistema de Gestão Koide neste vault).

## Convenções de nomenclatura

| Prefixo | Tipo | Exemplo |
|---|---|---|
| `MQ-XX` | Manual | MQ-01 Manual da Qualidade |
| `PR-XX` | Procedimento (10 ativos) | PR-04 Processo Vendas |
| `IT-XXX` | Instrução de Trabalho | IT-029 a IT-035 (RH) |
| `FOR-XXX` | Formulário | FOR-024 BCP, FOR-114 BCP, FOR-030 Treinamentos |
| `MAPA-XXX` | Mapa de Processo | MAPA-VENDAS-2026 |

## Workflow: indexação SGK pelo Bruce

A skill `treinar-sgk` (do Bruce-laptop):

1. Lê arquivos do Drive da KAB (PDF/DOCX/XLSX/Google nativo)
2. Extrai texto
3. Gera notas resumidas em `01-KAB/Drive-Index/SGK/` (no cofre pessoal do Erico — fonte autoritativa)
4. **Subset não-sensível** dessas notas vive em `empresa/drive-index/sgk/` (neste vault — time vê)
5. Mantém SQLite local pra idempotência

Pastas priorizadas pela skill:
- `05 - Mapas de Processos` (Maxima Pereira)
- `14 - Ata Análise Crítica`
- `02 - Procedimentos`
- `04 - Formulários`

Foco: arquivos modificados nos últimos 18 meses.

## Papéis (sem nomes nominais — ver organograma oficial)

| Função | Responsabilidade no Drive |
|---|---|
| Gestor SGK | Aprova mudanças em manuais/procedimentos |
| Gestor de cada área | Mantém pastas do departamento atualizadas |
| Recepção/Admin | Mantém ADM organizado |
| Servidor (conta) | Detém pastas-mãe e compartilha conforme necessário |

Nomes específicos das pessoas que ocupam esses papéis: ver estrutura organizacional no cofre pessoal do Erico (não-público no kab-brain).

## Credenciais (NUNCA git)

Tokens, OAuth, refresh tokens vivem em:

```
~/.config/claude-google/
├── oauth-client.json
├── drive-refresh-token.txt
├── get-drive-refresh-token.mjs
└── drive-mcp-wrapper.sh
```

App OAuth **publicado** (não expira mais). Cada operador (laptop/HERMES) tem seus próprios tokens em sua máquina.

## Como o agente futuro (Gerente/Hermes) acessa o Drive

Pré-requisitos:
1. MCP `mcp__google-drive__*` configurado no Claude Code (laptop) ou no HERMES
2. OAuth tokens válidos em `~/.config/claude-google/`
3. Conta do operador com acesso às pastas relevantes

Tools principais (via MCP):
- `mcp__google-drive__search-files` — busca arquivos
- `mcp__google-drive__get-folder-tree` — explora estrutura
- `mcp__google-drive__read-file` — lê conteúdo
- `mcp__google-drive__sheets-*` — manipula planilhas
- `mcp__google-drive__docs-*` — manipula documentos

## Documentos indexados (drive-index neste vault)

Subset não-sensível dos resumos do Drive vive em [[../../drive-index/SGK/_sobre]] e similares. Cobertura atual:

- SGK (55 arquivos) — manuais, procedimentos, mapas, formulários, atas (exceto correlação 1S25/2S25 que tem clientes nominais)
- PRODUCAO (5 arquivos)
- LOGISTICA, MANUTENCAO, PCP, QUALIDADE, FERRAMENTARIA, GERAL, SGQ-RAIZ (totais limpos)
- COMERCIAL, COMPRAS, FINANCEIRO, RH, ADMIN — **NÃO indexados aqui** (vivem só no cofre pessoal por sensibilidade)

## Links

- [[_sobre]] — índice de integrações
- [[../PRINCIPIOS]] — 3 gatilhos
- [[../../sgk/MAPA]] — Sistema de Gestão Koide
- [[../../drive-index/SGK/_sobre]] — índice da subpasta SGK indexada
