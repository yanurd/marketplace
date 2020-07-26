-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2020 a las 00:55:26
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
-- Estructura de tabla para la tabla `cantidad`
--

CREATE TABLE `cantidad` (
  `id` int(11) NOT NULL,
  `idcart` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `item` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL, -- 64 es un número redondo para guardar hashes
  `isDeleted` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `isDeleted`) VALUES
(1, 'yancarlo', 'urdaneta', 'ua@g.com', 'asdas2', 'false'),
(2, 'Yancarlo', 'Urdaneta', 'yancarlou@gmail.com', '12412423', 'false'),
(3, 'Yano', 'Urdaneta', 'yanca@gmail.com', '12412423', 'false'),
(6, 'Yano', 'Urdaneta', 'yancar@gmail.com', '12412423', 'false'),
(7, 'Yano', 'Urdaneta', 'yan@gmail.com', '12412423', 'false'),
(8, 'Yano', 'Urdaneta', 'ya@gmil.com', '12412423', 'false'),
(9, 'Yano', 'Urdaneta', 'a@gml.com', '$2b$10$Ti64fC3fuzT6dYyxd9Ju5eroHfGQnc3fglzEDx', 'false'),
(10, 'Juan', 'Urdaneta', 'aas@gml.com', '$2b$10$qSW.nZ9PS9Rft6cyK7iB4.SE6NzrzTWSCF/Wys', 'false'),
(11, 'Diego', 'Urdaneta', 'diego@gmail.com', '$2b$10$SZL9YO1k6aO88s.5hCW1C.zADRxxwgZbRI2pfN', 'false'),
(12, 'Diego', 'Orozo', 'diegoorozo@gmail.com', '$2b$10$mWcEB1uBE4noJd0T0q1rP.L4jpEVz0.HNDyu4Z', 'false');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cantidad`
--
ALTER TABLE `cantidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcart_idx` (`idcart`);

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
-- AUTO_INCREMENT de la tabla `cantidad`
--
ALTER TABLE `cantidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cantidad`
--
ALTER TABLE `cantidad`
  ADD CONSTRAINT `idcart` FOREIGN KEY (`idcart`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
