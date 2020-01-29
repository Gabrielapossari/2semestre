-- comando para criar banco de dados 
CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

CREATE TABLE Generos (
	IdGenero INT PRIMARY KEY IDENTITY, 
	Nome VARCHAR (200) NOT NULL 
);
CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR (200) 
);
CREATE TABLE Livros (
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (255),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero), --chave estrangeira referencia a tabela onde ela está
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
);
SELECT * FROM Autores;   --visualizar a tabela 
SELECT * FROM Generos;
SELECT * FROM Livros;