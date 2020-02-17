use Sp_MedGroup_Manha_;
GO
SELECT * FROM Medicos;
GO
SELECT * FROM TipoUsuario;
GO
SELECT * FROM Prontuario;
GO
SELECT * FROM Clinica;
GO
SELECT * FROM Usuario;
GO
SELECT * FROM Endereco;
GO
SELECT * FROM Consulta;
GO
SELECT * FROM Especialidades;
GO
SELECT * FROM Situacao;

--INNER JOIN 
SELECT * FROM Consulta
INNER JOIN Prontuario ON Prontuario.ID_Prontuario=Consulta.ID_Prontuario
INNER JOIN Medicos ON Consulta.ID_Medico=Medicos.ID_Medico
INNER JOIN Especialidades ON Especialidades.ID_Especialidade=Medicos.ID_Especialidade
INNER JOIN Clinica ON Clinica.ID_Clinica=Medicos.ID_Clinica

--Contagem do número de usuarios 
SELECT COUNT (ID_Usuario) AS 'QtsUsuarios'
FROM Usuario
--Funcao que retorna a quantidade de medicos de uma determinada especialidade 
SELECT COUNT (ID_Medico) AS 'QtsMedicos'
FROM Medicos
WHERE ID_Especialidade = 3;
--Converte a DataNascimento e Idade
select Nome_Paciente,RG,CPF,CONVERT (VARCHAR(10),DataNascimento, 110) as 'Data Nascimento',YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(dataNascimento),1,0) AS IDADE,Telefone,ID_Endereco,ID_Usuario from Prontuario

