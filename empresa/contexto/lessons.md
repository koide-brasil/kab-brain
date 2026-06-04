---
tipo: nota
area:
status: canonico
criado: 2026-06-04
atualizado: 2026-06-04
autor: bruce
tags: [empresa, contexto, lessons]
---

# KAB — lições aprendidas (nível empresa)

> Mais recentes primeiro. **Cada lição gera uma ação.**

### [2026-06-04] Gestores devem escalar com diagnóstico, opções e recomendação
- **Contexto:** caso operacional crítico mostrou tendência de escalar impasses para a presidência sem alternativas estruturadas.
- **Lição:** a KAB valoriza líderes que cresceram internamente, mas gestão precisa ser treinada explicitamente. O padrão esperado é levar problema + impacto + alternativas + recomendação, não só “o que fazemos?”.
- **Ação:** Tony deve usar [[gestao]] para orientar gestores a estruturar problemas antes de escalar.

### [2026-06-04] Estrutura escafoldada sem conteúdo não serve
- **Contexto:** o kab-brain tinha as pastas das áreas criadas mas vazias; o agente departamental não tinha o que ler.
- **Lição:** planta de pastas ≠ cérebro. O valor está no contexto preenchido, não na estrutura.
- **Ação:** mobiliar cada área no padrão canônico e manter os `contexto/*` vivos (consolidar do staging periodicamente).

### [2026-06-03] O gate de sensibilidade mora nas promoções, não no push
- **Contexto:** uma nota com nomes completos + dados de RHiD passou pro staging compartilhado; o push automático não tem trava (é proposital, sobe inbox bruto).
- **Lição:** a defesa contra vazamento tem que estar no `team-sync` (inbox→staging) e na auditoria (`consolidar-inbox`), não no `/sync`.
- **Ação:** os 3 gates foram reforçados e colocados em paridade; lista de pessoas com dado pessoal = sempre Restrito → cofre.

*Atualizado: 2026-06-04*
