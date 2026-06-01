---
tipo: projeto
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, ai-first, agentes, treinamento, governanca]
---

# Plano Mestre — Treinamento de Agentes KAB

## Conclusão

O caminho correto é criar agentes com **currículo operacional**, não tentar ensinar tudo por prompt nem fine-tuning. A base precisa ser viva, versionada e auditável.

## Princípio central

> Agente industrial bom não é o que responde tudo. É o que sabe consultar fonte, reconhecer limite e escalar antes de gerar prejuízo.

## As 5 camadas de treinamento

### 1. Conhecimento oficial
Fontes autorizadas:
- SGK: mapas de processo, procedimentos, ITs e formulários.
- FOR-018 — análise de viabilidade.
- IT-082 — análise prévia de solicitações de cotação.
- PR-04 — vendas.
- Planos de Controle.
- Especificações de Pedido.
- Requisitos de cliente.
- Histórico de RNC e lições aprendidas.

### 2. Catálogos estruturados
Dados que precisam virar tabela limpa:
- máquinas;
- ferramentas;
- famílias de peças;
- tolerâncias;
- operações;
- materiais;
- capacidade;
- limitações conhecidas.

### 3. Playbooks por agente
Cada agente precisa ter:
- missão;
- escopo;
- fontes oficiais;
- entradas mínimas;
- procedimento de análise;
- formato obrigatório de resposta;
- regras de escalonamento;
- não-objetivos.

### 4. Casos reais resolvidos
Criar base com RFQs **atuais e representativos** como fonte principal de treinamento operacional:
- aprovados;
- recusados;
- problemáticos;
- com RNC;
- com margem ruim;
- com dificuldade técnica.

RFQs antigas podem ser usadas apenas como **casos de teste ou contexto histórico**, nunca como regra operacional automática. Critérios de viabilidade, tolerância, processo, custo, cliente e política comercial podem ter mudado com o tempo.

### 5. Avaliação contínua
Antes de operar:
- rodar 20–50 casos antigos;
- comparar com decisão humana;
- classificar erro crítico, erro leve e acerto;
- corrigir catálogo/playbook;
- liberar só em modo assistido.

## Fases práticas

### Sprint 1 — Apostila do Agente de Viabilidade
- [ ] Extrair FOR-018, IT-082 e PR-04 — Bruce/Tony — próximo passo
- [ ] Entrevistar Jônatas sobre máquinas/ferramental — Erico/Bruce — próximo passo
- [ ] Entrevistar Fernando sobre capacidade/processo — Erico/Bruce — próximo passo
- [ ] Criar catálogo inicial de máquinas — Bruce — após entrevistas
- [ ] Criar 10 casos reais de teste — Gabriel/Josielen/Bruce — após seleção de RFQs

### Sprint 2 — Agente em modo aluno
- [ ] Rodar agente contra RFQs antigos — Bruce/Tony — após casos de teste
- [ ] Registrar correções humanas — Jônatas/Fernando/Flávio/Gabriel — durante teste
- [ ] Ajustar playbook e catálogos — Bruce — após correções

### Sprint 3 — Piloto assistido
- [ ] Analisar RFQ novo sem decidir — Agente Viabilidade — piloto
- [ ] Validar parecer técnico — humano responsável — piloto
- [ ] Medir tempo, retrabalho e erro — Bruce/Tony — piloto

### Sprint 4 — Operação N0/N1
- [ ] Liberar intake, checklist, pré-análise e dossiê — Tony/Agente Comercial — após aprovação
- [ ] Manter decisões técnicas/comerciais com humanos — KAB — contínuo

## Links relacionados
- [[_MOC-Academia-Agentes-KAB]]
- [[Matriz de Maturidade dos Agentes KAB]]
- [[Playbook - Agente Viabilidade RFQ KAB]]
