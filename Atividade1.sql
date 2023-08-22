CREATE DATABASE db_servicorh;
USE db_servicorh;

CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome VARCHAR(50) not null,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2) not null,
    departamento VARCHAR(50),
    primary key (id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento) VALUES ( 'Clésio Olimpio Santos', 'CEO', 2500.00, 'Diretoria');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento) VALUES ( 'Guilherme Dos Anjos Martins', 'Dev.Junior', 8500.00, 'Tecnologia');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento) VALUES ( 'Lucas Rangel','Engenheiro de Dados', 26300.00, 'tecnologia');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento) VALUES ( 'Gabriel Tito', 'Administrador', 3000.00, 'Dpto.Adm');
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento) VALUES ( 'Pedro Oliveira', 'Assistente', 3500.00, 'Operações');

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 2200.00 WHERE id = 3;
