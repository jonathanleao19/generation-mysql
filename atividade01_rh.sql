CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    setor VARCHAR(100),
    idade INT,
    salario DECIMAL(10,2),
    PRIMARY KEY(id)
);

INSERT INTO colaboradores
(nome, cargo, setor, idade, salario)
VALUES
('Maria Helena Alves', 'Recepcionista', 'Recepção', 35, 1800.00),
('Roberto Carlos Costa', 'Gerente', 'Administração', 48, 4800.00),
('Lucas Souza', 'Assistente Administrativo', 'Recursos Humanos', 19, 1500.00),
('Luana Fernandes', 'Recrutadora', 'Recursos Humanos', 41, 2800.00),
('José Rodrigues', 'Contador', 'Financeiro', 45, 2800.00);

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2100.00
WHERE id = 1;

SELECT * FROM colaboradores;
UPDATE colaboradores
SET cargo = 'Auxiliar Administrativo'
WHERE id = 3;

SELECT * FROM colaboradores;
