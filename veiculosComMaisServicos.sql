Use Oficina;

CREATE VIEW veiculoComMaisServiços AS
SELECT Veiculo.Marca,  COUNT(*) AS `Nº de Serviços` FROM Serviço
	INNER JOIN Veiculo
    ON Veiculo.id = Serviço.idVeiculo
    GROUP BY Veiculo.id
    ORDER BY `Nº de Serviços` DESC;
    
SELECT * FROM veiculoComMaisServiços;