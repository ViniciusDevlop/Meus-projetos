-- Passo 1: Remover a tabela Clientes1, se ela existir.
-- Isso ajuda a evitar erros e permite começar do zero para teste.
DROP TABLE Clientes1;

-- Passo 2: Criar a tabela Clientes1 com a nova coluna de salário.
CREATE TABLE Clientes1 (
    id_cliente NUMBER PRIMARY KEY,
    nome VARCHAR2(50),
    salario NUMBER
);

-- Passo 3: Inserir um novo cliente usando variáveis.
-- Este é um bloco PL/SQL para demonstrar como usar variáveis.
DECLARE
    v_id NUMBER := 3;
    v_nome VARCHAR2(50) := 'José';
BEGIN
    INSERT INTO Clientes1 (id_cliente, nome) VALUES (v_id, v_nome);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Cliente ' || v_nome || ' inserido com sucesso.');
END;
/

-- Passo 4: Atualizar o salário do cliente, com a verificação de valor negativo.
-- Este é o seu bloco principal, agora corrigido e completo.
DECLARE
    v_id_cliente NUMBER := 3;
    v_salario_novo NUMBER := 1400;
BEGIN
    -- Verifica se o novo salário é negativo.
    IF v_salario_novo < 0 THEN
        -- Se for, lança um erro personalizado.
        RAISE_APPLICATION_ERROR(-20001, 'Salário não pode ser negativo. Valor digitado: ' || v_salario_novo);
    END IF;

    -- Atualiza o salário para o cliente com o ID especificado.
    UPDATE Clientes1
    SET salario = v_salario_novo
    WHERE id_cliente = v_id_cliente;

    -- Confirma a atualização no console.
    DBMS_OUTPUT.PUT_LINE('Salário do cliente com ID ' || v_id_cliente || ' atualizado com sucesso.');
    
    -- Salva as alterações no banco de dados.
    COMMIT;

EXCEPTION
    -- Captura qualquer erro que ocorra (como o erro que você levantou) e mostra uma mensagem.
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro: ' || SQLERRM);
END;
