-- ALTERAÇÃO NAS TABELAS

ALTER TABLE tb_cliente ADD email VARCHAR(30); 

ALTER TABLE tb_cliente
DROP COLUMN email;

ALTER TABLE tb_email DROP CONSTRAINT FK__tb_email__id_cli__5DCAEF64;

ALTER TABLE tb_cliente
DROP COLUMN escolaridade;

ALTER TABLE tb_cliente
ALTER COLUMN cidade VARCHAR(255);

ALTER TABLE tb_email 
ADD CONSTRAINT FK_tb_email_tb_cliente 
FOREIGN KEY (id_cliente) 
REFERENCES tb_cliente (id_cliente);
