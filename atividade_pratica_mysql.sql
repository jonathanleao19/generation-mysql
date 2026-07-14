-- =====================================================
-- EXERCÍCIO 1 - GESTÃO DE CURSOS E ALUNOS
-- =====================================================

-- Criando o banco de dados
CREATE DATABASE db_cursos_alunos;

USE db_cursos_alunos;

-- Criando a tabela de curso
CREATE TABLE tb_curso(

    id_curso BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL,

    PRIMARY KEY(id_curso)

);

-- Criando a tabela de aluno
CREATE TABLE tb_aluno(

    id_aluno BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    id_curso BIGINT NOT NULL,

    PRIMARY KEY(id_aluno),

    FOREIGN KEY (id_curso)
    REFERENCES tb_curso(id_curso)

);

-- Inserção dos cursos
INSERT INTO tb_curso
(nome, carga_horaria)
VALUES
('Montagem, Manutenção e Redes', 100),
('Robótica', 300),
('Desenvolvimento de Games', 90),
('Java', 200),
('Python', 180),
('Desenvolvimento de Apps', 65),
('Profissional Web', 145),
('Inteligência Artificial - IA', 120),
('Soft Skills', 84),
('Programador de Computador Avançado', 200);

-- Consulta dos cursos
SELECT * FROM tb_curso;

-- Inserção dos alunos
INSERT INTO tb_aluno
(nome, idade, id_curso)
VALUES
('Gustavo Lima', 36, 2),
('Luan Santana', 35, 4),
('Roberto Carlos', 25, 3),
('Cláudia Leite', 22, 7),
('Ivete Sangalo', 30, 5),
('Ana Castela', 26, 6),
('Caetano Veloso', 19, 1),
('Bruno Mars', 34, 9),
('Roberta Miranda', 28, 10),
('Simone Mendes', 17, 8);

-- Consulta de alunos
SELECT * FROM tb_aluno;

-- Consulta idade
SELECT * FROM tb_aluno
WHERE idade >= 18;

-- Atualização de registro
UPDATE tb_aluno
SET idade = 105
WHERE id_aluno = 3;

-- Remoção de registro
DELETE FROM tb_aluno
WHERE id_aluno = 10;

-- Relacionamento entre as tabelas
SELECT * FROM tb_aluno
INNER JOIN tb_curso
ON tb_aluno.id_curso = tb_curso.id_curso;

-- =====================================================
-- EXERCÍCIO 2 - FUNCIONÁRIOS E DEPARTAMENTOS
-- =====================================================

-- Criando o banco de dados
CREATE DATABASE db_empresa;

USE db_empresa;

-- Criando a tabela de departamento
CREATE TABLE tb_departamento(

    id_departamento BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,

    PRIMARY KEY(id_departamento)
);

-- Criando a tabela de funcionario
CREATE TABLE tb_funcionario(

    id_funcionario BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL (9,2) NOT NULL,
    id_departamento BIGINT NOT NULL,

    PRIMARY KEY(id_funcionario),

    FOREIGN KEY (id_departamento)
    REFERENCES tb_departamento(id_departamento)
);

-- Inserção de departamento
INSERT INTO tb_departamento (nome)
VALUES
('Administração'),
('Suporte Técnico'),
('Almoxarifado'),
('Marketing'),
('Comercial');

-- Consulta Tabela de departamento
SELECT * FROM tb_departamento;

-- Inserção de funcionario
INSERT INTO tb_funcionario (nome, salario,id_departamento)
VALUES
('Hebe Camargo', '2800.00', 5),
('Silvio Santos', '3100.00', 4),
('Airton Sena', '3000.00', 1),
('Cid Moreira', '2900.00', 2),
('Augusto Liberato', '2500.00', 3);

-- Consulta Tabela de funcionario
SELECT * FROM tb_funcionario;

-- Consulta de registro
SELECT * FROM tb_funcionario
WHERE salario > 2900.00;

-- Atualização de registro
UPDATE tb_funcionario
SET salario = 3200.00
WHERE id_funcionario = 1;

SELECT * FROM tb_funcionario;

-- Remoção de registro
DELETE FROM tb_funcionario
WHERE id_funcionario = 5;

-- Relacionamento entre as tabelas
SELECT * FROM tb_funcionario
INNER JOIN tb_departamento
ON tb_funcionario.id_departamento = tb_departamento.id_departamento;

-- =====================================================
-- EXERCÍCIO 3 - PRODUTOS E CATEGORIAS
-- =====================================================

CREATE DATABASE db_loja;

USE db_loja;

-- Criando a tabela de categoria
CREATE TABLE tb_categoria(

    id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,

    PRIMARY KEY(id_categoria)
);

-- Criando a tabela de produto
CREATE TABLE tb_produto(

    id_produto BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL (9,2) NOT NULL,
    id_categoria BIGINT NOT NULL,

    PRIMARY KEY(id_produto),

    FOREIGN KEY (id_categoria)
    REFERENCES tb_categoria(id_categoria)
);

-- Inserção de categoria
INSERT INTO tb_categoria (nome)
VALUES
('Cama, Mesa e Banho'),
('Roupa Masculina'),
('Roupa Feminina'),
('Roupa Infantil');

-- Consulta Tabela de categoria
SELECT * FROM tb_categoria;

-- Inserção de produto
INSERT INTO tb_produto (nome, preco, id_categoria)
VALUES
('Toalha de banho', 25.90, 1),
('Cobertor Casal', 109.90, 1),
('Body', 25.90, 4),
('Calça Jeans', 149.90, 2),
('Vestido Longo', 229.90, 3),
('Saia Curta', 119.90, 3),
('Camisa Manga Curta', 99.90, 2),
('Shorts', 89.90, 2),
('Camiseta Regata', 59.90, 2),
('Sapatinho bebê', 119.90, 4);

-- Consulta da tabela de produtos
SELECT * FROM tb_produto;

-- Filtrar produtos por preço
SELECT * FROM tb_produto
WHERE preco > 100.00;

-- Atualização de registro
UPDATE tb_produto
SET preco = 199.90
WHERE id_produto = 5;

-- Conferência da atualização
SELECT * FROM tb_produto;

-- Remoção de registro
DELETE FROM tb_produto
WHERE id_produto = 8;

-- Conferência da remoção
SELECT * FROM tb_produto;

-- Relacionamento entre as tabelas
SELECT *
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;







