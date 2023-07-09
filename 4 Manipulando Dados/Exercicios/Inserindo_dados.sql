use gerenciador_matriculas;

# Crie comandos SQL para inserir os dados apresentados a seguir:

/*
Tabela TIPO:
1, Banco de dados
2, Programação
3, Modelagem de dados
*/

insert into tipo (tipo) values('Banco de Dados');
insert into tipo (tipo) values('Programação');
insert into tipo (tipo) values('Modelagem de dados');

select * from tipo;
---------------------------------------------
/*
Tabela INSTRUTOR:
1, André Milani, 1111-1111
2, Carlos Tosin, 1212-1212
*/

insert into instrutor (instrutor, telefone) values ('André Milani', '1111-1111');
insert into instrutor (instrutor, telefone) values ('Carlos Tosin', '1212-1212');

select * from instrutor;
-------------------------------------
/*
Tabela CURSO:
1, Java Fundamentos, 2, 2, 270
2, Java Avançado, 2, 2, 330
3, SQL Completo, 1, 1, 170
4, Php Básico, 2, 1, 270
*/

insert into curso (curso, tipo, instrutor, valor) values ('Java Fundamentos', 2, 2, 270);
insert into curso (curso, tipo, instrutor, valor) values ('Java Avançado', 2, 2, 330);
insert into curso (curso, tipo, instrutor, valor) values ('SQL Completo', 1, 1, 170);
insert into curso (curso, tipo, instrutor, valor) values ('Php Básico', 2, 1, 270);

select * from curso;
----------------------------------
/*
Tabela ALUNO:
1, José, Rua XV de Novembro 72, jose@softblue.com.br
2, Wagner, Av. Paulista, wagner@softblue.com.br
3, Emílio, Rua Lajes 103, ap: 701, emilio@softblue.com.br
4, Cris, Rua Tauney 22, cris@softblue.com.br
5, Regina, Rua Salles 305, regina@softblue.com.br
6, Fernando, Av. Central 30, fernando@softblue.com.br

*/

insert into aluno(aluno, endereco, email) values ('José', 'Rua XV de Novembro 72', 'jose@softblue.com.br');
insert into aluno(aluno, endereco, email) values ('Wagner', 'Av. Paulista', 'wagner@softblue.com.br');
insert into aluno(aluno, endereco, email) values ('Emílio', 'Rua Lajes 103, ap: 701', 'emilio@softblue.com.br');
insert into aluno(aluno, endereco, email) values ('Cris', 'Rua Tauney 22', 'cris@softblue.com.br');
insert into aluno(aluno, endereco, email) values ('Regina', 'Rua Salles 305', 'regina@softblue.com.br');
insert into aluno(aluno, endereco, email) values ('Fernando', 'Av. Central 30', 'fernando@softblue.com.br');

select * from aluno;
---------------------------------------------

