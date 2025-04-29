create database meuBanco;
/*isso cria um banco de dados com nome meuBanco */
use meuBanco;
//criando uma tabela com dados
create table dados (
nome char(50),
idade int(2),
cargo varchar(50)
);
//inserindo dados na tabela
insert into dados(nome,idade,cargo) values
('Carlos','30','Capitão'),
('Marta','35','Tenente'),
('Júlio','24','Sargento'),
('Júlia','40','General'),
('Márcio','28','Cabo'),
('Marcela','38','Major'),
('Marcelo','50','Marechal');
//seleciona tudo que está na tabela
select * from dados;
