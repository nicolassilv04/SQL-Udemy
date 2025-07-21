-- EXERCÍCIOS
 -- ######################################################################

-- (Exercício 1) Calcule quantos salários mínimos ganha cada cliente da tabela 
-- sales.customers. Selecione as colunas de: email, income e a coluna calculada "salários mínimos"
-- Considere o salário mínimo igual à R$1200

select
	email,
	income,
	(income / 1200) as salarios_minimos 
from sales.customers


-- (Exercício 2) Na query anterior acrescente uma coluna informando TRUE se o cliente
-- ganha acima de 5 salários mínimos e FALSE se ganha 4 salários ou menos.
-- Chame a nova coluna de "acima de 4 salários"

select
	email,
	income,
	(income / 1200) as salarios_minimos,
	(income / 1200) >= 5 as "acima de 4 salarios" 
from sales.customers

