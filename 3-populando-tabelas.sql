-- POPULANDO TABELAS


-- Populando a tabela tb_cliente
INSERT INTO tb_cliente (cpf, nome, data_nascimento, genero, endereco, bairro, cidade, cep)
VALUES 
('12345678901', 'Maria Silva', '1990-05-15', 'F', 'Rua Um, 123', 'Centro', 'SP', '12345678'),
('98765432109', 'João Oliveira', '1985-08-20', 'M', 'Av. Dois, 456', 'Bairro A', 'RJ', '98765432'),
('45678901234', 'Ana Souza', '2000-03-10', 'F', 'Rua Três, 789', 'Bairro B', 'MG', '45678901');

INSERT INTO tb_cliente (cpf, nome, data_nascimento, genero, endereco, bairro, cidade, cep)
VALUES 
('12345678902', 'Bete Silva', '1990-05-15', 'F', 'Rua Um, 123', 'Centro', 'SP', '12345678'),
('98765432103', 'Geiza Oliveira', '1985-08-20', 'F', 'Av. Dois, 456', 'Bairro A', 'PA', '98765432'),
('45678901234', 'Antonio Souza', '2000-03-10', 'M', 'Rua Três, 789', 'Bairro B', 'GO', '45678901');


INSERT INTO tb_cliente (cpf, nome, data_nascimento, genero, endereco, bairro, cidade, cep)
VALUES 
('12345678901', 'João Silva', '1990-05-15', 'M', 'Rua das Flores, 123', 'Centro', 'SP', '01234567'),
('98765432109', 'Maria Oliveira', '1985-09-20', 'F', 'Avenida dos Anjos, 456', 'Jardim Paulista', 'BA', '98765432'),
('56789012345', 'Pedro Santos', '1978-12-10', 'M', 'Rua das Palmeiras, 789', 'Centro', 'RJ', '87654321'),
('01234567890', 'Ana Souza', '2000-03-25', 'F', 'Avenida das Estrelas, 101', 'Jardim Botânico', 'CE', '23456789'),
('78901234567', 'Lucas Pereira', '1995-07-18', 'M', 'Rua dos Passarinhos, 222', 'Parque Industrial', 'RS', '76543210'),
('54321098765', 'Mariana Costa', '1982-11-30', 'F', 'Avenida das Rosas, 333', 'Jardim das Flores', 'PR', '54321098'),
('23456789012', 'Gabriel Santos', '1998-06-05', 'M', 'Rua das Árvores, 444', 'Centro', 'PE', '65432109'),
('89012345678', 'Carolina Oliveira', '1970-09-12', 'F', 'Avenida dos Girassóis, 555', 'Jardim Primavera', 'MT', '32109876'),
('67890123456', 'Rafaela Mendes', '1989-04-08', 'F', 'Rua das Borboletas, 666', 'Parque dos Sonhos', 'GO', '98765432'),
('45678901234', 'Gustavo Lima', '1992-01-22', 'M', 'Avenida das Águias, 777', 'Jardim das Águas', 'SC', '21098765');



-- Populando a tabela tb_email
INSERT INTO tb_email (id_cliente, email, score)
VALUES 
(1, 'maria@email.com', 100),
(2, 'joao@email.com', 150),
(3, 'ana@email.com', 120);

-- Populando a tabela tb_telefone
INSERT INTO tb_telefone (id_cliente, ddd, telefone, score, tipo_telefone)
VALUES 
(1, 11, 123456789, 100, 'C'),
(2, 21, 987654321, 150, 'R'),
(3, 31, 987654321, 120, 'R');

-- Populando a tabela tb_pedido
INSERT INTO tb_pedido (id_cliente, data_compra, num_nota_fiscal, serie_nota_fiscal, valor_total, qtd_total)
VALUES 
(1, '2024-05-01', '123456789012345678901234567890123456789012345678', 'A', 75.48, 3),
(2, '2024-05-02', '234567890123456789012345678901234567890123456789', 'B', 124.24, 4),
(3, '2024-05-03', '345678901234567890123456789012345678901234567890', 'C', 92.49, 3);

-- Populando a tabela tb_produto
INSERT INTO tb_produto (desc_produto, valor_produto, qtd_estoque)
VALUES 
('Produto A', 10.99, 50),
('Produto B', 20.50, 100),
('Produto C', 30.75, 75);

-- Populando a tabela tb_item_pedido
INSERT INTO tb_item_pedido (id_pedido, id_produto, valor_item, valor_desconto, qtd_item)
VALUES 
(3, 1, 10.99, 0, 2),
(4, 2, 20.50, 0, 1),
(5, 3, 30.75, 0, 3);
