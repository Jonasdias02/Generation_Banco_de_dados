CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT,
	categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
	id_pizza BIGINT AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255),
    valor int NOT NULL,
	categoria_id BIGINT NOT NULL,  
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria) 
    );
    
INSERT INTO tb_categorias (categoria, descricao) VALUES 
("Salgada", "Pizzas com sabores salgados"), 
("Doce", "Pizzas com sabores doces"),
("Vegetariana", "Pizzas sem ingredientes de origem animal"), 
("Vegana", "Pizzas sem ingredientes de origem animal ou derivados de animais"),
("Low carb", "Pizzas com baixo teor de carboidratos");

INSERT INTO tb_pizzas (sabor, tamanho, valor, categoria_id) VALUES
("Mussarela", "Grande", 50.00, 1),
("Peperoni", "Média", 45.00, 1),
("Portuguesa", "Pequena", 35.00, 1),
("Chocolate", "Grande", 60.00, 2),
("Brigadeiro", "Média", 55.00, 2),
("Romeu e Julieta", "Pequena", 45.00, 2),
("Vegetariana", "Grande", 55.00, 3),
("Vegetariana", "Média", 45.00, 3),
("Vegetariana", "Pequena", 35.00, 3),
("Vegana", "Grande", 60.00, 4),
("Vegana", "Média", 55.00, 4),
("Vegana", "Pequena", 45.00, 4),
("Low carb", "Grande", 65.00, 5),
("Low carb", "Média", 55.00, 5),
("Low carb", "Pequena", 45.00, 5);

select * from tb_pizzas where valor > 45.00;

select * from tb_pizzas where valor between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%M%" ;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id_categoria;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id_categoria where id_categoria = 1;





  
