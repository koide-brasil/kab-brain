---
tipo: projeto
area: kab
status: em-analise
criado: 2026-05-21
atualizado: 2026-05-21
tags: [infra, seguranca, 1password, credenciais]
---

# Migração para 1Password Business

Centralizar gestão de credenciais (DBCorp, RD Station, RHiD, Google OAuth, SSH, GitHub) num cofre único com **isolamento por máquina** via Service Accounts. Motivador: vamos ter 7-8 hosts (laptop + 7 VPSs) e o status quo (texto plano em `.env`/`~/.config/`) não escala — sync manual, sem audit, sem revogação atômica.

## Decisão arquitetural

- **Produto:** 1Password Business (~US$ 7,99/mês). Family/Personal não tem Service Account.
- **Conta ainda NÃO criada.** Erico vai criar quando retomar este projeto.

## Estrutura proposta (a confirmar)

### 5 Vaults por escopo de risco

| Vault | Conteúdo |
|---|---|
| `personal` | senhas/cartões pessoais (humano, não scripts) |
| `kab-prod` | DBCorp, RD Station, RHiD, Google OAuth |
| `infra` | SSH keys, GitHub, Hostinger, DNS, domínios |
| `investimentos` | credenciais de leilões, bancos, contadores |
| `dev` | APIs sandbox, OpenAI/Anthropic, projetos código |

**Princípio:** vault vazado = estrago confinado. KAB-prod comprometido não derruba VPS de leilão.

### Service Accounts — 1 por host (recomendação Bruce)

| SA | Read access | Host |
|---|---|---|
| `sa-laptop-eps` | personal + kab-prod + infra + dev | laptop Erico |
| `sa-hermes` | kab-prod (só) | VPS Hermes |
| `sa-leilao-N` | investimentos (só) | VPSs de leilão (futuras) |

Revogação atômica: 1 host comprometido = revoga só aquele token, demais seguem.

### Modelo de consumo nos scripts

`op run --env-file=.env.tpl -- python script.py`

`.env.tpl` versionado no git (só referências, sem segredo):
```bash
DBCORP_PASSWORD="op://kab-prod/dbcorp/password"
RD_STATION_TOKEN="op://kab-prod/rdstation/api_token"
GOOGLE_REFRESH_TOKEN="op://kab-prod/google-drive/refresh_token"
```

Token do SA: `/etc/op-token` 600 no host. Cron carrega via `OP_SERVICE_ACCOUNT_TOKEN`.

## 3 decisões em aberto

- [ ] Aceitar estrutura de 5 vaults acima OU propor outro corte (ex: por VPS)
- [ ] Confirmar SA "por host" vs "por função"
- [ ] Migração big bang OU gradual (Bruce recomenda gradual, começar pelo Drive token do daily-meeting)

## Próximos passos quando retomar

1. Erico cria conta Business em https://1password.com/sign-up
2. Cria os 5 vaults
3. Gera `sa-laptop-eps` primeiro (escopo total)
4. Migra Drive token + DBCorp do laptop como piloto
5. Valida → expande pra Hermes → demais VPSs conforme entram

## Pendência relacionada (motivadora original)

Drive token quebrado no VPS — `_drive_access_token()` em `daily_meeting.py:1617` hardcoded em `~/.config/claude-google/`. **Solução curta** (independente do 1Password): helper compartilhado `google_credentials.py` com detecção automática. **Solução longa:** migrar pro 1Password como descrito acima.

Decidir se vai de "fix curto + migrar pra 1P depois" OU "esperar 1P e fazer só uma vez".

## Links relacionados

- setup-google-mcps — credenciais Google atuais no laptop
- [[Bruce remoto na VPS Hostinger]] — contexto multi-instância
- [[CLAUDE]] — regras do vault
