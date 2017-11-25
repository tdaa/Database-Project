Use Oficina;

CREATE VIEW veiculoComMaisServicos AS
SELECT Veiculo.Marca,  COUNT(*) AS 'Nº de Serviços' FROM Servico
	INNER JOIN Veiculo
    ON Veiculo.id = Servico.idVeiculo
    GROUP BY Veiculo.id
    ORDER BY 'Nº de Serviços' DESC;
    
SELECT * FROM veiculoComMaisServicos;