---
tipo: drive-index
area: kab
categoria: sgk-formulario
fonte: drive
drive_id: 1AQwicbTbcPe4ynuZ_eXy_HRZBOTPhLI6
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/04 - Formulários/FOR-049 - REV-01 - PLANO E CRONOGRAMA DE MANUTENÇÃO PREVENTIVA.xlsx
modificado: 2025-07-25
indexado: 2026-05-20
hash_sha: 6d67bed929428215
mime: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
codigo: FOR-049
revisao_doc: 01
ano_plano: 2025
tags: [sgk, formulario, for-049, manutencao-preventiva, jonatas, ferramentaria]
---

# FOR-049 — Plano e Cronograma de Manutenção Preventiva

**Rev. 01 · Plano 2025 · 16 máquinas cobertas**

## Resumo executivo

Documento operacional crítico do **Apoio à Produção** (gestão Jônatas). Tem **uma aba por máquina** (16 máquinas) com o plano de manutenção mensal preventiva detalhado: itens a verificar · responsável (Mecânica/Elétrica) · EPIs obrigatórios · método ("como fazer") · datas planejadas mês a mês · **comentário de execução por data** (registro do que foi feito ou alterado). É a base operacional da meta "Manutenção corretiva ≤ 5/mês" do [[MAPA-APOIO-PRODUCAO-2026]]. Quando o número de corretivas estoura (atualmente 17 — 3,4× a meta), a primeira fonte a checar é essa.

## Pontos-chave

- **17 abas no total**: 16 máquinas + Planilha1 (controle)
- **Periodicidade padrão**: mensal (uma data por mês de fev a dez)
- **Estrutura por máquina** (modelo padrão):
  - Itens a verificar agrupados por sistema (parte móvel, vazamentos, motor, preditiva, limpeza, etc)
  - Responsável: Mecânica ou Elétrica
  - EPIs: boné, óculos, protetor auricular, bota biqueira aço
  - "Como fazer": descrição passo a passo
  - Datas planejadas (calendário mensal)
  - **Comentário datado por execução**: "01/02 - seguimos o previsto sem alteração" ou registra a anomalia/troca
- **Cobertura de execução visível**: jan-mai/2025 com comentários detalhados (intervenções, trocas)

## Máquinas cobertas (16 abas)

| Família | Máquinas |
|---|---|
| Lavagem | LAV. SUBRA |
| Prensas | PRENSA HIDRAULICA · PRENSA JUNDIAI |
| Corte SA | SA-90-1 · SA-90-2 |
| Corte TR | TR-80-3 · TR-80-4 |
| Corte CMB | CMB-75-5 · CMB-75-6 |
| Corte FA | FA-100-1 · FA-100-4 |
| Corte NP | NPK-250 · NP-57-3 · NP-57-5 |
| Tornearia | TNG-32-1 · TNG-32-2 |

⚠️ **Lacunas notáveis** (cobertas no MAPA mas não neste FOR):
- Não tem aba pra Chanfradeiras (CHANFRO-01 a 05) — provavelmente em FOR separado
- Não tem aba pra Ergomats — provavelmente em FOR separado

## Itens típicos verificados por máquina

Padrão observado (LAV.SUBRA mas comum às outras):
- **Parte móvel**: drenagem reservatório, tubulação sprinker, presilhas
- **Vazamentos**: pontos de vazamento + reapertos
- **Filtro/Filtro manga**: trocas
- **Sistema drenagem**: válvulas, motobomba, sensor
- **Motor**: motoredutor, motor giro cesto, motor jato pressão, motobomba
- **Preditiva**: painel elétrico, disjuntor (risco de curto)
- **Limpeza técnica**

## Exemplos de intervenções registradas (jan-mai/2025)

- 25/02 LAV.SUBRA — colocada presilha nos canos do jato d'água (melhoria limpeza)
- 29/03 LAV.SUBRA — troca de registro entrada d'água (vazamento)
- 31/05 LAV.SUBRA — troca de resistência + troca de disjuntor da resistência
- 01/02 — troca de filtro (rasgado)
- 29/03 — calço na manga do filtro (facilitar retirada)

## Quando consultar

- Antes de planejar manutenção em qualquer das 16 máquinas listadas
- Quando KPI "Manutenção corretiva ≤ 5/mês" estourar (entender qual máquina falhou na preventiva)
- Pra entender o que cada máquina precisa de cuidado
- Cruzar com [[MAPA-APOIO-PRODUCAO-2026]] (Jônatas) e [[skill-daily-meeting]] (aba Manutenção)
- Investigação de causa raiz de paradas

## Relacionado

- [[MAPA-APOIO-PRODUCAO-2026]] — Jônatas, metas Ajuste ≤30h e Corretiva ≤5/mês
- [[skill-daily-meeting]] — aba Manutenção mostra OS criadas/encerradas e pausas
- [[FOR-042-Controle-Informacao-Documentada]] — índice mestre dos FORs
- [[kab-processo-apoio-producao]]

## Conteúdo bruto extraído

<details>
<summary>119k chars — 17 abas (uma por máquina + Planilha1)</summary>

File ID: 1AQwicbTbcPe4ynuZ_eXy_HRZBOTPhLI6
Pra ver intervenções específicas, re-extrair via:
`python3 92-Skills/kab/treinar-sgk/scripts/treinar_sgk.py extract 1AQwicbTbcPe4ynuZ_eXy_HRZBOTPhLI6`

</details>
