---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "40001331"
cliente: SCHADEK
classe_agente: Não atende capacidade atual
classe_humano: Atende com ressalva (investimento ferramental rosca + metrologia)
veredito_teste: ERRO NÃO-CRÍTICO (direção certa, classe pessimista demais)
modo: sombra
---

# Caso 002 — RFQ 40001331 · SCHADEK · Adaptador de Filtro (maciço 12L14)

> Teste em sombra (2026-06-01). Rodado **às cegas a partir do DESENHO** — a FOR-018 oficial
> da KAB e a especificação de MP foram conferidas só DEPOIS (ver "Comparação").

## Intake (checklist de dados mínimos)

| Campo | Status |
|---|---|
| Cliente | ✅ SCHADEK — **não é cliente atual** (não consta no DBCorp) |
| Part number | ✅ 40001331 (cód. interno 10000069 / material 130.07.020) |
| Descrição | ✅ Adaptador do Filtro / Filter Adapter — Bomba de Óleo |
| Desenho | ✅ DESENHO - 40001331 (1 folha, rev AC 04/12/24) |
| Material | ✅ **VERG. AÇO SAE 12L14** (barra maciça, free-machining) — bitola Ø19,05 |
| Dimensões principais | ✅ ver Análise técnica |
| Tolerâncias críticas | ✅ ver Análise técnica |
| Volume anual | ⚠️ não consta no desenho (estaria na cotação) |
| SOP/prazo | ⚠️ não consta no desenho |
| Requisitos PPAP/inspeção | ✅ rev AC "incl. dimensões para controle de inspeção" |

**Status do intake: COMPLETO para análise técnica** (desenho + material + cotas presentes).

---

## Parecer de Viabilidade Técnica

**Conclusão: Não atende capacidade atual.**
A peça exige **rosqueamento + torneamento + furação de barra maciça** — operações que **não
constam no portfólio de processos documentado da KAB**. Possível reavaliação SE a usinagem
Ergomat cobrir essas operações (escalar — ver Escalonamento).

## Evidências
- **Fonte 1 — Catálogo de Operações (DBCorp):** o portfólio de operações da KAB é
  **CORTE · CHANFRO · ESTAMPARIA · USINAGEM (Ergomat) · INSPEÇÃO**. **Não existe operação de
  ROSCA nem de TORNEAMENTO** cadastrada.
- **Fonte 2 — Matriz Peça×Processo (DBCorp):** as ~225 peças produzidas são tubos/perfis/anéis
  feitos por CORTE→CHANFRO (± usinagem leve). **Zero peças fabricadas com rosca / torneadas de
  maciço** (busca por ROSCA/M18/ADAPTADOR/TORNEADO em itens tipo F = 0 resultados).
- **Fonte 3 — Material:** a KAB **estoca barra maciça 12L14** (item MP 2342, Ø18,15) → o
  **material não é o gargalo**; o gargalo é o **processo** (rosca/torno/furo). Nenhuma peça
  produzida consome esse maciço hoje (BOM/MRP sem pai).
- **Histórico similar:** PN 40001331 inexistente no DBCorp; SCHADEK não é cliente → **peça e
  cliente novos**, sem precedente de produção.

## Análise técnica
- **Material:** SAE 12L14 (aço de usinagem fácil, com chumbo) — bom para torneamento, ruim para
  solda/conformação. Coerente com peça **torneada**, não cortada-de-tubo.
- **Geometria:** corpo cilíndrico vazado a partir de barra maciça Ø19,05:
  - **Rosca externa M18,0 × 1,5** (De = Ø17,732/17,968 · Dp = Ø16,854/16,994 — banda ~0,14 mm).
  - **Furo passante Ø12,0 +0,2/0,0**.
  - **Ø15,6 −0,3/−0,5** (rebaixo/contrafuro).
  - Comprimento **28,0 ± 0,1**.
  - Chanfros **45° (2×)** e **0,5 × 45° (2×)**.
  - Peso 0,024 kg.
- **Tolerâncias:** ±0,1 no comprimento e banda de rosca De/Dp apertada → exige **controle de
  rosca** (calibrador passa-não-passa) e processo de rosca estável.
- **Operações necessárias:** serrar barra → tornear externo → **roscar M18×1,5** → furar/mandrilar
  Ø12 → contrafuro Ø15,6 → chanfrar. **Mínimo 3 operações fora do core** (torno, rosca, furo).
- **Máquina candidata:** **nenhuma documentada**. CORTE/CHANFRO/ESTAMPARIA não roscam nem tornam
  maciço. USINAGEM (Ergomat) é a única possibilidade — **capacidade de rosca/torno a confirmar**.
- **Ferramental:** indeterminado (catálogo de ferramentas ainda esqueleto) — exigiria, no mínimo,
  ferramenta de rosca M18×1,5 + brocas/mandril Ø12/Ø15,6.
