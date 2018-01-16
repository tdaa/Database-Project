// Create serviços
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///serviços.csv" AS row
CREATE (:Serviço {id: row.id, Data: row.Data, Tipo: row.Tipo, Notas: row.Notas, idVeiculo: row.idVeiculo});
