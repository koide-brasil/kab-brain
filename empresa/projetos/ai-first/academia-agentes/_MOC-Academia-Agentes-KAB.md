---
tipo: projeto
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, ai-first, agentes, treinamento, rfq, viabilidade]
---

# Academia de Agentes KAB

> Estrutura para treinar agentes operacionais da KAB antes de deixá-los participar de fluxos reais. Treinar aqui não significa fine-tuning. Significa **base operacional auditável + playbooks + catálogos + casos de teste + aprovação humana**.

## Tese

A KAB não deve colocar agente para decidir viabilidade ou cotação só com prompt bonito. O agente precisa conhecer:

- tolerâncias que a KAB atende;
- capacidade real por máquina;
- ferramental disponível;
- tipos de peça por família;
- requisitos de cliente;
- como montar especificação de pedido;
- quando escalar para humano.

Sem isso, agente responde com confiança e a fábrica paga a conta. Péssimo hobby.

## Estrutura criada

### 00 — Governança
- [[Plano Mestre - Treinamento de Agentes KAB]]
- [[Matriz de Maturidade dos Agentes KAB]]
- [[Matriz de Fontes Oficiais para Agentes KAB]]
- [[Regras de Escalonamento - Agentes RFQ KAB]]

### 01 — Playbooks
- [[Playbook - Agente Viabilidade RFQ KAB]]
- [[Playbook - Agente Intake RFQ KAB]]
- [[Playbook - Agente Custo e Cotacao RFQ KAB]]

### 02 — Catálogos
- [[Catalogo de Maquinas KAB]]
- [[Catalogo de Ferramentas KAB]]
- [[Matriz Peca Processo KAB]]
- [[Biblioteca de Tolerancias KAB]]
- [[Checklist RFQ - Dados Minimos KAB]]

### 03 — Coleta com Humanos
- [[Roteiro Entrevista - Jonatas - Maquinas e Ferramental]]
- [[Roteiro Entrevista - Fernando - Producao e Capacidade]]
- [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]]
- [[Roteiro Entrevista - Gabriel e Josielen - Comercial e RFQ]]

### 04 — Casos de Teste
- [[Casos de Teste - Viabilidade RFQ KAB]]
- [[Template - Caso de Teste RFQ]]

### 05 — Avaliações
- [[Rubrica de Avaliacao - Agente Viabilidade RFQ]]
- [[Log de Correcoes - Agente Viabilidade RFQ]]

## Ordem recomendada

1. Completar fontes oficiais críticas: FOR-018, IT-082, PR-04, Planos de Controle, Requisitos de Cliente.
2. Entrevistar Jônatas e Fernando para preencher máquinas/ferramental/capacidade.
3. Montar 10 casos reais de teste.
4. Rodar o agente em modo aluno contra casos antigos.
5. Só depois abrir piloto assistido com RFQ novo.

## Links relacionados
- [[KAB AI First - Visao Estrategica]]
- [[KAB AI First - Fluxo RFQ]]
- [[MAPA-VENDAS-2026]]
- [[MAPA-APOIO-PRODUCAO-2026]]
- [[Especificacoes-de-Pedido-Fornecedor]]
