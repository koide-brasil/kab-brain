---
tipo: reuniao
area: kab
status: ativo
criado: 2026-06-02
atualizado: 2026-06-02
tags: [kab, ai-first, academia-agentes, rfq, treinamento, viabilidade-rfq, coleta-humanos]
---

# Roteiro — Reunião Flávio, Fernando e Jônatas para Treinamento do Agente de Viabilidade RFQ

## Resumo executivo

Objetivo: usar a reunião com Flávio/Madora, Fernando e Jônatas como **banca técnica estruturada** para treinar o [[../01-Playbooks/Playbook - Agente Viabilidade RFQ KAB|Agente de Viabilidade RFQ]].

A reunião não deve ser brainstorm solto. O formato recomendado é analisar **RFQs reais** e capturar:

- como cada especialista decide se uma peça é viável;
- quais riscos identifica;
- quais dados faltam;
- quem deve validar;
- qual seria a resposta correta esperada do agente.

Regra de ouro: **caso real treina melhor que regra abstrata**. Regra solta vira frase bonita; caso real vira teste operacional.

---

## Objetivo da reunião

Capturar o raciocínio técnico usado por Flávio/Madora, Fernando e Jônatas para decidir se uma peça/RFQ é viável para a KAB, quais riscos existem, quais dados faltam e quem deve validar cada ponto.

O material capturado deve alimentar:

- playbook do agente;
- catálogos de máquinas, ferramentas, tolerâncias e peça × processo;
- casos de teste;
- rubrica de avaliação;
- regras de escalonamento.

---

## Participantes e papéis

- **Erico** — dono da decisão e visão estratégica.
- **Flávio / Madora** — qualidade, requisitos, tolerâncias, inspeção, PPAP, riscos de cliente.
- **Fernando** — capacidade produtiva, máquinas, gargalos, envelope fabril.
- **Jônatas** — processo, ferramentas, dispositivos, try-out, execução prática.
- **Bruce / agente** — registro, estruturação e transformação em playbook/casos de teste.

**Duração sugerida:** 1h30 a 2h  
**Formato ideal:** reunião gravada + ata estruturada + 3 a 5 RFQs reais.

---

## 1. Abertura — 5 min

### Mensagem inicial sugerida

> Estamos montando um agente de IA para ajudar na análise de viabilidade técnica de RFQs antes da cotação. Ele não vai decidir sozinho agora. A ideia é aprender como vocês analisam uma peça: o que olham primeiro, o que trava, o que exige validação, o que falta no pedido e quando escalar para alguém.
>
> O objetivo hoje não é discutir preço. É viabilidade técnica.

### Regras da reunião

- Não discutir preço neste momento.
- Não buscar consenso artificial: divergências são úteis.
- Se alguém disser “depende”, registrar **depende de quê**.
- Se alguém disser “dá para fazer”, registrar:
  - com qual processo;
  - em qual máquina;
  - com qual ferramenta/dispositivo;
  - com qual risco;
  - com qual fonte ou experiência anterior.
- Se não houver certeza, registrar como **exige validação**, não como aprovado.

---

## 2. Explicação do papel do Agente RFQ — 5 min

### O que o agente deve fazer

O agente deve receber um RFQ/desenho/especificação e responder em uma das quatro classes:

1. **Atende com base documentada**
2. **Provavelmente atende, mas exige validação**
3. **Não atende capacidade atual**
4. **Dados insuficientes**

### O que ele NÃO deve fazer

- Não calcular preço.
- Não responder cliente.
- Não aprovar sozinho.
- Não inventar capacidade.
- Não assumir que “já fizemos parecido” sem evidência.

### Saída esperada do agente

Para cada RFQ, ele deve gerar:

- Parecer;
- Evidências;
- Análise técnica;
- Riscos;
- Escalonamento;
- Dados faltantes.

---

## 3. Mapa de decisão humana — 15 min

Objetivo: entender como cada um raciocina antes de olhar casos específicos.

### Perguntas gerais para todos

