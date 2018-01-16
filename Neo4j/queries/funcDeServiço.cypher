//Funcionario de Serviço
MATCH(f:Funcionario)<-[:ELABORADO_POR]-(:Serviço {Tipo: "Mudança de oleo"})
RETURN DISTINCT f.Nome;
