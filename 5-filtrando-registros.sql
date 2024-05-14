-- FILTRANDO REGISTROS - 


SELECT * FROM tb_cliente
WHERE cidade ='MG';


SELECT * FROM tb_cliente
WHERE cidade ='MG'
AND genero = 'F';

SELECT * FROM tb_cliente
WHERE data_nascimento ='2000-03-10'
OR genero = 'F';

SELECT * FROM tb_cliente
WHERE cidade IN ('MG', 'SP'); -- COLEÇÃO

SELECT * FROM tb_cliente
WHERE nome LIKE 'A%'; -- COMEÇO

SELECT * FROM tb_cliente
WHERE nome LIKE '%A'; -- FINAL

SELECT * FROM tb_cliente
WHERE nome LIKE '%V%'; -- QUALQUER POSIÇÃO

-- SELECT colunas, "função_de_agregação()" -- qual coluna deve ser selecionada
-- FROM tabela -- de qual tabela deve vir
-- *WHERE filtro
-- *GROUP BY coluna -- agrupa os resultados com base nos valores únicos da coluna "nome".
-- *HAVING "filtro_de_agrupamento" -- "quem tem"

SELECT * 
FROM tb_cliente
WHERE id_cliente BETWEEN 3 AND 5;

SELECT * 
FROM tb_cliente
WHERE YEAR(data_nascimento) BETWEEN 1985 AND 2004;

select * from tb_cliente;

SELECT nome, COUNT(*)
FROM  tb_cliente
GROUP BY nome; -- agrupa e traz a quantidade de registros iguais com essa coluna

SELECT nome, COUNT(*)
FROM tb_cliente
GROUP BY nome
HAVING COUNT(*) > 1; -- traz os valores repetidos
