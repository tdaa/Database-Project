Use Oficina;

CREATE USER 'admin@email';
SET PASSWORD FOR 'admin@email' = PASSWORD('adminportaberta');

GRANT ALL ON Oficina.* TO 'admin@email';


CREATE USER 'funcionario@email';
SET PASSWORD FOR 'funcionario@email' = PASSWORD ('funcportaberta');

GRANT INSERT ON Servico TO 'funcionario@email';
GRANT INSERT ON ServicoFunconario TO 'funcionario@email';
GRANT INSERT ON Funcionario TO 'funcionario@email';

