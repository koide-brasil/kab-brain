---
tipo: drive-index
area: kab
categoria: sgk-auditoria
fonte: drive
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/08 - Auditorias/Produto e Layout/ENVIAR SUMIRIKO 2025/
modificado: 2025-11-17
indexado: 2026-05-20
total_arquivos: 34
data_pacote: 2025-11-17
tags: [sgk, auditoria-layout, sumiriko, srk, batch-indexado, 2025]
---

# Inspeção de Layout — SRK/Sumiriko 2025

**Pacote de 34 arquivos enviados pra Sumiriko em 17/11/2025 — batch indexado**

## Resumo executivo

Pacote oficial de **inspeções de layout** de 17 peças Sumiriko, cada uma com 2 versões (xlsx + PDF), totalizando 34 arquivos. Todos modificados no mesmo dia (17/11/2025), sinalizando um **envio formal** pra SRK como cliente — provavelmente parte da exigência do Manual de Fornecedores SRK ([[Requisitos-SRK-SumiRiko]]) atualizado em janeiro/2026 (forçou KAB a fazer auditoria de layout completa do portfólio Sumiriko). Cada arquivo segue o template **FOR-061 Auditoria de Layout, Produto e Processo** ([[FOR-061-Auditoria-Layout-Produto-Processo]]).

## 17 PNs Sumiriko cobertos (cada um em xlsx + PDF)

| PN | Cód Sumiriko |
|---|---|
| BJ-031A-3 | 07.050.0003 |
| BJ-035A-1 | 07.050.0325 |
| BJ-036A-1 | 07.050.0327 |
| BJ-036A-2 | 07.050.0328 |
| BJ-037A-1 | 07.050.0331 |
| BJ-037A-2 | 07.050.0332 |
| BJ-041A-2 | 07.050.0067 |
| BJ-092A-1 | 07.050.0270 |
| (+ ~9 outros não detalhados aqui) | (catalogados no SQLite) |

## Pontos-chave

- **Pacote sincronizado**: todos os 34 modificados em **17/11/2025** — operação concentrada
- **Cliente**: SRK/Sumiriko (alinha com Manual de Fornecedores rev 00 jan/2026 — provavelmente foi resposta proativa)
- **Conteúdo** (por arquivo, modelo FOR-061): cabeçalho PN/Rev/Cliente + 16 itens de inspeção (dimensional diâmetro ext/int, comprimento chanfro ext/int, comprimento, ângulo ext/int, ausência de rebarba/ranhuras profundas/vibração forte/oxidação)
- **Sumiriko exige** inspeções de layout periódicas pra todos os itens em produção
- Cobre os itens **Ativos** do [[Controle-Auditoria-Layout-Produto-Processo]] (BJ-031, 035, 036, 037, 041, 092)

## Por que batch-indexado (não extraído individualmente)

- 34 arquivos com **conteúdo muito específico por PN** (medidas dimensionais)
- Pra Bruce/Erico fazer decisões estratégicas, **não há valor em ler cada peça** — basta saber que o pacote existe
- Pra olhar dimensional específico de uma peça: abrir direto no Drive

## Como consultar PN específico

Drive path: `QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/08 - Auditorias/Produto e Layout/ENVIAR SUMIRIKO 2025/`

Padrão de nome: `Inspeção de Layout - <PN> - <cód_SRK>.xlsx` (e versão PDF)

## Relacionado

- [[Requisitos-SRK-SumiRiko]] — Manual Fornecedores rev 00 jan/2026
- [[Controle-Auditoria-Layout-Produto-Processo]] — controle de validade
- [[FOR-061-Auditoria-Layout-Produto-Processo]] — formulário-modelo
- [[FOR-027-Matriz-RNC-2025-2024-Historico]] — SRK como cliente reclamador #1
- kab-clientes-formais

## Conteúdo bruto

<details>
<summary>34 arquivos (~ 8 MB total) · 17 PNs × 2 formatos (xlsx + PDF) · pacote 17/11/2025</summary>

Todos catalogados no SQLite — buscar IDs específicos via SQL se necessário:
```sql
SELECT * FROM arquivos WHERE drive_path LIKE '%ENVIAR SUMIRIKO%';
```

</details>
