CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
	id bigint auto_increment,
	nome varchar(255) not null,
    idade INT,
    disciplina VARCHAR(50),
    nota DECIMAL(4, 2),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('João Silva', 15, 'História', 9.5);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Pedro Cardoso', 15, 'História', 6.3);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Carla Perez', 16, 'Geografia', 7.7);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Maria Carla', 16, 'Física', 7.1);  
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Rafaela Souza', 14, 'Artes', 9.8);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('João Tertuliano', 14, 'Literatura', 10.0);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Clésio Santos', 17, 'Matematica', 5.9);
INSERT INTO tb_estudantes (nome, idade, disciplina, nota) VALUES ('Victor Martins', 15, 'Quimica', 8.6);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 WHERE id = 6;


