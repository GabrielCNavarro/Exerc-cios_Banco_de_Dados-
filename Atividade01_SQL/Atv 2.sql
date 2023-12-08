-- Atividade 2

-- Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
validade DATE,
preco DECIMAL(6,2) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados
INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Abacate", "15", "2024-10-15", 20.00, "Abacate Ouro Verde");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Laranja", "30", "2024-10-15", 12.00, "Laranja Lima");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Uva", "45", "2024-10-15", 8.00, "Uva Merlot");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Goiaba", "20", "2024-10-15", 10.00, "Goiaba Branca");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Banana", "15", "2024-10-15", 10.00, "Banana Prata");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Morango", "15", "2024-10-15", 20.00, "Morango Diamante");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Maracujá", "15", "2024-10-15", 20.00, "Maracujá Silvestre");

INSERT INTO tb_produtos(nome, quantidade, validade, preco, descricao)
VALUES ("Melão", "15", "2024-10-15", 25.00, "Melão Gália");

-- SELECT que retorne produtos com valor maior do que 500 ***
SELECT * FROM tb_produtos WHERE salario > 500.00;

-- SELECT que retorne produtos com valor menor do que 500
SELECT * FROM tb_produtos WHERE salario < 500.00;

-- Atualize um registro da tabela através de uma query de atualização
UPDATE tb_produtos SET preco = 15.00 WHERE id = 1;






