USE 'Oficina da Porta Aberta'


DELIMITER $$
CREATE PROCEDURE peçasServiços ()
BEGIN
	SELECT DISTINCT V.Marca, V.Modelo, P.Nome from Peça as P
		INNER JOIN Serviço as S
		ON S.id = P.idServiço
		INNER JOIN Veículo as V
		ON V.id = S.idVeiculo;
END$$

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
		where F.id = idF;

END$$

SET @idF = '2';
CALL serviçosFuncionario(@idF);

DROP PROCEDURE serviçosFuncionario;



DELIMITER $$
CREATE PROCEDURE serviçosData (IN dataI DATE, IN dataF DATE)
BEGIN
	SELECT * FROM Serviço AS S
		WHERE S.Data BETWEEN dataI AND dataF;

END$$

SET @dataI = '2017-09-22';
SET @dataF = '2017-11-06';
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
	WHERE S.idVeiculo = idC and S.Tipo = idS;

END$$

SET @idC = '2';
SET @idS = '3';
CALL serviçoCarro(@idC,@idS);

DROP PROCEDURE serviçoCarro;


DELIMITER $$
CREATE PROCEDURE terminaServiço (IN DataF DATE, IN idF INT, IN idV INT)
BEGIN
	UPDATE Serviço
	SET Data = DataF
	WHERE id = (SELECT S.id from Serviço as S
					INNER JOIN serviçosFuncionario as SF
					ON SF.idFuncionario = idF
					WHERE S.idVeiculo = idV);

END$$

SET @DataF = '2017-01-20'
SET @idF = '2'
SET @idV = '5'

CALL terminaServiço(@DataF,@idF,@idV)

DROP PROCEDURE terminaServiço;


DELIMITER $$
CREATE PROCEDURE novo_Serviço_Com_Veiculo_Novo (IN ModeloV VARCHAR(45), IN MarcaV VARCHAR(45), IN MatriculaV VARCHAR(45), IN dataS DATETIME , IN NotasS VARCHAR(100), IN TipoS VARCHAR(45), IN idF INT)
BEGIN
	DECLARE idV INT;
    DECLARE idS INT;
    DECLARE erro INT;
    DECLARE sucesso INT;
    DECLARE numeroServiços INT;
    START TRANSACTION;
    
       SET autocommit = 0;
    
		SET idV = (Select (max(ID) +1) From Veiculo);
        SET idS = (Select (max(ID) +1) From Serviço);
        
		INSERT INTO Veiculo
			(id,Marca,Modelo,Matricula)
			VALUES
				(idV,MarcaV,ModeloV,MatriculaV);
		
        SET erro = @@error_count;
        IF(erro <> 0) THEN SET sucesso = 0;
        END IF;
        
        INSERT INTO Serviço
			(id, Data, Tipo, Notas, idVeiculo)
				VALUES
					(idS, dataS, TipoS, NotasS, idV);
                    
		SET erro = @@error_count;
		IF(erro <> 0) THEN SET sucesso = 0;
        END IF;
        
        INSERT INTO ServiçoFuncionario
			(idServiço, idFuncionario)
            VALUES
				(idS, idF);
                
		SET erro = @@error_count;
		IF(erro <> 0) THEN SET sucesso = 0;
        END IF;
        
        IF(sucesso = 0) 
			THEN ROLLBACK;
			ELSE COMMIT;
		END IF;
                    
END $$

SET @ModeloV = 'Classe A';
SET @MarcaV = 'Mercedes-Benz';
SET @MatriculaV = 'AHFKSPEL';
SET @NotasS = NULL;
SET @dataS = CURDATE();
SET @TipoS = 'Mudança de oleo';


CALL novo_Serviço_Com_Veiculo_Novo (@ModeloV,@MarcaV,@MatriculaV, @dataS, @NotasS, @TipoS);

DROP PROCEDURE novo_Serviço_Com_Veiculo_Novo;

DELIMITER $$
CREATE PROCEDURE novo_Serviço_Com_Veiculo_Existente (IN MatriculaV VARCHAR(45), IN dataS DATETIME , IN NotasS VARCHAR(100), IN TipoS VARCHAR(45), IN idF INT)
BEGIN
	DECLARE idV INT;
    DECLARE idS INT;
    DECLARE erro INT;
    DECLARE sucesso INT;
    DECLARE numeroServiços INT;
    START TRANSACTION;
    
       SET autocommit = 0;
    
		SET idV = (SELECT V.id FROM Veiculo AS V
							WHERE V.Matricula = MatriculaV);
                            
        SET idS = (Select (max(ID) +1) From Serviço);
		
        SET erro = @@error_count;
        IF(erro <> 0) THEN SET sucesso = 0;
        END IF;

        
        INSERT INTO Serviço
			(id, Data, Tipo, Notas, idVeiculo)
				VALUES
					(idS, dataS, TipoS, NotasS, idV);
                    
		SET erro = @@error_count;
		IF(erro <> 0) THEN SET sucesso = 0;
        END IF;
        
        INSERT INTO ServiçoFuncionario
			(idServiço, idFuncionario)
            VALUES
				(idS, idF);
                
		SET erro = @@error_count;
		IF(erro <> 0) THEN SET sucesso = 0;
        END IF;
        
        IF(sucesso = 0) 
			THEN ROLLBACK;
			ELSE COMMIT;
		END IF;
                    
END $$

SET @dataS = CURDATE();
SET @TipoS = 'Substituiçao de corrente';
SET @NotasS = 'corrente a fazer barulho';
SET @MatriculaV = 'H4TM1AK3';

CALL novo_Serviço_Com_Veiculo_Existente (@MatriculaV, @dataS, @NotasS, @TipoS);


