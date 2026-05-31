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
