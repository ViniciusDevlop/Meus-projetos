DECLARE
  CURSOR c_empregados IS
    SELECT empregado_id, nome, salario
    FROM empregados
    WHERE salario < 47000;

  v_id      empregados.EMPREGADO_ID%TYPE;
  v_nome    empregados.NOME%TYPE;
  v_salario empregados.SALARIO%TYPE;
  
BEGIN 
  OPEN c_empregados;

  LOOP 
    FETCH c_empregados INTO v_id, v_nome, v_salario;

    EXIT WHEN c_empregados%NOTFOUND;
    
    -- Update the salary for the current employee
    UPDATE empregados
    SET salario = v_salario * 1.10
    WHERE empregado_id = v_id;

    -- Output the result, using the new salary calculation
    DBMS_OUTPUT.PUT_LINE('Salário de: ' || v_nome || ' (ID: ' || v_id || ') atualizado para ' || (v_salario * 1.10));

  END LOOP;
  
  CLOSE c_empregados;

  -- This update happens after the loop is complete
  UPDATE empregados 
  SET nome = 'Maria'
  WHERE empregado_id = 3;

END;
/

/*CREATE TABLE empregados (
  empregado_id NUMBER PRIMARY KEY,
  nome VARCHAR(50),
  salario NUMBER
);

CREATE SEQUENCE empregados_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;



INSERT INTO empregados VALUES (empregados_seq.NEXTVAL, 'José', 46000);
*/

/*DECLARE 
  v_nome VARCHAR(50);
  v_id NUMBER := 5;
  v_salario NUMBER;*/

  /* Cursor implícito
  SELECT nome, salario
  INTO v_nome, v_salario
  FROM empregados
  WHERE empregado_id = v_id; */
/* DBMS_OUTPUT.PUT_LINE('Nome do empregado: ' || v_nome);
  DBMS_OUTPUT.PUT_LINE('Salário atual: ' || v_salario);


DBMS_OUTPUT.PUT_LINE('Salário atualizado com sucesso para o empregado ID: ' || v_id);

EXCEPTION

  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Nenhum empregado encontrado com o ID: ' || v_id);

  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro desconhecido:  ' || SQLERRM);  */

