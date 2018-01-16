//Total Serviços de Funcionarios
MATCH(f:Funcionario)<-[:ELABORADO_POR]-(:Serviço)
RETURN f.Nome, count(*)
ORDER BY f.Nome;
