use bdi;
go

--FOI FEITO DROP EM TODAS AS FK DA TABELA ENDERE�O E DEPOIS UM DROP NAS TABELAS - A��O FEITA PARA OTIMIZAR A EXECU��O D TRABALHO
ALTER TABLE dbo.endereco
DROP column id_tipo_residencia;
GO

Alter TABLE dbo.bairro
drop CONSTRAINT fk_id_cidade;
go 

DROP TABLE endereco;
go

DROP TABLE nome_rua
GO

DROP TABLE estado
GO

DROP TABLE residencia
GO

DROP TABLE bairro
GO

DROP TABLE pais
GO

DROP TABLE cidade
GO

drop table cep
GO
