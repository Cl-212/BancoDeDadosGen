CREATE DATABASE db_wgamesx;
USE db_wgamesx;
CREATE TABLE tb_produtos(

id bigint auto_increment,
nome varchar(255) not null,
descricao TEXT,
quantidade int,
categoria VARCHAR(50),
preco decimal not null,
primary key (id)
);

INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("God of War",  "batalhas, Grécia Antiga", 123, "Aventura", 12);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("Counter Strike - Global Offencive",  "FPS da Valve disputado entre duas equipes", 53,"fps", 790);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("GTA V",  "Jogo de mundo aberto", 23 ,"Open World", 699);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("FC24",  "a experiência mais realista de futebol de todos os tempos", 14, "Futebol", 290);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("RDR2",  "Jogo de mundo aberto no velho oeste", 68 ,"Open World", 499);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("Valorant",  "FPS tatico com poderzinho", 100,"fps", 2);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("FIFA Street",  "Futebol de rua", 432,"Futebol", 54);
INSERT INTO tb_produtos (nome, descricao, quantidade, categoria, preco) VALUES("Rocket League",  "futebol, mas com carros movidos a foguete", 96,"Futebol", 32);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 6 WHERE id = 2;