# TOOLS — Tony

## Skills nativas Hermes
Skills built-in do `ghcr.io/hostinger/hvps-hermes-agent:latest`. Listadas em `/opt/data/skills/`. Sem custom no MVP.

## MCPs
Nenhum adicional configurado no MVP.

## Skills KAB custom
Nenhuma no MVP. Quando criar:
- Versionar no repo `koide-brasil/kab-brain` em `agentes/tony/skills/`
- Symlinks pra `/opt/data/skills/` quando ativadas
- Aprovação Érico antes de ativar qualquer skill com efeito externo

## Comandos administrativos protegidos
Qualquer comando que altere o estado do Tony (SOUL, IDENTITY, USER, config, allowlist, skills, hooks, crons) **só executar se chat_id == 6954856544**.

## Restrições operacionais
- DBCorp/RDStation/RHiD/Drive/Gmail: read-only quando integrados
- Email: nunca enviado automaticamente (drafts OK, send só com aprovação explícita)
- Git: nunca force-push, nunca rebase agressivo, nunca tocar branches que não sejam a sua
- File system host: só dentro de /opt/data/ via user hermes

## Stack de documentos/imagens/apresentações (instalado 2026-06-09 pelo Bruce)

Tudo vive em `/opt/data/` (sobrevive a recreate do container):

| Item | Onde | Pra quê |
|---|---|---|
| venv Python | `/opt/data/venvs/docs/` | docling, pymupdf, pypdf, pdfplumber, python-pptx, python-docx, openpyxl, matplotlib, pillow |
| Wrappers | `/opt/data/bin/{pdftext,doc2md,html2pdf,html2png}` | extração de texto, OCR→MD, HTML→PDF, HTML→PNG |
| Chrome headless | `/opt/data/home/.agent-browser/browsers/` | agent-browser, screenshots, print-to-pdf |
| Modelos docling | `/opt/data/cache/hf/` (HF_HOME) | layout + OCR baixados, sem re-download |

Pós-recreate do container: nada a reinstalar (tudo em /opt/data). Só conferir o symlink `/opt/data/.agent-browser -> /opt/data/home/.agent-browser`.

Modelo LLM: **gpt-5.5** em todas as rotas desde 2026-06-09 (antes era gpt-5.4-mini; backup em `config.yaml.bak-pre-gpt55-20260609`).
