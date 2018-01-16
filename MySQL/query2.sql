	USE Oficina;
    
    SELECT DISTINCT F.Nome AS Nome FROM Funcionario AS F
		INNER JOIN ServiçoFuncionario AS SF
		ON SF.idFuncionario = F.id
			INNER JOIN Serviço AS S
            ON S.id = SF.idServiço
				WHERE S.Tipo = 'Mudança de oleo'