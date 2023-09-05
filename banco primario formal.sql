create database banco_primario_forma;

use banco_primario_forma;

create table pessoa(
	id integer primary key auto_increment,
    cpf varchar(14) unique,
    telefone varchar(28),
    logradouro varchar(100),
    estado varchar(2),
    numero_casa varchar(10),
    bairro varchar(50),
    cep varchar(10)
);

insert into pessoa values (null, "054.985.235-45", "(61)96545-2654", "Avenida sem fim", "DF", "h67", "do nunca", 78695-908) ;

select * from pessoa;
