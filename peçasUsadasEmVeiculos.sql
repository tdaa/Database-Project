Use Oficina;

SELECT DISTINCT V.Marca, V.Modelo, P.Nome AS `Nome da Peça` FROM Peças AS P
	INNER JOIN Servico AS S
    ON S.id = P.idServico
		INNER JOIN Veiculo AS V
        ON V.id = S.idVeiculo
			ORDER BY V.Marca