1. Quando chega um RFQ novo, qual é a primeira coisa que vocês olham?
2. O que faz vocês pensarem “isso é tranquilo”?
3. O que faz vocês pensarem “isso pode dar problema”?
4. O que faz vocês recusarem tecnicamente uma peça?
5. Que informação costuma faltar no RFQ do cliente?
6. Que tipo de peça parece simples no desenho, mas dá problema na produção?
7. Que tipo de requisito de cliente normalmente passa despercebido?
8. Quais erros já aconteceram por análise incompleta de RFQ?
9. O que deveria obrigatoriamente ser checado antes de cotar?
10. Qual decisão nunca deveria ser tomada só pelo comercial?

---

## 4. Bloco Fernando — Capacidade, máquinas e gargalos — 20 min

**Objetivo:** extrair o envelope real da fábrica.

### Capacidade fabril

1. Quais famílias de peças a KAB faz bem hoje?
2. Quais famílias a KAB até faz, mas com ressalva?
3. Quais famílias a KAB não deveria aceitar hoje?
4. Qual é o limite real de diâmetro externo?
5. Qual é o limite real de comprimento?
6. Existe diferença entre limite “teórico” e limite “confortável”?
7. Que materiais trazem mais risco?
8. Onde entram aço, alumínio, tubo, maciço, perfil especial?

### Máquinas

9. Para cada tipo de operação, quais máquinas são candidatas?
   - corte;
   - chanfro;
   - faceamento;
   - usinagem;
   - furação;
   - rasgo;
   - retrabalho;
   - operações externas.
10. Quais máquinas têm maior histórico de problema?
11. Quais máquinas são gargalo?
12. Quais máquinas estão tecnicamente disponíveis, mas comercialmente ruins por produtividade?
13. Que peça “cabe na máquina”, mas não vale a pena produzir?
14. Em que casos usamos LW ou fornecedor externo?
15. Como o agente deveria diferenciar:
    - “não temos capacidade”;
    - “temos capacidade externa”;
    - “temos capacidade, mas precisa validação”?

### Produtividade e risco

16. O que mais mata produtividade?
17. Que operação costuma ser subestimada na cotação?
18. Quais peças têm setup alto demais?
19. Quando o volume anual muda a decisão técnica?
20. Quais sinais no desenho indicam risco operacional?

### Saída esperada deste bloco

Registrar:

- famílias de peças viáveis;
- limites dimensionais;
- máquinas candidatas por operação;
- gargalos;
- limites de processo;
- casos que exigem validação do Fernando;
- casos que devem ser recusados.

---

## 5. Bloco Jônatas — Processo, ferramentas e execução real — 20 min

**Objetivo:** capturar o que acontece no chão de fábrica, especialmente ferramenta/dispositivo.

### Processo

1. Quando você olha um desenho, o que checa primeiro?
2. Que geometrias dão mais problema?
3. Que tolerâncias são críticas na prática?
4. O que muda entre uma peça “simples” e uma peça problemática?
5. Quais operações precisam de sequência específica?
6. Quais características dependem muito da matéria-prima?
7. Onde a ovalização do tubo atrapalha?
8. Onde rebarba, chanfro ou faceamento viram problema?
9. Quando precisa try-out?
10. Quando precisa fazer amostra antes de aceitar produção?

### Ferramentas e dispositivos

11. Como saber se já existe ferramenta/dispositivo para uma peça?
12. Onde isso está registrado hoje?
13. Quais tipos de peça normalmente exigem ferramenta nova?
14. Qual o risco de aceitar RFQ sem validar dispositivo?
15. Quais dispositivos são críticos hoje?
16. Quais ferramentas têm limitação conhecida?
17. Como o agente deveria perguntar sobre ferramenta/dispositivo?
18. O que seria uma evidência aceitável de que já temos ferramenta?
19. Quando escalar automaticamente para você?
20. Que informação mínima você precisa para validar ferramenta/processo?

### Casos reais

21. Cite uma peça que parecia fácil e deu problema.
22. Cite uma peça que parecia difícil mas a KAB faz bem.
23. Cite uma peça que dependeu de dispositivo.
24. Cite um caso onde faltou informação no RFQ.
25. Cite um caso onde a análise técnica deveria ter barrado antes da cotação.

### Saída esperada deste bloco

Registrar:

- critérios para dispositivo novo;
- sinais de risco no desenho;
- lista de operações críticas;
- perguntas obrigatórias para RFQ;
- regras de escalonamento para Jônatas;
- casos reais para virar teste do agente.

---

