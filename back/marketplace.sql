-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2020 a las 18:25:28
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marketplace`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `item` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `idUser`, `item`, `precio`, `cantidad`) VALUES
(3, 1, 'T-Shirt', 0, 2),
(4, 1, 'T-Shirt', 0, 2),
(5, 1, 'T-Shirt', 7, 2),
(10, 2, 'Coffee Cup', 7, 3),
(11, 2, 'T-Shirt', 20, 1),
(12, 2, 'T-Shirt', 20, 1),
(13, 2, 'Album 3', 10, 1),
(14, 2, 'Coffee Cup', 7, 1),
(15, 13, 'Coffee Cup', 7, 1),
(16, 13, 'Coffee Cup', 7, 1),
(17, 17, 'T-Shirt', 20, 1),
(18, 18, 'Coffee Cup', 7, 1),
(19, 18, 'Coffee Cup', 7, 1),
(20, 18, 'Coffee Cup', 7, 1),
(21, 18, 'Coffee Cup', 7, 1),
(22, 18, 'Album 1', 13, 1),
(23, 18, 'Coffee Cup', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(80) NOT NULL,
  `isDeleted` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `isDeleted`) VALUES
(1, 'yancarlo', 'urdaneta', 'ua@g.com', '$2b$10$82eqrDjZIKgTdoZ7JfySX.QGr2G1N1UF1sfYS/KLXmzgMzAgczT8G', 'false'),
(2, 'Yancarlo', 'Urdaneta', 'yancarlou@gmail.com', '12412423', 'false'),
(3, 'Yano', 'Urdaneta', 'yanca@gmail.com', '12412423', 'false'),
(6, 'Yano', 'Urdaneta', 'yancar@gmail.com', '12412423', 'false'),
(7, 'Yano', 'Urdaneta', 'yan@gmail.com', '12412423', 'false'),
(8, 'Yano', 'Urdaneta', 'ya@gmil.com', '12412423', 'false'),
(9, 'Yano', 'Urdaneta', 'a@gml.com', '$2b$10$Ti64fC3fuzT6dYyxd9Ju5eroHfGQnc3fglzEDx', 'false'),
(10, 'Juan', 'Urdaneta', 'aas@gml.com', '$2b$10$qSW.nZ9PS9Rft6cyK7iB4.SE6NzrzTWSCF/Wys', 'false'),
(11, 'Diego', 'Urdaneta', 'diego@gmail.com', '$2b$10$SZL9YO1k6aO88s.5hCW1C.zADRxxwgZbRI2pfN', 'false'),
(12, 'Diego', 'Orozo', 'diegoorozo@gmail.com', '$2b$10$mWcEB1uBE4noJd0T0q1rP.L4jpEVz0.HNDyu4Z', 'false'),
(13, 'juan', 'gonzales', 'gonzalesjuan@gmail.com', '$2b$10$UcsZejEOinFISZIMG/N0De9YwoBBB56D7P1jn2nwNTk2QYqucQzx.', 'false'),
(14, 'Juan', '', 'candona@gmail.com', '$2b$10$qeTXLmihSxx0/IlvNySJceVA0FwoZzcBPu3rIED6TsRw0tC.S0/G.', 'false'),
(16, 'Juansito', '', 'candona2@gmail.com', '$2b$10$hUey5LAuBVObsP/GoIs81OyW6lIeaADYO7zwfX8sRSY4f3vaU3Cya', 'false'),
(17, 'Andy', 'Gomez', 'agomez@gmail.com', '$2b$10$2938.RprOxx6kmf7VM0SMuw8ZBi/ilObtwUr6M/c6YdfAbFaXXQSO', 'false'),
(18, 'pepe', 'pinola', 'jjj@ggg.hh', '$2b$10$q8c.NF56hE6m1OsASs.ZdekhC6q.76ezsymdq2SXQ8uvcUigzhZ8u', 'false'),
(19, 'Diego', 'Orozo', 'dzo@gmail.com', '$2b$10$zfWAQUGXRsV6E6fJjZf4m.SIF92.jTD/vU0sBOWQORO0eQ3DruqNu', 'false'),
(20, 'jeje', 'ororo', 'k@k.k', '$2b$10$T6UvrBOxLC5h8HVVAfu5veWrTSc.I//NZCGcb9sOP8tkdJ0bmK39e', 'false'),
(21, 'jeje', 'ororo', 'kk@k.k', '$2b$10$jEgLGpagqXDoql1bkJv0TOiQX.qnP6cFHw552zK5dSZ24GODDKa/K', 'false');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser_idx` (`idUser`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
