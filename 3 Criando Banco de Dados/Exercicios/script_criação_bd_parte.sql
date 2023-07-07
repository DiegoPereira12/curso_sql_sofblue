create database gerenciador_matriculas;

use gerenciador_matriculas;

create table tipo
(
	codigo integer unsigned not null auto_increment,
    tipo varchar(32) not null,
    primary key (codigo)
);

create table instrutor
(
	codigo integer unsigned not null auto_increment,
    instrutor varchar(64) not null,
    telefone varchar(45) not null,
    primary key (codigo)
);

create table curso
(
	codigo integer unsigned not null auto_increment,
    curso varchar(64) not null,
    tipo integer unsigned not null,
    instrutor integer unsigned not null,
    valor double not null,
	primary key (codigo),
    index fk_tipo(tipo),
    index fk_instrutor(instrutor),
    constraint fk_curso_tipo foreign key (tipo) references tipo (codigo),
    constraint fk_curso_instrutor foreign key (instrutor) references instrutor (codigo)
);

create table aluno 
(
	codigo int unsigned not null auto_increment,
    aluno varchar(64) not null,
    endereco varchar(230) not null,
    email varchar(128) not null,
    primary key (codigo)
);

create table pedido
(
	codigo integer unsigned not null auto_increment,
    aluno integer unsigned not null,
    datahora datetime not null,
    primary key (codigo),
    index  fk_aluno(aluno),
    foreign key(aluno) references aluno(codigo)
);

create table pedido_detalhe
(
	pedido integer unsigned not null,
    curso integer unsigned not null,
    valor double not null,
    index fk_pedido(pedido),
    index fk_curso(curso),
    primary key(pedido, curso),
    foreign key(pedido) references pedido(codigo),
	foreign key(curso) references curso(codigo)

);

# Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10 caracteres
alter table aluno add data_nascimento varchar(10);

# Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE
alter table aluno change data_nascimento nascimento date null;

# Crie um novo índice na tabela ALUNO, para o campo ALUNO
alter table aluno add index index_aluno(aluno);

# Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres
alter table instrutor add email varchar(100) not null;

# Crie um novo índice na tabela CURSO, para o campo INSTRUTOR - Informação duplicada
alter table curso add index index_instrutor(instrutor);

# Remova o campo EMAIL da tabela INSTRUTOR
alter table instrutor drop email;

