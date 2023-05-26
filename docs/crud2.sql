-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-05-2023 a las 22:46:13
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

DROP TABLE IF EXISTS `tm_producto`;
CREATE TABLE IF NOT EXISTS `tm_producto` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_nom` varchar(150) COLLATE utf8mb3_spanish_ci NOT NULL,
  `prod_desc` varchar(200) COLLATE utf8mb3_spanish_ci NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` date DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_desc`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Auriculares', 'ninguna', '2023-05-24 19:08:04', NULL, NULL, 1),
(2, 'Monitor', 'ninguna', '2023-05-24 19:10:05', NULL, NULL, 1),
(3, 'Mouse', 'ninguna', '2023-05-24 19:10:18', NULL, '2023-05-26 10:46:18', 0),
(4, 'Teclado', 'ninguna', '2023-05-24 19:10:25', NULL, '2023-05-24 15:10:21', 0),
(5, 'SmartWatch', 'ninguna', '2023-05-26 11:11:16', NULL, NULL, 1),
(6, 'Teclado Gaming', 'ninguna', '2023-05-26 13:52:17', '2023-05-26', '2023-05-26 13:57:03', 0),
(7, 'Teclado Clasic', 'ninguna', '2023-05-26 13:54:19', NULL, '2023-05-26 13:57:06', 0),
(8, 'Teclado Clasic', 'ninguna', '2023-05-26 13:57:13', NULL, NULL, 1),
(9, 'Teclado Gaming', 'ninguna', '2023-05-26 13:57:18', NULL, NULL, 1),
(10, 'USB', 'sfs', '2023-05-26 17:42:09', NULL, NULL, 1),
(11, 'Mouse', 'dfdf', '2023-05-26 17:43:32', NULL, '2023-05-26 17:43:42', 0),
(12, 'Mouse', 'Sin RGB', '2023-05-26 17:43:58', NULL, NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
