-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.27-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para clientes
CREATE DATABASE IF NOT EXISTS `clientes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `clientes`;

-- Volcando estructura para tabla clientes.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `primernombre` varchar(255) DEFAULT NULL,
  `segundonombre` varchar(255) DEFAULT NULL,
  `otronombre` varchar(255) DEFAULT NULL,
  `primerapellido` varchar(255) DEFAULT NULL,
  `segundoapellido` varchar(255) DEFAULT NULL,
  `otroapellido` varchar(255) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `segmento` varchar(50) DEFAULT NULL,
  `sueldo` decimal(10,2) DEFAULT NULL,
  `dpi` varchar(10) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fechacreacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla clientes.clientes: ~3 rows (aproximadamente)
DELETE FROM `clientes`;
INSERT INTO `clientes` (`idcliente`, `primernombre`, `segundonombre`, `otronombre`, `primerapellido`, `segundoapellido`, `otroapellido`, `genero`, `fechanacimiento`, `segmento`, `sueldo`, `dpi`, `correo`, `telefono`, `direccion`, `fechacreacion`) VALUES
	(1, 'Juan', 'Carlos', 'Andres', 'Perez', 'Gomez', 'Lopez', 'Masculino', '1990-05-15', 'VIP', 5000.00, '3755991850', 'juan@gmail.com', '1234567890', 'Calle 123, Ciudad', '2023-09-25 14:41:32'),
	(2, 'Maria', 'Luisa', 'Isabel', 'Gonzalez', 'Rodriguez', 'Martinez', 'Femenino', '1985-08-20', 'Estandar', 3000.50, '3755991850', 'maria@gmail.com', '9876543210', 'Avenida 456, Pueblo', '2023-09-25 14:41:32'),
	(3, 'Pedro', 'Alejandro', 'José', 'Sanchez', 'Fernandez', 'Ramirez', 'Masculino', '1988-03-10', 'Estandar', 3500.75, '3755991850', 'pedro@gmail.com', '4567890123', 'Ruta 789, Villa', '2023-09-25 14:41:32');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
