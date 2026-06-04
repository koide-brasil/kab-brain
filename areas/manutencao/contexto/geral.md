---
tipo: nota
area: manutencao
status: canonico
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [manutencao, ferramentaria, apoio-producao, contexto, geral, kpi, sgk, tpm]
---

# Apoio à Produção (Manutenção + Ferramentaria) — contexto geral

> Fonte de verdade não-sensível da área de Apoio à Produção da KAB. Custos nominais de
> sobressalentes e avaliações individuais **não entram aqui** — vivem no cofre pessoal
> (`my-second-brain → 01-KAB/`).

## Função no negócio

Sustentar a operação fabril por dois caminhos: **Ferramentaria** (garantir ferramental adequado e disponível para a produção) e **Manutenção** (manter os equipamentos confiáveis e disponíveis). A área é o "Apoio à Produção" consolidado — um único mapa de processo cobre os dois (Mapa de Processo SGK rev 10, aprovado 10/02/2026).

## Filosofia

- **TPM (Manutenção Produtiva Total)** é a filosofia base da área.
- **Check-list diário FOR-048** para acompanhamento de máquinas/equipamentos.

## Indicadores (KPIs formais)

| Indicador | Meta | Resp. | Período | Situação |
|---|---|---|---|---|
| Ajustes de Ferramental | ≤ 30h/mês | Gestor Apoio à Produção | Mensal | _(a confirmar)_ |
| Manutenção corretiva | ≤ 5/mês | Gestor Apoio à Produção | Mensal | ⚠️ atual ~17/mês — furando a meta |

> **Atenção:** o volume de corretivas está bem acima da meta (~17 contra ≤ 5). É um problema real e o principal gargalo da área — ver `lessons.md`.

## Fluxo macro (SIPOC resumido)

1. **Análise de viabilidade do produto vs ferramental** (FOR-018) — avaliação do desenho (tolerâncias, faceamento, chanfro, diâmetro, beneficiamento externo, limitações, material e ferramental).
2. **Desenvolvimento de ferramental** — compra → recebimento → verificação.
3. **Try-out** — teste do ferramental novo.
4. **Preparação do ferramental** para a produção.
5. **Controle de vida útil** do ferramental.
6. **Manutenção corretiva** — emissão de OS → execução → fechamento no DBCorp.
7. **Manutenção preventiva** — cronograma anual → execução.
8. **Pedidos de compra / extra** — sobressalentes e insumos.

## Inputs / Outputs (do mapa)

- **Inputs:** análise de viabilidade de ferramental, desenvolvimento de ferramental, recebimento/verificação, try-out, preparação, controle de vida útil, manutenção corretiva e preventiva, pedidos de compra.
- **Outputs:** ferramental disponível, máquina disponível, planilha de OS, cronograma anual de manutenção, lista de sobressalentes.

## Recursos

Bancadas, esmeril, morsa, torno, ferramentas manuais e instrumentos de medição.

## Procedimentos e ferramentas

- **Sistema:** DBCorp (OS, paradas de máquina, apontamento).
- **Check-list diário:** FOR-048.
- **Referenciados:** MQ-01, ISO 9001 (versão vigente), Manual TPM, PR-10 (Manutenção/Ferramentaria), FOR-018 (Análise de Viabilidade — compartilhado com Vendas/Produção).

## Riscos e oportunidades (do mapa de processo)

- ⚠️ **Risco:** desgaste de mandril (corte e usinagem) gerando retrabalho/refugo.
- ⚠️ **Risco:** falta de **sobressalentes críticos** — cilindros, sensores, válvulas e peças usinadas (itens de lead time longo).
- 💡 **Oportunidade:** sistematizar o controle de sobressalentes de ferramental (estoque mínimo).

*Atualizado: 2026-06-03 | Responsável: Gestor de Apoio à Produção*
