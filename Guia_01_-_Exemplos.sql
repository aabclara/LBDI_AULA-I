	CREATE DATABASE Guia01;
    
	USE  Guia01;

	CREATE TABLE TbPessoa(
		id INT,
		nome VARCHAR(255),
		cpf  VARCHAR(14),
		PRIMARY KEY(id)
	);
    
	insert into TbPessoa (id, nome, cpf) values
    (1, "Andromeda", "12345567"),
    (2, "Astrogildo", "123455678"),
    (3, "Panteilda", "123455679");
    
    select * from TbPessoa;
    
    CREATE UNIQUE INDEX cpf_unico ON TbPessoa(cpf); 
	-- Cria um atributo único no atributo cpf da tabela TbPessoa

    CREATE INDEX nome_ordenado ON TbPessoa(nome);
    
    
    
    
    DROP INDEX nome_ordenado ON TbPessoa;
    DROP INDEX cpf_unico ON TbPessoa;
    DROP TABLE TbPessoa;
    DROP DATABASE Guia01;
    
    
	CREATE DATABASE Guia01;
    
	USE  Guia01;

	CREATE TABLE TbPessoa(
		codigo INT,
		nome VARCHAR(25),
		cnpj  VARCHAR(20)
	);
    
    
    
    
    ALTER TABLE TbPessoa DROP COLUMN cnpj;
    -- Excluí uma coluna da tabela

    ALTER TABLE TbPessoa ADD COLUMN cpf VARCHAR(14);
    -- Adiciona uma coluna a tabela
    
    
    ALTER TABLE TbPessoa MODIFY COLUMN nome VARCHAR(255);
	-- Altera o tipo ou restrição de uma coluna
    
    ALTER TABLE TbPessoa RENAME TO TbPessoaFisica;
	-- Renomeia o nome de uma coluna
    
    ALTER TABLE TbPessoaFisica CHANGE COLUMN codigo id INT NOT NULL;
	-- Altera o nome de codigo para id e o tipo da mesma para not null
    
    
    
    ALTER TABLE TbPessoaFisica CHANGE COLUMN nome nome VARCHAR(255) NOT NULL;
    ALTER TABLE TbPessoaFisica CHANGE COLUMN cpf cpf VARCHAR(14) NOT NULL;

    ALTER TABLE TbPessoaFisica ADD PRIMARY KEY(id);
    -- Adiciona a chave primária id    
        
	CREATE TABLE TbPessoaFisica(
		id INT NOT NULL,
		nome VARCHAR(255) NOT NULL,
		cpf  VARCHAR(14) NOT NULL,
        PRIMARY KEY(id)
	);
    
	CREATE TABLE TbCidade(
		id INT NOT NULL,
		nome VARCHAR(255) NOT NULL,
        PRIMARY KEY(id)
	);
    
    ALTER TABLE TbPessoaFisica ADD COLUMN idCidade INT NOT NULL;
    
    ALTER TABLE TbPessoaFisica ADD FOREIGN KEY(idCidade) references TbCidade(id);
    
    
    RENAME TABLE TbPessoaFisica TO TbPessoa;
    
    TRUNCATE TABLE TbCidade;
    TRUNCATE TABLE TbPessoa;
    
    
    CREATE DATABASE Guia01;
    
	USE  Guia01;
    
	CREATE TABLE TbPessoa(
		id INT NOT NULL,
		nome VARCHAR(255) NOT NULL,
		cpf  VARCHAR(14) NOT NULL,
        idCidade INT NOT NULL,
        PRIMARY KEY(id)
	);
	
    CREATE TABLE TbCidade(
		id INT NOT NULL,
		nome VARCHAR(255) NOT NULL,
        PRIMARY KEY(id)
	);
    
    ALTER TABLE TbPessoa ADD FOREIGN KEY(idCidade) references TbCidade(id);
    
    
    
    