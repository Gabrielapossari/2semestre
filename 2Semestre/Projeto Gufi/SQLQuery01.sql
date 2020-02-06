--Criando um banco de dados Gufi
CREATE DATABASE Gufi;
--definindo o banco de dados 
USE Gufi;

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY
	,TituloTipoUsuario VARCHAR (255) NOT NULL UNIQUE 
);
CREATE TABLE TipoEvento (
	IdTipoEvento INT PRIMARY KEY IDENTITY
	,TituloTipoEvento VARCHAR (255) NOT NULL UNIQUE 
);
CREATE TABLE Instituicao (
	IdInstituicao INT PRIMARY KEY IDENTITY 
	,CNPJ CHAR (14) NOT NULL UNIQUE 
	,NomeFantasia VARCHAR (255) UNIQUE NOT NULL
	,Endereco VARCHAR (255) NOT NULL
);
CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (255) NOT NULL 
	,Email VARCHAR (255) NOT NULL UNIQUE 
	,Senha VARCHAR (255) NOT NULL 
	,DataCadastro DateTime2 
	,Genero VARCHAR (255)
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);