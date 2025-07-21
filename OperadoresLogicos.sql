-- EX1 Uso do comando BETWEEN
-- Selecione veiculoes que custam entre 100k e 200k

select *
from sales.products
where price >= 100000 and price <= 200000
-- ########## AGORA COM BETWEEN #########

select *
from sales.products
where price between 100000 and 200000



-- EX2 Uso do comando NOT

select * 
from sales.products
where price < 100000 or price > 200000
-- ########## AGORA COM NOT ##########

select * 
from sales.products
where price not between 100000 and 200000




-- EX3 Uso do comando IN

select *
from sales.products
where brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'
-- ######## AGORA COM IN ####################

select *
from sales.products
where brand in ('HONDA', 'TOYOTA', 'RENAULT') -- cria uma lista




-- EX4 Uso do comando LIKE

select distinct first_name
from sales.customers
where first_name like 'ANA%'



-- EX5 Uso do comando ILIKE (ignora maisculo e minusculo)

select distinct first_name
from sales.customers
where first_name ilike 'ana%'


--EX6 Uso do comando IS NULL

select*
from temp_tables.regions
where population is null
