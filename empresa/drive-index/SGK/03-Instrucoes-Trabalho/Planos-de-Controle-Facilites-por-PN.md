---
tipo: drive-index
area: kab
categoria: sgk-plano-controle
fonte: drive
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/03 - Instruções de trabalho e Facilite/
modificado: 2026-05-11
indexado: 2026-05-20
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
total_arquivos: 37
tags: [sgk, instrucao-trabalho, plano-controle, facilite, for-012, dn, srk, kmex, toyota, gm]
---

# Planos de Controle (Facilites) por PN — 37 arquivos

**Nota-índice — não-extraídos individualmente (volume alto)**

## Resumo executivo

A maioria dos arquivos da pasta "03 - Instruções de trabalho e Facilite" é, na verdade, **Planos de Controle / Facilites individuais por part number (PN)**. São 37 arquivos xlsx (~200KB-2MB cada, total ~30MB) numerados sequencialmente (003 a 180), cada um o **FOR-012 Facilite** instanciado pra um item específico. Esses arquivos não foram extraídos individualmente pra economia (cada PN é especialista, contexto raramente útil pro Bruce de forma agregada). Esta nota serve como **índice** — se precisar consultar um PN específico, abrir direto no Drive.

## Estrutura típica do Facilite (FOR-012)

Cada Facilite é um xlsx que segue o template **FOR-012 — Facilites Matriz** (Rev 01-02) catalogado em [[FOR-042-Controle-Informacao-Documentada]]. Cobre por item:
- Operações sequenciais (corte, chanfro, prensa, inspeção)
- Parâmetros críticos por operação
- Frequência de inspeção
- Critérios de aceitação dimensional
- Responsável por etapa

## Inventário (37 PNs)

### Cliente: DN Automotivos (PNs começam com 4xxxxxxx ou 3xxxxxxx — DN itens)

| Plano | Rev | PN | Modificado |
|---|---|---|---|
| 154 | 00 | 40343900 (3434390) | 16/04/2026 |
| 155 | 01 | 403832000 (3438320) | 31/10/2025 |
| 156 | 01 | 40304300 (3430430) | 31/10/2025 |
| 157 | 01 | 40304100 (3430410) | 31/10/2025 |
| 158 | 01 | 40111300 (3411130) | 03/07/2025 |
| 159 | 01 | 40413600 (3441360) | 12/11/2025 |
| 160 | 01 | 40421900 (3434040 ou 3434440) | 31/10/2025 |
| 169 | 00 | 4038310 (3438310) | 31/10/2025 |
| 170 | 00 | 40402300 (3440230) | 22/01/2026 |
| 175 | 00 | 40367600 (3436760) | 02/02/2026 |
| 176 | 00 | 40402500 (3440250) | 02/02/2026 |
| 177 | 00 | 40413700 (3441370) | 02/02/2026 |
| 92 | 00 | 40315100 (3431510) | 12/11/2025 |
| 65 | 00 | 40344600 (3434460) | 28/08/2025 |
| 60 | 00 | 40344700 (3434470) | 28/08/2025 |

**~15 PNs DN** — todos com cód duplo (4xxxxxxx = código KAB + 3xxxxxxx = código DN). Esses são os famosos itens DN da estratégia de salvação do EBITDA.

### Matéria-prima (MP1) — provavelmente DN tubos

| Plano | Rev | MP1 PN | Modificado |
|---|---|---|---|
| 161 | 01 | MP1 3443460 | 12/11/2025 |
| 162 | 01 | MP1 3443740 | 31/10/2025 |
| 163 | 00 | MP1 3443720 | 22/07/2025 |
| 164 | 01 | MP1 3443480 | 12/11/2025 |
| 165 | 01 | MP1 3443450 | 04/07/2025 |

**5 PNs MP1** — material-prima específica (suposição: tubos brutos pra DN).

### SRK / SumiRiko (PNs 5xxxxx)

| Plano | Rev | PN | Modificado |
|---|---|---|---|
| 004 | 02 | 51351 T5R A000 30Y | 30/03/2026 |
| 017 | 03 | 54438 5RA0B | 30/03/2026 |
| 031 | 03 | 54438 5RA0A | 30/03/2026 |

