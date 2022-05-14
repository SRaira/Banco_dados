create database bdi
go

use bdi;
go

create table produto(
id int identity(1,1) not null,
nome varchar (50),
descricao varchar(255),
valor decimal (5,2),
tipo char(1) null,
constraint pk_produtos primary key(id)
); 
go

create table residencia(
id int identity (1,1) not null,
descricao varchar(50),
constraint pk_residencia primary key(id)
);
go

create table endereco(
id int identity (1,1) not null,
nome_rua varchar(255),
numero int,
cep int,
bairro varchar(50),
cidade varchar(50),
estado varchar(50),
pais varchar(50),
id_tipo_residencia int,
complemento varchar (255)
constraint pk_endereco primary key (id),
constraint fk_endereco foreign key (id_tipo_residencia) references residencia(id)
);
go

create table funcionario(
id int identity (1,1) not null,
nome varchar(100) not null,
cpf varchar (11) not null,
salario decimal(5,2),
id_endereco int not null,
tipo varchar (10),
num_conselho int null,
especialidade varchar(20) null,
comissao decimal(5,2) null,
constraint pk_funcionario primary key(id),
constraint fk_funcionario foreign key (id_endereco) references endereco(id)
);
go

create table prontuario(
id int identity (1,1) not null,
descricao varchar(255),
temperatura decimal(2,1),
peso decimal(3,2),
constraint pk_prontuario primary key(id) 
);
go

create table pet(
id int identity (1,1) not null,
nome varchar(50),
especie varchar(50),
porte varchar(50),
dt_nasc date,
id_prontuario int,
constraint pk_pet primary key(id),
constraint fk_pet foreign key (id_prontuario) references prontuarico(id)
);
go

create table cliente(
id int identity (1,1) not null,
nome varchar (50),
id_endereco int,
email varchar(50)
constraint pk_cliente primary key(id),
constraint fk_cliente foreign key (id_endereco) references endereco(id)
);
go

create table telefone(
id int identity (1,1) not null,
id_funcionario int null,
id_cliente int null,
telefone varchar(50),
constraint pk_telefone primary key(id),
constraint fk_telefone foreign key (id_funcionario) references funcionario(id)
);
go

alter table telefone
add constraint fk_teleone_cliente foreign key (id_cliente) references cliente(id);
go

create table forma_pagamento(
id int identity (1,1) not null,
descricao varchar(255)
constraint pk_forma_pagamento primary key(id),
);
go

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

create table produto_venda(
id int identity (1,1) not null,
id_produto int not null,
id_venda int not null,
constraint pk_produto_venda primary key(id),
constraint fk_produto foreign key (id_produto) references produto(id),
constraint fk_produto_venda foreign key (id_venda) references venda(id)
);
go

create table cliente_pet(
id int identity (1,1) not null,
id_cliente int not null,
id_pet int not null,
constraint pk_cliente_pet primary key(id),
constraint fk_cliente_pet_cliente foreign key (id_cliente) references cliente(id),
constraint fk_cliente_pet_pet foreign key (id_pet) references pet(id)
);
go