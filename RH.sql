CREATE DATABASE rh;

USE rh; 

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nomecolaborador VARCHAR(255) NOT NULL,
	setor VARCHAR(255) NOT NULL,
    salario FLOAT NOT NULL,
	anosempresa INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nomecolaborador, setor, salario, anosempresa) 
VALUES ("Joao Silva","tecnologia", 2400, 8),

 ("Maria Bernadeth","Vendas", 4.300, 30),

("Cristiano Soares","tecnologia", 2.800, 10),

 ("Julia Almeida",200, 3.900, 3),

 ("Maria Silva","juridico", 4.400, 15);
UPDATE tb_colaboradores 
SET salario = 3900
WHERE id = 1;

UPDATE tb_colaboradores 
SET salario = 3900
WHERE id = 2;

UPDATE tb_colaboradores 
SET salario = 3900
WHERE id = 2;



UPDATE tb_colaboradores 
SET salario = 2800
WHERE id = 5;

UPDATE tb_colaboradores 
SET salario = 4300
WHERE id = 4;


UPDATE tb_colaboradores 
SET setor = "Tecnologia"
WHERE id = 1;




UPDATE tb_colaboradores 
SET setor = "Tecnologia"
WHERE id = 2;


UPDATE tb_colaboradores 
SET salario = 1800
WHERE id = 4;

UPDATE tb_colaboradores 
SET setor = "Juridico"
WHERE id = 1;
SELECT * FROM tb_colaboradores WHERE salario >  2000;

SELECT * FROM tb_colaboradores WHERE salario <   2000;

