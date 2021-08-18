-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-08-2021 a las 05:05:02
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reto6_g42`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_hospital`
--

CREATE TABLE `tb_hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `nit` int(15) NOT NULL,
  `dv` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `departament` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_hospital`
--

INSERT INTO `tb_hospital` (`id`, `name`, `address`, `phone`, `nit`, `dv`, `country`, `departament`, `city`) VALUES
(0, 'Hospital Veterinario San Miguel', 'CL 5A 45 85', '3001237654', 901456987, 1, 'Colombia', 'Tolima', 'Ibague'),
(1, 'Clinica Veterinaria Mascoticas', 'CL 6B 63 35', '3104567896', 900883586, 7, 'Colombia', 'Distrito Capital', 'Bogotá D.C.'),
(2, 'Veterinaria Mundo Animal', 'CL 1 2 3', '3209871234', 900767357, 1, 'Colombia', 'Distrito Capital', 'Bogota D.C.'),
(3, 'Hospital Veterinario Tierra de Mascotas', 'CL 52C 5 54', '3003214654', 900447987, 1, 'Colombia', 'Valle', 'Cali'),
(4, 'Hospital Veterinario Mi Pelu@s', 'CR 32 45A 49', '3009876543', 900785287, 2, 'Colombia', 'Distrito Capital', 'Bogotá'),
(5, 'Hospital Veterinario Pelud@s', 'TV 2 57C 91', '3001478523', 900321654, 2, 'Colombia', 'Distrito Capital', 'Bogotá'),
(6, 'Veterinaria La Sana', 'TV 1 56 21', '3104587532', 2147483647, 1, 'Colombia', 'Valle', 'Cali'),
(7, 'Hospital La Mascota Loca', 'CL 99 10 32', '3014769521', 2147483647, 2, 'Colombia', 'Antioquia', 'Medellín'),
(8, 'Veterinaria de la Esquina', 'CR 11 21 01', '3014748543', 860541323, 3, 'Colombia', 'Antioquia', 'Medellín'),
(9, 'Hospital la Gloria', 'AV 3 33 87', '3507531946', 901458744, 4, 'Colombia', 'Distrito Capital', 'Bogotá D.C.'),
(10, 'Veterinaria de la Loca Margarita & Co.', 'Manicomio 1', '9999', 9999999, 9, 'Sibate', 'Cundinamarca', 'Colombia'),
(11, 'prueba190890', 'prueba1', 'prueba1', 999999, 0, 'prueba', 'prueba1', 'prueba'),
(12, 'Hospital La Zunca', 'CL 3 SUR 33 87', '3507135946', 901247854, 3, 'Colombia', 'Distrito Capital', 'Bogotá D.C.'),
(13, 'Veterinaria La Buenasa', 'CR 43 37 27', '3107531947', 901454444, 4, 'Colombia', 'Distrito Capital', 'Bogotá D.C.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet`
--

CREATE TABLE `tb_pet` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `colour` varchar(20) NOT NULL,
  `health` varchar(40) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `pet_type` varchar(10) NOT NULL,
  `id_owner_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_pet`
--

INSERT INTO `tb_pet` (`id`, `name`, `breed`, `age`, `colour`, `health`, `sex`, `weight`, `pet_type`, `id_owner_pet`) VALUES
(1, 'Juano', 'Bulldog', 8, 'Cafe', 'Saludable', 'Macho', 35, 'Perro', 1),
(2, 'Poli', 'Pastor Alemán', 12, 'Negro', 'Displacia Cadera', 'Macho', 28, 'Perro', 2),
(3, 'Dante', 'Coker', 2, 'Cafe', 'Molestias Intestinales', 'Macho', 18, 'Perro', 3),
(4, 'Choko', 'Boxer', 5, 'Blanco', 'Saludable', 'Macho', 24, 'Perro', 4),
(5, 'Hades', 'Criollo', 6, 'Negro', 'Displacia Cadera', 'Macho', 14, 'Perro', 5),
(6, 'Milu', 'Golden Retriver', 1, 'Dorado', 'Saludable', 'Hembra', 24, 'Perro', 6),
(7, 'Noha', 'Labrador', 6, 'Chocolate', 'Saludable', 'Hembra', 29, 'Perro', 7),
(8, 'Nala', 'Labrador', 4, 'Dorada', 'Saludable', 'Hembra', 35, 'Perro', 7),
(9, 'Bruna', 'Golden Retriiver', 6, 'Negro', 'Corazon en Gota', 'Hembra', 30, 'Perro', 8),
(10, 'Michin', 'Persa', 5, 'Negro', 'Tos Perreras', 'Macho', 5, 'Gato', 3),
(11, 'Monita', 'Esfinge', 8, 'Amarillo', 'Recuperación', 'Hembra', 8, 'Gato', 8),
(12, 'Pancho', 'Siamés', 12, 'Blanco', 'Bueno', 'Macho', 8, 'Gato', 12),
(13, 'Pancha', 'Siamés', 12, 'Gris Jazpiado', 'Bueno', 'Hembra', 5, 'Gato', 12),
(20, '2', 'Bengala', 2, '2', '2', 'Macho', 2, 'Gato', 8),
(21, '3', 'Bengala', 3, '3', '3', 'Macho', 3, 'Gato', 2),
(23, '4', 'Bengala', 4, '4', '4', 'Macho', 4, 'Gato', 5),
(24, '5', 'Bengala', 5, '5', '5', 'Macho', 5, 'Gato', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet_hospital`
--

CREATE TABLE `tb_pet_hospital` (
  `id` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_pet_hospital`
--

INSERT INTO `tb_pet_hospital` (`id`, `id_pet`, `id_hospital`) VALUES
(1, 1, 1),
(2, 2, 0),
(3, 3, 0),
(4, 4, 2),
(5, 5, 1),
(6, 3, 1),
(7, 5, 0),
(8, 6, 0),
(9, 7, 1),
(10, 8, 1),
(11, 6, 1),
(12, 9, 4),
(13, 13, 8),
(14, 10, 9),
(15, 12, 10),
(16, 13, 11),
(17, 20, 12),
(18, 21, 13),
(19, 23, 13),
(20, 20, 8),
(21, 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pet_owners`
--

CREATE TABLE `tb_pet_owners` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `document_type` varchar(15) NOT NULL,
  `document` varchar(15) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_pet_owners`
--

INSERT INTO `tb_pet_owners` (`id`, `owner`, `document_type`, `document`, `contact`, `gender`) VALUES
(1, 'Juan Perez', 'C.C.', '10538181', '3045458498', 'Masculino'),
(2, 'Marco De La Puerta', 'C.C.', '10539292', '3045458490', 'Masculino'),
(3, 'Valeria Florez', 'C.E.', '10537373', '3045458490', 'Femenino'),
(4, 'Federico Angulo', 'PASAPORTE', '10536464', '3045458490', 'Masculino'),
(5, 'Dario Posada', 'C.C.', '10554321', '3013216547', 'Masculino'),
(6, 'Manuel Velez', 'C.C.', '10539342', '3045450123', 'Masculino'),
(7, 'Dolores Fuertes De Barriga', 'C.E.', '10539876', '3045498745', 'Femenino'),
(8, 'Benito Camelo', 'PASAPORTE', '10565474', '3016543490', 'Masculino'),
(12, 'Pedro Piedras', 'PASAPORTE', '19303030', '3014569879', 'Masculino'),
(13, 'Patricio Piraquive', 'PASAPORTE', '19258147', '3501478966', 'Masculino'),
(14, 'Gumercinda Pataquiva', 'C.C.', '52866664', '3124951671', 'Femenino'),
(15, 'Maria de los Dolores de Panzas', 'PASAPORTE', '10257896', '3204712878', 'Femenino'),
(16, 'prueba', 'C.E.', '123', '123', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_veterinarian`
--

CREATE TABLE `tb_veterinarian` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `document_type` varchar(15) NOT NULL,
  `document` varchar(15) NOT NULL,
  `vet_record` varchar(25) NOT NULL,
  `specialty` varchar(30) NOT NULL,
  `office_address` varchar(50) NOT NULL,
  `cell_phone` varchar(15) NOT NULL,
  `assistant_name` varchar(50) NOT NULL,
  `id_hospital` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_veterinarian`
--

INSERT INTO `tb_veterinarian` (`id`, `name`, `document_type`, `document`, `vet_record`, `specialty`, `office_address`, `cell_phone`, `assistant_name`, `id_hospital`) VALUES
(11, 'Abelaro Matasano', 'C.C.', '19303055', 'RV45687', 'General', 'CL 2 34 56 CON 304', '3104569874', 'María Paz', 0),
(12, 'Gonzalo Nieto', 'C.E.', '15478632', 'RV78954', 'General', 'TV 34 22 11 OF 1202', '3157423698', 'Nancy Duarte', 1),
(13, 'Armando Bronca Segura', 'C.C.', 'A123456', 'RV54387', 'Omeopatía', 'CR 23 76 12', '3178551478', 'Clara Castaño', 2),
(14, 'María León', 'C.C.', '54789214', 'RV65231', 'Radiología', 'CL 2 45 67', '3107892587', 'Susy Suarez', 0),
(15, 'Ramona Ponte Alegre', 'C.C.', '28754126', 'RV32964', 'General', 'DG 65 23 90 CON 321', '3000004578', 'Amira Miranda', 2),
(18, 'Prueba de Médico', 'PASAPORTE', '99999999', 'RM999999', 'Radiología', 'CL 1 2 3', '3000000000', 'Betty la Fea', 12),
(19, 'Ana Busado de Hesa', 'C.C.', '103245454', 'RM103245454', 'Ortopedista', 'CL 23 45', '3014781594', 'Jeimy Bonita', 6),
(20, 'Kienkarajo Tekura', 'C.C.', '13547894', 'RM13547894', 'Urgencias', 'CL 2 45 72', '3004862189', 'Teresa Larota', 7),
(21, 'Temira Tukaka', 'C.E.', '123789', 'RM1025878745', 'Bacteríologa', 'TV 4 5 21', '3207852579', 'Loaguanta Toito', 12),
(22, 'Tekito Lacarie', 'C.C.', '1023458789', 'RMV1023458789', 'Odontología', 'DG 32 56 91', '3005791597', 'Yosi Tesako Muelita', 10),
(23, 'Tesobo Tupanza', 'C.C.', '1032478963', 'RMV1032478963', 'General', 'CR 23 56 89', '3017539812', 'Tomeo Lafoto.', 9),
(24, 'Tarayado Tukoko', 'C.C.', '1025789159', 'RMV1025789159', 'General', 'AV 3 34 72', '3507891597', 'Tesuda Toito', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_hospital`
--
ALTER TABLE `tb_hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_owner_pet` (`id_owner_pet`);

--
-- Indices de la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pet` (`id_pet`),
  ADD KEY `id_hospital` (`id_hospital`);

--
-- Indices de la tabla `tb_pet_owners`
--
ALTER TABLE `tb_pet_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_veterinarian`
--
ALTER TABLE `tb_veterinarian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hospital` (`id_hospital`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_hospital`
--
ALTER TABLE `tb_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `tb_pet_owners`
--
ALTER TABLE `tb_pet_owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tb_veterinarian`
--
ALTER TABLE `tb_veterinarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD CONSTRAINT `tb_pet_ibfk_1` FOREIGN KEY (`id_owner_pet`) REFERENCES `tb_pet_owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_pet_hospital`
--
ALTER TABLE `tb_pet_hospital`
  ADD CONSTRAINT `tb_pet_hospital_ibfk_1` FOREIGN KEY (`id_pet`) REFERENCES `tb_pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pet_hospital_ibfk_2` FOREIGN KEY (`id_hospital`) REFERENCES `tb_hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_veterinarian`
--
ALTER TABLE `tb_veterinarian`
  ADD CONSTRAINT `tb_veterinarian_ibfk_1` FOREIGN KEY (`id_hospital`) REFERENCES `tb_hospital` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
