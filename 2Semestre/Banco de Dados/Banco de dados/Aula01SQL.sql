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

INSERT INTO Autores (NomeAutor)
VALUES ('Gabriela'),
('Julia'),
('Isabella'),
('gabriela'),
('Julia');

INSERT INTO Generos (Nome)
VALUES ('Ficcao'),
('Terror'),
('Comedia'),
('Infantil'),
('Mitologia');

ALTER TABLE Livros
DROP COLUMN Musica;

INSERT INTO Livros (Titulo,IdGenero,IdAutor)
VALUES ('livro1', 1 , 1 ),
('livro2',2 ,2 ),
('livro3',3, 3 ),
('livro4',4,4),
('livro5',5,5);

UPDATE Generos
SET Nome = 'Biografia'
WHERE IdGenero =3;

UPDATE Livros
SET IdGenero = 4
WHERE IdGenero = 2;

DELETE FROM Livros
WHERE IdAutor = 1;