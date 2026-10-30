-- o comando DISTINCT retorna linhas distinas, ou seja, que não se repetem.

-- nesse primeiro caso, retornará dois registros que não são iguais 0 e 1.
SELECT DISTINCT flEmail
FROM clientes;

-- Já nesse, seráo 4 registros que não se repetem 0 1, 0 0 e etc
SELECT DISTINCT flEmail, flTwitch
FROM clientes;
