CREATE DATABASE escola;

USE escola; 

CREATE TABLE estudante(
id BIGINT auto_increment,
nome VARCHAR(255),
idade INT,
genero VARCHAR(255),
ra VARCHAR(255),
ano_escolar VARCHAR(255),
nota DECIMAL(2,1),
PRIMARY KEY(id)

);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Fernando Delgado Azevedo",41,"Masculino","2689657432685/SP","1ºAno EM",8.0);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Laura Pereira",15,"Feminino","5624897315264/SP","1ºAno EM",6.7);


INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Maria Paula Oliveira",16,"Feminino","5632987456325/SP","1ºAno EM",5.1);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("João Gabriel Castro",15,"Não binário","8695324167598/SP","1ºAno EM",5.6);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Louise Valle",17,"Feminino","3698521478965/SP","2ºAno EM",8.2);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Antonella De Souza",17,"Não binário","4569872365897/SP","2ºAno EM",4,0);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Brian Augusto Campos",17,"Masculino","1023659745896/SP","3ºAno EM",7.5);

INSERT INTO estudante(nome,idade,genero,ra,ano_escolar,nota)
VALUES ("Caio Magalhães",17,"Masculino","1236489756326/SP","2ºAno EM",5.7);


SELECT * FROM estudante;

SELECT * FROM estudante WHERE nota <7;

SELECT * FROM estudante WHERE nota >7;


UPDATE estudante 
SET genero = "Não binário"
WHERE id=1;

SET SQL_SAFE_UPDATES =0;


