---
tipo: nota
area: sgk
status: ativo
criado: 2026-05-23
atualizado: 2026-05-23
tags: [sgk, rnc, qualidade, atalho]
---

# RNC — fluxo resumido (atalho do PR-07)

Atalho operacional pro fluxo de RNC (Relatório de Não Conformidade) e Ação Corretiva. Detalhe completo em [[Procedimentos/PR-07 Controle de NC e Acao Corretiva]].

## Prazos (dias úteis)

| Etapa | Prazo | O que fazer |
|---|---|---|
| **Contenção** | 1 dia | Conter o problema (segregar lote suspeito, parar máquina, etc) |
| **Causa raiz** | 7 dias | Análise via 5 porquês / Ishikawa / 8D |
| **Ação corretiva** | 15 dias | Plano implementado pra eliminar a causa |
| **Oportunidade** | 20 dias | Identificar melhoria sistêmica (oportunidade, não só correção) |
| **Eficácia** | 60 dias / 3 lotes | Validar que a ação funcionou |

## Caixas físicas

- **Caixa vermelha** = NC detectada, aguarda análise. **15 dias** pra Qualidade dispor (analisar + decidir).
- Após 15 dias, ou abre RNC formal ou descarta com justificativa.

## Lotes em ação corretiva

- **Etiqueta amarela** = lote amostra em monitoramento. Inspeção 200%, 60 dias.
- **Etiqueta rosa** = embarque controlado (cliente foi avisado). Inspeção 200%, 60 dias.
- Após 60 dias / 3 lotes consecutivos sem reincidência → fechamento da RNC.

## Comunicação ao cliente

- **Alerta da Qualidade** ao cliente: válido por 1 mês + 3 lotes consecutivos sem reincidência. Após isso, fecha.

## Ferramentas obrigatórias

| Ferramenta | Quando usar |
|---|---|
| **5 Porquês** | RNCs simples (causa única clara) |
| **Ishikawa** (espinha de peixe) | RNCs com múltiplas causas potenciais |
| **8D** | RNC de cliente (especialmente automotivo — requisito de qualidade) |

## Responsabilidades

| Papel | Responsabilidade |
|---|---|
| Operador / Líder de turno | Contenção imediata, abertura da RNC |
| Qualidade | Análise, classificação, decisão sobre disposição |
| Gerente da área | Implementação da ação corretiva |
| Qualidade | Validação da eficácia + fechamento |

## Quando Tony pode ajudar

- ✅ Listar RNCs abertas há mais de X dias (estourando prazo)
- ✅ Identificar padrões (mesma máquina/cliente repete? recorrência)
- ✅ Lembrar prazos dos 5 estágios
- ❌ Não opina sobre causa raiz (papel humano)
- ❌ Não fecha RNC autonomamente (sempre validação Qualidade)

## Links

- [[Procedimentos/PR-07 Controle de NC e Acao Corretiva]] — procedimento completo
- [[Mapas-Processo/Qualidade]] — mapa do processo
- [[../indicadores/IQF Fornecedores]] — IQF inclui RNCs de fornecedor
