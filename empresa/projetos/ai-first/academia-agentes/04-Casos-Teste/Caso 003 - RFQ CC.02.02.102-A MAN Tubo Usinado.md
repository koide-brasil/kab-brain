---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "CC.02.02.102-A"
cliente: NAKAYONE / MAN (via Jardim Sistemas)
classe_agente: Atende com base documentada
classe_humano: Atende (similar INDAB já produzido)
veredito_teste: ACERTO
modo: sombra
---

# Caso 003 — CC.02.02.102-A · MAN · Tubo Usinado

> Sombra (2026-06-01), só desenho + DBCorp. FOR-018 conferida depois. Aplica a regra nova de
> calibragem de classe (Caso 002).

## Intake
Cliente NAKAYONE/MAN (des. Jardim Sistemas) · PN CC.02.02.102-A · desenho ✅ · material ✅
DIN EN 10305-2 **E355+N** (tubo de aço de precisão) · dims ✅ · tol DIN 7168 · volume/SOP ⚠️ não no desenho.
**Intake completo para análise técnica.**

## Parecer de Viabilidade Técnica
**Conclusão: Atende com base documentada.**

## Evidências
- **Matriz Peça×Processo (DBCorp):** core da KAB = **cortar tubo de aço + chanfrar** as duas pontas.
  KAB produz tubos Ø47,8 / Ø49,5 / Ø52,9 — o Ø45 está **dentro da faixa**.
- **Material:** KAB compra rotineiramente **tubo E355 DIN EN 10305-2** (37 itens "10305", 10 "E355"
  no cadastro, ex. 52,90×38,00 e 70,00×61,13) → material conhecido e em uso.
- **Histórico:** PN exato não consta (peça nova p/ a KAB), mas a família (tubo aço E355, corte+chanfro)
  é o que a KAB mais faz.

## Análise técnica
- **Material:** DIN EN 10305-2 E355+N — aço carbono de precisão, padrão da casa.
- **Geometria:** tubo OD **Ø45 +0,1** × ID **Ø32,1 +0,1**, **comprimento 25**, parede ~6,45 mm,
  chanfros **1,5×45° (2×)**.
- **Tolerâncias:** ±0,1 em OD/ID/comp — dentro do normal de corte+chanfro.
- **Operações:** CORTE → CHANFRO (2 pontas). 100% no portfólio.
- **Máquina candidata:** corte (qualquer serra) + chanfro (FA-100/NP-57; evitar NPK-250, outlier).
- **Qualidade:** chanfro 1,5×45° é padrão; modo de falha histórico = variação de chanfro/comprimento
  (controlável). Sem requisito especial aparente no desenho.

## Riscos
- **Técnico:** baixo. Parede 6,45 mm é robusta; nada fora do padrão.
- **Qualidade:** baixo — chanfro e comprimento (modos de falha conhecidos, gerenciáveis).
- **Produção/capacidade:** baixo — operação e faixa dominadas.
- **Fornecedor:** sourcing do tubo E355 Ø45 (bitola específica) a confirmar com Compras.

## Escalonamento
- **Validar com:** Compras (disponibilidade do tubo E355 na bitola Ø45×esp.) — formalidade.
- **Pergunta objetiva:** "Temos/conseguimos tubo E355 DIN 10305-2 Ø45 × parede ~6,45 mm?"

## Dados faltantes
- Volume anual e SOP (na cotação, não no desenho).

---
## Comparação vs FOR-018 (ground truth) — ✅ ACERTO
KAB: "Já produzimos similar? **SIM — INDAB Øext prox**"; norma DIN EN 10305-2 E355+N; TT NÃO;
medição SIM (paquímetro); **Produção: "já temos equipamento", sem investimento em máquina**;
ferramental de produção (cabeçote/castanha/levantador/matriz vistoria/PNP) — rotina de peça nova.
Volume 30.000/ano.
- **Agente: Atende com base documentada · KAB: Atende.** ✅ Match.
- Pequeno ajuste: eu não destaquei o set de ferramental de produção (castanha/cabeçote/PNP) que toda
  peça nova exige — incluir como item padrão de "ressalva de ferramental" no parecer.


## Links relacionados

- [[empresa/MAPA|empresa]]
