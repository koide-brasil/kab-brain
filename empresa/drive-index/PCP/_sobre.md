---
tipo: indice
area: kab
status: ativo
criado: 2026-05-20
atualizado: 2026-05-20
tags: [drive-index, pcp, marcelo-gois, fernando-macedo]
---

# 01-KAB/Drive-Index/PCP/

Notas-resumo do PCP (Planejamento e Controle da Produção) da KAB.

## ⚠️ Estrutura do PCP no Drive — confusa

Há 2 pastas com nome **PCP** no Drive, MAS o PCP **vivo** está na verdade dentro de **COMERCIAL/00-OBSOLETO/PLANEJAMENTO/** (a pasta "OBSOLETO" não é obsoleta!):

| Local | ID | Status |
|---|---|---|
| **PCP** (raiz compartilhada) | `1gf3GWc21TBthmRGekQxXisSf3FVbos98` | 📦 Legado (último arquivo 2022) |
| **PCP/PCP/** | `1gUxJqr_JNkaoegFSBOFrC2NdSwVGX73s` | 📦 Legado (último 2022) |
| **COMERCIAL/00-OBSOLETO/PLANEJAMENTO/** | `1diI45BkYIxVhGQuB_4a4mqaFQFQamzIZ` | 🔥 **AQUI mora o PCP vivo** |

Gestor: **Marcelo de Goís** (Assistente PCP, mat 023) sob supervisão de **Fernando Macedo** (Coord Produção).

## Estrutura do PCP vivo (COMERCIAL/OBSOLETO/PLANEJAMENTO)

```
PLANEJAMENTO/
├── 1 - PLANO DE ENTREGA/
│   ├── 0- OBSOLETO/  (44 itens histórico)
│   └── 1- PEDIDOS CLIENTES/
│       ├── DN AUTOMOTIVOS/     2024, 2025 (12 meses), 2026 (5 meses até maio) 🔥
│       ├── SUMIRIKO/           (10 sub)
│       ├── YOROZU/             (10 sub)
│       ├── INDAB/              (10 sub)
│       ├── POLISTAMPO/         (7 sub)
│       ├── DTR, BOGE, KMEX, SAMPEL, TENNECO, VIBRACOUSTIC (legado)
│       └── OBSOLETO/
├── BENEFICIAMENTO/             (3 sub)
├── PEDIDOS PARA FORNECEDOR/    (5 sub)
├── PLANEJAMENTO DE M.P/        (17 sub) 🔥 matéria-prima
└── PO IMPORTADOS/              (7 sub)
```

## Notas criadas

| Nota | Cobertura |
|---|---|
| **[[Programacoes-Mensais-por-Cliente]]** ⭐ | Onde está + como funciona o PCP real |
| **[[PCP-Pasta-Legado]]** | Documenta a pasta PCP/ raiz (legado 2020-2022) |

## Conexão com sistemas vivos

- **DBCorp** ([[dbcorp-mapeamento]]) — fonte viva de OPs, programação, atraso
- **[[skill-daily-meeting]]** — aba Produção/PCP consome DBCorp (carteira, atrasos)
- **[[ITs-PCP-Sistemas-Atualizacao]]** (SGK) — IT-041, IT-071, IT-072, IT-073, IT-090
- **MAPA-PRODUCAO-2026** — Fernando Macedo gestor

## Status

✅ **PCP — mapeado (2 notas)**

Decisão: NÃO baixei programação mensal arquivo a arquivo (centenas de xlsx). O **DBCorp** é fonte viva mais útil pra programação.

## Relacionado

- [[../COMERCIAL/Vendas-Operacionais-Pipeline]] — Forecast, Atas Visita
- [[MAPA-PRODUCAO-2026]]
- [[ITs-PCP-Sistemas-Atualizacao]]
- [[dbcorp-mapeamento]]
- [[skill-daily-meeting]]
- [[skill-custeio-mensal]]
- [[kab-processo-producao]]
