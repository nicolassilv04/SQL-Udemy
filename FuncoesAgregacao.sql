-- FUNÇÕES DE AGREGAÇÃO

-- EX1 Uso de Count()
-- CONTAGEM DE TODAS AS LINHAS DE UMA TABELA
-- Visitas de um site ficticio


select count(*)
from sales.funnel

--EX2 
-- Conte todos os pagamentos registrados na tabela sales.funnel

select *
from sales.funnel
limit 10
-- #########
select count(paid_date)-- numero de pagamentos registrados
from sales.funnel


--EX3 
-- Conte todos os produtos distintos visitados em jan/21

select count(distinct product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'




--EX4
-- Calcular preço min, max e medio

select 
	min(price), max(price), avg(price)
from sales.products


--EX5
--Informe qual o veiculo mais caro da tabela products

select 
	max(price)
from sales.products

--

select *
from sales.products
where price = (select max(price) from sales.products)