create database db_pizzaria;
use db_pizzaria;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, ativo) values ("pizza", true);
insert into tb_categoria (tipo, ativo) values ("esfiha", true);
insert into tb_categoria (tipo, ativo) values ("calzzone", true);

select * from tb_categoria;

create table tb_produto(
id_produto bigint auto_increment,
tipo_produto bigint not null,
sabor_produto varchar (255) not null,
tamanho_produto varchar (255) not null,
valor_produto bigint not null,
primary key (id_produto),
foreign key (tipo_produto) references tb_categoria (id) 
);

insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (1, "Frango", "Grande", 50);
insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (1, "Queijo", "Grande", 35);
insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (2, "Carne", "Media", 5);
insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (2, "Calabresa", "Grande", 7);
insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (3, "4 Queijos", "Grande", 30);
insert into tb_produto (tipo_produto, sabor_produto, tamanho_produto, valor_produto) values (3, "Toscana", "Grande", 40);

select * from tb_produto;

select * from tb_produto where valor_produto > 35;
select * from tb_produto where valor_produto > 29 and valor_produto < 60;
select * from tb_produto where sabor_produto like "%c%";

select tb_produto.sabor_produto, tb_produto.tamanho_produto, tb_produto.valor_produto,
 tb_categoria.tipo from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.tipo_produto order by tipo; 

select tb_produto.sabor_produto, tb_produto.tamanho_produto, tb_produto.valor_produto,
 tb_categoria.tipo from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.tipo_produto where tb_categoria.id = 3;