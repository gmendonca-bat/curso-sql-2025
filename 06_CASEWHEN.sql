SELECT IdCliente,
        QtdePontos,
        
        CASE 
            WHEN qtdePontos <= 500 THEN 'Ponei'
            WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo,

        CASE 
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE 
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

--- O CASE cria uma nova coluna 


FROM clientes ---
    WHERE flPonei = 1 --- 

ORDER BY QtdePontos DESC