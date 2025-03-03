CREATE DATABASE construindo_vidas;
USE  construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Materiais Básicos', 'Itens fundamentais como cimento, areia, brita e cal'),
('Ferramentas', 'Equipamentos manuais e elétricos para construção e reforma'),
('Elétrica', 'Produtos para instalações elétricas residenciais e comerciais'),
('Hidráulica', 'Materiais para sistemas de água, esgoto e drenagem'),
('Esquadrias', 'Portas, janelas e acessórios');


CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DOUBLE NOT NULL,
quantidadedisponivel INT  NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (nome, preco, quantidadedisponivel) VALUES
('Cimento Portland CP II-E-32', 28.90, 500),
('Areia Média Lavada', 95.00, 1000),
('Furadeira de Impacto 650W', 199.90, 50),
('Jogo de Chaves de Fenda 6 peças', 39.90, 100),
('Fio Elétrico 2,5mm² 100m', 189.90, 80),
('Disjuntor Monopolar 25A', 9.90, 200),
('Tubo PVC 100mm Esgoto 6m', 89.90, 150),
('Torneira para Cozinha de Mesa', 79.90, 75);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE  "%c%";

UPDATE tb_produtos SET categorias_id = 1 WHERE id = 1;
UPDATE tb_produtos SET categorias_id = 3 WHERE id = 2;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 3;
UPDATE tb_produtos SET categorias_id = 3 WHERE id = 4;
UPDATE tb_produtos SET categorias_id = 1 WHERE id = 5;
UPDATE tb_produtos SET categorias_id = 2 WHERE id = 6;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 7;
UPDATE tb_produtos SET categorias_id = 4 WHERE id = 8;



SELECT  tb_produtos.nome, tb_produtos.preco,tb_produtos.quantidadedisponivel, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT  tb_produtos.nome, tb_produtos.preco,tb_produtos.quantidadedisponivel, tb_categorias.nome, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id
WHERE categorias_id = 3;

