use oficina;

SELECT F.Nome, S.Tipo FROM Serviço AS S
	INNER JOIN ServiçoFuncionario AS SF
    ON S.id = SF.idServiço
		INNER JOIN Funcionario AS F
		ON F.id = SF.idFuncionario;