---
tipo: moc
area: kab
status: ativo
atualizado: 2026-05-31
tags: [kab, ai-first, academia-agentes]
---

# Academia de Agentes KAB

Base operacional para treinar agentes KAB com fontes, catálogos, playbooks, casos de teste e avaliação. Não é fine-tuning precoce; é chão de fábrica estruturado. Milagre fica para outro departamento.

## Status da ingestão
- Documentos operacionais consolidados no `kab-brain`: 909
- Processados `kab-brain`: 909
- Processados restritos `my-second-brain`: 727
- Pendentes `kab-brain`: 658
- Pendentes restritos `my-second-brain`: 770

## Módulos
- [[01-playbooks/Playbook - Agente Intake RFQ KAB.md|Intake RFQ]] — fontes candidatas: 909
- [[01-playbooks/Playbook - Agente Viabilidade RFQ KAB.md|Viabilidade e Produção]] — fontes candidatas: 909
- [[01-playbooks/Playbook - Agente Qualidade KAB.md|Qualidade]] — fontes candidatas: 909
- [[01-playbooks/Playbook - Agente Custo e Cotacao RFQ KAB.md|Custo e Cotação]] — fontes candidatas: 7

## Catálogos
- [[02-catalogos/Checklist RFQ - Dados Minimos KAB]]
- [[02-catalogos/Catalogo de Maquinas e Processos KAB]]
- [[02-catalogos/Matriz Peca Processo KAB]]
- [[02-catalogos/Biblioteca de Tolerancias KAB]]

## Governança
- [[00-governanca/Plano Mestre - Treinamento de Agentes KAB]]
- [[00-governanca/Matriz de Fontes Oficiais para Agentes KAB]]
- [[00-governanca/Regras de Escalonamento - Agentes RFQ KAB]]

## Regra de ouro
- Fonte antes de conclusão.
- Conteúdo sensível fica no `my-second-brain` e não é promovido sem saneamento.
- Em dúvida, agente responde `dados insuficientes` ou `exige validação humana`.
