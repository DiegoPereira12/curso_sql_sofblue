USE curso_sql;

# Inserir dados na tabela funcionarios

insert into funcionarios (id, nome, salario, departamento) values (1, 'Fernando', 1400, 'TI');
insert into funcionarios (id, nome, salario, departamento) values (2, 'Guilherme', 2500, 'Juridico');
insert into funcionarios (nome, salario, departamento) values ('Fabio', 1700, 'TI');
insert into funcionarios (nome, salario, departamento) values ('Jose', 1800, 'Marketing');
insert into funcionarios (nome, salario, departamento) values ('Isabela', 2200, 'Juridico');

select * from funcionarios;
select * from funcionarios where salario > 2000;
select * from funcionarios where nome = 'Jose';
select * from funcionarios where id = 3;

----------------------------------------
# Atulizar dados da tabela

# Atualizando salário de um funcionário especifico
update funcionarios set salario = salario * 1.1 where id =1;

#Atualizando salário de todos os funcionarios, preciso habilitar o parametro "sql_safe_updates = 0", para desabilitar sql_safe_updates = 1
set sql_safe_updates = 0; 
update funcionarios set salario = salario * 1.1;

#utilizar o parametro round para fazer arredondamento das casas décimais
update funcionarios set salario = round(salario * 1.1, 2);

-----------------------------------------------------------
# Deletar informações da tabela funcionarios

delete from funcionarios where id  = 4;

-----------------------------------
select * from veiculos;

# Inserir dados na tabela Veiculos

insert into veiculos (funcionario_id, veiculo, placa) values (1, 'Carro', 'SB-0001');
insert into veiculos (funcionario_id, veiculo, placa) values (1, 'Carro', 'SB-0002');

# Atualizando informações da tabela veiculos
update veiculos set funcionario_id = 5 where id = 4;

----------------------------------------
select * from salarios;

# Inserir dados na tabela Salários

insert into salarios (faixa, inicio, fim) values ('Analista Jr', 1000, 2000);
insert into salarios (faixa, inicio, fim) values ('Analista Pleno', 2000, 4000);

-------------------------------------------------
# Fazendo select colocando um apelido para tabela
select * from funcionarios f where salario > 2000;

# Quando houver o mesmo campo em mais de uma tabela
select * from funcionarios where funcionarios.salario > 2000;

# Fazendo busca somente por colunas espeficas de uma tabela
select nome, salario from funcionarios f where f.salario > 2000;

# Colocando apelido no nome da coluna
select nome as 'funcionario', salario from funcionarios f where f.salario > 2000;

# Utilizando union, juntar duas consultas => union all traz todos os registros, union elimina registros duplicados
select * from  funcionarios where nome = 'Guilherme'
union
select * from funcionarios where id = 5;












