create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;


create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo boolean,

	primary key(id)
);


create table tb_curso(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(8,2) not null,
    qtd int not null,
    categoria_id bigint,

    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipo,ativo)values("Desenvolvimento Web",true);
insert into tb_categoria(tipo,ativo)values("Desenvolvimento Mobile",true);
insert into tb_categoria(tipo,ativo)values("Desenvolvimento para Desktop",true);
insert into tb_categoria(tipo,ativo)values("Desenvolvimento de projetos",true);
insert into tb_categoria(tipo,ativo)values("Desenvolvimento de fluxogramas",true);

insert into tb_curso(nome,preco,qtd,categoria_id)values("Java",3.00,10,1);
insert into tb_curso(nome,preco,qtd,categoria_id)values("Javascript",30.00,10,2);
insert into tb_curso(nome,preco,qtd,categoria_id)values("HTML",40.00,10,3);
insert into tb_curso(nome,preco,qtd,categoria_id)values("CSS",50.00,10,4);
insert into tb_curso(nome,preco,qtd,categoria_id)values("Mysql",60.00,10,5);
insert into tb_curso(nome,preco,qtd,categoria_id)values("Kotlin",70.00,10,1);
insert into tb_curso(nome,preco,qtd,categoria_id)values("Sass",80.00,10,2);
insert into tb_curso(nome,preco,qtd,categoria_id)values("Angular",90.00,10,3);

select * from tb_curso where preco > 50.00;
select * from tb_curso where preco between 3.00 and 60.00;
select * from tb_curso where nome like 'J%';

select * from tb_categoria a
inner join tb_curso b
on b.categoria_id = a.id
where b.categoria_id = 2;

