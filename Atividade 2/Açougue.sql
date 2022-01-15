-- Criando e usando o banco de dados.
create database db_cidade_das_carnes;
use db_cidade_das_carnes;
-- Criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment primary key,
    produtos enum ('Porco', 'Frango', 'Boi', 'Outros'),
    ativo boolean
);
-- Populando a Tabela categoria
INSERT INTO tb_categoria (produtos, ativo) VALUES ("Porco", true);
INSERT INTO tb_categoria (produtos, ativo) VALUES ("Frango", true);
INSERT INTO tb_categoria (produtos, ativo) VALUES ("Boi", true);
INSERT INTO tb_categoria (produtos, ativo) VALUES ("Outros", true);
INSERT INTO tb_categoria (produtos, ativo) VALUES ("Outros", false);

-- Criando a tabela Produto
create table tb_produto(
	id bigint auto_increment primary key,
    nome varchar(20) not null,
    peso decimal(4,1) not null,
    preco decimal (5,2) ,
    estoque int not null,
    fk_id_categoria bigint,
    foreign key (fk_id_categoria) references tb_categoria (id)
);

-- Populando a Tabela Produto
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Picanha", 1.5, 169.99, 5, 3);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Contra Filé", 1.0, 52.79, 10, 3);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Linguiça", 2.0, 37.89, 20, 1);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Asinha de Frango", 3.0, 79.90, 7, 2);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Peito de Frango", 1.0, 16.49, 25, 2);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Batata", 700, 20.00, 4, 4);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Tomate", 500, 12.90, 0, 5);
INSERT INTO tb_produto(nome, peso, preco, estoque, fk_id_categoria) VALUES ("Alcatra", 4.0, 152.69, 4, 3);

SELECT * FROM tb_produto where preco > 50; -- Retornando os itens com os preços acima de 50 reais

SELECT * FROM tb_produto where preco between 3 and 60; -- Retornando os itens com o preço entre 3 e 60 reais

SELECT * FROM tb_produto where nome like "C%"; -- Retornando os itens com a Palavra "C"

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id=tb_produto.fk_id_categoria; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.fk_id_categoria where fk_id_categoria = 2; -- Mostrando todos os Produtos de uma categoria específica 