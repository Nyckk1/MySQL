-- Criando e usando o banco de dados.
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment primary key,
    linguagem enum("C++", "Java", "JS", "Python", "React"),
    tipo enum("Front-end","Back-end")
);

-- Populando a Tabela categoria
INSERT INTO tb_categoria(linguagem, tipo) VALUES ("C++", "Back-end");
INSERT INTO tb_categoria(linguagem, tipo) VALUES ("Java", "Back-end");
INSERT INTO tb_categoria(linguagem, tipo) VALUES ("Python", "Back-end");
INSERT INTO tb_categoria(linguagem, tipo) VALUES ("JS", "Front-end");
INSERT INTO tb_categoria(linguagem, tipo) VALUES ("React", "Front-end");

-- Criando a tabela Curso
create table tb_curso(
	id bigint auto_increment primary key,
    nome varchar(30) not null,
    tempo varchar(20) not null,
    nmrCadastrados int not null,
    fk_id_categoria bigint,
    foreign key (fk_id_categoria) references tb_categoria (id)
);
-- Populando a Tabela Curso
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Nycolas", 2,"3 meses", 30);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Johnny", 1,"4 meses", 20);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Gabriel", 2,"4 meses", 40);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Joao", 3,"5 meses", 15);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Fernanda", 5,"6 meses", 35);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Nicole", 4,"5 meses", 45);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Cinthia", 4,"6 meses", 30);
INSERT INTO tb_curso (nome, fk_id_categoria, tempo, nmrCadastrados) VALUES ("Camila", 1,"7 meses", 50);

SELECT * FROM tb_curso where nmrCadastrados >= 30; -- Retornando o numero de alunos cadastrados no curso acima de 30

SELECT * FROM tb_curso where nmrCadastrados between 15 and 40; -- Retornando o numero de alunos cadastrados no curso entre 15 e 40

SELECT * FROM tb_curso where nome like "C%"; -- Retornando os Alunos com a letra "C"
SELECT * FROM tb_categoria where linguagem like "%J%"; -- Retornando as Linguagens com a letra "J"

SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_categoria.id=tb_curso.fk_id_categoria; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.fk_id_categoria where fk_id_categoria = 2; -- Mostrando todos os Produtos de uma categoria específica 