-- usamos a função de agregação sum() para somar todos os dados de uma coluna
SELECT sum(QtdePontos) 

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01';

-- no caso acima, estamos somando tanto os numeros positivos e negativos
-- pois na nossa coluna de pontos existe as transações de retirada. Vamos 
-- separar as transações de entrada e saída e soma-las.

SELECT IdTransacao,
        sum(QtdePontos), -- balanço
        
        sum(CASE                                -- soma dos postivos
            WHEN QtdePontos > 0 THEN QtdePontos 
            END) AS QtdePontosPositivo,

        sum(CASE                                -- soma dos negativos
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS QtdePontosNegativo,

        count(CASE
              WHEN QtdePontos < 0 THEN qtdePontos
              -- ELSE 0 -- se adicionarmos um 0 no lugar do Null, ele irá fazer a soma errado
              END) AS QtdeTransaocesNegativas
        

        
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY qtdePontos;
