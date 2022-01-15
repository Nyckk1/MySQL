-- Criando e usando o banco de dados.
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Criando a tabela categoria
create table tb_categoria(
	id bigint auto_increment primary key,
	produto varchar(20) not null,
	tipo varchar(20) not null,
    tamanho varchar(20) not null,
    primary key(id)
);
-- Populando a Tabela categoria
INSERT INTO tb_categoria(produto, tipo, tamanho) VALUES ("pizza", "salgada","brotinho");
INSERT INTO tb_categoria(produto, tipo, tamanho) VALUES ("esfiha", "doce","normal");
INSERT INTO tb_categoria(produto, tipo, tamanho) VALUES ("pizza", "doce","grande");
INSERT INTO tb_categoria(produto, tipo, tamanho) VALUES ("pizza", "salgada","grande");
INSERT INTO tb_categoria(produto, tipo, tamanho) VALUES ("esfiha", "salgada","normal");

-- Criando a tabela Pizza
create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(20) not null,
    bebidas varchar(20) not null,
    quantidade int not null,
    preco decimal(4,2),
    id_categoria bigint,
	foreign key (id_categoria) references tb_categoria (id)
);

-- Populando a Tabela Pizza
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("Calabresa", "coca-cola", "1", 25.90, 4);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("quatro queijos", "pepsi", "1", 47.80, 4);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("calabresa/mussarela", "coca-cola", "2", 59.90, 5);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("brigadeiro", "coca-cola", "1", 49.90, 3);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("prestigio", "guarana", "2", 79.90, 3);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("queijo", "fanta-laranja", "10", 31.90, 5);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("frango c/ catupiry", "pepsi", "1", 43.50, 4);
INSERT INTO tb_pizza(sabor, bebidas, quantidade, preco, id_categoria) VALUES ("carne", "fanta-uva", "12", 38.90, 5);

SELECT * FROM tb_pizza where preco > 45; -- Retornando os itens com os preços acima de 45 reais

SELECT * FROM tb_pizza where preco between 29 and 60; -- Retornando os itens com o preço entre 29 e 60 reais

SELECT * FROM tb_pizza where sabor like "%C%"; -- Retornando os itens com a Palavra "C"

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id=tb_pizza.id_categoria; -- Mostrando as duas tabelas na Tela
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria where id_categoria = 3; -- Mostrando todos os Produtos de uma categoria específica 