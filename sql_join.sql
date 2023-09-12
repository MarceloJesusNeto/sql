create database banco_join;
use banco_join;

create table Pessoa(
	id int primary key auto_increment,
    nome varchar(50),
    data_nasimento date
);


create table Endereco(
	id int primary key auto_increment,
    pessoa_id int,
    rua varchar(50),
    cidade varchar(50),
    estado varchar(50),
    foreign key (pessoa_id) references Pessoa(id)
);

create table Telefone(
	id int primary key auto_increment,
    pessoa_id int,
    numero varchar(50),
    tipo varchar(50),
    foreign key (pessoa_id) references Pessoa(id)
);







#ele pegou o npme e o numero de duas tabelas diferentes
select pessoa.nome, telefone.numero from Pessoa inner join Telefone on Pessoa.id = Telefone.pessoa_id;

select Pessoa.nome, Endereco.rua, Endereco.cidade from Pessoa left join Endereco on Pessoa.id = Endereco.pessoa_id;

select Pessoa.nome, Endereco.rua, Endereco.cidade from Pessoa left join Endereco on Pessoa.id = Endereco.pessoa_id left join telefone on Pessoa.id = Telefone.pessoa_id;