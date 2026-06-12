---
tipo: nota
area: kab
status: ativo
criado: 2026-06-01
atualizado: 2026-06-01
tags: [kab, rfq, viabilidade, caso-teste, sombra]
rfq_id: "TA80-1001300AB-01"
cliente: Anhui Zhongding (大内芯 / inner core)
classe_agente: Atende com ressalva
classe_humano: Atende via LW Usinagem (parceiro) — KAB cotou peças-irmãs
veredito_teste: ACERTO na classe (reasoning incompleto - não nomeou LW)
modo: sombra
---

# Caso 004 — TA80-1001300AB-01 · Zhongding · Perfil Alumínio (núcleo interno)

> Sombra (2026-06-01), só desenho + DBCorp. FOR-018 conferida depois.

## Intake
Cliente Anhui Zhongding (fabricante de borracha/anti-vibração) · PN TA80-1001300AB-01 (大内芯,
"núcleo interno grande") · desenho ✅ (folha 4/4) · material ✅ **alumínio 6061-T6** (GB/T 6892-2015,
extrudado) · perfil **70,4×56,4 mm**, peso 291 g · tol GB/T 1804 · volume/SOP ⚠️ não no desenho.
**Intake completo para análise técnica.**

## Parecer de Viabilidade Técnica
**Conclusão: Atende com ressalva.**

## Evidências
- **Matriz Peça×Processo (DBCorp):** KAB **corta e chanfra perfil/tubo de alumínio** (41 peças de
  alumínio; ex. rota CORTE→CHANFRO). Núcleo interno de coxim de borracha = exatamente o tipo de peça.
- **Material/faixa:** KAB processa **alumínio 6061** em bitolas grandes (cadastro tem tubo AL 6061
  63,50×60,30 e **85,00×81,80**) → o perfil 70,4×56,4 está **dentro da faixa**.
- **Histórico:** PN/cliente novos; sem similar exato, mas a família (perfil AL extrudado cortado +
  chanfrado) é recorrente.

## Análise técnica
- **Material:** 6061-T6 extrudado — padrão da casa para perfis de alumínio.
- **Geometria:** **seção extrudada complexa** (cavidades internas, furo central) — a complexidade
  vem da **extrusão (fornecida)**; a KAB faz **corte no comprimento + chanfro**.
- **Tolerâncias:** GB/T 1804 (gerais) — não apertadas; OK para corte+chanfro.
- **Operações:** CORTE (perfil) → CHANFRO. No portfólio.
- **Máquina candidata:** serras de corte (CMB/TR/SA) + chanfro. **Ressalva:** chanfrar perfil de
  **seção não-circular complexa** pode exigir **dispositivo/fixação dedicada** (não é tubo redondo).
- **Qualidade:** peça de 291 g, maior que a média da matriz (0,04–0,1 kg) → fixação/manuseio
  diferente; sem requisito especial visível além de GB/T.

## Riscos
- **Técnico:** médio — chanfro/acabamento em perfil de seção complexa (não redondo).
- **Qualidade:** médio — geometria de seção exige gabarito de inspeção próprio.
- **Produção/capacidade:** baixo-médio — corte OK; chanfro pode pedir dispositivo dedicado.
- **Fornecedor:** ⚠️ **perfil 6061 novo precisa ser sourçado/extrudado** (matriz de extrusão do
  cliente ou fornecedor de alumínio) — prazo e mínimo de extrusão a confirmar.

## Escalonamento
- **Validar com:** Jônatas (dispositivo de chanfro p/ seção complexa) + Compras (sourcing do perfil).
- **Pergunta objetiva:** "Conseguimos chanfrar essa seção extrudada complexa com nosso ferramental,
  ou precisa dispositivo novo? E quem extruda/fornece o perfil 6061 70,4×56,4?"

## Dados faltantes
- Volume anual e SOP. Fornecedor/origem do perfil extrudado. Detalhe do chanfro na seção complexa.

---
## Comparação vs FOR-018 (ground truth) — ❌ MISS (otimista demais)
KAB: "Já produzimos similar? **NÃO**"; **característica especial: "Usinagem após o corte"**; **TT:
Têmpera T6**; processo externo SIM (parceiros agregados); CEP pelo parceiro de beneficiamento;
investir em metrologia (tridimensional/perfilômetro). **Produção (Fernando): investimento em
máquina SIM — "NÃO TEMOS EQUIPAMENTO para produzir o item"; mão de obra SIM — "não temos".**
Volume 40.000/ano.
- **Agente: Atende com ressalva · KAB: Não atende (sem equipamento p/ usinagem + têmpera T6 + parceiro).** ❌
- **Causa-raiz:** tratei o "núcleo interno" como perfil de alumínio **só cortado+chanfrado**. Na
  verdade exige **usinagem após o corte** + **têmpera T6** — fora do cut+chanfro, e o Ergomat NÃO
  cobre. Subestimei a complexidade da peça (furo/feature central usinada) e fui otimista.
- **Lição:** quando a peça pede **usinagem além de chanfro/faceamento** ou **tratamento térmico**, o
  agente NÃO pode dar "atende com ressalva" (lê como sinal verde). Deve **escalar a capacidade de
  usinagem pro Fernando** e classificar no máximo "Provavelmente atende, exige validação" — ou
  "Dados insuficientes" — destacando a pergunta de equipamento.

---
## REVISÃO (2026-06-01) — conhecimento do Erico + evidência do Drive

**O veredito "Não atende" da leitura literal da FOR-018 estava incompleto.** Conhecimento do Erico:
*perfil de alumínio **não-tubular** vai pra **LW Usinagem** (parceiro) cortar + usinar; o "não temos
equipamento" do Fernando é resposta reflexa do in-house — a LW já está no fluxo e nas cotações.*

**Evidência no Drive (cotações irmãs Zhongding, mesmo projeto BYD SA5H, 6061-T6):**
- `Quote TA60-1001300AC-01 KAB-COM-041-2026`: linha **LW = R$ 1,35/pç** (preenchida).
- `Quote TA60-1001400BC KAB-COM-043-2026`: linha **LW = R$ 3,70/pç** (preenchida).
- O modelo de cotação (aba M1) tem **bloco formal de terceirização**: LW, CASTEL, WINOA, ECOPLATING,
  ITARAÌ, LIMMAR — cada um com Freight + Adm. Cost. **A KAB cotou essas peças** → são viáveis via LW.
- Para o **TA80-1001300AB-01/-02 exato** só existe a **FOR-018** no Drive (sem Quote KAB-COM final).

**Veredito revisado: ACERTO na classe.** O certo era **"Atende via LW Usinagem (parceiro)"**, e meu
parecer disse **"Atende com ressalva"** com parceiro externo — classe certa. O que faltou foi o
**reasoning**: eu achei que era só corte+chanfro+sourcing; na verdade o mecanismo é **usinagem
terceirizada na LW** (custo entra na linha LW da cotação). Não foi otimismo indevido — foi
reasoning incompleto por **desconhecer o path LW**.

**Correção real (vale p/ 002 e 004):** ensinar o agente o **path LW Usinagem** — ver
LW Usinagem e a regra nova no playbook. Isso conserta os dois erros de uma vez.


## Links relacionados

- [[empresa/MAPA|empresa]]
