/*esse script deverá ser rodado para se realizar o exercício 01 do guia02*/
CREATE DATABASE guia02Exercicio01;
USE guia02Exercicio01;	

CREATE TABLE TbCidade(
	id INT AUTO_INCREMENT NOT NULL, 
	nome VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)
)ENGINE=InnoDB;
  	
CREATE TABLE TbPessoa(
	id INT AUTO_INCREMENT NOT NULL, 
	nome VARCHAR (100) NOT NULL,
	idCidade INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT FK_TbPessoa_TbCidade FOREIGN KEY (idCidade) REFERENCES TbCidade (id) ON DELETE CASCADE ON UPDATE RESTRICT
)ENGINE=InnoDB;

INSERT INTO TbCidade (id, nome) VALUES (1, 'TIMOTEO'),
									   (2, 'CORONEL FABRICIANO'),
									   (3, 'IPATINGA');

INSERT INTO TbPessoa (id, nome, idCidade) VALUES (1, 'ALBERTO VIANA', 1),
                                                 (2, 'CARLOS CUNHA', 1),
                                                 (3, 'GABRIELA TAVARES', 2),
                                                 (4, 'MIGUEL CUNHA', 2),
                                                 (5, 'LUIZ ALVES', 3);