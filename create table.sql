--CRIANDO BANCO DE DADOS
create database bdi
go

--USAR A TABELA
use bdi;
go

--CRIANDO TABELA 
create table produto(
id int identity(1,1) not null,
nome varchar (50),
descricao varchar(255),
valor decimal (7,2),
tipo char(1) null,
constraint pk_produto primary key(id)
); 
go

--CRIANDO TABELA
create table residencia(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_residencia primary key(id)
);
go

create table nome_rua(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_nome_rua primary key(id)
);
go

--CRIANDO TABELA
create table cep(
id int identity (1,1) not null,
descricao decimal(8),
constraint pk_cep primary key(id)
);
go

--CRIANDO TABELA
create table bairro(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_bairro primary key(id)
);
go

--CRIANDO TABELA
create table cidade(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_cidade primary key(id)
);
go

--CRIANDO TABELA
create table estado(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_estado primary key(id)
);
go

--CRIANDO TABELA
create table pais(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_pais primary key(id)
);
go

--CRIANDO TABELA
create table endereco(
id int identity (1,1) not null,
id_nome_rua int,
numero int,
id_cep int,
id_bairro int,
id_cidade int,
id_estado int,
id_pais int,
id_tipo_residencia int,
complemento varchar (255)
constraint pk_endereco primary key (id),
constraint fk_endereco_residencia foreign key (id_tipo_residencia) references residencia(id),
constraint fk_endereco_nome_rua foreign key (id_nome_rua) references nome_rua(id),
constraint fk_endereco_cep foreign key (id_cep) references cep(id),
constraint fk_endereco_bairro foreign key (id_bairro) references bairro(id),
constraint fk_endereco_cidade foreign key (id_cidade) references cidade(id),
constraint fk_endereco_estado foreign key (id_estado) references estado(id),
constraint fk_endereco_pais foreign key (id_pais) references pais(id)
);
go

--CRIANDO TABELA
create table funcionario(
id int identity (1,1) not null,
nome varchar(100) not null,
cpf varchar (11) not null,
salario decimal(7,2),
id_endereco int not null,
tipo varchar (10),
num_conselho int null,
especialidade varchar(20) null,
comissao decimal(7,2) null,
constraint pk_funcionario primary key(id),
constraint fk_funcionario foreign key (id_endereco) references endereco(id)
);
go

--CRIANDO TABELA
create table prontuario(
id int identity (1,1) not null,
descricao varchar(255),
temperatura decimal(4,1),
peso decimal(5,2),
constraint pk_prontuario primary key(id) 
);
go

--CRIANDO TABELA
create table pet(
id int identity (1,1) not null,
nome varchar(50),
especie varchar(50),
porte varchar(50),
dt_nasc date,
id_prontuario int,
constraint pk_pet primary key(id),
constraint fk_pet foreign key (id_prontuario) references prontuario(id)
);
go

--CRIANDO TABELA
create table cliente(
id int identity (1,1) not null,
nome varchar (50),
id_endereco int,
email varchar(50)
constraint pk_cliente primary key(id),
constraint fk_cliente foreign key (id_endereco) references endereco(id)
);
go


--CRIANDO TABELA
create table telefone(
id int identity (1,1) not null,
id_funcionario int null,
id_cliente int null,
telefone varchar(50),
constraint pk_telefone primary key(id),
constraint fk_telefone foreign key (id_funcionario) references funcionario(id),
constraint fk_teleone_cliente foreign key (id_cliente) references cliente(id)
);
go

--CRIANDO TABELA
create table forma_pagamento(
id int identity (1,1) not null,
descricao varchar(255)
constraint pk_forma_pagamento primary key(id),
);
go

--CRIANDO TABELA
create table venda(
id int identity (1,1) not null,
id_forma_pagamento int,
id_cliente int,
id_funcionario int,
constraint pk_venda primary key(id),
constraint fk_forma_pagamento foreign key (id_forma_pagamento) references forma_pagamento(id),
constraint fk_venda_cliente foreign key (id_cliente) references cliente(id),
constraint fk_venda_funcionario foreign key (id_funcionario) references funcionario(id)
);
go

--CRIANDO TABELA
create table produto_venda(
id int identity (1,1) not null,
id_produto int not null,
id_venda int not null,
constraint pk_produto_venda primary key(id),
constraint fk_produto foreign key (id_produto) references produto(id),
constraint fk_produto_venda foreign key (id_venda) references venda(id)
);
go

--CRIANDO TABELA
create table cliente_pet(
id int identity (1,1) not null,
id_cliente int not null,
id_pet int not null,
constraint pk_cliente_pet primary key(id),
constraint fk_cliente_pet_cliente foreign key (id_cliente) references cliente(id),
constraint fk_cliente_pet_pet foreign key (id_pet) references pet(id)
);
go

