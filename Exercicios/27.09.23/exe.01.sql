CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT NOT NULL,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (classe_id)
        REFERENCES tb_classes (id_classe)
);

  
INSERT INTO tb_classes(nome, descricao) VALUES
("Arqueiro", "Personagem de ataques rápidos e de alto dano usando arco e flecha"), 
("Mago", "Personagem baixa defesa e alto dano crítico que usa de magias geradas por um poderoso cajado"),
("Guerreiro", "Personagem de ataques lentos e alta defesa que usa uma espada para gerar alto dano contínuo"),
("Curandeiro", "Personagem com baixa defesa e médio/baixo ataque que usa magias de buff e cura para ajudar seus aliados em combate"),
("Ladino", "Personagem que usa armas brancas e ladrões aliados para atacar de forma furtiva");

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
("Merlin", 2000, 1500, 10, 1),
("Legolas", 4000, 1000, 10, 1),
("Arwen", 2500, 1750, 10, 2),
("Frodo", 1500, 1250, 10, 3),
("Samwise", 1250, 1000, 10, 3),
("Gimli", 2250, 1500, 10, 4),
("Boromir", 2000, 1750, 10, 5),
("Merry", 1000, 750, 10, 3),
("Aragorn", 3000, 2000, 10, 1);

UPDATE tb_personagens SET nome = ("Cleitin") WHERE id_personagem = 2;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;   
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000 ;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%" ;   

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe WHERE id_classe = 1;
