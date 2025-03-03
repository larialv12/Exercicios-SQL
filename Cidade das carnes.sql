CREATE DATABASE db_cidades_das_carnes;
USE db_cidades_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipodecarne VARCHAR(255) NOT NULL,
   comprapor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipodecarne, comprapor) VALUES
('Carnes Vermelhas', 'Peso'),
('Aves', 'Peso'),
('Peixes e Frutos do Mar', 'Peso'),
('Carnes Processadas', 'Peso'),
('Carnes Exóticas', 'Peso');

 CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DOUBLE  NOT NULL,
    marca VARCHAR(255) NOT NULL,
    quatidadedisponivel VARCHAR(255)  NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, marca, quatidadedisponivel) VALUES
('Picanha', 89.90, 'Friboi', '20 kg'),
('Peito de Frango', 15.99, 'Sadia', '50 kg'),
('Salmão', 59.90, 'Pescados do Mar', '15 kg'),
('Linguiça Toscana', 18.50, 'Perdigão', '30 kg'),
('Filé Mignon', 79.90, 'Swift', '25 kg'),
('Fígado Bovino', 12.99, 'Friboi', '10 kg'),
('Salame Italiano', 25.90, 'Seara', '8 kg'),
('Bacon Defumado', 29.99, 'Aurora', '12 kg');


SELECT * FROM tb_produtos WHERE preco > 45.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE  "c%";

UPDATE tb_produtos SET categorias_id = 1 WHERE id = 1;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 2;
UPDATE tb_produtos SET categorias_id = 3 WHERE id = 3;
UPDATE tb_produtos SET categorias_id = 3 WHERE id = 4;
UPDATE tb_produtos SET categorias_id = 2 WHERE id = 5;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 6;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 7;
UPDATE tb_produtos SET categorias_id = 5 WHERE id = 8;
UPDATE tb_produtos SET categorias_id = 6 WHERE id = 9;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 10;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 11;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 12;

SELECT * FROM tb_produtos;


SELECT  tb_produtos.nome, tb_produtos.preco, tb_categorias.tipodecarne, tb_categorias.comprapor
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT  tb_produtos.nome, tb_produtos.preco, tb_categorias.tipodecarne, tb_categorias.comprapor
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 1;


