-- CRIAÇÃO DE BANCO E TABELAS

CREATE DATABASE meu_ecommerce;

USE meu_ecommerce;

-- EXEC sp_renamedb "ecommerce", "meu_ecommerce";
EXEC sp_rename 'dbo.tb_cliente.cidade', 'uf', 'COLUMN';


CREATE TABLE tb_cliente (
	id_cliente SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	data_nascimento DATE,
	genero VARCHAR(1),
	endereco VARCHAR(500),
	bairro VARCHAR(100),
	uf VARCHAR(2),
	cep VARCHAR(8) 
);

CREATE TABLE tb_email(
	id_email SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	id_cliente SMALLINT,
	email VARCHAR(255) NOT NULL,
	score INT,
	FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)
);

CREATE TABLE tb_telefone(
	id_telefone SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	id_cliente SMALLINT,
	ddd INT NOT NULL,
	telefone INT NOT NULL,
	score INT,
	tipo_telefone VARCHAR(1) NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)
);

CREATE TABLE tb_pedido (
	id_pedido SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	id_cliente SMALLINT,
	data_compra DATE,
	num_nota_fiscal VARCHAR(44) NOT NULL,
	serie_nota_fiscal VARCHAR(40),
	valor_total FLOAT,
	qtd_total INT,
	FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)
);

ALTER TABLE tb_pedido
ALTER COLUMN num_nota_fiscal VARCHAR(200);

ALTER TABLE tb_pedido
ALTER COLUMN serie_nota_fiscal VARCHAR(100);

CREATE TABLE tb_produto (
	id_produto SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	desc_produto VARCHAR(255) NOT NULL,
	valor_produto FLOAT,
	qtd_estoque INT
);

CREATE TABLE tb_item_pedido(
	id_item SMALLINT IDENTITY NOT NULL PRIMARY KEY,
	id_pedido SMALLINT,
	id_produto SMALLINT,
	valor_item  FLOAT,
	valor_desconto FLOAT,
	qtd_item INT,
	FOREIGN KEY (id_pedido) REFERENCES tb_pedido (id_pedido),
	FOREIGN KEY (id_produto) REFERENCES tb_produto (id_produto) 
);


