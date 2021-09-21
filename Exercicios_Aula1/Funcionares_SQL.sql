create database db_rh;

use db_rh;

create table tb_funcionares (
id bigint(10) auto_increment,
nome varchar(20) not null, 
salario decimal (10,2)not null,
idade int not null,
setor varchar (15),
cargo varchar (15),
ativo boolean,

PRIMARY KEY(id)
);

SELECT * FROM tb_funcionares;

INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("Luana",1000,23,"RH","Assistente", true);
INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("Leonardo",3200,22, "Financeiro", "Analista",true);
INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("Wendel",1500,25,"T.I","Assistente",true);
INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("Fernanda",1350,24,"T.I","Analista",true);
INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("Ariel",1600,28,"RH","Assistente",true);
INSERT INTO tb_funcionares (nome,salario,idade,setor,cargo, ativo) VALUES ("David",2250,30,"Financeiro","Analista",true);

SELECT * FROM tb_funcionares;

SELECT * FROM tb_funcionares where salario >2000;

SELECT * FROM tb_funcionares where salario <2000;

UPDATE tb_funcionares SET salario = "5000",ativo = true 
WHERE id = 6;