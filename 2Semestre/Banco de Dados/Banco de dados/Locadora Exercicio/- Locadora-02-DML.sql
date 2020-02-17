USE Locadora_Manha;

SELECT * FROM Veiculo;
SELECT * FROM Empresa;
SELECT * FROM Cliente;
SELECT * FROM Modelo;
SELECT * FROM Marca;

INSERT INTO Empresa (Nome)
VALUES		('Empresa01'),
			('Empresa02'),
			('Empresa03'),
			('Empresa04')
GO
INSERT INTO Cliente (Nome,CPF)
VALUES			('Nome01','21321223'),
				('Nome02','21321923'),
				('Nome03','21320223'),
				('Nome04','21327223')				
GO
INSERT INTO Veiculo (IdEmpresa,Placa,IdModelo)
VALUES			(1,'095867',1),
				(2,'756482',2),
				(3,'748573',3)
GO
INSERT INTO Marca (Nome)
VALUES		('Marca01'),
			('Marca02'),
			('Marca03')
GO
INSERT INTO Modelo (IdMarca,Nome)
VALUES			(1,'Modelo01'),
				(2,'Modelo01'),
				(3,'Modelo01')
GO