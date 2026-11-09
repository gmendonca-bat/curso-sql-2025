-- Qual cliente juntou mais pontos positivos em 2025-05?


SELECT idCliente,
        DtCriacao,
        max(qtdePontos)
       
 
FROM transacoes

WHERE DtCriacao LIKE '2025-05%'


