CREATE DATABASE db_market;

USE db_market;

CREATE TABLE produtos(

    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,

    PRIMARY KEY(id)

);

INSERT INTO produtos
(produto, categoria, quantidade, valor)
VALUES
('Notebook', 'Equipamentos', 9, 3850.00),
('Tablet', 'Equipamentos', 6, 1450.00),
('Mouse', 'Periféricos', 10, 99.00),
('Monitor', 'Periféricos', 4, 645.00),
('Teclado', 'Periféricos', 7, 101.00),
('Cadeira Gamer', 'Linha Gamer', 10, 799.00),
('Mesa Gamer', 'Linha Gamer', 10, 389.00),
('SSD', 'Hardware', 6, 930.00),
('Placa de Vídeo', 'Hardware', 8, 1400.00),
('Pendrive', 'Armazenamento', 19, 55.00);

SELECT * FROM produtos;

SELECT * FROM produtos
where valor > 500.00;

SELECT * FROM produtos
where valor < 500.00;

UPDATE produtos
SET valor = 3990.90
WHERE id = 1;

SELECT * FROM produtos;



