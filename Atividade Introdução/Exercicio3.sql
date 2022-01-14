create database db_escola;
use db_escola;

-- Criando a tabela estudantes
create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(20) not null,
    nota double not null,
	materia varchar(20) not null,
    horario enum('M', 'T', 'N'),
    intervalo varchar(10) not null,
    primary key (id)
);

-- Inserindo os atributos de todos os estudantes na tabela
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Nycolas", 8.0, "Portugues", 'M', "09:20");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Jefferson", 6.5, "Biologia", 'N', "21:30");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Fernanda", 8.5, "Historia", 'M', "09:20");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Cinthia", 9.5, "Matematica", 'M', "09:20");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Renan", 9.0, "Educação Fisica", 'T', "14:20");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Andressa", 5.8, "Geografia", 'T', "14:20");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Yuri", 10.0, "Matematica", 'N', "21:30");
insert into tb_estudantes (nome, nota, materia, horario, intervalo) values("Anderson", 6.3, "Sociologia", 'N', "21:30");

SELECT  nome, nota FROM tb_estudantes WHERE nota >7; -- Visualizando apenas o nome e a nota maior que 7
SELECT  nome, nota FROM tb_estudantes WHERE nota <7; -- Visualizando apenas o nome e a nota menor que 7
SELECT * FROM tb_estudantes where nota > 7; -- Visualizando a tabela toda com a nota maior que 7
SELECT * FROM tb_estudantes where nota < 7; -- Visualizando a tabela toda com a nota maior que 7

UPDATE tb_estudantes SET nome = "Vanessa" WHERE id = 6; -- Atualizando uma query (informações) na tabela

SELECT * FROM db_escola.tb_estudantes; -- Visualizando a tabela inteira do Banco