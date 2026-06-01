---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "A-pillar Inner"
cliente: "(Siemens - desenho) / Front Inner A-Pillar"
classe_agente: Atende com ressalva
classe_humano: Atende (similar BL-20, chanfro a definir na amostra)
veredito_teste: ACERTO
modo: sombra
---

# Caso 005 — A-pillar Inner · Tubo de aço-liga (Front Inner)

> Sombra (2026-06-01), só desenho + DBCorp. FOR-018 conferida depois.

## Intake
Peça "A-PILLAR – INNER" (Front Inner) · desenho ✅ (Siemens PLM) · material ✅ **40Cr ou SAE 8640**
(aço-liga) · tubo OD **Ø21 ±0,1** × ID **Ø13**, comprimento **~82,3 +0,2** · **chanfro 22,5°×3,1**
· tol GB/T 1804-79 IT14 · volume/SOP ⚠️ não no desenho.
**Intake completo para análise técnica.**

## Parecer de Viabilidade Técnica
**Conclusão: Atende com ressalva.**

## Evidências
- **Matriz Peça×Processo (DBCorp):** corte de tubo + chanfro é o core; KAB trabalha tubos na faixa
  Ø21 (cadastro tem tubo aço 29×21 e 21×3,2 JIS).
- **Material:** ⚠️ aqui é a ressalva — os tubos da KAB são majoritariamente **aço carbono**
  (E355/1020/JIS). **40Cr / SAE 8640 são aços-liga** (mais duros, mais desgaste de ferramenta) —
  sem registro de uso recorrente no cadastro.
- **Histórico:** PN/cliente novos; geometria similar à da casa, material não.

## Análise técnica
- **Material:** 40Cr (cromo) ou SAE 8640 (Ni-Cr-Mo) — aço-liga; corta e chanfra, mas com **maior
  desgaste de serra/pastilha** e atenção a rebarba/acabamento.
- **Geometria:** tubo OD Ø21 × ID Ø13 (parede ~4 mm), comprimento ~82,3 (peça **longa** vs. a média
  da matriz), **chanfro 22,5°** (ângulo **atípico** — a casa trabalha mais 30–50°).
- **Tolerâncias:** ±0,1 OD/comp, IT14 (gerais) — dentro do viável.
- **Operações:** CORTE → CHANFRO (22,5°). No portfólio, **mas** o ângulo de chanfro 22,5° pode exigir
  **ajuste/ferramenta de chanfro específica**.
- **Máquina candidata:** serra + chanfro. Confirmar se o chanfro 22,5° é alcançável no ferramental atual.

## Riscos
- **Técnico:** médio — aço-liga (desgaste) + ângulo de chanfro 22,5° atípico.
- **Qualidade:** médio — acabamento/rebarba em aço-liga; controle do ângulo de chanfro.
- **Produção/capacidade:** baixo-médio — geometria OK; ajuste de chanfro e vida de ferramenta a validar.
- **Fornecedor:** ⚠️ **sourcing de tubo em aço-liga 40Cr/8640** (não é a MP usual) — disponibilidade
  e custo a confirmar; possível necessidade de tratamento térmico (a esclarecer no desenho/cliente).

## Escalonamento
- **Validar com:** Jônatas (chanfro 22,5° com ferramental atual?) + Compras (tubo 40Cr/8640) +
  Flávio (se há requisito de dureza/tratamento).
- **Pergunta objetiva:** "Conseguimos tubo aço-liga 40Cr/8640 Ø21×13 e chanfrar 22,5° com o
  ferramental atual? Há requisito de dureza/tratamento térmico?"

## Dados faltantes
- Volume/SOP. Requisito de dureza/tratamento (não claro no recorte do desenho). Fornecedor do tubo-liga.

---
## Comparação vs FOR-018 (ground truth) — ✅ ACERTO
KAB: material **41Cr4** (aço-liga, confirma minha leitura 40Cr); "Já produzimos similar? **SIM —
prox. BL-20**"; acabamento corte e chanfro; **"ângulo e chanfro sem informação — definidos na
amostra"** (exatamente a ressalva que levantei); TT **NÃO**; medição SIM; **Produção: "já temos
equipamento"**; ferramental de produção (castanha/PNP/levantador). Volume 138.000/ano.
- **Agente: Atende com ressalva · KAB: Atende (com ferramental padrão + chanfro a definir na amostra).** ✅
- Minhas ressalvas (aço-liga + ângulo de chanfro 22,5° atípico) bateram com o ponto aberto real
  ("ângulo e chanfro definidos na amostra"). Fui levemente cauteloso sobre TT (KAB: N/A) — aceitável,
  pois enquadrei como "a esclarecer".
