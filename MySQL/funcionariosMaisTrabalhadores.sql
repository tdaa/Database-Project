USE Oficina;

CREATE VIEW funcionariosMaisTrabalhadores AS
	SELECT F.Nome, COUNT(*) AS `Nº de Serviços` FROM ServiçoFuncionario AS SF
		INNER JOIN Funcionario AS F
        ON F.id = SF.idFuncionario
			GROUP BY F.id 
            ORDER BY `Nº de Serviços` DESC;
            
SELECT * FROM funcionariosMaisTrabalhadores;