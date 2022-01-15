-- Criando e usando o banco de dados.
create database db_generation_game_online;
use db_generation_game_online;

-- Criando a tabela Classe
create table tb_classe(
	id bigint auto_increment primary key,
	atributo varchar(20) not null,
    classe varchar(20) not null,
	personalidade varchar(30) not null
);

-- Populando a Tabela Classe
INSERT INTO tb_classe(atributo, classe, personalidade) VALUES ("Gelo","Arqueiro(a)", "Caótico(a)");
INSERT INTO tb_classe(atributo, classe, personalidade) VALUES ("Fogo","Mago(a)", "Maligno");
INSERT INTO tb_classe(atributo, classe, personalidade) VALUES ("Terra","Guerreiro(a)", "Leal");
INSERT INTO tb_classe(atributo, classe, personalidade) VALUES ("Vento","Bardo(a)", "Neutro(a)");
INSERT INTO tb_classe(atributo, classe, personalidade) VALUES ("Luz","Clériga(o)", "Bondoso (a)");

-- Criando a Tabela Personagem
create table tb_personagem(
	idPersonagem bigint auto_increment primary key ,
    nome varchar(30),
    genero varchar(30) not null, 
    nivel int not null,
    ataque int not null,
    defesa int not null,
    id_classeFK bigint,
	foreign key (id_classeFK) references tb_classe (id)
);

-- Populando a Tabela Personagem
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Dorelen","Homem", 20, 1000, 500, 2);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Elenlia","Mulher", 50, 2400, 1000, 1);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Mekror ","Homem", 13, 500, 300, 4);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Rarglak","Outros", 29, 1000, 700, 3);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Renwise","Homem", 100, 7700, 9000, 3);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Markeli","Mulher", 97, 3000, 3000, 5);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Vime","Outros", 1, 200, 150, 1);
INSERT INTO tb_personagem(nome, genero, nivel, ataque, defesa, id_classeFK) VALUES ("Lasle","Mulher", 88, 10000, 4500, 2);

SELECT * FROM tb_personagem where ataque > 2000; -- Retornando os personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000; -- Retornando os personagens com poder de defesa entre 1000 e 2000

SELECT * FROM tb_personagem where nome like "%R%"; -- Buscando os Personagens com a letra R

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id=tb_personagem.id_classeFK; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classeFK where id_classeFK = 1; -- Mostrando todos os personagens de uma classe especifica