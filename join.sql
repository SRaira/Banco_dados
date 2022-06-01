USE bdi;
GO


-- Funcionario de cada venda
select v.id as id_venda, a.nome as nome_funcionario from venda as v inner join  funcionario as a on v.id_funcionario = a.id

--Verificar o peso de cada pet
select p.id as id_pet, t.peso as peso_protuario from pet as p inner join prontuario as t on p.id_prontuario = t.id

--Id de venda quais foram os funcionarios, tipo e id de cada um deles
select a.id, a.nome, a.tipo, v.id_funcionario from funcionario as a inner join venda as v on a.id = v.id 

--Venda sem identificação de cliente
select a.id, a.id_forma_pagamento, a.id_cliente from venda as a where a.id_cliente is null  

-- Vendas realizadas com pagamento PIX
select v.id, v.id_forma_pagamento from venda as v where v.id_forma_pagamento like 4

--Quais veterinario ganham mais que mil reais
select id, nome, tipo, salario from funcionario where tipo = 'v' and salario >1000

