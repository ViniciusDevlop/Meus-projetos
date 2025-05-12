/*1. Criar as tabelas*/
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
/*Exercício 8 testes das pk e fk*/
/*Primeiro pk*/
-- Teste de duplicidade na PK da tabela Depto (coluna cod_depto)
SELECT cod_depto, COUNT(*) FROM Depto GROUP BY cod_depto HAVING COUNT(*) > 1;

-- Teste de valores nulos na PK da tabela Depto (coluna cod_depto)
SELECT * FROM Depto WHERE cod_depto IS NULL;

-- Teste de duplicidade na PK da tabela CARGO (coluna cod_cargo)
SELECT cod_cargo, COUNT(*) FROM CARGO GROUP BY cod_cargo HAVING COUNT(*) > 1;

-- Teste de valores nulos na PK da tabela CARGO (coluna cod_cargo)
SELECT * FROM CARGO WHERE cod_cargo IS NULL;
/*Agora o FK*/
-- Teste de valores inválidos na FK FUNC.Cod_depto referenciando Depto.cod_depto
SELECT f.Cod_depto
FROM FUNC f
LEFT JOIN Depto d ON f.Cod_depto = d.cod_depto
WHERE d.cod_depto IS NULL;

-- Teste de valores inválidos na FK FUNC.Cod_cargo referenciando CARGO.cod_cargo
SELECT f.Cod_cargo
FROM FUNC f
LEFT JOIN CARGO c ON f.Cod_cargo = c.cod_cargo
WHERE c.cod_cargo IS NULL;

/*Exercício 9*/
INSERT INTO Depto (cod_depto, Nome, cod_loc) VALUES (33, 'Vendas', 1);
INSERT INTO Depto (cod_depto, Nome, cod_loc) VALUES (44, 'Recursos Humanos', 1);
INSERT INTO Depto (cod_depto, Nome, cod_loc) VALUES (55, 'Cobrança', 4);

/*10. Adicionar os seguintes dados na tabela CARGO:*/
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (3, 'Analista de Sistemas', '252215');
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (4, 'Analista de Negócios', '252218');
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (6, 'Supervisor de TI', '252114');
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (10, 'Programador Jr', '252211');
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (11, 'Programador Pleno', '252212');
INSERT INTO CARGO (cod_cargo, Descrição, CBO) VALUES (15, 'Diretor de TI', '252110');
/*11. Adicionar os seguintes dados na tabela FUNC:*/
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (12, 'Pereira', 'Márcia', 1200, '2019-02-11', 3, 10);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (23, 'Silva', 'Rafael', 2000, '2025-05-12', 6, 33);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (25, 'Braga', 'Silvia', 800, '2016-05-25', 10, 10);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (31, 'Moraes', 'Débora', 1350, '2017-06-21', 11, 25);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (14, 'Sanchez', 'Monica', 3000, '2017-05-28', 10, 15);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (8, 'Barbosa', 'Rogério', 3500, '2014-06-01', 15, 99);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (9, 'Gomes', 'José', 4000, '2015-05-05', 11, 55);
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (10, 'Cardoso', 'Pedro', 2100, '2025-05-12', 3, 55);
/*12. Qual o problema ocorrido quando da inserção do funcionário de código 14? Qual a solução para tal situação?*/
/*R: Porque não existe O código 15 em departamento nenhum, uma solução seria ou adicionar um novo cargo com o código pré-determinado ou alterar o código do funcionário*/
INSERT INTO FUNC (cod_func, Sobrenome, Nome, Salario, Dt_adm, Cod_cargo, Cod_depto) VALUES (14, 'Sanchez', 'Monica', 3000, '2017-05-28', 10, 55);
/*14. Alterar o nome do departamento 44 para RH.*/
UPDATE Depto
SET Nome = 'RH'
WHERE cod_depto = 44;
/*15. Alterar o salário do funcionário de código 23 para 2200.*/
UPDATE FUNC
SET Salario = 2200
WHERE cod_func = 23;
/*16. Tente executar o seguinte comando:*/
UPDATE Depto
SET cod_loc = 7
WHERE cod_depto = 33;

/*Qual o resultado? Como resolver? 
Porque o cod_depto 33 não consta na tabela depto INSERT INTO DEPTO VALUES(33, ) */
/*17. Remover o funcionário de código 12.*/
DELETE FROM FUNC
WHERE cod_func = 12;
/*18. Confirme suas alterações */
COMMIT;
/*19. Efetive suas alterações */
COMMIT;
/*20. Faça as seguintes consultas:*/
-- a. Selecione nome, sobrenome, data de admissão (dd/mm/aaaa) e salário anual, considerando o salário com bônus de 200.
SELECT Nome, Sobrenome, DATE_FORMAT(Dt_adm, '%d/%m/%Y') AS Data_Admissao, (Salario + 200) * 12 AS Salario_Anual
FROM FUNC;

-- b. Selecionar os empregados que recebam entre 2000 e 3000, e trabalhem no departamento 55.
SELECT *
FROM FUNC
WHERE Salario BETWEEN 2000 AND 3000
  AND Cod_depto = 55;

-- c. Exibir os departamentos que tenham a sequência “Fin” em sua descrição (assumindo que a tabela Depto tenha uma coluna de descrição).
-- Como a tabela Depto fornecida tem apenas 'Nome', faremos a busca no nome.
SELECT *
FROM Depto
WHERE Nome LIKE '%Fin%';

-- d. Selecione todos os funcionários que tenham o nome iniciado pela letra ‘M’.
SELECT *
FROM FUNC
WHERE Nome LIKE 'M%';

-- e. Exibir o nome, sobrenome e cargo dos funcionários que tenham a palavra ‘sistemas’ no nome do cargo (assumindo que a tabela CARGO tenha uma coluna 'Descrição').
SELECT f.Nome, f.Sobrenome, c.Descrição AS Cargo
FROM FUNC f
JOIN CARGO c ON f.Cod_cargo = c.cod_cargo
WHERE c.Descrição LIKE '%sistemas%';

-- f. Para cada cargo, selecionar a média e a soma dos salários.
SELECT c.Descrição AS Cargo, AVG(f.Salario) AS Media_Salario, SUM(f.Salario) AS Soma_Salario
FROM FUNC f
JOIN CARGO c ON f.Cod_cargo = c.cod_cargo
GROUP BY c.Descrição;

-- g. Quantos funcionários existem para cada cargo?
SELECT c.Descrição AS Cargo, COUNT(f.cod_func) AS Numero_Funcionarios
FROM FUNC f
JOIN CARGO c ON f.Cod_cargo = c.cod_cargo
GROUP BY c.Descrição;

-- h. Quantos departamentos existem na empresa? Quantos cargos?
SELECT COUNT(*) AS Numero_Departamentos FROM Depto;
SELECT COUNT(*) AS Numero_Cargos FROM CARGO;

-- i. Exibir os departamentos e o maior salário de cada departamento. Exibir somente aqueles cujo salário máximo seja superior a 1100.
SELECT d.Nome AS Departamento, MAX(f.Salario) AS Maior_Salario
FROM FUNC f
JOIN Depto d ON f.Cod_depto = d.cod_depto
GROUP BY d.Nome
HAVING MAX(f.Salario) > 1100;
/*O drop apaga tudo enquanto o delete apaga uma parte específica*/
