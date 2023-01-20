-- ATIVIDADE 01
-- 1.	Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
-- 2.	Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
-- 3.	Insira nesta tabela no mínimo 5 dados (registros).
-- 4.	Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- 5.	Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
-- 6.	Ao término atualize um registro desta tabela através de uma query de atualização.
-- 7.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaborador(
	id BIGINT AUTO_INCREMENT,
    nomeFuncionario VARCHAR(255),
	idade INT,
    situacao BOOLEAN,
    pis BIGINT,
    cpf BIGINT,
    salario DECIMAL(8,2),
    PRIMARY KEY(id)
    );

SELECT * FROM tb_colaborador;


INSERT INTO tb_colaborador(nomeFuncionario,idade,situacao,pis,cpf, salario)
VALUES("Fernando Delgado Azevedo",41,true,129071060,288350035, 1500.00);

INSERT INTO tb_colaborador(nomeFuncionario,idade,situacao,pis,cpf,salario)
VALUES("Delgado Azevedo",15,true,11111111,1111111,3500.00);

INSERT INTO tb_colaborador(nomeFuncionario,idade,situacao,pis,cpf,salario)
VALUES("Fernando Delgado Azevedo",25,false,129071060,288350035, 500.00);

INSERT INTO tb_colaborador(nomeFuncionario,idade,situacao,pis,cpf,salario)
VALUES("Fernando  Azevedo",41,true,129071060,288350035,2000.00);

INSERT INTO tb_colaborador(nomeFuncionario,idade,situacao,pis,cpf,salario)
VALUES("Azevedo",25,false,129071060,288350035,1800.00);


SELECT * FROM tb_colaborador;

SELECT * FROM tb_colaborador WHERE Salario < 2000.00;

SELECT * FROM tb_colaborador WHERE Salario > 2000.00;

DROP TABLE `db_rh`.`tb_colaborador`

-- Atividade 2
-- 1.	Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce
-- 2.	Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
-- 3.	Insira nesta tabela no mínimo 8 dados (registros).
-- 4.	Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
-- 5.	Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
-- 6.	Ao término atualize um registro desta tabela através de uma query de atualização.
-- 7.	Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados

DROP TABLE `ecommerce`.`produto`

CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produto(
	id BIGINT AUTO_INCREMENT,
	nomeProduto VARCHAR(100),
	categoria VARCHAR(100),
	valor DECIMAL (8,2),
    tamanho CHAR(10),
	PRIMARY KEY(id)
);

SELECT * FROM produto;

INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("FONDE DE ALIMENTAÇÃO","FONES DE OUVIDOS",200.00,"padrao");
 
 INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("NOTEBOOK","NOTE",2000.00,"padrao");
 
 INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("CABO HDMI","FIOS E CABOS",30.99,"padrao");
 
 INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("FONE DE OUVIDO BLU","FONES DE OUVIDOS",200.00,"padrao");
 
 INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("CAIXA DE SOM","SOM",200.98,"padrao");
 
 INSERT INTO produto (nomeProduto,categoria,valor,tamanho)
 VALUES("FIO DE 2.5mm","FIOS E CABOS",0.99,"padrao");
 
 
 SELECT * FROM produto;

SELECT * FROM produto WHERE valor < 500.00;

SELECT * FROM produto WHERE valor > 500.00;
 