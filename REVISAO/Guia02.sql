create database guia02;
use guia02;

create table tbescola(
	idEscola INT(11), -- NOT NULL
    nmEscola VARCHAR(255), -- NOT NULL
    primary key(idEscola)
);

create table tbemail(
	emailEscola VARCHAR(200),
    primary key (emailEscola) -- idEscola, emailEscola
);

alter table tbemail add column fk_idEscola INT(11); -- NOT NULL
alter table tbemail add foreign key (fk_idEscola) references tbescola(idEscola) on update cascade on delete set null;

create table tbprojeto(
	idProjeto INT(11),
    nmProjeto VARCHAR(255) not null,
    fk_idEscola INT(11),
    primary key (idProjeto)
);

alter table tbprojeto add foreign key (fk_idEscola) references tbescola(idEscola) on update cascade on delete set null;

create table tbaluno(
	idAluno INT(11), -- NOT NULL
    nmAluno VARCHAR(200) NOT NULL,
	primary key (idAluno)
);

create table tbdisciplina(
	idDisciplina INT(11),
    nmDisciplina VARCHAR(255) NOT NULL,
    primary key (idDisciplina)
);

create table tbaluno_disciplina(
	fk_idAluno INT(11),
    fk_idDisciplina INT(11),
    ano INT(4),
    nota INT(11),
    primary key (ano) -- idaluno, iddisciplina
);

alter table tbaluno_disciplina add foreign key (fk_idAluno) references tbaluno(idAluno);
alter table tbaluno_disciplina add foreign key (fk_idDisciplina) references tbdisciplina(idDisciplina);

create table tbaluno_projeto(
	fk_idAluno INT(11),
    fk_idProjeto INT(11),
    ch INT(11),
    primary key (ch) -- idAluno, idProjeto
);

alter table tbaluno_projeto add foreign key (fk_idAluno) references tbaluno(idAluno) on update cascade on delete set null;
alter table tbaluno_projeto add foreign key (fk_idProjeto) references tbprojeto(idProjeto) on update cascade on delete set null;