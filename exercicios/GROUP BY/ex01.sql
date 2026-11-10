-- Quantos clientes tem email cadastrado?

SELECT count(flEmail) AS ClientesEmail
        
FROM clientes
WHERE flEmail > 0
