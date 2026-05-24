---
tipo: principio
area:
status: canonico
criado: 2026-05-22
atualizado: 2026-05-23
autor: erico
tags: [principios, segregacao, audiencia]
---

# Princípios do kab-brain

> Documento canônico. Qualquer mudança aqui precisa aprovação do Erico.
>
> **Revisão 2026-05-23**: regra dos "3 gatilhos" anterior era over-conservadora. Substituída por **4 níveis de audiência + 2 categorias bloqueadoras** após Erico esclarecer cultura real KAB (valores e gastos são discutidos abertamente com time de gestão).

## Audiência real da KAB

A cultura KAB é mais transparente do que o modelo inicial assumia. **Time de gestão** (G5 + supervisores + coordenadores + gerentes) discute abertamente em reuniões operacionais:

- Faturamento (total, por cliente, por produto)
- Gastos por departamento
- Investimentos em máquinas/equipamentos
- Orçamentos anuais e mensais
- Custos detalhados, custeio agregado
- Projetos comerciais (valores, volumes, contratos novos)
- Indicadores financeiros operacionais (OTD, refugo R$, IQF, etc)
- Cotações comerciais ativas

→ **Tudo isso PODE entrar no kab-brain** (audiência: time de gestão).

## O que NÃO entra — 2 categorias bloqueadoras

### 🔴 Categoria A — RH-confidencial individual

**Bloqueia:**
- Salário/holerite/pró-labore/bônus de pessoa específica
- Performance/avaliação 360 com nome ("João tá baixo em X")
- Advertência/suspensão/demissão de pessoa específica
- Conflito interno detalhado com nome ("X vs Y")
- Histórico médico/psicológico individual
- Plano individual de promoção/desligamento

**Permite:**
- "Folha de pagamento subiu 8% YoY" (agregado)
- "Estrutura de comissão sobre vendas: 2%" (política, não pessoa)
- "Reajuste anual coletivo: CPI + 2pp" (política)
- "Liderança de Produção é responsável por OEE" (papel, não pessoa)
- "Equipe Manutenção: 3 técnicos + 1 supervisor" (estrutura)
- ATA de reunião onde nome aparece como participante neutro
- Processos RH genéricos (admissão, treinamento, banco horas — sistema)

### 🔴 Categoria B — Financeiro estratégico

**Bloqueia:**
- **Empréstimo intercompany Koide Kokan** (valor, taxa, prazo, condições)
- **Notas Explicativas (NE)** detalhadas — especialmente envolvendo Gestamp ou clientes nominais
- **DRE detalhado** mensal (linha a linha) — versão pública agregada OK
- **Situação financeira sensível**: PL negativo detalhado, conflitos com auditor, ressalvas
- **Política comercial confidencial**: lock real, fórmula indexada confidencial, pass-through confidencial, open-book real
- **Cap table / acionistas / dividendos**

**Permite:**
- "Faturamento líquido out/2026: R$ X" (operacional, time gestão discute)
- "EBITDA meta 5%, real 4,12% no 1ºS25" (indicador agregado público SGK)
- "Investimento R$ 500k em máquina nova" (decisão coletiva, time gestão sabe)
- "Custeio: GGF do mês foi R$ Y" (operacional)
- "Política comercial modelo (carta reajuste, NDA padrão)" (modelo, não casos confidenciais)
- "Contratos operacionais (hosting, gateway)" (operacional)
- Cotações ativas com valor e cliente (time comercial discute)

## Por que essas 2 categorias específicas

Risco real se vazar pra audiência errada:

| Categoria | Quem é audiência permitida | Quem NÃO pode ver | Por quê |
|---|---|---|---|
| 🔴 A — RH-individual | Erico + Mayra (RH) | Time de gestão amplo | Constrangimento, conflito interno, risco trabalhista |
| 🔴 B — Financeiro estratégico | Erico + Carla (financeiro) | Time de gestão amplo, fornecedores, clientes | Estratégico (negociação Matriz/cliente), prejuízo se vazar pra fora |

