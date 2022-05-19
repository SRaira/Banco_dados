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

-- INSERIR FORMA DE PAGAMENTO
insert into forma_pagamento values ('DINHEIRO');
insert into forma_pagamento values ('CARTÃO DE CREDITO (À VISTA)');
insert into forma_pagamento values ('CARTÃO DE CREDITO (PARCELADO');
insert into forma_pagamento values ('PIX');
insert into forma_pagamento values ('BOLETO');
insert into forma_pagamento values ('MERCADO PAGO');
insert into forma_pagamento values ('PicPay')
insert into forma_pagamento values ('GOOGLE PAY');

--SELECIONAR TABELA
select * from produto

--INSERIR DADOS NA TABELA PRODUTOS
insert into produto values ('Ração Atacama', 'Ração para cachorro de todos os portes',199.90,'P')
insert into produto values ('Ração Whikas', 'Ração para gato de todos os portes',99.90,'P')
insert into produto values ('Ração Atacama 16kg', 'Ração boa pra cachorro',230,'P')
insert into produto values ('Bola de brinquedo', 'Bola para morder e pegar para cachorros',10,'P')
insert into produto values ('Catnip 10g', 'Erva de gato desidratada',25,'P')
insert into produto values ('Remedio pulkill', 'Matar pulga ',90,'P')
insert into produto values ('Ração Wiskas', 'Ração para gatos',20,'P')
insert into produto values ('Correntes de Asgard ', 'Correntes que prederam o lobo Fenrir de Asgard',98,'P')
insert into produto values ('Sampoo Premium', 'Shampoo da linha premium para pelos sedosos',250,'P')
insert into produto values ('Rações Pilar', 'Comida de cachorro',88,'P')
insert into produto values ('Mordedor', 'Mordedor para cachorro de grande porte',58.90,'P')
insert into produto values ('Ração mania', 'Comida de cachorro',58.91,'P')
insert into produto values ('Osso Roedor', 'Ossinho de roer para cachorro inquieto',58.92,'P')
insert into produto values ('Gaiola roedores', 'Gaiola para pequenos roedores - tamanho medio ', 58.93,'P')
insert into produto values ('Coleiras','Coleiras para Cachorros - tamanho pequeno',56.50,'P')
insert into produto values ('Escova dental Pets','Dentes brilhantes e saudáveis',39.90,'P')

--SELECIONAR TABELA CLIENTE
select * from cliente;

--INSERIR DADOS NA TABELA CLIENTE
INSERT INTO cliente (nome,email)
VALUES
    ('Márcia Nicole Vieira', 'marcianicolevieira@cdcd.com.br'),
    ('Maria Nunes', 'marianunes11@gmail.com'),
    ('Giro Comes', 'Giro_idoso+60@gmail.com'),
    ('Gabriel', 'FogoFest2022@gmail.com'),
    ('Joaovisck', 'joaovisk@gmail.com'),
    ('Pedro Silva', 'pedrinhoradical@gmail.com'),
    ('Mbappe', 'MatheuzinReiDelas2010@hotmail.com'),
    ('Ribamar', 'Ribagol@gmail.com'),
    ('Alphonse Areola', 'alphonseareola@gmail.com'),
    ('Brito', 'tuliocesarluna@gmail.com'),
    ('Bento Andre de Lima', 'bentoal@gmail.com'),
    ('Cleiton Rasta', 'cleitonreagge@gmail.com'),
	('Adalto farias', 'adaltofarias@gmail.com'),
	('Caio Vieira', 'caiopvz@gmail.com');

--SELECIONAR TABELA FUNCIONARIOS
select * from funcionario;

--INSERIR DADOS NA TABELA FUNCIONARIO
INSERT INTO funcionario(nome,cpf,salario,tipo,num_conselho,especialidade,comissao)
VALUES
    ('Rosimere Theodoro Manhães', '38786704940', 2500.00, 'V', '696432', NULL, NULL),
    ('Osmar ', '11122233304', 1500.00, 'A',NULL ,NULL, 15.0),
    ('José Da Silva', '79878314665', 5000.00, 'V', '123456789', 'Dermatologia', NULL),
    ('Mestre dos Magos', '00000000000', 2500.00,'A',NULL, NULL, 15.0),
    ('Biu Silva', '18968412399', 870.00,'A',NULL,NULL,15.0),
    ('serafin da silva ', '40028922188', 1200.00,'A', NULL,NULL,15.00),
    ('Shayane Silva', '98456512300', 1795.00,'A',NULL,NULL,15.00),
    ('Hermenegildo', '55244364476', 3500.00, 'V', '6743856', 'Oncologista', NULL),
    ('Biu do Espetinho', '55026988075', 6980.00,'A',NULL,NULL,15.00),
    ('Joaquim Da Silva Santos', '12107745285', 9785.00, 'A',NULL,NULL,15.00),
    ('Brito', '14236918708',4000.96,'A',NULL,NULL,15.00),
    ('Jonas', '77794923034',900.00, 'A',NULL,NULL, 10.00),
    ('Pedro Henrique Yuri Thomas Monteiro', '56765934235', 3000.00, 'V', '21423', 'Dermatologia',NULL),
    ('sevirino', '54566854504', 10000.00, 'A',NULL,NULL, 20.00),
    ('Cristiano Ronaldo', '36367700471', 2000.00, 'A',NULL,NULL, 10.00),
    ('Ramos', '01440682496', 2500.00, 'V', '242424', 'Aves',NULL),
    ('Estela Nogueira', '03476005488', 15.000, 'V', '9081993', 'Canino', 15.00),
    ('Maria Júlia', '01234567899', 500.40, 'V', 1519, 'Felinos', 15.00),
    ('Josi', '11111111111', 1750.00, 'A',NULL, NULL,10.00),
    ('Vinicius de Morais', '75759509071', 2831.83, 'A', NULL,NULL,18.50),
    ('Caio Vieira', '09833316094', 2500.00, 'V', '231106', 'Aves', NULL),
    ('Fausto Silva', '01001101213', 1800.00, 'A',NULL,NULL, 10.00),
    ('Alice Araújo', '8422406495', 6000.00, 'A',NULL,NULL,15.00); 
