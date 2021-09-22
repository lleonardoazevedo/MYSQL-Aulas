CREATE database db_farmacia_do_bem
USE db_farmacia_do_bem

CREATE TABLE tb_categoria(
id_categoria int not null auto_increment,
tipo varchar (15),
ativo boolean,
primary key (id_categoria)
);

create TABLE tb_produto(
id_produto int not null auto_increment,
id_categoria int not null,
nome_remedio VARCHAR (50) not null,
preco decimal (10,2) not null,
codigo_barra BIGINT,
primary key (id_produto),
foreign key (id_categoria) references tb_categoria(id_categoria)
);

SELECT * FROM tb_categoria

INSERT INTO tb_categoria (tipo,ativo) values ("gota",true)
INSERT INTO tb_categoria (tipo,ativo) values ("gota",true)
INSERT INTO tb_categoria (tipo,ativo) values ("gota",true)
INSERT INTO tb_categoria (tipo,ativo) values ("comprimido",true)
INSERT INTO tb_categoria (tipo,ativo) values ("comprimido",true)
INSERT INTO tb_categoria (tipo,ativo) values ("comprimido",true)

INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
values (1,"Dipirona 20ml",7.00,1234)
INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
values (2,"Nimesulida 15ml",9.60,1237)
INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
 values (3,"Alivium 20ml",34.50,1348)
INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
 values (4,"Dipirona 1mg", 6.00, 1729)
INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
 values (5,"Anastrazol 1mg",500.00,1728)
INSERT INTO tb_produto (id_categoria,nome_remedio,preco,codigo_barra)
values (6,"Omeprazol 20mg",30.00,1729)

SELECT * FROM tb_produto WHERE preco>50.00

SELECT * FROM tb_produto WHERE preco >3.00 and 60.00

SELECT * FROM tb_produto WHERE nome_remedio like "%z%"

SELECT * FROM tb_produto 
inner JOIN tb_categoria
on tb_categoria.id_categoria = tb_produto.id_categoria; 

