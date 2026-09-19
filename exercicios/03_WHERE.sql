-- Selecione todos clientes com mais de 500 pontos

-- '.tables' mostra todas as tabelas do BD

SELECT IdCliente,
       QtdePontos
FROM transacoes
WHERE QtdePontos > 500