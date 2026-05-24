---
tipo: arquitetura
area:
status: canonico
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [arquitetura, sistema, sync, cross-brain]
---

# ARQUITETURA — Sistema de cérebros KAB

> Desenho do sistema completo. Como `kab-cerebro` se relaciona com o cofre pessoal do Erico, com a VPS HERMES, e (futuramente) com estações dos gerentes.

## Visão geral

```
┌─────────────────────────────────────────────────────────────────┐
│ COFRE PESSOAL DO ERICO (privado, só Erico + HERMES)             │
│ git@github.com:eshiroiwa/my-second-brain                        │
│                                                                  │
│ ├── 01-KAB/ (260 notas — INCLUI o sensível)                     │
│ ├── 02-Investimentos/, 03-IA-Tech/, 04-Pessoal/                 │
│ ├── 91-Memoria/ (perfil + contexto + log-decisoes)              │
│ ├── 92-Skills/ (skills completos do Bruce)                      │
│ └── agentes/bruce/ (identidade canônica)                        │
└─────────────────────────────────────────────────────────────────┘
                       ↕  (cross-link textual, sem wikilink)
┌─────────────────────────────────────────────────────────────────┐
│ ESTE REPO — kab-cerebro (compartilhável, time KAB)              │
│ git@github.com:eshiroiwa/kab-cerebro                            │
│                                                                  │
│ ├── agentes/tony/ (escopo time)                            │
│ ├── areas/{producao,vendas,...} (operacional NÃO-sensível)      │
│ ├── inbox/{erico,gabriel,...}/                                  │
│ ├── empresa/contexto/ (PRINCIPIOS, ARQUITETURA)                 │
│ └── skills/ (compartilháveis com time)                          │
└─────────────────────────────────────────────────────────────────┘
                          ↕
                  ┌────────────────┐
                  │  HERMES (VPS)  │  ← acessa AMBOS repos
                  │  /opt/data/    │     escopo conforme cwd
                  │  - my-second-  │
                  │    brain/      │
                  │  - kab-cerebro/│
                  └────────────────┘
```

## Por que essa arquitetura

A metodologia OpenClaw prescreve **3 repos** (pessoal/empresa/diretoria). Adotamos **versão híbrida invertida com 2 repos**:

| OpenClaw padrão | Nossa adoção | Por quê |
|---|---|---|
| 3 repos | 2 repos | Time KAB ainda não usa Claude; criar 3 agora é burocracia |
| Repo "Diretoria" pra esconder sensível | Cofre pessoal do Erico já cobre | Erico é o único com acesso; usar o que já existe |
| Repo "Empresa" pra compartilhar com time | Mantido — é o **kab-cerebro** | Faz sentido — espaço novo, regras claras |
| Branch staging + consolidação noturna | Só `main` | Com 1-2 humanos, staging vira teatro |
| Sidecar `.meta.yaml` em TUDO | Só capturas automáticas | Frontmatter cobre captura manual |
| Agente geral OpenClaw (instalar CLI) | HERMES (Nous Research) já cumpre | Maduro, integrado |

## Fluxo de dados

### Captura nova chega

```
Erico tem ideia em sessão Claude no kab-cerebro
   ↓
"/save-kab" → inbox/erico/2026-05-22-{slug}.md
              + sidecar .meta.yaml (autor, fonte, tipo, destino_sugerido)
   ↓
Skill PERGUNTA: passou nos 3 gatilhos?
   ├─ Sim → fica em inbox/erico/, aguarda /consolidar-inbox
   └─ Não → sugere mover pro cofre pessoal (my-second-brain)
```

### Consolidação (futuro Sprint 3)

```
HERMES roda /consolidar-inbox às 22h
   ↓
Lê todos inbox/*/ + sidecars
   ↓
Para cada captura:
   1. Re-valida 3 gatilhos (defesa em camadas)
   2. Aplica destino_sugerido se confiança alta
   3. PERGUNTA ao operador humano se confiança baixa
   ↓
Commita: move pra areas/{x}/contexto/ ou rotinas/
Original fica em inbox/{nome}/.processed/ (audit trail)
```

### Sync entre instâncias

```
Laptop Erico edita kab-cerebro/areas/vendas/contexto/funil.md
   ↓
/sync-kab → git push origin main
   ↓
GitHub
   ↓
HERMES (cron a cada 10min): cd /opt/data/kab-cerebro && git pull --ff-only
   ↓
Bruce-HERMES vê alteração na próxima sessão
```

(Esse cron é o mesmo do my-second-brain — estendido pra incluir kab-cerebro.)

## Cross-brain references

Notas no `kab-cerebro` podem **referenciar** conteúdo do cofre pessoal, mas **não com wikilink** (vai quebrar). Padrão:

```markdown
> Política comercial detalhada (incluindo cláusulas confidenciais): no cofre pessoal do Erico, `my-second-brain/01-KAB/Projetos/Politica Comercial.../`.
```

Quando o Erico está operando no `kab-cerebro` e precisa de algo do cofre, ele:
1. Anota referência textual neste repo
2. Abre nova sessão no `my-second-brain` quando precisar do detalhe

## Permissionamento

| Princípio | Mecanismo |
|---|---|
| Cofre pessoal NÃO é acessível ao time | GitHub repo `my-second-brain` é privado, sem colaboradores |
| Time vê só este repo | GitHub `kab-cerebro` adiciona colaboradores via `gh repo` ou interface |
| Erico aprova tudo que entra | `.github/CODEOWNERS` força review |
| Captura cai nos 3 gatilhos | Skill `/save-kab` (Sprint 2) bloqueia antes de gravar |
| Pre-commit blocker (defesa última) | `.git/hooks/pre-commit` valida — Sprint 5+ |

## Escalabilidade futura

Quando o time crescer (3+ pessoas usando ativamente):

| Mudança | Quando | Por quê |
|---|---|---|
| Adotar branch `staging` | Time ≥ 3 humanos no repo | Evitar conflito em main |
| Consolidação noturna automática | Time ≥ 3 humanos | Erico não dá conta de aprovar manualmente |
| Repo "Diretoria" separado | Sócios da KAB precisarem espaço próprio | Hoje só Erico — cofre pessoal cobre |
| CI/CD pra validar 3 gatilhos | Quando confiar em LLM judge | Hoje regex + humano |

## Onde fica cada componente

| Componente | Path laptop | Path HERMES |
|---|---|---|
| Vault pessoal | `~/Área de trabalho/Erico/My_second_brain/` | `/opt/data/my-second-brain/` |
| kab-cerebro | `~/Área de trabalho/Erico/kab-cerebro/` | `/opt/data/kab-cerebro/` |
| Skills Bruce (link) | `~/.claude/skills/` (symlinks pro vault) | `/opt/data/skills/` (rsync do vault — Sprint 1) |
| Memória cross-sessão | `~/.claude/projects/.../memory/` | `/opt/data/.../memory/` |
| Secrets | `~/.config/*.env` | `/opt/data/.config/*.env` |

---

## Links

- [[PRINCIPIOS]] (regra dos 3 gatilhos)
- [[../../CLAUDE]]
- [[../../README]]
- [[../../agentes/tony/IDENTITY]]
