---
tipo: indice
area: kab
status: ativo
criado: 2026-05-20
atualizado: 2026-05-20
tags: [drive-index, producao, fernando-macedo, marcelo-gois]
---

# 01-KAB/Drive-Index/PRODUCAO/

Notas-resumo das pastas **PRODUCAO** e **PRODUÇÃO** do Drive servidor da KAB.

## ⚠️ 2 pastas distintas no Drive

Há **2 pastas com nomes parecidos** mas funções diferentes:

| Pasta | ID | Função |
|---|---|---|
| **PRODUCAO** (sem acento) | `1_ITPy9XqFxq6dAT7phFrwiVUXPZpu5ta` | Operacional (Registros de Corte, Acompanhamento Meta, Paquímetros) |
| **PRODUÇÃO** (com acento) | `1qnR0Wrf-LUu6fnQXwLapXJG4gmrtuSfR` | Treinamentos (FOR-030, Matriz Versatilidade, Pendências) |

Gestores: **Fernando Wellington de Macedo** (Coordenador Produção) + **Marcelo de Goís** (Assistente PCP)

## Notas criadas

| Nota | Cobertura |
|---|---|
| **[[FOR-030-Planejamento-Treinamentos-2026]]** | Planejamento anual de treinamentos operadores (P/O/R/X) |
| **[[Matriz-Versatilidade-Operadores]]** ⭐ | 28 operadores × 20+ treinamentos com nível 0-100 |
| **[[Treinamentos-a-Realizar-2026]]** | Pendências por colaborador (Produção + Qualidade) |
| **[[Registros-de-Corte-por-PN]]** | 91 arquivos · 1 por PN com parâmetros corte |
| **[[Acompanhamento-Meta-Solucao-Diario]]** | FOR-111 mensal — daily físico produção (mar-jun/2025) |

## Estrutura PRODUCAO (sem acento)

```
PRODUCAO/
├── Acompanhamento de meta e solução diário (FOR-111 mensal)
├── CONTROLE DE PAQUÍMETROS (16 sub — 1 por instrumento)
├── REGISTRO DE CORTE ATUALIZADO (91 arq — 1 por PN) 🔥
├── PARÂMETROS E FERRAMENTAL (56 arq — legado 2022)
├── REGISTRO DE INSPEÇÃO ATUALIZADO (legado)
├── OBSOLETOS
└── Etiquetas (209 arq — modelos antigos)
```

## Estrutura PRODUÇÃO (com acento)

```
PRODUÇÃO/
├── FOR-030 REV01 PLANEJAMENTO ANUAL TREINAMENTOS OPERADORES (mod HOJE 20/05)
├── Matriz de versatilidade - Operador de Máquina (mod HOJE 20/05)
└── TREINAMENTOS A REALIZAR 28-04-2026
```

## Conexão com sistemas vivos

- **DBCorp** ([[dbcorp-mapeamento]]) — fonte viva de OP, refugo, apontamento
- **[[skill-daily-meeting]]** — aba Produção consome DBCorp
- **[[skill-custeio-mensal]]** + **[[skill-custeio-anual]]** — custeio por OP/máquina/peça
- **[[MAPA-PRODUCAO-2026]]** — gestor Fernando Macedo (rev 15)

## Status

✅ **PRODUCAO/PRODUÇÃO — pastas vivas absorvidas (5 notas)**

Não absorvido individualmente: PARÂMETROS E FERRAMENTAL (legado 2022), Etiquetas (modelos), CONTROLE DE PAQUÍMETROS (1 sub por instrumento — calibrações).

## Relacionado

- [[MAPA-PRODUCAO-2026]] · [[MAPA-APOIO-PRODUCAO-2026]]
- [[FOR-058-Controle-Informacao-Documentada-Processos]] (SGK)
- [[Treinamentos-RH]] (RH) — execução
- [[ITs-Operacao-Maquinas]] · [[ITs-Qualidade-Inspecao]] · [[ITs-PCP-Sistemas-Atualizacao]] (SGK)
- [[Indicadores-RH]] (RH)
- [[kab-processo-producao]]
- [[../COMERCIAL/_sobre]]
- [[../FINANCEIRO/_sobre]]
