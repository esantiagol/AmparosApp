-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-10-2016 a las 07:49:46
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `amparoApp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ABOGADOS`
--

CREATE TABLE IF NOT EXISTS `ABOGADOS` (
`IDABOGADO` int(3) NOT NULL,
  `IDUSUARIO` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ABOGADO_TORITO`
--

CREATE TABLE IF NOT EXISTS `ABOGADO_TORITO` (
`IDTORITO` int(3) NOT NULL,
  `IDABOGADO` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AMPAROS`
--

CREATE TABLE IF NOT EXISTS `AMPAROS` (
`IDAMPARO` int(6) NOT NULL,
  `IDUSUARIO` int(5) NOT NULL,
  `IDABOGADO` int(3) NOT NULL,
  `IDTORITO` int(3) NOT NULL,
  `ID_ESTATUS_AMPARO` int(2) NOT NULL,
  `KEY_PAGO` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY_CONFIRMACION` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ESTATUS_AMPARO`
--

CREATE TABLE IF NOT EXISTS `ESTATUS_AMPARO` (
`ID_ESTATUS_AMPARO` int(3) NOT NULL,
  `DESCRIPCION` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPO_USUARIO`
--

CREATE TABLE IF NOT EXISTS `TIPO_USUARIO` (
`IDTIPOUSUARIO` int(3) NOT NULL,
  `DESCRIPCION` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TORITOS`
--

CREATE TABLE IF NOT EXISTS `TORITOS` (
`IDTORITO` int(3) NOT NULL,
  `NOMBRE` varchar(100) COLLATE utf8_bin NOT NULL,
  `DIRECCION` varchar(150) COLLATE utf8_bin NOT NULL,
  `DESCRIPCION` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIOS`
--

CREATE TABLE IF NOT EXISTS `USUARIOS` (
`IDUSUARIO` int(5) NOT NULL,
  `NOMBRE` varchar(100) COLLATE utf8_bin NOT NULL,
  `APATERNO` varchar(100) COLLATE utf8_bin NOT NULL,
  `AMATERNO` varchar(100) COLLATE utf8_bin NOT NULL,
  `DIRECCION` varchar(150) COLLATE utf8_bin NOT NULL,
  `CIUDAD` varchar(100) COLLATE utf8_bin NOT NULL,
  `ESTADO` varchar(50) COLLATE utf8_bin NOT NULL,
  `CODIGOPOSTAL` int(8) NOT NULL,
  `EMAIL` varchar(50) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin NOT NULL,
  `IDTIPOUSUARIO` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ABOGADOS`
--
ALTER TABLE `ABOGADOS`
 ADD PRIMARY KEY (`IDABOGADO`);

--
-- Indices de la tabla `ABOGADO_TORITO`
--
ALTER TABLE `ABOGADO_TORITO`
 ADD PRIMARY KEY (`IDTORITO`);

--
-- Indices de la tabla `AMPAROS`
--
ALTER TABLE `AMPAROS`
 ADD PRIMARY KEY (`IDAMPARO`);

--
-- Indices de la tabla `ESTATUS_AMPARO`
--
ALTER TABLE `ESTATUS_AMPARO`
 ADD PRIMARY KEY (`ID_ESTATUS_AMPARO`);

--
-- Indices de la tabla `TIPO_USUARIO`
--
ALTER TABLE `TIPO_USUARIO`
 ADD PRIMARY KEY (`IDTIPOUSUARIO`);

--
-- Indices de la tabla `TORITOS`
--
ALTER TABLE `TORITOS`
 ADD PRIMARY KEY (`IDTORITO`);

--
-- Indices de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
 ADD PRIMARY KEY (`IDUSUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ABOGADOS`
--
ALTER TABLE `ABOGADOS`
MODIFY `IDABOGADO` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ABOGADO_TORITO`
--
ALTER TABLE `ABOGADO_TORITO`
MODIFY `IDTORITO` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `AMPAROS`
--
ALTER TABLE `AMPAROS`
MODIFY `IDAMPARO` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ESTATUS_AMPARO`
--
ALTER TABLE `ESTATUS_AMPARO`
MODIFY `ID_ESTATUS_AMPARO` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `TIPO_USUARIO`
--
ALTER TABLE `TIPO_USUARIO`
MODIFY `IDTIPOUSUARIO` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `TORITOS`
--
ALTER TABLE `TORITOS`
MODIFY `IDTORITO` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
MODIFY `IDUSUARIO` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
