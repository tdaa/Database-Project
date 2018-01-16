//relação funcionario-contacto
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///contactos.csv" AS row
MATCH (c:Contacto {Numero: row.Numero})
MATCH (f:Funcionario {id: row.idFuncionario})
MERGE (f)-[:TEM]->(c);
