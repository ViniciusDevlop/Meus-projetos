DECLARE
    p_empregado_id     empregados.empregado_id%TYPE := 101;
    p_nome             empregados.nome%TYPE           := 'Carlos Souza';
    p_novo_salario     empregados.salario%TYPE        := 6500.00;
    
    c_limite_salario   CONSTANT NUMBER               := 6000.00;
    
    v_salario_atual    empregados.salario%TYPE;
    v_empregado_existe BOOLEAN := FALSE;

BEGIN
    
    BEGIN
        SELECT salario
        INTO v_salario_atual
        FROM empregados
        WHERE empregado_id = p_empregado_id;
        
        v_empregado_existe := TRUE;
        
        DBMS_OUTPUT.PUT_LINE('--- Operação de Gerenciamento ---');
        DBMS_OUTPUT.PUT_LINE('Verificação: Empregado ID ' || p_empregado_id || ' encontrado. Salário atual: ' || TO_CHAR(v_salario_atual, 'FM999G999D99'));

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_empregado_existe := FALSE;
            DBMS_OUTPUT.PUT_LINE('--- Operação de Gerenciamento ---');
            DBMS_OUTPUT.PUT_LINE('Verificação: Empregado ID ' || p_empregado_id || ' NÃO encontrado. Prosseguindo para Inserção.');
    END;

    IF v_empregado_existe THEN
        
        IF p_novo_salario > c_limite_salario THEN
            
            DELETE FROM empregados
            WHERE empregado_id = p_empregado_id;
            
            DBMS_OUTPUT.PUT_LINE('Exclusão: Salário (' || TO_CHAR(p_novo_salario, 'FM999G999D99') || ') excede o limite (' || TO_CHAR(c_limite_salario, 'FM999G999D99') || '). Empregado ID ' || p_empregado_id || ' DELETADO.');
        ELSE
            
            UPDATE empregados
            SET salario = p_novo_salario
            WHERE empregado_id = p_empregado_id;
            
            DBMS_OUTPUT.PUT_LINE('Atualização: Salário do Empregado ID ' || p_empregado_id || ' atualizado para ' || TO_CHAR(p_novo_salario, 'FM999G999D99') || '.');
        END IF;
        
    ELSE
        
        INSERT INTO empregados (empregado_id, nome, salario)
        VALUES (p_empregado_id, p_nome, p_novo_salario);

        DBMS_OUTPUT.PUT_LINE('Inserção: Novo empregado ID ' || p_empregado_id || ' (' || p_nome || ') inserido com salário ' || TO_CHAR(p_novo_salario, 'FM999G999D99') || '.');
        
    END IF;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Transação concluída e **COMMIT** realizado com sucesso.');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('--- Erro Crítico ---');
        DBMS_OUTPUT.PUT_LINE('Erro na operação para o Empregado ID ' || p_empregado_id || '. Transação desfeita (ROLLBACK).');
        DBMS_OUTPUT.PUT_LINE('Detalhes do Erro: ' || SQLCODE || ' - ' || SQLERRM);

END;
