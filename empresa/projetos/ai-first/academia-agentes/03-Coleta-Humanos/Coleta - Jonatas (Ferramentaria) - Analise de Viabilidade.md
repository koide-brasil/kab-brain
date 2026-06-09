---
tipo: nota
area: kab
status: ativo
criado: 2026-06-09
atualizado: 2026-06-09
tags: [kab, ai-first, coleta, entrevista, ferramentaria, ferramental, usinagem, viabilidade, rfq, jonatas]
fonte: "Entrevista 1:1 Érico × Jônatas (Ferramentaria), 08/06/2026 — áudio 27min transcrito (WhisperX large-v3)"
---

# Coleta Humano — Ferramentaria (Jônatas): método de análise de viabilidade

> Conhecimento tácito do líder da Ferramentaria. Responde ao [[Roteiro Entrevista - Jonatas - Maquinas e Ferramental]]. Ótica de **ferramental / máquina / usinagem (chanfro/cabeçote)** — complementa a Qualidade ([[Coleta - Flavio (Qualidade) - Analise de Viabilidade]]). Alimenta [[Catalogo de Maquinas KAB]], [[Biblioteca de Tolerancias KAB]] e o [[Playbook - Agente Viabilidade RFQ KAB]].

## Sequência do método

1. **Baixar documentos:** Excel do comercial + desenho **PDF 2D** (e 3D/SolidWorks se houver). Sem desenho (só **croqui**) → responder por **expertise + peças análogas (engenharia reversa)**.
2. **Conferir o recorte do comercial × desenho.**
3. **Ler a legenda primeiro** — ela amarra: range, **dureza, concentricidade, Ø e comprimento**, grau, estamparia, **livre de rebarba**. Verificar atualizações do desenho.
4. **Preencher a tabela de criticidade** → dificuldade de usinagem; tolerância apertada **dispara alerta**.
5. **Escolher a máquina** (peça + manual da máquina).

## Seleção de máquina por família (→ enriquece [[Catalogo de Maquinas KAB]])

| Tipo de peça | Máquina preferencial | Observação |
|---|---|---|
| **Inner** | **NP-57** | vai bem na maioria dos inners |
| **Outer** | **FA-100** | família "alta" |
| **Diâmetro bem maior** | **NPK-250** | peças de Ø grande |
| **Serrilhado / recartilho** | **FA-100 linha 1** | única com lubrificação → dedicada a isso |

Considerar limite do corredor, **Poka-Yoke** e vistoria. Peça curta → compensar com **anel extensivo** (geometria do cabeçote). Mesma tolerância de comprimento vale NP-57 e FA-100.

## Tolerâncias (ferramentaria) (→ enriquece [[Biblioteca de Tolerancias KAB]])

| Característica | Confortável | Difícil / alerta |
|---|---|---|
| Comprimento **Inner** | **±0,2** (tranquilo até ±0,1) | — |
| Comprimento **Outer** | **±0,2** | **±0,1 = complicado** (corte preciso + risco de "sorrisinho" no chanfro por ovalização) |
| **Chanfro** (dimensão) | **0,5 a 1,0 mm** (0,4–0,5 ok) | muito apertado → concentricidade/ovalização; **raio = nunca feito** |
| **Ângulo do chanfro** | **30° padrão** (prensa 25–35°) | 45° tende ao erro (lados desiguais 0,2×0,1); sem amarração no desenho → **range aberto ±10°** |

> **Glossário — bits:** na KAB, "bits" é o **suporte da pastilha** na chanfradeira (≠ pastilha, que é o inserto de corte). A KAB **fabrica o bit em ângulo** pra acoplar a pastilha e obter a angulação do chanfro → **o ângulo do chanfro é definido pelo bit**. Trocar o bit muda o ângulo; por isso o range aberto e o histórico de parâmetros.

## Regra de ouro — não adicionar o que o desenho não pede
Caso **SumiRiko**: desenho "livre de rebarba", **sem pedir chanfro**; a KAB pôs chanfro por conta própria. Em série ficou inconsistente e o cliente passou a exigir o extra que o desenho não amarrava → KAB virou refém. **"Livre de rebarba" = não amarra; não criar característica que não se sustenta em série.** Se for adicionar por estética, amarrar com **range aberto** e registrar.

## Gatilhos de alerta no desenho
- **Recartilho/serrilhado** (ex.: peça **BJ-045** da SumiRiko) → cabeçote **tipo gaveta** (não aberto), senão o externo sai da cápsula; **rebaixo** (ex.: peça **510** da DN, alumínio — faceamento + ângulo externo, balancear cabeçote, pastilha específica); **inner muito pequeno** (espaço pra ferramenta entrar).

## Migração Ergomat / maciço
- Validar **dimensão da máquina**. **Amostra ≠ série** → exige tempo de estudo na prática (a máquina aguenta?). **Maciço é mais barato** mas a dinâmica/tempo pode complicar (papel × prática).

## Decisão de ferramenta/cabeçote = VOLUME
- **Ideal: cabeçote dedicado** (menos setup, mais assertivo). Volume alto → dedicado; volume baixo / entrega única → **não compra cabeçote** (caro), compartilha (poucos) com **histórico de parâmetros amarrado** (risco de mistura: peça X 20° × peça Y 45°). Dedicado pleno = **calibre PNP (Passa/Não-Passa, Go/No-Go)** + matriz de vistoria + **castanha dedicada**.
- Decisão de comprar ferramenta é do **comercial pelo volume** (Fernando/Marcelo/Gabriel). Liga a [[Regras de Escalonamento - Agentes RFQ KAB]] (ferramental = Jônatas; volume/compra = comercial).

## Normas
Tabela na legenda = **tabelas ISO**; hoje Jônatas + Fernando + Flávio resolvem juntos. Cliente pode exigir norma específica (ex.: **FIAT**) → buscar norma → tabela → tolerância.

> ✅ Confirmado pelo Erico (09/06): **510** = peça da DN (com rebaixo, alumínio; código exato a confirmar) · **BJ-045** = peça da SumiRiko com recartilho/serrilhado · **PNP** = calibre **Passa/Não-Passa (Go/No-Go)**, ferramenta de medição rápida.
