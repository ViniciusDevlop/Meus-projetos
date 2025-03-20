create database teste;

use teste;

create table cliente (
ID int(10) auto_increment,
nome varchar(50) not null,
idade int(2) not null,
UF char(2) not null,
primary key (ID)
);
insert into cliente (nome,idade,UF) values 
('Kleiton', 34, 'AM'),
('Alan', 30, 'PB'),
('Luana', 45, 'RJ'),
('Maria', 56, 'PR'),
('Mário', 63, 'SC'),
('Thaís', 29, 'MS'),
('Iara', 71, 'MG'),
('Luís', 38, 'BA'),
('Vitor', 50, 'PE'),
('Paula', 67, 'AL'),
('Neide', 25, 'SP'),
('Sérgio', 43, 'PR'),
('Sebastião', 42, 'RS');

select * from cliente;
