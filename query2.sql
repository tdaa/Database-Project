	USE Oficina;
    
    SELECT DISTINCT F.Nome AS Nome FROM Funcionario AS F
		INNER JOIN ServicoFuncionario AS SF
		ON SF.idFuncionario = F.id
			INNER JOIN Servico AS S
            ON S.id = SF.idServico
				WHERE S.Tipo = 'Mudança de oleo'