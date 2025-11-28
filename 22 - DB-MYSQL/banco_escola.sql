CREATE DATABASE banco_escola;

USE banco_escola;

CREATE TABLE aluno (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,  
nome VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
serie INT,
turma INT,
nota_final DOUBLE);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Ana Lima", '2008-03-12', 7, 1, 8.5);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Bruno Santos", '2006-09-14', 9, 2, 7.3);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Carla Mendes", '2007-02-08', 8, 1, 8.9);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Maria Souza", '2007-11-05', 8, 2, 7.9);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Pedro Roberto", '2008-07-30', 7, 3, 6.8);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Larissa Gomes", '2008-05-27', 7, 2, 9.4);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Samuel Rocha", '2009-12-19', 6, 3, 6.4);

INSERT INTO aluno (nome, data_nascimento, serie, turma, nota_final)
VALUES ("Lucas Pereira", '2009-01-22', 6, 1, 8.1);

SELECT nome, nota_final, turma FROM aluno where nota_final > 7;

SELECT * FROM aluno WHERE nota_final < 7;

SET sql_safe_updates = 0;

UPDATE aluno SET nota_final = 7.0 WHERE nota_final < 7;

-- SELECT * FROM aluno WHERE nota_final < 7;
