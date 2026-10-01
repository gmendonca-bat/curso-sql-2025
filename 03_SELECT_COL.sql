SELECT idCliente,
        QtdePontos,
        QtdePontos + 10 AS QntdPontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble
FROM clientes