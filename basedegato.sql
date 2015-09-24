-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2015 a las 06:10:17
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basedegato`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_usuarios`
--

CREATE TABLE IF NOT EXISTS `table_usuarios` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_usuarios`
--

INSERT INTO `table_usuarios` (`uid`, `name`, `email`, `password`, `created`) VALUES
(189, 'a', 'a', '$2a$10$f928ea7d95eb732994055ulUw657JXUJjE/rnoanaKnBmiwW2aQYy', '2015-09-23 20:30:44'),
(190, 'z', 'z', '$2a$10$a9fb53a88df29ebb02769ODzetC7522eS1YWdJV.XqQlEeHutP.Mi', '2015-09-23 20:59:32'),
(191, 'x', 'x', '$2a$10$aa0fcc8cb104efaf5987buYx4diafeStjj0hETALQuKBt0XAET8oS', '2015-09-23 21:01:02'),
(192, 'w', 'w', '$2a$10$9cfabd0f422aacb64d8fbON2W6aie9nzpvSFBKwjCnnwExQnMiekG', '2015-09-24 02:52:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_usuarios`
--
ALTER TABLE `table_usuarios`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_usuarios`
--
ALTER TABLE `table_usuarios`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
