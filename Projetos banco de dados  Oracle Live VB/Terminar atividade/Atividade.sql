-- todos os exercícios estão no arquivo doc.
-- Exercicio 1 criar todas as tabelas
-- Comando SQL para criar a tabela DEPTO
CREATE TABLE DEPTO (
    cod_depto NUMBER(4) PRIMARY KEY,
    nome VARCHAR2(25) NOT NULL,
    cod_loc NUMBER(4),
    FOREIGN KEY (cod_loc) REFERENCES LOCAL(cod_loc)
);

-- Comando SQL para criar a tabela FUNC
CREATE TABLE FUNC (
    cod_func NUMBER(4) PRIMARY KEY,
    sobrenome VARCHAR2(25) NOT NULL,
    nome VARCHAR2(25) NOT NULL,
    salario NUMBER(10, 2),
    dt_adm DATE,
    cod_depto NUMBER(4),
    cod_cargo NUMBER(4),
    FOREIGN KEY (cod_depto) REFERENCES DEPTO(cod_depto),
    FOREIGN KEY (cod_cargo) REFERENCES CARGO(cod_cargo)
);

-- Comando SQL para criar a tabela CARGO
CREATE TABLE CARGO (
    cod_cargo NUMBER(4) PRIMARY KEY,
    descricao VARCHAR2(30) NOT NULL,
    CBO NUMBER(6)
);

-- Comando SQL para criar a tabela LOCAL
CREATE TABLE LOCAL (
    cod_loc NUMBER(4) PRIMARY KEY,
    nome VARCHAR2(25) NOT NULL
);
--Exercicio 2 - Selecionar todas as tabelas
-- Seleciona todos os registros e colunas da tabela DEPTO
SELECT * FROM DEPTO;

-- Seleciona todos os registros e colunas da tabela FUNC
SELECT * FROM FUNC;

-- Seleciona todos os registros e colunas da tabela CARGO
SELECT * FROM CARGO;

-- Seleciona todos os registros e colunas da tabela LOCAL
SELECT * FROM LOCAL;
--Exercício 3 colocar os dados dentro da tabela local
--Inserindo dados no Local
INSERT INTO LOCAL (COD_LOC,NOME ) VALUES (1, 'São Paulo');
INSERT INTO LOCAL (cod_loc, nome) VALUES (2, 'Belo Horizonte');
INSERT INTO LOCAL (cod_loc, nome) VALUES (3, 'Guarulhos');
INSERT INTO LOCAL (cod_loc, nome) VALUES (4, 'Campinas');
INSERT INTO LOCAL (cod_loc, nome) VALUES (5, 'Curitiba');
INSERT INTO LOCAL (cod_loc, nome) VALUES (6, 'Rio de Janeiro');

--Exercicio 4 inserir dados na tabela dpto
-- inserindo dados no dpto
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (10, 'Contabilidade', 2);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (20, 'Controladoria', 1);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (99, 'Financeiro', 4);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (22, 'TI', 3);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (25, 'Marketing', 7);

--Exercício 5 
-- Qual o problema ocorrido com a inserção do departamento de código 25? Como seria possível resolver o problema?
-- R: Porque não há um indice 7 na tabela local, e isso é o que causa o conflito no código. Uma solução para isso é ou trocar o indice do departamento 
-- ou adicionar mais uma localidade com um novo cod_loc e novo nome, trocar o código de algumas das cidades vigentes para o número do departamento.

--Exercício 6 Faça a inclusão do departamento 25.
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (10, 'Contabilidade', 2);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (20, 'Controladoria', 1);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (99, 'Financeiro', 4);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (22, 'TI', 3);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (25, 'Marketing', 5);

-- Exercício 8 Faça os testes de PK e FK nas tabelas

