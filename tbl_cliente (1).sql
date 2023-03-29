-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2023 a las 20:11:49
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
-- Base de datos: `tbl_cliente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_cliente`
--

CREATE TABLE `reg_cliente` (
  `id_px` int(50) NOT NULL,
  `nom_px` varchar(50) NOT NULL,
  `apdop_px` varchar(30) NOT NULL,
  `apdom_clte` varchar(30) NOT NULL,
  `edad_px` int(2) NOT NULL,
  `dom_px` varchar(50) NOT NULL,
  `ocp_px` varchar(50) NOT NULL,
  `no_tel` varchar(10) NOT NULL,
  `edo_cvl` varchar(15) NOT NULL,
  `Ref_px` varchar(50) NOT NULL,
  `mtvo_clta` varchar(100) NOT NULL,
  `Pcto_Act` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `id_historial` int(11) NOT NULL,
  `id_px` int(11) NOT NULL,
  `t_medicamento` varchar(2) NOT NULL,
  `f_reumatica` varchar(2) NOT NULL,
  `at_cardiacos` int(2) NOT NULL,
  `tuberculosis` varchar(2) NOT NULL,
  `diabetes` varchar(2) NOT NULL,
  `asma` varchar(2) NOT NULL,
  `gastritis` varchar(2) NOT NULL,
  `hptsn` varchar(2) NOT NULL,
  `hptts` varchar(2) NOT NULL,
  `sida` varchar(2) NOT NULL,
  `otro_pcto` varchar(100) NOT NULL,
  `S_excesivo` varchar(2) NOT NULL,
  `op_px` varchar(2) NOT NULL,
  `nom_op` varchar(100) NOT NULL,
  `Alrg_medicamento` varchar(2) NOT NULL,
  `trans_sanguinea` varchar(2) NOT NULL,
  `convul_ataques` varchar(2) NOT NULL,
  `pers_nerviosa` varchar(2) NOT NULL,
  `emb_pxm` varchar(2) NOT NULL,
  `meses_emb` varchar(2) NOT NULL,
  `fuma` varchar(2) NOT NULL,
  `toma` varchar(2) NOT NULL,
  `beb_alcohol` varchar(2) NOT NULL,
  `otro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reg_cliente`
--
ALTER TABLE `reg_cliente`
  ADD PRIMARY KEY (`id_px`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_px` (`id_px`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reg_cliente`
--
ALTER TABLE `reg_cliente`
  MODIFY `id_px` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reg_cliente`
--
ALTER TABLE `reg_cliente`
  ADD CONSTRAINT `reg_cliente_ibfk_1` FOREIGN KEY (`id_px`) REFERENCES `tbl_cliente` (`id_px`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
