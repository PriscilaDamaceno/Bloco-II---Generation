create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


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

insert into tb_categoria(tipo,ativo)values("Naturais",true);
insert into tb_categoria(tipo,ativo)values("Artificiais",true);
insert into tb_categoria(tipo,ativo)values("Combinados",true);
insert into tb_categoria(tipo,ativo)values("De vedação",true);
insert into tb_categoria(tipo,ativo)values("De proteção",true);

insert into tb_produto(nome,preco,qtd,categoria_id)values("Cimento ",3.00,10,1);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Areia",30.00,10,2);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Pedra Brita",40.00,10,3);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Viga",50.00,10,4);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Cal",60.00,10,5);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Argamassa",70.00,10,1);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Gesso",80.00,10,2);
insert into tb_produto(nome,preco,qtd,categoria_id)values("Impermeabilizante",90.00,10,3);

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like 'C%';

select * from tb_categoria a
inner join tb_produto b
on b.categoria_id = a.id
where b.categoria_id = 2;
