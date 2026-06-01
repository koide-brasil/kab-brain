---
tipo: indice
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [drive-index, academia-agentes, ai-first, rfq]
---

# Drive Index — Academia de Agentes KAB

Índice de documentos do Google Drive usados para popular a Academia de Agentes KAB.

## Regra de roteamento

- Conteúdo operacional técnico compartilhável fica neste diretório do `kab-brain`.
- Conteúdo sensível/restrito fica em `/opt/data/my-second-brain/01-KAB/Sensivel/Drive-Index/Academia-Agentes/`.
- Em dúvida, não publica no `kab-brain`. Sim, burocrático; também conhecido como não criar vazamento acidental.

## Subpastas

- `operacional/` — notas extraídas classificadas como baixa sensibilidade.

## Fontes priorizadas

- RFQs e especificações de pedido.
- Máquinas, ferramental, tolerâncias, setup, planos de controle e instruções de trabalho.
- Requisitos de cliente, PPAP, RNCs e lições aprendidas técnicas.

## Pipeline

Script local: `/opt/data/scripts/kab_drive_academia_ingest.py`.
Estado SQLite: `/opt/data/.state/kab-drive-academia/index.db`.
