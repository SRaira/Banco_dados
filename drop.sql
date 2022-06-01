use bdi;
go

--FOI FEITO DROP EM TODAS AS FK DA TABELA ENDEREÇO E DEPOIS UM DROP NAS TABELAS - AÇÃO FEITA PARA OTIMIZAR A EXECUÇÃO D TRABALHO
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
