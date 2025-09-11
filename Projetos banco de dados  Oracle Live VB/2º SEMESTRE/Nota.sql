declare 
 v_nota number :=2;
 v_nota2 number :=4;
 v_soma_nota number;
 v_maior_nota number;
 v_nota_final number;
 v_af number;
begin  
    if v_nota > v_nota2 then 
    v_maior_nota := v_nota;
    else 
    v_maior_nota := v_nota2;
    end if;
    v_soma_nota := v_nota+ v_nota2;

    if v_soma_nota >= 6 then
    dbms_output.put_line('Parabéns! sua nota é: ' || v_soma_nota ||', você foi aprovado');

    elsif v_soma_nota < 6 then 
        v_af := 3;
        v_nota_final := v_maior_nota + v_af;

    if  v_nota_final >= 6 then
        dbms_output.put_line('Parabéns! sua nota é: ' || v_nota_final ||', você foi aprovado');
    else 
     dbms_output.put_line('Lamento! sua nota é: ' || v_nota_final ||', você foi reprovado');
    end if;
end if;
end;
