---
tipo: nota
area: qualidade
status: canonico
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [qualidade, contexto, geral, kpi, sgk]
---

# Qualidade — contexto geral

> Fonte de verdade não-sensível da área de Qualidade da KAB. Custo de refugo em R$, NC de
> cliente nominal e avaliação de auditor **não entram aqui** — vivem no cofre pessoal
> (`my-second-brain → 01-KAB/`).

## Função no negócio

Garantir que as peças saiam dentro de especificação ao longo de todo o ciclo — do desenvolvimento (APQP) à entrega — e operar o Sistema de Gestão da Qualidade da KAB. Cobre desenvolvimento de produto, recebimento e inspeção de MP, calibração de instrumentos, inspeção de processo, gestão de não-conformidades (cliente, fornecedor e interno), documentação técnica e auditorias (Mapa de Processo SGK rev 10, aprovado 11/02/2026).

> **Distinção importante:** "Qualidade" (operação: inspeção, metrologia, RNC) é um papel **separado** de "SGQ/SGK" (gestão do sistema da qualidade — documentação, auditorias, manutenção do SGK). São funções diferentes dentro da mesma área.

## Escopo técnico (núcleos do SGK)

- **APQP** — planejamento avançado da qualidade do produto.
- **PPAP** — processo de aprovação de peça de produção (submissão ao cliente).
- **FMEA** — análise de modo e efeito de falha (equipe multifuncional).
- **MSA** — análise dos sistemas de medição.
- **CEP** — controle estatístico de processo / capabilidade.
- **Plano de Controle** — derivado do APQP.

## Indicadores (KPIs formais)

| Indicador | Meta | Resp. | Período |
|---|---|---|---|
| Índice de NC de Cliente | = 0 (zero, sem tolerância) | Supervisor Qualidade | Mensal |
| Custo de refugo de produção | meta de custo definida no SGK — _atualmente acima da meta_ | Supervisor Qualidade | Mensal |

> O valor da meta de refugo (em R$) vive no cofre pessoal. Aqui registramos apenas que **há
> uma meta formal de custo de refugo no SGK e que o indicador está atualmente acima dela**.

## Fluxo macro (SIPOC resumido)

1. **Desenvolvimento:** análise de viabilidade (FOR-018) → considerações da Qualidade → kick-off → especificação de compra (FOR-071).
2. **Planejamento da qualidade:** fluxograma de processo → FMEA → Plano de Controle → estudos de MSA (FOR-020) → CEP/capabilidade (FOR-004).
3. **PPAP:** elaboração e submissão ao cliente.
4. **Calibração:** controle de meios de medição (PR-05) → interpretação de certificados → reavaliação de frequência → liberação semanal de instrumentos (FOR-041).
5. **Recebimento de MP:** conferência do Certificado de Qualidade → inspeção dimensional com lançamento no DBCorp.
6. **Inspeção de processo:** acompanhamento em lotes consecutivos → registros de corte/inspeção (FOR-002/003) → Facilites (FOR-012).
7. **Gestão de RNC:** tratamento de não-conformidade (cliente / fornecedor / interno) via PR-07.
8. **Documentação e auditoria:** manutenção do SGK, gestão documental (PR-01) e auditorias.

## Gestão de não-conformidade (PR-07)

Procedimento-mãe de Produto Não Conforme + Ação Corretiva. Prazos do fluxo:

| Etapa | Prazo |
|---|---|
| Contenção | 1 dia |
| Causa raiz | 7 dias |
| Ação corretiva | 15 dias |
| Oportunidade | 20 dias |
| Verificação de eficácia | 60 dias / 3 lotes |

- **Ferramentas de análise:** 5 porquês · Ishikawa · 8D.
- **IQF** — índice de qualidade de fornecedor, usado para avaliar e cobrar fornecedores em RNC.

## Procedimentos e ferramentas

- **Sistema:** DBCorp (inspeção dimensional de MP, apontamentos).
- **Procedimento-mãe:** PR-07 (Produto Não Conforme + Ação Corretiva).
- **Referenciados:** MQ-01 (Manual da Qualidade), PR-01 (Informação Documentada), PR-02 (Recebimento), PR-05 (Meios de Medição), PR-08 (Inspeção).
- **Manuais técnicos:** FMEA 4ª ed · APQP 2ª ed · MSA 4ª ed · PPAP 4ª ed · CEP 2ª ed.
- **Formulários:** FOR-018 (viabilidade), FOR-071 (especificação), FOR-020 (MSA), FOR-004 (CEP), FOR-041 (liberação de instrumentos), FOR-012 (Facilite), FOR-002/003 (registro corte/inspeção).

## Riscos e oportunidades (do mapa de processo)

### Riscos (6)
- ⚠️ Peças fora do especificado em desenho.
- ⚠️ Problemas reincidentes internos.
- ⚠️ Falha na identificação de refugo durante a produção.
- ⚠️ Peças de beneficiamento externo escapam do controle direto.
- ⚠️ NC no cliente tratada apenas com Alerta da Qualidade quando a quantidade é baixa.
- ⚠️ Matéria-prima fora do especificado.

### Oportunidades (2)
- 💡 Escalonamento de produto não conforme durante a produção (detectar antes de virar entrega).
- 💡 Embarque controlado em caso de problema persistente.

*Atualizado: 2026-06-03 | Responsável: Supervisor de Qualidade*


## Links relacionados

- [[Qualidade]] · [[areas/MAPA|areas]]
