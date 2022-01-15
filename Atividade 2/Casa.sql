-- Criando e usando o banco de dados.
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
-- Criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment primary key,
    departamento varchar(20) not null,
    ativo boolean
);
-- Populando a Tabela categoria
INSERT INTO tb_categoria(departamento, ativo) VALUES ("Eletrica", true);
INSERT INTO tb_categoria(departamento, ativo) VALUES ("Construção", true);
INSERT INTO tb_categoria(departamento, ativo) VALUES ("Decoração", true);
INSERT INTO tb_categoria(departamento, ativo) VALUES ("Hidráulica", true);
INSERT INTO tb_categoria(departamento, ativo) VALUES ("Ferramentas", true);

-- Criando a tabela Produto
create table tb_produto(
	id bigint auto_increment primary key,
    nome varchar(30) not null,
    medida varchar(20) not null,
	preco decimal (5,2) not null,
    estoque int not null,
    fk_id_categoria bigint,
    foreign key (fk_id_categoria) references tb_categoria (id)
);

-- Populando a Tabela Produto
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Cimento", "50KG", 28.99, 30, 2);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Tijolo", "09x19x19cm", 1.97, 100, 2);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Conduite", "50m", 82.90, 20, 1);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Quadro de Distribuição", "12/16", 99.90, 5, 1);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Caixa d'água", "1000L", 439.90, 10, 4);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Espátula", "1un", 17.90, 50, 5);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Prateleira", "10x40cm", 14.36, 25, 3);
INSERT INTO tb_produto (nome, medida, preco, estoque, fk_id_categoria) VALUES ("Espelho", "60x45cm", 60.90, 35, 3);

SELECT * FROM tb_produto where preco > 50; -- Retornando os itens com os preços acima de 50 reais

SELECT * FROM tb_produto where preco between 3 and 60; -- Retornando os itens com o preço entre 3 e 60 reais

SELECT * FROM tb_produto where nome like "C%"; -- Retornando os itens com a inicial "C"

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id=tb_produto.fk_id_categoria; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_id_categoria where fk_id_categoria = 4; -- Mostrando todos os Produtos de uma categoria específica 