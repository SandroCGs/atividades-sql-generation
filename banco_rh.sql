CREATE DATABASE banco_rh;

USE banco_rh;

CREATE TABLE colaborador (
id_colaboradores INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(250) NOT NULL, 
cargo VARCHAR(250) NOT NULL,
salario DECIMAL(10,2) NOT NULL
); 	

INSERT INTO colaborador(nome, cargo, salario) VALUES ("Ana", "Gerente", 8500.00);
INSERT INTO colaborador(nome, cargo, salario) VALUES ("Bianca", "Coordenador", 6000.00);
INSERT INTO colaborador(nome, cargo, salario) VALUES ("Carlos", "Estagiário", 1500.00);
INSERT INTO colaborador(nome, cargo, salario) VALUES ("Daniel", "Analista", 4000.00);
INSERT INTO colaborador(nome, cargo, salario) VALUES ("Elisa", "Estagiário", 1500.00);

SELECT * FROM colaborador;

SELECT * FROM colaborador where salario > 2000;

SELECT * FROM colaborador where salario < 2000;

SET sql_safe_updates = 0;

UPDATE colaborador SET salario = 1600 WHERE cargo = 'Estagiário' OR cargo = 'Estagiario';

SET sql_safe_updates = 1;

SELECT * FROM colaborador;
