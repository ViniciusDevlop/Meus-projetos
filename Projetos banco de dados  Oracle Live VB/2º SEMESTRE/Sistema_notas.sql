DECLARE
  v_a1 number :=3;
  v_a2 number :=3;
  v_af number :=3;
  v_maior_nota number;
  v_nota_final number;
  v_soma_nota NUMBER;

  erro_nota EXCEPTION;
  PRAGMA EXCEPTION_INIT(erro_nota, -20001);
  
  erro_af EXCEPTION;
  PRAGMA EXCEPTION_INIT(erro_af, -20002);

BEGIN

  IF v_a1 < 0 OR v_a1 > 5 OR v_a2 < 0 or v_a2 >5 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Notas A1 ou A2 inválidas' ||
    'A1= ' || v_a1 || 'A2= ' || v_a2);
  END IF; 

  IF v_af <0 or v_af >5 THEN
    RAISE_APPLICATION_ERROR(-20002, 
    'Nota AF inválida.' ||
    'AF= ' || v_af);
  END IF;
  
  -- Exibe as notas e a soma
  v_soma_nota := v_a1 + v_a2;
  DBMS_OUTPUT.PUT_LINE('==== SISTEMA DE AVALIAÇÃO ====');
  DBMS_OUTPUT.PUT_LINE('Notas: A1 = ' || v_a1 || ', A2 = ' || v_a2);
  DBMS_OUTPUT.PUT_LINE('Soma: ' || v_soma_nota);
  
  -- Lógica corrigida usando IF-ELSIF-ELSE
  IF v_soma_nota >= 6 THEN
    DBMS_OUTPUT.PUT_LINE('STATUS: APROVADO DIRETO!');
    DBMS_OUTPUT.PUT_LINE('Parabéns! Orgulho do batalhão! Nota Final: ' || v_soma_nota);
  ELSE 
    DBMS_OUTPUT.PUT_LINE('STATUS: RECUPERAÇÃO (AF)!');
    DBMS_OUTPUT.PUT_LINE('Nota AF= ' || v_af );

    -- Determina a maior nota para o cálculo da AF
    IF v_a1 > v_a2 THEN
      v_maior_nota := v_a1;
    ELSE
      v_maior_nota := v_a2;
    END IF;
    
    v_nota_final := v_af + v_maior_nota;
    
    -- Verifica o resultado após a recuperação
    IF v_nota_final >= 6 THEN
      DBMS_OUTPUT.PUT_LINE('STATUS: APROVADO NA AF!');
      DBMS_OUTPUT.PUT_LINE('Parabéns! Nota Final = ' || v_nota_final);
    ELSE 
      DBMS_OUTPUT.PUT_LINE('STATUS: REPROVADO');
      DBMS_OUTPUT.PUT_LINE('Lutou bem, mas não foi o suficiente. Nota final: ' || v_nota_final);
    END IF;
  END IF;

EXCEPTION 
  WHEN erro_nota THEN
    DBMS_OUTPUT.PUT_LINE('Detalhes: ' || SQLERRM);
  WHEN erro_af THEN
    DBMS_OUTPUT.PUT_LINE('Detalhes: ' || SQLERRM); 
  WHEN others THEN
    DBMS_OUTPUT.PUT_LINE('ERRO DESCONHECIDO: ' || SQLERRM);
END;
/
