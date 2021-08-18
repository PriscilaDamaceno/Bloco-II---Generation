create database db_rh;

use db_rh;


create table funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
funcao varchar(50),
departamento varchar(50),
salario decimal(8,2),
primary key (id)
);
insert into funcionarios(nome,funcao,departamento,salario) values ("Priscila Damaceno","Dev.Senior","Tecnologico","8800.00");
insert into funcionarios(nome,funcao,departamento,salario) values ("Pedro Allan","Auxiliar Adm","Administrativo", "3000.00");
insert into funcionarios(nome,funcao,departamento,salario) values ("Sayori Allan","Engenheiro Soft","Tecnologico","18000.00");
insert into funcionarios(nome,funcao,departamento,salario) values ("Luna Lino","Dev.Java Junior","Tecnologico","6000.00");
insert into funcionarios(nome,funcao,departamento,salario) values ("Wagner Araujo","Dev.Java Junior","tecnologico","2000.00");

select * from funcionarios where salario > 2000.00;
select * from funcionarios where salario < 2000.00;

update funcionarios set salario = 3000.00 where id = 5;

