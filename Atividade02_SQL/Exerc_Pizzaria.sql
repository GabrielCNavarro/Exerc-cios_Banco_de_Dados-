CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(100),
tamanho VARCHAR(100),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
ingredientes VARCHAR(100),
valor DECIMAL(5,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Salgada", "Pequena");

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Salgada", "Média");

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Salgada", "Grande");

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Doce", "Pequena");

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Doce", "Média");

INSERT INTO tb_categorias (tipo, tamanho)
VALUE ("Doce", "Grande");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Margherita", "Molho de tomate, Mussarela, Manjericão, Azeite de olivia extra virgem", 60.00, 2);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Pepperoni", "Molho de tomate, Mussarela, Pepperoni em fatias(salame picante), Orégano", 60.00, 2);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Quatro Queijos", "Molho de tomate, Mussarela, Gorgonzola(ou Roquefort), Parmesão, Provolone", 90.00, 3);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Calabresa e Cebola", "Molho de tomate, Mussarela, Calabresa em fatias, Cebola roxa em fatias, Pimenta calabresa(opcional)", 40.00, 1);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Chocolate e Morango", "Chocolate derretido ou creme de chocolate, Morangos fatiados, Açúcar de confeiteiro", 60.00, 5);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Banana Caramelada", "Creme de avelã, Banana fatiada, Calda de caramelo, Nozes ou amêndoas picadas(opcional)", 60.00, 5);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("Frutas Tropicais", "Creme de coco ou leite condensado, Abacaxi fatiado, Manga fatiada, Coco ralado", 90.00, 6);

INSERT INTO tb_pizzas (nome, ingredientes, valor, categoria_id)
VALUE ("M&M's", "Creme de chocolate ou Nutella, M&M's, Marshmallows", 40.00, 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00; 

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, ingredientes, valor, tb_categorias.tipo as tipo, tb_categorias.tamanho as tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, ingredientes, valor, tb_categorias.tipo as tipo, tb_categorias.tamanho as tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE categoria_id = 2;