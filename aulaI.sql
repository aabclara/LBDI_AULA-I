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


    -- PARTE 2
    create database guia1v2;

    use guia1v2;

    create table tbpessoa(
        codigo int,
        nome varchar(25),
        cnpj varchar(25)
    )engine = InnoDB;
    alter table tbpessoa drop column cnpj;
    -- tira a coluna cnpj

    alter table tbpessoa add column cpf varchar(14);
    -- adiciona a coluna cpf na tabela tbpessoa



    -- PARTE 3
    table tbcidade(
        id int,
        nome varchar(100) not null,
        primary key(id)
    )engine = InnoDB;

    create table tbpessoa(
        id int(11),
        cpf varchar(14),
        nome varchar(255),
        primary key(id)
    )engine = InnoDB;

    alter table tbpessoa add column idcidade int not null;
    alter table tbpessoa add foreign key(idcidade) references tbcidade(id)

    truncate table tbpessoa;
    -- limpa apenas os dados da tabela