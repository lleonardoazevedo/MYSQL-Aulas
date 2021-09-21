create database db_escola;

use db_escola;
create table tb_estudantes(
id bigint(10)auto_increment not null,
nome varchar(10) not null,
re int not null,
cpf bigint (12) not null,
nota decimal not null,
ativo boolean,

primary key (id)
);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Leonardo",2775.0,793629739,9, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("David",2776.0,2893929710,6.5, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Fernanda",2777.0,1738371837,9.8, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Ariel",2778.0,71993739403,6, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Wendel",2779.0,280109380,4, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Julia",2780.0,18280120937,8, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Luana",2781.0,819820930938,7.8, true);
INSERT INTO tb_estudantes (nome,re,cpf,nota, ativo) VALUES ("Gabriel",2782.0,88018301362,8.8, true);

select * FROM tb_estudantes where nota > 7;
select * FROM tb_estudantes where nota < 7;

update  tb_estudantes set nota= 10.0, ativo=true
 where id=8;  
