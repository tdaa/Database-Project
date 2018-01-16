//Veiculos com mais serviços
MATCH(:Serviço)<-[:ASSOCIADO_A]-(v:Veiculo)
RETURN v.Marca, count(*) as ct
order by ct desc;
