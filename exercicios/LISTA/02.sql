-- Lista de pedidos realizados no fim de semana;

SELECT DtCriacao,
    
    strftime('%u', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM transacoes;