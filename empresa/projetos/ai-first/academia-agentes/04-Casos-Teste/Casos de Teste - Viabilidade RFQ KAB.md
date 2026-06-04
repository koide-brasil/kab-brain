---
tipo: nota
area: kab
status: em-andamento
criado: 2026-05-31
atualizado: 2026-06-03
tags: [kab, rfq, casos-teste, agentes]
---

# Casos de Teste — Viabilidade RFQ KAB

## Objetivo

Banco de RFQs antigos para testar agente antes de operação real.

## Critérios para selecionar casos

- RFQ aprovado e produzido sem problema.
- RFQ recusado por inviabilidade.
- RFQ com margem ruim.
- RFQ com RNC posterior.
- RFQ com dificuldade de ferramenta.
- RFQ com requisito de cliente especial.
- RFQ simples, representativo do que a KAB faz bem.

## Lista de casos (8/20)

| Caso | Cliente | PN | Tipo | Classe humana | Classe agente | Veredito |
|---|---|---|---|---|---|---|
| 001 | BOGE | 67040 / 171.000.015.992 | bush sem desenho | Não atende (capac.) | Dados insuficientes | ⚠️ direção certa, sem desenho |
| 002 | SCHADEK | 40001331 | adaptador maciço c/ rosca | Atende c/ ressalva | Não atende | ❌ não-crítico (subrepresentou Ergomat) |
| 003 | MAN | CC.02.02.102-A | tubo usinado | ver nota | — | sombra |
| 004 | Zhongding | TA80-1001300AB-01 | perfil alumínio | ver nota | — | sombra |
| 005 | Siemens | A-pillar Inner | tubo liga | ver nota | — | sombra |
| 006 | Sumitomo Riko | 3G-BM509-1 / AV-C4939 | inner Al, flambagem 80 kN | (FOR-018 pend.) | Atende c/ ressalva | ✅ flagou flambagem Al marginal |
| 007 | SumiRiko Brasil | BJ-092-2 | inner aço forjado/cementado | (FOR-018 pend.) | Atende c/ ressalva | ✅ c/ 2 calibrações (leitura Ø20,6; gate MP×usinado) |
| 008 | IRBAS | 2099701402 | espaçador/terminal barra direção (torneado ERGOMAT) | Produzível c/ ressalva forte | Atende c/ ressalva | 🆕 caso real — **metrologia é o gargalo** (projetor não confiável; CMM terceirizada/em aquisição) + repetibilidade ERGOMAT |

> Meta: 20 casos, 0 erro crítico (rubrica). Calibrações 006/007 em [[Testes e Propriedades de Material KAB]].
> Caso 008 introduziu o **gate de metrologia** (produzir ≠ verificar) na [[Biblioteca de Tolerancias KAB]].

## Links relacionados
- [[Template - Caso de Teste RFQ]]
- [[Rubrica de Avaliacao - Agente Viabilidade RFQ]]
