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

#### Gatilho de usinagem/beneficiamento e o path LW Usinagem (lição dos Casos 002 e 004, revisado 2026-06-01)

A KAB **não se limita ao que faz in-house**. Tem uma **rede de parceiros de beneficiamento
formalizada na cotação** (modelo M1 tem linhas dedicadas: **LW** [usinagem], CASTEL, WINOA,
ECOPLATING, ITARAÌ, LIMMAR — cada uma com frete + custo adm.). Logo:

- **Operação fora do core (CORTE+CHANFRO) ≠ "Não atende".** Usinagem de furo/feature, rosca,
  torneamento de maciço, usinagem de perfil não-tubular, tratamento térmico, plating → quase sempre
  há **path via parceiro**. O custo entra na linha do parceiro na cotação.
- **Regra do path LW:** **perfil de alumínio NÃO-tubular** ou peça que exige **usinagem mais
  complexa** → vai para a **LW Usinagem** (parceiro de usinagem; FornecId 38). Veja [[LW Usinagem]].
  Classe correta = **"Atende via LW Usinagem (parceiro)"**, não "Não atende". (Confirmado: cotações
  Zhongding TA60-1001300AC e TA60-1001400BC têm a linha LW preenchida — R$ 1,35 e R$ 3,70/pç — a KAB
  cotou e essas peças são viáveis via LW.)
- **Cuidado com a FOR-018:** quando o Fernando responde *"não temos equipamento"*, isso é a visão
  **in-house**. **Não** é o veredito final — checar se há path de parceiro (LW/beneficiamento) antes
  de concluir. Muitas peças de usinagem viram "Atende via LW" mesmo com Fernando dizendo "não temos".
- **Quando escalar (não auto-decidir):** se a operação não se encaixa claramente no perfil da LW
  (usinagem de tubo/perfil/maciço) nem nos parceiros de beneficiamento conhecidos → "Provavelmente
  atende, exige validação" + escalar pro Gabriel/Jônatas confirmarem o parceiro e o custo.
- **"Não atende" de verdade** = processo que **nem a KAB nem a rede de parceiros faz**: fundição,
  forjaria, embutimento profundo, extrusão (a KAB compra perfil extrudado, não extruda).

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
