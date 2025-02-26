CREATE DATABASE ecommerce;
USE ecommerce; 

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nomeprduto VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
	preco FLOAT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nomeprduto, categoria, cor, preco) 
VALUES ("Geladeira ELECTROLUX","ELETRODOMESTICOS", "cinza", 3899),
("Notebook Mac PRO","ELETRONICOS", "cinza", 5600),
("Fone de ouvido sem fio ","ELETRONICOS", "preto", 100),
("Folgao","ELETRODOMESTICOS", "cinza", 1800),
("TV Samsumg 70 polegadas","ELETRONICOS", "preto", 2500),
("Cortina ","DECORACAO", "cinza", 80),
("Quadro de flor ","DECORACAO", "azul", 50),
("Armario ","MOVEIS", "bege", 800);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco >  500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos 
SET cor = "branco
"
WHERE id = 1;


