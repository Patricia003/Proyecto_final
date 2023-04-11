-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2023 a las 22:03:05
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
-- Base de datos: `10abril`
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
  `id_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`id_cuestionario`, `inicio_cuestionario`, `final_cuestionario`, `nota_final`, `duracion_cuestionario`, `intento`, `estado_cuestionario`, `estado`, `id_grado`, `id_progreso`, `id_tema`, `id_registro`) VALUES
(1, '2023-04-02 10:01:04', '2023-04-02 11:25:25', 8, 1.24, 1, b'0', b'1', 4, 4, 2, 6),
(2, '2023-03-28 11:19:57', '2023-03-28 14:00:29', 10, 2.4, 1, b'1', b'1', 4, 5, 1, 7),
(3, '2023-03-28 23:12:44', '2023-03-29 01:00:55', 6, 1.48, 1, b'1', b'1', 4, 6, 2, 8),
(4, '2023-03-24 08:12:09', '2023-03-24 08:56:22', 8, 0.44, 1, b'1', b'1', 4, 7, 1, 9),
(5, '2023-03-19 17:29:37', '2023-03-19 18:25:00', 10, 0.55, 1, b'1', b'1', 4, 8, 2, 10),
(6, '2023-03-30 23:45:18', '2023-03-31 02:31:14', 5.5, 2.45, 1, b'1', b'1', 5, 9, 4, 11),
(7, '2023-04-01 19:34:52', '2023-04-01 20:13:08', 10, 0.38, 1, b'1', b'1', 5, 10, 5, 12),
(8, '2023-04-02 10:56:03', '2023-04-02 11:25:00', 8.5, 0.28, 1, b'1', b'1', 5, 11, 3, 13),
(9, '2023-04-03 12:41:25', '2023-04-03 13:38:51', 3, 0.57, 1, b'1', b'1', 5, 12, 4, 14),
(10, '2023-03-22 14:57:39', '2023-03-22 16:29:04', 9.5, 1.31, 1, b'1', b'1', 5, 13, 5, 15);

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
(1, 'Convertirse en usuario de la página', 25, 'http://www.example.com/?airport=basketball', b'1', NULL, 1),
(2, 'Completar 5 cuestionarios', 50, 'http://example.org/approval/bead.php?bell=behavior&behavior=attraction', b'1', NULL, 2),
(3, 'Completar todos los cuestionarios de la materia de informática', 100, 'https://www.example.com/advice/bath.html?blade=addition&book=bag', b'1', NULL, 3),
(4, 'Sacar la nota máxima en un cuestionario', 25, 'https://www.example.com/bedroom/aunt.php', b'1', NULL, 1),
(5, 'Visitó la página más de 5 veces seguidas', 50, 'http://www.example.com/bell.aspx#bone', b'1', NULL, 2),
(6, 'Sacó la nota máxima en 3 cuestionarios', 100, 'http://www.example.com/animal/adjustment?belief=activity', b'1', NULL, 3);

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
(4, 'Instituto Tecnológico De Zacatecoluca', 'Publico', b'1', 1),
(5, 'Instituto Nacional José Siméon Cañas', 'Privado', b'1', 1),
(6, 'Instituto Tecnológico en Computación e Idiomas', 'Privado', b'0', 2),
(7, 'Instituto Nacional “Doctor Sarbelio Navarrete”', 'Privado', b'1', 2),
(8, '\r\nInstituto Nacional \"Walter Thilo Deininger\"', 'Privado', b'1', 4),
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
  `id_cuestionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `pregunta`, `respuestas`, `respuesta_correcta`, `respuesta_alumno`, `puntaje_maximo`, `puntaje_obtenido`, `estado_pregunta`, `id_cuestionario`) VALUES
