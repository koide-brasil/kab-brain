---
name: sync-team
description: Alias operacional preferido de `team-sync`: promove notas maduras do inbox privado do autor para staging compartilhado, com conferência obrigatória de sensíveis e sanitização/retenção quando necessário.
---

# sync-team — alias preferido de team-sync

Use esta skill quando o usuário disser `sync-team`, “sincroniza com o time”, “manda pro staging”, “compartilha com o G5” ou “promove meu inbox”.

Regra: execute exatamente o fluxo de [[../team-sync/SKILL]].

Resumo executivo:

1. Só ler/mover `inbox/{autor}/` do requester.
2. Ler cada nota inteira antes de promover.
3. Conferir os 3 gatilhos sensíveis.
4. Se seguro: mover para `staging/{area}/`.
5. Se parcialmente sensível: manter original no inbox e criar versão sanitizada no staging.
6. Se sensível demais: manter no inbox.
7. Rodar `tony-sync`/skill `sync` após alterações.
8. Reportar sem repetir dados sensíveis.

Staging é compartilhado mas não canônico. Canônico só após auditoria/consolidação Érico/Bruce.