## 6. Bloco Flávio / Madora — Qualidade, tolerâncias e requisitos — 20 min

**Objetivo:** capturar risco de qualidade antes da cotação.

### Tolerâncias e medição

1. Quais tolerâncias são tranquilas para a KAB?
2. Quais tolerâncias exigem atenção?
3. Quais tolerâncias devem travar o RFQ até validação?
4. Existe diferença entre tolerância de corte, chanfro, faceamento e usinagem?
5. Quais tolerâncias dependem mais da matéria-prima?
6. Quais características são difíceis de medir?
7. Que requisito exige meio de medição especial?
8. Quando a KAB precisa comprar/calibrar dispositivo de medição?
9. Que tipo de tolerância o cliente costuma colocar sem perceber o impacto?
10. Como o agente deve sinalizar risco dimensional?

### Requisitos de cliente

11. Que clientes têm requisitos mais críticos?
12. Quais documentos o agente deve procurar?
    - desenho;
    - especificação técnica;
    - requisito específico do cliente;
    - PPAP;
    - layout;
    - embalagem;
    - rastreabilidade;
    - tratamento superficial;
    - teste mecânico.
13. Quais requisitos normalmente ficam fora do desenho?
14. O que pode estar em uma especificação separada?
15. Quando precisa consultar requisito de cliente antes de cotar?
16. Quais requisitos tornam uma peça arriscada mesmo sendo fácil de produzir?
17. Quais erros de RFQ já geraram RNC ou problema posterior?
18. O que o agente deveria considerar “risco de qualidade alto”?
19. Quando escalar para Qualidade obrigatoriamente?
20. Que informação mínima você precisa para liberar uma análise?

### Histórico

21. Quais famílias de peça têm histórico de NC/RNC?
22. Quais operações geram mais defeito?
23. Chanfro, faceamento, corte, furação: onde está o maior risco?
24. Há cliente/família que sempre exige cuidado especial?
25. O que o agente nunca deveria aprovar sem qualidade olhar?

### Saída esperada deste bloco

Registrar:

- tolerâncias aceitáveis;
- tolerâncias com ressalva;
- tolerâncias proibitivas;
- requisitos críticos;
- documentos obrigatórios;
- regras de escalonamento para Flávio/Madora;
- casos reais de erro/NC/RNC.

---

## 7. Análise de RFQs reais — 30 a 45 min

Selecionar **3 a 5 RFQs reais**.

### Caso A — Peça simples / claramente viável

Objetivo: ensinar o agente o que é “atende com base documentada”.

Perguntas:

1. Por que essa peça é viável?
2. Qual máquina/processo faria?
3. Existe peça similar já produzida?
4. Que tolerâncias estão dentro da capacidade?
5. Que dados mínimos precisam estar presentes?
6. Qual seria a resposta correta do agente?

### Caso B — Peça viável com ressalva

Objetivo: ensinar “provavelmente atende, mas exige validação”.

Perguntas:

1. Qual é o risco?
2. Quem precisa validar?
3. Que dado está faltando?
4. Precisa try-out?
5. Precisa dispositivo?
6. Precisa fornecedor externo?
7. Qual frase o agente deveria usar?

### Caso C — Peça não viável

Objetivo: ensinar “não atende capacidade atual”.

Perguntas:

1. O que impede?
2. É máquina, tolerância, material, processo, ferramenta ou requisito?
3. Existe alternativa externa?
4. Se sim, ainda é “não atende” ou “atende via terceiro”?
5. Que evidência justifica a recusa?
6. Como evitar que o agente diga “talvez” quando é claramente não?

### Caso D — Dados insuficientes

Objetivo: ensinar o agente a não inventar.

Perguntas:

1. O que falta?
2. Sem esse dado, qual análise fica impossível?
3. O que pedir ao cliente?
4. Quem deve validar internamente?
5. Qual seria a resposta mínima aceitável?

### Caso E — Peça com risco de qualidade

Objetivo: ensinar escalonamento para Flávio/Madora.

Perguntas:

1. Qual requisito é crítico?
2. Está no desenho ou em especificação separada?
3. Como medir?
4. Existe histórico de problema?
5. O agente deveria bloquear, alertar ou pedir validação?
6. Qual classe de resposta correta?

---

## 8. Formato de captura por RFQ

