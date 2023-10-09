-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2023 a las 05:04:24
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
-- Base de datos: `quizzium`
--
CREATE DATABASE IF NOT EXISTS `quizzium` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quizzium`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'ciencia'),
(2, 'historia'),
(3, 'arte'),
(4, 'geografia'),
(5, 'entretenimiento'),
(6, 'deporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id_cuenta` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL DEFAULT 3,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `mail` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `foto_perfil` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `esta_activa` tinyint(1) NOT NULL,
  `fecha_validacion` timestamp NULL DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id_cuenta`, `id_genero`, `id_rol`, `fecha_creacion`, `mail`, `ciudad`, `pais`, `usuario`, `contrasenia`, `foto_perfil`, `fecha_nacimiento`, `nombre`, `apellido`, `esta_activa`, `fecha_validacion`, `token`) VALUES
(1, 1, 1, '2023-05-23 23:34:56', 'administrador@gmail.com', 'Ituzaingo', 'Argentina', 'matias', '202cb962ac59075b964b07152d234b70', '6473d9bb6ccf5_foto para probar.png', '1997-12-14', 'Matías', 'Coco', 1, '2023-05-23 23:34:56', NULL),
(2, 2, 2, '2023-05-23 23:38:01', 'editor@gmail.com', 'Ramos Mejia', 'Argentina', 'victoria', '202cb962ac59075b964b07152d234b70', '6473d9c91d273_foto para probar.png', '1995-11-21', 'Victoria', 'Gambaro', 1, '2023-05-23 23:38:01', NULL),
(3, 3, 3, '2023-05-23 23:38:01', 'jugador@gmail.com', 'Liniers', 'Argentina', 'Nuria', '202cb962ac59075b964b07152d234b70', '6473d9d04d766_foto para probar.png', '1997-06-24', 'Nuria', 'Orquin', 1, '2023-05-23 23:38:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `tipo`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Prefiero no decirlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id_juego` int(11) NOT NULL,
  `id_partida` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id_juego`, `id_partida`, `id_cuenta`, `puntaje`) VALUES
(1, 3, 1, 2),
(2, 4, 1, 0),
(3, 7, 1, 0),
(4, 8, 1, 1),
(5, 9, 1, 0),
(6, 10, 1, 1),
(7, 11, 1, 1),
(8, 12, 1, 0),
(9, 13, 1, 1),
(10, 14, 1, 1),
(11, 15, 1, 1),
(12, 16, 1, 1),
(13, 17, 1, 0),
(14, 18, 1, 1),
(15, 19, 1, 1),
(16, 20, 1, 0),
(17, 21, 1, 4),
(18, 22, 1, 1),
(19, 23, 1, 8),
(20, 24, 1, 0),
(21, 25, 1, 3),
(22, 26, 1, 0),
(23, 27, 1, 3),
(24, 28, 1, 1),
(25, 29, 1, 0),
(26, 30, 1, 5),
(27, 31, 1, 1),
(28, 32, 1, 18),
(29, 33, 1, 1),
(30, 34, 1, 4),
(31, 35, 1, 5),
(32, 36, 1, 2),
(33, 37, 1, 9),
(34, 38, 1, 7),
(35, 39, 1, 2),
(36, 40, 1, 0),
(37, 41, 1, 13),
(38, 42, 1, 1),
(39, 43, 1, 0),
(40, 44, 1, 0),
(41, 45, 1, 0),
(42, 46, 1, 0),
(43, 47, 1, 1),
(44, 48, 1, 0),
(45, 49, 1, 1),
(46, 50, 1, 3),
(47, 51, 1, 0),
(48, 52, 1, 2),
(49, 53, 1, 3),
(50, 54, 1, 5),
(51, 55, 1, 7),
(52, 56, 1, 16),
(53, 57, 1, 12),
(54, 58, 1, 13),
(55, 59, 1, 3),
(56, 60, 1, 33),
(57, 61, 1, 0),
(58, 62, 1, 0),
(59, 63, 1, 0),
(60, 64, 1, 0),
(61, 65, 1, 0),
(62, 66, 1, 0),
(63, 67, 1, 0),
(64, 68, 1, 0),
(65, 69, 1, 0),
(66, 70, 1, 0),
(67, 71, 1, 0),
(68, 72, 1, 0),
(69, 73, 1, 0),
(70, 74, 1, 0),
(71, 75, 1, 0),
(72, 76, 1, 0),
(73, 77, 1, 0),
(74, 78, 1, 0),
(75, 79, 1, 0),
(76, 80, 1, 0),
(77, 81, 1, 0),
(78, 82, 1, 0),
(79, 83, 1, 0),
(80, 84, 1, 0),
(81, 85, 1, 0),
(82, 86, 1, 0),
(83, 87, 1, 0),
(84, 88, 1, 0),
(85, 89, 1, 0),
(86, 90, 1, 0),
(87, 91, 1, 0),
(88, 92, 1, 0),
(89, 93, 1, 0),
(90, 94, 1, 0),
(91, 95, 1, 0),
(92, 96, 1, 0),
(93, 97, 1, 0),
(94, 98, 1, 2),
(95, 99, 1, 1),
(96, 100, 1, 6),
(97, 101, 1, 0),
(98, 102, 1, 0),
(99, 103, 1, 0),
(100, 104, 1, 0),
(101, 105, 1, 0),
(102, 106, 1, 1),
(103, 107, 1, 0),
(104, 108, 1, 0),
(105, 109, 1, 0),
(106, 110, 1, 0),
(107, 111, 1, 2),
(108, 112, 1, 2),
(109, 113, 1, 0),
(110, 114, 1, 0),
(111, 115, 1, 0),
(112, 116, 1, 0),
(113, 117, 1, 0),
(114, 118, 1, 0),
(115, 119, 1, 0),
(116, 120, 1, 0),
(117, 121, 1, 0),
(118, 122, 1, 0),
(119, 123, 1, 0),
(120, 124, 1, 0),
(121, 125, 1, 0),
(122, 126, 1, 0),
(123, 127, 1, 0),
(124, 128, 1, 0),
(125, 129, 1, 4),
(126, 130, 1, 0),
(127, 131, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE `opcion` (
  `id_opcion` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `opcion` varchar(100) NOT NULL,
  `es_correcta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id_opcion`, `id_pregunta`, `opcion`, `es_correcta`) VALUES
(1, 1, 'Amazonas', 1),
(2, 1, 'Nilo', 0),
(3, 1, 'Misisipi', 0),
(4, 1, 'Yangtsé', 0),
(5, 2, 'Mercurio', 1),
(6, 2, 'Venus', 0),
(7, 2, 'Marte', 0),
(8, 2, 'Júpiter', 0),
(9, 3, 'Hierro', 0),
(10, 3, 'Oxígeno', 1),
(11, 3, 'Silicio', 0),
(12, 3, 'Aluminio', 0),
(13, 4, 'Canberra', 1),
(14, 4, 'Sídney', 0),
(15, 4, 'Melbourne', 0),
(16, 4, 'Brisbane', 0),
(17, 5, 'H2O', 1),
(18, 5, 'CO2', 0),
(19, 5, 'NaCl', 0),
(20, 5, 'O2', 0),
(21, 6, 'Au', 1),
(22, 6, 'Ag', 0),
(23, 6, 'Fe', 0),
(24, 6, 'Cu', 0),
(25, 7, 'China', 1),
(26, 7, 'India', 0),
(27, 7, 'Estados Unidos', 0),
(28, 7, 'Brasil', 0),
(29, 8, 'Miguel Ángel', 0),
(30, 8, 'Leonardo da Vinci', 1),
(31, 8, 'Pablo Picasso', 0),
(32, 8, 'Rembrandt', 0),
(33, 9, 'Fútbol', 0),
(34, 9, 'Baloncesto', 0),
(35, 9, 'Béisbol', 0),
(36, 9, 'Fútbol americano', 1),
(37, 10, '1896', 1),
(38, 10, '1904', 0),
(39, 10, '1920', 0),
(40, 10, '1900', 0),
(41, 11, 'Mercurio', 0),
(42, 11, 'Júpiter', 1),
(43, 11, 'Marte', 0),
(44, 11, 'Venus', 0),
(45, 12, 'Londres', 0),
(46, 12, 'París', 1),
(47, 12, 'Roma', 0),
(48, 12, 'Berlín', 0),
(49, 13, 'Hamlet', 1),
(50, 13, 'Romeo y Julieta', 0),
(51, 13, 'Macbeth', 0),
(52, 13, 'Otelo', 0),
(53, 14, 'Océano Pacífico', 1),
(54, 14, 'Océano Atlántico', 0),
(55, 14, 'Océano Índico', 0),
(56, 14, 'Océano Ártico', 0),
(57, 15, '1492', 1),
(58, 15, '1498', 0),
(59, 15, '1500', 0),
(60, 15, '1510', 0),
(61, 16, 'Mercurio', 0),
(62, 16, 'Plutón', 0),
(63, 16, 'Oro', 0),
(64, 16, 'Hierro', 1),
(65, 17, '1789', 1),
(66, 17, '1848', 0),
(67, 17, '1776', 0),
(68, 17, '1812', 0),
(69, 18, 'Leonardo da Vinci', 1),
(70, 18, 'Pablo Picasso', 0),
(71, 18, 'Vincent van Gogh', 0),
(72, 18, 'Michelangelo', 0),
(73, 19, 'Rusia', 1),
(74, 19, 'Canadá', 0),
(75, 19, 'Estados Unidos', 0),
(76, 19, 'China', 0),
(77, 20, 'Christian Bale', 0),
(78, 20, 'Michael Keaton', 0),
(79, 20, 'Ben Affleck', 0),
(80, 20, 'Heath Ledger', 1),
(81, 21, 'H2O', 1),
(82, 21, 'CO2', 0),
(83, 21, 'NaCl', 0),
(84, 21, 'CH4', 0),
(85, 22, '753 a.C.', 1),
(86, 22, '500 a.C.', 0),
(87, 22, '27 a.C.', 0),
(88, 22, '476 d.C.', 0),
(89, 23, 'Vincent van Gogh', 0),
(90, 23, 'Pablo Picasso', 0),
(91, 23, 'Leonardo da Vinci', 0),
(92, 23, 'Edvard Munch', 1),
(93, 24, 'Amazonas', 1),
(94, 24, 'Nilo', 0),
(95, 24, 'Yangtsé', 0),
(96, 24, 'Misisipi', 0),
(97, 25, 'Herman Melville', 1),
(98, 25, 'Mark Twain', 0),
(99, 25, 'Charles Dickens', 0),
(100, 25, 'Jane Austen', 0),
(101, 26, 'Fútbol americano', 1),
(102, 26, 'Béisbol', 0),
(103, 26, 'Baloncesto', 0),
(104, 26, 'Fútbol soccer', 0),
(105, 27, 'Béisbol', 1),
(106, 27, 'Fútbol americano', 0),
(107, 27, 'Tenis', 0),
(108, 27, 'Baloncesto', 0),
(109, 28, 'Estados Unidos', 1),
(110, 28, 'China', 0),
(111, 28, 'Rusia', 0),
(112, 28, 'Alemania', 0),
(113, 29, 'Brasil', 1),
(114, 29, 'Alemania', 0),
(115, 29, 'Italia', 0),
(116, 29, 'Argentina', 0),
(117, 30, 'Roger Federer', 0),
(118, 30, 'Rafael Nadal', 0),
(119, 30, 'Pete Sampras', 0),
(120, 30, 'Novak Djokovic', 1),
(121, 31, '1989', 1),
(122, 31, '1991', 0),
(123, 31, '1990', 0),
(124, 31, '1987', 0),
(125, 32, 'George Washington', 1),
(126, 32, 'Thomas Jefferson', 0),
(127, 32, 'Abraham Lincoln', 0),
(128, 32, 'John F. Kennedy', 0),
(129, 33, 'Antiguo Egipto', 1),
(130, 33, 'Grecia Antigua', 0),
(131, 33, 'Imperio Romano', 0),
(132, 33, 'China Imperial', 0),
(133, 34, '1917', 1),
(134, 34, '1905', 0),
(135, 34, '1921', 0),
(136, 34, '1933', 0),
(137, 35, 'Fidel Castro', 1),
(138, 35, 'Che Guevara', 0),
(139, 35, 'Augusto César Sandino', 0),
(140, 35, 'Hugo Chávez', 0),
(141, 36, 'Hidrógeno', 1),
(142, 36, 'Oxígeno', 0),
(143, 36, 'Carbono', 0),
(144, 36, 'Helio', 0),
(145, 37, 'Big Bang', 1),
(146, 37, 'Teoría de la Relatividad', 0),
(147, 37, 'Teoría del Caos', 0),
(148, 37, 'Teoría de la Evolución', 0),
(149, 38, 'Célula', 1),
(150, 38, 'Átomo', 0),
(151, 38, 'Molécula', 0),
(152, 38, 'Proteína', 0),
(153, 39, 'Protón', 1),
(154, 39, 'Electrón', 0),
(155, 39, 'Neutrón', 0),
(156, 39, 'Quark', 0),
(157, 40, 'Corazón', 1),
(158, 40, 'Cerebro', 0),
(159, 40, 'Pulmones', 0),
(160, 40, 'Riñones', 0),
(161, 41, 'Daniel Radcliffe', 1),
(162, 41, 'Rupert Grint', 0),
(163, 41, 'Emma Watson', 0),
(164, 41, 'Tom Felton', 0),
(165, 42, 'Avengers: Endgame', 1),
(166, 42, 'Avatar', 0),
(167, 42, 'Titanic', 0),
(168, 42, 'Star Wars: El despertar de la fuerza', 0),
(169, 43, 'The Beatles', 1),
(170, 43, 'Queen', 0),
(171, 43, 'Led Zeppelin', 0),
(172, 43, 'Rolling Stones', 0),
(173, 44, '1977', 1),
(174, 44, '1980', 0),
(175, 44, '1974', 0),
(176, 44, '1983', 0),
(177, 45, 'Minecraft', 1),
(178, 45, 'Tetris', 0),
(179, 45, 'Super Mario Bros.', 0),
(180, 45, 'Grand Theft Auto V', 0),
(181, 41, 'Daniel Radcliffe', 1),
(182, 41, 'Rupert Grint', 0),
(183, 41, 'Emma Watson', 0),
(184, 41, 'Tom Felton', 0),
(185, 42, 'Avengers: Endgame', 1),
(186, 42, 'Avatar', 0),
(187, 42, 'Titanic', 0),
(188, 42, 'Star Wars: El despertar de la fuerza', 0),
(189, 43, 'The Beatles', 1),
(190, 43, 'Queen', 0),
(191, 43, 'Led Zeppelin', 0),
(192, 43, 'Rolling Stones', 0),
(193, 44, '1977', 1),
(194, 44, '1980', 0),
(195, 44, '1974', 0),
(196, 44, '1983', 0),
(197, 45, 'Minecraft', 1),
(198, 45, 'Tetris', 0),
(199, 45, 'Super Mario Bros.', 0),
(200, 45, 'Grand Theft Auto V', 0),
(201, 46, 'Leonardo da Vinci', 1),
(202, 46, 'Miguel Ángel', 0),
(203, 46, 'Pablo Picasso', 0),
(204, 46, 'Vincent van Gogh', 0),
(205, 47, 'Guernica', 1),
(206, 47, 'La persistencia de la memoria', 0),
(207, 47, 'Las señoritas de Avignon', 0),
(208, 47, 'Los amantes', 0),
(209, 48, 'Gustav Klimt', 1),
(210, 48, 'Auguste Rodin', 0),
(211, 48, 'Claude Monet', 0),
(212, 48, 'Frida Kahlo', 0),
(213, 49, 'Vincent van Gogh', 1),
(214, 49, 'Pablo Picasso', 0),
(215, 49, 'Rembrandt van Rijn', 0),
(216, 49, 'Salvador Dalí', 0),
(217, 50, 'Vincent van Gogh', 1),
(218, 50, 'Leonardo da Vinci', 0),
(219, 50, 'Claude Monet', 0),
(220, 50, 'Edvard Munch', 0),
(221, 51, '299,792,458 metros por segundo', 1),
(222, 51, '343 metros por segundo', 0),
(223, 51, '1,000 kilómetros por hora', 0),
(224, 51, '1,000,000 millas por hora', 0),
(225, 52, 'Alexander Fleming', 1),
(226, 52, 'Louis Pasteur', 0),
(227, 52, 'Marie Curie', 0),
(228, 52, 'Albert Einstein', 0),
(229, 53, 'Hidrógeno', 1),
(230, 53, 'Oxígeno', 0),
(231, 53, 'Carbono', 0),
(232, 53, 'Helio', 0),
(233, 54, 'Mercurio', 1),
(234, 54, 'Venus', 0),
(235, 54, 'Tierra', 0),
(236, 54, 'Marte', 0),
(237, 55, 'Protón', 1),
(238, 55, 'Electrón', 0),
(239, 55, 'Neutrón', 0),
(240, 55, 'Quark', 0),
(241, 56, '1914', 1),
(242, 56, '1939', 0),
(243, 56, '1945', 0),
(244, 56, '1918', 0),
(245, 57, 'Augusto', 1),
(246, 57, 'César', 0),
(247, 57, 'Nerón', 0),
(248, 57, 'Trajano', 0),
(249, 58, 'Cuzco', 1),
(250, 58, 'Machu Picchu', 0),
(251, 58, 'Quito', 0),
(252, 58, 'Bogotá', 0),
(253, 59, 'Batalla de Adrianópolis', 1),
(254, 59, 'Batalla de Hastings', 0),
(255, 59, 'Batalla de Waterloo', 0),
(256, 59, 'Batalla de Alesia', 0),
(257, 60, 'La Toma de la Bastilla', 1),
(258, 60, 'La Noche de los Cuchillos Largos', 0),
(259, 60, 'El Asalto al Palacio de Invierno', 0),
(260, 60, 'El Grito de Dolores', 0),
(261, 61, 'Sandro Botticelli', 1),
(262, 61, 'Leonardo da Vinci', 0),
(263, 61, 'Pablo Picasso', 0),
(264, 61, 'Diego Velázquez', 0),
(265, 62, 'David', 1),
(266, 62, 'La Piedad', 0),
(267, 62, 'Moisés', 0),
(268, 62, 'La Dama del Armiño', 0),
(269, 63, 'George Orwell', 1),
(270, 63, 'Aldous Huxley', 0),
(271, 63, 'Ray Bradbury', 0),
(272, 63, 'Jorge Luis Borges', 0),
(273, 64, 'Tango', 1),
(274, 64, 'Salsa', 0),
(275, 64, 'Bachata', 0),
(276, 64, 'Flamenco', 0),
(277, 65, 'El abrazo', 1),
(278, 65, 'El beso', 0),
(279, 65, 'La persistencia de la memoria', 0),
(280, 65, 'Las señoritas de Avignon', 0),
(281, 66, 'Amazonas', 1),
(282, 66, 'Nilo', 0),
(283, 66, 'Misisipi', 0),
(284, 66, 'Yangtsé', 0),
(285, 67, 'Tanzania', 1),
(286, 67, 'Kenia', 0),
(287, 67, 'Uganda', 0),
(288, 67, 'Etiopía', 0),
(289, 68, 'Brasil', 1),
(290, 68, 'Argentina', 0),
(291, 68, 'Colombia', 0),
(292, 68, 'Perú', 0),
(293, 69, 'Ottawa', 1),
(294, 69, 'Toronto', 0),
(295, 69, 'Montreal', 0),
(296, 69, 'Vancouver', 0),
(297, 70, 'China', 1),
(298, 70, 'India', 0),
(299, 70, 'Estados Unidos', 0),
(300, 70, 'Brasil', 0),
(301, 71, 'Robert Downey Jr.', 1),
(302, 71, 'Chris Evans', 0),
(303, 71, 'Chris Hemsworth', 0),
(304, 71, 'Mark Ruffalo', 0),
(305, 72, 'Stefani Germanotta', 1),
(306, 72, 'Katy Perry', 0),
(307, 72, 'Taylor Swift', 0),
(308, 72, 'Rihanna', 0),
(309, 73, '1997', 1),
(310, 73, '1995', 0),
(311, 73, '1999', 0),
(312, 73, '2001', 0),
(313, 74, 'The Rolling Stones', 1),
(314, 74, 'Led Zeppelin', 0),
(315, 74, 'The Beatles', 0),
(316, 74, 'Queen', 0),
(317, 75, 'J.K. Rowling', 1),
(318, 75, 'Stephenie Meyer', 0),
(319, 75, 'George R.R. Martin', 0),
(320, 75, 'Dan Brown', 0),
(341, 76, 'Béisbol', 1),
(342, 76, 'Fútbol', 0),
(343, 76, 'Golf', 0),
(344, 76, 'Tenis', 0),
(345, 77, 'Brasil', 1),
(346, 77, 'Alemania', 0),
(347, 77, 'Argentina', 0),
(348, 77, 'Italia', 0),
(349, 78, 'Sumo', 1),
(350, 78, 'Judo', 0),
(351, 78, 'Karate', 0),
(352, 78, 'Kendo', 0),
(353, 79, 'Boston Celtics', 1),
(354, 79, 'Los Angeles Lakers', 0),
(355, 79, 'Chicago Bulls', 0),
(356, 79, 'Golden State Warriors', 0),
(357, 80, 'Croquet', 1),
(358, 80, 'Cricket', 0),
(359, 80, 'Polo', 0),
(360, 80, 'Hockey sobre césped', 0),
(361, 81, 'H2O', 1),
(362, 81, 'CO2', 0),
(363, 81, 'NaCl', 0),
(364, 81, 'C6H12O6', 0),
(365, 82, 'El proceso en el que las plantas convierten la luz del sol en energía', 1),
(366, 82, 'El proceso de digestión de los alimentos', 0),
(367, 82, 'El proceso de descomposición de los seres vivos', 0),
(368, 82, 'El proceso de reproducción celular', 0),
(369, 83, 'La fuerza que atrae dos objetos con masa', 1),
(370, 83, 'La fuerza que empuja los objetos hacia arriba', 0),
(371, 83, 'La fuerza que mantiene unidos los átomos en una molécula', 0),
(372, 83, 'La fuerza que impide que los objetos se muevan', 0),
(373, 84, 'La unidad más pequeña de un elemento químico', 1),
(374, 84, 'La partícula más pequeña de la materia', 0),
(375, 84, 'La partícula cargada positivamente en un átomo', 0),
(376, 84, 'La estructura básica de los seres vivos', 0),
(377, 85, 'La célula', 1),
(378, 85, 'El gen', 0),
(379, 85, 'La molécula', 0),
(380, 85, 'El órgano', 0),
(381, 86, 'Amazonas', 1),
(382, 86, 'Nilo', 0),
(383, 86, 'Mississippi', 0),
(384, 86, 'Yangtsé', 0),
(385, 87, 'Ciudad del Vaticano', 1),
(386, 87, 'Mónaco', 0),
(387, 87, 'Nauru', 0),
(388, 87, 'Tuvalu', 0),
(389, 88, 'Monte Kilimanjaro', 1),
(390, 88, 'Monte Everest', 0),
(391, 88, 'Monte Aconcagua', 0),
(392, 88, 'Monte McKinley', 0),
(393, 89, 'Australia', 1),
(394, 89, 'Brasil', 0),
(395, 89, 'Rusia', 0),
(396, 89, 'Canadá', 0),
(397, 90, 'China', 1),
(398, 90, 'India', 0),
(399, 90, 'Estados Unidos', 0),
(400, 90, 'Argentina', 0),
(401, 91, 'Golf', 1),
(402, 91, 'Tenis', 0),
(403, 91, 'Fútbol', 0),
(404, 91, 'Cricket', 0),
(405, 92, 'Brasil', 1),
(406, 92, 'Alemania', 0),
(407, 92, 'Italia', 0),
(408, 92, 'Argentina', 0),
(409, 93, 'Roger Federer', 1),
(410, 93, 'Rafael Nadal', 0),
(411, 93, 'Novak Djokovic', 0),
(412, 93, 'Serena Williams', 0),
(413, 94, 'Fútbol', 1),
(414, 94, 'Baloncesto', 0),
(415, 94, 'Béisbol', 0),
(416, 94, 'Hockey sobre hielo', 0),
(417, 95, 'Voleibol', 1),
(418, 95, 'Baloncesto', 0),
(419, 95, 'Tenis', 0),
(420, 95, 'Fútbol americano', 0),
(421, 96, 'Robert Downey Jr.', 1),
(422, 96, 'Chris Hemsworth', 0),
(423, 96, 'Chris Evans', 0),
(424, 96, 'Mark Ruffalo', 0),
(425, 97, 'Avengers: Endgame', 1),
(426, 97, 'Avatar', 0),
(427, 97, 'Titanic', 0),
(428, 97, 'Star Wars: El despertar de la Fuerza', 0),
(429, 98, 'Star Wars', 1),
(430, 98, 'El Señor de los Anillos', 0),
(431, 98, 'Harry Potter', 0),
(432, 98, 'Matrix', 0),
(433, 99, 'Dan Brown', 1),
(434, 99, 'Stephen King', 0),
(435, 99, 'J.K. Rowling', 0),
(436, 99, 'George R.R. Martin', 0),
(437, 100, 'Friends', 1),
(438, 100, 'Los Simpson', 0),
(439, 100, 'Juego de Tronos', 0),
(440, 100, 'The Big Bang Theory', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `id_partida` int(11) NOT NULL,
  `fecha_partida` timestamp NOT NULL DEFAULT current_timestamp(),
  `fue_aceptada` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partida`
