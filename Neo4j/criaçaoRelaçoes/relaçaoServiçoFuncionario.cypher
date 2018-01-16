//relação serviço-Funcionario
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///sfunc.csv" AS row
MATCH (s:Serviço {id: row.idServiço})
MATCH (f:Funcionario {id: row.idFuncionario})
MERGE (s)-[fu:ELABORADO_POR]->(f);
