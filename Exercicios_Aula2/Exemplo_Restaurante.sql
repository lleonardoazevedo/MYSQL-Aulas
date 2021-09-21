-- DDL (Linguagem de definição de dados)
-- CREATE
-- ALTER
-- DROP


create database db_restaurante;
USE db_restaurante;

create table tb_funcionarios (
id_usuario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (200) DEFAULT "batatinhas",
sobrenome VARCHAR(200),
email VARCHAR(200),
data_inicio DATE, -- 2021-10-12
salario FLOAT NULL,
UNIQUE (id_usuario), -- só vai existir apenas uma vez exemplo de cpf, login.....
PRIMARY KEY (id_usuario)
);

create table tb_produtos (
id_prato INT NOT NULL AUTO_INCREMENT,
nome_prato VARCHAR (200) DEFAULT "batatinhas",
descricao_prato VARCHAR(200),
preco FLOAT,
PRIMARY KEY (id_prato)
);

create table tb_vendas (
id_venda INT NOT NULL AUTO_INCREMENT,
descricao_mesa VARCHAR(200),
fk_funcionario INT NULL,
fk_produto INT NULL,
PRIMARY KEY (id_vendas),
FOREIGN KEY (fk_funcionario) REFERENCES tb_funcionarios(id_usuario), 
FOREIGN KEY (fk_produto) REFERENCES tb_produto(id_prato) -- mostra que fk tem que existir dentro da tabela ali em cima
);

-- ALTER 
ALTER TABLE tb_funcionarios 
ADD data_termino DATE NULL;

ALTER TABLE tb_funcionarios
MODIFY COLUMN email VARCHAR(100);

ALTER TABLE tb_produtos
DROP COLUMN preco;

-- DROP
-- DROP TABLE tb_funcionarios;
-- DROP TABLE tb_produtos;
-- DROP TABLE tb_vendas;

-- DROP DATABASE db_restaurante;