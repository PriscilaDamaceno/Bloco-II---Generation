create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo boolean,

	primary key(id)
);



create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(8,2) not null,
    qtd int not null,
    categoria_id bigint,

    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipo,ativo)values("Frutos Simples",true);
insert into tb_categoria(tipo,ativo)values("Frutos Secos",true);
insert into tb_categoria(tipo,ativo)values("Frutos Carnosos",true);
insert into tb_categoria(tipo,ativo)values("Frutos Agregados",true);
insert into tb_categoria(tipo,ativo)values("Frutos Múltiplos",true);

insert into tb_produto(nome,preco,qtd,categoria_id)values("Abacate ",3.00,10,1);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Açaí",10.00,10,2);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Banana",20.00,10,1);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Cacau",30.00,10,4);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Figo",40.00,10,5);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Framboesa",50.00,10,1);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Goiaba",60.00,10,2);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Jabuticaba",70.00,10,3);

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like 'C%';

select * from tb_categoria a
inner join tb_produto b
on b.categoria_id = a.id
where b.categoria_id = 1;


