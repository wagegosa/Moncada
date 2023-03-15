-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-03-2023 a las 22:42:34
-- Versión del servidor: 5.7.32
-- Versión de PHP: 7.4.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel-prestamos-app`
--
CREATE DATABASE IF NOT EXISTS `laravel-prestamos-app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel-prestamos-app`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_question_id_foreign` (`question_id`),
  KEY `answers_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `answers`
--

TRUNCATE TABLE `answers`;
--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `description`, `is_correct`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(2, 1, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(3, 2, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(4, 2, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(5, 3, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(6, 3, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(7, 4, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(8, 4, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(9, 5, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(10, 5, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(11, 6, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(12, 6, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(13, 7, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(14, 7, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(15, 8, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(16, 8, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(17, 9, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(18, 9, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(19, 10, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(20, 10, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(21, 11, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(22, 11, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(23, 12, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(24, 12, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(25, 13, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(26, 13, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(27, 14, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(28, 14, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(29, 15, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(30, 15, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(31, 16, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(32, 16, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(33, 17, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(34, 17, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(35, 18, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(36, 18, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(37, 19, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(38, 20, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(39, 20, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(40, 21, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(41, 21, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(42, 22, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(43, 23, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(44, 23, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(45, 24, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(46, 24, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(47, 25, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(48, 25, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(49, 26, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(50, 26, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(51, 27, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(52, 27, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(53, 28, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(54, 28, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(55, 29, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(56, 29, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(57, 30, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(58, 30, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(59, 31, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(60, 31, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(61, 32, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(62, 32, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(63, 33, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(64, 33, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(65, 34, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(66, 34, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(67, 35, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(68, 35, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(69, 36, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(70, 36, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(71, 37, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(72, 37, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(73, 38, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(74, 38, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(75, 39, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(76, 39, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(77, 40, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(78, 40, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(79, 41, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(80, 41, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(81, 42, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(82, 42, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(83, 43, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(84, 43, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(85, 44, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(86, 44, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(87, 45, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(88, 45, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(89, 46, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(90, 46, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(91, 47, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(92, 47, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(93, 48, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(94, 48, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(95, 50, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(96, 50, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(97, 51, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(98, 51, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(99, 52, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(100, 52, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(101, 53, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(102, 53, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(103, 54, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(104, 54, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(105, 55, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(106, 55, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(107, 56, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(108, 56, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(109, 57, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(110, 57, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(111, 58, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(112, 58, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(113, 59, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(114, 59, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(115, 60, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(116, 60, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(117, 61, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(118, 61, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(119, 62, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(120, 62, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(121, 63, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(122, 63, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(123, 64, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(124, 64, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(125, 65, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(126, 65, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(127, 66, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(128, 66, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(129, 67, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(130, 67, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(131, 68, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(132, 68, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(133, 69, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(134, 69, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(135, 70, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(136, 70, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(137, 71, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(138, 71, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(139, 72, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(140, 72, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(141, 73, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(142, 73, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(143, 74, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(144, 74, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(145, 75, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(146, 75, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(147, 76, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(148, 76, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(149, 77, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(150, 77, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(151, 78, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(152, 78, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(153, 79, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(154, 79, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(155, 80, 'Deacuerdo', 1, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25'),
(156, 80, 'Desacuerdo', 0, 3, '2023-03-10 03:09:25', '2023-03-10 03:09:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `failed_jobs`
--

TRUNCATE TABLE `failed_jobs`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_17_133052_create_permission_tables', 1),
(6, '2023_02_27_103903_create_questions_table', 1),
(7, '2023_02_27_105030_create_answers_table', 1),
(8, '2023_02_27_110704_create_questionnaires_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `model_has_permissions`
--

TRUNCATE TABLE `model_has_permissions`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `model_has_roles`
--

TRUNCATE TABLE `model_has_roles`;
--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `permissions`
--

TRUNCATE TABLE `permissions`;
--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'usuarios-listar', 'web', '2023-02-28 17:28:16', '2023-02-28 17:28:16'),
(2, 'usuarios-crear', 'web', '2023-02-28 17:28:16', '2023-02-28 17:28:16'),
(3, 'usuarios-editar', 'web', '2023-02-28 17:28:16', '2023-02-28 17:28:16'),
(4, 'usuarios-eliminar', 'web', '2023-02-28 17:28:16', '2023-02-28 17:28:16'),
(5, 'usuarios-cambiar-contraseña', 'web', '2023-02-28 17:28:16', '2023-02-28 17:28:16'),
(6, 'usuarios-activar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(7, 'roles-listar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(8, 'roles-crear', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(9, 'roles-editar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(10, 'roles-eliminar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(11, 'permisos-listar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(12, 'permisos-crear', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(13, 'permisos-editar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(14, 'permisos-eliminar', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(15, 'preguntas-listar', 'web', '2023-02-28 17:38:50', '2023-03-01 16:28:27'),
(16, 'preguntas-crear', 'web', '2023-02-28 17:38:59', '2023-03-01 16:28:47'),
(17, 'preguntas-editar', 'web', '2023-02-28 17:39:20', '2023-03-01 16:29:02'),
(18, 'preguntas-eliminar', 'web', '2023-02-28 17:39:31', '2023-03-01 16:29:19'),
(19, 'respuestas-listar', 'web', '2023-02-28 17:40:21', '2023-03-01 16:25:51'),
(20, 'respuestas-crear', 'web', '2023-02-28 17:40:30', '2023-03-01 16:25:36'),
(21, 'respuestas-editar', 'web', '2023-02-28 17:40:42', '2023-03-01 16:25:23'),
(22, 'respuestas-eliminar', 'web', '2023-02-28 17:40:57', '2023-03-01 16:25:07'),
(23, 'cuestionarios-listar', 'web', '2023-02-28 18:41:07', '2023-02-28 18:41:07'),
(24, 'cuestionarios-crear', 'web', '2023-03-01 16:26:36', '2023-03-01 16:27:02'),
(25, 'cuestionarios-editar', 'web', '2023-03-01 16:26:44', '2023-03-01 16:27:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `personal_access_tokens`
--

TRUNCATE TABLE `personal_access_tokens`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questionnaires`
--

