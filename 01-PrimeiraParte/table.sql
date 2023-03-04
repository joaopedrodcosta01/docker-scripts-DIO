USE meubanco;

CREATE TABLE dados (
	AlunoID int,
	Nome varchar (50),
	Sobrenome varchar(50),
	Endereco varchar(150),
	Cidade varchar(50),
	Host varchar(50)
);

/* Para executar este arquivo basta utilizar o comando :
SOURCE './local_do_arquivo.sql';
e ele será importado! 
*/