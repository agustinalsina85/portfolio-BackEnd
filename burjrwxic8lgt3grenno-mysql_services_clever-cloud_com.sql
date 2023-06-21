-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: burjrwxic8lgt3grenno-mysql.services.clever-cloud.com:3306
-- Generation Time: Jun 21, 2023 at 04:32 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burjrwxic8lgt3grenno`
--
CREATE DATABASE IF NOT EXISTS `burjrwxic8lgt3grenno` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `burjrwxic8lgt3grenno`;

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `descripcion_edu` varchar(255) DEFAULT NULL,
  `institucion_edu` varchar(255) DEFAULT NULL,
  `periodo_edu` varchar(255) DEFAULT NULL,
  `titulo_edu` varchar(255) DEFAULT NULL,
  `url_logo_edu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `descripcion_edu`, `institucion_edu`, `periodo_edu`, `titulo_edu`, `url_logo_edu`) VALUES
(1, 'Argentina Programa desarrolador Full Stack', 'Argentina Programa', '18/10/2022 - 15/5/2023', 'Full Stack Developer', ''),
(3, 'Titulo en colegio técnico con orientación en Administración de Empresas.', 'Enet 2 - General Roca, Rio Negro', '1999 - 2004', 'Técnico Administrador de Empresas', '');

-- --------------------------------------------------------

--
-- Table structure for table `educacion_seq`
--

CREATE TABLE `educacion_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion_seq`
--

INSERT INTO `educacion_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `descripcion_exp` varchar(255) DEFAULT NULL,
  `organismo_exp` varchar(255) DEFAULT NULL,
  `periodo_exp` varchar(255) DEFAULT NULL,
  `puesto_exp` varchar(255) DEFAULT NULL,
  `url_logo_exp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcion_exp`, `organismo_exp`, `periodo_exp`, `puesto_exp`, `url_logo_exp`) VALUES
(52, 'Creacion de un portfolio utilizando Angular para FrontEnd, Springboot para el desarrolo del BackEnd y MySQL para la base de datos.', 'Argentina Programa', '18/10/2022 - 15/5/2023', 'Full Stack', ''),
(54, 'Supervisor en empresa constructora y de servicios petroleros.', 'PyC Ingenieria y arquitectura', '6/6/2011 - 31/10/2021', 'Supervisor', ''),
(152, 'Supervisor en armado de equipamientos para eventos de entretenimiento. ', 'Castaldi Djs', '2/11/2021', 'Tecnico', '');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia_seq`
--

CREATE TABLE `experiencia_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia_seq`
--

INSERT INTO `experiencia_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github_url` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ocupacion` varchar(255) DEFAULT NULL,
  `whatsapp_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `banner_url`, `descripcion`, `domicilio`, `email`, `github_url`, `img_url`, `nombre`, `ocupacion`, `whatsapp_url`) VALUES
(1, NULL, 'Actualmente estoy trabajando en una empresa de Entretenimiento, y estudiando mucho en Argentina Programa!!', 'General Roca, Rio Negro, Argentina', 'agustinalsina85@gmail.com', 'https://github.com/agustinalsina85', NULL, 'Luis Agustin Alsina', 'Estudiante en Argentina Programa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persona_seq`
--

CREATE TABLE `persona_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona_seq`
--

INSERT INTO `persona_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint(20) NOT NULL,
  `descripcion_proye` varchar(255) DEFAULT NULL,
  `img_url_proye` varchar(255) DEFAULT NULL,
  `live_url_proye` varchar(255) DEFAULT NULL,
  `nombre_proye` varchar(255) DEFAULT NULL,
  `repo_url_proye` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyectos`
--

INSERT INTO `proyectos` (`id`, `descripcion_proye`, `img_url_proye`, `live_url_proye`, `nombre_proye`, `repo_url_proye`) VALUES
(1, 'Se llevo a cabo un portfolio de estudio en Argentina Programa, utilizando Angular', '', 'https://portfolio-frontend-agustin.firebaseapp.com/portfolio', 'Portfolio FrontEnd', 'https://github.com/agustinalsina85/portfolio-FrontEnd'),
(2, 'Se realizo un backend con Springboot para un portfolio.', '', 'https://portfolio-backend-34ht.onrender.com/', 'Portfolio BackEnd', 'https://github.com/agustinalsina85/portfolio-BackEnd');

-- --------------------------------------------------------

--
-- Table structure for table `proyectos_seq`
--

CREATE TABLE `proyectos_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyectos_seq`
--

INSERT INTO `proyectos_seq` (`next_val`) VALUES
(301);

-- --------------------------------------------------------

--
-- Table structure for table `tecnologia`
--

CREATE TABLE `tecnologia` (
  `id` bigint(20) NOT NULL,
  `img_url_tecnologia` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `tecnologia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tecnologia`
--

INSERT INTO `tecnologia` (`id`, `img_url_tecnologia`, `nivel`, `tecnologia`) VALUES
(1, '', '55', 'HTML'),
(3, NULL, '45', 'CSS'),
(158, NULL, '35', 'Javascript'),
(159, NULL, '40', 'Angular'),
(352, NULL, '35', 'SpringBoot'),
(458, NULL, '50', 'Bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `tecnologia_seq`
--

CREATE TABLE `tecnologia_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tecnologia_seq`
--

INSERT INTO `tecnologia_seq` (`next_val`) VALUES
(601);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_seq`
--

CREATE TABLE `usuarios_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios_seq`
--

INSERT INTO `usuarios_seq` (`next_val`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecnologia`
--
ALTER TABLE `tecnologia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
