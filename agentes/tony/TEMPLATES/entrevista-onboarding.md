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

## Fluxo em 3 fases (desenho do Érico, 10/06)

**Gatilho**: a pessoa diz *"Vamos fazer a entrevista inicial"* (ou variação clara).
Tony NÃO oferece — espera o gatilho (o Érico explica a iniciativa antes).

### Fase 1 — Tony mostra o que sabe (espelho curto)

Antes de perguntar qualquer coisa, Tony lê o contexto da área (mapa de processo,
`areas/{x}/contexto/`, memórias) e apresenta um resumo de **no máximo 10 linhas** do
que entende sobre o processo daquela pessoa: principais atividades, indicadores, fluxo.
Aí pede: *"confirma o que está certo, corrige o que está errado — alguma coisa pode
ter mudado"*. Isso mostra valor logo de cara e corrige drift dos documentos (mapas têm
fósseis — ex.: plano de ações de 2020).

> **🔔 Divergência papel × prática = NOTIFICAR (em qualquer fase).** Se a pessoa disser
> que algo está errado ou que não faz daquele jeito: NÃO defender o documento — a
> prática da pessoa é o dado. Registrar na seção "Delta vs processo oficial" da nota e
> **avisar o Érico no DM na hora** (3-5 linhas: área · o que o papel diz · o que a
> prática faz). Princípio do Érico: **adaptar o papel à prática, não o contrário** —
> exceto regras inegociáveis (ISO/SGK compliance, segurança, jurídico); e mesmo nessas,
> o objetivo é facilitar a vida do colaborador. Tony NÃO altera documento nenhum — só
> reporta.

### Fase 2 — Rotina real e maiores dificuldades

Conversa, não interrogatório. Núcleo obrigatório:

1. Como é teu dia/semana típica? O que é diário e o que é semanal/mensal?
2. Quais as tuas maiores dificuldades hoje?

Menu complementar (usar conforme a conversa render — não despejar tudo):

3. Quais tarefas repetitivas te comem mais tempo?
4. Que informação você vive precisando e demora pra conseguir? De quem/de onde depende?
5. Que relatórios ou planilhas você produz, com que frequência e pra quem?
6. O que você pediria pra um assistente que sabe consultar DBCorp, RHiD, RD Station e Drive?
7. Tem algo manual que você suspeita que dava pra automatizar?

### Fase 3 — Lacunas abertas → perguntas diárias direcionadas

Ao encerrar, Tony registra na memória do usuário (`memories/users/{slug}.md`) uma seção
**`## Lacunas abertas`**: o que ficou sem resposta, o que ele ainda não entende daquele
processo, o que vale aprofundar. A **pergunta diária da manhã** daquela pessoa passa a
ser formulada a partir dessas lacunas + da nota de rotina — 1 pergunta por dia,
direcionada, que ou tira uma dúvida real do Tony ou agrega conhecimento novo. Lacuna
respondida → risca da lista e captura no lugar certo (rule 12). Lista vazia → pergunta
diária volta ao modo exploratório normal.

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

## Pós-entrevista (4 destinos)

1. **Preferências e padrões de trabalho** → `/opt/data/memories/users/{slug}.md` (rule 13)
2. **Nota da rotina** → `staging/{area}/` + `tony-sync` (consolidador promove depois)
3. **Lacunas abertas** → seção `## Lacunas abertas` em `memories/users/{slug}.md` —
   alimenta as perguntas diárias direcionadas (Fase 3)
4. **Resumo pro Érico** → DM: 5-10 linhas por entrevista concluída — quem, 3 achados
   principais, candidatos a automação. Érico/Bruce decidem o que vira cron/skill.
