-- criando banco de dados
create database db_brecho;
-- indica o banco de dados que é para ser usado, so é indicado uma vez
use db_brecho;
-- criando tabela
-- o banco de dados so exeuta a linha em que voce esta
create table produtos( 
-- auto_increment incrementa o numero em sequencia (1, 2, 3...)
id bigint auto_increment,
-- (255) é a quantidade de caracter que vai dentro do nome
nome varchar(255) not null,
quantidade int,
-- not  null -> nao deixa o dado ser nulo
preco decimal not null,
-- declarando chave primaria
primary key (id)
);
-- add dado na tabela
-- selecionando aonde ira add                   -- add o produto
insert into produtos (nome, quantidade, preco) values ("camiseta", 50, 20.00);
insert into produtos (nome, quantidade, preco) values ("calça", 60, 1.50);
insert into produtos (nome, quantidade, preco) values ("camiseta", 50, 20.00);
-- mostra como ta a tabela
select *from produtos;
-- alterando a estrutura (tabela)		--indicando que tera 10 numeros sendo os dois ultimos decimais
alter table produtos modify preco decimal (8,2);
-- update altera dado
-- indicando qual dado esta sendo alterado
-- usando a primary key (id) para identificar o produto
update produtos set preco = 1.50 where id = 2;
-- deletado dado da tabela		"or" deleta mais de um produto
-- delete sem where apaga tudo
delete from produtos where id = 3 or id = 2;
-- add nova colunana tabela
alter table produtos add descricao varchar(255);
-- apagando colunana tabela
alter table produtos drop descricao;
-- alterando nome da coluna		nome antigo/nome novo
alter table produtos change nome nomeproduto varchar(255);