USE SpMedManha_;

INSERT INTO Especialidades (Nome_Especialidade)
VALUES				('Acupuntura')
					,('Anestesiologia')
					,('Angiologia')
					,('Cardiologia')
					,('Cirurgia cardiovascular')
					,('Cirurgia da Mao')
					,('Cirurgia do Apelho Digestivo')
					,('Cirurgia Geral')
					,('Cirurgia Pediátrica')
					,('Cirurgia Plástica')
					,('Cirurgia Torácica')
					,('Cirurgia Vascular')
					,('Dermatologia')
					,('Radioterapia')
					,('Urologia')
					,('Pediatria')
					,('Psiquiatria');
GO
INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES			 ('Admin')
				,('Medico')
				,('Paciente')
				 ,('Paciente')
				,('Medico')
				,('Paciente')
				 ,('Paciente')
				,('Medico')
				,('Paciente')
				,('Paciente');
GO

INSERT INTO Situacao (Titulo_Situacao)
VALUES			 ('Pendente')
				,('Aceito')
				,('Recusado')
				 ,('Pendente')
				,('Aceito')
				,('Recusado')
				 ,('Pendente')
				,('Aceito')
				,('Recusado')
				 ,('Pendente');
				
GO
INSERT INTO Endereco (Estado,Numero,Rua,Cidade,CEP)
VALUES			 ('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223),
('SaoPaulo',102,'rua01','SaoPaulo',12231223);
						
GO 
INSERT INTO Usuario (Email,Senha,ID_TipoUsuario)
VALUES			 ('ricardo.lemos@spmedicalgroup.com.br','123',1)
				,('roberto.possarle@spmedicalgroup.com.br','321',2)
				,('helena.souza@spmedicalgroup.com.br','432',3)
				,('ligia@gmail.com','1283',3)
				,('alexandre@gmail.com','321',2)
				,('fernando@gmail.com','432',3)
				,('henrique@gmail.com','123',3)
				,('joao@hotmail.com','321',2)
				,('bruno@gmail.com','432',3)
				,('mariana@outlook.com','324',3);
GO
INSERT INTO Prontuario (Nome_Paciente,RG,CPF,DataNascimento,Telefone)
VALUES			 ('Ligia',43522543-5,94839859000,13/10/1983, 93456-7654)
				,('Alexandre',32654345-7,73556944057,23/07/2001, 98765-6543)
				,('Fernando',54636525-3,16839338002,10/10/1978, 97208-4453)
				,('Henrique',54366362-5,14332654765,13/10/1985, 3456-6543)
				,('João',32544444-1,91305348010,27/08/1975, 7656-6377)
				,('Bruno',54566266-7,79799299004,21/03/1972, 95436-8769)
				,('Mariana',54566266-8,13771913039,05/03/2018, 2323-4565);
GO

INSERT INTO Clinica (CNPJ,Horario,Razao_Social,Nome_Fantasia)
VALUES			 ('86.400.902/000','12:00','SP Medical Group','Clinica Possarle '),
					('86.400.982/000','16:00','SP Medical Group','Clinica 02'),
					('86.400.992/000','15:00','SP Medical Group','Clinica 03');			
GO 
INSERT INTO Medicos (Nome_Medico,CRM,ID_Especialidade,ID_Usuario,ID_Clinica)
VALUES   ('RicardoLemos','54359',1,1,1),
		('RobertoPossarle','53452',2,2,2),
		 ('HelenaStrada','65463',3,3,3);
		 
GO 
INSERT INTO Consulta (Horario_Consulta,Descricao,ID_Medico,ID_Prontuario,ID_Situacao)
VALUES   ('15:00','Descricao01',4,1,1),
			('11:00','Descricao02',5,2,2),
			('11:00','Descricao03',6,3,3),
			('15:00','Descricao04',4,4,4),
			('11:00','Descricao05',5,5,5),
			('11:00','Descricao06',6,6,6),
			('11:00','Descricao07',6,7,7);
			
		
