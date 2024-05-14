-- COMANDO SELECT

SELECT DISTINCT cidade FROM tb_cliente;

SELECT COUNT(*) FROM tb_cliente;               -- contar quantos registros tem na tabela
SELECT COUNT(DISTINCT bairro) FROM tb_cliente; -- quantos registros diferentes tem
SELECT TOP  1 * FROM tb_cliente;               -- mostra o primeito registro
SELECT * FROM tb_cliente ORDER BY nome;        -- ordena por ordem (ASC, DESC)
SELECT * FROM tb_cliente ORDER BY NEWID();     -- traz dados de forma aleatória