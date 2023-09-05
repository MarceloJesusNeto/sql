create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

create table pedidos(
	id_pedidio int primary key auto_increment,
    nome_produto varchar(255),
    preco double,
    quantidade int,
    id_cliente int,
    constraint FK_id_clente foreign key(id_cliente) references cliente(id_cliente)
);

create table cliente(
	id_cliente int primary key auto_increment,
    nome_cliente varchar(150),
    data_nacimento varchar(200),
    cpf varchar(14) unique,
    genero varchar(10)
);

insert into cliente values(null, "Martchelo", "07/01/2006", "123.456.789-10", "Mascolino");

insert into pedido values(null, "camisa polo", 150.00, 2, 1);

select * from cliente;
select * from pedidos;
