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

select count(product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'