--

INSERT INTO `partida` (`id_partida`, `fecha_partida`, `fue_aceptada`) VALUES
(1, '2023-06-10 11:39:46', 1),
(2, '2023-06-10 11:42:15', 1),
(3, '2023-06-10 11:43:10', 1),
(4, '2023-06-10 11:45:34', 1),
(5, '2023-06-10 11:47:01', 1),
(6, '2023-06-10 11:47:34', 1),
(7, '2023-06-10 11:48:14', 1),
(8, '2023-06-10 11:54:34', 1),
(9, '2023-06-10 11:56:45', 1),
(10, '2023-06-10 11:56:51', 1),
(11, '2023-06-10 11:57:10', 1),
(12, '2023-06-10 11:58:16', 1),
(13, '2023-06-10 11:58:21', 1),
(14, '2023-06-10 12:01:17', 1),
(15, '2023-06-10 12:01:57', 1),
(16, '2023-06-10 12:02:07', 1),
(17, '2023-06-10 12:02:09', 1),
(18, '2023-06-10 12:02:18', 1),
(19, '2023-06-10 12:02:44', 1),
(20, '2023-06-10 12:03:19', 1),
(21, '2023-06-10 12:03:23', 1),
(22, '2023-06-10 12:18:50', 1),
(23, '2023-06-10 12:33:11', 1),
(24, '2023-06-10 12:34:08', 1),
(25, '2023-06-10 21:13:47', 1),
(26, '2023-06-10 21:14:02', 1),
(27, '2023-06-10 21:25:35', 1),
(28, '2023-06-10 21:25:40', 1),
(29, '2023-06-10 21:25:42', 1),
(30, '2023-06-10 21:25:44', 1),
(31, '2023-06-10 21:25:49', 1),
(32, '2023-06-10 21:25:53', 1),
(33, '2023-06-10 21:26:11', 1),
(34, '2023-06-10 21:26:14', 1),
(35, '2023-06-10 21:26:22', 1),
(36, '2023-06-10 21:26:30', 1),
(37, '2023-06-10 21:26:35', 1),
(38, '2023-06-10 21:26:52', 1),
(39, '2023-06-10 21:28:40', 1),
(40, '2023-06-10 21:28:43', 1),
(41, '2023-06-10 21:28:46', 1),
(42, '2023-06-10 21:28:58', 1),
(43, '2023-06-10 21:29:00', 1),
(44, '2023-06-10 21:29:03', 1),
(45, '2023-06-10 21:29:20', 1),
(46, '2023-06-10 21:29:25', 1),
(47, '2023-06-10 21:29:27', 1),
(48, '2023-06-10 21:29:31', 1),
(49, '2023-06-10 21:29:33', 1),
(50, '2023-06-10 21:29:36', 1),
(51, '2023-06-10 21:29:42', 1),
(52, '2023-06-10 21:32:37', 1),
(53, '2023-06-10 21:32:46', 1),
(54, '2023-06-10 21:33:13', 1),
(55, '2023-06-10 21:36:46', 1),
(56, '2023-06-10 21:38:15', 1),
(57, '2023-06-10 21:42:54', 1),
(58, '2023-06-10 21:44:00', 1),
(59, '2023-06-10 21:45:43', 1),
(60, '2023-06-10 21:45:50', 1),
(61, '2023-06-10 21:56:42', 1),
(62, '2023-06-10 21:56:58', 1),
(63, '2023-06-10 21:57:01', 1),
(64, '2023-06-10 21:57:02', 1),
(65, '2023-06-10 21:57:02', 1),
(66, '2023-06-10 21:57:02', 1),
(67, '2023-06-10 21:57:02', 1),
(68, '2023-06-10 21:57:02', 1),
(69, '2023-06-10 21:57:03', 1),
(70, '2023-06-10 21:57:03', 1),
(71, '2023-06-10 21:57:09', 1),
(72, '2023-06-10 21:57:12', 1),
(73, '2023-06-10 21:57:12', 1),
(74, '2023-06-10 21:57:13', 1),
(75, '2023-06-10 21:57:14', 1),
(76, '2023-06-10 21:57:14', 1),
(77, '2023-06-10 21:57:14', 1),
(78, '2023-06-10 21:57:15', 1),
(79, '2023-06-10 21:57:15', 1),
(80, '2023-06-10 21:57:16', 1),
(81, '2023-06-10 21:57:16', 1),
(82, '2023-06-10 21:57:16', 1),
(83, '2023-06-10 21:57:17', 1),
(84, '2023-06-10 21:57:17', 1),
(85, '2023-06-10 21:59:37', 1),
(86, '2023-06-10 21:59:39', 1),
(87, '2023-06-10 22:00:45', 1),
(88, '2023-06-10 22:00:47', 1),
(89, '2023-06-10 22:00:47', 1),
(90, '2023-06-10 22:00:48', 1),
(91, '2023-06-10 22:00:48', 1),
(92, '2023-06-10 22:00:49', 1),
(93, '2023-06-10 22:02:29', 1),
(94, '2023-06-10 22:03:02', 1),
(95, '2023-06-10 22:03:05', 1),
(96, '2023-06-10 22:03:09', 1),
(97, '2023-06-10 22:03:10', 1),
(98, '2023-06-10 22:05:23', 1),
(99, '2023-06-10 22:06:15', 1),
(100, '2023-06-10 22:12:29', 1),
(101, '2023-06-11 02:12:02', 1),
(102, '2023-06-11 02:12:29', 1),
(103, '2023-06-11 02:12:57', 1),
(104, '2023-06-11 02:13:40', 1),
(105, '2023-06-11 02:15:19', 1),
(106, '2023-06-11 02:17:10', 1),
(107, '2023-06-11 02:17:47', 1),
(108, '2023-06-11 02:18:24', 1),
(109, '2023-06-11 02:18:59', 1),
(110, '2023-06-11 02:19:14', 1),
(111, '2023-06-11 02:19:23', 1),
(112, '2023-06-11 02:19:41', 1),
(113, '2023-06-11 02:25:32', 1),
(114, '2023-06-11 02:26:28', 1),
(115, '2023-06-11 02:27:55', 1),
(116, '2023-06-11 02:27:55', 1),
(117, '2023-06-11 02:27:58', 1),
(118, '2023-06-11 02:27:58', 1),
(119, '2023-06-11 02:28:01', 1),
(120, '2023-06-11 02:28:01', 1),
(121, '2023-06-11 02:28:01', 1),
(122, '2023-06-11 02:28:01', 1),
(123, '2023-06-11 02:28:02', 1),
(124, '2023-06-11 02:28:02', 1),
(125, '2023-06-11 02:28:03', 1),
(126, '2023-06-11 02:28:03', 1),
(127, '2023-06-11 02:28:03', 1),
(128, '2023-06-11 02:28:03', 1),
(129, '2023-06-11 02:29:29', 1),
(130, '2023-06-11 02:31:39', 1),
(131, '2023-06-11 02:35:56', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `esta_activa` tinyint(1) NOT NULL DEFAULT 0,
  `pregunta` varchar(300) NOT NULL,
  `difucultad` float NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `id_categoria`, `fecha_creacion`, `esta_activa`, `pregunta`, `difucultad`) VALUES
