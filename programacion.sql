-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2018 a las 21:43:16
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `programacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambito`
--

CREATE TABLE `ambito` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ambito`
--

INSERT INTO `ambito` (`id`, `descripcion`) VALUES
(1, 'Local'),
(2, 'Regional'),
(3, 'Nacional'),
(4, 'Internacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `id` int(11) NOT NULL,
  `enunciado` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`id`, `enunciado`) VALUES
(1, 'Dado un conjunto de números realizar la sumatoria de aquellos que sean primos.'),
(2, 'Dado un numero determinar si el mismo es Feliz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `universidad` int(11) DEFAULT NULL,
  `couch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipoparticipante`
--

CREATE TABLE `equipoparticipante` (
  `idequipo` int(11) NOT NULL,
  `idparticipante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL,
  `idjornada` int(11) DEFAULT NULL,
  `idequipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `horaini` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `idambito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguaje`
--

CREATE TABLE `lenguaje` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lenguaje`
--

INSERT INTO `lenguaje` (`id`, `descripcion`) VALUES
(1, 'PHP'),
(2, 'Java'),
(3, 'Javascript'),
(4, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`id`, `nombre`, `correo`, `telefono`, `clave`, `genero`) VALUES
(1, 'Andres', 'andres@hotmail.com', '147852369', '1234', 'm'),
(2, 'Diego', 'diego@hotmail.com', '321654987', '1234', 'M'),
(3, 'Angelica', 'angelmar258@hotmail.com', '3216410896', '123', 'F'),
(4, 'Pedro', 'perito@hotmail.com', '789654123', '1234', 'M'),
(5, 'alejandra', 'alejandra@hotmail.com', '785412369', '12345', 'M'),
(6, 'lolito', 'perito@hotmail.com', '3216410896', '1234', 'M'),
(7, 'samir', 'alejandra@hotmail.com', '3216410896', '12345', 'M'),
(8, 'ssss', 'ssss', 'sss', 'ssss', 'M'),
(9, 'qqqq', 'qqqq', 'qqqqq', 'qqqq', 'M'),
(10, 'diorman', 'a@hotmail.com', '7896541231', '23654', 'F'),
(11, 'juan jose', 'juan@hotmail.com', '789654123', '456', 'M'),
(12, 'pedrito', 'p@hotmail.com', '789', '159', 'f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solucion`
--

CREATE TABLE `solucion` (
  `id` int(11) NOT NULL,
  `idinscripcion` int(11) DEFAULT NULL,
  `idtest` int(11) DEFAULT NULL,
  `idlenguaje` int(11) DEFAULT NULL,
  `solucion` text,
  `correcta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `idjornada` int(11) NOT NULL,
  `idejercicio` int(11) NOT NULL,
  `puntos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universidad`
--

INSERT INTO `universidad` (`id`, `nombre`, `ciudad`) VALUES
(1, 'UNIVERSIDAD DE PAMPLONA', 'Pamplona'),
(2, 'UNIVERSIDAD FRANCISCO DE PAULA SANTANDER', 'Cucuta'),
(3, 'UNA', 'Bogota'),
(4, 'universidad de caldas', 'Caldas'),
(5, 'universidad de santander', 'bucaramanga'),
(6, 'Universidad de Antioquia', 'Medellin'),
(7, 'Universidad Libre', 'Cucuta'),
(8, 'pasttoooo', 'Cucuta'),
(9, 'uni cucuta3', 'cucuta3'),
(10, 'pasttoooo', 'Cucuta'),
(11, 'cartagena', 'Cucuta'),
(12, 'universidad del caribe', 'cartagena'),
(13, 'uni', 'pamplona'),
(14, 'uni', 'unicucta'),
(15, 'Angelica', 'pasto'),
(16, 'uni simon', 'cucuta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambito`
--
ALTER TABLE `ambito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_equipo_participante` (`couch`),
  ADD KEY `IXFK_equipo_universidad` (`universidad`);

--
-- Indices de la tabla `equipoparticipante`
--
ALTER TABLE `equipoparticipante`
  ADD PRIMARY KEY (`idequipo`,`idparticipante`),
  ADD KEY `IXFK_equipoestudiante_equipo` (`idequipo`),
  ADD KEY `IXFK_equipoestudiante_participante` (`idparticipante`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_inscripcion_equipo` (`idequipo`),
  ADD KEY `IXFK_inscripcion_jornada` (`idjornada`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_jornada_ambito` (`idambito`);

--
-- Indices de la tabla `lenguaje`
--
ALTER TABLE `lenguaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solucion`
--
ALTER TABLE `solucion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_solucion_inscripcion` (`idinscripcion`),
  ADD KEY `IXFK_solucion_lenguaje` (`idlenguaje`),
  ADD KEY `IXFK_solucion_test` (`idtest`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IXFK_jornadaejercicio_ejercicio` (`idejercicio`),
  ADD KEY `IXFK_jornadaejercicio_jornada` (`idjornada`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambito`
--
ALTER TABLE `ambito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lenguaje`
--
ALTER TABLE `lenguaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `solucion`
--
ALTER TABLE `solucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `FK_equipo_participante` FOREIGN KEY (`couch`) REFERENCES `participante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_equipo_universidad` FOREIGN KEY (`universidad`) REFERENCES `universidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipoparticipante`
--
ALTER TABLE `equipoparticipante`
  ADD CONSTRAINT `FK_equipoestudiante_equipo` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_equipoestudiante_participante` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_inscripcion_equipo` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_inscripcion_jornada` FOREIGN KEY (`idjornada`) REFERENCES `jornada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD CONSTRAINT `FK_jornada_ambito` FOREIGN KEY (`idambito`) REFERENCES `ambito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solucion`
--
ALTER TABLE `solucion`
  ADD CONSTRAINT `FK_solucion_inscripcion` FOREIGN KEY (`idinscripcion`) REFERENCES `inscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_solucion_lenguaje` FOREIGN KEY (`idlenguaje`) REFERENCES `lenguaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_solucion_test` FOREIGN KEY (`idtest`) REFERENCES `test` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `FK_jornadaejercicio_ejercicio` FOREIGN KEY (`idejercicio`) REFERENCES `ejercicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_jornadaejercicio_jornada` FOREIGN KEY (`idjornada`) REFERENCES `jornada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
