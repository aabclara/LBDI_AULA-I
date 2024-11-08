-- PARTE 1:

create database guia01;

use guia01;

create table TbPessoa(
	id int,
    Nome varchar(255),
    cpf varchar(14),
    primary key(id)
) engine = InnoDB;

select * from TbPessoa;
-- * seleciona todos os dados na tabela

insert into TbPessoa(id, nome, cpf) values
(1, "Athena", "0123456789"),
(2, "Bella", "12334567"),
(3, "Clara", "0206543"),
-- (3, "Maria", "1125487"); Erro de duplicata de PK

create unique index cpf_unico on TbPessoa(cpf); 
-- cria uma atributo único no lugar de cpf

