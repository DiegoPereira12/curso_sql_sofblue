use gerenciador_matriculas;

# Utilizando o banco de dados criado nos módulos anteriores, realize as seguintes instruções:

# Altere o endereço do aluno JOSÉ para 'Av. Brasil 778';
update aluno set endereco = 'Av. Brasil 778' where codigo = 1;

select * from aluno;

# Altere o e-mail do aluno CRIS para 'cristiano@softblue.com.br';
update aluno set email =  'cristiano@softblue.com.br' where codigo = 4;

# Aumente em 10% o valor dos cursos abaixo de 300;
update curso set valor = valor * 1.1 where valor < 300;

select * from curso;

# Altere o nome do curso de Php Básico para Php Fundamentos

update curso set curso = 'Php Fundamentos' where codigo = 4;
select * from curso;