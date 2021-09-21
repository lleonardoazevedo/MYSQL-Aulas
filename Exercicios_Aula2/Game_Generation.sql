create database db_genaration_game_online;

USE db_genaration_game_online;

CREATE TABLE tb_classe (
id_usuario INT NOT NULL AUTO_INCREMENT,
UNIQUE (id_usuario),
nome VARCHAR (200),
poder VARCHAR(20) NOT NULL,
ataque INT,
defesa INT,
PRIMARY KEY (id_usuario)
)

CREATE TABLE tb_personagem (
id BIGINT(5) AUTO_INCREMENT NOT NULL,
nome_personagem VARCHAR(30) NOT NULL,
email VARCHAR (40) NOT NULL,
tipo_personagem VARCHAR(10),
level_personagem INT NOT NULL,tb_personagem
id_usuario INT,
PRIMARY KEY (id),
FOREIGN KEY (id_usuario) REFERENCES tb_classe (id_usuario)
)

INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Choque" ,70 ,20)
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Agua" ,75 ,50)
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Planta" ,85 ,40)
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Fogo" ,70 ,50)
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Normal" ,80 ,40)

SELECT * FROM tb_classe 
truncate table tb_personagem

INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Ralf" , "ralf@gmail" ,"Heroi",30, 1);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Leo" , "leo@gmail" ,"Heroi",30,2);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Goka" , "goka@gmail" ,"Mago",12,3);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Vina" , "vina@gmail" ,"Medico",33,4);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Fury" , "fury@gmail" ,"guerreiro",8,5);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("rufos" , "rufos@gmail" ,"guerreiro",24,6);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("jorge" , "jorge@gmail" ,"Heroi",35,7);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario) 
VALUES ("Beta" , "beta@gmail" ,"mago",78,8);

SELECT * FROM tb_personagem

ALTER TABLE tb_personagem 
ADD COLUMN ataque_personagem INT;
ALTER TABLE tb_personagem 
ADD COLUMN defesa_personagem INT;

truncate table tb_personagem

INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Ralf" , "ralf@gmail" ,"Heroi",30, 1,3000,2500);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Leo" , "leo@gmail" ,"Heroi",30,2,4000,3900);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Goka" , "goka@gmail" ,"Mago",12,3,1700,1800);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Vina" , "vina@gmail" ,"Medico",33,4,500,3000);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Fury" , "fury@gmail" ,"guerreiro",8,5,1900,1000);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("rufos" , "rufos@gmail" ,"guerreiro",24,6,2000,1300);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("jorge" , "jorge@gmail" ,"Heroi",35,7,3000,2000);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem, id_usuario,ataque_personagem,defesa_personagem) 
VALUES ("Beta" , "beta@gmail" ,"mago",78,8,2);

-- DELETE FROM tb_personagem
-- where id='16';

SELECT * FROM tb_personagem

SELECT * FROM tb_personagem where ataque_personagem >2000;
SELECT * FROM tb_personagem where defesa_personagem = 1000<>2000;

SELECT * from tb_personagem where nome_personagem like "%c%"

SELECT * FROM tb_classe 
INNER JOIN tb_personagem on tb_personagem.id_usuario = tb_classe.id_usuario;