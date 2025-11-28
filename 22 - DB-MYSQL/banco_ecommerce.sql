CREATE DATABASE banco_ecommerce;

USE banco_ecommerce;

CREATE TABLE produto (
	id_produto INT PRIMARY KEY AUTO_INCREMENT, 
    nome varchar(255) NOT NULL,
	preco DECIMAL (8,2) NOT NULL, 
    estoque INT NOT NULL,
    descricao TEXT,
    data_cadastro date NOT NULL);

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Notebook", 2600.00, 4, "Notebook com atributos xyz", curdate()); -- sim, tudo foi cadastrado hoje

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Teclado", 210.00, 5, "Teclado radical", curdate());

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Mouse", 160.00, 5, "Mouse colorido", curdate());

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Monitor", 1900.00, 2, "Monitor brabo", curdate());

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Headset", 150.00, 2, "Headset", curdate());

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Webcam", 120.00, 1, "Webcam radical", curdate());    

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Impressora", 640.00, 1, "Impressora multiradical", curdate());

INSERT INTO produto(nome, preco, estoque, descricao, data_cadastro) 
values ("Pendrive", 35.00, 2, "Pendrive de 32gb de armazenamento", curdate());

SELECT * FROM produto;

SELECT id_produto, nome, preco, estoque FROM produto WHERE preco > 500;

SELECT * FROM produto WHERE preco < 500;

SET sql_safe_updates = 0;

UPDATE produto SET preco = 29.90 WHERE nome = "Pendrive";

SET sql_safe_updates = 1;

SELECT preco FROM produto WHERE nome = "Pendrive";