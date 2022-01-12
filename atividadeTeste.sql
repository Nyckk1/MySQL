create database db_brecho;

use db_brecho;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int not null,
    preco decimal not null, -- decimal(6,2) 0000,00
    tamanho enum('P', 'M', 'G', 'GG'),
    primary key (id)
);

insert into tb_produtos (nome, quantidade, preco, tamanho) values ("Camisa", 10, 79.99, 'P');
insert into tb_produtos (nome, quantidade, preco, tamanho) values ("Calça", 20, 120.49, 'M');
insert into tb_produtos (nome, quantidade, preco, tamanho) values ("Shorts", 45, 30, 'G');

TRUNCATE TABLE tb_produtos; -- apaga as informações da tabela

