---
tipo: nota
area: kab
status: ativo
criado: 2026-06-09
atualizado: 2026-06-09
tags: [kab, ai-first, coleta, entrevista, qualidade, viabilidade, rfq, flavio]
fonte: "Entrevista 1:1 Érico × Flávio (Qualidade), 08/06/2026 — áudio transcrito (WhisperX large-v3)"
---

# Coleta Humano — Qualidade (Flávio): método de análise de viabilidade

> Conhecimento tácito extraído em entrevista com o líder da Qualidade. Responde ao [[Roteiro Entrevista - Flavio e Madora - Qualidade e Requisitos]]. Alimenta o [[Playbook - Agente Viabilidade RFQ KAB]] e os catálogos. **Ótica da Qualidade**: o que ela valida no desenho antes de cotar e como monta a especificação de compra de MP.

## Sequência do método (passo a passo)

1. **Validar o material (1º ponto sempre).**
   - Nacional × importado. Foco no tradicional: **SAE 1010 / 1020 / 1045**.
   - Norma estrangeira (ex.: japonesa) cujo material **não existe no Brasil** → **sugerir equivalente nacional próximo** (ex.: C45 forjado ≈ 1045 — e 1045 já é difícil aqui). Mantém o original na especificação, mas trabalha com a base nacional e **busca aprovação do cliente**.

2. **Restringir o dimensional (quando possível).**
   - Apertar a tolerância pra favorecer o processo: ex. cota **40 ±15 → 40 ±0,8**.
   - **A restrição é decisão da KAB** (por nossa conta), não do cliente.

3. **Identificar cotas/pontos críticos.**
   - Replicar a **simbologia** do desenho internamente.
   - **Comprimento crítico**: tolerância de ~**0,15 mm (décimo e meio)** já é apertada; **< 0,05 mm (5 centésimos) = inviável/alerta** na chanfradeira.
   - Rebaixo → exige furo; rosca; **gravação** (crescente em peças BYD) — confirmar se entrega com ou sem.

4. **Restrição de matéria-prima (diâmetro externo do fornecedor).**
   - **Aço/tubo: tolerância ideal ±0,08 mm.** Pedir ao fornecedor pra restringir o Ø externo.
   - **Alumínio: NÃO se restringe** — o fornecedor já pede folga (0,25 → 0,30/0,35). Vai **conforme o desenho**.

5. **Testes solicitados em desenho.**
   - Filtrar compressão, expansão, **flambagem** (caso novo — calculável). Todo teste pedido em desenho tem que ser especificado; a Qualidade orienta na análise se a KAB consegue fazer.
   - **Equipados com Instron** → praticamente todos os testes mecânicos são feitos internamente.

6. **Dureza.**
   - Quando solicitada em desenho, **replicar na especificação**.
   - Alguns por conta própria: ex. **E355** (usado na Ergomat) trabalha ~**85–90 HRB** — precaução; testar quando algo muda (muito mole/duro impacta a ferramenta).

7. **Montar a especificação de compra (o passo que mais toma tempo).**
   - Se há beneficiamento → vai pra **LW** (parceiro). Decidir tubo × maciço.
   - **Adiantar fazendo tubo E maciço em paralelo**; o comercial decide qual segue.
   - **Para a LW**: tratar como **instrução de trabalho** — croqui + exatamente o que fazer (furo, rosca M12/M16, chanfro). Detalhar tudo.

## Tabela de tolerâncias-alvo (ótica Qualidade) — enriquece [[Biblioteca de Tolerancias KAB]]

| Atributo | Ideal KAB | Observação |
|---|---|---|
| Tolerância de MP (aço/tubo, Ø externo) | **±0,08 mm** | pedir restrição ao fornecedor |
| Tolerância de MP (alumínio) | **não restringe** | fornecedor pede folga; conforme desenho |
| Comprimento (chanfradeira) | **≥ 0,15 mm** | < 0,05 mm = alerta de risco |
| Concentricidade | **0,2 mm** | desenho costuma pedir 0,3; restringindo Ø em ±0,08 cai p/ ~0,20 |
| Sobremetal maciço (Ergomat) | **~0,5–1,0 mm** acima da tabela | evita vibração/marca na usinagem; tabela do fornecedor em polegada |

## Regras / lições aprendidas

- **Material < SAE 1010 dá problema** para a família **Outer** → trabalhar **de 1010 pra cima**. Referências do relato: cliente novo **CBV** e máquina de corte **SA-90**. *(A KAB trabalha duas famílias: **Outer** e **Inner**.)*
- **Material normalizado oculto** já causou problema na peça **BL-048-1 (SumiRiko)** — estava normalizada sem o desenho pedir; foi removida ao descobrir. Checar estado de fornecimento.
- **Prensa / flangeamento = risco de trinca.** Material maleável + recozimento pra dobrar, atendendo dureza E flangeamento; processo estável ao longo do projeto.
- **Fronteira de papéis:** a Qualidade valida material, cotas críticas, tolerâncias, testes e monta a especificação. **Tolerância de chanfro/ferramental é com a Ferramentaria (Jônatas).**

## Implicações para os catálogos/agentes (a folar nas próximas rodadas)
- → [[Biblioteca de Tolerancias KAB]]: incorporar a tabela acima.
- → [[Testes e Propriedades de Material KAB]]: Instron interno; flambagem/compressão/expansão; estado normalizado.
- → [[Matriz Peca Processo KAB]]: regra "< SAE 1010 não serve p/ Outer"; alumínio não restringe.
- → [[Playbook - Agente Viabilidade RFQ KAB]]: ordem do método (material → restrição → cotas críticas → testes → especificação).

> ✅ Confirmado pelo Erico (09/06): **BL-048-1** = peça da SumiRiko · **CBV** = cliente novo · **SA-90** = máquina de corte da KAB · o "alta" do áudio = família **Outer**. A KAB trabalha **duas famílias de peça: Outer e Inner**.
