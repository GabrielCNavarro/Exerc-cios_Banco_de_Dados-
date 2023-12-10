-- Atividade 1

-- Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE db_rh;

USE db_rh;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR (255),
contato CHAR(16),
salario DECIMAL(7,2),
periodo CHAR(12),
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 5 dados
INSERT INTO tb_colaboradores(nome, cargo, contato, salario, periodo)
VALUES ("Mano Brown", "CEO", "(11)99876-3435", 40000.00, "Tarde");

INSERT INTO tb_colaboradores(nome, cargo, contato, salario, periodo)
VALUES ("Sabotage", "Vice-presidente", "(11)99436-3455", 30000.00, "Tarde");

INSERT INTO tb_colaboradores(nome, cargo, contato, salario, periodo)
VALUES ("Chorão", "CEO", "(11)96632-3452", 28000.00, "Manhã");

INSERT INTO tb_colaboradores(nome, cargo, contato, salario, periodo)
VALUES ("Djonga", "Especialista", "(11)97886-5999", 20000.00, "Noite");

INSERT INTO tb_colaboradores(nome, cargo, contato, salario, periodo)
VALUES ("Froid", "Analista", "(11)95976-3228", 18000.00, "Noite");

-- SELECT que retorne colaboradores com salário maior do que 2000 ***
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- SELECT que retorne colaboradores com salário maior do que 2000 ***
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Atualize um registro da tabela através de uma query de atualização
ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(8,2);

DROP DATABASE db_empresaX;






