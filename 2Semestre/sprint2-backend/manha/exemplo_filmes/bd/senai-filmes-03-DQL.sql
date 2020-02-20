USE Filmes_manha;
GO

SELECT * FROM Generos;
SELECT * FROM Filmes;

SELECT IdGenero, Nome from Generos;


UPDATE Filmes SET Titulo = 'teste', IdGenero = 1 WHERE IdFilme= 1

UPDATE Filmes SET Titulo = 'teste atualizar',IdGenero = 2 WHERE IdFilme= 3

SELECT  IdFilme,Titulo,Filmes.IdGenero,Generos.Nome  FROM Filmes
INNER JOIN Generos ON Generos.IdGenero = Filmes.IdFilme