-- EXEMPLOS 
--(EX1) CRIAÇÃO DE COLUNA CALCULADA
-- CRIE UMA COLUNA CONTENDO A IDADE DO CLIENTE DA TABELA SALES.CUSTOMERS

select *
from sales.customers
limit 10


select 
	email,
	birth_date,
	(current_date - birth_date) / 365 as "idade do cliente" -- nome que a coluna recebe
-- aspas duplas serve para o nome poder conter espaço
-- senao deve se usar idade_do_cliente
from sales.customers


-- (Exemplo 2) Utilizando da coluna calculada nas queries
-- Liste os 10 clientes mais novos  da tabela customers

select 
	email,
	birth_date,
	(current_date - birth_date) / 365 as "idade do cliente"
from sales.customers
order by "idade do cliente"


-- (exemplo 3) Criação de coluna calculada com strings
-- Crie a coluna "nome_completo" contendo o nome completo

select
	first_name || ' ' || last_name as nome_completo
from sales.customers


-- RESUMO
-- 1- servem para operações matematicas
-- 2- muito usado para criar colunas calculadas
-- 3- psuedonimos sao usados para dar nome as colunas calculadas
-- 4- para criar pseudonimo com espaço usa aspas duplas
-- 5- || serve para concatenar strings
-- 6-
