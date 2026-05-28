---
tipo: projeto
area: kab
status: em-andamento
criado: 2026-05-28
atualizado: 2026-05-28
autor: erico
tags: [tony, telegram, kab-brain, fluxo-captura, notificacao]
horizonte: curto-prazo
prioridade: alta
---

# Tony — Notificação de Compartilhamento no Grupo G5

> Estender o agente Tony pra **anunciar no grupo G5 do Telegram** sempre que alguém compartilhar notas com o time (operação `/team-sync` → arquivos em `staging/`). Estimula discussão **antes** da consolidação canônica, fechando o ciclo do fluxo de captura de 3 estágios.

## Problema atual

Quando Erico (ou Gabriel, Fernando, etc.) roda `/team-sync`, as notas vão pro `staging/{area}/` e ficam **tecnicamente compartilhadas**, mas **invisíveis na prática** porque ninguém do G5 tem o repo clonado localmente. Resultado: captura sem comunicação = trabalho que não vira discussão.

Exemplo concreto: nessa sessão (2026-05-28), 12 notas foram promovidas pro staging (visita Schadek, histórico Sumiriko, líderes/CHUBU, capacidade nominal, fornecedores, clientes formais, FENABRAVE, compliance, etc). G5 não sabe.

## Decisão de design — onde notificar

| Estágio | Notifica? | Por quê |
|---|---|---|
| Inbox individual (`/save-kab`) | ❌ | Privado do autor, ainda decantando |
| **Staging** (`/team-sync`) | ✅ | É o convite à discussão — momento certo pra time opinar |
| Canônico (`/consolidar-inbox`) | ❌ | Já maturado. Notificar de novo só atrapalha |

**Princípio**: notificação dispara no momento que CONVIDA opinião, não quando FECHA assunto.

## Decisão de design — modelo de entrega

| Aspecto | Escolha | Por quê |
|---|---|---|
| **Trigger** | Por evento (não digest diário) | Estimular discussão em tempo real, não 18h depois |
| **Agrupamento** | 1 msg por push git (mesmo commit = msg única) | Evita pingar 12x quando Erico promove batch |
| **Canal** | Grupo G5 único (Telegram) | Simples. Segmentar por área pode vir depois |
| **Janela ativa** | 7h-20h dias úteis | Fora disso acumula e libera no próximo início |
| **Latência** | ≤10 min do `/sync` | Aceita o atraso natural do cron pull-Hermes |

## Formato da mensagem

```
📥 Erico compartilhou em staging:
• vendas (3): visita Schadek · histórico Sumiriko · Fenabrave mar/26
• produção (2): líderes/CHUBU · capacidade nominal KAB
• qualidade (1): plano emergência incêndio

💬 Discussão aberta — comentem aqui ou no GitHub.
```

Itens:
- Título do arquivo sem a data (slug legível)
- Agrupado por área
- Autor primeiro (quem promoveu)

## Arquitetura

```
1. Erico/Gabriel/etc roda /team-sync (local)
   └→ Arquivo move pra kab-brain/staging/{area}/{nota}.md
   └→ Frontmatter ganha status: staging + staged_at

2. /sync (manual ou cron pares dos minutos)
   └→ git push pro GitHub (koide-brasil/kab-brain)

3. Cron Hermes "tony-pull-kab-brain" (já existe, a cada 10min)
   └→ git pull em /opt/data/<vault>/kab-brain/

4. Cron NOVO "tony-digest-staging" (a cada 10min, em sequência ao pull)
   └→ Script Python detecta arquivos novos em staging/ desde último run
   └→ Agrupa por commit
   └→ Se dentro da janela 7h-20h dias úteis: posta no chat_id do grupo G5
   └→ Atualiza state file (último commit processado)
   └→ Se fora da janela: acumula. No próximo run dentro da janela, libera tudo
```

## Dependências de implementação

- ✅ Tony tem `git pull` do kab-brain (deploy key `id_ed25519_kab`, alias `github-kab`)
- ✅ Tony fala Telegram (bot `@tony_kab_bot`)
- ✅ Cron infra Hermes disponível
- ❓ **`chat_id` do grupo G5** — precisa ser descoberto/confirmado
- ❌ Script Python `tony_digest_staging.py` — a criar
- ❌ State file `/opt/data/state/tony_digest_staging_last_commit` — a criar
- ❌ Entry no `hermes cron list` — a registrar

## Edge cases

