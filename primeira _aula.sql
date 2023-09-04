create database primeiro_banos_de_dados;

use primeiro_banos_de_dados;

create table pessoa(
	/*use _ para tudo minusculo*/
	nome varchar(50),
    idade int,
    altura double,
    genero varchar(1)
);

show tables;

desc pessoa;

insert into pessoa value("Marcelo",17,1.83,"M");
insert into pessoa(nome, idade) values("Maria",86);
insert into pessoa values("Jose", 69,1.55,"M"),
("Vanessa",32,1.85,"F");

select * from pessoa;

#Varchar = caracteres variants
#char = tamanho fixo
#binary = numeros binarios
#bloob = salvar imagens
#longtext =  textos longos a partir de 255 caracteres
#4,294,967,295 numero maximo de caracteris
#enum = dados predefinidos 

create table pedido(
	nome_produtos varchar(50),
    quantitade integer,
    #maximo de numeros , maximo de caracteris de pois da firgua
    preco double(6,2),
    pedidio_status enum("preparando", "a caminho", "Entrege", "cancelado")
);

insert into pedido value("nescau", 2, 2.50,"a caminho");
insert into pedido(nome_produtos, quantitade, preco, pedidio_status) value("pão" , 13, 9.25, "preparando");
insert into pedido values("toddy", 6, 30,"Entrege"),("passa tempo", 2,6.50,"cancelado") ;

select * from pedido;

drop table pedido;

#escolher espesificamente oque vc quer de uma tabela ja criada
select nome, idade from pessoa;

select ect(3 * 7);

#escolhe espesificamente com uma condição usando o where
select nome, idade from pessoa where genero = "f";
select idade from pessoa where nome = "Marcelo";

insert into pessoa values ("Maria da Silva", 55, 1.60, "F" );

select nome, idade from pessoa where nome = "Maria";
select nome, idade from pessoa where nome like "%Maria%";

#insira 10 dados na tabela de cliente
#nome, idade, cpf, enderço, telefone, 

create table cliente(
	nome varchar(70),
    idade int(2),
    cpf int(11) ,
    endereco varchar(80),
    telefone varchar(50)
);

insert into cliente value("Sérgio Cauê Gabriel Pires", 35, 68591333179,"75074-380 numero 620");

select * from cliente;