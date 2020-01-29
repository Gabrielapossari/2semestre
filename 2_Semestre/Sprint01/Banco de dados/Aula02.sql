CREATE DATABASE RoteiroMusical;
USE RoteiroLivros;

CREATE TABLE EstilosMusicas (
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);
CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicas (IdEstiloMusical),
	Nome VARCHAR (200) 
);
SELECT * FROM EstilosMusicas;
SELECT * FROM Artistas;

ALTER TABLE Artistas  --colocar a coluna de Data de Nascimento 
ADD DataNascimento DATE;

ALTER TABLE Artistas  --mudar a variavel de VARCHAR p CHAR 
ALTER COLUMN Nome CHAR;

ALTER TABLE Artistas --Apagar a coluna Nome da tabela Artistas 
DROP COLUMN Nome;

DROP TABLE Artistas; --Apagar a tabela Artistas 