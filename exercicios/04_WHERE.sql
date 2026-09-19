-- Selecione produtos que contêm "Chapéu" no nome
SELECT *
FROM produtos
/*
WHERE DescNomeProduto = 'Chapéu do Sábio' 
OR DescNomeProduto = 'Chapéu do Mago' 
OR DescNomeProduto = 'Chapéu do Ladino' 

Se soubessemos o nome dos itens que queremos buscar, poderiamos usar
um WHERE junto com OR e comparar o nome.
*/

/*
WHERE DescNomeProduto IN ('Chapéu do Sábio','Chapéu do Mago', 
'Chapéu do Ladino')

O WHERE ... IN faz a mesma função do OR, nesse caso, o IN é usado para 
verificar se o valor restringido está dentro de uma lista entre (). 
é útil em filtragens de valores não contínuos
*/

-- WHERE DescNomeProduto LIKE 'Chapéu%'
-- O LIKE é usado como um 'contém' e o '%' é um coringa que diz que não importa 
-- o que vem depois, contando que antes tenha nosso valor (pode ser antes, depois, ou entre)


WHERE DescCategoriaProduto = 'chapeu'
-- é sempre melhor usarmos apenas o WHERE com um '=', pois requer menos processamento. 
-- nesse caso, nossa tabela está estruturada de uma maneira nal qual temos uma coluna
-- indica o que o tipo que queremos