| Caso | Tratamento |
|---|---|
| Push sem mudança em `staging/` | Script termina silencioso, sem msg |
| Push com mudança em `staging/.processed/` (audit trail) | Ignorar — não é compartilhamento novo |
| Múltiplos pushes na mesma janela | Cada push vira 1 msg agrupada |
| Reversão (arquivo movido de staging pra inbox) | Detectar e postar "arquivo X recolhido" |
| Tony cair / cron pular | Próximo run consolida tudo desde último commit registrado |

## Smoke test

1. Compartilhar nota teste (`/save-kab` + `/team-sync` no inbox/erico/)
2. Rodar `/sync` local
3. Esperar ≤10min
4. Verificar mensagem no grupo G5

## Não-objetivos (escopo cortado consciente)

- ❌ Notificar canônico (decisão deste projeto)
- ❌ Segmentar por área (DM pro supervisor) — pode vir em V2 se modelo simples gerar ruído
- ❌ Tags `urgente/prioridade-alta` que disparam ping fora da janela — V3+

## V2 — Captura de discussão do grupo G5 (implementada 2026-05-28)

Fechado o loop: digest convida discussão → discussão acontece no Telegram → **agora pode virar nota**.

### Pré-requisito ativado

**Privacy mode do bot @tony_kab_bot está OFF** (confirmado por Erico via @BotFather). Tony "ouve" todas as msgs do grupo G5, mantém contexto da sessão.

### Como funciona

1. Time discute no grupo G5 livremente (Tony fica em silêncio — Rule 8 — mas registra contexto)
2. Quando alguém quer preservar a discussão como nota:
   ```
   @tony_kab_bot salva essa discussão
   ```
   (verbos aceitos: salva/registra/captura/anota/vira nota)
3. Tony aplica **Rule 16** (injetada na SOUL.md): identifica thread, autores, área, gera markdown estruturado em `inbox/<solicitante>/YYYY-MM-DD-<slug>.md`, commita
4. Responde no grupo confirmando

### Estrutura da nota gerada

```yaml
---
tipo: discussao
area: <vendas/producao/etc>
status: inbox
autor: <solicitante>
referencia: [[<nota-original>]]
participantes: [<slugs>]
origem: telegram-grupo-g5
---

# Discussão — <título>

> Capturada de <data> por <solicitante>.

## Pontos levantados
- **Fernando (14:32)**: alerta de capacidade...
- **Gabriel (14:35)**: margem compensa...

## Pendências
- [ ] avaliar máquina nova com Carla
```

### Edge cases tratados na Rule 16

| Caso | Tratamento |
|---|---|
| Discussão >60min atrás (fora do contexto) | Tony pede resumo ao solicitante em vez de inventar |
| Áudio sem transcrição disponível | Tony sinaliza no corpo + pede que solicitante encaminhe áudio pra DM |
| Gatilho dos 3 detectado no conteúdo | Bloqueia + avisa, conteúdo sensível só vai pra cofre pessoal |
| Múltiplos solicitantes na thread | Autor da nota = quem marcou Tony primeiro com verbo de captura |
| Área ambígua | Tony pergunta antes de criar |

### Onde Tony está instruído

- `/opt/data/SOUL.md` → Rule 16 (linhas 506-613)
- Backup pré-modificação em `/opt/data/SOUL.md.bak-pre-rule16`

### Como testar

```
1. No grupo G5 do Telegram:
   "@tony_kab_bot teste: salva isso — Fernando alertou X, Gabriel sugeriu Y, decidimos Z"

2. Tony deve:
   - Criar inbox/erico/YYYY-MM-DD-<slug>.md
   - Commitar no kab-brain
   - Responder no grupo confirmando

3. Verifica no GitHub se o arquivo apareceu
```

## Critério de sucesso

- Time recebe notificação em ≤10min de cada `/sync` que toca staging
- Pelo menos 1 discussão real acontece no grupo G5 motivada por nota notificada
- Erico/Gabriel mantêm hábito de compartilhar sabendo que vira discussão

## Links

- [[../skills/team-sync/SKILL|skill team-sync]] — 2º estágio (compartilhamento)
- [[../skills/consolidar-inbox/SKILL|skill consolidar-inbox]] — 3º estágio (canonização)
- [[../../staging/_sobre|staging _sobre]] — conceito do estágio 2
- [[../contexto/PRINCIPIOS|PRINCIPIOS]] — categorias bloqueadoras
