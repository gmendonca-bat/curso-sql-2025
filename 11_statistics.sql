-- algumas outras funções de agregação

SELECT round(avg(qtdePontos), 2) AS mediaCarteira, -- avg() calcula a média
       1. * sum(qtdePontos) / count(IdCliente) AS mediaCarteiraNaMao, -- mesma coisa que avg()
       min(qtdePontos) AS minCarteira, -- Qual o valor minimo entre todos?
       max(qtdePontos) AS maxCarteira, -- Qual o valor máximo entre todos?
       sum(flTwitch), -- quantas pessoas fizeram login com a Twitch? (1 ou 0 facilita)
       sum(flEmail)


FROM clientes