-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2023 a las 05:20:27
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cmbios_14abril`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `id_cuestionario` int(11) NOT NULL,
  `inicio_cuestionario` datetime DEFAULT NULL,
  `final_cuestionario` datetime DEFAULT NULL,
  `nota_final` float DEFAULT NULL,
  `duracion_cuestionario` float DEFAULT NULL COMMENT 'Duración en horas',
  `intento` int(11) DEFAULT NULL,
  `estado_cuestionario` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `estado` bit(1) DEFAULT NULL COMMENT '0 - En Progreso 1 - Finalizado	',
  `id_grado` int(11) NOT NULL,
  `id_progreso` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`id_cuestionario`, `inicio_cuestionario`, `final_cuestionario`, `nota_final`, `duracion_cuestionario`, `intento`, `estado_cuestionario`, `estado`, `id_grado`, `id_progreso`, `id_tema`, `id_registro`, `id_unidad`) VALUES
(1, '2023-04-02 10:01:04', '2023-04-02 11:25:25', 8, 1.24, 1, b'0', b'1', 4, 4, 2, 4, 2),
(2, '2023-03-28 11:19:57', '2023-03-28 14:00:29', 10, 2.4, 1, b'1', b'1', 4, 5, 1, 5, 1),
(3, '2023-03-28 23:12:44', '2023-03-29 01:00:55', 6, 1.48, 1, b'0', b'1', 4, 6, 2, 6, 2),
(4, '2023-03-24 08:12:09', '2023-03-24 08:56:22', 8, 0.44, 1, b'1', b'1', 4, 7, 1, 7, 1),
(5, '2023-03-19 17:29:37', '2023-03-19 18:25:00', 10, 0.55, 1, b'1', b'1', 4, 8, 2, 8, 2),
(6, '2023-03-30 23:45:18', '2023-03-31 02:31:14', 5.5, 2.45, 1, b'1', b'1', 5, 9, 4, 9, 2),
(7, '2023-04-01 19:34:52', '2023-04-01 20:13:08', 10, 0.38, 1, b'1', b'1', 5, 10, 5, 10, 3),
(8, '2023-04-02 10:56:03', '2023-04-02 11:25:00', 8.5, 0.28, 1, b'1', b'1', 5, 11, 3, 11, 3),
(9, '2023-04-03 12:41:25', '2023-04-03 13:38:51', 3, 0.57, 1, b'1', b'1', 5, 12, 4, 12, 2),
(10, '2023-03-22 14:57:39', '2023-03-22 16:29:04', 9.5, 1.31, 1, b'1', b'1', 5, 13, 5, 13, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_departamento`) VALUES
(1, 'Chalatenango'),
(2, 'La Paz'),
(3, 'San Vicente'),
(4, 'Cuscatlán'),
(5, 'San Salvador'),
(6, 'La libertad'),
(7, 'Cabañas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `nombre_encuesta` varchar(100) NOT NULL,
  `comentario` text DEFAULT NULL,
  `estado_encuesta` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `nombre_encuesta`, `comentario`, `estado_encuesta`) VALUES
