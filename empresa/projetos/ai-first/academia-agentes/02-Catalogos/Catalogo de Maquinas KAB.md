---
tipo: nota
area: kab
status: em-andamento
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, maquinas, capacidade, rfq, coleta]
---

# Catálogo de Máquinas KAB

> Preencher com Jônatas/Fernando. Este catálogo é fonte crítica para o Agente de Viabilidade RFQ.

## Como preencher

Uma linha por máquina ou célula produtiva. Não inventar dado. Se não souber, marcar `a validar`.

## Leitura operacional inicial

Com base nas notas já ingeridas, o que aparece com força é isso aqui:

- **Corte** é o processo mais recorrente nas fichas de parâmetros e ferramental.
- Os campos observados mais vezes foram: rotação de corte, avanço de corte, pressão dos mordentes, sala lâmina e serra/disco.
- Há documentação de **setup/liberação** e de **treinamento de manutenção** ligada a chanfro e corte.
- Existem evidências de **alertas de qualidade** associados a chanfro acima do especificado, chanfro irregular e variação de comprimento da peça.
- Conclusão prática: o módulo precisa tratar corte/chanfro como rota padrão, mas com validação humana quando houver requisito crítico de chanfro, comprimento ou tolerância apertada.

## Estrutura mínima sugerida

| Máquina / célula | Operações possíveis | Materiais | Faixa dimensional | Tolerância típica | Limitações conhecidas | Setup típico | Responsável | Status |
|---|---|---|---|---|---|---|---|---|
| A preencher | corte / chanfro / faceamento / usinagem | aço / alumínio | a validar | a validar | a validar | a validar | a validar | pendente |

## Campos obrigatórios

- Nome interno da máquina/célula.
- Operações possíveis.
- Material atendido.
- Faixa de diâmetro/perfil/comprimento.
- Tolerâncias normais.
- Tolerâncias que exigem validação.
- Limitações conhecidas.
- Ferramentas/dispositivos associados.
- Setup e gargalos.
- Evidência documental de liberação/setup.

## Limitações que já devem aparecer como alerta

- Chanfro fora do especificado ou irregular.
- Variação de comprimento da peça.
- Dependência de setup correto e de ferramental ajustado.
- Parâmetros de corte sem preenchimento confiável não podem virar regra automática.

## Perguntas para coleta

- Que peças essa máquina faz bem?
- Que peças ela faz, mas dá dor de cabeça?
- Que peças ela não deve fazer?
- Quais tolerâncias são tranquilas?
- Quais tolerâncias exigem try-out?
- Qual máquina é gargalo?
- Em quais casos o setup precisa de liberação formal?

## Perguntas para coleta

- Que peças essa máquina faz bem?
- Que peças ela faz, mas dá dor de cabeça?
- Que peças ela não deve fazer?
- Quais tolerâncias são tranquilas?
- Quais tolerâncias exigem try-out?
- Qual máquina é gargalo?

## Links relacionados
- [[Roteiro Entrevista - Jonatas - Maquinas e Ferramental]]
- [[Roteiro Entrevista - Fernando - Producao e Capacidade]]
- [[Matriz Peca Processo KAB]]
