-- Retorna True ou False
-- Muito usado com Where
--Ex1 uso de operadores como flag
-- Crie uma coluna que retorne TRUE sempre que um cliente for CLT
SELECT
	CUSTOMER_ID,
	FIRST_NAME,
	PROFESSIONAL_STATUS,
	(PROFESSIONAL_STATUS = 'clt') AS CLIENTE_CLT
FROM
	SALES.CUSTOMERS