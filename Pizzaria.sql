CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES

('Doce', 'Pizzas com chocolate, frutas e outros ingredientes doces.'),
('Vegetariana', 'Opções sem carne, com legumes e queijos variados.'),
('Vegana', 'Feitas sem ingredientes de origem animal.'),
('Pequena', 'Pizzas de tamanho reduzido para uma ou duas pessoas.'),
('Grande', 'Pizzas maiores, perfeitas para grupos.');



CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DOUBLE  NOT NULL,
    bordarecheada VARCHAR(255) NOT NULL,
    saborborda VARCHAR(255)  NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, bordarecheada, saborborda) VALUES
('Calabresa', 39.90, 'Sim', 'Catupiry'),
('Portuguesa', 42.50, 'Não', 'Nenhum'),
('Chocolate com Morango', 45.00, 'Sim', 'Chocolate Branco'),
('Brigadeiro', 40.00, 'Sim', 'Doce de Leite'),
('Quatro Queijos', 44.90, 'Sim', 'Cheddar'),
('Frango com Catupiry', 41.50, 'Não', 'Nenhum'),
('Vegetariana', 43.00, 'Sim', 'Requeijão'),
('Vegana Especial', 46.00, 'Não', 'Nenhum'),
('Pepperoni Premium', 48.90, 'Sim', 'Cheddar'),
('Mussarela', 38.90, 'Não', 'Nenhum');

SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE  "c%";

UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 1;
UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 2;
UPDATE tb_pizzas SET categorias_id = 3 WHERE id = 3;
UPDATE tb_pizzas SET categorias_id = 3 WHERE id = 4;
UPDATE tb_pizzas SET categorias_id = 2 WHERE id = 5;
UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 6;
UPDATE tb_pizzas SET categorias_id = 4 WHERE id = 7;
UPDATE tb_pizzas SET categorias_id = 5 WHERE id = 8;
UPDATE tb_pizzas SET categorias_id = 6 WHERE id = 9;
UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 10;
UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 11;
UPDATE tb_pizzas SET categorias_id = 1 WHERE id = 12;

SELECT  tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT tb_pizzas.nome,   tb_categorias.nome
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id
WHERE categorias_id = 1;




