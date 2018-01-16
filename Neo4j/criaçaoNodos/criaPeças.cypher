// Create peças
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///peças.csv" AS row
CREATE (:Peça {id: row.id, Estado: row.Estado, Modelo: row.Modelo, Nome: row.Nome});
