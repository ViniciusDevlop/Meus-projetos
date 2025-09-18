CREATE TABLE log_error (
  codigo_erro    VARCHAR2(100),
  descricao_erro VARCHAR2(4000),
  data_erro      DATE DEFAULT SYSDATE
);

CREATE TABLE clientes1 (
    id        NUMBER PRIMARY KEY,
    nome      VARCHAR2(100),
    salario   NUMBER(10, 2)
);

DECLARE
  v_id      clientes1.id%TYPE := 5;
  v_nome    clientes1.nome%TYPE := 'Mário';
  v_salario clientes1.salario%TYPE := 16000;
BEGIN
  -- Tenta inserir o registro na tabela clientes1
  INSERT INTO clientes1 (id, nome, salario) VALUES (v_id, v_nome, v_salario);

  -- Se a inserção for bem-sucedida, confirma a transação
  COMMIT;

  DBMS_OUTPUT.PUT_LINE('Registro inserido!');

EXCEPTION
  -- Captura o erro específico de valor duplicado
  WHEN DUP_VAL_ON_INDEX THEN
    -- Insere o erro na tabela log_error
    INSERT INTO log_error (codigo_erro, descricao_erro)
    VALUES ('dup_val_on_index', 'Tentativa de inserir valor duplicado:');
    DBMS_OUTPUT.PUT_LINE('ERRO: valor inválido. Erro registrado no LOG_ERROR');

  -- Captura qualquer outro tipo de erro inesperado
  WHEN OTHERS THEN
    -- Insere o código e a descrição do erro na tabela log_error
    INSERT INTO log_error (codigo_erro, descricao_erro)
    VALUES (SQLCODE, SQLERRM);
    DBMS_OUTPUT.PUT_LINE('Erro inesperado: ' || SQLERRM || '. Erro registrado no LOG_ERROR');
END;
/
