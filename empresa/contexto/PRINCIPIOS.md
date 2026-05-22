---
tipo: principio
area:
status: canonico
criado: 2026-05-22
atualizado: 2026-05-22
autor: erico
tags: [principios, gatilhos, segregacao]
---

# Princípios do kab-cerebro

> Documento canônico. Qualquer mudança aqui precisa aprovação do Erico via PR.

## A regra fundamental — os 3 gatilhos

Conteúdo **NÃO** entra neste repo se dispara qualquer um destes 3 gatilhos:

### Gatilho 1 — 💰 Dinheiro com nome próprio

**Bloqueia:**
- Salário, comissão, bônus individual nominal
- Pró-labore de sócios
- Negociação nominal de fornecedor com valor confidencial
- Reajuste salarial individualizado
- PLR/dividendo individualizado

**Permite (operacional, não-nominal):**
- "Folha de pagamento subiu 8% YoY" (agregado)
- "Comissão sobre vendas: política 2%" (regra, não pessoa)
- "Reajuste anual coletivo: CPI + 2pp" (política)

### Gatilho 2 — 👤 Pessoa específica

**Bloqueia:**
- Avaliação 360 com nome
- "X tá performando mal", "Y vai sair", "Z perdeu confiança"
- Conflito interno detalhado com nome
- Plano individual de contratação/desligamento
- Histórico médico/psicológico individual

**Permite:**
- "Líder de Produção é responsável por OEE" (papel, não pessoa)
- "Equipe de manutenção: 3 técnicos, 1 supervisor" (estrutura, sem nomes)
- ATA de reunião onde a discussão é técnica e o nome aparece como participante neutro

### Gatilho 3 — ⚖️ Peso jurídico/contratual

**Bloqueia:**
- Contratos com cliente/fornecedor na íntegra
- NDAs específicos
- Litígios ou ameaças de processo
- Compliance individualizado (LGPD com nome de titular)
- Obrigação societária (cap table, acionistas, dividendos)
- **Contrato/notas explicativas do empréstimo intercompany Koide Kokan**

**Permite:**
- "Contratos operacionais (hosting SaaS, gateway de pagamento) — política de aprovação"
- "Compliance LGPD: nosso processo é X" (procedimento, não casos individuais)
- "Termos comerciais padrão com clientes" (modelo, não contrato específico)

## Por que esses 3

A intersecção entre vazamento e dano:

| Tipo | Risco se vaza |
|---|---|
| Dinheiro nominal | Cria conflito interno (quem ganha mais?), expõe negociação |
| Pessoa específica | Trabalhista (denúncia), reputacional, confiança |
| Jurídico | Litígio, multas, quebra de contrato/NDA |

Os outros tipos de conteúdo da KAB (processos, KPIs agregados, atas técnicas, mapas de processo SGK, política comercial *modelo*, contexto de mercado) **não** disparam dano significativo se vistos por um membro do time. Esses ficam aqui — operacional compartilhável.

## Em dúvida

→ **NÃO entra**. Vai pro cofre pessoal do Erico (`my-second-brain`).

Não tem custo de errar pro lado conservador. Tem custo alto de errar pro lado liberal.

## Quem decide casos limítrofes

| Quem | Quando |
|---|---|
| Bruce (agente) | Se claramente entra ou claramente não entra |
| Erico (humano) | Caso ambíguo ou primeira vez de um tipo novo |

Bruce **nunca** decide sozinho em ambiguidade. Pergunta ou move pra cofre pessoal.

## Mecanismos de proteção (defesa em camadas)

1. **CLAUDE.md** deste repo informa o agente
2. **CODEOWNERS** força Erico a aprovar PRs em paths sensíveis
3. **Skill `/save-kab`** (Sprint 2) pergunta os 3 gatilhos antes de gravar
4. **Skill `/consolidar-inbox`** (Sprint 3) checa sidecar `.meta.yaml` e bloqueia maturidade=sensível
5. **Auditoria humana** — Erico revisa o repo periodicamente (recomendado semanal)
6. **Gitignore** `**/privado/` — escape hatch pra esconder rascunho

## Quando reavaliar

A regra dos 3 gatilhos é estável. Mas a aplicação prática evolui:

- **Trimestral**: revisar exemplos de "Permite" vs "Bloqueia" com base nos casos do trimestre
- **Quando team cresce**: pode justificar split em repo Diretoria separado (escopo futuro)
- **Quando incidente acontece**: registrar lição em [[../../99-Arquivo|99-Arquivo/]] (futuro) e ajustar exemplos

## Origem

Adaptado da Aula 04 (Permissionamento e Segregação) e Aula 05 (Cérebro da Diretoria) da metodologia OpenClaw. Versão híbrida invertida: aqui, em vez de criar repo Diretoria pra esconder sensível, **mantemos o sensível no cofre pessoal do Erico** e este repo é o espaço compartilhável.

---

## Links

- [[ARQUITETURA]] — desenho do sistema completo
- [[../../CLAUDE]] — convenções operacionais
- [[../../README]] — visão geral pra novos membros
