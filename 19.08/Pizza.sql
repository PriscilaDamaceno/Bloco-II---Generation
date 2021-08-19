create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
Tipo varchar (255) not null,
Tamanho varchar(255)not null,
borda boolean,

primary key(id)
);

create table tb_pizza(
id bigint auto_increment,
Nome varchar(255) not null,
Precos decimal(8,2) not null,
Ingredientes varchar(255) not null,
Categoria_id bigint,
Ativo boolean,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_categoria(Tipo, Tamanho, Borda)values("salgada","grande",true);
insert into tb_categoria(Tipo, Tamanho, Borda)values("salgada","broto",true);
insert into tb_categoria(Tipo, Tamanho, Borda)values("salgada","grande",false);
insert into tb_categoria(Tipo, Tamanho, Borda)values("salgada","broto",false);
insert into tb_categoria(Tipo, Tamanho, Borda)values("doce","grande",true);
insert into tb_categoria(Tipo, Tamanho, Borda)values("doce","broto",true);
insert into tb_categoria(Tipo, Tamanho, Borda)values("doce","grande",false);
insert into tb_categoria(Tipo, Tamanho, Borda)values("doce","broto",false);

insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Portuguesa",40.00,"Ovo,Mussarela e calabresa",1,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Mussarela",45.00,"Mussarela",2,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Calabresa",60.00,"Calabresa e Cebola",3,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Frango Catupiry",65.00,"frango e catupiry",4,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Brigadeiro",25.00,"Brigadeiro",5,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Romeu e Julieta",30.00,"Queijo e Goiabada",6,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Prestigio",35.00,"Coco e chocolate",7,true);
insert into tb_pizza(Nome, Precos, Ingredientes,Categoria_id,Ativo)values("Sensação",35.00,"chocolate e morango",8,true);

select*from tb_pizza where Precos > 45.00;

select*from tb_pizza where Precos between 29.00 and 60.00;

select*from tb_pizza where Nome like 'c%';

select a.Nome, b.tipo from tb_pizza a
inner join tb_categoria b
on a.categoria_id = b.id
where b.tipo = "doce";


