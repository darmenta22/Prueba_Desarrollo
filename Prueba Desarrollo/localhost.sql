-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-03-2022 a las 23:12:44
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `ID` int(10) NOT NULL,
  `Nombre_asignatura` varchar(20) NOT NULL,
  `Cod_Profesor` int(10) NOT NULL,
  `Cod_Curso` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`ID`, `Nombre_asignatura`, `Cod_Profesor`, `Cod_Curso`) VALUES
(1, 'Matemáticas', 1, 1),
(2, 'Español', 2, 1),
(3, 'Inglés básico', 3, 1),
(1, 'Matemáticas', 1, 2),
(2, 'Español', 2, 2),
(4, 'Inglés avanzado', 3, 2),
(1, 'Matemáticas', 1, 3),
(5, 'Pre Icfes', 1, 3),
(1, 'Matemáticas', 1, 4),
(5, 'Pre Icfes', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas_estudiantes`
--

CREATE TABLE `asignaturas_estudiantes` (
  `asignaturas_id` int(10) NOT NULL,
  `estudiantes_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignaturas_estudiantes`
--

INSERT INTO `asignaturas_estudiantes` (`asignaturas_id`, `estudiantes_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 4),
(2, 4),
(4, 4),
(1, 5),
(2, 5),
(4, 5),
(1, 6),
(2, 6),
(4, 6),
(1, 7),
(5, 7),
(1, 8),
(5, 8),
(1, 9),
(5, 9),
(1, 10),
(5, 10),
(1, 11),
(5, 11),
(1, 12),
(5, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `ID` int(10) NOT NULL,
  `Nombre_Colegio` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cod_Cursos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`ID`, `Nombre_Colegio`, `Cod_Cursos`) VALUES
(1, 'El colegio del Olimpo', 1),
(1, 'El colegio del Olimpo', 2),
(1, 'El colegio del Olimpo', 3),
(1, 'El colegio del Olimpo', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID` int(10) NOT NULL,
  `Grado` int(10) NOT NULL,
  `Salon` varchar(10) NOT NULL,
  `Cod_Asignatura` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID`, `Grado`, `Salon`, `Cod_Asignatura`) VALUES
(1, 10, 'A', 1),
(1, 10, 'A', 2),
(1, 10, 'A', 3),
(2, 10, 'B', 1),
(2, 10, 'B', 2),
(2, 10, 'B', 4),
(3, 11, 'A', 1),
(3, 11, 'A', 5),
(4, 11, 'B', 1),
(4, 11, 'B', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID` int(10) NOT NULL,
  `Nombre_Estudiante` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID`, `Nombre_Estudiante`) VALUES
(1, 'Afrodita'),
(2, 'Apolo'),
(3, 'Ares'),
(4, 'Artemisa'),
(5, 'Atenea'),
(6, 'Dionisio'),
(7, 'Hefesto'),
(8, 'Hera'),
(9, 'Hermes'),
(10, 'Hades'),
(11, 'Poseidón'),
(12, 'Zeus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `ID` int(10) NOT NULL,
  `Nombres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`ID`, `Nombres`) VALUES
(1, 'Némesis'),
(2, 'Príapo'),
(3, 'Iris');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
