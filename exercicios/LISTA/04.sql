-- Lista de clientes com 100 a 200 pontos (inclusive ambos);

SELECT IdCliente,
        qtdePontos
        
FROM clientes

WHERE qtdePontos BETWEEN 100 AND 200 -- tbm poderia usar AND e operadores

