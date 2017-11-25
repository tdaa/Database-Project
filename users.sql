Use oficina;

CREATE USER 'admin@email';
SET PASSWORD FOR 'admin@email' = PASSWORD('adminportaberta');

GRANT ALL ON oficina.* TO 'admin@email';


CREATE USER 'funcionario@email';
SET PASSWORD FOR 'funcionario@email' = PASSWORD ('funcportaberta');

GRANT INSERT ON Serviço TO 'funcionario@email';
GRANT INSERT ON ServiçoFuncionario TO 'funcionario@email';
GRANT INSERT ON Funcionario TO 'funcionario@email';

