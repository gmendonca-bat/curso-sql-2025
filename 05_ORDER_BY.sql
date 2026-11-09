-- o comando order by é como se fosse um "classificar por" ou "ordernar por"

-- Exemplo: pegar o top 10 com mais pontos
-- SELECT *
-- FROM clientes
-- ORDER BY QtdePontos DESC -- o comadno desc ordena do maior para o menor
-- LIMIT 10


SELECT *
FROM clientes 
WHERE flTwitch = 1
ORDER BY DtCriacao ASC, QtdePontos DESC  -- O comando ORDER BY deve ser sempre o ultimo
-- ASC ordena do menor para o maior