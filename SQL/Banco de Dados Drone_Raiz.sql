-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bd_drz
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_drz
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_drz` DEFAULT CHARACTER SET latin1 ;
USE `bd_drz` ;

-- -----------------------------------------------------
-- Table `bd_drz`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_drz`.`cliente` (
  `IDCliente` INT(11) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `DDD` INT(8) NULL DEFAULT NULL,
  `Telefone` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `CPF` VARCHAR(45) NULL DEFAULT NULL,
  `RG` VARCHAR(45) NULL DEFAULT NULL,
  `DtNascimento` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`IDCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bd_drz`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_drz`.`produto` (
  `IDProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) NOT NULL,
  `Descricao` VARCHAR(100) NOT NULL,
  `valor` DECIMAL(10,0) NOT NULL,
  `quant` INT(11) NOT NULL,
  PRIMARY KEY (`IDProduto`))
ENGINE = InnoDB
AUTO_INCREMENT = 926
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bd_drz`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_drz`.`login` (
  `login` INT NOT NULL,
  `senha` VARCHAR(45) NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