**3 PNs SRK** — itens recorrentes. PN 54438 5RA0A/B aparece também no banco de [[Licoes-Aprendidas-Book-Defeitos]] (KMEX 2020). **Atenção**: 5RA0A/B é provavelmente KMEX/Nissan, não SRK — verificar.

### Outros clientes (suposição pelo padrão)

| Plano | Rev | PN | Modificado | Suposição cliente |
|---|---|---|---|---|
| 150 | 00 | 26285788-01 | 03/02/2025 | GM (padrão 6 dígitos) |
| 152 | 00 | 52237-BZ040-H | 03/02/2025 | Toyota (BZ = Boshoku?) |
| 166 | 00 | 48723-0A070 | 06/02/2025 | Honda/Suzuki/Nissan (padrão 0Axxx) |
| 167 | 00 | 48717-0A070 | 04/06/2025 | idem |
| 178 | 00 | A9794631040 | 01/04/2026 | Mercedes-Benz (padrão A9xxx) |
| 179 | 00 | 212.0000046 | 08/04/2026 | Cliente indeterminado |
| 180 | 00 | 22202756 | 11/05/2026 | Cliente indeterminado |

### Tubos brutos (sem PN final — dimensões)

| Plano | Rev | Dimensão (DEx ID x L) | Modificado |
|---|---|---|---|
| 171 | 00 | 28,70 × 25,00 × 80,00 | 03/03/2026 |
| 172 | 00 | 28,70 × 25,00 × 100,00 | 03/03/2026 |
| 173 | 00 | 14,00 × 10,40 × 36,00 | 03/03/2026 |
| 174 | 00 | 19,50 × 16,40 × 60,00 | 03/03/2026 |

**4 tubos brutos** — provavelmente Planos de Controle de matéria-prima antes de virar PN final.

### Templates mestres (FOR-012)

| Arquivo | Rev | Modificado |
|---|---|---|
| FOR-012_REV-01_000_XXX - MESTRA AJUSTANDO | 01 | 31/03/2025 |
| FOR-012_REV-01_000_XXX - MESTRA | 01 | 09/01/2025 |
| FOR-012_REV-02_000_XXX - MESTRA (1) (1) | 02 | 29/08/2025 |

**3 templates mestres** — base pra criar novos Facilites. Última rev 02 de ago/2025.

## Quando consultar

- **Quando você precisar dos parâmetros operacionais de um PN específico** — abrir diretamente o arquivo no Drive (o nome do arquivo já diz qual PN)
- Pra entender quantos PNs ativos a KAB tem por cliente
- Pra avaliar carga de manutenção documental (37 Facilites = 37 docs pra revisar quando muda processo)
- Cruzar com [[FOR-042-Controle-Informacao-Documentada]] (índice mestre)

## Achados

- 🎯 **DN domina o portfolio** — 15 dos 37 Facilites são pra DN (40%)
- 🆕 **15 PNs novos em 2025-2026** (revisão 00) — refletem a entrada de novos itens DN
- 🔄 **5 PNs MP1** específicos sugerem que matéria-prima de DN tem cuidado especial (controle dimensional do tubo bruto)
- 📋 **Padrão de codificação dupla** dos itens DN: 4xxxxxxx (KAB) ↔ 3xxxxxxx (DN)

## Relacionado

- [[FOR-042-Controle-Informacao-Documentada]] — índice mestre dos FORs
- [[Requisitos-DN-Automotivos]] — requisitos formais DN
- [[Requisitos-SRK-SumiRiko]] — requisitos SRK
- [[FOR-019-APQP]] — APQP que dispara criação de novo Facilite
- [[MAPA-QUALIDADE-2026]] — Flávio gerencia
- [[ATA-Analise-Critica-2025-1S]] — 9 amostras DN entregues, 12 PNs aguardando

## Conteúdo bruto

<details>
<summary>37 xlsx — Planos de Controle individuais por PN (não extraídos)</summary>

Pra extrair qualquer um específico:
```bash
python3 92-Skills/kab/treinar-sgk/scripts/treinar_sgk.py extract <DRIVE_ID>
```

(IDs catalogados no SQLite — buscar via `--list` ou query direta)

</details>
