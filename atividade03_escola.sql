CREATE DATABASE db_escola_do_fututo;

USE db_escola_do_futuro;

CREATE TABLE alunos (

id BIGINT AUTO_INCREMENT,
nome VARCHAR (30),
nascimento date,
serie int,
nota int,

PRIMARY KEY(id)

);

INSERT INTO alunos
(nome, nascimento, serie, nota)

VALUE 
('Joaquin Silva', '2012-02-12', '8', '5'),
('Luiz Carlos Souza', '2011-08-1', '8', '7'),
('Elizabeth Oliveira', '2012-09-25', '7', '9'),
('Maria Clara Santos', '2012-05-02', '7', '6'),
('Enzo Rodrigues', '2013-07-26', '6', '8'),
('Otavio da Silva', '2013-10-31', '6', '10'),
('Helena Cardoso', '2011-04-05', '8', '5'),
('Rafael Costa', '2011-06-09', '8', '9');

SELECT * FROM alunos;

SELECT * FROM alunos
WHERE nota > 7;

SELECT * FROM alunos
WHERE nota < 7;

UPDATE alunos
SET nome = 'Joaquim da Silva Pereira'
WHERE id = 1;

SELECT * FROM alunos
