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
-- Seleciona todos os registros e colunas da tabela DEPTO
SELECT * FROM DEPTO;

-- Seleciona todos os registros e colunas da tabela FUNC
SELECT * FROM FUNC;

-- Seleciona todos os registros e colunas da tabela CARGO
SELECT * FROM CARGO;

-- Seleciona todos os registros e colunas da tabela LOCAL
SELECT * FROM LOCAL;
--Inserindo dados no Local
INSERT INTO LOCAL (COD_LOC,NOME ) VALUES (1, 'São Paulo');
INSERT INTO LOCAL (cod_loc, nome) VALUES (2, 'Belo Horizonte');
INSERT INTO LOCAL (cod_loc, nome) VALUES (3, 'Guarulhos');
INSERT INTO LOCAL (cod_loc, nome) VALUES (4, 'Campinas');
INSERT INTO LOCAL (cod_loc, nome) VALUES (5, 'Curitiba');
INSERT INTO LOCAL (cod_loc, nome) VALUES (6, 'Rio de Janeiro');

--inserindo dados no dpto
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (10, 'Contabilidade', 2);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (20, 'Controladoria', 1);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (99, 'Financeiro', 4);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (22, 'TI', 3);
INSERT INTO DEPTO (cod_depto, nome, cod_loc) VALUES (25, 'Marketing', 7);

