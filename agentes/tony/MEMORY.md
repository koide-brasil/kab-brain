---
tipo: agente
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-06-09
autor: erico
tags: [agente, bruce, tony, memoria]
---

# MEMORY.md — Onde o `tony` lembra

> Bruce-time tem memória **filtrada** comparada ao Bruce-pessoal. Aqui só o não-sensível.

## Camadas de memória neste repo

### 1. Memória curada deste repo (versionada)

Conteúdo durável vai em:
- `empresa/contexto/` — princípios, arquitetura, regras institucionais
- `areas/{x}/contexto/` — fatos duráveis por área (FAQs, mapas, indicadores)
- `agentes/tony/*.md` — esta identidade

### 2. Memória cross-sessão automática

Bruce-laptop e Bruce-HERMES têm cada um sua memória cross-sessão local em `~/.claude/projects/.../memory/`. Quando operam em `kab-cerebro/`, **filtram automaticamente** o que escrevem:

- ✅ Padrões operacionais ("Gabriel costuma alimentar RD Station de manhã")
- ❌ Não-sensível com nome ("Gabriel ganha R$ X" — vai pro cofre pessoal)

### 3. Memória do Bruce-pessoal (não acessível daqui)

A memória completa do Bruce vive em `my-second-brain/91-Memoria/` (cofre pessoal). Quando opera neste repo, Bruce **não traz conteúdo sensível de lá pra cá** — pode fazer referência textual ("conforme política comercial do cofre"), mas não cola conteúdo.


## Memória de julgamento do Tony

Tony também aprende com erros, quase-erros, descartes, respostas do G5, solicitações recusadas, dúvidas de escopo e perguntas diárias que geraram — ou não geraram — conhecimento.

Arquivos de suporte:

- `agentes/tony/PROMPTS/tony-self-reflection.md` — prompt de reflexão operacional.
- `agentes/tony/TEMPLATES/reflexao-operacional.md` — template para registrar reflexão.
- `agentes/tony/TEMPLATES/feedback-julgamento.md` — feedback de Érico/Bruce/G5 sobre o julgamento do Tony.
- `agentes/tony/TEMPLATES/revisao-semanal-tony.md` — revisão qualitativa semanal.
- `agentes/tony/MEMORIA/reflexoes-operacionais/` — reflexões registradas.
- `agentes/tony/MEMORIA/feedback-julgamento/` — feedbacks recebidos.
- `agentes/tony/MEMORIA/erros-de-julgamento/` — erros/quase-erros.
- `agentes/tony/MEMORIA/padroes-narrativos/` — padrões narrativos aprováveis.

Critério para registrar:

- uma pergunta diária trouxe conhecimento útil ou falhou em fechar loop;
- Tony aplicou escopo/sensibilidade em caso instrutivo;
- Érico/Bruce/G5 corrigiu resposta ou julgamento;
- uma ferramenta reduziu incerteza ou gerou ruído;
- houve risco de tratar dado externo como instrução;
- uma recusa ensinou limite operacional;
- uma interação sugere próxima pergunta melhor.

Todo aprendizado deve conter evidência, sensibilidade, limite de validade, como usar sem virar regra cega, o que NÃO generalizar e destino correto: inbox, staging, contexto canônico, escalação ou apenas registro operacional.

## Fluxo de promoção

```
Captura em inbox/{nome}/  (cru)
    ↓ se passa nos 3 gatilhos
    ↓ /consolidar-inbox (Sprint 3)
areas/{x}/contexto/  (revisado)
    ↓ se vira regra/política
empresa/contexto/  (canônico)
```

Quando a captura **falha** nos 3 gatilhos:
- Bruce-time pergunta ao operador humano
- Se confirmado sensível → move pro cofre pessoal do Erico (`my-second-brain`)
- Se ambíguo → fica em `inbox/` aguardando decisão do Erico

## Cross-link com memória do Bruce-pessoal

Bruce-pessoal mantém `my-second-brain/91-Memoria/log-decisoes.md` (append-only). Decisões tomadas neste repo (kab-cerebro) que tenham impacto cross-brain devem ser **anotadas lá também** (manual ou via skill futura).

Exemplos:
- "Movido para `kab-cerebro/areas/producao/contexto/`: visão pública do mapa de processo Produção" → linha no log
- "Bloqueado em `inbox/erico/`: tentativa de salvar política comercial real → enviado pro cofre" → linha no log

## Quando consultar cada camada

| Pergunta | Onde olhar primeiro |
|---|---|
| "Como funciona o processo de produção?" | `areas/producao/contexto/sobre-o-departamento.md` ou `empresa/sgk/Mapas-Processo/Producao.md` |
| "Qual a regra de qualificação de lead?" | `areas/vendas/contexto/sobre-o-departamento.md` ou `empresa/sgk/Procedimentos/PR-04 Processo Vendas.md` |
| "Onde está o documento X no Drive?" | `empresa/contexto/integracoes/google-drive-mapeamento.md` (estrutura) ou `empresa/drive-index/{area}/` (resumos indexados) |
| "Como acesso o Drive via agente?" | `empresa/contexto/integracoes/google-drive-mapeamento.md` (seção MCPs) |
| "Qual a política de qualidade?" | `empresa/sgk/Politica-Qualidade.md` |
| "Onde acho FOR-XXX ou PR-XX?" | `empresa/sgk/Procedimentos/` (10 PRs) ou Drive (FORs) via `empresa/drive-index/` |
| "O que o Gabriel capturou ontem?" | `inbox/gabriel/` |
| "Posso colocar essa informação aqui?" | `empresa/contexto/PRINCIPIOS.md` (3 gatilhos) |
| "O que decidimos sobre X?" | `empresa/contexto/` ou (se cross-brain) cofre pessoal do Erico |

## Conhecimento institucional disponível (seed migrada 2026-05-23)

- **Visão geral KAB**: `empresa/contexto/koide-brasil-visao-geral.md` (fundação 2015, escopo ISO, capacidade)
- **SGK completo**: `empresa/sgk/` (Política Qualidade + 7 Mapas de Processo + 10 PRs)
- **Departamentos**: `areas/{nome}/contexto/sobre-o-departamento.md` (7 áreas)
- **Drive da KAB**: `empresa/contexto/integracoes/google-drive-mapeamento.md` + `empresa/drive-index/` (73 arquivos indexados de pastas não-sensíveis)
- **Integrações**: `empresa/contexto/integracoes/` (Drive hoje; RD Station, RHiD, DBCorp planejados)

---

## Links

- [[SOUL]] · [[IDENTITY]] · [[USER]] · [[HEARTBEAT]] · [[TOOLS]]
- [[../../empresa/contexto/PRINCIPIOS]]

## Padrão canônico — Super Agent Standard

Este agente segue o Super Agent Standard — SAS v1: agente é cérebro contextual; ferramentas/scripts/crons são mãos, sensores e guardrails; aprendizado contínuo é supervisionado; health técnico e cognitivo devem ser auditáveis; radar externo é obrigatório quando promovido a VPS própria.
