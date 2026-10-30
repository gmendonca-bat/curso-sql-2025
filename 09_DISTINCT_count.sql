-- Descobrindo a quantidade de clientes que fizeram transações durante 2025-07-01 
-- a 2026-10-29...


SELECT 
    count(*), -- contando quantos registros de transações houve durante o período
    count(IdTransacao), -- mesma coisa que o de cima
    count(DISTINCT IdCliente) AS QntdClientes -- aqui que a mágica acontece
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2026-10-29'

ORDER BY DtCriacao DESC

