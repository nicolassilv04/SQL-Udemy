-- EXERCICIOS AGREGAÇÕES

-- (Exercício 1) Conte quantos clientes da tabela sales.customers tem menos de 30 anos

select
	count(birth_date)
from sales.customers
where birth_date between '1995-07-25' and '2025-07-24'


-- (Exercício 2) Informe a idade do cliente mais velho e mais novo da tabela sales.customers

select
	max(birth_date), min(birth_date)
from sales.customers


-- (Exercício 3) Selecione todas as informações do cliente mais rico da tabela sales.customers
-- (possívelmente a resposta contém mais de um cliente)

SELECT *
FROM
    sales.customers
WHERE
    income = (SELECT MAX(income) FROM sales.customers);


-- (Exercício 4) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- Ordene o resultado pelo nome da marca

select 
	brand,
	count(*) as contagem
from sales.products
group by brand
order by contagem asc


-- (Exercício 5) Conte quantos veículos existem registrados na tabela sales.products
-- por marca e ano do modelo. Ordene pela nome da marca e pelo ano do veículo


select 
	brand,
	model_year,
	count(*) as contagem
from sales.products
group by brand, model_year
order by brand, model_year asc


-- (Exercício 6) Conte quantos veículos de cada marca tem registrado na tabela sales.products
-- e mostre apenas as marcas que contém mais de 10 veículos registrados


select 
	brand,
	count(*) as contagem
from sales.products
group by brand
having count(*) > 10
order by contagem asc
