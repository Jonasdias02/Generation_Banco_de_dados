CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 4.99);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",500, 2.99);


