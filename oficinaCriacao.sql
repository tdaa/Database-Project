SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `id` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `DataNascimento` DATETIME NOT NULL,
  `Morada` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Contacto` (
  `Numero` VARCHAR(45) NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Contacto_Funcionario_idx` (`idFuncionario` ASC),
  PRIMARY KEY (`Numero`, `idFuncionario`),
  CONSTRAINT `fk_Contacto_Funcionario`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `mydb`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Veiculo` (
  `id` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Matrícula` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Serviço`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Serviço` (
  `id` INT NOT NULL,
  `Data` DATETIME NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Notas` VARCHAR(45) NULL,
  `idVeiculo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Serviço_Veiculo1_idx` (`idVeiculo` ASC),
  CONSTRAINT `fk_Serviço_Veiculo1`
    FOREIGN KEY (`idVeiculo`)
    REFERENCES `mydb`.`Veiculo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ServiçoFuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ServiçoFuncionario` (
  `idServiço` INT NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Serviço_has_Funcionario_Funcionario1_idx` (`idFuncionario` ASC),
  INDEX `fk_Serviço_has_Funcionario_Serviço1_idx` (`idServiço` ASC),
  PRIMARY KEY (`idServiço`, `idFuncionario`),
  CONSTRAINT `fk_Serviço_has_Funcionario_Serviço1`
    FOREIGN KEY (`idServiço`)
    REFERENCES `mydb`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Serviço_has_Funcionario_Funcionario1`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `mydb`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Peça`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Peça` (
  `id` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `idServiço` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Peças_Serviço1_idx` (`idServiço` ASC),
  CONSTRAINT `fk_Peças_Serviço1`
    FOREIGN KEY (`idServiço`)
    REFERENCES `mydb`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
