---
tipo: principio
area: g5
status: canonico
criado: 2026-05-23
atualizado: 2026-05-23
tags: [g5, audiencia-restrita, confidencial]
visibilidade: g5-only
---

# 🔒 Zona G5 — princípios

> **Pasta de acesso restrito.** Conteúdo aqui é visível APENAS pros 5 membros do G5 (Erico + Gabriel + Mayra + Carla + Fernando) + Tony (agente).

## Por que existe esta pasta

A regra principal do kab-brain (4 níveis de audiência — ver [[../empresa/contexto/PRINCIPIOS]]) cobre 95% dos casos. Mas há conteúdo que:

- ✅ É legítimo discutir entre os 5 do G5
- ❌ Não deve chegar a **Hermes departamentais** (Sprint 5+) nem **novos colaboradores** que ganhem acesso ao kab-brain

Exemplo: ata de reunião G5 sexta-feira onde se discute estratégia de M&A, conflito com cliente sensível, decisões de pessoal de gerência, etc.

## Conteúdo aceito aqui

| Tipo | Exemplo |
|---|---|
| Atas G5 | Reuniões semanais G5, decisões estratégicas |
| Decisões estratégicas | M&A, mudança de modelo de negócio, decisões pessoais de gerência |
| Projetos confidenciais | Negociações com cliente Tier 1 com NDA mútuo |
| Análises de risco específicas | Antes de virar política compartilhável |
| Plano de sucessão | Quem sucede quem em qual papel |

## Conteúdo que NÃO entra aqui

Continua só no erico-brain:

| Tipo | Por quê |
|---|---|
| Salário/holerite individual | RH-confidencial — só Erico+Mayra (Mayra é G5 mas isso é restrito ao papel RH) |
| Intercompany Koide Kokan | Financeiro estratégico — só Erico+Carla |
| NE / DRE detalhado | Idem |
| Investimentos pessoais Erico | Pessoal — só Erico |

## Como Tony deve tratar `_g5/`

### Quando operador é membro do G5
✅ Tony lê, escreve, opera normalmente. Comporta-se como em qualquer outra pasta do kab-brain.

### Quando operador é Hermes departamental (Sprint 5+)
❌ Tony **NÃO acessa** `_g5/`. Se Hermes-Vendas perguntar "quais decisões o G5 tomou semana passada?" → Tony responde: "Essa informação está em zona restrita G5. Pergunte ao Gabriel diretamente."

### Quando operador é colaborador novo (Sprint 6+, hipotético)
❌ Idem — `_g5/` é invisível pra novos colaboradores.

## Implementação técnica

| Camada | Status hoje | Status futuro (Sprint 5+) |
|---|---|---|
| Convenção `_g5/` + _PRINCIPIOS | ✅ Vigente | ✅ Vigente |
| Heurística `/sync` não alerta dentro de `_g5/` | ✅ Implementado 2026-05-23 | ✅ Mantido |
| Tony respeita convenção | ✅ Instruído no prompt | ✅ Reforçado |
| GitHub ACL real | ❌ Repo todo acessível aos membros do kab-brain | ⚠️ Mover `_g5/` pra repo separado `kab-g5-private/` quando Hermes deps tiverem acesso |

**Limitação atual**: até Sprint 5+, qualquer pessoa com acesso ao repo `koide-brasil/kab-brain` no GitHub vê esta pasta. Hoje só G5 tem acesso ao repo → OK. Quando primeiro gerente departamental ganhar acesso → mover pra repo separado.

## Captura nova pra `_g5/`

1. Cria nota em `_g5/{reunioes,projetos,decisoes}/`
2. Frontmatter inclui `visibilidade: g5-only`
3. Tony **NÃO aplica heurística sensível** dentro de `_g5/`
4. `/sync` empurra normalmente pro GitHub
5. Membros do G5 leem via clone local

## Auditoria

Erico revisa periodicamente `_g5/` pra confirmar que conteúdo realmente requer restrição. Se algo virou "compartilhável" depois de tempo, move pra `empresa/`.

## Links

- [[../empresa/contexto/PRINCIPIOS]] — regra principal (4 níveis audiência + 2 categorias bloqueadoras)
- [[../empresa/equipe/g5]] — quem são os 5
- [[../agentes/_arquitetura]] — Tony respeita restrição
- [[../agentes/tony/IDENTITY]] — Tony sabe filtrar audiência
