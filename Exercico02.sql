create database banco_para_exercicio;

use  banco_parra_exercicio;

/*
A 1FN faz com que um banco de daos seja muito mais organizado e eficiente
e aqui tem ums exemplos do que ele faz
Elimina a redundância de dados,Facilita a busca e recuperação de dados, 
Mantém a integridade dos dados, Mantém a integridade dos dados e 
Melhora a manutenção de dados
*/

create table livros (
	id int, 
	autor varchar(30),
    genero varchar(20)
    );
alter table livros add column ISBN int;
   
alter table livros add column ano_de_lançamento int ;
    
insert livros values(3, "(Aultor3)", "aventura", 365124, 2021);    

select * from livros;

create table produtos(
	id integer primary key,
    produto varchar(20),
	categoria varchar(20),
	quantidade int, 
    preço int
);

insert produtos values(1,"toddy", "comida", 5, 5), (2,"escova", "igiene", 2, 4), (3,"sabão", "igiene", 4, 6), (4,"computador", "eletronico",1, 2000) ;

select * from produtos;

