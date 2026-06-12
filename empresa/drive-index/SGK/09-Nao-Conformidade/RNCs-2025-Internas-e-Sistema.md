---
tipo: drive-index
area: kab
categoria: sgk-rnc
fonte: drive
drive_ids: [1JVvC-afGJ85t2N9uSfa6hyschxJMiUDa, 1_hQ0JeI1ucLYs14wYwfCEGK-cZ4y27XO, 1G6k0BQC5hlwvYRfAOp8tzS_ISQwTFlL_, 12srn8fmBhh_b0X8ctPOBPcD8tGMq67WE]
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/09 - Não conformidade/
modificado: 2025-07-18
indexado: 2026-05-20
mime: application/vnd.openxmlformats-officedocument.presentationml.presentation
codigo: FOR-028
ano_rnc: 2025
tags: [sgk, rnc, i001, s001, s002, for-028, relatorio-rnc, 8d, ishikawa, 5porques]
---

# RNCs Específicas 2025 — Interna I001 + Sistema S001/S002

**3 RNCs detalhadas no FOR-028 (Relatório RNC) — etapas 5W2H, contenção, causa raiz, ações**

## Resumo executivo

3 RNCs do ano 2025 com detalhamento completo no formulário **FOR-028 — Relatório RNC (rev 03)**. Cada uma seguiu fluxo padrão: notificação → 5W2H → contenção → ações curto prazo → causa raiz (5 Porquês/Ishikawa) → ações corretivas/preventivas → verificação → aprovação multi-funcional. Casos analisados sintetizam **as 3 falhas operacionais centrais de 2025**: (1) ferramental mal ajustado, (2) check list não seguido, (3) planejamento de produção mal preenchido.

## I001 — Comprimento menor usinado (RNC interna, abr/2025)

📄 **2 versões no Drive**: original (27/06/25) + rev01 (18/07/25)

- **Item**: peça usinada com comprimento menor que especificado (de 0,2-0,3 mm para 0,1 mm depois do ajuste)
- **Máquina**: NPK250
- **5W2H**:
  - WHAT: Usinagem com comprimento menor
  - WHY: Não atende especificação do cliente
  - WHERE: NPK250
  - HOW: Material usinado com ponto menor
  - HOW MANY: intermitente
- **Causa raiz**: **Ajuste de Came errado** (estava sendo ajustado erroneamente conforme histórico passado, não conforme manual)
- **Ações permanentes**:
  - Ajuste de TODAS as máquinas Toho conforme manual — Jonatas — 30/05/25
  - Alinhamento dos motores — Jonatas — 06/06/25
  - Polia nova — Jonatas — 06/06/25
- **Verificação (3 lotes)**: 310 → 428 → 210 peças NC por deslocamento de chanfro (validação)
- **Aprovação**: Jonatas (Apoio Produção) + Fabio (Apoio Produção) + Flávio (Qualidade) + Madora (Qualidade) + Fernando (Produção)
- **Conclusão**: came era o maior problema; ajustes em motor e polia também necessários
- 💡 **Lição transversal**: usar **sempre o manual da máquina** como referência ao ajustar componentes mecânicos

## S001 — Check list de máquina não está sendo seguido (sistema, jun/2025)

- **Origem**: Auditoria Interna Produção (PCP)
- **Problema**: Operador esquecia os pontos a serem verificados no check list (FOR-048)
- **Causa raiz**: "operador havia esquecido dos pontos a serem verificados, bem como, a auto confiança não se ateve ao documento adicional com as fotos dos pontos"
- **Ação curto prazo**: Revisar os check lists de todas as máquinas — Fernando/Jonatas — 14/07/25
- **Ação permanente**: Reciclagem do treinamento do check list — Fernando/Jonatas — 17/07/25
- **Documento atualizado**: FOR-048 Rev 03
- **Aprovação**: Fernando (Produção) + Jonatas (Apoio Produção) + Flávio (Qualidade) + Madora (Qualidade)
- **Conclusão**: necessário **reciclagem de treinamento periódica** (sem prazo definido)
- 💡 **Lição transversal**: auto-confiança do operador é risco real; treinamento de reciclagem deve ser sistemático

## S002 — Última programação com prazos em janeiro 2025 (sistema, jun/2025)

- **Origem**: Auditoria Interna Produção
- **Problema**: Sem evidências de data de produção prevista no campo destinado desde janeiro
- **Causa raiz**: "Não estava sendo controlados de forma adequada para atendimento dentro dos prazos do cliente"
- **Contexto**: "muito mudado o planejamento da produção, sendo necessário ajuste das datas várias vezes e trocas do material impresso nas máquinas e no quadro"
- **Ação curto prazo**: Corrigir os planejamentos da semana vigente — Fernando — 01/07/25
- **Ações permanentes**:
  - Preenchimento das datas — Marcelo/Fernando — 01/07/25
  - Reunião de logística pra tratar mudanças na produção — Marcelo/Fernando — 18/07/25
- **Aprovação**: Fernando (Produção) + Marcelo (Produção/PCP)
- **Conclusão**: matéria prima estabilizou, entregas equalizando com planejamento inicial
- 💡 **Lição transversal**: planejamento volátil = abandono do preenchimento. Solução = reunião de logística periódica

## Achados transversais

1. **Mesmo conjunto de pessoas aprova as RNCs**: Madora (sempre), Flávio (QA), Fernando (Produção), Jônatas (Apoio) — gabinete de qualidade da KAB
2. **Causas raiz comuns**: falta de adesão a documento existente (check list, manual da máquina, planejamento)
3. **Ações reativas em vez de preventivas**: maioria das ações é "treinar de novo" ou "corrigir agora" — falta sistemática de "manter atualizado"
4. **FOR-028 (Rev 03)** é o template padrão pra TODAS as RNCs com detalhamento — referência sempre

## Quando consultar

- Investigando RNC nova — buscar precedente similar aqui
- Treinamento de novos auditores internos
- Cruzar com [[FOR-027-Matriz-RNC-2025-2024-Historico]] (visão consolidada)
- Cruzar com [[FOR-048-Check-List-Diario-TPM]] (S001 mostra falha desse FOR)

## Relacionado

- [[FOR-027-Matriz-RNC-2026]] · [[FOR-027-Matriz-RNC-2025-2024-Historico]]
- [[FOR-048-Check-List-Diario-TPM]] — falhou no S001
- [[MAPA-PRODUCAO-2026]] · [[MAPA-APOIO-PRODUCAO-2026]] · [[MAPA-QUALIDADE-2026]]
- [[Licoes-Aprendidas-Book-Defeitos]]
- kab-rnc-fluxo

## Conteúdo bruto

<details>
<summary>4 pptx · ~4.5k chars cada</summary>

- I001 original (27/06/25)
- I001 rev01 (18/07/25)
- S001 (17/07/25)
- S002 (17/07/25)

</details>
