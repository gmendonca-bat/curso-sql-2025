-- Quantos produtos são de rpg?

SELECT count(DescCategoriaProduto)
FROM produtos
WHERE DescCategoriaProduto = 'rpg'