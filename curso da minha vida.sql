CREATE DATABASE curso_da_minha_vida;
USE curso_da_minha_vida;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Desenvolvimento Web', 'Cursos focados em tecnologias para criação de sites e aplicações web'),
('Ciência de Dados', 'Cursos sobre análise de dados, machine learning e inteligência artificial'),
('Segurança da Informação', 'Cursos sobre cibersegurança, proteção de dados e ethical hacking'),
('Cloud Computing', 'Cursos sobre tecnologias e serviços de computação em nuvem'),
('Desenvolvimento Mobile', 'Cursos para criação de aplicativos para dispositivos móveis');

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DOUBLE NOT NULL,
duracao INT  NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, duracao) VALUES
('Desenvolvimento Web Completo', 499.99,  6),
('Ciência de Dados com Python', 599.99,  2),
('Cibersegurança: Fundamentos e Práticas', 699.99,  3),
('Google Cloud Fundamentos', 299.99, 8 ),
('Desenvolvimento Mobile com React Native', 449.99, 5),
('Inteligência Artificial: Conceitos e Aplicações', 799.99,  3),
('DevOps Pro: Práticas e Ferramentas', 899.99, 7),
('Curso BCOP: Boas Práticas Operacionais', 200.00,  8);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_produtos WHERE nome LIKE  "c%";

UPDATE tb_produtos SET categorias_id = 1 WHERE id = 1;
UPDATE tb_produtos SET categorias_id = 2 WHERE id = 2;
UPDATE tb_produtos SET categorias_id = 3 WHERE id = 3;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 4;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 5;
UPDATE tb_produtos SET categorias_id = 2 WHERE id = 6;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 7;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 8;

SELECT  tb_produtos.nome, tb_produtos.preco,tb_produtos.duracao, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT  tb_produtos.nome, tb_produtos.preco,tb_produtos.duracao, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 3;


