USE Gufi;

--DML 

INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES        ('Admnistrador'),
			('Comum');
GO 
INSERT INTO TipoEvento 
VALUES  ('Festa01'),
		('Festa02');

INSERT INTO Instituicao (CNPJ,NomeFantasia,Endereco)
VALUES     (12345678901234,'EscolaSENAI','AlamedaBarao'),
		  (12345674543213,'Escola01','Rua01');

INSERT INTO Usuario (Nome,Email,Senha,DataCadastro,Genero,IdTipoUsuario)
VALUES   ('Nome01','Email01','Nome123','12/12/2019','Naoinformado',1),
		('Nome02','Email02','Nome321','12/12/2019','Naoinformado',2);	

INSERT INTO Evento (NomeEvento,DataEvento,Descricao,AcessoLivre,IdInstituicao,IdTipoEvento)
VALUES   ('NomeEvento01','2019/08/12','EventoDescricao',1,1,1),
	('NomeEvento02','2019/07/12','EventoDescricao',0,6,2);

INSERT INTO Presenca (IdUsuario,IdEvento,Situacao)
VALUES  (15,7,'Confirmado'),
		(16,8,'Não Confirmado');

