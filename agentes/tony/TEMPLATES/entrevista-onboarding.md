---
tipo: template
area: agentes
agente: tony
status: ativo
criado: 2026-06-10
atualizado: 2026-06-10
tags: [tony, entrevista, onboarding, rotina, colaborador]
---

# Template — Entrevista de rotina (onboarding de colaborador)

> Objetivo: Tony aprender a rotina REAL de cada colaborador (G5 incluso) pra ajudar e
> agilizar as tarefas dele. Decisão do Erico em 2026-06-10: entrevista com TODOS.
>
> **Antes de aprofundar**: ler o contexto da área em `areas/{x}/contexto/` e o mapa de
> processo correspondente. A entrevista pergunta o **DELTA** entre o processo oficial e
> a prática — não desperdiça pergunta com o que o documento já responde.
>
> **Regras invioláveis**: rule 13 (perfil neutro — sem juízo de pessoa, sem dado nominal
> sensível), gatilhos 12.3 na captura, rule 17 (Tony NUNCA promete nem implementa
> automação — isso é decisão Érico/Bruce). Não insistir: oferecer, 1 lembrete depois de
> ~1 semana, depois parar.

## As 6 perguntas base (adaptar à área, manter curtas)

1. Como é teu dia/semana típica? O que acontece todo dia e o que é semanal/mensal?
2. Quais tarefas repetitivas te comem mais tempo?
3. Que informação você vive precisando e demora pra conseguir? De quem/de onde depende?
4. Que relatórios ou planilhas você produz, com que frequência e pra quem?
5. O que você pediria pra um assistente que sabe consultar DBCorp, RHiD, RD Station e Drive?
6. Tem algo que você faz manualmente que suspeita que dava pra automatizar?

+ pergunta delta (depois de ler o mapa da área): *"O mapa de processo da tua área diz
que [X] — na prática funciona assim mesmo? Onde trava?"*

## Registro da entrevista (1 nota por pessoa)

Salvar em `staging/{area}/AAAA-MM-DD-rotina-{slug}.md` (captura via rule 12; se a
pessoa contar algo que dispara gatilho 12.3, esse trecho NÃO entra — escalar pro Érico):

```yaml
---
tipo: entrevista-rotina
area: {area}
autor: {slug}
status: staging
criado: AAAA-MM-DD
atualizado: AAAA-MM-DD
tags: [entrevista, rotina, {area}]
---
```

### Seções da nota

- **Rotina real** — dia/semana/mês típicos, em linguagem direta
- **Tarefas repetitivas que comem tempo** — lista, com frequência estimada
- **Travas de informação** — o que falta, de quem depende, quanto tempo perde
- **Relatórios produzidos/consumidos** — o quê, frequência, destinatário
- **Delta vs processo oficial** — onde a prática diverge do mapa/PR (sem juízo — fato)
- **Candidatos a automação/agilização** — ideias da pessoa + ideias do Tony, marcadas
  como CANDIDATO (decisão é do Érico/Bruce)
- **Links** — `[[{area}]]`, `[[pessoa]]`, mapa de processo, PRs citados

## Pós-entrevista (3 destinos)

1. **Preferências e padrões de trabalho** → `/opt/data/memories/users/{slug}.md` (rule 13)
2. **Nota da rotina** → `staging/{area}/` + `tony-sync` (consolidador promove depois)
3. **Resumo pro Érico** → DM: 5-10 linhas por entrevista concluída — quem, 3 achados
   principais, candidatos a automação. Érico/Bruce decidem o que vira cron/skill.
