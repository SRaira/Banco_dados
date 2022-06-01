USE bdi;
GO

ALTER TABLE DBO.ENDERECO
ADD cep decimal(8) null;
GO

select * from funcionario
select * from cliente
select * from produto
select * from pet

ALTER TABLE dbo.telefone
drop constraint fk_telefone

--alterar tabela de funcionarios excluindo telefone
ALTER TABLE dbo.telefone
drop column id_funcionario

--alteração na tabela pet
ALTER TABLE dbo.pet
drop constraint fk_pet

ALTER TABLE dbo.cliente_pet
drop constraint fk_cliente_pet_pet

--Exluir para incluir prontuario  
drop table pet
go


