CREATE DATABASE db_farmacia;
USE  db_farmacia;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
sessao_categ VARCHAR(255) NOT NULL,
disponvel VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_categoria (nome, descricao,sessao_categ, disponvel) 
VALUES
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças e sintomas', 'Farmácia', 'Sim'),
('Higiene Pessoal', 'Produtos para cuidados diários de higiene e limpeza corporal', 'Cuidados Pessoais', 'Sim'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele', 'Beleza', 'Sim'),
('Suplementos', 'Vitaminas, minerais e outros suplementos nutricionais', 'Bem-estar', 'Sim'),
('Cuidados com Bebê', 'Produtos específicos para cuidados com bebês e crianças pequenas', 'Infantil', 'Sim');

CREATE TABLE tb_produto (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DOUBLE NOT NULL,
quantidadedisponivel INT  NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, quantidadedisponivel) VALUES
('Dipirona 500mg 20 comprimidos', 5.99, 100),
('Omeprazol 20mg 28 cápsulas', 15.90, 80),
('Sabonete Líquido Antibacteriano 250ml', 12.50, 50),
('Escova de Dentes Macia', 8.90, 120),
('Protetor Solar FPS 50 120ml', 39.90, 60),
('Creme Hidratante Facial 50g', 29.90, 40),
('Vitamina C 1000mg 60 comprimidos', 45.00, 30),
('Fralda Descartável Tamanho M 30 unidades', 39.90, 50);

SELECT * FROM tb_produto;
SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 6.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE  "%c%";

UPDATE tb_produto SET categoria_id = 1 WHERE id = 1;
UPDATE tb_produto SET categoria_id = 1 WHERE id = 2;
UPDATE tb_produto SET categoria_id = 2 WHERE id = 3;
UPDATE tb_produto SET categoria_id = 2 WHERE id = 4;
UPDATE tb_produto SET categoria_id = 2 WHERE id = 5;
UPDATE tb_produto SET categoria_id = 2 WHERE id = 6;
UPDATE tb_produto SET categoria_id = 4 WHERE id = 7;
UPDATE tb_produto SET categoria_id = 2 WHERE id = 8;

SELECT tb_produto.nome, tb_produto.preco, tb_produto.quantidadedisponivel, tb_categoria.nome AS categoria_nome, tb_categoria.descricao, tb_categoria.sessao_categ
FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

SELECT tb_produto.nome, tb_produto.preco, tb_produto.quantidadedisponivel, tb_categoria.nome AS categoria_nome, tb_categoria.descricao, tb_categoria.sessao_categ
FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_produto.categoria_id = 4;
