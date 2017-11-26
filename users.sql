Use oficina;

CREATE USER 'admin@email';
SET PASSWORD FOR 'admin@email' = PASSWORD('adminportaberta');

GRANT ALL ON oficina.* TO 'admin@email';

CREATE USER 'gestor'@'localhost';
SET PASSWORD FOR 'gestor'@'localhos' = PASSWORD('gestor');

GRANT SELECT ON oficina.Funcionario TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON oficina.Serviço TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON oficina.ServiçoFuncionario TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON oficina.Peça TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON oficina.Contacto TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON oficina.Veiculo TO 'gestor'@'localhost';

CREATE USER 'funcionario@email';
SET PASSWORD FOR 'funcionario@email' = PASSWORD ('funcportaberta');

GRANT INSERT ON Serviço TO 'funcionario@email';
GRANT INSERT ON ServiçoFuncionario TO 'funcionario@email';
GRANT INSERT ON Funcionario TO 'funcionario@email';
GRANT SELECT ON oficina.Peça TO 'gestor'@'localhost';
GRANT SELECT ON oficina.Contacto TO 'gestor'@'localhost';
GRANT SELECT ON oficina.Veiculo TO 'gestor'@'localhost';

