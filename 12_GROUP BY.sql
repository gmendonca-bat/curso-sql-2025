-- Imagine que precisa buscar a quantidade total de pontos que cada cliente
-- fez movimentação
SELECT IdProduto,
        count(IdProduto)
FROM transacao_produto
WHERE IdProduto = 1;
-- sem o group by, teriamos que repetir essa query usando


-- o GROUP BY é uma função de agregação também, ela "espreme" os dados
-- para descrever algo.

-- queremos saber quais foram os top 10 clientes que mais somaram pontos
-- e suas quantidades de transacoes
SELECT IdCliente,
       sum(qtdePontos),
       count(IdTransacao)
FROM transacoes

WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao < '2025-08-31' 

GROUP BY idCliente -- ele agrupa todos os registros de um unico IdCliente, no caso a soma e contagem de transacoes
ORDER BY sum(qtdePontos) DESC
LIMIT 10;

--- e se eu quisesse saber os valor total de transações de cada produto?
SELECT IdProduto,
       sum(vlProduto)

FROM transacao_produto

GROUP BY IdProduto
ORDER BY sum(vlProduto) DESC
