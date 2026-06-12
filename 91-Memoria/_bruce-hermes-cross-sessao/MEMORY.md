**Integrações ativas no servidor (Bruce):**
|- DBCorp SQL Server KAB — credenciais em /opt/data/.config/dbcorp.env
|- RD Station CRM — credenciais em /opt/data/.config/rdstation.env
|- RHiD ponto eletrônico — credenciais em /opt/data/.config/rhid.env
|- Google Workspace (Gmail, Calendar, Drive, Sheets, Docs) — token em /opt/data/google_token.json
|- Python venv em /opt/data/.venv com todas as dependências instaladas
|- Vault clonado em /opt/data/my-second-brain, acesso GitHub configurado
§
Bruce/KAB Python: pip ausente de /opt/hermes/.venv — bootstrap via get-pip.py. Sem sudo no PATH. Git vault: fetch falhar "Permission denied" (root rodou git via SSH) → `rm .git/FETCH_HEAD .git/ORIG_HEAD` + `su - hermes` antes de git.
§
**Vault Obsidian — Regras wikilink/estrutura (briefing 2026-05-20):**
|- Validar [[X]] antes de escrever: `git ls-files | grep -i "nome"` — nunca inventar link futuro
|- SKILL.md: path completo + alias: [[92-Skills/vault/<nome>/SKILL|skill <nome>]]
|- 91-Memoria/: nomes únicos, dispensam path — preferencias não preferencias
|- Pasta nova: criar _sobre.md + MAPA.md ANTES da 1ª nota; adicionar no MAPA do pai
|- Skill nova: adicionar linha em 92-Skills/vault/MAPA.md
|- Frontmatter: tipo|area|status|criado|atualizado|tags (SKILL.md usa frontmatter Claude, não vault)
|- Daily sessão Bruce: "2026-05-19 - Sessao Bruce - [tema].md" em 04-Pessoal/Diario/
|- Fonte da verdade: CLAUDE.md (raiz) + 91-Memoria/
§
Daily Meeting KAB: copiar HTML para /tmp/ antes de send_message (path com espaço quebra). MEDIA:/tmp/Daily_YYYY-MM-DD.html + resumo executivo via Telegram. Skills KAB em /opt/data/skills/kab/; dbcorp_security.py módulo compartilhado nessa pasta.
§
**SOUL.md/AGENTS.md + Crons sync/cerebro (2026-05-23):** /opt/data/ ↔ my-second-brain/. Crons a cada 10min: Sync push `*/10` job `f2658c064601`; Cerebro pull `5/10` job `bc2f942fe482`. Cobrem my-second-brain + kab-brain (/opt/data/kab-brain, git@github.com:koide-brasil/kab-brain.git, conta koide-brasil). Memória cross-instância: _bruce-hermes-cross-sessao/ ↔ _bruce-cross-sessao/ (laptop).