(2, '¿Qué es hardware?', 'El cerebro de la computadora,\r\nLa parte lógica de la máquina,\r\nConjunto de programas que permiten a la computadora realizar tareas específicas,\r\nConjunto de elementos físicos que constituyen una computadora\r\n', 'Conjunto de elementos físicos que constituyen una computadora.', 'Conjunto de elementos físicos que constituyen una computadora.', 20, 20, b'1', 2),
(3, '¿Qué es un periférico?', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida,\r\nEs un conjunto de argumentos o instrucciones para la computadora,\r\nEs un protocolo basado en los estándar TCP/IP para aplicaciones de automatización industrial,\r\nEs el intérprete de comandos de Windows\r\n\r\n', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 20, 20, b'1', 2),
(4, 'Seleccione la opción que es verdadera', 'SDD significa “Unidad de Disco Duro”,\r\nLa memoria RAM es el sucesor de la memoria ROM,\r\nEl puerto VGA se utiliza para audio y sonido,\r\nBIOS es un software de gestión de arranque\r\n', 'BIOS es un software de gestión de arranque', 'BIOS es un software de gestión de arranque', 20, 20, b'1', 2),
(5, '¿Qué es software?', 'Consiste en las partes externas de la computadora,\r\nSon los componentes intangibles que conforman un dispositivo electrónico,\r\nEs un sistema de seguridad que restringe el tráfico de internet entrante,\r\nEs el dispositivo que actúa de interfaz de conexión entre aparatos u otros dispositivos\r\n\r\n', 'Son los componentes intangibles que conforman un dispositivo electrónico', 'Son los componentes intangibles que conforman un dispositivo electrónico', 20, 20, b'1', 2),
(6, 'El código máquina es el lenguaje que la computadora entiende sin hacer uso de un compilador o intérprete', 'Verdadero,\r\nFalso', 'Verdadero', 'Verdadero', 20, 20, b'1', 2),
(7, '¿Qué es hardware?', 'El cerebro de la computadora,\r\nLa parte lógica de la máquina,\r\nConjunto de programas que permiten a la computadora realizar tareas específicas,\r\nConjunto de elementos físicos que constituyen una computadora\r\n\r\n', 'Conjunto de elementos físicos que constituyen una computadora', 'Conjunto de elementos físicos que constituyen una computadora', 20, 20, b'1', 4),
(8, '¿Qué es un periférico?', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida,\r\nEs un conjunto de argumentos o instrucciones para la computadora,\r\nEs un protocolo basado en los estándar TCP/IP para aplicaciones de automatización industrial,\r\nEs el intérprete de comandos de Windows\r\n', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 'Son dispositivos externos a la computadora que permiten realizar operaciones de entrada y salida', 20, 20, b'1', 4),
(9, 'Seleccione la opción que es verdadera', 'SDD significa “Unidad de Disco Duro”,\r\nLa memoria RAM es el sucesor de la memoria ROM,\r\nEl puerto VGA se utiliza para audio y sonido,\r\nBIOS es un software de gestión de arranque\r\n', 'BIOS es un software de gestión de arranque', 'La memoria RAM es el sucesor de la memoria ROM', 20, 0, b'1', 4),
(10, '¿Qué es software?', 'Consiste en las partes externas de la computadora,\r\nSon los componentes intangibles que conforman un dispositivo electrónico,\r\nEs un sistema de seguridad que restringe el tráfico de internet entrante,\r\nEs el dispositivo que actúa de interfaz de conexión entre aparatos u otros dispositivos\r\n\r\n', 'Son los componentes intangibles que conforman un dispositivo electrónico', 'Son los componentes intangibles que conforman un dispositivo electrónico', 20, 20, b'1', 4),
(11, 'El código máquina es el lenguaje que la computadora entiende sin hacer uso de un compilador o intérprete', 'Verdadero,\r\nFalso\r\n', 'Verdadero', 'Verdadero', 20, 20, b'1', 4),
(12, 'Selecciona la función de un sistema operativo:', 'Ejecución de programas,\r\nAdministración de dispositivos inalámbricos,\r\nCifrado de tráfico en internet,\r\nComunicación entre dispositivos\r\n', 'Ejecución de programas', 'Ejecución de programas', 20, 20, b'1', 1),
(13, '¿Cuáles son los sistemas operativos más comunes?', '1. Opera, Linux, MacOS,\r\n2. Windows, Cisco, McAfee\r\n3. Linux, MacOS, Windows\r\n4. Norton, IBM, Nvidia\r\n', 'Linux, MacOS, Windows', 'Linux, MacOS, Windows', 20, 20, b'1', 1),
(14, '¿Qué es sistema Operativo?', 'Es un dispositivo digital lógico de interconexión de equipos,\r\nEs un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora,\r\nEs el sistema que permite transmitir información entre dispositivos,\r\nEs el medio con el cual el usuario puede comunicarse con una máquina\r\n', 'Es un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora', 'Es un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora', 20, 20, b'1', 1),
(15, '¿Qué compañía creó el primer sistema operativo?', 'Electronic Controls Company,\r\nIBM,\r\nApple,\r\nAtari\r\n', 'IBM', 'Electronic Controls Company', 20, 0, b'1', 1),
(16, 'Un controlador es un componente de software que permite que el sistema operativo y un dispositivo se comuniquen entre sí.', 'Falso\r\nVerdadero\r\n', 'Verdadero', 'Verdadero', 20, 20, b'1', 1),
(17, 'Selecciona la función de un sistema operativo:', 'Ejecución de programas,\r\nAdministración de dispositivos inalámbricos,\r\nCifrado de tráfico en internet,\r\nComunicación entre dispositivos\r\n', 'Ejecución de programas', 'Ejecución de programas', 20, 20, b'1', 3),
(18, '¿Cuáles son los sistemas operativos más comunes?', '1. Opera, Linux, MacOS,\r\n2. Windows, Cisco, McAfee\r\n3. Linux, MacOS, Windows\r\n4. Norton, IBM, Nvidia\r\n', 'Linux, MacOS, Windows', 'Linux, MacOS, Windows', 20, 20, b'1', 3),
(19, '¿Qué es sistema Operativo?', 'Es un dispositivo digital lógico de interconexión de equipos,\r\nEs un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora,\r\nEs el sistema que permite transmitir información entre dispositivos,\r\nEs el medio con el cual el usuario puede comunicarse con una máquina\r\n', 'Es un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora', 'Es el medio con el cual el usuario puede comunicarse con una máquina', 20, 0, b'1', 3),
(20, '¿Qué compañía creó el primer sistema operativo?', 'Electronic Controls Company,\r\nIBM,\r\nApple,\r\nAtari\r\n', 'IBM', 'IBM', 20, 20, b'1', 3),
(21, 'Un controlador es un componente de software que permite que el sistema operativo y un dispositivo se comuniquen entre sí.', 'Falso\r\nVerdadero\r\n', 'Verdadero\r\n', 'Falso\r\n', 20, 0, b'1', 3),
(22, 'Selecciona la función de un sistema operativo:', 'Ejecución de programas,\r\nAdministración de dispositivos inalámbricos,\r\nCifrado de tráfico en internet,\r\nComunicación entre dispositivos\r\n', 'Ejecución de programas\r\n\r\n', 'Ejecución de programas', 20, 20, b'1', 5),
(23, '¿Cuáles son los sistemas operativos más comunes?', '1. Opera, Linux, MacOS,\r\n2. Windows, Cisco, McAfee\r\n3. Linux, MacOS, Windows\r\n4. Norton, IBM, Nvidia\r\n', 'Linux, MacOS, Windows', 'Linux, MacOS, Windows', 20, 20, b'1', 5),
(24, '¿Qué es sistema Operativo?', 'Es un dispositivo digital lógico de interconexión de equipos,\r\nEs un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora,\r\nEs el sistema que permite transmitir información entre dispositivos,\r\nEs el medio con el cual el usuario puede comunicarse con una máquina\r\n', 'Es un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora', 'Es un conjunto de programas que nos permite manejar y utilizar los recursos de nuestra computadora', 20, 20, b'1', 5),
(25, '¿Qué compañía creó el primer sistema operativo?', 'Electronic Controls Company,\r\nIBM,\r\nApple,\r\nAtari,\r\n', 'IBM\r\n\r\n\r\n', 'IBM', 20, 20, b'1', 5),
(26, 'Un controlador es un componente de software que permite que el sistema operativo y un dispositivo se comuniquen entre sí.', 'Falso\r\nVerdadero\r\n', 'Verdadero', 'Verdadero', 20, 20, b'1', 5),
(27, 'Seleccione el programa que no forma parte del diseño de una página web:', 'CSS\r\nPHP\r\nHTML\r\nJavaScript\r\n', 'PHP', 'PHP', 15, 15, b'1', 8),
(28, '¿Qué es el diseño responsive?', 'Es un servicio online que hace que se pueda acceder a un sitio web en internet,\r\nEs un software que se ejecuta en el navegador web,\r\nEs un tipo de diseño web con la capacidad de adaptarse a pantallas de diferentes tamaños,\r\nHace referencia a los servidores a los que se accede a través de Internet\r\n', 'Es un tipo de diseño web con la capacidad de adaptarse a pantallas de diferentes tamaños', 'Es un tipo de diseño web con la capacidad de adaptarse a pantallas de diferentes tamaños', 30, 30, b'1', 8),
(29, '¿Cómo se llama el área de la programación que se dedica al diseño web?\r\n\r\n', 'Back-End,\r\nMachine Learning,\r\nFront-End,\r\nDesarrollo móvil\r\n', 'Front-End', 'Back-End', 15, 0, b'1', 8),
(30, 'Seleccione el framework que se utiliza para la construcción de páginas web:', 'React.Js,\r\nNode.Js,\r\nSpring Boot,\r\nLaravel\r\n', 'React.Js', 'React.Js', 20, 20, b'1', 8),
(31, 'Estos son comentarios en HTML:', 'Verdadero \r\nFalso\r\n', 'Falso', 'Falso', 20, 20, b'1', 8),
(32, 'Es una red de comunicación que conecta múltiples computadoras a nivel mundial:', 'ARPA,\r\nRed LAN,\r\nInternet,\r\nRed WAN\r\n', 'Internet', 'ARPA', 15, 0, b'1', 6),
(33, '¿Cómo surgió el internet?', 'Como una consecuencia de la Primera Guerra Mundial,\r\nComo una estrategia militar por parte del gobierno de Estados Unidos,\r\nPor medio de investigaciones realizadas por científicos soviéticos,\r\nComo consecuencia de la carrera espacial entre Estados Unidos y la Unión Soviética\r\n', 'Como una estrategia militar por parte del gobierno de Estados Unidos', 'Como una estrategia militar por parte del gobierno de Estados Unidos', 20, 20, b'1', 6),
(34, 'ARPANET es considera la primera red de computadoras conectadas entre sí:', 'Verdadero\r\nFalso\r\n', 'Verdadero\r\n\r\n', 'Verdadero', 15, 15, b'1', 6),
(35, 'Seleccione el año en que el internet fue lanzado para uso público', '1989,\r\n1969,\r\n1991,\r\n1985\r\n', '1991', '1989', 30, 0, b'1', 6),
(36, 'Fueron los desarrolladores del protocolo TCP/IP:', 'Vinton Cerf y Robert E. Kahn,\r\nTim Berners-Lee y Larry Roberts,\r\nRay y Ann Tomlinson,\r\nJohn Licklider y Radia Joy Perlman\r\n', 'Vinton Cerf y Robert E. Kahn', 'Vinton Cerf y Robert E. Kahn', 20, 20, b'1', 6),
(37, 'Es una red de comunicación que conecta múltiples computadoras a nivel mundial:', 'ARPA\r\nRed LAN\r\nInternet\r\nRed WAN\r\n', 'Internet', 'Red WAN', 15, 15, b'1', 9),
(38, '¿Cómo surgió el internet?', 'Como una consecuencia de la Primera Guerra Mundial,\r\nComo una estrategia militar por parte del gobierno de Estados Unidos,\r\nPor medio de investigaciones realizadas por científicos soviéticos,\r\nComo consecuencia de la carrera espacial entre Estados Unidos y la Unión Soviética\r\n', 'Como una estrategia militar por parte del gobierno de Estados Unidos', 'Por medio de investigaciones realizadas por científicos soviéticos', 20, 0, b'1', 9),
(39, 'ARPANET es considera la primera red de computadoras conectadas entre sí:', 'Verdadero\r\nFalso\r\n', 'Verdadero\r\n\r\n', 'Verdadero\r\n\r\n', 15, 15, b'1', 9),
(40, 'Seleccione el año en que el internet fue lanzado para uso público:', '1989,\r\n1969,\r\n1991,\r\n1985\r\n', '1991', '1985', 30, 0, b'1', 9),
(41, 'Fueron los desarrolladores del protocolo TCP/IP:', 'Vinton Cerf y Robert E. Kahn,\r\nTim Berners-Lee y Larry Roberts,\r\nRay y Ann Tomlinson,\r\nJohn Licklider y Radia Joy Perlman\r\n', 'Vinton Cerf y Robert E. Kahn', 'Tim Berners-Lee y Larry Roberts', 20, 0, b'1', 9),
(42, '¿Qué es software libre?', 'Es un software con derechos de autor al que se puede acceder sin costo alguno y se puede usar de manera ilimitada,\r\nEs un software que se puede modificar y utilizar libremente,\r\nEs un software comercial que se distribuye como versión de prueba que caduca tras un número establecido de días,\r\nHace referencia a programas descatalogados que tienen un estado legal\r\n', 'Es un software que se puede modificar y utilizar libremente', 'Es un software que se puede modificar y utilizar libremente', 30, 30, b'1', 7),
(43, 'Richard Matthew Stallman inventó el software libre en el año 1953:', 'Verdadero,\r\nFalso\r\n', 'Falso\r\n', 'Falso\r\n', 25, 25, b'1', 7),
(44, 'Seleccione el programa que forma parte del software libre:', 'WinRAR,\r\nSkype,\r\nFirefox,\r\nAdobe\r\n', 'Firefox', 'Firefox', 5, 5, b'1', 7),
(45, 'Organización creada con el propósito de difundir el desarrollo de software libre:', 'Organización del Software Libre,\r\nFundación por el Software Libre,\r\nFundación GNU,\r\nMovimiento para el Avance del Software Libre\r\n', 'Fundación por el Software Libre', 'Fundación por el Software Libre', 25, 25, b'1', 7),
(46, '¿Cómo se le llama al software que no es de acceso público?', 'Software Funcional,\r\nSoftware Privado,\r\nSoftware Propietario,\r\nSoftware Administrador\r\n', 'Software Propietario', 'Software Propietario', 15, 15, b'1', 7),
(47, '¿Qué es software libre?', 'Es un software con derechos de autor al que se puede acceder sin costo alguno y se puede usar de manera ilimitada,\r\nEs un software que se puede modificar y utilizar libremente,\r\nEs un software comercial que se distribuye como versión de prueba que caduca tras un número establecido de días,\r\nHace referencia a programas descatalogados que tienen un estado legal\r\n', 'Es un software que se puede modificar y utilizar libremente', 'Es un software que se puede modificar y utilizar libremente', 30, 30, b'1', 10),
(48, 'Richard Matthew Stallman inventó el software libre en el año 1953:', 'Verdadero\r\nFalso\r\n', 'Falso', 'Falso', 25, 25, b'1', 10),
(49, 'Seleccione el programa que forma parte del software libre:', 'WinRAR,\r\nSkype,\r\nFirefox,\r\nAdobe\r\n', 'Firefox\r\n', 'WinRAR', 5, 0, b'1', 10),
(50, 'Organización creada con el propósito de difundir el desarrollo de software libre:', 'Organización del Software Libre,\r\nFundación por el Software Libre,\r\nFundación GNU,\r\nMovimiento para el Avance del Software Libre\r\n', 'Fundación por el Software Libre', 'Fundación por el Software Libre', 25, 25, b'1', 10),
(51, '¿Cómo se le llama al software que no es de acceso público?', 'Software Funcional,\r\nSoftware Privado,\r\nSoftware Propietario,\r\nSoftware Administrador\r\n', 'Software Propietario', 'Software Propietario', 15, 15, b'1', 10);

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
(22, '2023-03-20 11:20:58', '2023-03-20 15:39:30', 4.18),
(23, '2023-04-02 22:15:40', '2023-04-02 23:52:07', 1.36);

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
(1, 'bihokeb171@mitigado.com', 6),
(2, 'hayoicrettufrei-2477@yopmail.com', 7),
(3, 'griddeppabreppou-6788@yopmail.com', 8),
(4, 'tojummefaha-1575@yopmail.com', 9),
(5, 'fritanneupauge-3446@yopmail.com', 10),
(6, 'wajaullocroce-2303@yopmail.com', 11),
(7, 'tricubrezaje-6955@yopmail.com', 12),
(8, 'brajocrebeuzo-1996@yopmail.com', 13),
(9, 'tegossekeli-1611@yopmail.com', 14),
(10, 'habogazeippa-7785@yopmail.com', 15),
(11, 'martina74@hotmail.com', 16),
(12, 'dario_delg@gmail.com', 17),
(13, 'frank_mnj70@gmail.com', 18),
(14, 'estef88@gmail.com', 19),
(15, 'miguelito.gonza@yahoo.com', 20),
(16, 'nar_vaez586@gmail.com', 21),
(17, 'samu_bravo54@gmail.com', 22),
(18, 'sonnie.torres24@hotmail.com', 23),
(19, 'virginia.puente45@yahoo.com', 24),
(20, 'juliocesar_navarro@yahoo.com', 25);

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
(2, 'Lili Patricia ', 'Lopez Lopez', 12365478, '2001-06-23', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'progra.lili2023@gmail.com', '2023-03-29', b'0', 1, 1, 1, 2),
(3, 'Luis Oswaldo', 'Zaldana', 12395764, '2000-06-23', 'Masculino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=sistema&table=registro', 'lliajab12@gmail.com', '2023-03-28', b'0', 2, 5, 2, 2),
(5, 'Ana Patricia', 'Zaldaña', NULL, '1999-05-11', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&fgdfgdfgdfddfdb=sistema&table=registro', 'corereo@gmail.com', '2023-03-07', b'0', 3, NULL, 6, 2),
(6, 'Gabriella Teresa', 'Nunez Maduro', 37062285, '2006-05-05', 'Femenino', 'http://account.example.com/angle/badge', 'bihokeb171@mitigado.com', '2023-03-28', b'1', 4, 4, 5, 2),
(7, 'Eduardo', 'Rios Fonseca', 87239930, '2006-06-03', 'Masculino', 'http://www.example.org/battle.aspx', 'hayoicrettufrei-2477@yopmail.com', '2023-03-01', b'1', 5, 4, 5, 2),
(8, 'Marianela', 'Vazquez', 49371093, '2007-05-02', 'Femenino', 'https://www.example.com/bee/animal.php', 'griddeppabreppou-6788@yopmail.com', '2023-03-02', b'1', 6, 4, 5, 2),
(9, 'Ricardo Alejandro', 'Medina Contreras', 83420458, '2006-11-25', 'Masculino', 'http://boat.example.com/battle/box.php#addition', 'tojummefaha-1575@yopmail.com', '2023-02-28', b'1', 7, 4, 5, 2),
(10, 'Milagro', 'Padron', 26970594, '2007-08-26', 'Femenino', 'https://www.example.com/balance.html?border=attack&argument=apparel', 'fritanneupauge-3446@yopmail.com', '2023-03-01', b'1', 8, 4, 5, 2),
(11, 'Veronica Amanda', 'Castro', 47256631, '2005-03-23', 'Femenino', 'http://birth.example.net/afterthought.html?agreement=apparel&bird=bear', 'wajaullocroce-2303@yopmail.com', '2023-03-03', b'1', 9, 5, 5, 2),
(12, 'Nicolas', 'Guzman', 58836957, '2005-04-16', 'Masculino', 'http://www.example.edu/afterthought/base.php?book=book#aftermath', 'tricubrezaje-6955@yopmail.com', '2023-03-02', b'1', 10, 5, 5, 0),
(13, 'Alicia Pamela', 'Reyes ', 48477688, '2006-02-27', 'Femenino', 'https://example.net/approval/attraction.html', 'brajocrebeuzo-1996@yopmail.com', '2023-02-28', b'1', 11, 5, 5, 0),
(14, 'Pedro Jose', 'Alvarado Jimenez', 93716496, '2006-03-11', 'Masculino', 'https://sample.net/#hose', 'tegossekeli-1611@yopmail.com', '2023-02-28', b'1', 12, 5, 5, 0),
(15, 'Octavio', 'Hernandez', 74515958, '2006-10-18', 'Masculino', 'http://sample.info/?insect=fireman&porter=attraction#cave', 'habogazeippa-7785@yopmail.com', '2023-03-04', b'1', 13, 5, 5, 0),
(16, 'Martina Alba', 'Giron', 63376322, '2007-12-31', 'Femenino', 'http://www.sample.edu/?stone=government&judge=muscle#zebra', 'martina74@hotmail.com', '2023-03-09', b'1', 14, 4, 3, 0),
(17, 'Dario', 'Delgado', 97786821, '2007-12-25', 'Masculino', 'https://www.sample.org/?friends=volcano&control=rest#shoes', 'dario_delg@gmail.com', '2023-03-05', b'1', 15, 4, 3, 0),
(18, 'Francisco Alonso', 'Menjivar Lopez', 69459495, '2005-06-19', 'Masculino', 'https://www.sample.net/?screw=cap&teeth=tongue', 'frank_mnj70@gmail.com', '2023-03-19', b'1', 16, 5, 3, 0),
(19, 'Estefani', 'Ramos', 50658741, '2005-11-23', 'Femenino', 'https://sample.org/?scarecrow=face&coat=blow', 'estef88@gmail.com', '2023-03-19', b'1', 17, 5, 3, 0),
(20, 'Miguel Angel', 'Obrador Gonzalez', 48432436, '2006-10-04', 'Masculino', 'https://www.paper.sample.edu/move/wax?science=chickens#cherries', 'miguelito.gonza@yahoo.com', '2023-03-01', b'1', 18, 5, 3, 0),
(21, 'Andres Alejandro', 'Narvaez', 81563040, '2006-08-10', 'Masculino', 'http://sample.com/zipper#glove', 'nar_vaez586@gmail.com', '2023-03-24', b'1', 19, 4, 1, 0),
(22, 'Samuel Enrique', 'Bravo Soto', 49478480, '2007-07-18', 'Masculino', 'http://www.sample.info/grandmother.php', 'samu_bravo54@gmail.com', '2023-03-06', b'1', 20, 4, 1, 0),
(23, 'Sonia Mercedes', 'Lara Torres', 20605739, '2006-07-20', 'Femenino', 'http://knot.sample.info/wax/agreement.html', 'sonnie.torres24@hotmail.com', '2023-03-01', b'1', 21, 4, 1, 0),
(24, 'Genesis Virginia', 'Puente Dominguez', 25518894, '2006-05-08', 'Femenino', 'http://www.sample.com/?direction=month&knot=zoo', 'virginia.puente45@yahoo.com', '2023-03-15', b'1', 22, 5, 1, 0),
(25, 'Julio Cesar', 'Navarro', 52395576, '2005-09-09', 'Masculino', 'https://www.sample.org/cellar', 'juliocesar_navarro@yahoo.com', '2023-03-30', b'1', 23, 5, 1, 0),
(26, 'Sonia Alejandra', 'Sanchez Matinez', 1983048493, '2023-04-09', 'Femenino', 'http://localhost/phpmyadmin/index.php?route=/table/change&db=segunda&table=registro', 'soniamarti@gmail.com', '2023-04-09', b'1', 1, 3, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_insignia`
--

CREATE TABLE `registro_insignia` (
  `id_registro_insignia` int(11) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_insignia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_insignia`
--

INSERT INTO `registro_insignia` (`id_registro_insignia`, `id_registro`, `id_insignia`) VALUES
(1, 6, 1),
(2, 7, 1),
(3, 7, 2),
(4, 8, 1),
(5, 8, 2),
(6, 9, 1),
(7, 10, 1),
(8, 11, 1),
(9, 12, 1),
(10, 12, 3),
(11, 13, 1),
(12, 13, 2),
(13, 13, 3),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 17, 4),
(22, 19, 6),
(23, 19, 4),
(24, 18, 2),
(25, 20, 4),
(26, 21, 1),
(27, 22, 1),
(28, 23, 1),
(29, 24, 1),
(30, 25, 1),
(31, 25, 3),
(32, 25, 5),
(33, 23, 5),
(34, 23, 4),
(35, 23, 6);

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
(1, 6, 1),
(2, 7, 1),
(3, 8, 1),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 15, 1),
(11, 16, 2),
(12, 17, 2),
(13, 18, 2),
(14, 19, 2),
(15, 20, 2),
(16, 21, 3),
(17, 22, 3),
(18, 23, 3),
(19, 24, 3),
(20, 25, 3);

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
(1, 6, 11),
(2, 7, 11),
(3, 8, 11),
(4, 9, 11),
(5, 10, 11),
(6, 11, 11),
(7, 12, 11),
(8, 13, 11),
(9, 14, 11),
(10, 15, 11),
(11, 16, 11),
(12, 17, 11),
(13, 18, 11),
(14, 19, 11),
(15, 20, 11),
(16, 21, 11),
(17, 22, 11),
(18, 23, 11),
(19, 24, 11),
(20, 25, 11);

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

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id_tema`, `titulo`, `estado_tema`, `id_materia`) VALUES
(1, 'Hardware y Software Basico', b'1', 11),
(2, 'Sistemas Operativos', b'1', 11),
(3, 'Estructura y diseño de una página web', b'1', 11),
(4, 'Breve historia sobre el internet', b'1', 11),
(5, 'Software de acceso libre', b'1', 11);

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
(3, 'contraseña2', 11, 2, 3, 1),
(4, 'Con_Traena.25', 4, 1, 4, 2),
(5, 'p4$$W0rddd.6', 9, 3, 5, 2),
(6, 'conTRAsena123.5', 2, 1, 6, 2),
(7, '$eR42*q@4', 5, 1, 7, 2),
(8, 'N49Lj3N$3', 8, 1, 8, 2),
(9, 'N000V1.emre', 19, 2, 9, 2),
(10, 'Caoert.458DE', 12, 2, 10, 2),
(11, '35$b*DGr2', 25, 1, 11, 2),
(12, 'X455A*&Ls', 10, 3, 12, 2),
(13, '59Ej!N5Zt', 1, 1, 13, 2),
(14, '9wl2U$LhO!', 4, 1, 14, 2),
(15, '&ri4rajE4!', 1, 1, 15, 2),
(16, 'flr4=ep$oJ', 6, 1, 16, 2),
(17, 'QicAtH@97$', 10, 2, 17, 2),
(18, 'S?i0ru&E8', 3, 1, 18, 2),
(19, '2Rujechopu5roPebrE1t', 1, 1, 19, 2),
(20, 'F9buTrubRotre', 1, 1, 20, 2),
(21, '3l7lwocucrLf0', 16, 2, 21, 2),
(22, 'xI7ljl4aNach9', 3, 1, 22, 2),
(23, 'p8ePraxAD9t', 6, 1, 23, 2);

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
  ADD KEY `id_registro` (`id_registro`);

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
  ADD KEY `id_municipio` (`id_municipio`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_rol_2` (`id_rol`);

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
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `progreso_guardado`
--
ALTER TABLE `progreso_guardado`
  MODIFY `id_progreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `recuperacion`
--
ALTER TABLE `recuperacion`
  MODIFY `id_recuperacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `registro_insignia`
--
ALTER TABLE `registro_insignia`
  MODIFY `id_registro_insignia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `registro_institucion`
--
ALTER TABLE `registro_institucion`
  MODIFY `id_registro_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `registro_materia`
--
ALTER TABLE `registro_materia`
  MODIFY `id_registro_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD CONSTRAINT `cuestionario_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  ADD CONSTRAINT `cuestionario_ibfk_2` FOREIGN KEY (`id_progreso`) REFERENCES `progreso_guardado` (`id_progreso`),
  ADD CONSTRAINT `cuestionario_ibfk_3` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`),
  ADD CONSTRAINT `cuestionario_ibfk_4` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`);

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
