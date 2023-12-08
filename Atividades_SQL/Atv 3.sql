-- Atividade 3

-- Crie um banco de dados para um registro de uma escola 
CREATE DATABASE db_escola;

USE db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes
CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
dataNascimento date,
turma CHAR(2) NOT NULL,
serie CHAR(15) NOT NULL,
genero VARCHAR(200),
nota DECIMAL(4,2),
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("André Dalpisol", "1998-01-12", "F", "5ª série", "Masculino", "8.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Haone José", "1996-05-17", "A", "5ª série", "Masculino", "9.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Roberta Dalpisol", "1997-06-20", "C", "6ª série", "Feminino", "8.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Guilherme Augusto", "1998-01-12", "H", "4ª série", "Masculino", "7.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Nicholas Kelzba", "1998-01-12", "I", "5ª série", "Masculino", "10.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Kauana Souza", "1998-01-12", "G", "9ª série", "Feminino", "4.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Vitoria Franca", "1998-01-12", "D", "4ª série", "Feminino", "3.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Jhonas Jones", "1992-10-05", "E", "5ª série", "Masculino", "1.00");

INSERT INTO tb_estudantes (nome, dataNascimento, turma, serie, genero, nota)
VALUE ("Gustavo Kong", "1998-07-10", "B", "5ª série", "Masculino", "3.00");

-- SELECT que retorne alunos com nota maior do que 7
SELECT * FROM tb_estudantes WHERE nota > 7.00;

-- SELECT que retorne alunos com nota menor do que 7
SELECT * FROM tb_estudantes WHERE nota < 7.00;

-- UPDATE para atualizar a nota de um determinado aluno
UPDATE tb_estudantes SET nota = 10.00 WHERE id = 7;

-- Visualização
SELECT * FROM tb_estudantes; 


