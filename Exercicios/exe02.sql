create database ecommerce;

use ecommerce;

create table produtos (
	id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int not null,
	preco decimal (10,2) not null,
    tamanho varchar(5),
    PRIMARY KEY (id)
);

INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("tênis",4, 700.00, "43");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("calça",2, 300.00, "GG");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("camisa",5, 250.00, "GG");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("boné",3, 200.00, "G");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("óculos",2, 200.00, "P");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("cueca",10, 22.99, "GG");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("cueca",10, 22.99, "G");
INSERT INTO produtos(nome, quantidade, preco, tamanho) values ("cueca",10, 22.99, "M");

select * from produtos where preco > 500;

select * from produtos where preco < 500;

UPDATE produtos SET preco = 150.00 WHERE id = 4;
