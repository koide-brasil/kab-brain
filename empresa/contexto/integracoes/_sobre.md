---
tipo: nota
area: institucional
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [integracoes, contexto]
---

# Integrações — sobre

Esta pasta documenta **como o time KAB se integra a sistemas externos** (Google Drive, RD Station, RHiD, DBCorp, etc), pra que os agentes (Gerente futuro, Hermes departamentais) saibam:

- Que sistemas usar pra cada tarefa
- Estrutura de pastas/dados (não-sensível)
- Convenções de nomenclatura
- Workflows operacionais
- Quem é responsável pelo que (papéis, não nomes)

## O que NÃO entra aqui

- **Credenciais** (tokens, OAuth, senhas) → vivem em `~/.config/` no laptop/VPS, **NUNCA no git**
- **IDs específicos de arquivos com dados sensíveis** (ex: ID da planilha de salários no Drive)
- **Dados nominais de pessoas** (avaliação, comissão) — esses ficam no cofre pessoal do Erico

## Documentos existentes

- [[google-drive-mapeamento]] — Drive da KAB, pastas críticas, convenções SGK, workflow `treinar-sgk`

## Documentos planejados (à medida que time abrir mais integrações)

- `rdstation.md` — CRM comercial (cotações, atividades, deals)
- `rhid.md` — Ponto eletrônico (Control iD)
- `dbcorp.md` — ERP (DBCorp SQL Server)
- `sanitas-sodexo.md` — Benefícios

## Links

- [[../PRINCIPIOS]] — regra dos 3 gatilhos
- [[../../sgk/MAPA]] — Sistema de Gestão Koide (que vive parcialmente no Drive)
