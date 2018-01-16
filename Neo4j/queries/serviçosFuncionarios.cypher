//Serviços de Funcionarios
MATCH(f:Funcionario)<-[:ELABORADO_POR]-(s:Serviço)
RETURN f.Nome, s.Tipo;
