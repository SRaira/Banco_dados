USE bdi;
GO

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
INSERT INTO funcionario(nome,cpf,salario,id_endereco,tipo,num_conselho,especialidade,comissao)
VALUES
    ('Rosimere Theodoro Manhães', '38786704940', 2500.00, 1 , 'V', '696432', NULL, NULL),
    ('Osmar ', '11122233304', 1500.00, 2 , 'A', NULL , NULL, 15.0),
    ('José Da Silva', '79878314665', 5000.00, 3 ,'V', '123456789', 'Dermatologia', NULL),
    ('Mestre dos Magos', '00000000000', 2500.00, 2 ,'A', NULL, NULL, 15.0),
    ('Biu Silva', '18968412399', 870.00, 1, 'A', NULL,NULL,15.0),
    ('serafin da silva ', '40028922188', 1200.00, 4, 'A', NULL,NULL,15.00),
    ('Shayane Silva', '98456512300', 1795.00, 3, 'A', NULL,NULL,15.00),
    ('Hermenegildo', '55244364476', 3500.00, 2 , 'V', '6743856', 'Oncologista', NULL),
    ('Biu do Espetinho', '55026988075', 6980.00, 1 ,'A', NULL,NULL,15.00),
    ('Joaquim Da Silva Santos', '12107745285', 9785.00, 1 ,'A', NULL,NULL,15.00),
    ('Brito', '14236918708',4000.96, 4, 'A' ,NULL,NULL,15.00),
    ('Jonas', '77794923034',900.00, 3 , 'A' ,NULL,NULL, 10.00);
 

select * from endereco

--INSERIR DADOS NA TABELA ENDERECO
INSERT INTO endereco(numero,complemento,cep)
VALUES 
('13','CASA',58071-585),
('876','CASA',58028-860),
('230','AP 203',58037-030),
('45','CASA',58011-345);

select * from pet
--INSERIR DADOS DO PET
INSERT INTO pet(nome,especie,porte,dt_nasc,id_prontuario)
VALUES
('Chico','felino',NULL,'2012.09.07',NULL),
('Nina','SRD','Medio',NULL,1),
('Bruce','Pinscher','Pequeno','2021.06.30',2);

select * from telefone;
go

INSERT INTO telefone(id_cliente,telefone)
VALUES
(1,83988888888),
(2,83999999999),
(3,83977777777),
(4,83966666666),
(5,83955555555),
(6,83944444444),
(7,83933333333),
(8,83922222222),
(9,83911111111),
(10,83900000000),
(11,83909999999),
(12,83908888888),
(13,83907777777),
(14,83906666666);

select * from prontuario
go

INSERT INTO prontuario(descricao,temperatura,peso)
VALUES
('vacina de raiva',35.0,	10.5),
('cronograma de vacina para filhote'	,36.1,	3.8);
go

INSERT INTO pet(id_prontuario)
VALUES
(1),
(2);

select * from pet

select * from cliente

INSERT INTO cliente_pet(id_cliente, id_pet)
VALUES
(3,2),
(7,3),
(14,4);

select * from dbo.venda

INSERT INTO venda(id_forma_pagamento,id_cliente, id_funcionario)
VALUES
(3,5,2),
(4,11,12),
(4,10,2),
(1,5,7),
(4,4,4),
(4,6,1),
(1,11,10),
(2,6,12),
(1,null,10),
(1,6,12);


select * from produto
select * from venda
select * from produto_venda


DELETE FROM DBO.PRODUTO_VENDA;
DBCC CHECKIDENT ('PRODUTO_VENDA', RESEED, 0);
GO

INSERT INTO DBO.PRODUTO_VENDA VALUES
(6, 1),
(5, 1),
(7, 1);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(2, 2),
(5, 2);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(6, 3),
(9, 3),
(4, 3),
(7, 3);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(10, 4);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(12, 5),
(15, 5),
(16, 5),
(2, 5);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(16, 6),
(7, 6),
(14, 6);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(7, 7);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(7, 8);

INSERT INTO DBO.PRODUTO_VENDA VALUES
(1, 9),
(5, 9),
(12, 9),
(2, 9),
(13, 9),
(3, 9),
(9, 9);






