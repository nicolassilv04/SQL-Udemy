-- GROUP BY
-- Agrupar registros semelhantes de uma coluna
-- Normalmente usados com funções de agregação


--EX1
-- Calcular o numero de clientes de tabela customers por estado

select 
	state,
	count(*) as contagem
from sales.customers
group by state
order by contagem desc


--EX2
--Calcular o numero de clientes por estado e status profissional

select 
	state,
	professional_status,
	count(*) as contagem
from sales.customers
group by state, professional_status
order by state, contagem desc


--EX3
--Selecione os estados distintos na tabela customers usando group by

select state
from sales.customers
group by state