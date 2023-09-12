create database Exercicio05;
use Exercicio05;

#      A

create table Clientes(
	id int primary key auto_increment,
    nome varchar(50),
    data_nasimento varchar(10),
    cpf varchar(20)
);

insert Clientes values(null,"Maria",1990-05-15,123456485-00),( null,"João",1985-08-22, 987654321-01 ),(null,"Ana",  1993-03-10, 555666777-22 ),(null, "Pedro", 1980-11-05, 333222111-99),(null, "Laura",1998-07-30,777888999-33);

create table Pedidos(
	id int primary key auto_increment,
    pessoa_id int,
    data_do_pedido varchar(20),
    produto varchar(30),
    quantidade int,
    preco double,
    foreign key (pessoa_id) references Clientes(id)
);

insert Pedidos values(null,null,02-07,"Camiseta",50,19.99),(null,null,29-6,"Smartphone",10,299.99),(null,null,10-7,"Notebook", 5,899.99),(null,null,23-4,"Tênis",30,49.99),(null,null,21-8,"Monitor",20, 199.99);

select * from clientes;
select pedidos.id , Clientes.nome,pedidos.produto from Pedidos inner join Clientes on Pedidos.id = Clientes.id; 

#         B

create table Departamento (
	id int primary key auto_increment,
    nomes varchar(50),
    departamento varchar(30)
);

insert departamento values (null,"Marcelo","programação"),(null,"Medina","adiministração"),(null,"Mario","linpesa"),(null,"Marcos","programação"),(null,"Maria","trabalho");

create table Funcionarios(
	id int primary key auto_increment,
    funcionario_id int,
    nome varchar(50),
    foreign key (funcionarios_id) references departamento(id)
);

insert funcionarios values (null,null ,"Marcelo"),(null,null,"Maria"), (null,null,"Marcos"), (null,null,"Mauricio"), (null,null,"Medina");

select * from funcionarios;
select * from departamento;
select funcionarios.nome, departamento.departamento as nome_de_partamentos from departamento left join funcionarios on funcionarios.id = departamento.id;

#           C

create table produtos(
	id int primary key auto_increment,
    nome_produto varchar(20),
    marca varchar(20)
);

insert produtos values(null,"Camiseta", "nike"),(null,"computador", "positivo"),(null,"limpesa", "mr.musculo"),(null,"tenes", "puma"),(null, "celular", "android");

create table vendas(
	id int primary key auto_increment,
    vendas_id int,
    quantidade int,
    preco double,
    foreign key (vendas_id) references produtos(id)
);

drop table produtos;
drop table vendas;

insert vendas values(null,null,5,250.50),(null,null,1, 1000),(null,null,4, 150.25),(null,null,2, 800),(null,null,2, 1600);

select * from vendas;
select * from produtos;
select produtos.nome_produto, vendas.quantidade from produtos right join vendas on produtos.id = vendas.ID;