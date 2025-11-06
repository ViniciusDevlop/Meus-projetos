CREATE OR REPLACE PACKAGE BODY pkg_estudantes1 AS

    -- 1. Procedure inserir_estudante
    PROCEDURE inserir_estudante(
        p_id    estudantes1.id%TYPE,
        p_nome  estudantes1.nome%TYPE,
        p_nota1 estudantes1.nota1%TYPE,
        p_nota2 estudantes1.nota2%TYPE
    )
    AS
    BEGIN
        -- Correção: Usar o nome da tabela 'estudantes1' e referenciar as variáveis de entrada (p_...)
        INSERT INTO estudantes1 (id, nome, nota1, nota2)
        VALUES (p_id, p_nome, p_nota1, p_nota2);
        
        DBMS_OUTPUT.PUT_LINE('Estudante ' || p_nome || ' inserido com sucesso!');
        
    -- Correção: Adicionar o ponto e vírgula após a palavra 'END' do bloco BEGIN/END
    END inserir_estudante; 

    -- 2. Procedure listar_estudante
    PROCEDURE listar_estudante 
    AS 
    BEGIN
        -- Correção: No SELECT, a coluna 'nota' não existe; deve ser 'nota2'.
        -- Correção: Corrigir a concatenação no DBMS_OUTPUT.PUT_LINE (usar apenas '||' e não vírgulas para separar strings).
        FOR r IN (
            SELECT id, nome, nota1, nota2 FROM estudantes1 ORDER BY id
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('ID: ' || r.id || ' | Nome: ' || r.nome || ' | Nota1: ' || r.nota1 || ' | Nota2: ' || r.nota2);
        END LOOP;
        
    END listar_estudante;

    -- 3. Function calcular_media
    FUNCTION calcular_media(
        f_nota1 IN NUMBER, 
        f_nota2 IN NUMBER
    )
    RETURN NUMBER 
    AS 
        v_media NUMBER;
    BEGIN
        v_media := (f_nota1 + f_nota2) / 2;
        RETURN v_media;
        
    -- Correção: Adicionar o ponto e vírgula após a palavra 'END' da função
    END calcular_media; 

END pkg_estudantes1;
