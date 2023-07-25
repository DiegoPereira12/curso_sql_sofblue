use gerenciador_matriculas;

#Exibir todas as informações de todos os alunos;
select * from aluno;

#Exibir somente o título de cada curso da Softblue;
select curso from curso;

#Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200;
select curso, valor from curso where valor > 200;

#Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200 e menor que 300;
select curso, valor from curso where valor > 200 and valor < 300;

#Outra solução para o exercício seria esta;
SELECT CURSO, VALOR FROM CURSO WHERE VALOR BETWEEN 200 AND 300;

#Exibir as informações da tabela PEDIDOS para os pedidos realizados entre 15/04/2010 e 18/04/2010;
select * from pedido;
select * from pedido where datahora > '2010-04-15' and datahora < '2010-04-18';

#Outra solução para o exercício seria esta;
SELECT * FROM PEDIDO WHERE DATAHORA BETWEEN '2010-04-15' AND '2010-04-19';

#Exibir as informações da tabela PEDIDOS para os pedidos realizados na data de 15/04/2010
select * from pedido where date(datahora) = '2010-04-15';