-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2019 a las 23:38:56
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbepslaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `estado`) VALUES
(1, 'ACTIVA'),
(2, 'INACTIVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ips`
--

CREATE TABLE `ips` (
  `cod_ips` varchar(10) NOT NULL,
  `nombre_ips` varchar(255) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `id_zonal` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ips`
--

INSERT INTO `ips` (`cod_ips`, `nombre_ips`, `razon_social`, `id_zonal`, `id_estado`) VALUES
('10022', 'UT LAURELES', 'UNION TEMPORAL VIVA MANIZALES', 4, 1),
('10192', 'GALENICA UT', 'CLINICA BOYACA GALENICA UT', 3, 1),
('10290', 'SANTA MARIA', 'E.A.T. CENTRO MEDICO SANTA MARIA I.P.S.', 8, 1),
('10419', 'LA PRIMERA', 'INSTITUTO DE DIAGNOSTICO MEDICO S.A - IDIME S.A.', 14, 1),
('10664', 'NEIVA CENTRO', 'INSTITUTO DE DIAGNOSTICO MEDICO S.A - IDIME S.A.', 16, 1),
('10693', 'CONSORCIO COMUNEROS', 'CONSORCIO COMUNEROS- LOS COMUNEROS HOSPITAL UNIVERSITARIO DE BUCARAMANGA S.A', 13, 1),
('10716', 'UT RIONEGRO', 'INTEGRACION EN SALUD PROMEDAN IPS UT', 9, 1),
('11129', 'FUSAGASUGA', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 11, 1),
('11134', 'UT VILLAMARIA', 'UNION TEMPORAL VIVA MANIZALES', 4, 1),
('11285', 'UT SANTA MARIA DEL LAGO', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11466', 'UT IBAGUE', 'UNION TEMPORAL VIVA TOLIMA', 25, 1),
('11467', 'UT ESPINAL', 'UNION TEMPORAL VIVA TOLIMA', 25, 1),
('11485', 'UT ALQUERIA', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11486', 'UT BARRIOS UNIDOS', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11487', 'UT KENNEDY', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11488', 'UT PRIMAVERA', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11492', 'GIRARDOT', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 11, 1),
('11559', 'SOACHA', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 11, 1),
('11562', 'FONTIBON', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 1, 1),
('11563', 'CENTENARIO', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 1, 1),
('11564', 'CIUDAD BOLIVAR', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 1, 1),
('11565', 'BOSA', 'BIENESTAR IPS S.A.S. - SANTA MARTA', 1, 1),
('11707', 'UT RENACER RIOHACHA', 'UNION TEMPORAL CECAM IPS RENACER LTDA', 17, 1),
('11775', 'UT RESTREPO', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('11800', 'SEDE BUGALAGRANDE', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11801', 'SEDE CANDELARIA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11802', 'SEDE EL CERRITO', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11803', 'SEDE FLORIDA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11804', 'SEDE PALMIRA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11805', 'SEDE PRADERA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11806', 'SEDE TULUA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11807', 'SEDE YUMBO', 'SANACION Y VIDA I.P.S A.S', 14, 1),
('11808', 'SEDE ZARZAL', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11809', 'SEDE BUENAVENTURA', 'SANACION Y VIDA I.P.S A.S', 14, 1),
('11810', 'SEDE BUGA', 'SANACION Y VIDA I.P.S A.S', 22, 1),
('11889', 'UT NORDVITAL', 'UT NORDVITAL IPS ESPECIALIDADES MEDICAS', 21, 1),
('1988', 'GRANADA HILLS', 'CAFAM', 1, 1),
('1989', 'CALLE 51', 'CAFAM', 1, 1),
('3176', 'SABANALARGA', 'CENTRO MEDICO SAN JUAN E.U.', 10, 1),
('4289', 'UT FLORIDABLANCA', 'U.T FOSCAL - ESCANOGRAFIA S.A. UT', 13, 1),
('4846', 'UT BOLARQUI', 'U.T FOSCAL - ESCANOGRAFIA S.A. UT', 13, 1),
('5552', 'FACATATIVA', 'CLINICA CHIA', 11, 1),
('5845', 'COLOMBIA SALUDABLE', 'COLOMBIA SALUDABLE SEDE QUIBDO', 9, 1),
('5903', 'BARRANCABERMEJA', 'FORPRESALUD', 13, 1),
('6105', 'PASTO NORTE', 'SOCIEDAD MEDICA SURSALUD SAS', 20, 1),
('6106', 'PASTO SUR', 'SOCIEDAD MEDICA SURSALUD SAS', 20, 1),
('6155', 'CAOBOS', 'UBA VIHONCO SAS', 21, 1),
('6347', 'SOGAMOSO CENTRO', 'CLINICA CHIA', 3, 1),
('6380', 'ZIPAQUIRA', 'CLINICA CHIA', 11, 1),
('6381', 'CHIA', 'CLINICA CHIA', 11, 1),
('6383', 'TUNJA', 'CLINICA CHIA', 3, 1),
('6465', 'GUAVIARE', 'NUEVA SALUD INTEGRAL IPS SAS', 15, 1),
('6656', '30 DE AGOSTO', 'INSTITUTO DE DIAGNOSTICO MEDICO S.A - IDIME S.A.', 12, 1),
('6657', 'DOS QUEBRADAS', 'INSTITUTO DE DIAGNOSTICO MEDICO S.A - IDIME S.A.', 12, 1),
('6658', 'AVENIDA GRAN COLOMBIA', 'UBA VIHONCO SAS', 21, 1),
('6996', 'YOPAL', 'SERVICIOS MEDICOS FAMEDIC S.A.S', 5, 1),
('7037', 'UT MURILLO', 'UT BARRANQUILLA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 10, 1),
('7039', 'UT BARRANQUILLA NORTE', 'UT BARRANQUILLA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 10, 1),
('7041', 'UT BARRANQUILLA CENTRO', 'UT BARRANQUILLA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 10, 1),
('7056', 'UT VILLA COLOMBIA', 'UT SALUD DE OCCIDENTE', 14, 1),
('7057', 'UT TEQUENDAMA', 'UT SALUD DE OCCIDENTE', 14, 1),
('7058', 'UT AV. VASQUEZ COBO', 'UT SALUD DE OCCIDENTE', 14, 1),
('7059', 'UT CALLE 26', 'UT SALUD DE OCCIDENTE', 14, 1),
('7061', 'UT MONTERIA', 'U.T SOLUCIONES INTEGRALES', 8, 1),
('7066', 'UT JARDIN', 'UT SANTA MARTA- CIENAGA PARA LA ATENCION USUARIOS NUEVA EPS', 18, 1),
('7067', 'UT POPAYAN', 'U.T. IPS NUEVA POPAYAN UT', 6, 1),
('7068', 'UT CIENAGA', 'UT SANTA MARTA- CIENAGA PARA LA ATENCION USUARIOS NUEVA EPS', 18, 1),
('7071', 'UT LAS DELICIAS', 'UT-VALLEDUPAR NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 7, 1),
('7086', 'UT GENERAL DEL NORTE', 'U.T NORTOLIMPUS- ORGANIZACION CLINICA GENERAL DEL NORTE S.A.S-TR2', 10, 1),
('7087', 'UT AV. EL ARSENAL', 'UT CARTAGENA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 2, 1),
('7088', 'UT NEPS SOLEDAD', 'U.T NORTOLIMPUS- ORGANIZACION CLINICA GENERAL DEL NORTE S.A.S-TR2', 10, 1),
('7089', 'UT PEDRO DE HEREDIA', 'UT CARTAGENA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 2, 1),
('7090', 'UT LA PLAZUELA', 'UT CARTAGENA NORTE PARA LA ATENCION USUARIOS NUEVA EPS', 2, 1),
('7103', 'UT VIVA 1A CALI', 'UNION TEMPORAL VIVA CALI', 14, 1),
('7104', 'UT JAMUNDI', 'UNION TEMPORAL VIVA CALI', 14, 1),
('7107', 'UT VIVA 1A MEDELLIN', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('7163', 'SAN ALONSO', 'U.T FOSCAL - ESCANOGRAFIA S.A. UT', 13, 1),
('7236', 'UT AMERICAS', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('7237', 'UT SUBA', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('7255', 'UT CALLE 30', 'U.T NORTOLIMPUS- ORGANIZACION CLINICA GENERAL DEL NORTE S.A.S-TR2', 10, 1),
('7283', 'VILLAVICENCIO', 'SERVICIOS MEDICOS FAMEDIC S.A.S', 19, 1),
('7317', 'UT MARLY', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('7318', 'UT TOBERIN', 'UNION TEMPORAL VIVA BOGOTA - VIVA 1A IPS SA', 1, 1),
('7455', 'SALUD A TU LADO', 'IPS SALUD A TU LADO SAS', 24, 1),
('7998', 'UT POBLADO', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('7999', 'UT BELLO', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('8000', 'UT ENVIGADO', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('8002', 'UT PRADO', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('8003', 'UT VILLANUEVA', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('8006', 'UT ITAGUI', 'INTEGRACION EN SALUD PROMEDAN IPS UT', 9, 1),
('8014', 'FUNDADORES', 'INSTITUTO DE DIAGNOSTICO MEDICO S.A - IDIME S.A.', 23, 1),
('8015', 'UT MANIZALES CENTRO', 'UNION TEMPORAL VIVA MANIZALES', 4, 1),
('8040', 'UT ESTADIO', 'UNION TEMPORAL VIVA MEDELLIN', 9, 1),
('9668', 'VILLA DE SAN DIEGO', 'UNIDAD MEDICA VILLA DE SAN DIEGO ORLUZ LTDA', 11, 1),
('9883', 'UT CENTRO', 'INTEGRACION EN SALUD PROMEDAN IPS UT', 9, 1),
('9916', 'PROMOSALUD', 'PROMOSALUD IPS T&E LTDA', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

CREATE TABLE `lista` (
  `id_lista` int(11) NOT NULL,
  `id_regional` int(11) DEFAULT NULL,
  `id_zonal` int(11) DEFAULT NULL,
  `fecha_inicial` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `cod_ips` varchar(10) NOT NULL,
  `pregunta_1` varchar(20) DEFAULT NULL,
  `pregunta_2` varchar(20) DEFAULT NULL,
  `pregunta_3` varchar(20) DEFAULT NULL,
  `pregunta_4` varchar(20) DEFAULT NULL,
  `pregunta_5` varchar(20) DEFAULT NULL,
  `pregunta_6` varchar(20) DEFAULT NULL,
  `pregunta_7` int(11) DEFAULT NULL,
  `pregunta_8` int(11) DEFAULT NULL,
  `pregunta_9` varchar(20) DEFAULT NULL,
  `pregunta_10` varchar(20) DEFAULT NULL,
  `pregunta_11` varchar(20) DEFAULT NULL,
  `pregunta_12` varchar(20) DEFAULT NULL,
  `pregunta_13` varchar(20) DEFAULT NULL,
  `pregunta_14` int(11) DEFAULT NULL,
  `pregunta_15` int(11) DEFAULT NULL,
  `pregunta_16` varchar(20) DEFAULT NULL,
  `pregunta_17` varchar(20) DEFAULT NULL,
  `pregunta_18` varchar(20) DEFAULT NULL,
  `pregunta_19` varchar(20) DEFAULT NULL,
  `pregunta_20` varchar(20) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lista`
--

INSERT INTO `lista` (`id_lista`, `id_regional`, `id_zonal`, `fecha_inicial`, `fecha_final`, `id_usuario`, `cod_ips`, `pregunta_1`, `pregunta_2`, `pregunta_3`, `pregunta_4`, `pregunta_5`, `pregunta_6`, `pregunta_7`, `pregunta_8`, `pregunta_9`, `pregunta_10`, `pregunta_11`, `pregunta_12`, `pregunta_13`, `pregunta_14`, `pregunta_15`, `pregunta_16`, `pregunta_17`, `pregunta_18`, `pregunta_19`, `pregunta_20`, `observaciones`) VALUES
(1, 1, 1, '2019-10-02', '2019-10-02', 1, '10022', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 1, 1, 'NO', 'SI', 'SI', 'SI', 'SI', 1, 1, 'SI', 'SI', 'SI', 'SI', 'SI', 'prueba'),
(2, 1, 1, '2019-10-02', '2019-10-02', 1, '10022', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 1, 1, 'NO', 'SI', 'SI', 'SI', 'SI', 1, 1, 'SI', 'SI', 'SI', 'SI', 'SI', 'prueba'),
(3, 1, 1, '2019-10-02', '2019-10-01', 1, '10022', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 2, 2, 'NO', 'NO', 'NO', 'NO', 'NO', 2, 2, 'NO', 'NO', 'NO', 'SI', 'SI', 'prueba 2'),
(4, 1, 1, '2019-10-02', '2019-10-01', 1, '10022', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 3, 'NO', 'NO', 'NO SERVICIO', 'SI', 'SI', 2, 2, 'SI', 'SI', 'SI', 'SI', 'SI', 'prueba 4'),
(5, 1, 1, '2019-10-02', '2019-10-09', 1, '10022', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 2, 3, 'SI', 'NO', 'NO', 'NO', 'NO', 1, 1, 'SI', 'NO', 'SI', 'SI', 'SI', 'PRUEBA 5'),
(6, 1, 1, '2019-10-09', '2019-10-09', 1, '10022', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 2, 1, 'SI', 'SI', 'SI', 'SI', 'SI', 1, 10, 'SI', 'SI', 'NO', 'NO', 'NO', 'prueba'),
(7, 1, 1, '2019-10-09', '2019-10-09', 1, '10022', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 2, 1, 'SI', 'SI', 'SI', 'SI', 'SI', 1, 10, 'SI', 'SI', 'NO', 'NO', 'NO', 'prueba'),
(8, 2, 2, '2019-10-04', '2019-10-05', 2, '10192', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 2, 1, 'NO SERVICIO', 'NO', 'NO', 'SI', 'NO', 10, 1, 'NO', 'NO', 'NO', 'NO', 'NO', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `perfil`) VALUES
(0, 'Administrador'),
(1, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regional`
--

CREATE TABLE `regional` (
  `id_regional` int(11) NOT NULL,
  `nombre_regional` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regional`
--

INSERT INTO `regional` (`id_regional`, `nombre_regional`) VALUES
(1, 'BOGOTA'),
(2, 'CENTRO - ORIENTE'),
(3, 'EJE CAFETERO'),
(4, 'NOR - OCCIDENTE'),
(5, 'NOR - ORIENTE'),
(6, 'NORTE'),
(7, 'SUR - OCCIDENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `clave`, `nombres`, `apellidos`, `id_perfil`) VALUES
(1, 80070659, 'lediatan1', 'LUIS ALFREDO', 'BASTIDAS PLAZAS', 0),
(2, 80070658, '123', 'Uriel', 'florez', 1),
(3, 1, '123', 'luis', 'florez', 1),
(4, 80070657, '12344', 'willian', 'rodriguez', 1),
(5, 80070656, '1234', 'Uriel', 'florez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonal`
--

CREATE TABLE `zonal` (
  `id_zonal` int(11) NOT NULL,
  `id_regional` int(11) NOT NULL,
  `zonal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zonal`
--

INSERT INTO `zonal` (`id_zonal`, `id_regional`, `zonal`) VALUES
(1, 1, 'BOGOTA'),
(2, 6, 'BOLIVAR'),
(3, 2, 'BOYACA'),
(4, 2, 'CALDAS'),
(5, 2, 'CASANARE'),
(6, 7, 'CAUCA'),
(7, 6, 'CESAR'),
(8, 4, 'CORDOBA'),
(9, 4, 'DPTO ANTIOQUIA'),
(10, 6, 'DPTO ATLANTICO'),
(11, 1, 'DPTO CUNDINAMARCA'),
(12, 3, 'DPTO RISARALDA'),
(13, 6, 'DPTO SAN ANDRES'),
(14, 5, 'DPTO SANTANDER'),
(15, 7, 'DPTO VALLE DEL CAUCA'),
(16, 2, 'GUAVIARE'),
(17, 2, 'HUILA'),
(18, 6, 'LA GUAJIRA'),
(19, 6, 'MAGDALENA'),
(20, 2, 'META'),
(21, 7, 'NARIÑO'),
(22, 5, 'NORTE DE SANTANDER'),
(23, 7, 'PALMIRA'),
(24, 3, 'QUINDIO'),
(25, 6, 'SUCRE'),
(26, 2, 'TOLIMA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `ips`
--
ALTER TABLE `ips`
  ADD PRIMARY KEY (`cod_ips`),
  ADD KEY `FK_zonal` (`id_zonal`),
  ADD KEY `FK_estado` (`id_estado`);

--
-- Indices de la tabla `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`id_lista`),
  ADD KEY `FK_usuario` (`id_usuario`),
  ADD KEY `FK_ips` (`cod_ips`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `regional`
--
ALTER TABLE `regional`
  ADD PRIMARY KEY (`id_regional`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `FK_perfil` (`id_perfil`);

--
-- Indices de la tabla `zonal`
--
ALTER TABLE `zonal`
  ADD PRIMARY KEY (`id_zonal`),
  ADD KEY `FK_regional` (`id_regional`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lista`
--
ALTER TABLE `lista`
  MODIFY `id_lista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `regional`
--
ALTER TABLE `regional`
  MODIFY `id_regional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `zonal`
--
ALTER TABLE `zonal`
  MODIFY `id_zonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ips`
--
ALTER TABLE `ips`
  ADD CONSTRAINT `FK_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `FK_zonal` FOREIGN KEY (`id_zonal`) REFERENCES `zonal` (`id_zonal`);

--
-- Filtros para la tabla `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `FK_ips` FOREIGN KEY (`cod_ips`) REFERENCES `ips` (`cod_ips`),
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`);

--
-- Filtros para la tabla `zonal`
--
ALTER TABLE `zonal`
  ADD CONSTRAINT `FK_regional` FOREIGN KEY (`id_regional`) REFERENCES `regional` (`id_regional`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
