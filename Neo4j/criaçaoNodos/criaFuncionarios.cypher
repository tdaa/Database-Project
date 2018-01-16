// Create funcionarios
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///funcionarios.csv" AS row
CREATE (:Funcionario {id: row.id, Nome: row.Nome, DataNascimento: row.DataNascimento, Morada: row.Morada, Email: row.Email});
