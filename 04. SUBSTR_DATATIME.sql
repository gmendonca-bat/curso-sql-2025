SELECT DtCriacao,

       substr(DtCriacao, 1, 19) AS DtSubtring, -- substr "pega" o conteudo de uma string da posição de inicio até a final
       datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova, -- transoformamos a expressão de cima no formato de data/hora
       strftime('%w',datetime(substr(DtCriacao, 1, 19))) AS diaSemana -- pegamos o valor de data/hora e tranformamos em dia da semana

    
FROM clientes