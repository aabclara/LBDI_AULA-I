-- Cria o Banco de Dados
create database dbguia02; 
-- Seleciona qual Banco sofrerá as alterações
use dbguia02; 


-- Cria a tabela aluno
create table tbaluno( 
	idaluno int, 
	nomealuno varchar(60),
	primary key(idaluno)
)ENGINE = INNODB; 

-- Cria a tabela cidade
create table tbcidade(
	idcidade int, 
	nomecidade varchar(60),
	primary key(idcidade)
)ENGINE = INNODB;

-- ESTABELECENDO O RELACIONAMENTO:
-- Cria uma coluna idcidade em tbaluno
alter table tbaluno addcolumn idcidade int;
    -- Adiciona a característica de chave estrangeira para 
    -- a coluna idcidade em tbaluno
	alter table tbaluno add foreign key(idcidade) 
	references tbcidade(idcidade);


-- FAZER INSERTS DE CIDADES
insert into tbcidade(idcidade, nomecidade) values (01, "Varginha");
insert into tbcidade(idcidade, nomecidade) values (02, "Três Corações");

-- FAZER INSERTS DE ALUNOS
insert into tbaluno (idaluno, nomealuno, idcidade) values
(1, "Acsa", 02),
(2, "Clara", 01);

-- DELETANDO UMA CIDADE QUE NÃO EXISTE
delete from tbcidade where idcidade = 3; -- Executa, mesmo sem dado associado ao id;

alter table tbaluno drop column idcidade;
alter table tbaluno drop foreign key tbaluno_ibfk_1;
	alter table tbaluno add foreign key

update from tbcidade where idcidade = 2;
update tbcidade set idcidade = 555 where idcidade = 01;

	alter table tbaluno add foreign key(idcidade)
		references tbcidade(idcidade) on DELETE cascade ON UPDATE cascade;



-- EXEMPLO
create table tbvenda(
    idvenda int,
    datavenda datetime,
    valorvenda float,
    primary key(idvenda)
);

