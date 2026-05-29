---
tipo: nota
area: vendas
status: inbox
criado: 2026-05-29
atualizado: 2026-05-29
autor: gabriel
tags: [lme, aluminio, precificacao]
---

# LME — valor base do alumínio

Gabriel explicou o procedimento usado para obter o valor base mensal do alumínio pela LME no site da Shockmetais.

Procedimento:

1. Acessar `https://shockmetais.com.br/`.
2. Na página principal, clicar em `LME` no menu superior.
3. Descer até a área de indicadores e selecionar `ALUMÍNIO`.
4. Para obter o valor que fechou o mês anterior, selecionar o mês anterior no seletor de mês.
5. Clicar novamente em `Alumínio`.
6. Na última linha da tabela, usar a linha `Média Mensal`.
7. Multiplicar o valor da coluna `Alumínio U$/t` pelo valor da coluna `Dólar R$/US$`.

Teste validado para abril de 2026:

- Alumínio média mensal: US$ 3.600,63/t.
- Dólar média mensal: R$ 5,0446/US$.
- Cálculo: 3.600,63 × 5,0446.
- Resultado: R$ 18.163,74/t.

Gabriel confirmou que esse é o valor base do mês de abril.

Complemento informado por Gabriel: para obter o valor médio do mês de maio, usar o mesmo processo, selecionando maio no filtro.

Teste para maio de 2026:

- Alumínio média mensal: US$ 3.664,67/t.
- Dólar média mensal: R$ 4,9765/US$.
- Cálculo: 3.664,67 × 4,9765.
- Resultado: R$ 18.237,23/t.

Rotina diária solicitada por Gabriel:

- Enviar diariamente o comparativo da média do mês atual contra o mês anterior.
- Usar no site da Shockmetais a própria evolução mensal do Alumínio em US$/t quando disponível.
- Para o valor base em R$/t, comparar o resultado calculado como `Alumínio U$/t × Dólar R$/US$` do mês atual versus o mês anterior.
- Este índice impacta mensalmente os valores da matéria-prima comprada dos fornecedores de alumínio extrudado.

## Links

- [[LME]]
- [[Aluminio]]
- [[Shockmetais]]
- [[Precificacao]]
