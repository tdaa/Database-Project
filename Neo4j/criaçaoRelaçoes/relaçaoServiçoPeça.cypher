//relação serviço-peça
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///peças.csv" AS row
MATCH (p:Peça {id: row.id})
MATCH (s:Serviço {id: row.idServiço})
MERGE (s)-[:UTILIZA]->(p);
