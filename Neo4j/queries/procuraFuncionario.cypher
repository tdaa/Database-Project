//procura Funcionario
MATCH(c:Contacto)<-[:TEM]-(f:Funcionario)<-[:ELABORADO_POR]-(s:Serviço)<-[:ASSOCIADO_A]-(v:Veiculo)
WHERE v.Matricula = "CYEA2I65" OR s.Tipo = "Limpeza dos filtros do ar"
RETURN DISTINCT f.Nome, c.Numero;
