---
tipo: nota
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [staging, fluxo, sprint-3]
---

# staging/ — área de captura compartilhada (provisória)

> **2º estágio** do fluxo de captura do `kab-brain`, entre `inbox/{pessoa}/` (provisório individual) e `areas/{x}/contexto/` (canônico oficial).

## Pra que serve

Permitir que o **time enxergue durante o dia** o que cada um capturou, **antes** da consolidação noturna virar memória oficial.

Conceito da Aula 03 do curso Pixel "Da teoria pra prática":
> "Inbox sincronizado é colaboração provisória. Consolidação é memória oficial."

## Como funciona

```
1. Eu capturo  →  inbox/erico/2026-05-22-regra-nova-qualificacao.md
                  (provisório, só meu, com sidecar .meta.yaml)

2. /team-sync  →  staging/vendas/2026-05-22-regra-nova-qualificacao.md
                  (provisório, visível ao time, ainda NÃO canônico)

3. Bruce consolida (noturno)
                  Promove pra → areas/vendas/contexto/qualificacao.md
                  (canônico oficial)
```

## Status que aparecem aqui

| Campo `status` | O que significa |
|---|---|
| `inbox` | Recém-chegado, ainda não revisado por humano |
| `staging` | Time já viu, mas ainda provisório |
| `revisado` | Aprovado pelo dono da área, pronto pra consolidar |
| `consolidando` | Marcado pra rotina noturna do Bruce promover |

Depois de consolidado, a nota **sai daqui** e vai pra `areas/{x}/contexto/` com `status: ativo`.

## Regras

1. **Conteúdo aqui é compartilhável** — todo mundo do time vê. Vale a regra dos 3 gatilhos: nada de dinheiro nominal, pessoa específica, jurídico.
2. **Não edite canônico daqui** — esta pasta é só pra material em amadurecimento. Memória oficial vive em `areas/{x}/contexto/`.
3. **Idempotência** — `/team-sync` não duplica. Se o item já existe no staging com o mesmo slug, atualiza em vez de criar segundo.

## Subpastas

Uma por área da KAB (mesmo conjunto das `areas/`):

- `producao/`
- `vendas/`
- `qualidade/`
- `logistica/`
- `manutencao/`
- `rh/`
- `financeiro/`

Cada uma é um simples "saco" de notas — sem subestrutura. Conteúdo aqui é provisório por natureza, então não precisa de organização sofisticada.

## Links

- [[../inbox/_TEMPLATE/COMO-USAR]]
- [[../CLAUDE]] (seção 5 — Fluxo de captura)
- [[../empresa/contexto/ARQUITETURA]]
- [[../empresa/skills/team-sync/SKILL]]
