CREATE DATABASE banco_rh;

USE banco_rh;

CREATE TABLE colaborador (
id_colaboradores INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(250) NOT NULL, 
cargo VARCHAR(250) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
data_admissao DATE
); 	

INSERT INTO colaborador(nome, cargo, salario, data_admissao) VALUES ("Ana", "Gerente", 8500.00, '2012-12-02');
INSERT INTO colaborador(nome, cargo, salario, data_admissao) VALUES ("Bianca", "Coordenador", 6000.00, '2016-03-25');
INSERT INTO colaborador(nome, cargo, salario, data_admissao) VALUES ("Carlos", "Estagiário", 1500.00, '2025-01-15');
INSERT INTO colaborador(nome, cargo, salario, data_admissao) VALUES ("Daniel", "Analista", 4000.00, '2022-07-09');
INSERT INTO colaborador(nome, cargo, salario, data_admissao) VALUES ("Elisa", "Estagiário", 1500.00, '2024-08-29');

SELECT * FROM colaborador;

SELECT * FROM colaborador where salario > 2000;

SELECT * FROM colaborador where salario < 2000;

SET sql_safe_updates = 0;

UPDATE colaborador SET salario = 1600 WHERE cargo = 'Estagiário' OR cargo = 'Estagiario';

SET sql_safe_updates = 1;

SELECT * FROM colaborador;
