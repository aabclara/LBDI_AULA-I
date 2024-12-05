-- Revisão do roteiro de estudo disponibilizado
-- revisão para a avaliação 1 em 06/12


create database bdrevisaoI;
use bdrevisaoI;

create table tbpessoa(
	idPessoa INT(11),
    nomePessoa VARCHAR(50)
);

alter table tbpessoa add column cpf VARCHAR(11) UNIQUE;

-- Teste de visualização 1
SELECT * FROM tbpessoa;

alter table tbpessoa drop column cpf;

alter table tbpessoa add column cpf VARCHAR(11);
create unique index cpfx on tbpessoa(cpf);

-- Teste de visualização 2
SELECT * FROM tbpessoa;

insert into tbpessoa(idPessoa, nomePessoa) values 
	('1', 'Maria Clara'),
	('2', 'Cristian');
    
-- Teste de visualização 3
SELECT * FROM tbpessoa;

update tbpessoa set cpf = '12345678910' where idPessoa = 1;

 -- Erro percebido!!
drop table tbpessoa;

-- Reiniciando...
create table tbpessoa(
	idPessoa INT(11),
    nomePessoa VARCHAR(50),
    primary key (idPessoa)
);

alter table tbpessoa modify column idPessoa INT auto_increment;

insert into tbpessoa(nomePessoa, cpf) values 
	('Fulano', '78945612301'),
    ('Ciclano', '45678912358');

-- Teste de visualização 4
SELECT * FROM tbpessoa;

-- Teste de Erro: Não existe dado com id = 5
delete from tbpessoa where idPessoa = 5;

-- Teste de visualização 5
SELECT * FROM tbpessoa;

create table tbcidade(
	idCidade INT(11),
    nomeCid VARCHAR(30),
    estado CHAR(2),
    primary key (idCidade)
);

-- Teste de visualização 6
SELECT * FROM tbcidade;

insert into tbcidade(idCidade, nomeCid, estado) values 
	('1', 'Varginha', 'MG'),
    ('2', 'Bertioga', 'SP'),
    ('3', 'Vitória', 'ES');
    
-- Teste de visualização 7
SELECT * FROM tbcidade;

alter table tbpessoa add column pessoaidCidade INT;
alter table tbpessoa add foreign key (pessoaidCidade) references tbcidade(idCidade);

-- Teste de visualização 8
SELECT * FROM tbpessoa;
update tbpessoa set pessoaidCidade = 1 where idPessoa = 1;
update tbpessoa set pessoaidCidade = 1 where idPessoa = 2; 
update tbpessoa set pessoaidCidade = 2 where idPessoa = 3;
update tbpessoa set pessoaidCidade = 3 where idPessoa = 4;

delete from tbcidade where nomeCid = 'Bertioga';
update tbcidade set idCidade = 22 where nomeCid = 'Vitória';

alter table tbpessoa modify column pessoaidCidade INT NULL;

-- Teste de visualização 9
SELECT * FROM tbpessoa;

alter table tbpessoa drop column pessoaidCidade;

