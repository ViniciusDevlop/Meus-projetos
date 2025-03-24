Create table Alunos
(
    rgm int,
    nome varchar(50),
    email varchar (50),
    telefone numeric(11) /*ou float*/ 
);

/*Criação da tabela curso*/
Create table Curso(
   id_curso        int,
   nome_curso      varchar(50),
   duracao_curso   varchar(50)

);

/*Ciração da tabela disciplinas */

Create table Disciplinas(
id_dis int,
nome_dis varchar(50)
);

select * from ALUNOS;

select * from CURSO;

select * from DISCIPLINAS;
