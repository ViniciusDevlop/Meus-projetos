Create table Cliente
(
  codigo_cli    INT,
  nome_cli      varchar(50),
  telefone_cli  numeric(9),
  email_cli     varchar(50),
  rg            number (11),
  cpf           numeric(11),
  constraint pk_cliente primary key(codigo_cli)
);


Create table Automovel
(
  placa_auto varchar(8),
  modelo_auto varchar(50),
  ano_auto numeric(4),
  codigo_cliente int, 
  constraint pk_automovel PRIMARY key (placa_auto),
  constraint fk_automovel FOREIGN key (codigo_cliente) REFERENCES Cliente(codigo_cli)
);

create table Relato
(
  codigo_rel    int,
  descricao_rel varchar(500),
  data_rel      DATE,
  placa_auto    varchar(8),
  constraint pk_relato PRIMARY key (codigo_rel),
  constraint fk_relato FOREIGN key (placa_auto) REFERENCES Automovel(placa_auto)
);

Create table orcamento 
(
  codigo_orc int,
  data_orc date,
  mecanico_orc varchar(100),
  placa_auto   varchar(8),
  constraint pk_orcamento PRIMARY key (codigo_orc),
  constraint fk_orcamento FOREIGN key (placa_auto) references Automovel(placa_auto)
);

Create table serviços
(
codigo_serv  int,
valor_serv   numeric(7,2),
tempo_serv  int,
constraint pk_servico primary key (cod_serv)
);
/*Tabela auxiliar n para n (orçamento para o serviço)*/
Create table orc_serv
( 
  codigo_orcamento int,
  codigo_servico int,
  constraint fk_orcamento foreign key(codigo_orcamento) references orcamento (codigo_orc),
  constraint fk_servico   foreign key (codigo_servico) references servicos  (codigo_serv)

);

create table peças 
(
    codigo_peca    int,
    descri_pec varchar(100),
    valor_peca   numeric(7,2),
 constraint pk_peca primary key (cod_peca)
);
/*Tabela auxiliar n para n (orçamento para peça)*/
Create table orc_serv
( 
  codigo_orcamento int,
  codigo_peca int,
  constraint fk_orcamento_peca foreign key(codigo_orcamento) references orcamento (codigo_orc),
  constraint fk_orc_peca   foreign key (codigo_peca) references pecas (cod_peca)

);
/*tudo que não é conta é varchar*/