create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- criando tabela de categoria
create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    classificacao varchar(255) not null,
    ativo boolean,

	primary key(id)
);


-- criando tabela de produto
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    preco decimal(8,2) not null,
    qtd int not null,
    categoria_id bigint,

    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

-- insert categoria
insert into tb_categoria(tipo,classificacao,ativo)values("Fitoterápico","sólidas",true);
insert into tb_categoria(tipo,classificacao,ativo)values("Alopático","líquidas",true);
insert into tb_categoria(tipo,classificacao,ativo)values("Homeopático","gasosas",true);
insert into tb_categoria(tipo,classificacao,ativo)values("Similar","semi- sólidas",true);
insert into tb_categoria(tipo,classificacao,ativo)values("Genérico","sólidas",true);

-- insert produto
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Acarbose","PRECOSE",3.00,10,1);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Acebutolol","SECTRAL",40.00,10,2);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Paracetamol","TYLENOL",50.00,10,3);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Acetazolamida","DIAMOX",60.00,10,4);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Binimetinibe","MEKTOVI",70.00,10,5);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Capreomicina","CAPASTAT",80.00,10,1);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Diclofenaco","VOLTAREN",90.00,10,2);
insert into tb_produto(nome,descricao,preco,qtd,categoria_id)values("Eletriptana","RELPAX",100.00,10,3);

--  produto com preço maior que 45,00
select * from tb_produto where preco > 50.00;

-- produto com preço entre 3,00 a 60,00
select * from tb_produto where preco between 3.00 and 60.00;

-- produto com nome que começa com "B"
select * from tb_produto where nome like 'B%';

-- inner join das tabelas de categoria e produto
select a.nome, b.classificacao from tb_produto a
inner join tb_categoria b
on a.categoria_id = b.id
where b.ativo = true;
