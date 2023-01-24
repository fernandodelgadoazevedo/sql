CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome_categoria VARCHAR(255),
nome_subcategoria VARCHAR(255),
PRIMARY KEY (id)


);

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome_produto VARCHAR(255),
nome_marca VARCHAR(255),
quantidade VARCHAR(255),
valor INT,
categorias_id BIGINT,


PRIMARY KEY (id),

FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)





);


INSERT INTO tb_categorias(nome_categoria,nome_subcategoria)
VALUES("Medicamentos","Analgésicos");

INSERT INTO tb_categorias(nome_categoria,nome_subcategoria)
VALUES("Medicamentos","Ansiolíticos");

INSERT INTO tb_categorias(nome_categoria,nome_subcategoria)
VALUES("Medicamentos","Anestésicos");

INSERT INTO tb_categorias(nome_categoria,nome_subcategoria)
VALUES("Medicamentos","Antibióticoss");

INSERT INTO tb_categorias(nome_categoria,nome_subcategoria)
VALUES("Medicamentos","Anti-Inflamatórios");


SELECT * FROM tb_categorias;


INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id)
VALUES("Alginac 1000mcg","P&G","15 Comprimidos",29.90,1);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Maxsulid 400mg","Cosmed","10 Comprimidos",37.69,1);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Maxsulid 400mg","Cosmed","10 Comprimidos",37.69,1);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Exodus 10mg","Aché","60 Comprimidos",87.69,2);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Ansitec 10mg ","Libbs","90 Comprimidos",174.69,2);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Toperma 700mg ","Grunenthal do Brasil","10 emplastros",134.90,3);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Lidial 50mg/g","Delta","1 Bisnaga 25g",17.69,3);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Tetralysal 300mg ","Galderma","28 cápsulas",216.69,4);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Traturil 5,631g/8g","Apsen","1 Envelope",48.70,4);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Ibupril 600mg","Teuto"," 20 Comprimidos",8.70,5);

INSERT INTO tb_produtos(nome_produto,nome_marca,quantidade,valor,categorias_id )
VALUES("Tandrilax","Aché","15 Comprimidos",12.70,5);





SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor > 5 AND valor < 60;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id + tb_produtos.categorias_id

WHERE nome_categoria LIKE "%Analgésicos%";