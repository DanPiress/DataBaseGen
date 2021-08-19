create database db_ecommerce;
use db_ecommerce;

create table tenis(
id bigint auto_increment,
sexo_tenis varchar (255) not null,
modelo_tenis varchar (255) not null,
marca_tenis varchar (255) not null,
tamanho_tenis bigint,
quantidade_tenis bigint,
primary key (id)
);

insert into tenis (sexo_tenis, modelo_tenis, marca_tenis, tamanho_tenis, quantidade_tenis, preco_tenis) values ("Feminino", "Nike Shox", "Nike", 36, 70, 400.00);
insert into tenis (sexo_tenis, modelo_tenis, marca_tenis, tamanho_tenis, quantidade_tenis, preco_tenis) values ("Masculino", "Nike Shox", "Nike", 40, 50, 400.00);
insert into tenis (sexo_tenis, modelo_tenis, marca_tenis, tamanho_tenis, quantidade_tenis, preco_tenis) values ("Feminino", "Jordan", "Nike", 34, 30, 800.00);
insert into tenis (sexo_tenis, modelo_tenis, marca_tenis, tamanho_tenis, quantidade_tenis, preco_tenis) values ("Masculino", "UltraBoost", "Adidas", 39, 58, 300.00);
insert into tenis (sexo_tenis, modelo_tenis, marca_tenis, tamanho_tenis, quantidade_tenis, preco_tenis) values ("Feminino", "Chuteira future", "Puma", 37, 33, 700);

alter table tenis add preco_tenis decimal;

delete from tenis where id = 1 or id = 2 or id = 3 or id = 4 or id = 5 or id = 6;

select * from tenis where preco_tenis < 500;
select * from tenis where preco_tenis > 500;

update tenis set preco_tenis = 850.00 where id = 9;