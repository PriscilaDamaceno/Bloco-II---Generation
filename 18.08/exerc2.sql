create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal(8,2) not null,
tipo varchar(255),

primary key (id)
);

insert into produtos(nome,quantidade,preco, tipo) values ("camiseta",10,500.00,"roupa");
insert into produtos(nome,quantidade,preco, tipo) values ("calça",20,550.00,"roupa");
insert into produtos(nome,quantidade,preco, tipo) values ("cueca",30,20.00,"peça intima");
insert into produtos(nome,quantidade,preco, tipo) values ("calcinha",40,20.00,"peça intima");
insert into produtos(nome,quantidade,preco, tipo) values ("meia",50,30.00,"peça intima");
insert into produtos(nome,quantidade,preco, tipo) values ("blusa",60,340.00,"roupa");
insert into produtos(nome,quantidade,preco, tipo) values ("vestido",70,20.00,"roupa");
insert into produtos(nome,quantidade,preco, tipo) values ("lençol",80,20.00,"roupa de cama");

select * from produtos where preco > 500.00;
select * from produtos where preco < 500.00;

update produtos set preco = 30.00 where id = 8;
