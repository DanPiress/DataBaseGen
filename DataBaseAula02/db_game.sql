create database db_generetion_game_online;
use db_generetion_game_online;

create table tb_classe (
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (tipo, ativo) values ("Arqueiro", true);
insert into tb_classe (tipo, ativo) values ("Guerreiro", true);
insert into tb_classe (tipo, ativo) values ("Bruxo", true);

select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
ataque bigint not null,
defesa bigint not null,
agilidade bigint not null,
energia bigint not null,
tipo bigint,
primary key (id),
foreign key (tipo) references tb_classe (id) 
);

insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Paris", 700, 300, 550, 600, 4); 
insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Heitor", 700, 600, 650, 700, 6); 
insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Hécate", 750, 680, 500, 800, 7); 
insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Briseis", 600, 500, 650, 600, 7); 
insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Aquiles", 800, 650, 750, 700, 6); 
insert into tb_personagem (nome, ataque, defesa, agilidade, energia, tipo) values ("Circe", 800, 600, 550, 750, 7); 

select * from tb_personagem where ataque > 750;
select * from tb_personagem where defesa > 450 and defesa < 700;
select * from tb_personagem where nome like "%c%";


select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.agilidade,
tb_personagem.energia, tb_classe.tipo from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.tipo;

select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.agilidade,
tb_personagem.energia, tb_classe.tipo from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.tipo where tb_classe.id = 4; 