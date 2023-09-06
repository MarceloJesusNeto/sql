create database terceira_forma_normal;
use terceira_forma_normal;

create table cliente(
	idcliente int primary key auto_increment,
    nome_ciente varchar(255)
);

create table cidade(
	idcidade int primary key auto_increment,
	cidade varchar(155),
    estado varchar(2)
);

create table produto(
	idproduto int primary key auto_increment,
    nome_produto varchar(100),
    quantidade int,
    valor double
);
alter table cidade add id_cliente int ;
alter table cidade add constraint fk_id_cliente_cliente foreign key (id_cliente) references cliente(idcliente);


create table pedido(
	idpedido int primary key auto_increment,
    id_cliente int,
	id_produto int,
	constraint Fk_id_cliente foreign key (id_cliente) references cliente(idcliente),
    constraint Fk_id_produto foreign key (id_produto) references produto(idcliente)
);

insert cliente value(null, "Marcelo");
insert cidade value(null, "gam	a", "DF");
insert produto value(null, "nescau", 5, 5.50);
insert pedido value(null);

select * from cliente;
select * from cidade;
select * from produto;
select * from pedido;
