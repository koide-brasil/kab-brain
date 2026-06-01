---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, agentes, correcoes, rfq]
---

# Log de Correções — Agente Viabilidade RFQ

> Append-only. Cada erro vira melhoria de catálogo, playbook ou fonte.

| Data | Caso | Erro | Severidade | Correção aplicada | Fonte atualizada | Responsável |
|---|---|---|---|---|---|---|
| 2026-05-31 | inicial | estrutura criada | - | aguardando testes | - | Bruce |
| 2026-06-01 | 001 (RFQ 67040 BOGE) | nenhum erro crítico | OK | — | — | Bruce (sombra) |
| 2026-06-01 | 002 (RFQ 40001331 SCHADEK) | classe pessimista ("Não atende" vs real "Atende c/ ressalva") | não-crítico | 2 correções abaixo | Catálogo de Máquinas + Playbook | Bruce (sombra) |

## Caso 002 — correções (2026-06-01)

Peça testada **com desenho real** (adaptador de filtro maciço 12L14, rosca M18×1,5, cliente
SCHADEK). Agente classificou **"Não atende"**; a FOR-018 oficial da KAB classifica de fato
**"Atende com ressalva"** (faz no Ergomat TNG-32, mas exige investir em ferramental de rosca +
metrologia, e há parceiro externo p/ parte do processo). Raciocínio, evidências e pergunta de
escalonamento estavam **certos** — só a classe-título ficou pessimista. Detalhe no Caso 002.

**Correção 1 — Catálogo de Máquinas (gap de fonte).** O bootstrap do DBCorp só traz "USINAGEM"
genérico; não codifica que o **Ergomat TNG-32 tornea / rosqueia / fura maciço** (com limitação:
garante chanfro interno de **um lado só**). Ação: enriquecer o Catálogo de Máquinas com a
**capacidade real do Ergomat** (operações que faz, faixa, limitações) — entra na entrevista do
Jônatas e, enquanto isso, anotar manualmente no catálogo. Sem isso o agente subestima a fábrica.

**Correção 2 — Regra no Playbook (lógica de classificação).** "Ausência de operação no DBCorp"
**não** é igual a "Não atende". Regra nova: *se existe uma máquina que plausivelmente cobre a
operação faltante (ex.: Ergomat p/ usinagem/rosca/furo), a classe é "Atende com ressalva +
escalar p/ Jônatas/Fernando", NÃO "Não atende".* "Não atende" reserva-se a processos que a KAB
comprovadamente não tem (ex.: fundição, forjaria, embutimento profundo, extrusão).

## Caso 001 — comparação vs ground truth (2026-06-01)

**RFQ 67040 · BOGE · Battery Cover HEV Bush.** Rodado às cegas com os catálogos novos do DBCorp.

- **Agente disse:** *Dados insuficientes* (sem desenho não confirma geometria) **+ bandeira de
  capacidade**: "Battery Cover" sugere peça possivelmente fora do envelope de bush-de-tubo da KAB →
  escalar pra Fernando + pedir desenho.
- **KAB de verdade disse** (Josielen, 16/10/2025): *"avaliamos a viabilidade, porém infelizmente
  está fora da nossa capacidade produtiva"* → **Não atende (capacidade)**.

**Veredito do teste: ACERTO direcional, 0 erro crítico.** Com só o e-mail (sem o desenho que a
KAB tinha), a classe honesta é "Dados insuficientes" — e o agente, ainda assim, **levantou o risco
certo** (capacidade/envelope) e **roteou pro humano certo** (Fernando), exatamente onde a recusa
real aconteceu. Não alucinou dimensão, não disse "atende". Comportamento desejado.

**Aprendizado p/ rubrica:** quando o projeto/contexto (ex.: "Battery Cover", "Tray", "Cover")
sinaliza peça potencialmente fora do envelope tubular, promover a **bandeira de capacidade no topo**
do parecer mesmo classificando "Dados insuficientes" — foi o que discriminou aqui. Candidato a
virar regra no playbook após 2-3 casos confirmarem o padrão.

**Gap de dados (não é erro do agente):** o pipeline não lê o desenho anexo (`2DD_*.pdf`). Esse é
hoje o teto da análise — conectar extração do desenho (dimensões/material) é o próximo salto.

## Regras

- Não apagar correção antiga.
- Quando um erro repetir, virar regra explícita no playbook.
- Quando o erro for falta de dado, atualizar catálogo/checklist.

## Links relacionados
- [[Rubrica de Avaliacao - Agente Viabilidade RFQ]]
- [[Playbook - Agente Viabilidade RFQ KAB]]
