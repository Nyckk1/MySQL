create database db_ecommerce;

use db_ecommerce;
-- Criando a tabela de produtos
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(20) not null,
    tipo varchar(20) not null,
    quantidade int not null,
    preco double not null,
    pagamento enum('Debito', 'Credito', 'Pix'),
    primary key (id)
);
-- Inserindo os atributos na tabela produtos
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Boneco Homem-Aranha", "Brinquedo", 5, 29.59, 'Pix');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Lego Marvel", "Brinquedo", 2, 79.59, 'Credito');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Cadeira", "Movel", 8, 49.79, 'Credito');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Mesa", "Movel", 10, 79.59, 'Credito');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Max-Steal", "Brinquedo", 18, 39.89, 'Pix');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Teclado", "Games", 20, 129.59, 'Debito');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("PS5", "Games", 12, 5100.00, 'Credito');
insert into tb_produtos (nome, tipo, quantidade, preco, pagamento) values("Geladeira", "eletrodomésticos", 3, 3149.00, 'Credito');

SELECT * FROM tb_produtos where preco > 500.00; -- Visualizando a tabela com o preço maior que 500
SELECT * FROM tb_produtos where preco < 500.00; -- Visualizando a tabela com o preço menor que 500

UPDATE tb_produtos SET preco = 45.59 WHERE id = 1; -- Atualizando uma query (informações) na tabela

SELECT * FROM db_ecommerce.tb_produtos; -- Visualizando a tabela inteira do Banco