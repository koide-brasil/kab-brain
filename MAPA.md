# 🗺️ MAPA — kab-cerebro

> GPS rápido do cérebro operacional KAB.

## Entrada

1. [[README]] — visão geral
2. [[CLAUDE]] — instruções pra agentes (LER PRIMEIRO se você for Tony)
3. **[[empresa/contexto/PRINCIPIOS]]** — regra atualizada (4 níveis audiência + 2 categorias bloqueadoras)
4. **[[empresa/contexto/MATURIDADE-E-FONTES]]** — hierarquia de confiança, status e fontes canônicas
5. [[empresa/contexto/koide-brasil-visao-geral]] — institucional KAB
6. [[empresa/glossario]] — siglas e termos KAB
7. [[empresa/equipe/g5]] — Comitê Estratégico (5 + 2 fora)
8. [[agentes/_arquitetura]] — 3 camadas (Bruce → Tony → Hermes deps)
9. [[empresa/sgk/MAPA]] — Sistema de Gestão Koide
10. [[empresa/contexto/integracoes/_sobre]] — sistemas externos (Drive, DBCorp, RD Station, RHiD)
11. [[empresa/automacoes-existentes]] — skills do Bruce que tocam KAB
12. `empresa/drive-index/` — resumos de arquivos do Drive
13. [[empresa/clientes-formais]] — quem somos parceiros
14. [[empresa/contexto/pitch-capacidade]] — argumentação comercial
15. `empresa/projetos/` — projetos institucionais (BCP, BI, Daily Roadmap, 1Password)
    - `empresa/projetos/ai-first/` — KAB AI First, fluxo RFQ e Academia de Agentes
16. `empresa/reunioes/` — atas (comerciais, cliente, fornecedor — atas G5 em `_g5/reunioes/`)
17. `empresa/cotacoes/` — pipeline comercial (pasta nova)
18. `empresa/indicadores/` — KPIs operacionais não-sensíveis
19. **🔒 [[_g5/_PRINCIPIOS]] — Zona G5-only** (atas G5, decisões estratégicas — invisível pros Hermes deps futuros)

## Identidade do agente (Tony)

- [[agentes/tony/IDENTITY]] — quem é o Tony (distinto do Bruce, persona própria)
- [[agentes/tony/SOUL]] — personalidade
- [[agentes/tony/USER]] — G5 e quem mais Tony serve
- [[agentes/tony/MEMORY]] — onde Tony lembra (institucional + cross-sessão)
- [[agentes/tony/HEARTBEAT]] — rotinas automáticas
- [[agentes/tony/TOOLS]] — skills + permissões
- [[agentes/_arquitetura]] — Tony no contexto Bruce → Tony → Hermes deps

## Áreas (7)

Cada área tem `contexto/sobre-o-departamento.md` (seed migrada do cofre pessoal 2026-05-23).

| Área | MAPA | Conteúdo seed | Detalhe |
|---|---|---|---|
| Produção | [[areas/producao/MAPA]] | [[areas/producao/contexto/sobre-o-departamento]] | Processo, OEE, OPs, refugo |
| Vendas | [[areas/vendas/MAPA]] | [[areas/vendas/contexto/sobre-o-departamento]] | Funil, qualificação, ATAs sem nominais |
| Qualidade | [[areas/qualidade/MAPA]] | [[areas/qualidade/contexto/sobre-o-departamento]] | SGK, RNC, normas |
| Logística | [[areas/logistica/MAPA]] | [[areas/logistica/contexto/sobre-o-departamento]] | Frete, OTD, expedição |
| Manutenção | [[areas/manutencao/MAPA]] | [[areas/manutencao/contexto/sobre-o-departamento]] | OS, paradas, ferramentaria |
| RH | [[areas/rh/MAPA]] | [[areas/rh/contexto/sobre-o-departamento]] | Políticas, treinamentos |
| Financeiro | [[areas/financeiro/MAPA]] | [[areas/financeiro/contexto/sobre-o-departamento]] | KPIs públicos, fluxo agregado |

Visão geral cross-áreas: [[areas/_MAPA-Departamentos]]

## Inbox

- `inbox/erico/` — capturas do Erico cross-brain
- `inbox/_TEMPLATE/` — esqueleto pra novos membros (Gabriel será o próximo)

## Skills

- `skills/` — compartilháveis com time
- `empresa/skills/` — skills do escopo cérebro (consolidar-inbox, etc)

## Onboarding

- `onboarding/` — passo-a-passo pra novos membros (Sprint 3)

## Stack

- Git + GitHub privado (`eshiroiwa/kab-cerebro`)
- Branch única `main`
- Sync via `/sync-kab` (Sprint 2)

## Cross-link com vault pessoal

- Conteúdo sensível **não** vive aqui — vive em `my-second-brain` (cofre privado do Erico)
- Wikilinks só dentro deste repo
- Referências cross-repo são textuais

## Origem

OpenClaw híbrida invertida, adotada 2026-05-22.
