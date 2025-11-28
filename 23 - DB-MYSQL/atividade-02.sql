CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
-- tb_pizzas e tb_categorias

CREATE TABLE tb_categorias (
	id_categorias BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR (50),
    sabor VARCHAR (100)
);

CREATE TABLE tb_pizzas (
id_pizzas BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (150) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    tamanho DECIMAL (4,1) NOT NULL,
    borda VARCHAR (50),
    id_categorias BIGINT,
    CONSTRAINT FK_categorias
		FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_categorias (tipo, sabor) 
VALUES  ("Doce", "Chocolate"),
		("Doce", "Abacaxi com chocolate branco"),
        ("Salgada", "Quatro queijos"),
        ("Salgada", "Brocolis com catupiry"),
        ("Agridoce", "Goiabada com queijo");
        
INSERT INTO tb_pizzas (nome, preco, tamanho, borda, id_categorias)
VALUES 	("Chocolate da casa", 99, 42, "chocolate", 1),
		("Abacaxi nevado", 68, 32, "chocolate", 2),
        ("Quatro queijos", 89, 42, "Catupiry", 3),
        ("Brocolis com catupiry", 89, 42, "Catupiry", 4),
        ("Romeu e Julieta", 68, 32, "Catupiry", 5);
	
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categorias)
VALUES 	("Chocolate da casa", 68, 32, 1),
		("Brocolis com catupiry", 59, 32, 4),
        ("Romeu e Julieta", 99, 42, 5);
	
SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT nome, tamanho, preco FROM tb_pizzas 
WHERE preco > 50 && preco < 100 
ORDER BY preco ASC;

SELECT DISTINCT nome FROM tb_pizzas
WHERE nome LIKE "%m%";
 
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categorias = tb_categorias.id_categorias;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categorias = tb_categorias.id_categorias
WHERE tb_categorias.tipo = "Doce";