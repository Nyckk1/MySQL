-- Criando e usando o banco de dados.
create database db_farmacia_do_bem;
use db_farmacia_do_bem;
-- Criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment primary key,
    tipo varchar(20),
    tarja varchar(20)
);
-- Populando a Tabela categoria
INSERT INTO tb_categoria(tipo, tarja) VALUES("medicamento", null);
INSERT INTO tb_categoria(tipo, tarja) VALUES("cosmeticos", null);
INSERT INTO tb_categoria(tipo, tarja) VALUES("conveniencia", null);
INSERT INTO tb_categoria(tipo, tarja) VALUES("medicamento", "preta");
INSERT INTO tb_categoria(tipo, tarja) VALUES("medicamento", "vermelha");

-- Criando a tabela Produto
create table tb_produto(
	id bigint auto_increment primary key,
    nome varchar(20),
    medida varchar(20),
    valor decimal (4,2) ,
    id_categoria bigint,
    foreign key (id_categoria) references tb_categoria (id)
);
-- Populando a Tabela Produto
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Kit Kat", "42G", 3.39, 3);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Ibuprofeno", "400mg", 9.99, 1);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Paracetamol", "500mg", 7.59, 1);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Nimesulida", "100mg", 6.79, 1);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Agua", "500ml", 4.00, 3);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Rivotril", "2.5mg/ml", 11.69, 4);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Amoxicilina ", "500mg", 22.76, 5);
INSERT INTO tb_produto (nome, medida, valor, id_categoria) VALUES ("Creme hidratante", "100g", 34.67, 2);

SELECT * FROM tb_produto where valor > 20; -- Retornando os itens com os preços acima de 20 reais

SELECT * FROM tb_produto where valor between 3 and 60; -- Retornando os itens com o preço entre 3 e 60 reais

SELECT * FROM tb_produto where nome like "%B%"; -- Retornando os itens com a Palavra "B"

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id=tb_produto.id_categoria; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria where id_categoria = 2; -- Mostrando todos os Produtos de uma categoria específica 