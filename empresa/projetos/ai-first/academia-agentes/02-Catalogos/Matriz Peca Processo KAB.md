---
tipo: nota
area: kab
status: em-andamento
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, processo, peca, rfq, coleta]
---

# Matriz Peça × Processo KAB

| Família de peça | Material | Operações típicas | Máquinas candidatas | Ferramental | Risco técnico | Validação humana |
|---|---|---|---|---|---|---|
| Tubo aço simples | aço | corte / chanfro / faceamento | a validar | a validar | baixo/médio a validar | Fernando/Jônatas |
| Perfil alumínio | alumínio | corte / usinagem / inspeção | a validar | a validar | a validar | Fernando/Jônatas/Qualidade |
| Maciço | aço | usinagem | a validar | a validar | a validar | Fernando/Jônatas |
| Peça com beneficiamento externo | aço/alumínio | produção + fornecedor externo | a validar | a validar | médio/alto | Gabriel/Qualidade/Compras |

## Como usar

O Agente de Viabilidade cruza a peça nova contra esta matriz para propor rota preliminar e riscos.

## Leitura operacional inicial

Com base nas notas já ingeridas, a matriz deve começar simples e centrada em rota de corte/chanfro, porque é onde aparecem as evidências mais repetidas:

- **Família de peça com maior sinal operacional:** tubo e perfil com operação de corte/chanfro.
- **Ponto crítico recorrente:** controle de chanfro e comprimento final.
- **Risco técnico recorrente:** desvio de chanfro, irregularidade e necessidade de ajuste fino de setup.
- **Validação humana obrigatória** quando a peça tiver requisito de chanfro crítico, comprimento sensível ou histórico de alerta de qualidade.

## Estrutura mínima sugerida

| Família de peça | Material | Operações típicas | Máquinas candidatas | Ferramental | Risco técnico | Validação humana |
|---|---|---|---|---|---|---|---|---|
| Tubo aço simples | aço | corte / chanfro / faceamento | a validar | a validar | baixo/médio a validar | Fernando/Jônatas |
| Perfil alumínio | alumínio | corte / usinagem / inspeção | a validar | a validar | a validar | Fernando/Jônatas/Qualidade |
| Maciço | aço | usinagem | a validar | a validar | a validar | Fernando/Jônatas |
| Peça com beneficiamento externo | aço/alumínio | produção + fornecedor externo | a validar | a validar | médio/alto | Gabriel/Qualidade/Compras |

## Regras mínimas

- Não inferir máquina candidata sem fonte de máquina/célula.
- Não tratar alerta de qualidade como regra universal sem validação humana.
- Quando houver histórico de chanfro fora do especificado, a rota deve ser marcada como sensível.
- Quando faltar dado de tolerância ou operação, retornar `dados insuficientes`.

## Links relacionados
- [[Catalogo de Maquinas KAB]]
- [[Catalogo de Ferramentas KAB]]
- [[Biblioteca de Tolerancias KAB]]
- [[Playbook - Agente Viabilidade RFQ KAB]]
