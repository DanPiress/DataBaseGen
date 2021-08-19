create database db_escola;

use db_escola;

create table estudante(
id bigint auto_increment,
nome_aluno varchar (255) not null,
turma_aluno varchar (255) not null,
idade_aluno bigint not null,
periodo_aluno varchar (255) not null,
nota_aluno bigint not null,
primary key (id)
);

insert into estudante (nome_aluno, turma_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Danilo Pires", "Turma 31", 22, "Integral", 10);
insert into estudante (nome_aluno, turma_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Jenyffer Viana", "Turma 29", 23, "Integral", 9);
insert into estudante (nome_aluno, turma_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Natan Ruiz", "Turma 29", 22, "Integral", 6);
insert into estudante (nome_aluno, turma_aluno, idade_aluno, periodo_aluno, nota_aluno) values ("Pedro Daniel", "Turma 30", 65, "Integral", 3);

select * from estudante where nota_aluno > 7;
select * from estudante where nota_aluno < 7;

update estudante set nota_aluno = 8 where id = 1;