(1, 4, '2023-06-01 03:46:27', 1, '¿Cuál es el río más largo del mundo?', 100),
(2, 1, '2023-06-01 03:46:27', 1, '¿Cuál es el planeta más cercano al Sol?', 100),
(3, 1, '2023-06-01 03:46:27', 1, '¿Cuál es el elemento químico más abundante en la corteza terrestre?', 100),
(4, 4, '2023-06-01 03:46:27', 1, '¿Cuál es la capital de Australia?', 100),
(5, 1, '2023-06-01 03:46:27', 1, '¿Cuál es la fórmula química del agua?', 100),
(6, 1, '2023-06-01 03:46:27', 1, '¿Cuál es el símbolo químico del oro?', 100),
(7, 4, '2023-06-01 03:46:27', 1, '¿Cuál es el país más poblado del mundo?', 100),
(8, 4, '2023-06-01 03:46:27', 1, '¿Cuál es la montaña más alta del mundo?', 100),
(9, 4, '2023-06-01 03:46:27', 1, '¿Cuál es el océano más grande del mundo?', 100),
(10, 3, '2023-06-01 03:46:27', 1, '¿Cuál es el autor de \"Don Quijote de la Mancha\"?', 100),
(11, 1, '2023-06-01 05:07:41', 1, '¿Cuál es el planeta más grande del sistema solar?', 100),
(12, 4, '2023-06-01 05:07:41', 1, '¿Cuál es la capital de Francia?', 100),
(13, 3, '2023-06-01 05:07:41', 1, '¿Cuál es la obra más famosa de William Shakespeare?', 100),
(14, 4, '2023-06-01 05:07:41', 1, '¿Cuál es el océano más grande del mundo?', 100),
(15, 2, '2023-06-01 05:07:41', 1, '¿En qué año se descubrió América?', 100),
(16, 1, '2023-06-01 05:12:27', 1, '¿Cuál es el metal más abundante en la corteza terrestre?', 100),
(17, 2, '2023-06-01 05:12:27', 1, '¿En qué año se llevó a cabo la Revolución Francesa?', 100),
(18, 3, '2023-06-01 05:12:27', 1, '¿Quién pintó La Mona Lisa?', 100),
(19, 4, '2023-06-01 05:12:27', 1, '¿Cuál es el país más grande del mundo en términos de superficie?', 100),
(20, 5, '2023-06-01 05:12:27', 1, '¿Cuál es el nombre del protagonista de la película \"The Dark Knight\"?', 100),
(21, 1, '2023-06-01 05:14:32', 1, '¿Cuál es la fórmula química del agua?', 100),
(22, 2, '2023-06-01 05:14:32', 1, '¿En qué año se fundó la ciudad de Roma?', 100),
(23, 3, '2023-06-01 05:14:32', 1, '¿Quién pintó \"La noche estrellada\"?', 100),
(24, 4, '2023-06-01 05:14:32', 1, '¿Cuál es el río más largo del mundo?', 100),
(25, 5, '2023-06-01 05:14:32', 1, '¿Quién escribió la novela \"Moby Dick\"?', 100),
(26, 6, '2023-06-01 05:16:40', 1, '¿Cuál es el deporte más popular en Estados Unidos?', 100),
(27, 6, '2023-06-01 05:16:40', 1, '¿En qué deporte se utiliza un bate y una pelota?', 100),
(28, 6, '2023-06-01 05:16:40', 1, '¿Cuál es el país ganador más exitoso en la historia de los Juegos Olímpicos?', 100),
(29, 6, '2023-06-01 05:16:40', 1, '¿Cuál es el equipo de fútbol más laureado en la Copa del Mundo?', 100),
(30, 6, '2023-06-01 05:16:40', 1, '¿Cuál es el tenista con más títulos de Grand Slam en la historia?', 100),
(31, 2, '2023-06-01 05:17:46', 1, '¿En qué año se produjo la caída del Muro de Berlín?', 100),
(32, 2, '2023-06-01 05:17:46', 1, '¿Quién fue el primer presidente de los Estados Unidos?', 100),
(33, 2, '2023-06-01 05:17:46', 1, '¿Cuál fue la civilización que construyó las pirámides de Giza?', 100),
(34, 2, '2023-06-01 05:17:46', 1, '¿En qué año se produjo la Revolución Rusa?', 100),
(35, 2, '2023-06-01 05:17:46', 1, '¿Quién fue el líder de la Revolución Cubana?', 100),
(36, 1, '2023-06-01 05:20:20', 1, '¿Cuál es el elemento químico más abundante en el universo?', 100),
(37, 1, '2023-06-01 05:20:20', 1, '¿Cuál es la teoría que explica el origen del universo?', 100),
(38, 1, '2023-06-01 05:20:20', 1, '¿Cuál es la unidad básica de la estructura de los seres vivos?', 100),
(39, 1, '2023-06-01 05:20:20', 1, '¿Cuál es la partícula subatómica con carga positiva?', 100),
(40, 1, '2023-06-01 05:20:20', 1, '¿Cuál es el órgano responsable de la circulación de la sangre en el cuerpo humano?', 100),
(41, 5, '2023-06-01 05:21:32', 1, '¿Quién interpretó el papel de Harry Potter en las películas?', 100),
(42, 5, '2023-06-01 05:21:32', 1, '¿Cuál es la película más taquillera de todos los tiempos?', 100),
(43, 5, '2023-06-01 05:21:32', 1, '¿Cuál es la banda de rock más exitosa de todos los tiempos?', 100),
(44, 5, '2023-06-01 05:21:32', 1, '¿En qué año se estrenó la primera película de Star Wars?', 100),
(45, 5, '2023-06-01 05:21:32', 1, '¿Cuál es el videojuego más vendido de la historia?', 100),
(46, 3, '2023-06-01 05:27:47', 1, '¿Quién pintó \"La última cena\"?', 100),
(47, 3, '2023-06-01 05:27:47', 1, '¿Cuál es la obra más famosa de Pablo Picasso?', 100),
(48, 3, '2023-06-01 05:27:47', 1, '¿Cuál es el autor de \"El beso\"?', 100),
(49, 3, '2023-06-01 05:27:47', 1, '¿Qué famoso pintor neerlandés cortó su oreja?', 100),
(50, 3, '2023-06-01 05:27:47', 1, '¿Quién es el autor de \"La noche estrellada\"?', 100),
(51, 1, '2023-06-01 05:29:02', 1, '¿Cuál es la velocidad de la luz en el vacío?', 100),
(52, 1, '2023-06-01 05:29:02', 1, '¿Quién descubrió la penicilina?', 100),
(53, 1, '2023-06-01 05:29:02', 1, '¿Cuál es el elemento químico más abundante en el universo?', 100),
(54, 1, '2023-06-01 05:29:02', 1, '¿Cuál es el planeta más cercano al Sol?', 100),
(55, 1, '2023-06-01 05:29:02', 1, '¿Cuál es la partícula subatómica con carga positiva?', 100),
(56, 2, '2023-06-01 05:32:04', 1, '¿En qué año comenzó la Primera Guerra Mundial?', 100),
(57, 2, '2023-06-01 05:32:04', 1, '¿Quién fue el primer emperador romano?', 100),
(58, 2, '2023-06-01 05:32:04', 1, '¿Cuál fue la capital del Imperio Inca?', 100),
(59, 2, '2023-06-01 05:32:04', 1, '¿Cuál fue la batalla que marcó el fin del Imperio Romano de Occidente?', 100),
(60, 2, '2023-06-01 05:32:04', 1, '¿Qué evento dio inicio a la Revolución Francesa?', 100),
(61, 3, '2023-06-01 05:33:22', 1, '¿Quién pintó \"El nacimiento de Venus\"?', 100),
(62, 3, '2023-06-01 05:33:22', 1, '¿Cuál es la escultura más famosa de Miguel Ángel?', 100),
(63, 3, '2023-06-01 05:33:22', 1, '¿Quién escribió la novela \"1984\"?', 100),
(64, 3, '2023-06-01 05:33:22', 1, '¿Cuál es el género musical característico de Argentina?', 100),
(65, 3, '2023-06-01 05:33:22', 1, '¿Cuál es el título de la pintura que representa a una pareja bailando tango?', 100),
(66, 4, '2023-06-01 05:34:21', 1, '¿Cuál es el río más largo del mundo?', 100),
(67, 4, '2023-06-01 05:34:21', 1, '¿En qué país se encuentra el monte Kilimanjaro?', 100),
(68, 4, '2023-06-01 05:34:21', 1, '¿Cuál es el país más grande de América del Sur?', 100),
(69, 4, '2023-06-01 05:34:21', 1, '¿Cuál es la capital de Canadá?', 100),
(70, 4, '2023-06-01 05:34:21', 1, '¿Cuál es el país más poblado del mundo?', 100),
(71, 5, '2023-06-01 05:35:52', 1, '¿Quién interpretó el papel de Iron Man en las películas de Marvel?', 100),
(72, 5, '2023-06-01 05:35:52', 1, '¿Cuál es el nombre real de la cantante Lady Gaga?', 100),
(73, 5, '2023-06-01 05:35:52', 1, '¿En qué año se estrenó la película \"Titanic\"?', 100),
(74, 5, '2023-06-01 05:35:52', 1, '¿Cuál es la banda de rock liderada por Mick Jagger?', 100),
(75, 5, '2023-06-01 05:35:52', 1, '¿Quién es el autor de la serie de libros \"Harry Potter\"?', 100),
(76, 6, '2023-06-01 05:37:43', 1, '¿En qué deporte se utiliza un guante de bateo?', 100),
(77, 6, '2023-06-01 05:37:43', 1, '¿Cuál es el máximo ganador de la Copa Mundial de Fútbol?', 100),
(78, 6, '2023-06-01 05:37:43', 1, '¿Cuál es el deporte nacional de Japón?', 100),
(79, 6, '2023-06-01 05:37:43', 1, '¿Cuál es el máximo campeón de la NBA?', 100),
(80, 6, '2023-06-01 05:37:43', 1, '¿En qué deporte se utiliza una maza?', 100),
(81, 1, '2023-06-01 05:42:52', 1, '¿Cuál es la fórmula química del agua?', 100),
(82, 1, '2023-06-01 05:42:52', 1, '¿Qué es la fotosíntesis?', 100),
(83, 1, '2023-06-01 05:42:52', 1, '¿Cuál es la ley de la gravedad?', 100),
(84, 1, '2023-06-01 05:42:52', 1, '¿Qué es un átomo?', 100),
(85, 1, '2023-06-01 05:42:52', 1, '¿Cuál es la unidad básica de la vida?', 100),
(86, 4, '2023-06-01 05:45:05', 1, '¿Cuál es el río más largo de América del Sur?', 100),
(87, 4, '2023-06-01 05:45:05', 1, '¿Cuál es el país más pequeño del mundo?', 100),
(88, 4, '2023-06-01 05:45:05', 1, '¿Cuál es la montaña más alta de África?', 100),
(89, 4, '2023-06-01 05:45:05', 1, '¿En qué país se encuentra la Gran Barrera de Coral?', 100),
(90, 4, '2023-06-01 05:45:05', 1, '¿Cuál es el país más extenso del mundo?', 100),
(91, 6, '2023-06-01 05:46:03', 1, '¿En qué deporte se utiliza un palo de golf?', 100),
(92, 6, '2023-06-01 05:46:03', 1, '¿Cuál es el máximo campeón de la Copa Mundial de Fútbol?', 100),
(93, 6, '2023-06-01 05:46:03', 1, '¿Cuál es el tenista con más títulos de Grand Slam en la historia?', 100),
(94, 6, '2023-06-01 05:46:03', 1, '¿Cuál es el deporte más popular en Estados Unidos?', 100),
(95, 6, '2023-06-01 05:46:03', 1, '¿En qué deporte se utiliza una red y una pelota?', 100),
(96, 5, '2023-06-01 05:46:45', 1, '¿Quién interpretó a Iron Man en las películas del Universo Cinematográfico de Marvel?', 100),
(97, 5, '2023-06-01 05:46:45', 1, '¿Cuál es la película más taquillera de todos los tiempos?', 100),
(98, 5, '2023-06-01 05:46:45', 1, '¿En qué saga cinematográfica aparece el personaje Luke Skywalker?', 100),
(99, 5, '2023-06-01 05:46:45', 1, '¿Cuál es el autor del libro \"El Código Da Vinci\"?', 100),
(100, 5, '2023-06-01 05:46:45', 1, '¿Cuál es la serie de televisión más vista de todos los tiempos?', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `fecha_respuesta` timestamp NOT NULL DEFAULT current_timestamp(),
  `fue_correcta` tinyint(1) NOT NULL DEFAULT 0,
  `dificultad` float NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `id_pregunta`, `id_cuenta`, `fecha_respuesta`, `fue_correcta`, `dificultad`) VALUES
