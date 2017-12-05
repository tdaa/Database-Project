USE Oficina;

	SELECT DISTINCT F.nome AS Nome FROM Funcionario AS F
			INNER JOIN ServiçoFuncionario as SF
			ON SF.idFuncionario = F.id
				INNER JOIN Serviço as S
				ON SF.idServiço = S.id
					INNER JOIN Veiculo as V
					ON V.id = S.idVeiculo
						WHERE V.Matricula = 'SHH8039K';
                        

				
                        

	

						
	
