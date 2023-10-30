-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 15:12:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinicasveterinarias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` int(11) NOT NULL,
  `contactoAlt` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `dni`, `nombre`, `apellido`, `direccion`, `telefono`, `contactoAlt`, `estado`) VALUES
(1, 123456, 'Monzon', 'Lucas', 'Rivadavia 1578', 11675435, 'Cynthia', 0),
(2, 1234567, 'Nuñez', 'Adrian', 'Pellegrini 342', 2346899, 'Cynthia', 1),
(3, 234567, 'Maria Laura', 'Alvarez', 'Avenidas 2334', 2345678, '2345876', 0),
(4, 345432, 'Marcos', 'Perpetrussi', 'Laguna 333', 11238746, '11346578', 1),
(5, 98765, 'Agustina', 'Foieri', 'Pellegrini 654', 34567987, '3456123', 0),
(6, 987654, 'Agustina', 'Foieri', 'Bragado 6640', 23424433, '23425566', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `idMasc` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `sexo` varchar(8) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `pelaje` varchar(30) NOT NULL,
  `fechaNac` date NOT NULL,
  `pesoActual` int(8) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`idMasc`, `idCliente`, `alias`, `sexo`, `especie`, `raza`, `pelaje`, `fechaNac`, `pesoActual`, `estado`) VALUES
(1, 1, 'Carmelita', 'hembra', 'canino', 'chihuahua', 'marrón y blanco', '2012-03-17', 6, 1),
(2, 1, 'Gordo', 'macho', 'felino', 'mestizo', 'blanco albino', '2014-10-20', 7, 1),
(3, 2, 'Preguntale', 'macho', 'canino', 'caniche', 'champagne', '2010-03-30', 6, 1),
(4, 2, 'India', 'hembra', 'canino', 'boxer', 'marrón y blanco', '2015-07-22', 13, 0),
(5, 3, 'Kinga', 'Macho', 'Gato', 'Mestizo', 'Blanco', '2023-12-19', 7, 1),
(6, 4, 'Hamtaro', 'Macho', 'Hamster', 'comun', 'Blanco y marron', '2001-10-16', 1, 1),
(7, 3, 'Firu', 'Hembra', 'Pajaro', 'Canario', 'Amarillo', '2023-09-12', 1, 1),
(8, 6, 'Atun', 'Macho', 'Perro', 'Cruza', 'Negro', '2017-10-19', 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `idTratamiento` int(11) NOT NULL,
  `tipoTrat` varchar(60) NOT NULL,
  `descripción` varchar(140) NOT NULL,
  `importe` double NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`idTratamiento`, `tipoTrat`, `descripción`, `importe`, `estado`) VALUES
(1, 'Vacunacion', 'rabia', 2000, 0),
(2, 'Vacunacion', 'moquillo', 2000, 0),
(3, 'Castracion', 'hembra', 6500, 1),
(4, 'Castracion', 'macho', 6500, 1),
(5, 'ghg', 'fgh', 456, 0),
(6, 'ghg', 'fgh', 456, 0),
(7, 'kkggj', 'oñjjñoj', 123456, 0),
(8, 'kkvkgif', 'guigui', 5456, 0),
(9, 'sdf', 'bdf', 44, 0),
(10, 'Baño', 'perro grande', 3500, 1),
(11, 'Chequeo', 'anual', 1700, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `idVisita` int(11) NOT NULL,
  `idMasc` int(11) NOT NULL,
  `idTratamiento` int(11) NOT NULL,
  `pesoMedio` double NOT NULL,
  `pesoActual` double NOT NULL,
  `fechaVisita` date NOT NULL,
  `detalles` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visita`
--

INSERT INTO `visita` (`idVisita`, `idMasc`, `idTratamiento`, `pesoMedio`, `pesoActual`, `fechaVisita`, `detalles`) VALUES
(1, 2, 2, 50, 100, '2020-03-10', ''),
(2, 2, 2, 50, 100, '2020-03-10', ''),
(3, 2, 2, 50, 100, '2020-03-10', ''),
(4, 4, 4, 0.9, 1, '2023-10-27', 'Super cute'),
(5, 3, 1, 0, 10, '2023-10-26', 'Buen estado'),
(6, 3, 1, 0, 12, '2023-10-26', 'Activo'),
(7, 3, 2, 0, 10, '2023-10-10', 'Activo'),
(8, 3, 11, 0, 100, '2020-03-10', ''),
(9, 5, 1, 0, 7, '2023-10-11', 'algo'),
(10, 5, 3, 0, 6.5, '2023-09-24', 'akjw'),
(11, 5, 3, 0, 7, '2023-09-12', 'jjdjskj'),
(12, 5, 5, 0, 7, '2023-09-11', 'nklacjcj'),
(13, 5, 11, 0, 100, '2020-03-10', ''),
(14, 6, 11, 0, 1, '2022-10-18', 'njg'),
(15, 5, 11, 0, 7, '2023-10-19', 'bff'),
(16, 2, 11, 0, 7, '2023-10-27', 'ffgfnfgmg '),
(17, 2, 11, 0, 7, '2023-10-05', 'ffgfnfgmg '),
(18, 5, 11, 0, 7, '2023-10-05', 'ffgfnfgmg '),
(19, 3, 11, 0, 10, '2023-10-04', 'ehrdzfb'),
(20, 3, 1, 0, 9, '2023-10-05', ',ghyyhhyf'),
(21, 7, 11, 0, 1, '2023-10-30', 'Algo'),
(22, 8, 11, 0, 7.5, '2023-10-26', 'Sano');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`idMasc`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`idTratamiento`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`idVisita`),
  ADD KEY `idMasc` (`idMasc`),
  ADD KEY `idTratamiento` (`idTratamiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `idMasc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `idTratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `visita`
--
ALTER TABLE `visita`
  MODIFY `idVisita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`idMasc`) REFERENCES `mascota` (`idMasc`),
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`idTratamiento`) REFERENCES `tratamiento` (`idTratamiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
