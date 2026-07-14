CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

    id BIGINT NOT NULL AUTO_INCREMENT,

    nome VARCHAR(50) NOT NULL,

    descricao VARCHAR(100),

    PRIMARY KEY(id)

);

CREATE TABLE tb_pizzas(

    id BIGINT NOT NULL AUTO_INCREMENT,

    sabor VARCHAR(50) NOT NULL,

    tamanho VARCHAR(10),

    adicional VARCHAR(50),

    valor DECIMAL(6,2),

    categoria_id BIGINT,

    PRIMARY KEY(id),

    FOREIGN KEY (categoria_id)
    REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias
(nome, descricao)
VALUES
('Doce', 'Pizzas doces'),
('Salgada', 'Pizzas tradicionais salgadas'),
('Mista', 'Pizzas com combinação de sabores'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas com ingredientes especiais');

INSERT INTO tb_pizzas
(sabor, tamanho, adicional, valor, categoria_id)
VALUES
('Mussarela', 'Média', 'Sem adicional', 65.90, 2),
('Calabresa', 'Grande', 'Com Catupiry', 79.90, 2),
('Banana', 'Média', 'Com Nutella', 89.90, 1),
('Brócolis', 'Pequena', 'Com Queijo', 42.90, 4),
('Camarão', 'Grande', 'Com Catupiry', 98.90, 5),
('Calabresa e Mussarela', 'Média', 'Sem adicional', 74.90, 3),
('4 Queijos', 'Pequena', 'Com Palmito', 89.90, 2),
('Morango', 'Grande', 'Com Brigadeiro', 89.90, 1);

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE sabor LIKE '%M%';

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';