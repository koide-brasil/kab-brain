---
tipo: drive-index
area: kab
categoria: sgk-instrucao
fonte: drive
drive_path: QUALIDADE/SGQ-KOIDE/DOCUMENTOS SGK/03 - Instruções de trabalho e Facilite/
modificado: 2025-06-03
indexado: 2026-05-20
total_its: 2
tags: [sgk, instrucao-trabalho, comercial, apqp, cotacao, gabriel-pedon, josielen]
---

# ITs Comercial / APQP (2 ITs)

**Instruções pra análise prévia de cotação e elaboração de APQP**

## Resumo executivo

2 ITs novos (Rev 00, mai-jun/2025) que **operacionalizam o processo comercial+desenvolvimento** descrito no [[PR-04-Processo-Vendas-rev10]]. **IT-082** detalha o filtro inicial pra decidir se a KAB vai cotar ou não uma RFQ (Request for Quotation). **IT-084** detalha como preencher o **FOR-019 APQP** completo (todas as 10 abas). Ambos são incorporados ao PR-04 Rev 10 (jun/2025) e citados no [[MAPA-VENDAS-2026]].

## ITs catalogadas

| Código | Tema | Rev | Drive ID | Data |
|---|---|---|---|---|
| **IT-082** | Análise Prévia às Solicitações de Cotações | 00 | 1X-zhapEQSYvBFzuE8tfOyCR3A5qPD3lE | 29/05/2025 |
| **IT-084** | Elaboração de APQP | 00 | 1tRagujC7wu7-JRoGtgTqYmfe9Mqiq90s | 03/06/2025 |

## IT-082 — Análise Prévia às Solicitações de Cotações

### Objetivo
Estabelecer a sistemática no processo de análise prévia à elaboração de uma proposta comercial.

### Pontos-chave
- **Quando aplicar**: após receber **RFQ** (Request for Quotation) do cliente
- **Etapa 1**: verificar se o escopo orçado corresponde aos produtos/serviços da KAB
- **Escopo KAB**: "fabricação de peças de precisão partindo de tubos de aço trefilados, maciços de aço, alumínio ou perfis de alumínio extrudado"
- **Se fora do escopo**: consultar **Presidência + Gerência Industrial** verbalmente ou por escrito. Se não aprovado → declinar formalmente
- **Se dentro do escopo**: enviar docs técnicos por e-mail pra Apoio à Produção, Produção e Qualidade analisarem via **FOR-018 Análise de Viabilidade**
- **Drive path FOR-018**: `GERAL/36-Comercial/1_Analise de viabilidade/`
- **Drive folder**: drive.google.com/drive/folders/13lrJWG5xl52Fjkho3BAFpxzHq4ZKMnMR

### 18 campos a preencher no FOR-018 (sintese)

1. Nome do cliente
2. Número do desenho de referência
3. Nome da peça
4. Revisão do desenho
5. Parede da peça (= (ØE−ØI)/2)
6. Comprimento
7. Diâmetro externo (ØE)
8. Recorte do desenho com cotas
9. Volume de produção anual conhecido (SIM/NÃO/N/A)
10. Conhecimento da aplicação (SIM/NÃO/N/A)
11. Matéria-prima do item (SIM/NÃO/N/A)
12. Dureza superficial Hv no desenho (SIM/NÃO/N/A)
13. Se item é fornecido por outro fornecedor (SIM/NÃO/N/A)
14. Cliente é automotivo/duas rodas/agrícola/aftermarket (SIM/NÃO/N/A)
15. Requisitos estatutários e regulamentares (SIM obrigatório)
16. Requisitos pra pós-entrega (SIM obrigatório)
17-18. Outras solicitações / notas

**⚠️ Todos os campos devem ser preenchidos sem exceção** — regra ressaltada.

Também tem check list pra **FERRAMENTARIA** seguindo os mesmos princípios.

## IT-084 — Elaboração de APQP

### Objetivo
Estabelecer sistemática pra **APQP — Advanced Product Quality Planning** (planejamento avançado de qualidade do produto). Previne problemas em vez de só corrigir erros.

### Pontos-chave
- **Quando aplicar**: após avanço de um novo item (Carta de Nomeação recebida)
- **Responsável**: Supervisor de Vendas (Gabriel) elabora, gerencia, atualiza
- **Drive path**: `GERAL/20 - ACOMPANHAMENTO DE PROJETOS – APQP/` na pasta do código da peça
- **Drive folder**: drive.google.com/drive/folders/1A_P5uwfe8Z66g8YqKP8qOagOO_E7QLsW

### Estrutura do FOR-019 APQP — 10 abas + descrição de preenchimento

1. **CAPA APQP**: cliente, código desenho, nome peça, revisão, motivo
2. **ANÁLISE DE VIABILIDADE**: link FOR-018
3. **KICK OF MEETING**: notas, link desenho, pontos produto/processo, investimentos, ações
4. **ACOMPANHAMENTO** — 5 etapas:
   - **Etapa 1**: Planejar e Definir (envio última revisão, análise viabilidade, escolha fornecedor usinagem)
   - **Etapa 2**: Projeto e Desenvolvimento do Produto
   - **Etapa 3**: Projeto e Desenvolvimento do Processo
   - **Etapa 4**: Validação do Produto e Processo
   - **Etapa 5**: Avaliação de Resultados e Ações Corretivas
5. **RAPP - PRODUTO**: riscos/anomalias do produto
6. **CUSTOS_FERR-EMB**: orçamento ferramenta + embalagem
7. **FLUXOGRAMA DO PROCESSO**
8. **VALIDAÇÃO PROCESSO**: assinaturas
9. **CRONOGRAMA APQP**: gantt
10. **ANÁLISE DE RISCO E OPORTUNIDADE**

**⚠️ Todos os campos devem ser preenchidos sem exceções** — regra repetida.

## Quando consultar

- **Antes de cotar uma RFQ** — seguir IT-082 (filtro de escopo)
- **Após Carta de Nomeação aprovada** — iniciar APQP conforme IT-084
- Treinamento de Josielen/Gabriel/novo comercial
- Cruzar com [[PR-04-Processo-Vendas-rev10]] (procedimento-mãe)
- Cruzar com [[FOR-019-APQP]] (workbook do APQP)
- Cruzar com [[MAPA-VENDAS-2026]]

## Relacionado

- [[PR-04-Processo-Vendas-rev10]] — incorpora estes ITs na rev 10
- [[FOR-019-APQP]] — workbook do APQP
- [[MAPA-VENDAS-2026]] — Gabriel Pedon
- [[FOR-042-Controle-Informacao-Documentada]]
- [[Requisitos-DN-Automotivos]] · [[Requisitos-SRK-SumiRiko]] · [[Requisitos-Tuopu]]

## Conteúdo bruto

<details>
<summary>IT-082: 8k chars · IT-084: 12k chars</summary>

</details>
