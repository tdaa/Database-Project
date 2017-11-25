SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `Oficina` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Oficina` ;

-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`Funcionario`;

CREATE TABLE IF NOT EXISTS `Oficina`.`Funcionario` (
  `id` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `DataNascimento` VARCHAR(45) NOT NULL,
  `Morada` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Contacto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`Contacto`;

CREATE TABLE IF NOT EXISTS `Oficina`.`Contacto` (
  `Numero` VARCHAR(45) NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Contacto_Funcionario_idx` (`idFuncionario` ASC),
  PRIMARY KEY (`idFuncionario`, `Numero`),
  CONSTRAINT `fk_Contacto_Funcionario`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `Oficina`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Veiculo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`Veiculo`;

CREATE TABLE IF NOT EXISTS `Oficina`.`Veiculo` (
  `id` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Matricula` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`Serviço`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`Servico`;

CREATE TABLE IF NOT EXISTS `Oficina`.`Servico` (
  `id` INT NOT NULL,
  `Data` DATETIME NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Notas` VARCHAR(80) NULL,
  `idVeiculo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Servico_Veiculo1_idx` (`idVeiculo` ASC),
  CONSTRAINT `fk_Servico_Veiculo1`
    FOREIGN KEY (`idVeiculo`)
    REFERENCES `Oficina`.`Veiculo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Serviço_Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`ServicoFuncionario`;

CREATE TABLE IF NOT EXISTS `Oficina`.`ServicoFuncionario` (
  `idServico` INT NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Serviço_has_Funcionario_Funcionario1_idx` (`idFuncionario` ASC),
  INDEX `fk_Servico_has_Funcionario_Servico1_idx` (`idServico` ASC),
  PRIMARY KEY (`idServico`, `idFuncionario`),
  CONSTRAINT `fk_Servico_has_Funcionario_Servico1`
    FOREIGN KEY (`idServico`)
    REFERENCES `Oficina`.`Servico` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Servico_has_Funcionario_Funcionario1`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `Oficina`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Peças`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Oficina`,`Peças`;

CREATE TABLE IF NOT EXISTS `Oficina`.`Peças` (
  `id` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(100) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `idServico` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Peças_Servico1_idx` (`idServico` ASC),
  CONSTRAINT `fk_Peças_Servico1`
    FOREIGN KEY (`idServico`)
    REFERENCES `Oficina`.`Servico` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

