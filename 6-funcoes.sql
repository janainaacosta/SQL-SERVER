-- *** FUNÇÕES ***

SELECT COUNT (DISTINCT cpf) FROM tb_cliente; 


SELECT  max(valor_produto), 
		min(valor_produto)
FROM tb_produto;

SELECT  max(qtd_estoque), 
		min(qtd_estoque)
FROM tb_produto;


SELECT SUM(valor_produto)
FROM tb_produto;

select * from tb_produto;