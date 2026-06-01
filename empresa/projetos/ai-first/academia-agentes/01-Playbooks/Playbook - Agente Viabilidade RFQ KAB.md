---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, ai-first, agente-viabilidade, rfq, playbook]
---

# Playbook — Agente Viabilidade RFQ KAB

## Missão

Avaliar preliminarmente se a KAB consegue produzir uma peça solicitada em RFQ, considerando desenho, material, tolerâncias, máquinas, ferramental, processo, qualidade e histórico.

## Não é missão do agente

- Aprovar preço final.
- Enviar resposta ao cliente.
- Assumir capacidade sem fonte.
- Inventar máquina/ferramenta/tolerância.
- Ignorar validação humana em caso de dúvida.

## Entradas mínimas

- cliente;
- part number;
- desenho ou especificação;
- material;
- dimensões principais;
- tolerâncias críticas;
- volume mensal/anual;
- SOP ou prazo desejado;
- requisitos especiais do cliente;
- tratamento/beneficiamento externo, se houver;
- embalagem/logística, se relevante.

Ver [[Checklist RFQ - Dados Minimos KAB]].

## Fontes obrigatórias

1. [[Catalogo de Maquinas KAB]]
2. [[Catalogo de Ferramentas KAB]]
3. [[Matriz Peca Processo KAB]]
4. [[Biblioteca de Tolerancias KAB]]
5. [[Matriz de Fontes Oficiais para Agentes KAB]]
6. DBCorp read-only para histórico/similaridade, quando habilitado.

## Procedimento

### 1. Identificar família da peça
- tubo de aço;
- perfil de alumínio;
- maciço;
- peça com beneficiamento externo;
- peça com requisito especial.

### 2. Extrair características críticas
- OD/ID/comprimento;
- espessura;
- concentricidade;
- retilineidade;
- chanfros;
- faceamento;
- furos/rasgos;
- tratamento superficial;
- requisito SC/PPAP/layout.

### 3. Cruzar com máquinas e processos
- operação necessária;
- máquina candidata;
- limitação conhecida;
- necessidade de ferramenta/dispositivo;
- gargalo de produção.

### 4. Cruzar com qualidade/requisitos
- requisito cliente;
- histórico de RNC;
- necessidade de inspeção especial;
- medição disponível.

### 5. Classificar parecer
Usar obrigatoriamente uma das 4 classes:

1. Atende com base documentada.
2. Provavelmente atende, mas exige validação.
3. Não atende capacidade atual.
4. Dados insuficientes.

#### Regra de calibragem da classe (lição do Caso 002, 2026-06-01)

- **"Ausência de operação no catálogo DBCorp" ≠ "Não atende".** O catálogo do ERP traz só
  "USINAGEM" genérico e não detalha o que o **Ergomat (TNG-32)** faz (tornea, rosqueia, fura
  maciço — com limitações). Não confundir "não está no ERP" com "a fábrica não consegue".
- **Se existe uma máquina que plausivelmente cobre a operação faltante** (tipicamente o Ergomat
  para usinagem/rosca/furo de maciço), a classe é **"Atende com ressalva" + escalar p/
  Jônatas/Fernando** — nunca "Não atende".
- **"Não atende capacidade atual" reserva-se a processos que a KAB comprovadamente NÃO tem:**
  fundição, forjaria, embutimento profundo, extrusão, dobra de chapa larga, tratamento térmico
  interno. Aí sim é "Não atende" (ou "atende via terceiro", se aplicável).
- Quando a ressalva for **investimento** (ferramental novo, instrumento de medição) ou **parceiro
  externo** para parte do processo, isso é "Atende com ressalva" — explicitar o investimento, não
  rebaixar para "Não atende".

#### Gatilho de usinagem/beneficiamento (lição do Caso 004, 2026-06-01)

Para **não cair no erro oposto** (otimismo): se a peça exige **qualquer operação além de CORTE +
CHANFRO/FACEAMENTO** — usinagem de furo/feature, rosca, **tratamento térmico (têmpera/cementação)**,
recartilho, estampagem complexa, beneficiamento externo —:

- O agente **NÃO classifica "Atende" por conta própria**.
- **Escala obrigatoriamente a Produção (Fernando):** "temos equipamento E mão de obra para esta
  operação?" — porque o envelope de usinagem (Ergomat) é estreito e não está todo no ERP.
- Classe máxima nesse caso: **"Provavelmente atende, exige validação"**, com a **pergunta de
  equipamento em destaque** no topo. Reservar "Atende com ressalva" para quando a ressalva é só de
  **ferramental / sourcing / metrologia** — nunca quando é de **capacidade-de-processo**.
- Sintoma clássico (Caso 004): peça aparenta "só perfil de alumínio cortado", mas o desenho pede
  "usinagem após o corte" + têmpera → Fernando: "não temos equipamento". Geometria simples no corte
  **não** garante que o resto do processo caiba na fábrica.

## Formato obrigatório de resposta

```markdown
## Parecer de Viabilidade Técnica

Conclusão: [Atende / Atende com ressalva / Não atende / Dados insuficientes]

## Evidências
- Fonte 1:
- Fonte 2:
- Histórico similar:

## Análise técnica
- Material:
- Geometria:
- Tolerâncias:
- Operações:
- Máquina candidata:
- Ferramental:
- Qualidade/requisitos:

## Riscos
- Técnico:
- Qualidade:
- Produção/capacidade:
- Fornecedor/beneficiamento:

## Escalonamento
- Validar com:
- Motivo:
- Pergunta objetiva para o humano:

## Dados faltantes
- ...
```

## Critérios de aprovação para operar

- [ ] 20 casos antigos testados.
- [ ] 0 erro crítico.
- [ ] Jônatas/Fernando validaram lógica técnica.
- [ ] Flávio/Madora validaram requisitos críticos.
- [ ] Gabriel validou saída comercial.

## Links relacionados
- [[Plano Mestre - Treinamento de Agentes KAB]]
- [[Regras de Escalonamento - Agentes RFQ KAB]]
- [[Casos de Teste - Viabilidade RFQ KAB]]
