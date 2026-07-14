CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

    id BIGINT NOT NULL AUTO_INCREMENT,

    nome VARCHAR(50) NOT NULL,

    setor VARCHAR(30),

    PRIMARY KEY(id)

);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(

    id BIGINT NOT NULL AUTO_INCREMENT,

    nome VARCHAR(50) NOT NULL,

	fornecedor VARCHAR(30),

    quantidade int,

    valor DECIMAL(6,2),

    categoria_id BIGINT,

    PRIMARY KEY(id),

    FOREIGN KEY (categoria_id)
    REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias
(nome, setor)
VALUES
('Medicamentos', 'Farmácia'),
('Cosméticos', 'Perfumaria'),
('Higiene Pessoal', 'Perfumaria'),
('Vitaminas', 'Suplementos'),
('Infantil', 'Bebês');

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos
(nome, fornecedor, quantidade, valor, categoria_id)
VALUES
('Dipirona 10 comprimidos', 'Lab +Vida', 51, 22.50, 1),
('Shampoo 300ml', 'Body Beauty', 35, 29.90, 2),
('Fralda Anti Bomba pct 50 uni', 'Baby Kids', 28, 69.80, 5),
('Whey Protein 1Kg', 'Fit Life', 19, 157.50, 4),
('Pasta de dente 60g', 'For Basic', 45, 15.80, 3),
('Protetor Solar FPS 95 100ml', 'Body Beauty', 16, 112.50, 2),
('Polivitamínico Gold 30 comprimidos', 'Fit Life', 12, 249.80, 4),
('Gardenal +Calmo 50ml', 'Lab +Vida', 22, 138.90, 1),
('Pomada Assadura 90g', 'Baby Kids', 34, 39.90, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE  valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;  

SELECT *
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';