Usar este modelo para cada caso analisado.

### Caso RFQ

**Nome / PN / cliente:**  
**Tipo de peça:**  
**Material:**  
**Operações necessárias:**  
**Volume estimado:**  
**Desenho disponível:** sim/não  
**Especificação adicional:** sim/não  

### Decisão humana

**Classe correta:**

- [ ] Atende com base documentada
- [ ] Provavelmente atende, mas exige validação
- [ ] Não atende capacidade atual
- [ ] Dados insuficientes

**Motivo da decisão:**  
**Fonte/evidência usada:**  
**Máquina/processo candidato:**  
**Ferramenta/dispositivo necessário:**  
**Tolerâncias críticas:**  
**Requisitos críticos:**  
**Riscos:**  
**Dados faltantes:**  

### Escalonamento

**Escalar para:**

- [ ] Fernando
- [ ] Jônatas
- [ ] Flávio/Madora
- [ ] Gabriel
- [ ] Erico
- [ ] fornecedor externo
- [ ] cliente

**Motivo do escalonamento:**  

### Resposta esperada do agente

**Parecer esperado:**  
**Evidências que deve citar:**  
**Riscos que deve levantar:**  
**Perguntas que deve fazer:**  
**Erro crítico se o agente não perceber:**  

---

## 9. Perguntas finais de calibração — 10 min

1. Qual erro do agente seria inaceitável?
2. Qual erro seria aceitável em fase de aluno?
3. Quando o agente deve responder “dados insuficientes”?
4. Quando o agente deve escalar automaticamente?
5. Que tipo de afirmação o agente nunca deve fazer?
6. Quais fontes são confiáveis?
7. Quais fontes são apenas indício?
8. O que é conhecimento documentado?
9. O que ainda está só na cabeça de vocês?
10. Que documentação precisamos criar primeiro?

---

## 10. Fechamento — 5 min

Ao final, sair com:

1. **Lista de regras técnicas confirmadas**
   - limites de máquina;
   - tolerâncias;
   - famílias de peça;
   - operações críticas.
2. **Lista de lacunas**
   - ferramentas não catalogadas;
   - documentos faltantes;
   - requisitos que precisam ser organizados.
3. **Lista de casos de teste**
   - RFQs bons;
   - RFQs ruins;
   - RFQs duvidosos;
   - RFQs com risco de qualidade.
4. **Regras de escalonamento**
   - quando chama Fernando;
   - quando chama Jônatas;
   - quando chama Flávio/Madora;
   - quando sobe para Erico/Gabriel.
5. **Próxima ação**
   - transformar a ata em playbook/catálogo/casos;
   - rodar o agente contra os casos;
   - comparar resposta da IA contra decisão humana.

---

## Recomendação de estrutura de condução

Não fazer uma única reunião tentando resolver tudo profundamente.

### Reunião 1 — Mapeamento técnico

**Participantes:** Fernando + Jônatas + Flávio/Madora  
**Foco:** capacidade, processo, qualidade, critérios gerais.

### Reunião 2 — Casos reais

**Participantes:** os mesmos  
**Foco:** 3 a 5 RFQs reais, decisão caso a caso.

### Reunião 3 — Validação do agente

**Participantes:** Erico + Gabriel + técnicos  
**Foco:** mostrar respostas do agente e corrigir.

---

## Observação do Bruce

O roteiro é intencionalmente pesado em perguntas, mas a reunião não deve virar entrevista abstrata. O melhor uso é abrir desenho/RFQ real e perguntar:

> Esse aqui passa ou não passa? Por quê?

A resposta humana contextualizada vira caso de teste. A regra solta vira só mais uma frase bonita no vault — e o vault já tem markdown suficiente para fundar uma pequena religião.

## Links relacionados

- [[../_MOC-Academia-Agentes-KAB|Academia de Agentes KAB]]
- [[../01-Playbooks/Playbook - Agente Viabilidade RFQ KAB|Playbook - Agente Viabilidade RFQ KAB]]
- [[../00-Governanca/Regras de Escalonamento - Agentes RFQ KAB|Regras de Escalonamento - Agentes RFQ KAB]]
- [[../04-Casos-Teste/Casos de Teste - Viabilidade RFQ KAB|Casos de Teste - Viabilidade RFQ KAB]]
