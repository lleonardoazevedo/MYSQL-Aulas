create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
id bigint(10)auto_increment not null,
nome varchar(10) not null,
preco decimal(10,2) not null,
marca varchar (15) not null,
ativo boolean,

primary key (id)
);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Camiseta",160.0,"Adidas", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Bone",100.0,"Adidas", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Blusa",550.0,"Nike", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Camiseta",65.0,"Lacoste", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("bone",15.0,"Adidas", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Camiseta",50.0,"Nike", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("blusa",600.0,"Adidas", true);
INSERT INTO tb_produtos (nome,preco,marca, ativo) VALUES ("Camiseta",335.0,"Adidas", true);

select * FROM tb_produtos where preco > 500.0;
select * FROM tb_produtos where preco < 500.0;

update  tb_produtos set nome="Regata", preco=40.0, ativo=true
 where id=8;  


