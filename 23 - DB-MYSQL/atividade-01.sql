DROP DATABASE db_generation_game_online;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id_classes BIGINT PRIMARY KEY AUTO_INCREMENT,
    classe VARCHAR(50) NOT NULL,
    arma_classe varchar (50)
);

CREATE TABLE tb_personagens (
	id_personagens BIGINT PRIMARY KEY AUTO_INCREMENT, 
    nome varchar(250) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    nivel INT NOT NULL DEFAULT 0 CHECK (nivel = 0),
    id_classes BIGINT,
    FOREIGN KEY (id_classes) REFERENCES tb_classes(id_classes) -- depende da existencia da classe
    );
        
INSERT INTO tb_classes (classe, arma_classe) 
VALUES 	("barbaro", "machado"), 
		("arqueiro", "arco"),
		("ladino", "adaga"),
		("guerreiro", "espada");

INSERT INTO tb_classes (classe)
VALUE ("monge"); -- o monge não usa arma

INSERT INTO tb_personagens (nome, ataque, defesa, id_classes)
VALUES 	("Akalador", 3000, 1600, 1),
		("Baltuvich", 1900, 1400, 2),
		("Calden", 2000, 1800, 3),
		("Dromoc", 2300, 2300, 4),
		("Elhmion", 3200, 1400, 1),
		("Fharar", 1800, 1500, 2),
		("Gondar",  2200, 1600, 3),
		("Helhorm", 900, 3700, 5);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque > 1000 && ataque < 2000;

SELECT * FROM tb_personagens WHERE ataque < 1000;

SELECT nome FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome, tb_classes.classe, tb_classes.arma_classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classes = tb_classes.id_classes;

SELECT tb_personagens.nome, tb_classes.classe 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classes = tb_classes.id_classes
WHERE tb_classes.classe = "arqueiro";
