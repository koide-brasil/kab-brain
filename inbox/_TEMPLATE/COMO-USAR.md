# Inbox — Como usar

> Esta pasta é o **template** pra criar sua inbox pessoal no repo `kab-cerebro`.

## Setup inicial (1 vez)

1. Copie esta pasta `_TEMPLATE/` pra `inbox/{seu_nome}/` (use seu primeiro nome em lowercase: `gabriel`, `fernando`, `suelen`, etc)
2. Apague este `COMO-USAR.md` da sua cópia (ou deixe — é só lembrete)
3. Adicione seu CODEOWNERS em `.github/CODEOWNERS` (peça pro Erico aprovar)
4. Pronto pra capturar.

## Como capturar

### Manual (em qualquer editor)

```
inbox/{seu_nome}/2026-MM-DD-{slug}.md
```

Exemplo:
```
inbox/gabriel/2026-05-22-visita-tuopu-prospect-novo-projeto.md
```

Frontmatter sugerido:
```yaml
---
tipo: nota          # nota | ata | ideia | duvida | acao
area: vendas        # producao | vendas | qualidade | logistica | manutencao | rh | financeiro
status: inbox
criado: 2026-05-22
autor: gabriel
tags: []
---

# Título

(conteúdo)
```

### Via Claude Code (futuro Sprint 2)

```
/save-kab "<o que você quer capturar>"
```

A skill pergunta:
1. Qual área (escolhe entre as 7)
2. É operacional ou cai num dos 3 gatilhos (dinheiro nominal / pessoa específica / jurídico)?
3. Salva em `inbox/{seu_nome}/` + sidecar `.meta.yaml`

## Os 3 gatilhos (LEIA — bloqueante)

**Nada que dispare 1 desses 3 entra neste repo. Vai pro cofre pessoal do Erico.**

| Gatilho | Exemplo do que NÃO entra |
|---|---|
| 💰 Dinheiro nominal | "Cliente X aceitou R$ Y por peça" |
| 👤 Pessoa específica | "O João tá performando mal" |
| ⚖️ Jurídico/contratual | "Contrato Gestamp tem cláusula Z" |

Em dúvida → não entra. Pergunta pro Erico ou marca como rascunho em `**/privado/` (gitignored).

## Fluxo após captura

```
1. Você cria em inbox/{seu_nome}/
2. /sync-kab → push pro GitHub
3. (futuro Sprint 3) /consolidar-inbox às 22h:
   - Bruce lê seu sidecar
   - Propõe destino (areas/{x}/contexto/)
   - Você ou Erico aprova
4. Nota canônica em areas/{x}/contexto/
   Original arquivado em inbox/{seu_nome}/.processed/
```

## Por enquanto (Sprint 1-2)

Captura é **manual**. Consolidação também (Erico move arquivos de inbox/ pra areas/). Skill `/consolidar-inbox` chega no Sprint 3.

## Princípios

- ✅ Captura é melhor que perda — capture mesmo se não souber a área certa
- ✅ Bruto agora, refinado depois (status `inbox` → `revisado` → `canonico`)
- ❌ Não tente perfeição — frontmatter mínimo serve
- ❌ Não confunda este repo com cofre pessoal — aqui é compartilhável, sensível vai pra outro lugar

## Links

- [[../../empresa/contexto/PRINCIPIOS]] (regra dos 3 gatilhos detalhada)
- [[../../README]] (visão geral do repo)
- [[../../CLAUDE]] (regras pro Bruce)
