---
tipo: nota
area: agentes
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [arquitetura, agentes, hierarquia]
---

# Arquitetura dos agentes Koide — 3 camadas

Como os agentes IA se relacionam no ecossistema Koide.

```
┌──────────────────────────────────────────────────────────────────┐
│                          🤖 BRUCE                                │
│  Agente pessoal do Erico (cofre completo, sem filtro)            │
│  Vault: erico-brain/  (eshiroiwa/my-second-brain GitHub privado) │
│  Serve a: Erico (só ele)                                         │
│  Acesso: TUDO (KAB sensível + investimentos + IA-tech + pessoal) │
│  Tom: informal, sarcástico, pode xingar                          │
└──────────────────────────────────────────────────────────────────┘
                              ↕  delega / aponta pra
┌──────────────────────────────────────────────────────────────────┐
│                          🤖 TONY (este vault)                    │
│  Agente do time KAB (G5 + futuros departamentais)                │
│  Vault: kab-brain/  (koide-brasil/kab-brain GitHub time)         │
│  Serve a: 5 humanos (Erico + Gabriel + Mayra + Carla + Fernando) │
│  Acesso: SÓ não-sensível (regra dos 3 gatilhos)                  │
│  Tom: profissional sóbrio, claro pra equipe diversa              │
└──────────────────────────────────────────────────────────────────┘
                              ↕  comanda (futuro Sprint 5+)
┌──────────────────────────────────────────────────────────────────┐
│                  🤖 HERMES DEPARTAMENTAIS (futuro)               │
│  Agentes específicos por área (1 por departamento)               │
│  - Tony-Vendas (Gabriel)                                         │
│  - Tony-RH (Mayra)                                               │
│  - Tony-Financeiro (Carla)                                       │
│  - Tony-Produção (Fernando)                                      │
│  - Tony-Qualidade, Tony-Logística                                │
│  Cada um com escopo restrito ao próprio departamento             │
│  Reporta ao Tony (que reporta ao Erico/G5)                       │
└──────────────────────────────────────────────────────────────────┘
```

## Por que 3 camadas

| Razão | Detalhe |
|---|---|
| **Privacidade** | Bruce vê tudo (cofre Erico). Tony só vê o que pode ser compartilhado. Hermes departamentais só veem o próprio dept |
| **Custo** | Bruce = Opus 4.7 (caro, contexto pessoal). Tony = Sonnet 4.6 (equilíbrio). Hermes deps = Haiku 4.5 (barato, escopo restrito) |
| **Especialização** | Cada camada domina seu escopo melhor que um agente genérico |
| **Governança** | Erico aprova mudanças no Tony; gerente da área aprova no Hermes do dept |
| **Escalabilidade** | Hoje só Erico usa Bruce. Sprint 3+ todo G5 usa Tony. Sprint 5+ cada dept tem seu Hermes |

## Fluxo de informação

### De cima pra baixo (Bruce → Tony → Hermes)

- Bruce treina Tony: Erico aprova novas regras em `kab-brain/empresa/contexto/` que viram doutrina pro Tony
- Tony treina Hermes departamental: regras institucionais alcançam os agentes de área

### De baixo pra cima (Hermes → Tony → Bruce)

- Hermes dept captura algo: vai pra `inbox/{nome}/` no kab-brain. Promove pra `staging/`, depois `areas/{x}/contexto/`
- Tony detecta algo sensível (3 gatilhos): bloqueia e sugere ir pro cofre pessoal do Erico
- Erico via Bruce: decide se promove pro kab-brain (gerais) ou mantém só no cofre

## Quando Tony deve "passar a bola pro Bruce"

| Pedido | Por quê passa pro Bruce |
|---|---|
| Query DBCorp com valores específicos | Tony não tem credenciais sensíveis |
| Análise de margem por cliente | Sensibilidade comercial |
| EBITDA real, intercompany, NEs | 3 gatilhos disparados |
| Decisões de pessoal (avaliação, promoção, demissão) | Pessoa específica + sensível |
| Política comercial real (lock, fórmula, pass-through) | Estratégico |
| Investimento imobiliário em leilão | Escopo do Bruce (Erico investidor) |

Comando típico: "Tony, isso aqui é sensível. Pede pro Bruce executar via `/sync` depois."

## Quando Tony resolve sozinho

| Pedido | Como faz |
|---|---|
| "Como funciona o processo X?" | Consulta `empresa/sgk/`, `areas/{x}/contexto/` |
| "Quais são nossos clientes?" | `empresa/clientes-formais.md` |
| "Como acessar o Drive?" | `empresa/contexto/integracoes/google-drive-mapeamento.md` |
| "O que é IQF?" | `empresa/glossario.md` + `empresa/indicadores/IQF Fornecedores.md` |
| "Como apresentar capacidade pro cliente?" | `empresa/contexto/pitch-capacidade.md` |
| "Prazos de RNC?" | `empresa/sgk/rnc-fluxo-resumido.md` |
| Consolidar inbox semanal | `/consolidar-inbox` (skill própria do Tony) |
| Gerar relatório agregado (sem nomes/valores) | Operação normal |

## Onde cada agente vive

| Agente | Onde roda | Onde vive a definição |
|---|---|---|
| **Bruce** | Laptop Erico + HERMES VPS (cron) | `~/.claude/CLAUDE.md` + `erico-brain/agentes/bruce/` |
| **Tony** | Laptop Erico (Sprint 1-2) + VPS dedicada G5 (Sprint 3+) + Laptops time | `kab-brain/CLAUDE.md` + `kab-brain/agentes/tony/` |
| **Hermes deps** | TBD (Sprint 5+) | TBD |

## Roadmap evolutivo

| Sprint | Marco | Agentes vivos |
|---|---|---|
| 1 (concluído) | Bruce funcionando, vault Erico maduro | Bruce |
| 2 (em curso 2026-05) | Tony criado, kab-brain populado com seed | Bruce + Tony |
| 3 | G5 começa a usar Tony, capturas via `inbox/{nome}/` | Bruce + Tony (5 humanos) |
| 4 | Tony ganha credenciais próprias (read-only DBCorp/RDStation/RHiD) | Bruce + Tony executor |
| 5+ | Hermes departamentais (1 por área) | Bruce + Tony + N Hermes deps |

## Links

- [[tony/IDENTITY]] — quem é o Tony
- [[../empresa/contexto/ARQUITETURA]] — arquitetura do kab-brain (estrutura de pastas)
- [[../empresa/contexto/PRINCIPIOS]] — regra dos 3 gatilhos
