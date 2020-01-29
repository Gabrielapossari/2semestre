CREATE DATABASE OPTUS_MANHA;
USE OPTUS_MANHA

CREATE TABLE TiposUsuario (
		IdTipoUsuario INT PRIMARY KEY IDENTITY,
		Titulo VARCHAR (200)
);
CREATE TABLE Usuarios (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuario (IdTipoUsuario)
);
CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);
CREATE TABLE Estilos (
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);
CREATE TABLE Albuns (
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	DataLancamento DATE,
	QtdMinutos INT,
	Visualizacao BIGINT,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

SELECT * FROM TiposUsuario;
SELECT * FROM Usuarios;
SELECT * FROM Artistas;
SELECT * FROM Albuns;
SELECT * FROM Estilos;

INSERT INTO TiposUsuario (Titulo)
VALUES ('Administrador'),
	('Comum'),
	('Administrador'),
	('Comum'),
	('Administrador');

INSERT INTO Usuarios (Nome,IdTipoUsuario)
VALUES ('Usuario1',1 ),
('Usuario2',2),
('Usuario3', 3),
('Usuario4',4 ),
('Usuario5',5 );

INSERT INTO Artistas (Nome)
VALUES ('Artista01'),
('Artista02'),
('Artista03'),
('Artista04'),
('Artista05');

INSERT INTO Estilos (Nome)
VALUES ('Estilo01'),
('Estilo02'),
('Estilo03'),
('Estilo04'),
('Estilo05');

INSERT INTO Albuns (Nome,DataLancamento,QtdMinutos,Visualizacao,IdArtista,IdEstilo)
VALUES ('Nome01','2019/12/12',10,98,1,1),
('Nome02','2019/12/12',10,98,2,2),
('Nome03','2019/12/12',10,98,3,3),
('Nome04','2019/12/12',10,98,4,4),
('Nome05','2019/12/12',10,98,5,5);

UPDATE Artistas 
SET Nome = 'Artistanovo'
WHERE IdArtista =1;

UPDATE TiposUsuario
SET Titulo = 'Administradornovo'
WHERE IdTipoUsuario = 5;

UPDATE Albuns
SET Visualizacao = '09'
WHERE IdAlbum = 4;

DELETE FROM Albuns
WHERE IdAlbum = 3;