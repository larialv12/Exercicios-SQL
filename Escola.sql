CREATE DATABASE escola;
USE escola; 

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
	nomeAluno VARCHAR(255) NOT NULL,
	idade INT  NOT NULL,
	serie VARCHAR(255) NOT NULL,
	nota FLOAT   NOT NULL,

    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nomeALUNO, idade, serie, nota) 
VALUES ("Maria Julia Guimaraes",17, "3 Ano EM ", 9.0),
 ("Joao Junior",10, "4  Ano EF ", 8.0),
 ("Joao Macedo",16, "2 Ano EM ", 5.0),
 ("Julia rosa",18, "3 Ano EM ", 3.0),
 ("Maria Eduarda",15, "1 Ano EM ", 10.0),
 ("Maria Fernanda",17, "3 Ano EM ", 5.0),
 ("Thiago luz",17, "3 Ano EM ", 2.0),
 ("Thiago cardoso",18, "3 Ano EM ", 5.0);

SELECT * FROM tb_alunos;


SELECT * FROM tb_alunos WHERE nota >  7.5;


SELECT * FROM tb_alunos WHERE nota <  7.5;

UPDATE tb_alunos
SET nota = 5.0
WHERE id = 2;

