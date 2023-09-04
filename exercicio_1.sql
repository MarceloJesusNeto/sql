create database Exercicio1_SQL;

use Exercicio1_SQL;

create table cliente(
	nome varchar(70),
    idade int,
    cpf varchar(19),
    endereco varchar(80)
);

insert into cliente values("Sérgio Cauê Gabriel Pires", 35,"68591333179",null),
("Isadora Lavínia da Costa", 17, '69030050', "Rua Danilo de Matos Areosa numero 257"),
("Milena Sara Fernanda Silva", 28, '91510111824', "Rua 10 de Maio numero 195"), 
("Esther Mariane Yasmin das Neves", 12, '35635135473', "Rua Murilo Rubião numero 978"),
("Benício Anthony Alexandre das Neves", 45, '8751045026', "Rua Murilo Rubião numero 978"),
("Elza Rita Pires", 30, "53861052059","Rua do Bom Pastor 1407 numero 367"),
("Ayla Sueli Luiza da Rocha", 27, '51349982563', "Rua das Águias numero 844"),
("Heloisa Larissa Olivia da Silva", 29, "72624855041", "Rua Doutor Aloysio Sobreira numero 461"),
("Rodrigo Severino Oliveira", 38, "94843765090", "Rua Lúcia Carvalho numero 798"),
("Mário Lucas Brito" , 52, "36022991552", "Rua Inhacaru numero 167");


select * from cliente;
	
    #or = ou   and = e 
select nome, idade from cliente where idade > 25 and cpf like "123%" ;
select nome, idade from cliente where idade < 25 or cpf like "123%" ;

#count(informação da tabela) para contar as informaçoes de uma coluna
#as = alies, da um nome a coluna
select count(*) as "contator de cadastro" from cliente;

#order by nome para organizar em ordem alfabetica
select count(idade), nome from cliente group by nome order by nome;

#mostre o nome da pessoa em que o endereco esteja nulo
select nome from cliente where endereco is null;

#aplica em todas as colunas e linhas
update cliente set endereco = "4ª Travessa Chile";

				#escolher a coluna                          escolher uma coluna espesifica
update cliente set endereco = "ª Travessa Chile" where nome = "Sérgio Cauê Gabriel Pires";

set sql_safe_updates = 0;

select * from cliente;

create table errado(
	nome varchar(50),
	autura double,
    pezo double
) ;

#alterar a tablela adicionando uma nova coluna
alter table errado add cpf varchar(20);
 
 #infirmaçoes sobre a tabela
desc errado;

#deleta uma coluna 
alter table errado drop column autura;

#corrige um erro gramatical (manualmene) ou muda o nome de uma coluna 
alter table errado rename column pezo to peso;

select * from errado;

#faz com que um dado não possa ser nulo
alter table errado modify column peso double not null;

insert into errado value ("Marcelo", 90.6, "12344556665");

alter table errado modify column peso double not null first;
alter table errado modify column peso double not null after cpf;

#concatena informações de uma tabela
select concat(nome ," pesa ", peso, " seu cpf é: ", cpf) as " informaç ão" from errado;

#usado para apagar um informação da tabela CUIDADO!!!!!!!!
delete from cliente where nome = "Heloisa Larissa Olivia da Silva";
