USE Oficina;

DELIMITER $$

CREATE PROCEDURE procuraQualFuncionario(IN matriculaVeiculo VARCHAR(45), IN tipoServico VARCHAR(45))
BEGIN
		SELECT DISTINCT F.nome AS Nome, C.Numero As Numeros FROM Contacto as C
			INNER JOIN Funcionario as F
			ON F.id=C.idFuncionario
				INNER JOIN ServicoFuncionario as SF
				ON SF.idFuncionario = F.id
					INNER JOIN Servico as S
					ON SF.idServico = S.id
						INNER JOIN Veiculo as V
						ON V.id = S.idVeiculo
							WHERE V.Matricula = matriculaVeiculo OR S.Tipo = tipoServico;
                        
END $$                        

CALL procuraQualFuncionario('CYEA2I65', 'Limpeza dos filtors do ar');
				
                        

	

						
	
