-- Define o banco de dados que será utilizado
USE Peoples_MANHA;

-- Insere dois funcionários
INSERT INTO Funcionarios (Nome, Sobrenome) 
VALUES	('Catarina', 'Strada')
		,('Tadeu', 'Vitelli');

-- Atualiza o valor da coluna DataNascimento
UPDATE Funcionarios SET DataNascimento = '1993-03-17';

INSERT INTO Usuario (IDUsuario,Email,Senha,IDTipo_Usuario)
VALUES (1,'Admin@admin.com','123',1)
		,(2,'Catarina@hotmail.com','321',2);

INSERT INTO Tipo_Usuario (IDTipo_Usuario,Titulo )
VALUES (1,'Administrador')
		,(2,'Comum');

