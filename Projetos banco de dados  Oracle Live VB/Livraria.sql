CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE Clientes (
    Cod_Clientes INT,
    Nomes_Clientes VARCHAR(50) NOT NULL,
    Rgs_Clientes INT,
    Cpfs_Clientes BIGINT,
    CONSTRAINT Pk_Clientes PRIMARY KEY (Cod_Clientes)
);

CREATE TABLE Livros (
    Cod_Livros INT,
    Titulos_Livros VARCHAR(100),
    Valores_Livros DECIMAL(7, 2),
    Isbns_Livros VARCHAR(20),
    CONSTRAINT Pk_Livros PRIMARY KEY (Cod_Livros)
);

CREATE TABLE Autores (
    Codigos_Autores INT,
    Nomes_Autores VARCHAR(50),
    CONSTRAINT Pk_Codigos_Autores PRIMARY KEY (Codigos_Autores)
);

CREATE TABLE Editoras (
    Codigos_Editoras INT,
    Nomes_Editoras VARCHAR(50),
    CONSTRAINT Pk_Editoras PRIMARY KEY (Codigos_Editoras)
);

CREATE TABLE Livros_Autores (
    Cod_Livros INT,
    Codigos_Autores INT,
    PRIMARY KEY (Cod_Livros, Codigos_Autores),
    FOREIGN KEY (Cod_Livros) REFERENCES Livros(Cod_Livros),
    FOREIGN KEY (Codigos_Autores) REFERENCES Autores(Codigos_Autores)
);

CREATE TABLE Livros_Editoras (
    Cod_Livros INT,
    Codigos_Editoras INT,
    PRIMARY KEY (Cod_Livros, Codigos_Editoras),
    FOREIGN KEY (Cod_Livros) REFERENCES Livros(Cod_Livros),
    FOREIGN KEY (Codigos_Editoras) REFERENCES Editoras(Codigos_Editoras)
);

INSERT INTO Clientes VALUES (1, 'Vinicius', 111111111, 11111111111);
INSERT INTO Clientes VALUES (2, 'Lucas', 222222222, 22222222222);
INSERT INTO Clientes VALUES (3, 'Marcos', 333333333, 33333333333);

INSERT INTO Livros VALUES (1, 'Livro A', 40.00, '111111111111111');
INSERT INTO Livros VALUES (2, 'Livro B', 150.00, '222222222222222');
INSERT INTO Livros VALUES (3, 'Livro C', 300.00, '333333333333333');

INSERT INTO Autores VALUES (1, 'Joana');
INSERT INTO Autores VALUES (2, 'Carlos');

INSERT INTO Editoras VALUES (1, 'Brasfort');
INSERT INTO Editoras VALUES (2, 'Vinicius');
INSERT INTO Editoras VALUES (3, 'Belchior');

INSERT INTO Livros_Autores VALUES (1,1);
INSERT INTO Livros_Autores VALUES (2,2);
INSERT INTO Livros_Autores VALUES (3,1);

INSERT INTO Livros_Editoras VALUES (1,1);
INSERT INTO Livros_Editoras VALUES (2,2);
INSERT INTO Livros_Editoras VALUES (3,3);

-- Seleciona todos os clientes que possuem a letra 'A' no nome
SELECT * FROM Clientes WHERE Nomes_Clientes LIKE '%A%';

-- Seleciona todos os clientes que possuem a letra 'A' no início do nome
SELECT * FROM Clientes WHERE Nomes_Clientes LIKE 'A%';

-- Seleciona todos os clientes que possuem a letra 'A' no final do nome
SELECT * FROM Clientes WHERE Nomes_Clientes LIKE '%A';

-- Seleciona o nome dos livros publicados pelo autor 'Carlos'
SELECT Livros.Titulos_Livros FROM Livros INNER JOIN Livros_Autores ON Livros.Cod_Livros = Livros_Autores.Cod_Livros INNER JOIN Autores ON Livros_Autores.Codigos_Autores = Autores.Codigos_Autores WHERE Autores.Nomes_Autores = 'Carlos';

-- Seleciona o código do autor com o nome 'Joana'
SELECT Codigos_Autores FROM Autores WHERE Nomes_Autores = 'Joana';

-- Seleciona o nome das editoras em ordem decrescente
SELECT Nomes_Editoras FROM Editoras ORDER BY Nomes_Editoras DESC;

/*SELECIONE O NOME DAS EDITORAS EM ORDEM DESCRESCENTE*/
SELECT NOME_EDI FROM EDITORAS ORDER BY NOME_EDI DESC;


