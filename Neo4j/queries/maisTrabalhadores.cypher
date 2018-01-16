//Mais Trabalhadores
MATCH(f:Funcionario)<-[:ELABORADO_POR]-(:Serviço)
RETURN f.Nome, count(*) AS cnt
ORDER BY cnt DESC;
