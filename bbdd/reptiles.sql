-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2018 a las 17:58:20
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reptiles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `codcomprador` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `primerApellido` text NOT NULL,
  `segundoApellido` text NOT NULL,
  `dni` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`codcomprador`, `nombre`, `primerApellido`, `segundoApellido`, `dni`) VALUES
(1, 'Marcos', 'Martín', 'Guerrero', '00000000A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crias`
--

CREATE TABLE `crias` (
  `codcria` int(11) NOT NULL,
  `fase` text NOT NULL,
  `fechna` date NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crias_comprador`
--

CREATE TABLE `crias_comprador` (
  `codcriascomprador` int(11) NOT NULL,
  `codcrias` int(11) NOT NULL,
  `codcomprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geckos`
--

CREATE TABLE `geckos` (
  `codgecko` int(3) NOT NULL,
  `especie` text NOT NULL,
  `fase` text NOT NULL,
  `sexo` text NOT NULL,
  `fechana` date NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `geckos`
--

INSERT INTO `geckos` (`codgecko`, `especie`, `fase`, `sexo`, `fechana`, `nombre`) VALUES
(1, 'eublepharis', 'tangerine', 'hembra', '2015-06-10', 'lala'),
(2, 'eublepharis', 'raptor', 'macho', '2015-02-03', 'Luffy'),
(3, 'eublepharis', 'super raptor', 'hembra', '2017-04-20', 'Lucy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gecko_crias`
--

CREATE TABLE `gecko_crias` (
  `codgeckocrias` int(11) NOT NULL,
  `codgecko` int(11) NOT NULL,
  `codcrias` int(11) NOT NULL,
  `fase` text NOT NULL,
  `sexo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`codcomprador`);

--
-- Indices de la tabla `crias`
--
ALTER TABLE `crias`
  ADD PRIMARY KEY (`codcria`);

--
-- Indices de la tabla `crias_comprador`
--
ALTER TABLE `crias_comprador`
  ADD PRIMARY KEY (`codcriascomprador`),
  ADD KEY `codcrias` (`codcrias`),
  ADD KEY `codcomprador` (`codcomprador`);

--
-- Indices de la tabla `geckos`
--
ALTER TABLE `geckos`
  ADD PRIMARY KEY (`codgecko`);

--
-- Indices de la tabla `gecko_crias`
--
ALTER TABLE `gecko_crias`
  ADD PRIMARY KEY (`codgeckocrias`),
  ADD KEY `codcrias` (`codcrias`),
  ADD KEY `codgecko` (`codgecko`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprador`
--
ALTER TABLE `comprador`
  MODIFY `codcomprador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `crias`
--
ALTER TABLE `crias`
  MODIFY `codcria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `crias_comprador`
--
ALTER TABLE `crias_comprador`
  MODIFY `codcriascomprador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `geckos`
--
ALTER TABLE `geckos`
  MODIFY `codgecko` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gecko_crias`
--
ALTER TABLE `gecko_crias`
  MODIFY `codgeckocrias` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `crias_comprador`
--
ALTER TABLE `crias_comprador`
  ADD CONSTRAINT `crias_comprador_ibfk_1` FOREIGN KEY (`codcrias`) REFERENCES `crias` (`codcria`),
  ADD CONSTRAINT `crias_comprador_ibfk_2` FOREIGN KEY (`codcomprador`) REFERENCES `comprador` (`codcomprador`);

--
-- Filtros para la tabla `gecko_crias`
--
ALTER TABLE `gecko_crias`
  ADD CONSTRAINT `gecko_crias_ibfk_1` FOREIGN KEY (`codcrias`) REFERENCES `crias` (`codcria`),
  ADD CONSTRAINT `gecko_crias_ibfk_2` FOREIGN KEY (`codgecko`) REFERENCES `geckos` (`codgecko`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
