---
tipo: nota
status: ativo
criado: 2026-06-12
atualizado: 2026-06-12
tags: [mapa, raiz]
---

# 🗺️ MAPA — kab-brain

> GPS rápido do cérebro operacional KAB (compartilhado com o time — só conteúdo não-sensível).

## Entrada (ler nesta ordem)

1. [[README]] — visão geral
2. [[CLAUDE]] — instruções pra agentes (LER PRIMEIRO se você for Tony)
3. **[[empresa/contexto/PRINCIPIOS]]** — regra de sensibilidade (níveis de audiência + categorias bloqueadoras)
4. **[[empresa/contexto/MATURIDADE-E-FONTES]]** — hierarquia de confiança, status e fontes canônicas
5. [[empresa/glossario]] — siglas e termos KAB

## Estrutura

| Pasta | Conteúdo | GPS |
|---|---|---|
| `areas/` | 7 áreas (financeiro, logistica, manutencao, producao, qualidade, rh, vendas) — cada uma com MAPA, contexto, projetos, rotinas e skills | [[areas/MAPA]] |
| `empresa/` | Nível global: contexto, cotacoes, drive-index, equipe, indicadores, projetos, reunioes, sgk, skills | [[empresa/MAPA]] |
| `inbox/` | 1º estágio de captura — uma pasta por autor (carla, erico, fernando, flavio, gabriel, jonatas, josielen, madora, suellen) + `_TEMPLATE/` | `inbox/_TEMPLATE/COMO-USAR.md` |
| `staging/` | 2º estágio — captura compartilhada provisória, espelha as 7 áreas | [[staging/MAPA]] |
| `agentes/` | Agentes IA do ecossistema (Tony) + arquitetura 3 camadas | [[agentes/MAPA]] |
| `91-Memoria/` | Memória cross-sessão dos agentes (`_bruce-hermes-cross-sessao/`) | — |
| `_g5/` | 🔒 Zona G5-only — atas, decisões e projetos estratégicos | [[_g5/_PRINCIPIOS]] |
| `onboarding/` | Passo-a-passo pra novos membros (tony.md/html) | — |
| `skills/` | Skills compartilháveis com o time (vazia por enquanto) | — |

## Fluxo de captura (3 estágios)

Nota nasce em `inbox/{autor}/` (individual), é promovida via `team-sync` pra `staging/{area}/` (compartilhada provisória, com gate de sensibilidade) e consolidada via `consolidar-inbox` em `areas/{x}/contexto/` (canônico oficial).

## Convenções

- Conteúdo sensível (dinheiro nominal / pessoa em avaliação / jurídico) **não** vive aqui — vive no cofre privado do Erico
- Wikilinks só dentro deste repo; referências cross-repo são textuais
- Git + GitHub privado (`koide-brasil/kab-brain`), branch única `main`, sync via `/sync`

## Origem

OpenClaw híbrida invertida, adotada 2026-05-22.
