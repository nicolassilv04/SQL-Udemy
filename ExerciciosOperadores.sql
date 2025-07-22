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
	(income / 1200) > 4 as "acima de 4 salarios" 
from sales.customers



-- (Exercício 3) Na query anterior filtre apenas os clientes que ganham entre
-- 4 e 5 salários mínimos. Utilize o comando BETWEEN

select
	email,
	income,
	(income / 1200) as salarios_minimos
from sales.customers
where (income / 1200) between 4 and 5


-- (Exercício 4) Selecione o e-mail, cidade e estado dos clientes que moram no estado de 
-- Minas Gerais e Mato Grosso.

select
	email,
	city,
	state
from sales.customers
where state in ('MG','MT')



-- (Exercício 5) Selecione o e-mail, cidade e estado dos clientes que não 
-- moram no estado de São Paulo.

select
	email,
	city,
	state
from sales.customers
where state not in ('SP')