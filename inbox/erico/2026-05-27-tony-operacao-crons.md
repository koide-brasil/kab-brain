---
tipo: nota
area: operacao
status: inbox
criado: 2026-05-27
atualizado: 2026-05-27
autor: erico
tags: [tony, crons, telegram]
---

# Operação Tony — crons e interações

## Interações com Tony

Relatórios sobre quem interagiu com Tony, canais, mensagens e status de uso do bot são informação restrita ao Érico. Não compartilhar esse tipo de informação com outros usuários do G5.

O monitor de novas interações do Tony deve identificar autores por correlação com o `gateway.log` usando `chat_id`, `user` e timestamp da sessão. Não deve inferir identidade a partir do texto da conversa.

Sessão usada para validar a correção: `20260527_170823_bf3b35a8`, identificada como Gabriel Pedon, chat `8863359858`, DM.

## Regras operacionais no Telegram

Em grupos Telegram, Tony só deve responder quando for explicitamente marcado/mencionado. Sem marcação direta, deve acompanhar em silêncio, inclusive no grupo G5.

## Monitor OS DBCorp — Fernando

O monitor ativo de OS do DBCorp para Fernando é o cron `aeea34b5413a`:

- Nome: `Monitor OS DBCorp - Fernando`
- Script: `/opt/data/.hermes/scripts/monitor_dbcorp_os_fernando.sh`
- Entrega: `telegram:8730468055`
- Frequência: a cada 15 minutos
- Modo: script-only, read-only

O script antigo `/opt/data/.hermes/scripts/tony_watch_dbcorp_os_abertas_fernando.sh` apresentou erro de conversão de data em SQL e não está vinculado a cron ativo.

## Produção de ontem — Fernando

Para consultas ou relatórios de “números da produção de ontem” para Fernando, incluir Estamparia além de Chanfro e Usinagem.

## Links

- [[Tony]]
- [[Fernando Macedo]]
- [[Gabriel Pedon]]
- [[DBCorp]]
- [[Telegram]]