DROP TABLE IF EXISTS `questionnaires`;
CREATE TABLE IF NOT EXISTS `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionnaires_student_id_foreign` (`student_id`),
  KEY `questionnaires_question_id_foreign` (`question_id`),
  KEY `questionnaires_answer_id_foreign` (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `questionnaires`
--

TRUNCATE TABLE `questionnaires`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` smallint(5) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `questions`
--

TRUNCATE TABLE `questions`;
--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `title`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1. Tengo fama de decir lo que pienso claramente y sin rodeos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(2, '2. Estoy seguro/a de lo que es bueno y lo que es malo, lo que está bien y lo que está mal.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(3, '3. Muchas veces actúo sin mirar las consecuencias.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(4, '4. Normalmente trato de resolver los problemas metódicamente y paso a\npaso.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(5, '5. Creo que los formalismos coartan y limitan la actuación libre de las\npersonas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(6, '6. Me interesa saber cuáles son los sistemas de valores de los demás y\ncon qué criterios actúan.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(7, '7. Pienso que el actuar intuitivamente puede ser siempre tan válido como\nactuar reflexivamente.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(8, '8. Creo que lo más importante es que las cosas funcionen.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(9, '9. Procuro estar al tanto de lo que ocurre aquí y ahora.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(10, '10. Disfruto cuando tengo tiempo para preparar mi trabajo y realizarlo a conciencia.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(11, '11. Estoy a gusto siguiendo un orden en las comidas, en el estudiohaciendo ejercicio regularmente. ', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(12, '12. Cuando escucho una nueva idea enseguida comienzo a pensar cómo ponerla en práctica.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(13, '13. Prefiero las ideas originales y novedosas aunque no sean prácticas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(14, '14. Admito y me ajusto a las normas sólo si me sirven para lograr mis objetivos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(15, '15. Normalmente encajo bien con personas reflexivas, y me cuesta sintonizar con personas demasiado espontáneas, imprevisibles.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(16, '16. Escucho con más frecuencia que hablo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(17, '17. Prefiero las cosas estructuradas a las desordenadas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(18, '18. Cuando poseo cualquier información, trato de interpretarla bien antes de manifestar alguna conclusión.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(19, '19. Antes de hacer algo estudio con cuidado sus ventajas e inconvenientes.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(20, '20. Me entusiasmo con el reto de hacer algo nuevo y diferente.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(21, '21. Casi siempre procuro ser coherente con mis criterios y sistemas de valores. Tengo principios y los sigo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(22, '22. Cuando hay una discusión no me gusta ir con rodeos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(23, '23. Me disgusta implicarme afectivamente en el ambiente de la escuela. Prefiero mantener relaciones distantes.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(24, '24. Me gustan más las personas realistas y concretas que las teóricas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(25, '25. Me cuesta ser creativo/a, romper estructuras.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(26, '26. Me siento a gusto con personas espontáneas y divertidas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(27, '27. La mayoría de las veces expreso abiertamente cómo me siento.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(28, '28. Me gusta analizar y dar vueltas a las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(29, '29. Me molesta que la gente no se tome en serio las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(30, '30. Me atrae experimentar y practicar las últimas técnicas y novedades.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(31, '31. Soy cauteloso/a a la hora de sacar conclusiones.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(32, '32. Prefiero contar con el mayor número de fuentes de información. Cuantos más datos reúna para reflexionar, mejor.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(33, '33. Tiendo a ser perfeccionista.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(34, '34. Prefiero oír las opiniones de los demás antes de exponer la mía.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(35, '35. Me gusta afrontar la vida espontáneamente y no tener que planificar todo previamente.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(36, '36. En las discusiones me gusta observar cómo actúan los demás participantes.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(37, '37. Me siento incómodo/a con las personas calladas y demasiado analíticas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(38, '38. Juzgo con frecuencia las ideas de los demás por su valor práctico.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(39, '39. Me agobio si me obligan a acelerar mucho el trabajo para cumplir un plazo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(40, '40. En las reuniones apoyo las ideas prácticas y realistas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(41, '41. Es mejor gozar del momento presente que deleitarse pensando en pasado o en el futuro. ', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(42, '42. Me molestan las personas que siempre desean apresurar las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(43, '43. Aporto ideas nuevas y espontáneas en los grupos de discusión.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(44, '44. Pienso que son más consistentes las decisiones fundamentadas en un minucioso análisis que las basadas en la intuición.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(45, '45. Detecto frecuentemente la inconsistencia y puntos débiles en las argumentaciones de los demás.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(46, '46. Creo que es preciso saltarse las normas muchas más veces que cumplirlas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(47, '47. A menudo caigo en la cuenta de otras formas mejores y más prácticas de hacer las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(48, '48. En conjunto hablo más que escucho.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(49, '49. Prefiero distanciarme de los hechos y observarlos desde otras perspectivas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(50, '50. Estoy convencido/a que debe imponerse la lógica y el razonamiento.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(51, '51. Me gusta buscar nuevas experiencias.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(52, '52. Me gusta experimentar y aplicar las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(53, '53. Pienso que debemos llegar pronto al grano, al meollo de los temas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(54, '54. Siempre trato de conseguir conclusiones e ideas claras.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(55, '55. Prefiero discutir cuestiones concretas y no perder el tiempo con pláticas superficiales.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(56, '56. Me impaciento cuando me dan explicaciones irrelevantes e incoherentes.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(57, '57. Compruebo antes si las cosas funcionan realmente.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(58, '58. Hago varios borradores antes de la redacción definitiva de un trabajo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(59, '59. Soy consciente de que en las discusiones ayudo a mantener a los demás centrados en el tema, evitando divagaciones.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(60, '60. Observo que, con frecuencia, soy uno/a de los/as más objetivos/as y desapasionados/as en las discusiones.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(61, '61. Cuando algo va mal, le quito importancia y trato de hacerlo mejor.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(62, '62. Rechazo ideas originales y espontáneas si no las veo prácticas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(63, '63. Me gusta sopesar diversas alternativas antes de tomar una decisión.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(64, '64. Con frecuencia miro hacia delante para prever el futuro.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(65, '65. En los debates y discusiones prefiero desempeñar un papel secundario antes que ser el/la líder o el/la que más participa.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(66, '66. Me molestan las personas que no actúan con lógica.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(67, '67. Me resulta incómodo tener que planificar y prever las cosas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(68, '68. Creo que el fin justifica los medios en muchos casos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(69, '69. Suelo reflexionar sobre los asuntos y problemas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(70, '70. El trabajar a conciencia me llena de satisfacción y orgullo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(71, '71. Ante los acontecimientos trato de descubrir los principios y teorías en que se basan.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(72, '72. Con tal de conseguir el objetivo que pretendo soy capaz de herir sentimientos ajenos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(73, '73. No me importa hacer todo lo necesario para que sea efectivo mi trabajo.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(74, '74. Con frecuencia soy una de las personas que más anima las fiestas.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(75, '75. Me aburro enseguida con el trabajo metódico y minucioso.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(76, '76. La gente con frecuencia cree que soy poco sensible a sus sentimientos.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(77, '77. Suelo dejarme llevar por mis intuiciones.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(78, '78. Si trabajo en grupo procuro que se siga un método y un orden.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(79, '79. Con frecuencia me interesa averiguar lo que piensa la gente.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07'),
(80, '80. Esquivo los temas subjetivos, ambiguos y poco claros.', 0, 3, '2023-03-10 03:09:07', '2023-03-10 03:09:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `roles`
--

TRUNCATE TABLE `roles`;
--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'web', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(2, 'Administrador', 'web', '2023-02-28 17:28:18', '2023-02-28 17:28:18'),
(3, 'Supervisor', 'web', '2023-02-28 17:28:18', '2023-02-28 17:28:18'),
(4, 'Docente', 'web', '2023-02-28 17:28:18', '2023-02-28 17:28:18'),
(5, 'Estudiante', 'web', '2023-02-28 17:28:18', '2023-02-28 17:28:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `role_has_permissions`
--

TRUNCATE TABLE `role_has_permissions`;
--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 5),
(24, 5),
(25, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncar tablas antes de insertar `users`
--

TRUNCATE TABLE `users`;
--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@superadmin.com', '2023-02-28 17:28:17', '$2y$10$mc8pbJESZJitf/D4mt66W.oyZoqRFfNtykwDsw2tAry8KeY35mq6q', 'LS6x0uCJfZPHhF1nnHaUkwDdGDZ8VIvbyGYEPRCEBKh3p0VAqHkHcAq7BekI', '2023-02-28 17:28:17', '2023-02-28 17:28:17'),
(2, 'Jane Doe', 'jane.doe@admin.com', '2023-02-28 17:28:18', '$2y$10$wNbxDeMGzYNR4gKxw6c1FOBgeha7KGtN/ryectv8dgpdmUxMu9GVS', NULL, '2023-02-28 17:28:18', '2023-02-28 17:28:18'),
(3, 'Richard Roe', 'richard.roe@supervisor.com', '2023-02-28 17:28:18', '$2y$10$UiXUNBgin9ZDVLCwv9nMBODq73Fh2dza3US4cChq8GJQW..9veH8y', 'dzQ7AjNv1V4rIsSWvJXG3JPr6f9meIRugfVH6BgQB3zrVg097scoSsuZX4p5', '2023-02-28 17:28:18', '2023-02-28 17:28:18'),
(4, 'eileen Ainhara Galindo carillo', 'eileenainhara.galindoc@mail.com', '2023-03-10 01:48:01', '$2y$10$We6en0ZliUvGmQAqgENvbe6eowFVdKDnLHsMa2T9zKGw9lCronJfe', 'B6bmnJmDfO1OJt41jsoh9Jn14TNDyjqLFqTmknm1ATCgYizyANkpqOjAj6tC', '2023-03-08 14:59:51', '2023-03-08 14:59:51');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD CONSTRAINT `questionnaires_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`),
  ADD CONSTRAINT `questionnaires_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `questionnaires_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
