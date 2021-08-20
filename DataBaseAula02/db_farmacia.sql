create database db_farmacia;
use db_farmacia;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255),
ativo boolean,
primary key (id)
);

insert into tb_categoria (tipo, ativo) values ("Comprimido", true);
insert into tb_categoria (tipo, ativo) values ("Promada", true);
insert into tb_categoria (tipo, ativo) values ("Xarope", true);
insert into tb_categoria (tipo, ativo) values ("Higiene", true);
insert into tb_categoria (tipo, ativo) values ("Vitamina", true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome_produto varchar(255) not null,
tamanho_produto varchar (255) not null,
valor_produto decimal (8,2),
validade_produto date,
tipo_produto bigint,
primary key (id),
foreign key (tipo_produto) references tb_categoria (id)
);
select  * from tb_produto;

insert into tb_produto (nome_produto, tamanho_produto, valor_produto, validade_produto, tipo_produto) values ("Dipirona", "250MG", 6.00, "2021-09-07", 1);
insert into tb_produto (nome_produto, tamanho_produto, valor_produto, validade_produto, tipo_produto) values ("FisioForte", "500g", 19.99, "2021-12-31", 2);
insert into tb_produto (nome_produto, tamanho_produto, valor_produto, validade_produto, tipo_produto) values ("Alcool70", "500ML", 8.49, "2022-02-13", 4);
insert into tb_produto (nome_produto, tamanho_produto, valor_produto, validade_produto, tipo_produto) values ("Whey", "1KG", 50.00, "2021-10-16", 5);
insert into tb_produto (nome_produto, tamanho_produto, valor_produto, validade_produto, tipo_produto) values ("Cataflan", "250ML", 27.00, "2021-11-07", 3);


select * from tb_produto where valor_produto > 25;
select * from tb_produto where valor_produto > 15 and valor_produto < 60;
select * from tb_produto where nome_produto like "%a%";

select tb_produto.nome_produto, tb_produto.tamanho_produto, tb_produto.valor_produto, tb_produto.validade_produto,
 tb_categoria.tipo from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.tipo_produto order by tipo; 

select tb_produto.nome_produto, tb_produto.tamanho_produto, tb_produto.valor_produto, tb_produto.validade_produto,
 tb_categoria.tipo from tb_produto inner join tb_categoria 
 on tb_categoria.id = tb_produto.tipo_produto where tb_categoria.id = 3;
