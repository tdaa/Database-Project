Use Oficina;

SELECT DISTINCT V.Marca, V.Modelo, P.Nome AS `Nome da Peça` FROM Peça AS P
	INNER JOIN Serviço AS S
    ON S.id = P.idServiço
		INNER JOIN Veiculo AS V
        ON V.id = S.idVeiculo
			ORDER BY V.Marca