-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-06-2025 a las 06:37:09
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `themis_denuncias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias_anonimas`
--

DROP TABLE IF EXISTS `denuncias_anonimas`;
CREATE TABLE IF NOT EXISTS `denuncias_anonimas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) NOT NULL,
  `descripcion_hechos` text NOT NULL,
  `distrito` varchar(255) NOT NULL,
  `es_ahora` bit(1) NOT NULL,
  `fecha_incidente` varchar(255) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `hora_incidente` varchar(255) NOT NULL,
  `provincia` varchar(255) NOT NULL,
  `rutas_archivos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `denuncias_anonimas`
--

INSERT INTO `denuncias_anonimas` (`id`, `correo`, `departamento`, `descripcion_hechos`, `distrito`, `es_ahora`, `fecha_incidente`, `fecha_registro`, `hora_incidente`, `provincia`, `rutas_archivos`) VALUES
(1, 'sobrinoluza@gmail.com', 'Lima', 'wfwafwaf', 'El Agustino', b'1', '2025-06-09', '2025-06-09 14:17:10.927810', '14:16', 'Lima', 'uploads\\53ca28cf-cb92-42c6-8f4f-8380e94e1396.docx'),
(2, '', 'Lima', 'sdwada', 'La Victoria', b'0', '2024-07-12', '2025-06-09 21:00:01.027388', '00:02', 'Lima', ''),
(3, '', 'Lima', 'dawfraw', 'Callao', b'1', '2025-06-09', '2025-06-09 22:23:21.271446', '22:23', 'Callao', ''),
(4, '', 'Lima', 'dwaawwad', 'La Perla', b'1', '2025-06-10', '2025-06-10 01:02:44.729347', '01:02', 'Callao', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias_persona_real`
--

DROP TABLE IF EXISTS `denuncias_persona_real`;
CREATE TABLE IF NOT EXISTS `denuncias_persona_real` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apellido_materno` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `autorizo_datos` bit(1) NOT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `descripcion_hechos` tinytext NOT NULL,
  `distrito` varchar(255) DEFAULT NULL,
  `es_ahora` bit(1) NOT NULL,
  `fecha_emision` date DEFAULT NULL,
  `fecha_incidente` date DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `hora_incidente` time(6) DEFAULT NULL,
  `nombres` varchar(255) NOT NULL,
  `numero_celular` varchar(255) DEFAULT NULL,
  `numero_documento` varchar(255) NOT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `denuncias_persona_real`
--

INSERT INTO `denuncias_persona_real` (`id`, `apellido_materno`, `apellido_paterno`, `autorizo_datos`, `correo_electronico`, `departamento`, `descripcion_hechos`, `distrito`, `es_ahora`, `fecha_emision`, `fecha_incidente`, `fecha_nacimiento`, `hora_incidente`, `nombres`, `numero_celular`, `numero_documento`, `provincia`, `sexo`, `tipo_documento`) VALUES
(1, 'Luza', 'Sobrino', b'1', '', 'Lima', 'sdfsdfsdf', 'Comas', b'1', '2023-01-17', NULL, '2005-08-16', NULL, 'Nicole Melina', '', '72706664', 'Lima', 'Femenino', 'DNI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia_persona_real_archivos`
--

DROP TABLE IF EXISTS `denuncia_persona_real_archivos`;
CREATE TABLE IF NOT EXISTS `denuncia_persona_real_archivos` (
  `denuncia_id` bigint NOT NULL,
  `ruta_archivo` varchar(255) DEFAULT NULL,
  KEY `FK8v2r9a395whlvmcfvb905397q` (`denuncia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `denuncia_persona_real_archivos`
--

INSERT INTO `denuncia_persona_real_archivos` (`denuncia_id`, `ruta_archivo`) VALUES
(1, 'uploads\\denuncias_persona_real\\0e6e6882-f35d-4bbb-b922-194195eb7ce4.docx');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `denuncia_persona_real_archivos`
--
ALTER TABLE `denuncia_persona_real_archivos`
  ADD CONSTRAINT `FK8v2r9a395whlvmcfvb905397q` FOREIGN KEY (`denuncia_id`) REFERENCES `denuncias_persona_real` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
