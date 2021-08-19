create database db_rh;
use db_rh;

create table funcionarios (
id bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
turno varchar (255) not null,
salario decimal not null,
primary key (id)
);

alter table funcionarios modify salario decimal (8,2);

insert into funcionarios (nome, cargo, turno, salario) values ("Danilo Pires da Silva", "Programador", "Matutino", 6500.00);
select *from funcionarios;
insert into funcionarios (nome, cargo, turno, salario) values ("João Paulo", "Programador", "Matutino", 6500.00);
insert into funcionarios (nome, cargo, turno, salario) values ("Jennyfer Viana", "Marketing", "Matutino", 4500.00);
insert into funcionarios (nome, cargo, turno, salario) values ("Natan Ruiz", "Auxiliar de limpeza", "Matutino", 1500.00);
insert into funcionarios (nome, cargo, turno, salario) values ("Patricia Pires", "Cozinheira", "Matutino", 1300.00);

select *from funcionarios where salario < 2000.00;
select *from funcionarios where salario > 2000.00;

update funcionarios set salario = 8000.00 where id = 2;

select *from funcionarios where salario < 2000.00;
select *from funcionarios where salario > 2000.00;