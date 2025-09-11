DECLARE 
 v_nota1 NUMBER := 4;
 v_nota2 NUMBER := 2; 
 v_notaAF NUMBER := 5; -- Exemplo de nota da AF
 v_soma_notas NUMBER;
 v_maior_nota_principal NUMBER;
 v_nota_final NUMBER;
BEGIN
 v_soma_notas := v_nota1 + v_nota2;
 IF v_soma_notas >= 6 THEN
DBMS_OUTPUT.PUT_LINE('Sua nota é ' || v_soma_notas || '. Parabéns, você foi aprovado!');
 ELSE 
DBMS_OUTPUT.PUT_LINE('Sua nota é ' || v_soma_notas || '. Terá que fazer AF.');
-- Encontra a maior nota entre v_nota1 e v_nota2
IF v_nota1 >= v_nota2 THEN
v_maior_nota_principal := v_nota1;
ELSE
v_maior_nota_principal := v_nota2;
END IF;
-- Calcula a nota final com a AF
v_nota_final := v_maior_nota_principal + v_notaAF;
IF v_nota_final >= 6 THEN
DBMS_OUTPUT.PUT_LINE('Sua nota final é ' || v_nota_final || '. Parabéns, você foi aprovado!');
ELSE
DBMS_OUTPUT.PUT_LINE('Sua nota final é ' || v_nota_final || '. Sinto muito, você foi reprovado!');
END IF;
 END IF;
END;
/*declare 
 v_grade char (1); 
begin
 v_grade := 'F';
case v_grade
when 'A' then dbms_output.put_line ('Excelente!');
when 'B' then dbms_output.put_line ('Muito Bem!');
when 'C' then dbms_output.put_line ('Bom!');
when 'D' then dbms_output.put_line ('Ruim!');
when 'E' then dbms_output.put_line ('Péssimo!');
when 'F' then dbms_output.put_line ('Íbis!');
else dbms_output.put_line ('Não existe a nota!');
 end case;
end;
declare Consegue diferenciar as strings se é maior 
 v_counter number := 1; 
begin
loop
exit when v_counter >5;
dbms_output.put_line('Contador: ' || v_counter);
 v_counter := v_counter +1;
 end loop;
end;
declare Aqui vai mostar uma mensagem diferente dependendo da idade que aparecer 
 v_idade number; 
begin
 v_idade := 18;
if v_idade >=18 then
dbms_output.put_line('Sua idade é: ' || v_idade|| ',você é maior de idade');
else
dbms_output.put_line('Sua idade é: ' ||v_idade||', você é menor de idade');
end if;
end;
declare Aqui é testado usando PL/SQL que é uma linguagem prossedual aqui vai mostrar o número do salário
 v_salary number; 



begin
 v_salary:=200000;
dbms_output.put_line('Seu salário(sonho)é ' || v_salary);
end;
 declare aqui mostra a mensagem 
 v_message varchar2(50); 
begin
 v_message:='Hello,world';
dbms_output.put_line(v_message);