(223, 47, 1, '2023-06-10 22:12:41', 1, 100),
(224, 29, 1, '2023-06-10 22:13:00', 1, 100),
(225, 6, 1, '2023-06-10 22:13:04', 1, 100),
(226, 63, 1, '2023-06-10 22:13:05', 1, 100),
(227, 42, 1, '2023-06-10 22:13:05', 1, 100),
(228, 17, 1, '2023-06-10 22:13:06', 1, 100),
(229, 1, 1, '2023-06-10 22:13:31', 0, 100),
(230, 2, 1, '2023-06-11 02:17:21', 1, 100),
(231, 13, 1, '2023-06-11 02:19:26', 1, 100),
(232, 98, 1, '2023-06-11 02:19:28', 1, 100),
(233, 99, 1, '2023-06-11 02:19:32', 0, 100),
(234, 4, 1, '2023-06-11 02:20:08', 1, 100),
(235, 79, 1, '2023-06-11 02:20:19', 1, 100),
(236, 71, 1, '2023-06-11 02:29:33', 1, 100),
(237, 77, 1, '2023-06-11 02:29:34', 1, 100),
(238, 45, 1, '2023-06-11 02:29:35', 1, 100),
(239, 65, 1, '2023-06-11 02:29:35', 1, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Editor'),
(3, 'Jugador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_cuenta`
--

CREATE TABLE `stock_cuenta` (
  `id_stock_cuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_trampita`
--

CREATE TABLE `tipo_de_trampita` (
  `id_tipo_de_trampita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD KEY `id_genero_cuenta` (`id_genero`),
  ADD KEY `id_rol_cuenta` (`id_rol`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_partida_juego` (`id_partida`),
  ADD KEY `id_cuenta_juego` (`id_cuenta`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id_partida`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_categoria_pregunta` (`id_categoria`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `id_pregunta_respuesta` (`id_pregunta`),
  ADD KEY `id_cuenta_respuesta` (`id_cuenta`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Indices de la tabla `stock_cuenta`
--
ALTER TABLE `stock_cuenta`
  ADD PRIMARY KEY (`id_stock_cuenta`);

--
-- Indices de la tabla `tipo_de_trampita`
--
ALTER TABLE `tipo_de_trampita`
  ADD PRIMARY KEY (`id_tipo_de_trampita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `id_partida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock_cuenta`
--
ALTER TABLE `stock_cuenta`
  MODIFY `id_stock_cuenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_trampita`
--
ALTER TABLE `tipo_de_trampita`
  MODIFY `id_tipo_de_trampita` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `id_genero_cuenta` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `id_rol_cuenta` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `id_cuenta_juego` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta` (`id_cuenta`),
  ADD CONSTRAINT `id_partida_juego` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id_partida`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `id_categoria_pregunta` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `id_cuenta_respuesta` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta` (`id_cuenta`),
  ADD CONSTRAINT `id_pregunta_respuesta` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id_pregunta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
