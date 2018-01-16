//Peças usadas em Veiculos
MATCH(p:Peça)<-[:UTILIZA]-(s:Serviço)<-[:ASSOCIADO_A]-(v:Veiculo)
RETURN v.Marca, v.Modelo, p.Nome
ORDER BY v.Marca;
