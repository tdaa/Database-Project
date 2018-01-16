//Funcionario de Veiculo
MATCH(f:Funcionario)<-[:ELABORADO_POR]-(:Serviço)<-[:ASSOCIADO_A]-(:Veiculo {Matricula: "SHH8039K"})
RETURN DISTINCT f.Nome;
