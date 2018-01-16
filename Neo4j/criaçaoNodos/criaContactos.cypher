//Create Contacto
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///contactos.csv" AS row
CREATE (:Contacto {Numero: row.Numero});
