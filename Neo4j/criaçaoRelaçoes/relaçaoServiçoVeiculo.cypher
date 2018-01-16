//relação serviço-veiculo
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///serviços.csv" AS row
MATCH (s:Serviço {id: row.id})
MATCH (v:Veiculo {id: row.idVeiculo})
MERGE (v)-[:ASSOCIADO_A]->(s);
