-- Qual cliente fez mais transações no ano de 2024?

SELECT idCliente,
       count(IdTransacao)

FROM transacoes
WHERE DtCriacao LIKE '2024%'
GROUP BY idCliente
ORDER BY count(IdTransacao) DESC
LIMIT 1
