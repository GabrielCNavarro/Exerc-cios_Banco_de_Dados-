CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(100) NOT NULL,
armamento VARCHAR(100) NOT NULL,
equipamento VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
raca VARCHAR(100) NOT NULL,
poderATK INT,
poderDEF INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Bárbaro", "Machado pesado", "Armadura média");

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Mago", "Cajado mágico", "Trajes encantados");

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Ladrão", "Adaga veloz", "Armadura leve");

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Clérigo", "Maça purificada", "Vestimentas abençoadas");

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Arqueiro", "Arco pesado", "Armadura levissíma");

INSERT INTO tb_classes (classe, armamento, equipamento)
VALUES ("Paladino", "Martelo purificado", "Armadura pesada");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Konan", "Orc", 2600, 2100, 1);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Athelstan", "Humano", 1100, 1900, 4);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Gandalf", "Halfling", 2900, 1500, 2);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Legolas", "Elfo", 3200, 1400, 5);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Lupan", "Humano", 3000, 1700, 3);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Arthas", "Anão", 2100, 3000, 6);

INSERT INTO tb_personagens (nome, raca, poderATK, poderDEF, classe_id)
VALUES ("Romeu", "Gnomo", 2500, 1900, 2);

SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poderATK > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poderDEF BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT nome, raca, poderATK, poderDEF, tb_classes.classe as classe, tb_classes.armamento as armamento, tb_classes.equipamento as equipamento
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica
SELECT nome, raca, poderATK, poderDEF, tb_classes.classe as classe, tb_classes.armamento as armamento, tb_classes.equipamento as equipamento
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE classe_id = 2;