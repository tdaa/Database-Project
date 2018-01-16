-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
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
CREATE TABLE IF NOT EXISTS `mydb`.`Contacto` (
  `Numero` INT NOT NULL,
  `id_Funcionario` INT NOT NULL,
  PRIMARY KEY (`Numero`),
  INDEX `fk_Contacto_Funcionario_idx` (`id_Funcionario` ASC),
  CONSTRAINT `fk_Contacto_Funcionario`
    FOREIGN KEY (`id_Funcionario`)
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
  `id_Veiculo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Serviço_Veiculo1_idx` (`id_Veiculo` ASC),
  CONSTRAINT `fk_Serviço_Veiculo1`
    FOREIGN KEY (`id_Veiculo`)
    REFERENCES `mydb`.`Veiculo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Serviço_Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Serviço_Funcionario` (
  `id.serviço` INT NOT NULL,
  `id.funcionario` INT NOT NULL,
  INDEX `fk_Serviço_has_Funcionario_Funcionario1_idx` (`id.funcionario` ASC),
  INDEX `fk_Serviço_has_Funcionario_Serviço1_idx` (`id.serviço` ASC),
  PRIMARY KEY (`id.serviço`, `id.funcionario`),
  CONSTRAINT `fk_Serviço_has_Funcionario_Serviço1`
    FOREIGN KEY (`id.serviço`)
    REFERENCES `mydb`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Serviço_has_Funcionario_Funcionario1`
    FOREIGN KEY (`id.funcionario`)
    REFERENCES `mydb`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Peças`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Peças` (
  `id` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `id_Serviço` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Peças_Serviço1_idx` (`id_Serviço` ASC),
  CONSTRAINT `fk_Peças_Serviço1`
    FOREIGN KEY (`id_Serviço`)
    REFERENCES `mydb`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
