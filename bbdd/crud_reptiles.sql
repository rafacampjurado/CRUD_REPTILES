-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 18:50:41
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_reptiles`
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
  `dni` varchar(9) NOT NULL,
  `sexo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`codcomprador`, `nombre`, `primerApellido`, `segundoApellido`, `dni`, `sexo`) VALUES
(5, 'LucÃ­a', 'Gavilan', 'Acencio', '94921453A', 'mujer'),
(6, 'Marcos', 'Moya', 'Samora', '41064285B', 'hombre'),
(7, 'JosÃ©', 'MartÃ­n', 'PÃ©rez', '12345678B', 'hombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crias`
--

CREATE TABLE `crias` (
  `codcria` int(11) NOT NULL,
  `fase` text NOT NULL,
  `fechna` date NOT NULL,
  `estado` text NOT NULL,
  `sexo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `crias`
--

INSERT INTO `crias` (`codcria`, `fase`, `fechna`, `estado`, `sexo`) VALUES
(1, 'tangerine', '2018-03-20', 'vendida', 'macho'),
(2, 'stripe', '2018-02-16', 'vendida', 'hembra'),
(3, 'raptor', '2018-02-16', 'vendida', 'hembra'),
(4, 'nominal', '2018-02-17', 'vendida', 'macho'),
(5, 'tangerine', '2018-02-17', 'vendida', 'macho'),
(6, 'raptor', '2018-02-17', 'vendida', 'hembra'),
(7, 'stripe', '2018-02-17', 'enVenta', 'macho'),
(8, 'nominal', '2018-02-17', 'enVenta', 'hembra'),
(9, 'nominal', '2018-02-17', 'enVenta', 'hembra'),
(10, 'stripe', '2018-02-17', 'enVenta', 'hembra'),
(11, 'raptor', '2018-02-17', 'enVenta', 'hembra'),
(12, 'stripe', '2018-02-17', 'enVenta', 'macho'),
(13, 'raptor', '2018-02-21', 'enVenta', 'macho');

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
(1, 'macularius', 'boldStriped(actualmente)', 'macho', '2015-06-10', 'lala'),
(2, 'eublepharis', 'raptor', 'macho', '2015-02-03', 'Luffy'),
(3, 'eublepharis', 'super raptor', 'hembra', '2017-04-20', 'Lucy'),
(4, 'macularius', 'shtc', 'hembra', '2015-05-19', 'Chell'),
(5, 'macularius', 'bellAlbino', 'macho', '2016-09-12', 'Hall');

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
-- Indices de la tabla `geckos`
--
ALTER TABLE `geckos`
  ADD PRIMARY KEY (`codgecko`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprador`
--
ALTER TABLE `comprador`
  MODIFY `codcomprador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `crias`
--
ALTER TABLE `crias`
  MODIFY `codcria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `geckos`
--
ALTER TABLE `geckos`
  MODIFY `codgecko` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
