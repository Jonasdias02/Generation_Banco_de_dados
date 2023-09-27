use rh;

CREATE TABLE colaboradores(
 id BIGINT AUTO_INCREMENT,
 nome varchar(255) not null,
 sobrenome varchar(255) not null,
 telefone int not null,
 email varchar(255) not null,
 PRIMARY KEY(id));

 alter table colaboradores add salario decimal(10,2) not null;

 insert into colaboradores(nome, sobrenome, telefone, email, salario)
 values("Jonas","Ferreia", 99999999, "jonas@gmail.com", 2223.87);

 insert into colaboradores(nome, sobrenome, telefone, email, salario)
 values("Elias","Do Corre", 99999999, "eliasM@gmail.com", 1223.22);

 insert into colaboradores(nome, sobrenome, telefone, email, salario)
 values("Jorge","Do Corre", 99999999, "raquel@gmail.com", 1023.55);

 insert into colaboradores(nome, sobrenome, telefone, email, salario)
 values("Raphael","Do Corre", 99999999, "raphael@gmail.com", 4044.16);

 insert into colaboradores(nome, sobrenome, telefone, email, salario)
 values("Giovanni","Do Corre", 999999999, "giovanni@gmail.com", 1982.12);

 select * from colaboradores where salario > 2000;

 select * from colaboradores where salario < 2000;

UPDATE colaboradores SET salario = 4044.16 WHERE id = 1;
