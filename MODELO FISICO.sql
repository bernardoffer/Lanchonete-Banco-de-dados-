drop database if exists lanchonete;
create database lanchonete;
use lanchonete;

create table lanchonete.cliente (
idcliente int,
Nome Varchar(45),
Telefone int,
codigo varchar(45),
Quantidade varchar(45),
endereço_logradouro varchar(45),
endereço_bairro varchar(45),
primary key (idcliente)
);

create table lanchonete.cardapio (
idcardapio int,
codigo_do_item varchar(90),
Nome_sanduiche varchar(45),
preço varchar(45),
idcliente int,
primary key(idcardapio),
foreign key (idcliente) references lanchonete.cliente(idcliente)
);

create table lanchonete.pedido (
idpedido int,
status00 varchar(90),
status01 varchar(90),
Status02 varchar(90),
data_de_emissao date,
dados_do_cliente varchar(120),
idcliente int,
primary key(idpedido),
foreign key (idcliente) references lanchonete.cliente(idcliente)
);

create table lanchonete.entregador (
identregador int,
Nome varchar(45),
Telefone Int,
Codigo varchar(45),
pedido varchar(90),
idpedido int,
primary key(identregador),
foreign key (idpedido) references lanchonete.pedido(idpedido)
);

