--DQL 
USE Gufi;

SELECT * FROM TipoEvento;
GO
SELECT * FROM TipoUsuario;
GO
SELECT * FROM Evento;
GO
SELECT * FROM Usuario;
GO
SELECT * FROM Instituicao;
GO
SELECT * FROM Presenca;
GO

--MOSTRAR TODOS OS USUARIOS CADASTRADOS 
SELECT Usuario.Nome, Usuario.Email,Usuario.Senha,Usuario.DataCadastro,Usuario.Genero,TipoUsuario.IdTipoUsuario FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario;

--MOSTRAR CNP NOME FANTASIA E ENDERECO DA INSTITUICAO
SELECT Instituicao.CNPJ,Instituicao.NomeFantasia,Instituicao.Endereco FROM Instituicao;

--MOSTAR TODOS OS EVENTOS CADASTRADOS E TAMBEM SÓ O PUBLICO 
SELECT Evento.NomeEvento,Evento.DataEvento,Descricao,AcessoLivre,Instituicao.NomeFantasia,TipoEvento.IdTipoEvento FROM Instituicao
INNER JOIN Evento ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento=TipoEvento.IdTipoEvento
WHERE AcessoLivre = 1;

--MOSTRAR O TITULO DO TIPO DE EVENTO 
SELECT TipoEvento.TituloTipoEvento FROM TipoEvento

--MOSTRAR O EVENTO DE UM DETERMINADO USUARIO
SELECT Evento.NomeEvento, TipoEvento.IdTipoEvento, Evento.DataEvento, Evento.AcessoLivre, Evento.Descricao, Usuario.Nome, Instituicao.NomeFantasia,Presenca.Situacao FROM Presenca
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario
INNER JOIN Evento ON Presenca.IdEvento = Evento.IdEvento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
WHERE Presenca.IdUsuario = 15 AND Presenca.Situacao = 'Confirmado';

--Listar os eventos aparacendo "Publico" "Privado"
SELECT Evento.NomeEvento,Evento.DataEvento,Evento.Descricao,(CASE WHEN AcessoLivre = 1 THEN  'LIVRE' ELSE 'PRIVADO'END) as TipoAcesso,Evento.AcessoLivre,Instituicao.NomeFantasia,TipoEvento.IdTipoEvento FROM Instituicao
INNER JOIN Evento ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento=TipoEvento.IdTipoEvento