- **Qualidade/requisitos:** rev AC já pede dimensões de inspeção; rosca + furo toleranciados →
  inspeção dimensional reforçada e provável PPAP.

## Riscos
- **Técnico:** alto — 3 operações (torno/rosca/furo) fora do processo documentado.
- **Qualidade:** banda de rosca De/Dp estreita; sem processo de rosca consolidado, refugo provável.
- **Produção/capacidade:** ⚠️ **bloqueador.** Sem operação de rosca/torno no portfólio. Mesmo o
  Ergomat sendo o maior refugo entre processos (~0,9%), não há evidência de que rosqueie.
- **Fornecedor/beneficiamento:** se a rosca for terceirizada, entra custo + prazo + controle de
  fornecedor (muda a equação comercial).

## Escalonamento
- **Validar com:** **Jônatas** (a usinagem Ergomat tem torno/rosca/furação? que ferramental?) e
  **Fernando** (capacidade/gargalo se for assumir).
- **Motivo:** o veredito "Não atende" baseia-se na **ausência de evidência** de rosca/torno no
  DBCorp; se essa capacidade existir fora do ERP, o parecer muda para "Atende com ressalva".
- **Pergunta objetiva pro humano:** "A KAB rosqueia (M18×1,5) e torneia/fura barra maciça 12L14
  internamente, ou isso seria terceirizado? Se interno, em qual máquina e com qual ferramental?"

## Dados faltantes
- Volume anual e SOP (estariam na cotação, não no desenho).
- Confirmação da capacidade de rosca/torneamento (Ergomat) — **é o que decide o caso**.
- Catálogo de Ferramentas (esqueleto) — sem ele não dá pra confirmar ferramental de rosca/furo.

---

## Comparação vs FOR-018 oficial da KAB (ground truth)

A KAB analisou e fez a FOR-018 REV-06 (4 áreas). Resumo do que disseram:

| Área | Posição real da KAB |
|---|---|
| **Produção (Fernando)** | "Já temos equipamento (Ergomat TNG-32) e mão de obra" — **sem investimento em máquina** |
| **Ferramentaria (Jônatas)** | Acabamento = Corte, Chanfro, **Rosca**; **processo externo SIM** (parceiros agregados); **investir em ferramental de Rosca M18**; "Ergomat garante chanfro interno só de **um lado**" |
| **Qualidade (Flávio)** | **Não** temos equipamento p/ medir a rosca (De/Dp precisos) → investir em tridimensional/perfilômetro/rugosímetro |
| **Material** | "Possuímos maciço Ø18,15 em estoque (100,42 kg)"; SAE J403 12L14 |
| **Comercial** | Volume **72.108 pç/ano**; Schadek busca **parceiro de usinagem** |
| **Classificação implícita** | **Atende com ressalva** — viável no Ergomat, condicionado a investimento (ferramental rosca + metrologia) e possível parceiro externo |

### Veredito do teste: ERRO NÃO-CRÍTICO — direção certa, headline pessimista demais

**O que o agente ACERTOU (e a FOR-018 confirma ponto a ponto):**
- ✅ "Fora do core corte+chanfro; exige rosca/usinagem de maciço" → FOR-018: acabamento "Corte, Chanfro, **Rosca**".
- ✅ "Material não é o gargalo — KAB estoca barra 12L14" → FOR-018: "maciço Ø18,15 em estoque, 100,42 kg".
- ✅ "Peça e cliente novos, sem similar" → FOR-018: "Já produzimos similar? **NÃO, sem histórico**".
- ✅ "Banda de rosca De/Dp apertada exige controle de rosca" → FOR-018: "**não dispomos de equipamento p/ medir a rosca**".
- ✅ **Pergunta de escalonamento idêntica à decisão real:** "rosqueia/torneia maciço interno ou terceiriza? qual máquina/ferramental?" → FOR-018 responde: Ergomat TNG-32 + investir ferramental rosca + parceiro externo p/ parte do processo.

**O que o agente ERROU:**
- ❌ **Classe: disse "Não atende"; o certo era "Atende com ressalva".** A KAB **faz** no Ergomat
  (TNG-32) — só precisa investir em ferramental de rosca + metrologia e talvez um parceiro externo.

**Causa-raiz do erro (acionável):** o **Catálogo de Máquinas** bootstrapado do DBCorp
sub-representa o Ergomat. O catálogo de operações do ERP só tem "USINAGEM" genérico — **não
codifica que o Ergomat TNG-32 tornea/rosqueia/fura maciço** (com a limitação de chanfro interno
de um lado só). O agente leu "nenhuma operação de rosca no portfólio" e classificou "não atende".
A regra "ausência no DBCorp = não atende" é **pessimista demais** quando há uma máquina
(Ergomat) que *pode* cobrir — nesse caso a classe certa é "Atende com ressalva + escalar", não
"Não atende".

**Correções aplicadas:** ver Log de Correções (caso 002).
