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
	valor double not null,
	primary key (codigo),
    index fk_tipo(tipo),
    index fk_instrutor(instrutor),
    foreign key (tipo) references tipo (CODIGO),
	foreign key (instrutor) references instrutor (codigo)
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
	codigo int unsigned not null auto_increment,
    aluno integer unsigned not null,
    datahora datetime not null,
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
