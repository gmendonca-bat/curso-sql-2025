-- o comando count() é um comando de agragação, contando as linhas não vazias de uma coluna
SELECT 
    count(*), -- nesse caso, queremos saber quantas linhas temos ao todo nessa tabela
    count(1), -- mesma coisa, so que de outra maneira
    count(idCliente) -- mesma coisa, mas no caso de ser apenas um reconhecimento da tabela, melhor usar as duas outras opções acima
                    -- se for realmente o reconhecimento de uma coluna especifica, devemos ficar atentos, pois ele não conta valores nulos.
FROM clientes