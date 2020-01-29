CREATE DATABASE RoteiroMusical;
USE RoteiroMusical

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

ALTER TABLE EstilosMusicas 
ADD Descricao VARCHAR (200);

INSERT INTO EstilosMusicas (Nome,Descricao)    --comando de inserir dados
VALUES ('PAGODE','Musica Popular Brasileira'),
		('Jazz','Estilo Musical'),
		('Pop','Estilo Popular');

SELECT * FROM EstilosMusicas;

ALTER TABLE Artistas 
ADD Nome VARCHAR (200);

ALTER TABLE Artistas
DROP COLUMN DataNascimento;

INSERT INTO Artistas (IdEstiloMusical,Nome)
VALUES (2, 'Zeca'),
	(3,'Frank'),
	(2,'GABRIELA');

SELECT * FROM Artistas;

--UPDATE ALTER DADOS DA TABELA 

UPDATE Artistas  --mudando o nome zeca p alcione 
SET Nome = 'alcione'
WHERE IdArtista = 7;

UPDATE Artistas  --mudando o estilo musical de samba para pagade de acordo com o ID
SET IdEstiloMusical = 1
WHERE IdArtista = 5;

--APAGAR UMA LINHA DE DADOS

DELETE FROM Artistas 
WHERE IdArtista = 5;

