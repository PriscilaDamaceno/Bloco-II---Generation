create database db_generation_game_online;

use db_generation_game_online;
-- criando classes personagens
create table tb_classe(
id bigint auto_increment,
tipo varchar(255) not null,
raca varchar(255)not null,
primary key(id)
);

-- tabela de personagens
create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
defesa int not null,
ataque int not null,
nivel int not null,
classe_id bigint,

primary key(id),
foreign key(classe_id) references tb_classe(id)
);
-- insert classes
insert into tb_classe(tipo,raca)values("Mago","Elf");
insert into tb_classe(tipo,raca)values("Guerreiro","Orc");
insert into tb_classe(tipo,raca)values("Bardo","Humano");
insert into tb_classe(tipo,raca)values("Guerreiro","Android");
insert into tb_classe(tipo,raca)values("Atirador","meio elfo");

-- insert personagens
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Yoda","3000","2900","100","1");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Anakin","4000","3600","77","2");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Han","3000","2500","88","3");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Frodo","2000","1500","30","4");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Sauron","9000","9000","98","5");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Cassandra","1000","600","73","1");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Vegeta","8000","3000","86","4");
insert into tb_personagem(nome,ataque,defesa,nivel,classe_id)values("Kalenay","9000","4000","101","3");

select * from tb_personagem;
-- personagem com mais de 2000 de ataque
select * from tb_personagem where ataque > 2000;

-- personagem com defesa entre 1000 a 2000
select * from tb_personagem where defesa between 1000 and 2000;

-- personagem com letra C no inicio do nome
select * from tb_personagem where nome like 'c%';

-- buscando os guerreiros
select b.nome, a.tipo from tb_classe a 
inner join tb_personagem b
on a.id = b.classe_id
where a.tipo = "Guerreiro";



