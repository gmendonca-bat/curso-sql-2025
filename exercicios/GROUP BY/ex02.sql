-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT idCliente,
        DtCriacao,
        sum(qtdePontos)
       
 
FROM transacoes

WHERE DtCriacao LIKE '2025-05%'
GROUP BY idCliente
ORDER BY sum(qtdePontos) DESC
LIMIT 1