-- Cria o banco de dados
CREATE DATABASE Peoples_MANHA;

-- Define qual banco de dados será utilizado
USE Peoples_MANHA;

-- Cria a tabela Funcionarios
CREATE TABLE Funcionarios 
(
	IdFuncionario	INT IDENTITY PRIMARY KEY
	,Nome			VARCHAR(200) NOT NULL
	,Sobrenome		VARCHAR(255)
);
GO

CREATE TABLE Tipo_Usuario 
(
	IDTipo_Usuario INT PRIMARY KEY
	,Titulo VARCHAR(255)
);

CREATE TABLE Usuario 
(	
	IDUsuario INT PRIMARY KEY 
	,Email VARCHAR (255) UNIQUE NOT NULL 
	,Senha VARCHAR (255)NOT NULL 
	,IDTipo_Usuario INT FOREIGN KEY REFERENCES Tipo_Usuario  (IDTipo_Usuario)
);

-- Adiciona a coluna DataNascimento na tabela Funcionarios


DROP TABLE Usuario;