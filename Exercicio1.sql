create database db_rh;
use db_rh;

-- Criando a tabela de funcionarios
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(50) not null,
    cargo varchar(30) not null,
    salario double not null,
    chegada enum('M', 'T', 'N'), 
    primary key (id)
);

-- Inserindo os atributos de todos os funcionarios na tabela
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Marcela", "Analista", "4000.00", 'M');
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Jose", "Limpeza", "1950.00", 'N');
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Fernanda", "Supervisora", "6700.00", 'M');
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Vitor", "Suporte", "2300.00", 'T');
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Nicole", "Financeiro", "3000.00", 'M');
insert into tb_funcionarios(nome, cargo, salario, chegada) values("Felipe", "Estagiario", "1200.00", 'T');

SELECT * FROM tb_funcionarios where salario > 2000.00; -- Visualizando todos os funcionarios com salario maior que 2000.00
SELECT * FROM tb_funcionarios where salario < 2000.00; -- Visualizando todos os funcionarios com salario menor que 2000.00

-- Atualizando uma query (informações) na tabela
UPDATE tb_funcionarios SET salario = "Joel" WHERE id = 2;

SELECT *  FROM db_rh.tb_funcionarios; -- Visualizando a tabela inteira do Banco