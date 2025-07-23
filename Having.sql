-- GROUP BY
-- Serve para filtrar linhas de seleção por uma coluna agrupada


--EX1
--Calcule o numero de clientes por estado filtrando apenas estados acima de 100 clientes
--Where so filtra coluna não agregada
--Having filtra agregado e não agregado

select 
	state, --nao agregado
	count(*) as contagem
from sales.customers

group by state
having count(*) > 100
order by contagem desc