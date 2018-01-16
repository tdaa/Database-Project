Use Oficina;

SELECT F.Nome, COUNT(*) AS `Nº de Serviços` FROM ServiçoFuncionario AS SF
	INNER JOIN Funcionario AS F
    ON F.id = SF.idFuncionario
		group by (SF.idFuncionario);
        
        
(Select (max(ID) +1) From Veiculo);