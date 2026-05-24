---
tipo: drive-index
area: kab
categoria: sgk-formulario
fonte: drive
drive_ids: [19Sw3PGcNzBbo7_IHzrrqoEEyOTpqlGHQ, 1YocVYCkklTkfRO6Ql7b1mAiiWNDd42zQ]
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/04 - Formulários/
modificado: 2025-04-02
indexado: 2026-05-20
codigos: [FOR-101, FOR-112]
tags: [sgk, formulario, for-101, for-112, ferramentaria, jonatas, discos-corte]
---

# FOR-101 + FOR-112 — Ferramentaria

**Padrão de ferramenta de estampo + controle de troca de discos de corte**

## FOR-101 — Padrão Ferramenta de Estampo (Rev 00, abr/2025)

- **Drive ID**: 19Sw3PGcNzBbo7_IHzrrqoEEyOTpqlGHQ
- **Função**: documenta componentes-padrão por item específico de estampo
- **Itens cobertos identificados**: **BJ-35/36** e **BJ-37** (itens da carteira DN/SRK)
- **Componentes catalogados** (exemplo BJ-35/36 e BJ-37):
  - A — Mola de impacto (menor amarelo / maior amarelo)
  - B — Limitador de apoio
  - C — Matriz inferior do segundo estágio da flange
  - D — Placa de choque
- **Importância**: garante padronização de setup de ferramenta — relevante pra meta "Ajustes Ferramental ≤30h" do [[MAPA-APOIO-PRODUCAO-2026]]
- **Conceito de "Conjunto 2º Estágio Inferior"** sugere estampagem em múltiplos estágios

## FOR-112 — Controle pra Troca de Discos (Rev 00, fev/2025)

- **Drive ID**: 1YocVYCkklTkfRO6Ql7b1mAiiWNDd42zQ
- **Função**: controla quando e por que se troca disco de corte
- **Estrutura**:
  - Data/hora afiação do disco
  - Linha de produção em que está
  - Hora final (fim de turno ou troca de peça)
  - Peça em produção · Qtd peças produzidas no turno
  - Responsável
  - Status do disco trocado: **GUARDADO** · **P/ AFIAÇÃO** · **DESCARTADA**
  - Motivo da troca (quebrada / finalizado qtd / abaulamento / duplo corte / etc)
- **Relaciona com**: FOR-009 (Controle para troca de serras — rev 02) — provavelmente complementar
- **Disco de corte é insumo crítico**: gestão evita custo (sobressalente caro) e refugo

## Quando consultar

- Análise de motivos de troca de disco (causas raiz de "abaulamento" ou "duplo corte")
- Comparar consumo de disco vs produção real
- Cruzar com [[FOR-049-Plano-Manutencao-Preventiva]] (preventiva)
- Cruzar com [[MAPA-APOIO-PRODUCAO-2026]] (Jônatas — gestão de sobressalentes)

## Relacionado

- [[MAPA-APOIO-PRODUCAO-2026]] — Jônatas
- [[MAPA-PRODUCAO-2026]] — Fernando (uso operacional)
- [[FOR-049-Plano-Manutencao-Preventiva]]
- [[FOR-042-Controle-Informacao-Documentada]]

## Conteúdo bruto

<details>
<summary>FOR-101: 2.2k · FOR-112: 580 chars</summary>

</details>
