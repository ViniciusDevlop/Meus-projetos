select * from clientes
select * from clientes_backup 
 
create table clientes_backup (
    cliente_id number primary key not null,
    nome varchar(100) not null,
    email varchar(100) not null
)

insert into clientes values
(1,'Lucas Macedo', 'lucas@email.com'),
(2,'Marcos Costa', 'marcos@email.com'),
(3,'Isabela Dias', 'isabela@email.com');

insert into clientes_backup(cliente_id, nome, email)
select cliente_id, nome, email
from clientes
where nome = 'Isabela Dias';

--delete from clientes where id = 2
--serve para deletar um dado específico ao invés da tabela inteira

--o indice ajuda bastante nas busca de algum dado específico
