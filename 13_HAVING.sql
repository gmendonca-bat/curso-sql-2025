-- e se quissessmos filtrar dentro da agrupação dos maiores 
-- pontuadores os clientes acima de 4000 pontos?

SELECT IdCliente,
       sum(QtdePontos)

FROM transacoes

WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao < '2025-08-31' 

GROUP BY idCliente 
HAVING sum(QtdePontos) >= 4000
-- o HAVING funciona como um filtro do filtro
-- como se fosse um WHERE do GROUP BY, aceitando também funções
-- de agregação



ORDER BY sum(QtdePontos) DESC
LIMIT 10