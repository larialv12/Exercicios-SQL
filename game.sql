CREATE DATABASE gameN;
USE gameN;

CREATE TABLE tb_niveis (
    id BIGINT AUTO_INCREMENT,
    classe VARCHAR(255) NOT NULL,
    nivel VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagem (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    jutsu VARCHAR(255) NOT NULL,
    clã VARCHAR(255) NOT NULL,
    poderataque INT NOT NULL,
    poderdefesa INT NOT NULL,
    niveis_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (niveis_id) REFERENCES tb_niveis(id)
);

INSERT INTO tb_niveis (classe, nivel) 
VALUES ("Estudante da Academia", "Iniciante"),
("Genin", "Baixo"),
("Chunin", "Médio"),
("Jounin", "Alto"),
("Jounin Especial", "Alto"),
("Anbu", "Elite"),
("Sannin", "Lendário"),
("Kage", "Supremo");

INSERT INTO tb_personagem (nome, jutsu, clã, poderataque, poderdefesa, niveis_id) VALUES
('Naruto Uzumaki', 'Modo Sábio dos Seis Caminhos', 'Uzumaki', 2200, 1900, 8),
('Sasuke Uchiha', 'Rinnegan', 'Uchiha', 2500, 2100, 8),
('Madara Uchiha', 'Susanoo Perfeito', 'Uchiha', 5000, 5000, 8),
('Obito Uchiha', 'Kamui', 'Uchiha', 2500, 2100, 7),
('Hashirama Senju', 'Modo Sábio: Mil Mãos', 'Senju', 2500, 2300, 8),
('Minato Namikaze', 'Hiraishin no Jutsu', 'Namikaze', 3000, 3500, 8),
('Hiruzen Sarutobi', 'Todos os Jutsus de Konoha', 'Sarutobi', 1900, 2100, 8),
('Itachi Uchiha', 'Susanoo', 'Uchiha', 3000, 2400, 6),
('Kakashi Hatake', 'Raikiri', 'Hatake', 2800, 3400, 5),
('Shikamaru Nara', 'Jutsu de Sombra', 'Nara', 1500, 2000, 4);

SELECT * FROM tb_niveis;
SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poderataque > 2000;
SELECT * FROM tb_personagem WHERE poderdefesa < 2000;

UPDATE tb_personagem SET niveis_id = 2 WHERE id = 1;
UPDATE tb_personagem SET niveis_id = 2 WHERE id = 2;
UPDATE tb_personagem SET niveis_id = 7 WHERE id = 3;
UPDATE tb_personagem SET niveis_id = 2 WHERE id = 4;
UPDATE tb_personagem SET niveis_id = 8 WHERE id = 5;
UPDATE tb_personagem SET niveis_id = 8 WHERE id = 6;
UPDATE tb_personagem SET niveis_id = 8 WHERE id = 7;
UPDATE tb_personagem SET niveis_id = 6 WHERE id = 8;
UPDATE tb_personagem SET niveis_id = 6 WHERE id = 9;
UPDATE tb_personagem SET niveis_id = 5 WHERE id = 10;

SELECT * FROM tb_personagem WHERE poderdefesa BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagem WHERE nome LIKE  "s%";

SELECT tb_personagem.nome, tb_personagem.jutsu, tb_personagem.clã, tb_niveis.classe, tb_niveis.nivel
FROM tb_personagem 
INNER JOIN tb_niveis ON tb_personagem.niveis_id = tb_niveis.id;

SELECT tb_personagem.nome, tb_personagem.jutsu, tb_personagem.clã,tb_niveis.classe, tb_niveis.nivel
FROM tb_personagem
INNER JOIN tb_niveis ON tb_personagem.niveis_id = tb_niveis.id
WHERE niveis_id = 8;

