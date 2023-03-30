-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2023 a las 21:58:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
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
  `duracion_cuestionario` time DEFAULT NULL,
  `intento` int(11) DEFAULT NULL,
  `estado_cuestionario` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `estado` bit(1) DEFAULT NULL COMMENT '0 - En Progreso 1 - Finalizado	',
  `id_grado` int(11) NOT NULL,
  `id_progreso` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(5, 'San Salvador '),
(6, 'La libertad'),
(7, 'Cabañas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `preg_encuesta` varchar(150) DEFAULT NULL,
  `resp_encuesta` varchar(100) DEFAULT NULL,
  `respuesta_user` varchar(100) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `puntaje_maximo` int(11) DEFAULT NULL,
  `puntaje_obtenido` float DEFAULT NULL,
  `estado_encuesta` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `nivel_academico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `nivel_academico`) VALUES
(1, 'Séptimo'),
(2, 'Octavo'),
(3, 'Noveno'),
(4, 'Primer año bachillerato'),
(5, 'Segundo año bachillerato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id_insignia` int(11) NOT NULL,
  `nombre_insignia` text DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL,
  `estado_insignia` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_cuestionario` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Colegio García Flamenco', 'Privado', b'0', 5),
(2, 'Complejo Educativo Católico La Santa Familia', 'Público', b'0', 3),
(3, 'Instituto Tecnológico de Chalatenango', 'Público', b'0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(50) DEFAULT NULL,
  `estado_materia` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, 'Custatlán', 4),
(5, 'San Salvador', 5),
(6, 'Santa Tecla', 6),
(7, 'Sensuntepeque', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `puntaje_actual` float DEFAULT NULL,
  `nivel_alumno` varchar(15) DEFAULT NULL,
  `puntaje_nivel` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `puntaje_actual`, `nivel_alumno`, `puntaje_nivel`) VALUES
(1, NULL, 'Principiante', NULL),
(2, NULL, 'Intermedio', NULL),
(3, NULL, 'Avanzado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `pregunta` text DEFAULT NULL,
  `respuestas` text DEFAULT NULL,
  `respuesta_correcta` text DEFAULT NULL,
  `respuesta_alumno` text DEFAULT NULL,
  `puntaje_maximo` float DEFAULT NULL,
  `puntaje_obtenido` float DEFAULT NULL,
  `estado_pregunta` bit(1) DEFAULT NULL COMMENT '1 - Activo 0 - Inactivo	',
  `id_cuestionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, '2023-03-27 11:19:59', '2023-03-29 11:19:59', 15),
(3, '2023-03-22 11:21:57', '2023-03-22 15:21:57', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperacion`
--

CREATE TABLE `recuperacion` (
  `id_recuperacion` int(11) NOT NULL,
  `correo_recuperacion` varchar(100) DEFAULT NULL,
  `id_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `nombre_registro`, `apellido_registro`, `nie`, `fecha_nacimiento`, `genero`, `foto`, `correo`, `fecha_registro`, `estado_registro`, `id_usuario`, `id_grado`, `id_municipio`) VALUES
(2, 'Lili Patricia ', 'Lopez Lopez', 12365478, '2001-06-23', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'progra.lili2023@gmail.com', '2023-03-29', b'0', 1, 1, 1),
(3, 'Luis Oswaldo', 'Zaldana', 12395764, '2000-06-23', 'Masculino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'lliajab12@gmail.com', '2023-03-28', b'0', 2, 5, 2),
(5, 'Ana Patricia', 'Zaldaña', NULL, '1999-05-11', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&fgdfgdfgdfddfdb=sistema&table=registro', 'corereo@gmail.com', '2023-03-07', b'0', 3, NULL, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_insignia`
--

CREATE TABLE `registro_insignia` (
  `id_registro_insignia` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_insignia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_materia`
--

CREATE TABLE `registro_materia` (
  `id_registro_materia` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Administrador'),
(2, 'Estudiante');

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
(2, 'contraseña', 1, 1, 2, 2),
(3, 'contraseña2', 11, 2, 3, 1);

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
  ADD KEY `id_tema` (`id_tema`);

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
  ADD KEY `id_cuestionario` (`id_cuestionario`);

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
  ADD KEY `id_municipio` (`id_municipio`);

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
  MODIFY `id_cuestionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id_insignia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `progreso_guardado`
--
ALTER TABLE `progreso_guardado`
  MODIFY `id_progreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  MODIFY `id_recuperacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  MODIFY `id_registro_insignia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  MODIFY `id_registro_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  MODIFY `id_registro_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD CONSTRAINT `cuestionario_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `cuestionario_ibfk_2` FOREIGN KEY (`id_progreso`) REFERENCES `progreso_guardado` (`id_progreso`),
  ADD CONSTRAINT `cuestionario_ibfk_3` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`);

--
-- Filtros para la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD CONSTRAINT `insignia_ibfk_1` FOREIGN KEY (`id_cuestionario`) REFERENCES `cuestionario` (`id_cuestionario`),
  ADD CONSTRAINT `insignia_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`);

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
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`id_cuestionario`) REFERENCES `cuestionario` (`id_cuestionario`);

--
-- Filtros para la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  ADD CONSTRAINT `recuperacion_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

--
-- Filtros para la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  ADD CONSTRAINT `registro_insignia_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`),
  ADD CONSTRAINT `registro_insignia_ibfk_2` FOREIGN KEY (`id_insignia`) REFERENCES `insignia` (`id_insignia`);

--
-- Filtros para la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  ADD CONSTRAINT `registro_institucion_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`),
  ADD CONSTRAINT `registro_institucion_ibfk_2` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  ADD CONSTRAINT `registro_materia_ibfk_1` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`),
  ADD CONSTRAINT `registro_materia_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_progreso`) REFERENCES `progreso_guardado` (`id_progreso`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
