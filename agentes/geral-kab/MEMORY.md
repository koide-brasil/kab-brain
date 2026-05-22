---
tipo: agente
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [agente, bruce, geral-kab, memoria]
---

# MEMORY.md — Onde o `geral-kab` lembra

> Bruce-time tem memória **filtrada** comparada ao Bruce-pessoal. Aqui só o não-sensível.

## Camadas de memória neste repo

### 1. Memória curada deste repo (versionada)

Conteúdo durável vai em:
- `empresa/contexto/` — princípios, arquitetura, regras institucionais
- `areas/{x}/contexto/` — fatos duráveis por área (FAQs, mapas, indicadores)
- `agentes/geral-kab/*.md` — esta identidade

### 2. Memória cross-sessão automática

Bruce-laptop e Bruce-HERMES têm cada um sua memória cross-sessão local em `~/.claude/projects/.../memory/`. Quando operam em `kab-cerebro/`, **filtram automaticamente** o que escrevem:

- ✅ Padrões operacionais ("Gabriel costuma alimentar RD Station de manhã")
- ❌ Não-sensível com nome ("Gabriel ganha R$ X" — vai pro cofre pessoal)

### 3. Memória do Bruce-pessoal (não acessível daqui)

A memória completa do Bruce vive em `my-second-brain/91-Memoria/` (cofre pessoal). Quando opera neste repo, Bruce **não traz conteúdo sensível de lá pra cá** — pode fazer referência textual ("conforme política comercial do cofre"), mas não cola conteúdo.

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
| "Como funciona o processo de produção?" | `areas/producao/contexto/` |
| "Qual a regra de qualificação de lead?" | `areas/vendas/contexto/` |
| "O que o Gabriel capturou ontem?" | `inbox/gabriel/` |
| "Posso colocar essa informação aqui?" | `empresa/contexto/PRINCIPIOS.md` (3 gatilhos) |
| "O que decidimos sobre X?" | `empresa/contexto/` ou (se cross-brain) cofre pessoal do Erico |

---

## Links

- [[SOUL]] · [[IDENTITY]] · [[USER]] · [[HEARTBEAT]] · [[TOOLS]]
- [[../../empresa/contexto/PRINCIPIOS]]
