---
tipo: "drive-index"
area: "kab"
fonte: "google-drive"
drive_id: "15u-3Wmrw_v0JmTaMNWovvBelz-QFm_QG"
drive_path: "ferramental;ferramental;ferramental;ferramental"
nome_arquivo: "FOR-102 - REV-01 - Parâmetros e ferramental (em andamento).xlsx"
mime: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
modificado: "2024-05-21"
indexado: "2026-05-31"
sensibilidade: "baixa"
destino: "kab-brain"
risk_flags: []
needs_human_review: false
hash_sha: "ab4161d02e37e6e5"
extrator: "xlsx"
tags: ["kab", "drive-index", "academia-agentes", "ferramental"]
---

# FOR-102 - REV-01 - Parâmetros e ferramental (em andamento).xlsx

## Classificação
- Destino: `kab-brain`
- Sensibilidade: `baixa`
- Flags: `nenhuma`
- Revisão humana necessária: não

## Resumo extraído automaticamente
- ÚLTIMA PRODUÇÃO |  |  |  |  |  |  |  |  |  |  |  |  |  |
- PROCESSO |  | CORTE |  |  |  | PEÇA |  |  |  |  |  |  |  |
- DATA |  |  | TURNO |  |  | LINHA |  |  | REALIZADO POR |  |  | ROTAÇÃO CORTE |  |
- AVANÇO CORTE |  |  | PRESSÃO DOS MORDENTES |  |  | SALA LÂMINA |  |  | SERRA / DISCO |  |  | DESTOPO INICIAL |  |
- PROCESSO |  | USINAGEM |  |  |  | PEÇA |  |  |  |  |  |  |  |
- DATA |  |  | TURNO |  |  | LINHA |  |  | REALIZADO POR |  |  | CABEÇOTES |  |
- BITS FACEAMENTO |  |  | BITS EXTERNO |  |  | BITS INTERNO |  |  | CASTANHA CHANFRADEIRA |  |  | MANDRIL |  |
- LEVANTADOR |  |  | MATRIZ VISTORIA |  |  | PNP VISTORIA |  |  | AJUSTAR / VERIFICAR PASTILHA |  |  | AVANÇO USINAGEM |  |
- [... linhas omitidas]
- RELATÓRIO SET UP |  |  |  |  |  |  |  |  |  |  |  |

## Utilidade para Academia de Agentes
- Fonte candidata para enriquecer catálogos/playbooks de RFQ, viabilidade, máquinas, ferramental, tolerâncias, processos ou requisitos de cliente.
- Validar com responsável humano antes de transformar em regra operacional definitiva.

## Fonte
- Nome: `FOR-102 - REV-01 - Parâmetros e ferramental (em andamento).xlsx`
- Drive ID: `15u-3Wmrw_v0JmTaMNWovvBelz-QFm_QG`
- Link: https://docs.google.com/spreadsheets/d/15u-3Wmrw_v0JmTaMNWovvBelz-QFm_QG/edit?usp=drivesdk&ouid=113574052858903467666&rtpof=true&sd=true
- Modificado: `2024-05-21`
- Query/path hit: `ferramental;ferramental;ferramental;ferramental`

## Conteúdo bruto extraído
<details>
<summary>Texto extraído</summary>

=== Aba: ÚLTIMA PRODUÇÃO ===
ÚLTIMA PRODUÇÃO |  |  |  |  |  |  |  |  |  |  |  |  |  | 
PROCESSO |  | CORTE |  |  |  | PEÇA |  |  |  |  |  |  |  | 
DATA |  |  | TURNO |  |  | LINHA |  |  | REALIZADO POR |  |  | ROTAÇÃO CORTE |  | 
AVANÇO CORTE |  |  | PRESSÃO DOS MORDENTES |  |  | SALA LÂMINA |  |  | SERRA / DISCO |  |  | DESTOPO INICIAL |  | 
PROCESSO |  | USINAGEM |  |  |  | PEÇA |  |  |  |  |  |  |  | 
DATA |  |  | TURNO |  |  | LINHA |  |  | REALIZADO POR |  |  | CABEÇOTES |  | 
BITS FACEAMENTO |  |  | BITS EXTERNO |  |  | BITS INTERNO |  |  | CASTANHA CHANFRADEIRA |  |  | MANDRIL |  | 
LEVANTADOR |  |  | MATRIZ VISTORIA |  |  | PNP VISTORIA |  |  | AJUSTAR / VERIFICAR PASTILHA |  |  | AVANÇO USINAGEM |  | 
[... linhas omitidas]
=== Aba: CORTE ===
RELATÓRIO SET UP |  |  |  |  |  |  |  |  |  |  |  | 
Processo: |  | CORTE |  |  |  |  |  |  |  |  |  | 
Peça: | #REF! |  |  |  |  |  |  |  |  |  |  | 
Ferramental / Parâmetros |  | DATA | HORA | REALIZADO SETUP CORTE POR | LINHA | TURNO | ROTAÇÃO CORTE | AVANÇO CORTE | PRESSÃO DOS MORDENTES | SALVA LÂMINA | SERRA / DISCO | DESTOPO INICIAL
REGRAS |  | * Especificar o que foi utilizado e observação (se necessário). 
* Se não aplicável o parâmetro ou processo marcar "N/A".
* Se for alterado algo durante o mesmo setup marcar X na coluna D |  |  |  |  |  |  |  |  |  | 
[... linhas omitidas]
=== Aba: CHANFRO ===
RELATÓRIO SET UP |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
Processo: |  | USINAGEM |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
Peça: | #REF! |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
Ferramental / Parâmetros |  | DATA | HORA | REALIZADO SETUP CORTE POR | LINHA | TURNO | CABEÇOTES | BITS FACEAMENTO | BITS EXTERNO | BITS INTERNO | CASTANHA CHANFRADEIRA | MANDRIL | LEVANTADOR | MATRIZ VISTORIA | PNP VISTORIA | AJUSTAR / VERIFICAR PASTILHA | AVANÇO USINAGEM | ROTAÇÃO USINAGEM
REGRAS |  | * Especificar o que foi utilizado e observação (se necessário). 
* Se não aplicável o parâmetro ou processo marcar "N/A".
* Se for alterado algo durante o mesmo setup marcar X na coluna D |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | 
[... linhas omitidas]
=== Aba: PRENSA ===
RELATÓRIO SET UP |  |  |  |  |  |  |  | 
Processo: |  | PRENSA |  |  |  |  |  | 
Peça: | #REF! |  |  |  |  |  |  | 
Ferramental / Parâmetros |  | DATA | HORA | REALIZADO SETUP CORTE POR | LINHA | TURNO | ALTURA MARTELO PARA PRESET DO  MOLDE | FIXAÇÃO DO MOLDE
REGRAS |  | * Especificar o que foi utilizado e observação (se necessário). 
* Se não aplicável o parâmetro ou processo marcar "N/A".
* Se for alterado algo durante o mesmo setup marcar X na coluna D |  |  |  |  |  | 
[... linhas omitidas]

</details>
