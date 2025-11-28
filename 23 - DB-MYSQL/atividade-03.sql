DROP DATABASE db_farmacia_bem_estar;

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- tb_produtos e tb_categorias
CREATE TABLE tb_categorias (
	id_categorias BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_produtos (
	id_produtos BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    validade DATE,
    id_categorias BIGINT,
    CONSTRAINT FK_categorias
		FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 	("Medicamentos", "Produtos para tratamento"),
		("Higiene", "Uso diário"),
		("Vitaminas", "Suplementação"),
		("Dermocosmeticos", "Cuidados com pele"),
		("Infantil", "Linha bebê");

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, validade, id_categorias)
VALUES	("Dipirona 500mg", 12.90, 120, "2026-08-01", 1),
		("Amoxicilina 500mg", 24.50, 60, "2026-03-15", 1),
		("Shampoo Anticaspa 200ml", 22.50, 40, "2027-01-10", 2),
		("Lenço Umedecido 48un", 9.50, 200, "2026-11-30", 5),
		("Vitamina C 500mg 60un", 18.00, 80, "2027-06-01", 3),
		("Hidratante Facial 200ml", 34.90, 50, "2026-12-20", 4),
		("Protetor Solar FPS50 120ml", 59.90, 70, "2027-04-05", 4),
		("Creme Anti-assaduras 50g", 15.20, 90, "2027-02-28", 5);
        
SELECT * FROM tb_produtos WHERE preco > 50 ORDER BY preco DESC;

SELECT nome, quantidade_estoque, preco FROM tb_produtos WHERE preco >= 5 && preco <= 60 ORDER BY preco ASC;

SELECT nome FROM tb_produtos WHERE nome like "%c%" ORDER BY nome ASC;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categorias = tb_categorias.id_categorias;

SELECT tb_produtos.nome, preco, tb_categorias.nome FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categorias = tb_categorias.id_categorias
WHERE tb_categorias.nome = "Dermocosmeticos";
