/*Criando tabela produto*/

create table Produto(
    codigo_produto int,
    nome_produto varchar(50),
    cod_fornecedor int,
    cod_categoria int
);
/*Criando tabela Fornecedor*/
create table Fornecedor(
  codigo_fornecedor int,
  razao_social varchar(50),
  telefone numeric (11)
);
/*Criando tabela Categoria_Produto*/
create table Categoria_Produto(
    codigo int,
    nome varchar(50)
);
 
Select * from Produto;
Select * from Fornecedor;
Select * from Categoria_produto; 