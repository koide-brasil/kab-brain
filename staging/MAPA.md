---
tipo: mapa
area:
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
tags: [mapa, staging]
---

# staging/ — MAPA

> Captura compartilhada, ainda provisória. 2º estágio do fluxo de 3.

## Subpastas

- `producao/` — staging de produção
- `vendas/` — staging de vendas
- `qualidade/` — staging de qualidade
- `logistica/` — staging de logística
- `manutencao/` — staging de manutenção
- `rh/` — staging de RH
- `financeiro/` — staging de financeiro

## Como ler

Cada pasta de área tem notas `.md` (+ sidecar `.meta.yaml` quando captura foi automática) aguardando consolidação noturna pra virar canônico em `areas/{x}/contexto/`.

Status do frontmatter indica maturidade:
- `inbox` → recém-promovido do inbox individual
- `staging` → visto pelo time
- `revisado` → aprovado pelo dono da área
- `consolidando` → marcado pro Bruce promover

## Links

- [[_sobre]]
- [[../MAPA]]
