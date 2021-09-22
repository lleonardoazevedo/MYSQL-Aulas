-- onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

CREATE database db_pizzaria_legal
USE db_pizzaria_legal

CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT NOT NULL,
tipo VARCHAR (10),
tamanho VARCHAR (10),
ativo BOOLEAN,
primary key (id_categoria)
);

create table tb_pizza(
id_pizza int auto_increment not null,
id_categoria INT not null,
nome_pizza VARCHAR (30) NOT NULL,
ativo BOOLEAN, 
preco decimal (10,2),
primary key (id_pizza),
Foreign key (id_categoria) references tb_categoria(id_categoria)
);
SELECT * FROM tb_pizza

INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("salvada", "Pequeno", true)
INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("salgada", "Medio", true)
INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("salgada", "Grande", true)
INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("salgada", "Pequeno", true)
INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("Doce", "Pequeno", true)
INSERT INTO tb_categoria (tipo,tamanho,ativo) 
VALUES ("Doce", "Medio", true)


select * from tb_categoria

INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES (1,"Banana", true, 46.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES (2,"chocolate", true, 55.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES ("3","Prestigio", true, 60.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES ("1","Atum" ,true, 46.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES ("2","Bacom com Milho", true, 55.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES ("3","Calabresa" ,true, 40.00)
INSERT INTO tb_pizza (id_categoria,nome_pizza,ativo,preco) 
VALUES ("4","Mussarela" ,true, 43.50)

 SELECT * FROM tb_pizza

SELECT * FROM tb_pizza WHERE preco>45.00

SELECT * FROM tb_pizza where preco > 29.00 and 60.00

 SELECT * FROM tb_pizza where  nome_pizza like ("%c%")
 
SELECT * FROM tb_pizza 
inner JOIN tb_categoria
on tb_categoria.id_categoria = tb_pizza.id_categoria; 