(1, 'Prueba 1', 'Lorem ipsum dolor sit amet consectetur adipiscing, elit tristique imperdiet malesuada molestie tincidunt ullamcorper, diam morbi nulla sapien auctor. Nascetur non eu vivamus porta accumsan urna rhoncus velit volutpat vitae, vel mus cum inceptos ad pellentesque mattis praesent quam. Urna vitae vulputate ridiculus nam netus ornare, scelerisque tempor condimentum lacinia mollis sociosqu integer, sociis arcu luctus fames sapien.', b'1'),
(2, 'Prueba 2', 'Lorem ipsum dolor sit amet consectetur adipiscing, elit tristique imperdiet malesuada molestie tincidunt ullamcorper, diam morbi nulla sapien auctor. Nascetur non eu vivamus porta accumsan urna rhoncus velit volutpat vitae, vel mus cum inceptos ad pellentesque mattis praesent quam. Urna vitae vulputate ridiculus nam netus ornare, scelerisque tempor condimentum lacinia mollis sociosqu integer, sociis arcu luctus fames sapien.', b'0'),
(3, 'Prueba 3', 'Lorem ipsum dolor sit amet consectetur adipiscing, elit tristique imperdiet malesuada molestie tincidunt ullamcorper, diam morbi nulla sapien auctor. Nascetur non eu vivamus porta accumsan urna rhoncus velit volutpat vitae, vel mus cum inceptos ad pellentesque mattis praesent quam. Urna vitae vulputate ridiculus nam netus ornare, scelerisque tempor condimentum lacinia mollis sociosqu integer, sociis arcu luctus fames sapien.', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `nivel_academico` varchar(50) DEFAULT NULL,
  `estado_grado` bit(1) NOT NULL DEFAULT b'0' COMMENT '1-activo- 0-inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `nivel_academico`, `estado_grado`) VALUES
(1, 'Séptimo', b'1'),
(2, 'Octavo', b'1'),
(3, 'Noveno', b'1'),
(4, 'Primer año bachillerato', b'1'),
(5, 'Segundo año bachillerato', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id_insignia` int(11) NOT NULL,
  `nombre_insignia` varchar(250) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `imagen_insignia` varchar(500) DEFAULT NULL,
  `estado_insignia` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_cuestionario` int(11) DEFAULT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insignia`
--

INSERT INTO `insignia` (`id_insignia`, `nombre_insignia`, `puntos`, `imagen_insignia`, `estado_insignia`, `id_cuestionario`, `id_nivel`) VALUES
(1, 'Convertirse en usuario de la página', 25, 'http://sample.info/?insect=fireman&porter=attraction#cave', b'1', NULL, 1),
(2, 'Completar 1 cuestionario', 25, 'http://sample.org/#yak', b'1', NULL, 1),
(3, 'Completar 3 cuestionarios', 50, 'https://sample.edu/railway', b'1', NULL, 2),
(4, 'Completar todos los cuestionarios de una materia', 50, 'https://sample.net/#hose', b'1', NULL, 3),
(5, 'Sacar la nota máxima en un cuestionario', 25, 'https://www.example.com/bedroom/aunt.php', b'0', NULL, 1),
(6, 'Visitar la página más de 3 veces', 25, 'https://sample.edu/day', b'0', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(11) NOT NULL,
  `nombre_inst` varchar(250) DEFAULT NULL,
  `tipo_institucion` varchar(15) DEFAULT NULL,
  `estado_institucion` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre_inst`, `tipo_institucion`, `estado_institucion`, `id_municipio`) VALUES
(1, 'Colegio García Flamenco', 'Privado', b'1', 5),
(2, 'Complejo Educativo Católico La Santa Familia', 'Público', b'1', 3),
(3, 'Instituto Tecnológico de Chalatenango', 'Público', b'1', 1),
(4, 'Instituto Tecnológico De Zacatecoluca', 'Público', b'1', 2),
(5, 'Instituto Nacional José Siméon Cañas', 'Privado', b'1', 1),
(6, 'Instituto Tecnológico en Computación e Idiomas', 'Privado', b'1', 2),
(7, 'Instituto Nacional Doctor Sarbelio Navarrete', 'Privado', b'1', 2),
(8, 'Instituto Nacional Walter Thilo Deininger', 'Privado', b'1', 4),
(9, 'Instituto Nacional Suchitoto', 'Privado', b'0', 4),
(10, 'Instituto Tecnológico de Formación Profesional', 'Privado', b'0', 7),
(11, 'Instituto Nacional de Victoria', 'Publico', b'0', 7),
(12, 'Centro Escolar Barrio El Calvario', 'Publico', b'1', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(50) DEFAULT NULL,
  `estado_materia` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_materia`, `estado_materia`) VALUES
(1, 'Lenguaje - Tercer Ciclo', b'1'),
(2, 'Ciencias - Tercer Ciclo', b'1'),
(3, 'Sociales - Tercer Ciclo', b'1'),
(4, 'Matematicas - Tercer Ciclo', b'1'),
(5, 'Ingles - Tercer Ciclo', b'1'),
(6, 'Lenguaje - Bachillerato', b'1'),
(7, 'Ciencias - Bachillerato', b'1'),
(8, 'Sociales - Bachillerato', b'1'),
(9, 'Matematicas - Bachillerato', b'1'),
(10, 'Ingles - Bachillerato', b'1'),
(11, 'Informatica - Bachillerato', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `nombre_municipio` varchar(80) DEFAULT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `nombre_municipio`, `id_departamento`) VALUES
(1, 'Chalatenango', 1),
(2, 'Zacatecoluca', 2),
(3, 'San Vicente', 3),
(4, 'Cuscatlán', 4),
(5, 'San Salvador', 5),
(6, 'Santa Tecla', 6),
(7, 'Sensuntepeque', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `nivel_alumno` varchar(15) DEFAULT NULL,
  `puntaje_nivel` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `nivel_alumno`, `puntaje_nivel`) VALUES
(1, 'Principiante', 25),
(2, 'Intermedio', 50),
(3, 'Avanzado', 100),
(4, 'Intermedio', 50),
(5, 'Avanzado', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `puntaje` float NOT NULL,
  `estado_pregunta` bit(1) NOT NULL COMMENT '1 = activo, 0 = inactivo',
  `id_tema` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `id_encuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `pregunta`, `puntaje`, `estado_pregunta`, `id_tema`, `id_materia`, `id_encuesta`) VALUES
(1, '¿Qué es hardware?', 20, b'1', 1, 11, NULL),
(2, '¿Qué es un periférico?', 20, b'1', 1, 11, NULL),
(3, 'Seleccione la opción que es verdadera:', 20, b'1', 1, 11, NULL),
(4, '¿Qué es software?', 20, b'1', 1, 11, NULL),
(5, 'El código máquina es el lenguaje que la computadora entiende sin hacer uso de un compilador o intérprete.', 20, b'1', 1, 11, NULL),
(6, 'Selecciona la función de un sistema operativo:', 20, b'1', 2, 11, NULL),
(7, '¿Cuáles son los sistemas operativos más comunes?', 20, b'1', 2, 11, NULL),
(8, '¿Qué es sistema Operativo?', 20, b'1', 2, 11, NULL),
(9, '¿Qué compañía creó el primer sistema operativo?', 20, b'1', 2, 11, NULL),
(10, 'Un controlador es un componente de software que permite que el sistema operativo y un dispositivo se comuniquen entre sí.', 20, b'1', 2, 11, NULL),
(11, 'Seleccione el programa que no forma parte del diseño de una página web:', 15, b'1', 3, 11, NULL),
(12, '¿Qué es el diseño responsive?', 30, b'1', 3, 11, NULL),
(13, '¿Cómo se llama el área de la programación que se dedica al diseño web?', 15, b'1', 3, 11, NULL),
(14, 'Seleccione el framework que se utiliza para la construcción de páginas web:', 20, b'1', 3, 11, NULL),
(15, 'Estos son comentarios en HTML:', 20, b'1', 3, 11, NULL),
(16, 'Es una red de comunicación que conecta múltiples computadoras a nivel mundial:', 15, b'1', 4, 11, NULL),
(17, '¿Cómo surgió el internet?', 20, b'1', 4, 11, NULL),
(18, 'ARPANET es considera la primera red de computadoras conectadas entre sí:', 15, b'1', 4, 11, NULL),
(19, 'Seleccione el año en que el internet fue lanzado para uso público:', 30, b'1', 4, 11, NULL),
(20, 'Fueron los desarrolladores del protocolo TCP/IP:', 20, b'1', 4, 11, NULL),
(21, 'Pregunta 1', 20, b'1', NULL, NULL, 1),
(22, 'Pregunta 2', 20, b'1', NULL, NULL, 1),
(23, 'Pregunta 3', 20, b'1', NULL, NULL, 1),
(24, 'Pregunta 4', 20, b'1', NULL, NULL, 1),
(25, 'Pregunta 5', 20, b'1', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_guardado`
--

CREATE TABLE `progreso_guardado` (
  `id_progreso` int(11) NOT NULL,
  `entrada` datetime DEFAULT NULL,
  `salida` datetime DEFAULT NULL,
  `tiempo_permanencia` float DEFAULT NULL COMMENT 'calculo en horas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `progreso_guardado`
--

INSERT INTO `progreso_guardado` (`id_progreso`, `entrada`, `salida`, `tiempo_permanencia`) VALUES
(1, '2023-03-29 11:10:47', '2023-03-29 12:10:47', 1),
(2, '2023-03-27 11:19:59', '2023-03-29 11:19:59', 48),
(3, '2023-03-22 11:21:57', '2023-03-22 15:21:57', 4),
(4, '2023-04-01 22:14:03', '2023-04-03 06:45:00', 32.3),
(5, '2023-03-28 11:02:37', '2023-03-28 14:15:10', 3.12),
(6, '2023-03-28 16:27:00', '2023-03-29 01:55:11', 9.28),
(7, '2023-03-24 07:40:25', '2023-03-24 09:02:28', 1.22),
(8, '2023-03-19 15:00:01', '2023-03-19 22:37:05', 7.37),
(9, '2023-03-30 23:05:32', '2023-03-31 05:57:08', 6.51),
(10, '2023-04-01 04:09:55', '2023-04-01 21:33:20', 17.23),
(11, '2023-04-02 10:54:49', '2023-04-02 11:25:03', 0.3),
(12, '2023-04-03 09:21:59', '2023-04-03 13:40:05', 4.18),
(13, '2023-03-22 12:30:19', '2023-03-22 19:05:37', 6.35),
(14, '2023-03-12 22:45:56', '2023-03-13 23:35:11', 0.49),
(15, '2023-03-07 12:08:43', '2023-03-07 14:27:03', 2.18),
(16, '2023-03-20 09:51:23', '2023-03-20 11:02:58', 1.11),
(17, '2023-03-24 14:39:07', '2023-03-24 15:28:01', 0.48),
(18, '2023-03-03 07:58:14', '2023-03-03 10:16:44', 2.18),
(19, '2023-04-05 14:59:23', '2023-04-05 18:31:00', 3.31),
(20, '2023-03-12 06:22:51', '2023-03-12 07:38:01', 1.15),
(21, '2023-03-26 13:01:45', '2023-03-26 17:30:26', 4.28),
(22, '2023-03-20 11:20:58', '2023-03-20 15:39:30', 4.48),
(23, '2023-04-02 22:15:40', '2023-04-02 23:52:07', 1.36),
(24, '2023-04-11 09:02:12', '2023-04-11 09:02:12', 1),
(25, '2023-04-11 09:02:12', '2023-04-11 10:02:12', 1),
(26, '2023-04-09 09:05:43', '2023-04-10 09:05:43', 24),
(27, '2023-04-10 09:03:59', '2023-04-11 09:03:59', 24),
(28, '2023-04-10 09:05:09', '2023-04-11 09:05:09', 24),
(29, '2023-04-09 09:06:08', '2023-04-11 09:06:08', 48),
(30, '2023-04-11 09:06:08', '2023-04-12 09:06:08', 24),
(31, '2023-04-03 09:20:32', '2023-04-04 09:20:32', 24),
(32, '2023-04-05 09:20:32', '2023-04-05 01:20:32', 4),
(33, '2023-04-06 09:20:32', '2023-04-08 09:20:32', 48),
(34, '2023-04-11 09:20:32', '2023-04-12 09:20:32', 24),
(35, '2023-04-11 09:20:32', '2023-04-13 09:20:32', 48),
(36, '2023-04-02 09:20:32', '2023-04-04 09:20:32', 48),
(37, '2023-04-07 09:20:32', '2023-04-09 09:20:32', 48),
(38, '2023-04-05 09:20:32', '2023-04-05 09:20:32', 5),
(39, '2023-04-05 09:20:32', '2023-04-07 09:20:32', 48),
(40, '2023-04-04 09:20:32', '2023-04-05 09:20:32', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperacion`
--

CREATE TABLE `recuperacion` (
  `id_recuperacion` int(11) NOT NULL,
  `correo_recuperacion` varchar(100) DEFAULT NULL,
  `id_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recuperacion`
--

INSERT INTO `recuperacion` (`id_recuperacion`, `correo_recuperacion`, `id_registro`) VALUES
(1, 'progra.lili2023@gmail.com', 1),
(2, 'lliajab12@gmail.com', 2),
(3, 'corereo@gmail.com', 3),
(4, 'bihokeb171@mitigado.com', 4),
(5, 'hayoicrettufrei-2477@yopmail.com', 5),
(6, 'griddeppabreppou-6788@yopmail.com', 6),
(7, 'tojummefaha-1575@yopmail.com', 7),
(8, 'fritanneupauge-3446@yopmail.com', 8),
(9, 'wajaullocroce-2303@yopmail.com', 9),
(10, 'tricubrezaje-6955@yopmail.com', 10),
(11, 'brajocrebeuzo-1996@yopmail.com', 11),
(12, 'tegossekeli-1611@yopmail.com', 12),
(13, 'habogazeippa-7785@yopmail.com', 13),
(14, 'martina74@hotmail.com', 14),
(15, 'dario_delg@gmail.com', 15),
(16, 'frank_mnj70@gmail.com', 16),
(17, 'estef88@gmail.com', 17),
(18, 'miguelito.gonza@yahoo.com', 18),
(19, 'nar_vaez586@gmail.com', 19),
(20, 'samu_bravo54@gmail.com', 20),
(21, 'sonnie.torres24@hotmail.com', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL,
  `nombre_registro` varchar(50) DEFAULT NULL,
  `apellido_registro` varchar(50) DEFAULT NULL,
  `nie` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(15) DEFAULT NULL COMMENT '	',
  `foto` varchar(500) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado_registro` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_usuario` int(11) NOT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `nombre_registro`, `apellido_registro`, `nie`, `fecha_nacimiento`, `genero`, `foto`, `correo`, `fecha_registro`, `estado_registro`, `id_usuario`, `id_grado`, `id_municipio`, `id_rol`) VALUES
(1, 'Lili Patricia', 'Lopez Lopez', NULL, '1995-02-20', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'progra.lili2023@gmail.com', '2023-03-29', b'1', 1, NULL, 1, 2),
(2, 'Luis Oswaldo', 'Zaldana', NULL, '1995-08-22', 'Masculino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'lliajab12@gmail.com', '2023-03-28', b'1', 2, NULL, 2, 2),
(3, 'Ana Patricia', 'Zaldana', NULL, '1998-09-16', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&fgdfgdfgdfddfdb=sistema&table=registro', 'corereo@gmail.com', '2023-03-07', b'1', 3, NULL, 3, 2),
(4, 'Gabriella Teresa', 'Nunez Maduro', 37062285, '2006-05-05', 'Femenino', 'http://account.example.com/angle/badge', 'bihokeb171@mitigado.com', '2023-03-28', b'1', 4, 4, 5, 1),
(5, 'Eduardo', 'Rios Fonseca', 87239930, '2006-06-03', 'Masculino', 'http://www.example.org/battle.aspx', 'hayoicrettufrei-2477@yopmail.com', '2023-03-01', b'1', 5, 4, 5, 1),
(6, 'Marianela', 'Vazquez', 49371093, '2007-05-02', 'Femenino', 'https://www.example.com/bee/animal.php', 'griddeppabreppou-6788@yopmail.com', '2023-03-02', b'1', 6, 4, 5, 1),
(7, 'Ricardo Alejandro', 'Medina Contreras', 83420458, '2006-11-25', 'Masculino', 'http://boat.example.com/battle/box.php#addition', 'tojummefaha-1575@yopmail.com', '2023-02-28', b'1', 7, 4, 5, 1),
(8, 'Milagro', 'Padron', 26970594, '2007-08-26', 'Femenino', 'https://www.example.com/balance.html?border=attack&argument=apparel', 'fritanneupauge-3446@yopmail.com', '2023-03-01', b'1', 8, 4, 5, 1),
(9, 'Veronica Amanda', 'Castro', 47256631, '2005-03-23', 'Femenino', 'http://birth.example.net/afterthought.html?agreement=apparel&bird=bear', 'wajaullocroce-2303@yopmail.com', '2023-03-03', b'1', 9, 5, 5, 1),
(10, 'Nicolas', 'Guzman', 58836957, '2005-04-16', 'Masculino', 'http://www.example.edu/afterthought/base.php?book=book#aftermath', 'tricubrezaje-6955@yopmail.com', '2023-03-02', b'1', 10, 5, 5, 1),
(11, 'Alicia Pamela', 'Reyes', 48477688, '2006-02-27', 'Femenino', 'https://example.net/approval/attraction.html', 'brajocrebeuzo-1996@yopmail.com', '2023-02-28', b'1', 11, 5, 5, 1),
(12, 'Pedro Jose', 'Alvarado Jimenez', 93716496, '2006-03-11', 'Masculino', 'https://sample.net/#hose', 'tegossekeli-1611@yopmail.com', '2023-02-28', b'1', 12, 5, 5, 1),
(13, 'Octavio', 'Hernandez', 74515958, '2006-10-18', 'Masculino', 'http://sample.info/?insect=fireman&porter=attraction#cave', 'habogazeippa-7785@yopmail.com', '2023-03-04', b'1', 13, 5, 5, 1),
(14, 'Martina Alba', 'Giron', 63376322, '2007-12-31', 'Femenino', 'http://www.sample.edu/?stone=government&judge=muscle#zebra', 'martina74@hotmail.com', '2023-03-09', b'1', 14, 4, 3, 1),
(15, 'Dario', 'Delgado', 97786821, '2007-12-25', 'Masculino', 'https://www.sample.org/?friends=volcano&control=rest#shoes', 'dario_delg@gmail.com', '2023-03-05', b'1', 15, 4, 3, 1),
(16, 'Francisco Alonso', 'Menjivar Lopez', 69459495, '2005-06-19', 'Masculino', 'https://www.sample.net/?screw=cap&teeth=tongue', 'frank_mnj70@gmail.com', '2023-03-19', b'1', 16, 5, 3, 1),
(17, 'Estefani', 'Ramos', 50658741, '2005-11-23', 'Femenino', 'https://sample.org/?scarecrow=face&coat=blow', 'estef88@gmail.com', '2023-03-19', b'1', 17, 5, 3, 1),
(18, 'Miguel Angel', 'Obrador Gonzalez', 48432436, '2006-10-04', 'Masculino', 'https://www.paper.sample.edu/move/wax?science=chickens#cherries', 'miguelito.gonza@yahoo.com', '2023-03-01', b'1', 18, 5, 3, 1),
(19, 'Andres Alejandro', 'Narvaez', 81563040, '2006-08-10', 'Masculino', 'http://sample.com/zipper#glove', 'nar_vaez586@gmail.com', '2023-03-24', b'1', 19, 4, 1, 1),
(20, 'Samuel Enrique', 'Bravo Soto', 49478480, '2007-07-18', 'Masculino', 'http://www.sample.info/grandmother.php', 'samu_bravo54@gmail.com', '2023-03-06', b'1', 20, 4, 1, 1),
(21, 'Sonia Mercedes', 'Lara Torres', 20605739, '2006-07-20', 'Femenino', 'http://knot.sample.info/wax/agreement.html', 'sonnie.torres24@hotmail.com', '2023-03-01', b'1', 21, 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_insignia`
--

CREATE TABLE `registro_insignia` (
  `id_registro_insignia` int(11) NOT NULL,
  `puntaje_actual` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_insignia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_insignia`
--

INSERT INTO `registro_insignia` (`id_registro_insignia`, `puntaje_actual`, `id_registro`, `id_insignia`) VALUES
(1, 25, 4, 1),
(2, 25, 5, 1),
(3, 50, 5, 2),
(4, 25, 6, 1),
(5, 50, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_institucion`
--

CREATE TABLE `registro_institucion` (
  `id_registro_institucion` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_institucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_institucion`
--

INSERT INTO `registro_institucion` (`id_registro_institucion`, `id_registro`, `id_institucion`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 7),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 3),
(20, 20, 3),
(21, 21, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_materia`
--

CREATE TABLE `registro_materia` (
  `id_registro_materia` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_materia`
--

INSERT INTO `registro_materia` (`id_registro_materia`, `id_registro`, `id_materia`) VALUES
(1, 4, 11),
(2, 5, 11),
(3, 6, 11),
(4, 7, 11),
(5, 8, 11),
(6, 9, 11),
(7, 10, 11),
(8, 11, 11),
(9, 12, 11),
(10, 13, 11),
(11, 14, 11),
(12, 15, 11),
(13, 16, 11),
(14, 17, 11),
(15, 18, 11),
(16, 19, 11),
(17, 20, 11),
(18, 21, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_respuesta`
--

CREATE TABLE `registro_respuesta` (
  `id_registro_respuesta` int(11) NOT NULL,
  `respuesta_alumno` text NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_respuesta`
--

INSERT INTO `registro_respuesta` (`id_registro_respuesta`, `respuesta_alumno`, `id_registro`, `id_respuesta`) VALUES
(1, 'Conjunto de elementos físicos que constituyen una computadora', 5, 1),
(2, 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 5, 2),
(3, 'BIOS es un software de gestión de arranque', 5, 3),
(4, 'Son los componentes intangibles que conforman un dispositivo electrónico', 5, 4),
(5, 'Verdadero', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `opcion1` text NOT NULL,
  `opcion2` text DEFAULT NULL,
  `opcion3` text DEFAULT NULL,
  `opcion4` text DEFAULT NULL,
  `respuesta_correcta` text NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `respuesta_correcta`, `id_pregunta`) VALUES
(1, 'El cerebro de la computadora', 'La parte lógica de la máquina', 'Conjunto de programas que permiten a la computadora realizar tareas específicas', 'Conjunto de elementos físicos que constituyen una computadora', 'Conjunto de elementos físicos que constituyen una computadora.', 1),
(2, 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 'Es un conjunto de argumentos o instrucciones para la computadora', 'Es un protocolo basado en los estándar TCP/IP para aplicaciones de automatización industrial', 'Es el intérprete de comandos de Windows', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 2),
(3, 'SDD significa: Unidad de Disco Duro', 'La memoria RAM es el sucesor de la memoria ROM', 'El puerto VGA se utiliza para audio y sonido', 'BIOS es un software de gestión de arranque', 'BIOS es un software de gestión de arranque', 3),
(4, 'Consiste en las partes externas de la computadora', 'Son los componentes intangibles que conforman un dispositivo electrónico', 'Es un sistema de seguridad que restringe el tráfico de internet entrante', 'Es el dispositivo que actúa de interfaz de conexión entre aparatos u otros dispositivos', 'Son los componentes intangibles que conforman un dispositivo electrónico', 4),
(5, 'Verdadero', 'Falso', NULL, NULL, 'Verdadero', 5),
(6, 'Opción 1', 'Opción 2', 'Opción 3', NULL, 'Opción 1', 21),
(7, 'Opción 1', 'Opción 2', 'Opción 3', NULL, 'Opción 3', 22),
(8, 'Opción 1', 'Opción 2', NULL, NULL, 'Opción 1', 23),
(9, 'Opción 1', 'Opción 2', NULL, NULL, 'Opción 2', 24),
(10, 'Opción 1', 'Opción 2', 'Opción 3', 'Opción 4', 'Opción 2', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `tipo_rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `tipo_rol`) VALUES
(1, 'Estudiante'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `estado_tema` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id_tema`, `titulo`, `estado_tema`, `id_materia`) VALUES
(1, 'Hardware y Software Basico', b'1', 11),
(2, 'Sistemas Operativos', b'1', 11),
(3, 'Estructura y diseño de una página web', b'1', 11),
(4, 'Breve historia sobre el internet', b'1', 11),
(5, 'Software de acceso libre', b'1', 11),
(6, 'La Tabla Periódica', b'1', 2),
(7, 'El átomo', b'1', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id_unidad` int(11) NOT NULL,
  `nombre_unidad` varchar(100) NOT NULL,
  `estado` bit(1) NOT NULL COMMENT '1-activo-2-inactivo',
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`id_unidad`, `nombre_unidad`, `estado`, `id_materia`) VALUES
(1, 'Unidad 1', b'1', 11),
(2, 'Unidad 2', b'1', 11),
(3, 'Unidad 3', b'1', 11),
(4, 'Unidad 1', b'1', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `contra` varchar(50) DEFAULT NULL,
  `visita` int(11) DEFAULT NULL,
  `sesiones` int(11) DEFAULT NULL,
  `id_progreso` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `contra`, `visita`, `sesiones`, `id_progreso`, `id_rol`) VALUES
(1, 'cualquiercosa', 1, 1, 1, 2),
(2, 'contrasenaaaaa', 1, 1, 2, 2),
(3, 'contrasenaaer1', 1, 1, 3, 2),
(4, 'Con_Traena.25', 4, 1, 4, 1),
(5, 'p4$$W0rddd.6', 9, 3, 5, 1),
(6, 'conTRAsena123.5', 2, 1, 6, 1),
(7, '$eR42*q@4', 5, 1, 7, 1),
(8, 'N49Lj3N$3', 8, 1, 8, 1),
(9, 'N000V1.emre', 19, 2, 9, 1),
(10, 'Caoert.458DE', 12, 2, 10, 1),
(11, '35$b*DGr2', 25, 1, 11, 1),
(12, 'X455A*&Ls', 10, 3, 12, 1),
(13, '59Ej!N5Zt', 1, 1, 13, 1),
(14, '9wl2U$LhO!', 4, 1, 14, 1),
(15, '&ri4rajE4!', 1, 1, 15, 1),
(16, 'flr4=ep$oJ', 6, 1, 16, 1),
(17, 'QicAtH@97$', 10, 2, 17, 1),
(18, 'S?i0ru&E8', 3, 1, 18, 1),
(19, '2Rujechopu5roPebrE1t', 1, 1, 19, 1),
(20, 'F9buTrubRotre', 1, 1, 20, 1),
(21, '3l7lwocucrLf0', 16, 2, 21, 1),
(22, 'xI7ljl4aNach9', 3, 1, 22, 1),
(23, 'p8ePraxAD9t', 6, 1, 23, 1),
(24, '094ueerg%$', 5, 5, 24, 1),
(25, '263ef%$#', 8, 4, 25, 1),
(26, 'bdhfwuyg&%$', 5, 5, 26, 1),
(27, 'sjfiogha/654', 7, 3, 27, 1),
(28, 'lsdfh&%465', 5, 2, 28, 1),
(29, 'lkgHFf&%5785', 2, 2, 29, 1),
(30, 'dhfeyurgb&%', 2, 1, 30, 1),
(31, 'sdfnknfNBFBFH', 4, 2, 31, 1),
(32, 'nfkagoi/65', 6, 4, 32, 1),
(33, 'bcvsdvgGYSFS &%$#', 9, 4, 33, 1),
(34, 'HFADFGsfhds65', 10, 5, 34, 1),
(35, 'xlfjfghh/USBG/W$TR$&%', 9, 4, 35, 1),
(36, 'BSDKBSFHDFSBfbhfb%$', 5, 2, 36, 1),
(37, 'uaaufgggYUGEW625%$%', 6, 3, 37, 1),
(38, 'csdhgadugte&wt$ef', 7, 3, 38, 1),
(39, 'dn<sdkbYGDFYU644', 8, 2, 39, 1),
(40, 'kjdfhgaudgh64545&$', 10, 1, 40, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`id_cuestionario`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_progreso` (`id_progreso`),
  ADD KEY `id_tema` (`id_tema`),
  ADD KEY `id_registro` (`id_registro`),
  ADD KEY `id_unidad` (`id_unidad`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD PRIMARY KEY (`id_insignia`),
  ADD KEY `id_cuestionario` (`id_cuestionario`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_encuesta` (`id_encuesta`),
  ADD KEY `id_tema` (`id_tema`);

--
-- Indices de la tabla `progreso_guardado`
--
ALTER TABLE `progreso_guardado`
  ADD PRIMARY KEY (`id_progreso`);

--
-- Indices de la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  ADD PRIMARY KEY (`id_recuperacion`),
  ADD KEY `id_registro` (`id_registro`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_municipio` (`id_municipio`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  ADD PRIMARY KEY (`id_registro_insignia`),
  ADD KEY `id_registro` (`id_registro`),
  ADD KEY `id_insignia` (`id_insignia`);

--
-- Indices de la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  ADD PRIMARY KEY (`id_registro_institucion`),
  ADD KEY `id_registro` (`id_registro`),
  ADD KEY `id_institucion` (`id_institucion`);

--
-- Indices de la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  ADD PRIMARY KEY (`id_registro_materia`),
  ADD KEY `id_registro` (`id_registro`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `registro_respuesta`
--
ALTER TABLE `registro_respuesta`
  ADD PRIMARY KEY (`id_registro_respuesta`),
  ADD KEY `id_registro` (`id_registro`),
  ADD KEY `id_respuesta` (`id_respuesta`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_pregunta` (`id_pregunta`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id_unidad`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_progreso` (`id_progreso`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id_cuestionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id_insignia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `progreso_guardado`
--
ALTER TABLE `progreso_guardado`
  MODIFY `id_progreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  MODIFY `id_recuperacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  MODIFY `id_registro_insignia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  MODIFY `id_registro_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  MODIFY `id_registro_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `registro_respuesta`
--
ALTER TABLE `registro_respuesta`
  MODIFY `id_registro_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id_unidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD CONSTRAINT `cuestionario_ibfk_1` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`),
  ADD CONSTRAINT `cuestionario_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `cuestionario_ibfk_3` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id_unidad`),
  ADD CONSTRAINT `cuestionario_ibfk_4` FOREIGN KEY (`id_progreso`) REFERENCES `progreso_guardado` (`id_progreso`),
  ADD CONSTRAINT `cuestionario_ibfk_5` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD CONSTRAINT `insignia_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`),
  ADD CONSTRAINT `insignia_ibfk_2` FOREIGN KEY (`id_cuestionario`) REFERENCES `cuestionario` (`id_cuestionario`);

--
-- Filtros para la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `pregunta_ibfk_3` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  ADD CONSTRAINT `pregunta_ibfk_4` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`);

--
-- Filtros para la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  ADD CONSTRAINT `recuperacion_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `registro_ibfk_3` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  ADD CONSTRAINT `registro_insignia_ibfk_1` FOREIGN KEY (`id_insignia`) REFERENCES `insignia` (`id_insignia`),
  ADD CONSTRAINT `registro_insignia_ibfk_2` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  ADD CONSTRAINT `registro_institucion_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`),
  ADD CONSTRAINT `registro_institucion_ibfk_2` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  ADD CONSTRAINT `registro_materia_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `registro_materia_ibfk_2` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `registro_respuesta`
--
ALTER TABLE `registro_respuesta`
  ADD CONSTRAINT `registro_respuesta_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`),
  ADD CONSTRAINT `registro_respuesta_ibfk_2` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id_respuesta`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`);

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `unidad_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_progreso`) REFERENCES `progreso_guardado` (`id_progreso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
