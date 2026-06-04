---
tipo: nota
area: kab
status: ativo
criado: 2026-06-03
atualizado: 2026-06-03
tags: [kab, rfq, viabilidade, caso-teste, metrologia, ergomat, repetibilidade]
rfq_id: "2099701402"
cliente: IRBAS
classe_agente: Atende com ressalva
classe_humano: Produzível com ressalva forte (amostragem controlada + medição externa)
modo: caso-real
---

# Caso 008 — 2099701402 · IRBAS · ESPAÇADOR (terminal da barra de direção)

> Caso **real** destilado da reunião de produção de 2026-06-03 (não é um RFQ a priori — é a
> peça já cotada que travou na produção). Valor pro agente: é o **primeiro caso onde a
> metrologia, e não o processo de fabricação, é o gargalo de viabilidade**. Ensina o gate
> novo da [[Biblioteca de Tolerancias KAB]] (capacidade de *verificar* ≠ capacidade de *produzir*).

## Identificação
- Caso ID: 008
- Cliente: IRBAS
- PN: 2099701402 · ESPAÇADOR
- Aplicação: **terminal da barra de direção** — recebe o pivô cônico que sai da caixa de
  direção e faz pressão. Cota dimensional fina é funcional (encaixe cônico) → medição confiável é obrigatória.

## Entrada original
- Material: aço **SAE 1020 nacional**
- Processo: **torneado** na célula **ERGOMAT** (CNC)
- Característica crítica: cota interna fina (nominal da ordem de **Ø18,010**, tolerância apertada);
  furação + faceamento; encaixe cônico funcional
- Volume: ~14.000/ano (a confirmar /ano vs /mês)

## Decisão humana original (reunião 03/06)
- **Produzível, mas com ressalva forte.** Dois gargalos, ambos fora do processo de corte/chanfro:
  1. **Metrologia ausente internamente** — projetor de perfil deu peça boa, **tridimensional
     deu ~2 centésimos fora**; tridimensional é **terceirizado** (gargalo de custo e prazo;
     travou no feriado).
  2. **Repetibilidade da ERGOMAT** — na furação a alimentação automática "empurra" e o
     **comprimento varia**; a máquina **não garante repetibilidade** sem ajuste contínuo.
- **Plano:** amostragem controlada (gráfico de deriva, reajuste a cada N peças) + medição
  externa + renegociar tolerância/prazo com cliente. Raiz resolvida pela **CMM em aquisição (~60d)**.

## Resultado real posterior
- Em produção sob amostragem controlada (jun/2026). RNC potencial: variação de comprimento
  por repetibilidade da alimentação automática. Calibrador/contra-peça a usinar conforme desenho
  (molde de resina/massinha **descartado** — mole demais pra garantir a cota).

## Resposta esperada do agente
- **Classe: Atende com ressalva** (dupla):
  - **Ressalva de metrologia:** característica fina que só fecha em tridimensional → hoje
    metrologia terceirizada (gargalo); **não classificar "atende" só porque há projetor de
    perfil** (não é confiável p/ cota fina). Vira "Atende" pleno quando a CMM entrar.
  - **Ressalva de processo:** torneamento c/ alimentação automática na ERGOMAT **não garante
    repetibilidade de comprimento** em peça curta → exige try-out + controle por amostragem.
- **Fontes que deveria consultar:** [[Biblioteca de Tolerancias KAB]] (gate de metrologia +
  capacidade de processo), [[Catalogo de Maquinas KAB]] (ERGOMAT), [[Matriz Peca Processo KAB]],
  DBCorp (similaridade — poucas peças torneadas na ERGOMAT, sem comparável de peso similar).
- **Escalonamento correto:** característica crítica/meio de medição → **Flávio/Madora**;
  capacidade/repetibilidade da máquina → **Fernando**; exceção comercial/prazo → **Gabriel**.
- **Riscos que deveria apontar:** (1) sem metrologia interna não há controle 100% em escala;
  (2) repetibilidade da ERGOMAT; (3) projetor de perfil dá falso-positivo dimensional.

## Avaliação do agente
- _(a preencher quando rodar o caso pela skill)_ — checar se o agente **dá a ressalva de
  metrologia** (e não só a de processo). É o ponto que diferencia este caso.

## Correção aplicada no catálogo
- ✅ [[Biblioteca de Tolerancias KAB]] ganhou seção **"Capacidade de MEDIÇÃO (metrologia)"**
  com o gate: projetor não confiável p/ cota fina · tridimensional terceirizado = gargalo ·
  CMM Mitutoyo (0,0001 mm) em aquisição · regra "produzir ≠ verificar".

Links: [[Biblioteca de Tolerancias KAB]] · [[Catalogo de Maquinas KAB]] · [[Caso 007 - BJ-092-2 SumiRiko Inner Aco Cementado]]
