CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Inserindo os 5 departamentos
INSERT INTO departamentos (id, nome) VALUES
(1, 'Recursos Humanos'),
(2, 'Financeiro'),
(3, 'Marketing'),
(4, 'TI'),
(5, 'Comercial');

CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    CONSTRAINT fk_departamento
        FOREIGN KEY (departamento_id)
        REFERENCES departamentos(id)
);

-- Inserindo os 10 funcionários e associando 2 por departamento
INSERT INTO funcionarios (id, nome, departamento_id) VALUES
(1, 'Ana Silva', 1),
(2, 'Bruno Santos', 1),
(3, 'Carla Oliveira', 2),
(4, 'Daniel Pereira', 2),
(5, 'Eduarda Costa', 3),
(6, 'Felipe Souza', 3),
(7, 'Gabriela Lima', 4),
(8, 'Henrique Rocha', 4),
(9, 'Isabela Fernandes', 5),
(10, 'João Almeida', 5);
/*Select * from HR.EMPLOYEES;
SELECT FIRST_NAME "NOME",
LAST_NAME "SOBRENOME",
EMAIL , 
SALARY "SALARIO",
SALARY * 12 "SALARIO ANUAL",
HIRE_DATE "DATA CONTRATAÇÃO",
* FROM HR.EMPLOYEES;

-- SELECT  DEPARTMENT_ID, FIRST_NAME FROM HR.EMPLOYEES ORDER BY DEPARTMENT_ID

-- SELECT FIRST_NAME , SALARY FROM HR.EMPLOYEES WHERE SALARY IN (1000,10000);--  

-- SELECT FIRST_NAME , SALARY FROM HR.EMPLOYEES WHERE FIRST_NAME LIKE 'Jo%';
 
 -- SELECT FIRST_NAME , SALARY FROM HR.EMPLOYEES WHERE SALARY BETWEEN 10000 AND 20000;
