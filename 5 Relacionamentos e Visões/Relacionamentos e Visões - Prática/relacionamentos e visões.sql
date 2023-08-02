use curso_sql;

select * from funcionarios;
select * from veiculos;

# INNER JOIN
select * from funcionarios inner join veiculos on veiculos.funcionario_id = funcionarios.id;

# Usando apelidos
select * from funcionarios f inner join veiculos v on v.funcionario_id = f.id;

# LEFT JOIN
select * from funcionarios f left join veiculos v on v.funcionario_id = f.id;

# RIGTH JOIN 
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;

# FULL (usar o parametro full join ou parametro union)
select * from funcionarios f left join veiculos v on v.funcionario_id = f.id
union
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;


create table cpfs
(
	id int unsigned not null,
    cpf varchar(14) not null,
    primary key (id),
    constraint fk_cpf  foreign key (id) references funcionarios (id)
)
select * from cpfs;


