-- Qual o valor médio de pontos positivos por dia?


SELECT DISTINCT DtCriacao -- Tenho que extrair apenas o dia para distinguir
       
FROM transacoes
ORDER BY DtCriacao DESC 

