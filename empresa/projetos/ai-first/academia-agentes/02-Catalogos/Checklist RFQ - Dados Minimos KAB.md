---
tipo: nota
area: kab
status: ativo
criado: 2026-05-31
atualizado: 2026-05-31
tags: [kab, rfq, checklist, comercial]
---

# Checklist RFQ — Dados Mínimos KAB

## Dados mínimos para intake

- [ ] Cliente
- [ ] Contato / canal de origem
- [ ] Part number do cliente
- [ ] Nome/descrição da peça
- [ ] Desenho ou especificação técnica
- [ ] Revisão do desenho
- [ ] Material
- [ ] Dimensões principais
- [ ] Tolerâncias críticas
- [ ] Volume mensal/anual
- [ ] SOP ou prazo esperado
- [ ] Tratamento/beneficiamento externo
- [ ] Embalagem/logística
- [ ] Target price, se informado
- [ ] Requisitos de qualidade/PPAP/layout

## Se faltar

- Sem desenho: não analisar viabilidade técnica completa.
- Sem material: não calcular MP.
- Sem volume: não estimar processo/margem corretamente.
- Sem tolerâncias críticas: classificar como risco técnico.

## Saída do Intake

```markdown
RFQ-ID:
Cliente:
PN:
Status: Completo / Incompleto
Lacunas:
Perguntas para cliente/vendedor:
Próximo responsável:
```

## Links relacionados
- [[Playbook - Agente Intake RFQ KAB]]
- [[Playbook - Agente Viabilidade RFQ KAB]]
