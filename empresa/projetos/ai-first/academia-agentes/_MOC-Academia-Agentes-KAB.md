---
tipo: moc
area: kab
status: ativo
atualizado: 2026-06-01
tags: [kab, ai-first, academia-agentes]
---

# Academia de Agentes KAB

Base operacional para treinar agentes KAB com fontes, catálogos, playbooks, casos de teste e avaliação. Não é fine-tuning precoce; é chão de fábrica estruturado. Milagre fica para outro departamento.

## Status da ingestão
- Documentos operacionais consolidados no `kab-brain`: 1610
- Processados `kab-brain`: 1610
- Processados restritos `my-second-brain`: 1449
- Pendentes `kab-brain`: 0
- Pendentes restritos `my-second-brain`: 0

## Módulos
- [[01-Playbooks/Playbook - Agente Intake RFQ KAB.md|Intake RFQ]] — fontes candidatas: 1610
- [[01-Playbooks/Playbook - Agente Viabilidade RFQ KAB.md|Viabilidade e Produção]] — fontes candidatas: 1610
- [[01-Playbooks/Playbook - Agente Qualidade KAB.md|Qualidade]] — fontes candidatas: 1610
- [[01-Playbooks/Playbook - Agente Custo e Cotacao RFQ KAB.md|Custo e Cotação]] — fontes candidatas: 311

## Catálogos
- [[02-Catalogos/Checklist RFQ - Dados Minimos KAB]]
- [[02-Catalogos/Catalogo de Maquinas KAB]]
- [[02-Catalogos/Catalogo de Ferramentas KAB]]
- [[02-Catalogos/Matriz Peca Processo KAB]]
- [[02-Catalogos/Biblioteca de Tolerancias KAB]]

## Governança
- [[00-Governanca/Plano Mestre - Treinamento de Agentes KAB]]
- [[00-Governanca/Matriz de Fontes Oficiais para Agentes KAB]]
- [[00-Governanca/Matriz de Maturidade dos Agentes KAB]]
- [[00-Governanca/Regras de Escalonamento - Agentes RFQ KAB]]

## Regra de ouro
- Fonte antes de conclusão.
- Conteúdo sensível fica no `my-second-brain` e não é promovido sem saneamento.
- Em dúvida, agente responde `dados insuficientes` ou `exige validação humana`.
