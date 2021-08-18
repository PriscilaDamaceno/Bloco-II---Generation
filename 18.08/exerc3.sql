create database db_alunos;

use db_alunos;

create table Alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
ano int,
nota decimal(8,2),

primary key (id)
);

insert into Alunos(nome,idade,ano,nota) values ("Pedro",15,8,8.5);
insert into Alunos(nome,idade,ano,nota) values ("Luna",15,8,7.5);
insert into Alunos(nome,idade,ano,nota) values ("Sayori",15,8,7.0);
insert into Alunos(nome,idade,ano,nota) values ("Allan",15,8,6.0);
insert into Alunos(nome,idade,ano,nota) values ("Rachel",15,8,5.0);
insert into Alunos(nome,idade,ano,nota) values ("Ross",15,8,8.5);
insert into Alunos(nome,idade,ano,nota) values ("Monica",15,8,4.0);
insert into Alunos(nome,idade,ano,nota) values ("Chandler",15,8,3.0);
insert into Alunos(nome,idade,ano,nota) values ("Joey",15,8,2.0);

select * from Alunos where nota > 7.0;
select * from Alunos where nota < 7.0;

update Alunos set nota = 8.0 where id = 9;