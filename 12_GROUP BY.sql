SELECT IdProduto,
       avg(vlProduto)

FROM transacao_produto
WHERE IdProduto IS NOT ' ' 
GROUP BY IdProduto
