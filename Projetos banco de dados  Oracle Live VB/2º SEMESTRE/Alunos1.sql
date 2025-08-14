create table cursos(
  id number primary key not null,
  nome varchar2(100) not null
);

create table alunos1 (
 id number primary key not null,
 nome varchar2(100) not null,
 registro varchar2(100) unique not null, 
 curso_id number,
 CONSTRAINT fk_aluno_curso foreign key(curso_id) references cursos(id)
);

create sequence sqAlunos1
MINVALUE 1
MAXVALUE 100
START WITH 1
INCREMENT BY 1
NOCACHE;
 
create sequence sqCursos
MINVALUE 1
MAXVALUE 100
START WITH 1
INCREMENT BY 1
NOCACHE;
 
insert into cursos(id, nome) values (sqCursos.nextval, 'Direito');
--Select * from Cursos;--

insert into alunos1(id, nome, registro, curso_id)values (sqAlunos1.nextval, 'Marta Lima','936Q0',null);
--Select * from alunos1;
create view alunosRegistro as
select nome,registro from alunos1 a
left join cursos c on a.curso_id = c.id
