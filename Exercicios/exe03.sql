create database escola;

use escola;

create table estudantes (
	id int auto_increment,
    nome varchar(255) not null,
    matricula int unique not null,
    data_nascimento date,
    nota int(10.0) not null,
    endereco varchar(255),
    contato varchar(255),
    primary key (id)
);

INSERT INTO estudantes(nome, matricula, data_nascimento, nota , endereco, contato) values ("Jonas Silva", 1, ("2000-02-07"), 10.0 ,"Av.itaóca, N° 1833" , "(21) 97397-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Larissa Brandão", 2, ("2000-11-22"), 9.0 ,"Rua jorge martins, N° 00" , "(21) 99997-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Jane Ferreira", 3, ("1969-03-17"), 8.0 ,"Av.itaóca, N° 1833" , "(21) 97397-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Sara Silva", 4, ("2003-02-17"), 7.0 ,"Av.itaóca, N° 1833" , "(21) 97397-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Loki Molina", 5, ("2021-02-07"), 6.0 ,"Rua jorge martins, N° 00" , "(21) 99997-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Bradoock Silva", 6, ("2022-02-07"), 5.0 ,"Av.itaóca, N° 1833" , "(21) 97397-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Tigre Brandão", 7, ("2021-02-07"), 4.0 ,"Rua jorge martins, N° 00", "(21) 99997-2925");
INSERT INTO estudantes(nome, matricula, data_nascimento, nota ,endereco, contato) values ("Adriano Silva", 8, ("2006-01-20"), 3.0 ,"Av.itaóca, N° 1833" , "(21) 97397-2925");

select * from estudantes where nota > 7.0;

select * from estudantes where nota < 7.0;

UPDATE estudantes SET nota = 5.0 WHERE id = 4;





