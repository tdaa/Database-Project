SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `oficina`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`Funcionario` (
  `id` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `DataNascimento` DATETIME NOT NULL,
  `Morada` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`Contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`Contacto` (
  `Numero` VARCHAR(45) NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Contacto_Funcionario_idx` (`idFuncionario` ASC),
  PRIMARY KEY (`Numero`, `idFuncionario`),
  CONSTRAINT `fk_Contacto_Funcionario`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `oficina`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`Veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`Veiculo` (
  `id` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Matrícula` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`Serviço`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`Serviço` (
  `id` INT NOT NULL,
  `Data` DATETIME NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Notas` VARCHAR(45) NULL,
  `idVeiculo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Serviço_Veiculo1_idx` (`idVeiculo` ASC),
  CONSTRAINT `fk_Serviço_Veiculo1`
    FOREIGN KEY (`idVeiculo`)
    REFERENCES `oficina`.`Veiculo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`ServiçoFuncionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`ServiçoFuncionario` (
  `idServiço` INT NOT NULL,
  `idFuncionario` INT NOT NULL,
  INDEX `fk_Serviço_has_Funcionario_Funcionario1_idx` (`idFuncionario` ASC),
  INDEX `fk_Serviço_has_Funcionario_Serviço1_idx` (`idServiço` ASC),
  PRIMARY KEY (`idServiço`, `idFuncionario`),
  CONSTRAINT `fk_Serviço_has_Funcionario_Serviço1`
    FOREIGN KEY (`idServiço`)
    REFERENCES `oficina`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Serviço_has_Funcionario_Funcionario1`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `oficina`.`Funcionario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oficina`.`Peça`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`Peça` (
  `id` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `idServiço` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Peças_Serviço1_idx` (`idServiço` ASC),
  CONSTRAINT `fk_Peças_Serviço1`
    FOREIGN KEY (`idServiço`)
    REFERENCES `oficina`.`Serviço` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
