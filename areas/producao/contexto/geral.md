---
tipo: nota
area: producao
status: canonico
criado: 2026-06-03
atualizado: 2026-06-03
autor: bruce
tags: [producao, contexto, geral, kpi, sgk]
---

# Produção — contexto geral

> Fonte de verdade não-sensível da área de Produção da KAB. Custos por máquina/peça e
> avaliações individuais **não entram aqui** — vivem no cofre pessoal (`my-second-brain → 01-KAB/`).

## Função no negócio

Produzir as peças usinadas — em **tubos de aço** e **perfis de alumínio extrudado** — que são o core da KAB: corte, chanfro e prensa, mais serviços agregados conforme requisito do cliente. É o processo central da fábrica (Mapa de Processo SGK rev 15, aprovado 10/02/2026).

## Capacidade

- **Volume declarado:** ~1.200.000 peças/mês.
- **Área produtiva:** 1.660 m² (de 4.600 m² totais).

## Parque de máquinas

- **Corte:** 2× CMB75 · 1× SA/90 · 1× TR80 (BR) · 1× OMP Horizon (BR)
- **Chanfro:** 2× FA100 · 1× NPK-250 · 2× NP-57
- **Prensa:** 1× JHP 35 ton (BR)
- **Metrologia:** Durômetro (Mitutoyo) · Shadowgraph (Mitutoyo) · Teste de compressão (Instron) — capacidade ampliada com a nova CMM (ver `decisions.md`).

> Maquinário majoritariamente japonês; algumas máquinas brasileiras em corte e prensa.

## Embalagem

Caixas de papelão · caixas KLT retornáveis · especificação varia por cliente.

## Indicadores (KPIs formais)

| Indicador | Meta | Resp. | Período |
|---|---|---|---|
| Atendimento ao volume de produção | ≥ 100% do planejado | Coordenador Produção | Mensal |
| Refugo | ≤ 0,50% | Coordenador Produção | Mensal |

## Fluxo macro (SIPOC resumido)

1. **Desenvolvimento:** análise de viabilidade (FOR-018) → kick-off com Qualidade → FMEA → amostra → levantamento de treinamentos.
2. **Compra de MP:** planilha de programação → pedidos no DBCorp → aprovação da direção → recebimento.
3. **Programação:** pedido do cliente lançado → plano de entrega → programação das máquinas → pré-setup → emissão da OP.
4. **Execução:** separação da documentação (desenho/registro de corte) → setup → produção → apontamento no DBCorp.
5. **Manutenção corretiva:** emissão de OS → parada no DBCorp → validação do retorno.
6. **Retrabalho/seleção:** análise do produto NC → disposição → inspeção 100% pela Qualidade → apontamento.

## Procedimentos e ferramentas

- **Sistema:** DBCorp (OPs, apontamentos, paradas).
- **Procedimento-mãe:** PR-07 (Controle de Produto Não Conforme e Ação Corretiva).
- **Referenciados:** MQ-01, PR-02 (RH/treinamentos), PR-04 (Vendas), PR-06 (Compras), IT-025, IT-059, IT-IOP (setup), Manual FMEA 4ª ed.

## Riscos e oportunidades (do mapa de processo)

- ⚠️ **Risco:** peças não conformes recorrentes sem ação imediata · perda de ritmo de produção.
- 💡 **Oportunidade:** controle de insumos (pastilhas, parafusos) feito pela própria produção.

*Atualizado: 2026-06-03 | Responsável: Coordenador de Produção*
