-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2023 a las 21:22:08
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_pemex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bomba`
--

CREATE TABLE `tbl_bomba` (
  `idBomba` int(11) NOT NULL,
  `tipoBomba` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipoCombustible` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `capacidad` decimal(10,2) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `numEmpleados` int(11) NOT NULL,
  `fechaRegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_bomba`
--

INSERT INTO `tbl_bomba` (`idBomba`, `tipoBomba`, `tipoCombustible`, `estado`, `capacidad`, `ubicacion`, `numEmpleados`, `fechaRegistro`) VALUES
(1, 'Centrifuga', 'Magna', 'Activa', '30000.00', 'Isla 1', 5, '2023-11-06 12:57:48'),
(2, 'Centrifuga', 'Premium', 'Activa', '30000.00', 'Isla 1', 5, '2023-11-06 12:58:58'),
(3, 'Mecanicas', 'Diesel', 'Activa', '30000.00', 'Isla 2', 5, '2023-11-06 12:59:41'),
(4, 'Electrica', 'Magna', 'Activa', '30000.00', 'Isla 2', 5, '2023-11-06 13:09:21'),
(5, 'Electrica', 'Diesel', 'Activa', '30000.00', 'Isla 3', 5, '2023-11-06 13:09:21'),
(6, 'Mecanica', 'Premium', 'Activa', '30000.00', 'Isla 3', 5, '2023-11-06 13:09:21'),
(7, 'Centrifuga', 'Magna', 'Mantenimiento', '30000.00', 'Isla 4', 5, '2023-11-06 13:09:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bomba`
--
ALTER TABLE `tbl_bomba`
  ADD PRIMARY KEY (`idBomba`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bomba`
--
ALTER TABLE `tbl_bomba`
  MODIFY `idBomba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
