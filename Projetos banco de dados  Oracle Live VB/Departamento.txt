-- Criação da tabela DEPT (Departamento)
CREATE TABLE DEPT (
    departamento_id INT PRIMARY KEY,
    nome VARCHAR(50),
    localizacao VARCHAR(50)
);

-- Criação da tabela empregado (Empregados)
CREATE TABLE empregado (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    comissao DECIMAL(10, 2),
    departamento INT,
    data_admissao DATE,
    FOREIGN KEY (departamento) REFERENCES DEPT(departamento_id)
);

-- Criação da tabela Countries (Países)
CREATE TABLE Countries (
    pais_id INT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Inserção de alguns dados de exemplo nas tabelas (para teste)

-- Dados de exemplo para DEPT (departamentos)
INSERT INTO DEPT (departamento_id, nome, localizacao) VALUES
(10, 'Vendas', 'São Paulo'),
(20, 'Recursos Humanos', 'Rio de Janeiro'),
(30, 'Financeiro', 'Belo Horizonte');

-- Dados de exemplo para empregado (empregados)
INSERT INTO empregado (codigo, nome, cargo, salario, comissao, departamento, data_admissao) VALUES
(7902, 'Jones', 'Manager', 2500.00, 1500.00, 10, '2019-03-10'),
(7788, 'Smith', 'Analyst', 3000.00, 1200.00, 20, '2018-06-23'),
(7876, 'Adams', 'Clerk', 1500.00, 0.00, 30, '2020-01-15'),
(7839, 'King', 'Manager', 5000.00, 1800.00, 10, '2017-07-02'),
(7934, 'Miller', 'Clerk', 1100.00, 0.00, 20, '2021-08-11');

-- Dados de exemplo para Countries (países)
INSERT INTO Countries (pais_id, nome) VALUES
(1, 'Brasil'),
(2, 'Estados Unidos'),
(3, 'Nepal'),
(4, 'Noruega');

-- 1. Exibir a estrutura da tabela DEPT
DESCRIBE DEPT;

-- Ou, caso o banco de dados não reconheça DESCRIBE, use:
-- SHOW COLUMNS FROM DEPT;

-- 2. Exibir todos os dados da tabela empregado
SELECT * FROM empregado;

-- 3. Exibir o nome, departamento e salários dos empregados da tabela empregado
SELECT nome, departamento, salario FROM empregado;

-- 4. Exibir todos os cargos da tabela empregado, sem repetição
SELECT DISTINCT cargo FROM empregado;

-- 5. Exibir todos os empregados com salário maior que 2000
SELECT * FROM empregado
WHERE salario > 2000;

-- 6. Selecionar nome, salário e comissão dos empregados que tenham salário menor que o recebido como comissão
SELECT nome, salario, comissao
FROM empregado
WHERE salario < comissao;

-- 7. Selecionar todos os empregados com salário entre 1000 e 1500
SELECT * FROM empregado
WHERE salario BETWEEN 1000 AND 1500;

-- 8. Exibir todos os empregados com os códigos 7902, 7788 e 7876
SELECT * FROM empregado
WHERE codigo IN (7902, 7788, 7876);

-- 9. Selecionar todos os empregados que não sejam Clerk, Manager ou Analyst
SELECT * FROM empregado
WHERE cargo NOT IN ('Clerk', 'Manager', 'Analyst');

-- 10. Selecionar todos os empregados dos departamentos 10 e 20
SELECT * FROM empregado
WHERE departamento IN (10, 20);

-- 11. Exibir o salário e rendimento anual do funcionário Jones, considerando 14 salários por ano e bônus de 1200 por mês
SELECT nome, salario, (salario * 14 + 1200 * 12) AS rendimento_anual
FROM empregado
WHERE nome = 'Jones';

-- 12. Pesquisar sobre a cláusula ORDER BY. Em seguida, tentar selecionar o nome, salário e data de admissão, com a listagem sendo ordenada pelo salário
SELECT nome, salario, data_admissao
FROM empregado
ORDER BY salario;

-- 13. Selecionar os empregados que tenham o nome iniciado pela letra A
SELECT * FROM empregado
WHERE nome LIKE 'A%';

-- 14. Exibir todos os empregados com a 2ª letra do nome igual a L
SELECT * FROM empregado
WHERE nome LIKE '_L%';

-- 15. Exibir todos os países que têm o nome iniciado pela letra N (tabela: Countries)
SELECT * FROM Countries
WHERE nome LIKE 'N%';

-- 16. Selecionar todos os empregados que tenham cargo com a palavra ‘Manager’ (tabela: empregado)
SELECT * FROM empregado
WHERE cargo LIKE '%Manager%';
