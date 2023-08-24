CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id bigint auto_increment,
    nome_classe VARCHAR(50),
    descricao VARCHAR(255),
    primary key (id)
);

CREATE TABLE tb_personagens (
    id bigint auto_increment,
    nome_personagem VARCHAR(50),
    poder_ataque INT,
    poder_defesa INT,
    primary key (id),
    classe_id bigint,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES ('Knight', 'Proficiente em absorver dano e proteger seus aliados mais frágeis');
INSERT INTO tb_classes (nome_classe, descricao) VALUES ('Mage', 'Usuário de magias');
INSERT INTO tb_classes (nome_classe, descricao) VALUES ('Hunter', 'Perito em ataques de longo alcance');
INSERT INTO tb_classes (nome_classe, descricao) VALUES ('Assassin', 'Ágil e furtivo');
INSERT INTO tb_classes (nome_classe, descricao) VALUES ('Warrior', 'Mestre do combate corpo a corpo');

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES ('Eamon', 2800, 1200, 1);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Thorian', 2200, 2000, 2);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Elowen', 2600, 1500, 3);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Kieran', 2100, 800, 4);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Aldric', 2400, 2200, 5);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id)	VALUES('Caelen', 1800, 2200, 1);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Alaric', 2600, 1500, 2);
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) VALUES('Rowan', 2500, 800, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE nome_classe = 'Hunter';
   
