-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema vacinas
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `vacinas` ;

-- -----------------------------------------------------
-- Schema vacinas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vacinas` DEFAULT CHARACTER SET utf8 ;

USE `vacinas` ;

-- -----------------------------------------------------
-- Table `vacinas`.`Utente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Utente` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Utente` (
  `idUtente` INT NOT NULL,
  `nome` VARCHAR(75) NOT NULL,
  `num_cidadao` INT NOT NULL,
  `contato` VARCHAR(9) NOT NULL,
  `mail` VARCHAR(30) NULL,
  `dataNascimento` DATE NOT NULL,
  `cidade` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idUtente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Unidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Unidade` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Unidade` (
  `idLocal` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `contato` VARCHAR(14) NOT NULL,
  `tipo_unidade` VARCHAR(25) NULL,
  `website` VARCHAR(45) NULL,
  `cidade` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idLocal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Vacina`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Vacina` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Vacina` (
  `idVacina` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `intervalo` VARCHAR(10) NOT NULL,
  `doses` INT NOT NULL,
  `doencas` VARCHAR(200) NOT NULL,
  `obs` VARCHAR(250) NULL,
  PRIMARY KEY (`idVacina`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Stock` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Stock` (
  `idStock` INT NOT NULL,
  `Unidade_idLocal` INT NOT NULL,
  `nome_vacina` VARCHAR(45) NOT NULL,
  `data_entrada` DATE NOT NULL,
  `quantidade` INT NOT NULL,
  `lote` INT NOT NULL,
  `validade` DATE NOT NULL,
  `laboratorio` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idStock`),
  INDEX `fk_Stock_Unidade1_idx` (`Unidade_idLocal` ASC),
  CONSTRAINT `fk_Stock_Unidade1`
    FOREIGN KEY (`Unidade_idLocal`)
    REFERENCES `vacinas`.`Unidade` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Campanha`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Campanha` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Campanha` (
  `idCampanha` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `data_inicio` DATE NOT NULL,
  `data_fim` DATE NOT NULL,
  `obs` VARCHAR(100) NULL,
  PRIMARY KEY (`idCampanha`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Aplicacao_Vacina`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Aplicacao_Vacina` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Aplicacao_Vacina` (
  `idAplicacao` INT NOT NULL,
  `data` DATE NOT NULL,
  `num_dose` INT NOT NULL,
  `Utente_idUtente` INT NOT NULL,
  `Vacina_idVacina` INT NOT NULL,
  `Unidade_idLocal` INT NOT NULL,
  PRIMARY KEY (`idAplicacao`),
  INDEX `fk_Aplicacao_Vacina_Utente1_idx` (`Utente_idUtente` ASC),
  INDEX `fk_Aplicacao_Vacina_Vacina1_idx` (`Vacina_idVacina` ASC),
  INDEX `fk_Aplicacao_Vacina_Unidade1_idx` (`Unidade_idLocal` ASC),
  CONSTRAINT `fk_Aplicacao_Vacina_Utente1`
    FOREIGN KEY (`Utente_idUtente`)
    REFERENCES `vacinas`.`Utente` (`idUtente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aplicacao_Vacina_Vacina1`
    FOREIGN KEY (`Vacina_idVacina`)
    REFERENCES `vacinas`.`Vacina` (`idVacina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aplicacao_Vacina_Unidade1`
    FOREIGN KEY (`Unidade_idLocal`)
    REFERENCES `vacinas`.`Unidade` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`VacinaCampanha`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`VacinaCampanha` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`VacinaCampanha` (
  `Campanha_idCampanha` INT NOT NULL,
  `Vacina_idVacina` INT NOT NULL,
  INDEX `fk_Campanha_has_Vacina_Vacina1_idx` (`Vacina_idVacina` ASC),
  INDEX `fk_Campanha_has_Vacina_Campanha1_idx` (`Campanha_idCampanha` ASC),
  CONSTRAINT `fk_Campanha_has_Vacina_Campanha1`
    FOREIGN KEY (`Campanha_idCampanha`)
    REFERENCES `vacinas`.`Campanha` (`idCampanha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Campanha_has_Vacina_Vacina1`
    FOREIGN KEY (`Vacina_idVacina`)
    REFERENCES `vacinas`.`Vacina` (`idVacina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vacinas`.`Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vacinas`.`Funcionario` ;

CREATE TABLE IF NOT EXISTS `vacinas`.`Funcionario` (
  `idFuncionario` INT NOT NULL,
  `nome` VARCHAR(75) NOT NULL,
  `tipo_funcionario` VARCHAR(15) NOT NULL,
  `num_cidadao` INT NOT NULL,
  `contato` VARCHAR(14) NULL,
  `Unidade_idLocal` INT NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  INDEX `fk_Funcionario_Unidade1_idx` (`Unidade_idLocal` ASC),
  CONSTRAINT `fk_Funcionario_Unidade1`
    FOREIGN KEY (`Unidade_idLocal`)
    REFERENCES `vacinas`.`Unidade` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `vacinas` ;

-- -----------------------------------------------------
-- Placeholder table for view `vacinas`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vacinas`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `vacinas`.`view1`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `vacinas`.`view1` ;
DROP TABLE IF EXISTS `vacinas`.`view1`;
USE `vacinas`;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
