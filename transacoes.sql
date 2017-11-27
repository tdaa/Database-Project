USE 'Oficina da Porta Aberta'


DELIMITER $$
CREATE PROCEDURE peçasServiços ()
BEGIN
	SELECT DISTINCT V.Marca, V.Modelo, P.Nome from Peça as P
		INNER JOIN Serviço as S
		ON S.id = P.idServiço
		INNER JOIN Veículo as V
		ON V.id = S.idVeiculo

CALL peçasServiços();

DROP PROCEDURE peçasServiços;



DELIMITER $$
CREATE PROCEDURE serviçosFuncionario (IN idF INT)
BEGIN
	SELECT S.id, S.tipo, S.Data from Serviço as S
		INNER JOIN serviçosFuncionario as SF
		ON SF.idServiço = S.id
		INNER JOIN Funcionario as F
		ON F.id = SF.idFuncionario
		where F.id = id 


SET @id = '2';
CALL serviçosFuncionario(@id);

DROP PROCEDURE serviçosFuncionario;



DELIMITER $$
CREATE PROCEDURE serviçosData (IN dataI DATE, IN dataF DATE)
BEGIN
	SELECT * from Serviço as S
		Where S.Data in (dataI,dataF)


SET @dataI = '2-01-2017';
SET @dataF = '3-01-2017';
CALL serviçosData(@dataI,@dataF);

DROP PROCEDURE serviçosData;


DELIMITER $$
CREATE PROCEDURE serviçoCarro (IN idC INT, IN idS INT)
BEGIN
	SELECT F.Nome from Funcionario as F
	INNER JOIN serviçosFuncionario as SF
	ON SF.idFuncionario = F.id
	INNER JOIN Serviço as S
	ON S.id = SF.idServiço
	INNER JOIN Veículo as V
	ON V.id = S.idVeiculo
	WHERE S.idVeiculo = idC and S.Tipo = idS


SET @idC = '2';
SET @idS = '3'
CALL serviçoCarro(@idC,@idS);

DROP PROCEDURE serviçoCarro;

DELIMITER $$
CREATE PROCEDURE criaServiço ()
BEGIN

CALL criaServiço();

DROP PROCEDURE criaServiço;

DELIMITER $$
CREATE PROCEDURE terminaServiço (IN DataF DATE, IN idF INT, IN idV INT)
BEGIN
	UPDATE Serviço
	SET Data = DataF
	WHERE id = (SELECT S.id from Serviço as S
					INNER JOIN serviçosFuncionario as SF
					ON SF.idFuncionario = idF
					WHERE S.idVeiculo = idV);

SET @DataF = '20-01-2017'
SET @idF = '2'
SET @idV = '5'

CALL terminaServiço(@DataF,@idF,@idV)

DROP PROCEDURE terminaServiço;




