-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-05-2023 a las 00:46:19
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
-- Estructura de tabla para la tabla `tm_categoria`
--

DROP TABLE IF EXISTS `tm_categoria`;
CREATE TABLE IF NOT EXISTS `tm_categoria` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_nom` varchar(100) COLLATE utf16_spanish_ci DEFAULT NULL,
  `est` int DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `est`) VALUES
(1, 'Electronica', 1),
(2, 'Lacteos', 1),
(3, 'Verduras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

DROP TABLE IF EXISTS `tm_producto`;
CREATE TABLE IF NOT EXISTS `tm_producto` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `cat_id` int DEFAULT NULL,
  `prod_nom` varchar(150) COLLATE utf8mb3_spanish_ci NOT NULL,
  `prod_desc` varchar(200) COLLATE utf8mb3_spanish_ci NOT NULL,
  `prod_cant` int DEFAULT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` date DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `cat_id`, `prod_nom`, `prod_desc`, `prod_cant`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 1, 'Auriculares', 'ninguna', 1, '2023-05-24 19:08:04', NULL, NULL, 1),
(2, 1, 'Monitor', 'ninguna', 1, '2023-05-24 19:10:05', NULL, '2023-05-29 19:09:14', 0),
(3, 1, 'Mouse', 'ninguna', 1, '2023-05-24 19:10:18', NULL, '2023-05-26 10:46:18', 0),
(4, 1, 'Teclado', 'ninguna', 1, '2023-05-24 19:10:25', NULL, '2023-05-24 15:10:21', 0),
(5, 1, 'SmartWatch', 'ninguna', 1, '2023-05-26 11:11:16', NULL, '2023-05-29 19:37:37', 0),
(6, 1, 'Teclado Gaming', 'ninguna', 1, '2023-05-26 13:52:17', '2023-05-26', '2023-05-26 13:57:03', 0),
(7, 1, 'Teclado Clasic', 'ninguna', 1, '2023-05-26 13:54:19', NULL, '2023-05-26 13:57:06', 0),
(8, 1, 'Teclado Clasic', 'ninguna', 1, '2023-05-26 13:57:13', NULL, '2023-05-29 19:37:33', 0),
(9, 1, 'Teclado Gaming', 'ninguna', 1, '2023-05-26 13:57:18', NULL, NULL, 1),
(10, 1, 'USB', 'sfs', 2, '2023-05-26 17:42:09', '2023-05-29', NULL, 1),
(11, 1, 'Mouse', 'dfdf', 1, '2023-05-26 17:43:32', NULL, '2023-05-26 17:43:42', 0),
(12, 2, 'Mouse', 'Sin RGB', 3, '2023-05-26 17:43:58', '2023-05-29', NULL, 1),
(13, 3, 'Mando PC', 'sfdf', 5, '2023-05-29 11:18:55', '2023-05-29', NULL, 1),
(14, 0, 'SmartWatch', 'dfgdg', 1, '2023-05-29 19:08:25', NULL, NULL, 1),
(15, 0, 'SmartWatchdfg', 'dfgdfh', 1, '2023-05-29 19:08:37', NULL, NULL, 1),
(16, 3, 'SmartWatchsf', 'dfdf', 1, '2023-05-29 19:09:27', NULL, NULL, 1),
(17, 2, 'SmartWatch', '34', 4, '2023-05-29 19:42:18', NULL, NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
