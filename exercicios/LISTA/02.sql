-- Lista de pedidos realizados no fim de semana;

SELECT DtCriacao,
    datetime(substr(DtCriacao, 1, 19)) AS Teste, -- peguei apenas o registro de data e hora da transação
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) Diasemana -- puxei qual dia da semeana essa data se refere (1-7)
FROM transacoes
WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('6','7')
