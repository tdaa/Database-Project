// Create veiculos
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///veiculos.csv" AS row
CREATE (:Veiculo {id:row.id,  Marca: row.Marca, Modelo: row.Modelo, Matricula: row.Matricula});
