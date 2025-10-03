CREATE OR REPLACE PROCEDURE saudar(
 p_nome in VARCHAR2
)is 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Olá, '|| p_nome || '!');
END saudar; 



BEGIN
  saudar('Capitão Vinicius');
END;    


CREATE OR REPLACE PROCEDURE mostrar_texto_fixo(
    p_resultado OUT VARCHAR2
)IS
 BEGIN
  p_resultado := 'Esse texto é fixo da PROCEDURE';
 
END mostrar_texto_fixo;


DECLARE 
  v_meu_texto varchar2(100);
BEGIN
    mostrar_texto_fixo(v_meu_texto);
    DBMS_OUTPUT.PUT_LINE('Texto: '|| v_meu_texto);
END;


CREATE OR REPLACE PROCEDURE adicionar_dez_porcento(
    p_valor IN OUT number
)IS
 v_valor_original number;
BEGIN
  --pode ler e usar o valor que entrou  
  v_valor_original := p_valor;

 --Modifica o valor que sairá 
  p_valor := p_valor * 1.10;
  
   DBMS_OUTPUT.PUT_LINE('Original: ' ||v_valor_original || '-> Novo: ' || p_valor);
END adicionar_dez_porcento;    


DECLARE 
  v_preco number := 100;
BEGIN
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);   
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);   
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);   
  adicionar_dez_porcento(v_preco);
  adicionar_dez_porcento(v_preco);       
END;

CREATE table consumidores (
  id number primary key,
  nome varchar2(50),
  email varchar(100)
); 
 
CREATE OR REPLACE PROCEDURE  inserir_consumidor(
   p_id IN consumidores.id%TYPE,
   p_nome IN consumidores.nome%TYPE,
   p_email IN consumidores.email%TYPE
 ) IS
BEGIN
 INSERT INTO Consumidores values (p_id,p_nome ,p_email);
  DBMS_OUTPUT.PUT_LINE('Consumidor inserido com sucesso !');

EXCEPTION 

 WHEN DUP_VAL_ON_INDEX THEN 
 DBMS_OUTPUT.PUT_LINE('ERRO: ID ' || p_id || 'já existe no banco!');

 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE('ERRO DESCONHECIDO! - mensagem: ' || SQLERRM );

END inserir_consumidor; 
  
 -- select * from consumidores;


/* uma maneira de chamar procedure */
BEGIN
  inserir_consumidor(2, 'Paulo Moraes', 'paulo@email.com');
END;

BEGIN
  inserir_consumidor(1, 'Marcos Andrade', 'marcos@email.com');
END;

BEGIN
  inserir_consumidor(3, 'Mário Costa', 'mario@email.com');
END;      


/* outra maneira de chamar procedure */

Execute INSERIR_CONSUMIDOR(4, 'João Dias', 'joao@email.com');



--Para colocar em ordem.
SELECT ID, NOME, EMAIL
FROM CONSUMIDORES
ORDER BY ID ASC;  
