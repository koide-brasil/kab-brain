# KAB Cérebro

> **Cérebro operacional compartilhável da Koide Autopeças do Brasil.**
>
> Repositório do time KAB pra colaborar com o agente Bruce. Conteúdo aqui é **não-sensível** — coisas sensíveis vivem no cofre pessoal do Erico (`my-second-brain`, privado).

## Para quem é

- **Erico Shiroiwa** (Presidente KAB) — dono / aprovador final
- **Gabriel Pedon** (Comercial) — piloto inicial em 2026
- **Fernando Macedo, Suelen Silvestrini, Mayra Santos** — G5, em onboarding gradual
- **Futuramente**: time KAB inteiro, conforme adoção

## Regra fundamental — os 3 gatilhos

Conteúdo **NUNCA** entra aqui se dispara qualquer um destes:

1. 💰 **Dinheiro com nome próprio** — salário, comissão, bônus individual, pró-labore, negociação nominal
2. 👤 **Pessoa específica** — avaliação, conflito, contratação/desligamento, performance individual nomeada
3. ⚖️ **Peso jurídico/contratual** — contrato, NDA, litígio, compliance, LGPD, obrigação societária

Em dúvida → não entra. Vai pro cofre pessoal do Erico.

Detalhes em [[empresa/contexto/PRINCIPIOS]].

## Como navegar

| Pasta | O que tem |
|---|---|
| `agentes/tony/` | Identidade formal do Bruce no escopo time KAB |
| `areas/` | 7 áreas operacionais: produção, vendas, qualidade, logística, manutenção, RH, financeiro |
| `inbox/` | Capturas brutas por pessoa (Erico, Gabriel, ...). Consolidação manual ou via skill |
| `empresa/` | Princípios e arquitetura do próprio cérebro |
| `skills/` | Skills compartilháveis com o time (≠ `~/.claude/skills/` pessoais do Erico) |
| `onboarding/` | Como entrar pro fluxo (1-pager pra novos membros) |

## Como capturar algo

```
~/Área de trabalho/Erico/kab-cerebro/
└── inbox/{seu_nome}/2026-05-22-{slug}.md
```

Ou via Claude Code: `/save` (skill compartilhada — Sprint 2).

## Fluxo

```
1. Captura em inbox/{nome}/
2. (futuro) Skill /consolidar-inbox lê sidecar .meta.yaml, sugere destino
3. Aprovação humana → move pra areas/{x}/contexto/ ou rotinas/
4. /sync-kab → git push origin main
```

## Stack

- **Versionamento**: Git + GitHub (privado)
- **Sync**: `/sync-kab` (push) + `/cerebro-kab` (pull) — Sprint 2
- **Agente**: Bruce (mesmo do my-second-brain, escopo limitado quando opera aqui)
- **VPS**: HERMES clona em `/opt/data/kab-cerebro/`

## Origem

Adotado em 2026-05-22 a partir da metodologia "Arquitetura do Cérebro / OpenClaw" — versão híbrida invertida (vault pessoal é o cofre, este é o espaço compartilhável). Plano em `~/.claude/plans/agora-vamos-para-algo-playful-diffie.md` no laptop do Erico.