O resto — projetos, custos operacionais, orçamentos, indicadores — **PODE entrar** porque o time de gestão já discute em reuniões.

## Modelo de 4 níveis de audiência

| Nível | Audiência | Onde vive | Exemplo |
|---|---|---|---|
| 🟢 **Externo / auditável** | Auditor ISO, clientes (com NDA), fornecedores | `kab-brain/empresa/sgk/` | Política Qualidade, capacidade nominal, MQ-01 |
| 🟡 **Time gestão** (default) | G5 + supervisores + coordenadores + gerentes | `kab-brain/` (todo o resto) | Faturamento, gastos por dept, projetos novos, custeio, cotações, indicadores agregados |
| 🔴 **RH-confidencial / Financeiro estratégico** | Erico + Mayra (RH) ou Erico + Carla (financeiro) | `erico-brain/01-KAB/` | Salários, holerites, advertências, intercompany, NE detalhada, DRE específico |
| ⚫ **Pessoal Erico** | Só Erico | `erico-brain/` (outras pastas) | E&M Holding, leilão imobiliário, diário, reflexões |

## Em dúvida

→ **Quando incerto**, ainda vale mover pra `erico-brain` (cofre pessoal do Erico — Bruce opera lá). Erico revisa e decide se promove pra `kab-brain`.

Mas o **default agora** é mais permissivo: se for tipo de coisa que você discutiria numa reunião de gestão da KAB, pode entrar.

## Quem decide casos limítrofes

| Quem | Quando |
|---|---|
| Tony (agente kab-brain) | Se claramente entra (operacional time gestão) ou claramente não entra (RH-individual / Financeiro estratégico) |
| Erico (humano) | Caso ambíguo ou primeira vez de um tipo novo |

Tony **nunca** decide sozinho em ambiguidade — pergunta ao operador humano ou move pro cofre pessoal pra Erico revisar.

## Mecanismos de proteção (defesa em camadas)

1. **CLAUDE.md** deste repo informa o agente
2. **Heurística do `/sync`** detecta keywords das categorias A e B antes do push (5s pra Ctrl-C)
3. **Skill `/save-kab`** pergunta antes de gravar capturas
4. **Skill `/consolidar-inbox`** checa `.meta.yaml` e bloqueia maturidade=sensível
5. **Auditoria humana** — Erico revisa o repo periodicamente
6. **CODEOWNERS** força aprovação em paths sensíveis
7. **`.gitignore` `**/privado/`** — escape hatch pra rascunho

## Evolução do modelo

| Marco | Mudança |
|---|---|
| 2026-05-22 | Modelo "3 gatilhos" (dinheiro nominal / pessoa específica / jurídico) — over-conservador |
| 2026-05-23 | Modelo **"4 níveis audiência + 2 categorias bloqueadoras"** — bate com cultura real KAB |

## Quando reavaliar

- **Trimestral**: revisar exemplos das categorias A e B com base nos casos do trimestre
- **Quando team cresce**: pode justificar repo separado `kab-g5-private/` se Hermes departamentais (Sprint 5+) ganharem acesso a kab-brain
- **Quando incidente acontece**: registrar lição em `_logs/` e ajustar exemplos

## Origem

Adaptado da Aula 04 (Permissionamento e Segregação) e Aula 05 (Cérebro da Diretoria) da metodologia OpenClaw. Versão híbrida invertida: o sensível (categorias A + B) **mantém-se no cofre pessoal do Erico** e este repo é o espaço compartilhável do time de gestão.

---

## Links

- [[ARQUITETURA]] — desenho do sistema completo
- [[../../CLAUDE]] — convenções operacionais
- [[../../README]] — visão geral pra novos membros
- [[../../agentes/_arquitetura]] — Bruce → Tony → Hermes deps (3 camadas)
