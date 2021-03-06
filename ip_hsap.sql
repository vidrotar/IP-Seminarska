-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2017 at 09:49 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ip_hsap`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE IF NOT EXISTS `kategorija` (
  `id_kategorija` int(11) NOT NULL AUTO_INCREMENT,
  `id_vprasalnik` int(11) DEFAULT NULL,
  `ime_kategorije` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kategorija`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id_kategorija`, `id_vprasalnik`, `ime_kategorije`) VALUES
(1, 2, 'Telesna podlestvica'),
(2, 2, 'Kognitivna lestvica'),
(3, 2, 'Psihosocialna podlestvica'),
(4, 0, 'Fizi?no zdravje'),
(5, 0, 'Omejitve zaradi fizi?nih problemov'),
(6, 0, 'Omejitve zaradi ?ustvenih problemov'),
(7, 0, 'Bole?ina'),
(8, 0, '?ustveno po?utje'),
(9, 0, 'Energija'),
(10, 0, 'Percepcija zdravja'),
(11, 0, 'Socialne funkcije'),
(12, 0, 'Miselne funkcije'),
(13, 0, 'Zdravstvene težave'),
(14, 0, 'Spolne funkcije'),
(15, 0, 'Spremembe zdravja'),
(16, 0, 'Zadovoljstvo s spolnimi funkcijami'),
(17, 0, 'Splošna kakovost življenja');

-- --------------------------------------------------------

--
-- Table structure for table `odgovor`
--

CREATE TABLE IF NOT EXISTS `odgovor` (
  `id_odgovor` int(11) NOT NULL AUTO_INCREMENT,
  `vrednost` int(11) DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  `id_vprasanje` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_odgovor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=424 ;

--
-- Dumping data for table `odgovor`
--

INSERT INTO `odgovor` (`id_odgovor`, `vrednost`, `opis`, `id_vprasanje`) VALUES
(1, 1, 'odlicno', 22),
(2, 2, 'Zelo dobro', 22),
(3, 3, 'Dobro', 22),
(4, 4, 'Ne dobro, ne slabo', 22),
(5, 5, 'Slabo', 22),
(6, 1, 'Veliko boljs?e kot pred enim letom', 23),
(7, 2, 'Nekoliko boljs?e kot pred enim letom', 23),
(8, 3, 'Približno enako kot pred enim letom', 23),
(9, 4, 'Nekolikoslabs?e kot pred enim letom', 23),
(10, 5, 'Veliko slabs?e kot pred enim letom', 23),
(11, 1, 'Da, zelo me ovira', 25),
(12, 2, 'Da, malo me ovira', 25),
(13, 3, 'Ne, sploh me ovira \r\n', 25),
(14, 0, 'Nikoli', 1),
(15, 0, 'Nikoli', 2),
(16, 0, 'Nikoli', 3),
(17, 0, 'Nikoli', 4),
(18, 0, 'Nikoli', 5),
(19, 0, 'Nikoli', 6),
(20, 0, 'Nikoli', 7),
(21, 0, 'Nikoli', 8),
(22, 0, 'Nikoli', 9),
(23, 0, 'Nikoli', 10),
(24, 0, 'Nikoli', 11),
(25, 0, 'Nikoli', 12),
(26, 0, 'Nikoli', 13),
(27, 0, 'Nikoli', 14),
(28, 0, 'Nikoli', 15),
(29, 0, 'Nikoli', 16),
(30, 0, 'Nikoli', 17),
(31, 0, 'Nikoli', 18),
(32, 0, 'Nikoli', 19),
(33, 0, 'Nikoli', 20),
(34, 0, 'Nikoli', 21),
(35, 1, 'Redko', 1),
(36, 1, 'Redko', 2),
(37, 1, 'Redko', 3),
(38, 1, 'Redko', 4),
(39, 1, 'Redko', 5),
(40, 1, 'Redko', 6),
(41, 1, 'Redko', 7),
(42, 1, 'Redko', 8),
(43, 1, 'Redko', 9),
(44, 1, 'Redko', 10),
(45, 1, 'Redko', 11),
(46, 1, 'Redko', 12),
(47, 1, 'Redko', 13),
(48, 1, 'Redko', 14),
(49, 1, 'Redko', 15),
(50, 1, 'Redko', 16),
(51, 1, 'Redko', 17),
(52, 1, 'Redko', 18),
(53, 1, 'Redko', 19),
(54, 1, 'Redko', 20),
(55, 1, 'Redko', 21),
(56, 2, 'V?asih', 1),
(57, 2, 'V?asih', 2),
(58, 2, 'V?asih', 3),
(59, 2, 'V?asih', 4),
(60, 2, 'V?asih', 5),
(61, 2, 'V?asih', 6),
(62, 2, 'V?asih', 7),
(63, 2, 'V?asih', 8),
(64, 2, 'V?asih', 9),
(65, 2, 'V?asih', 10),
(66, 2, 'V?asih', 11),
(67, 2, 'V?asih', 12),
(68, 2, 'V?asih', 13),
(69, 2, 'V?asih', 14),
(70, 2, 'V?asih', 15),
(71, 2, 'V?asih', 16),
(72, 2, 'V?asih', 17),
(73, 2, 'V?asih', 18),
(74, 2, 'V?asih', 19),
(75, 2, 'V?asih', 20),
(76, 2, 'V?asih', 21),
(77, 3, 'Pogosto', 1),
(78, 3, 'Pogosto', 2),
(79, 3, 'Pogosto', 3),
(80, 3, 'Pogosto', 4),
(81, 3, 'Pogosto', 5),
(82, 3, 'Pogosto', 6),
(83, 3, 'Pogosto', 7),
(84, 3, 'Pogosto', 8),
(85, 3, 'Pogosto', 9),
(86, 3, 'Pogosto', 10),
(87, 3, 'Pogosto', 11),
(88, 3, 'Pogosto', 12),
(89, 3, 'Pogosto', 13),
(90, 3, 'Pogosto', 14),
(91, 3, 'Pogosto', 15),
(92, 3, 'Pogosto', 16),
(93, 3, 'Pogosto', 17),
(94, 3, 'Pogosto', 18),
(95, 3, 'Pogosto', 19),
(96, 3, 'Pogosto', 20),
(97, 3, 'Pogosto', 21),
(98, 4, 'Skoraj vedno', 1),
(99, 4, 'Skoraj vedno', 2),
(100, 4, 'Skoraj vedno', 3),
(101, 4, 'Skoraj vedno', 4),
(102, 4, 'Skoraj vedno', 5),
(103, 4, 'Skoraj vedno', 6),
(104, 4, 'Skoraj vedno', 7),
(105, 4, 'Skoraj vedno', 8),
(106, 4, 'Skoraj vedno', 9),
(107, 4, 'Skoraj vedno', 10),
(108, 4, 'Skoraj vedno', 11),
(109, 4, 'Skoraj vedno', 12),
(110, 4, 'Skoraj vedno', 13),
(111, 4, 'Skoraj vedno', 14),
(112, 4, 'Skoraj vedno', 15),
(113, 4, 'Skoraj vedno', 16),
(114, 4, 'Skoraj vedno', 17),
(115, 4, 'Skoraj vedno', 18),
(116, 4, 'Skoraj vedno', 19),
(117, 4, 'Skoraj vedno', 20),
(118, 4, 'Skoraj vedno', 21),
(119, 1, 'Odli?no', 22),
(120, 2, 'Zelo dobro', 22),
(121, 3, 'Dobro', 22),
(122, 4, 'Ne dobro, ne slabo', 22),
(123, 5, 'Slabo', 22),
(124, 1, 'Veliko boljše kot pred enim letom', 23),
(125, 2, 'Nekoliko boljše kot pred enim letom', 23),
(126, 3, 'Približno enako kot pred enim letom', 23),
(127, 4, 'Nekoliko slabše kot pred enim letom', 23),
(128, 5, 'Veliko slabše kot pred enim letom', 23),
(129, 1, 'Da, zelo me ovira', 25),
(130, 2, 'Da, mslo me ovira', 25),
(131, 3, 'Ne, sploh me ne ovira', 25),
(132, 1, 'Da, zelo me ovira', 26),
(133, 2, 'Da, mslo me ovira', 26),
(134, 3, 'Ne, sploh me ne ovira', 26),
(135, 1, 'Da, zelo me ovira', 27),
(136, 2, 'Da, mslo me ovira', 27),
(137, 3, 'Ne, sploh me ne ovira', 27),
(138, 1, 'Da, zelo me ovira', 28),
(139, 2, 'Da, mslo me ovira', 28),
(140, 3, 'Ne, sploh me ne ovira', 28),
(141, 1, 'Da, zelo me ovira', 29),
(142, 2, 'Da, mslo me ovira', 29),
(143, 3, 'Ne, sploh me ne ovira', 29),
(144, 1, 'Da, zelo me ovira', 30),
(145, 2, 'Da, mslo me ovira', 30),
(146, 3, 'Ne, sploh me ne ovira', 30),
(147, 1, 'Da, zelo me ovira', 31),
(148, 2, 'Da, mslo me ovira', 31),
(149, 3, 'Ne, sploh me ne ovira', 31),
(150, 1, 'Da, zelo me ovira', 32),
(151, 2, 'Da, mslo me ovira', 32),
(152, 3, 'Ne, sploh me ne ovira', 32),
(153, 1, 'Da, zelo me ovira', 33),
(154, 2, 'Da, mslo me ovira', 33),
(155, 3, 'Ne, sploh me ne ovira', 33),
(156, 1, 'Da, zelo me ovira', 34),
(157, 2, 'Da, mslo me ovira', 34),
(158, 3, 'Ne, sploh me ne ovira', 34),
(159, 1, 'Da', 36),
(160, 2, 'Ne', 36),
(161, 1, 'Da', 37),
(162, 2, 'Ne', 37),
(163, 1, 'Da', 38),
(164, 2, 'Ne', 38),
(165, 1, 'Da', 39),
(166, 2, 'Ne', 39),
(167, 1, 'Da', 41),
(168, 2, 'Ne', 41),
(169, 1, 'Da', 42),
(170, 2, 'Ne', 42),
(171, 1, 'Da', 43),
(172, 2, 'Ne', 43),
(173, 1, 'Prav ni?', 44),
(174, 2, 'Nekoliko', 44),
(175, 3, 'Zmerno', 44),
(176, 4, 'Precej', 44),
(177, 5, 'Skrajno', 44),
(178, 1, 'Prav ni?', 46),
(179, 2, 'Nekoliko', 46),
(180, 3, 'Zmerno', 46),
(181, 4, 'Precej', 46),
(182, 5, 'Skrajno', 46),
(183, 1, 'Prav ni?', 83),
(184, 2, 'Nekoliko', 83),
(185, 3, 'Zmerno', 83),
(186, 4, 'Precej', 83),
(187, 5, 'Skrajno', 83),
(188, 1, 'Prav ni?', 84),
(189, 2, 'Nekoliko', 84),
(190, 3, 'Zmerno', 84),
(191, 4, 'Precej', 84),
(192, 5, 'Skrajno', 84),
(193, 1, 'Nobenih', 45),
(194, 2, 'Zelo blage', 45),
(195, 3, 'Blage', 45),
(196, 4, 'Zmerne', 45),
(197, 5, 'Hude', 45),
(198, 6, 'Zelo hude', 45),
(199, 1, 'Ves ?as', 48),
(200, 2, 'Ve?ino ?asa', 48),
(201, 3, 'Precej ?asa', 48),
(202, 4, 'Nekaj ?asa', 48),
(203, 5, 'Malo ?asa', 48),
(204, 6, 'Nikoli', 48),
(205, 1, 'Ves ?as', 49),
(206, 2, 'Ve?ino ?asa', 49),
(207, 3, 'Precej ?asa', 49),
(208, 4, 'Nekaj ?asa', 49),
(209, 5, 'Malo ?asa', 49),
(210, 6, 'Nikoli', 49),
(211, 1, 'Ves ?as', 50),
(212, 2, 'Ve?ino ?asa', 50),
(213, 3, 'Precej ?asa', 50),
(214, 4, 'Nekaj ?asa', 50),
(215, 5, 'Malo ?asa', 50),
(216, 6, 'Nikoli', 50),
(217, 1, 'Ves ?as', 51),
(218, 2, 'Ve?ino ?asa', 51),
(219, 3, 'Precej ?asa', 51),
(220, 4, 'Nekaj ?asa', 51),
(221, 5, 'Malo ?asa', 51),
(222, 6, 'Nikoli', 51),
(223, 1, 'Ves ?as', 52),
(224, 2, 'Ve?ino ?asa', 52),
(225, 3, 'Precej ?asa', 52),
(226, 4, 'Nekaj ?asa', 52),
(227, 5, 'Malo ?asa', 52),
(228, 6, 'Nikoli', 52),
(229, 1, 'Ves ?as', 53),
(230, 2, 'Ve?ino ?asa', 53),
(231, 3, 'Precej ?asa', 53),
(232, 4, 'Nekaj ?asa', 53),
(233, 5, 'Malo ?asa', 53),
(234, 6, 'Nikoli', 53),
(235, 1, 'Ves ?as', 54),
(236, 2, 'Ve?ino ?asa', 54),
(237, 3, 'Precej ?asa', 54),
(238, 4, 'Nekaj ?asa', 54),
(239, 5, 'Malo ?asa', 54),
(240, 6, 'Nikoli', 54),
(241, 1, 'Ves ?as', 55),
(242, 2, 'Ve?ino ?asa', 55),
(243, 3, 'Precej ?asa', 55),
(244, 4, 'Nekaj ?asa', 55),
(245, 5, 'Malo ?asa', 55),
(246, 6, 'Nikoli', 55),
(247, 1, 'Ves ?as', 56),
(248, 2, 'Ve?ino ?asa', 56),
(249, 3, 'Precej ?asa', 56),
(250, 4, 'Nekaj ?asa', 56),
(251, 5, 'Malo ?asa', 56),
(252, 6, 'Nikoli', 56),
(253, 1, 'Ves ?as', 57),
(254, 2, 'Ve?ino ?asa', 57),
(255, 3, 'Precej ?asa', 57),
(256, 4, 'Nekaj ?asa', 57),
(257, 5, 'Malo ?asa', 57),
(258, 6, 'Nikoli', 57),
(259, 1, 'Ves ?as', 65),
(260, 2, 'Ve?ino ?asa', 65),
(261, 3, 'Precej ?asa', 65),
(262, 4, 'Nekaj ?asa', 65),
(263, 5, 'Malo ?asa', 65),
(264, 6, 'Nikoli', 65),
(265, 1, 'Ves ?as', 66),
(266, 2, 'Ve?ino ?asa', 66),
(267, 3, 'Precej ?asa', 66),
(268, 4, 'Nekaj ?asa', 66),
(269, 5, 'Malo ?asa', 66),
(270, 6, 'Nikoli', 66),
(271, 1, 'Ves ?as', 67),
(272, 2, 'Ve?ino ?asa', 67),
(273, 3, 'Precej ?asa', 67),
(274, 4, 'Nekaj ?asa', 67),
(275, 5, 'Malo ?asa', 67),
(276, 6, 'Nikoli', 67),
(277, 1, 'Ves ?as', 68),
(278, 2, 'Ve?ino ?asa', 68),
(279, 3, 'Precej ?asa', 68),
(280, 4, 'Nekaj ?asa', 68),
(281, 5, 'Malo ?asa', 68),
(282, 6, 'Nikoli', 68),
(283, 1, 'Ves ?as', 70),
(284, 2, 'Ve?ino ?asa', 70),
(285, 3, 'Precej ?asa', 70),
(286, 4, 'Nekaj ?asa', 70),
(287, 5, 'Malo ?asa', 70),
(288, 6, 'Nikoli', 70),
(289, 1, 'Ves ?as', 71),
(290, 2, 'Ve?ino ?asa', 71),
(291, 3, 'Precej ?asa', 71),
(292, 4, 'Nekaj ?asa', 71),
(293, 5, 'Malo ?asa', 71),
(294, 6, 'Nikoli', 71),
(295, 1, 'Ves ?as', 72),
(296, 2, 'Ve?ino ?asa', 72),
(297, 3, 'Precej ?asa', 72),
(298, 4, 'Nekaj ?asa', 72),
(299, 5, 'Malo ?asa', 72),
(300, 6, 'Nikoli', 72),
(301, 1, 'Ves ?as', 73),
(302, 2, 'Ve?ino ?asa', 73),
(303, 3, 'Precej ?asa', 73),
(304, 4, 'Nekaj ?asa', 73),
(305, 5, 'Malo ?asa', 73),
(306, 6, 'Nikoli', 73),
(307, 1, 'Ves ?as', 58),
(308, 2, 'Ve?ino ?asa', 58),
(309, 3, 'Nekaj ?asa', 58),
(310, 4, 'Malo ?asa', 58),
(311, 5, 'Nikoli', 58),
(312, 1, 'Popolnoma drži', 60),
(313, 2, 'V glavnem drži', 60),
(314, 3, 'Ne vem', 60),
(315, 4, 'V glavnem ne drži', 60),
(316, 5, 'Nikakor ne drži', 60),
(317, 1, 'Popolnoma drži', 61),
(318, 2, 'V glavnem drži', 61),
(319, 3, 'Ne vem', 61),
(320, 4, 'V glavnem ne drži', 61),
(321, 5, 'Nikakor ne drži', 61),
(322, 1, 'Popolnoma drži', 62),
(323, 2, 'V glavnem drži', 62),
(324, 3, 'Ne vem', 62),
(325, 4, 'V glavnem ne drži', 62),
(326, 5, 'Nikakor ne drži', 62),
(327, 1, 'Popolnoma drži', 63),
(328, 2, 'V glavnem drži', 63),
(329, 3, 'Ne vem', 63),
(330, 4, 'V glavnem ne drži', 63),
(331, 5, 'Nikakor ne drži', 63),
(332, 1, 'Nobenih težav', 75),
(333, 2, 'Malo težav', 75),
(334, 3, 'Precej težav', 75),
(335, 4, 'Zelo  veliko težav', 75),
(336, 1, 'Nobenih težav', 76),
(337, 2, 'Malo težav', 76),
(338, 3, 'Precej težav', 76),
(339, 4, 'Zelo  veliko težav', 76),
(340, 1, 'Nobenih težav', 77),
(341, 2, 'Malo težav', 77),
(342, 3, 'Precej težav', 77),
(343, 4, 'Zelo  veliko težav', 77),
(344, 1, 'Nobenih težav', 78),
(345, 2, 'Malo težav', 78),
(346, 3, 'Precej težav', 78),
(347, 4, 'Zelo  veliko težav', 78),
(348, 1, 'Nobenih težav', 79),
(349, 2, 'Malo težav', 79),
(350, 3, 'Precej težav', 79),
(351, 4, 'Zelo  veliko težav', 79),
(352, 1, 'Nobenih težav', 80),
(353, 2, 'Malo težav', 80),
(354, 3, 'Precej težav', 80),
(355, 4, 'Zelo  veliko težav', 80),
(356, 1, 'Nobenih težav', 81),
(357, 2, 'Malo težav', 81),
(358, 3, 'Precej težav', 81),
(359, 4, 'Zelo  veliko težav', 81),
(360, 1, 'Zelo zadovoljen', 82),
(361, 2, 'Precej zadovoljen', 82),
(362, 3, 'Niti zadovoljen niti nezadovoljen', 82),
(363, 4, 'Precej nezadovoljen', 82),
(364, 5, 'Zelo nezadovoljen', 82),
(365, 0, ':(((', 85),
(366, 1, '', 85),
(367, 2, ':((', 85),
(368, 3, '', 85),
(369, 4, ':(', 85),
(370, 5, '', 85),
(371, 6, ':)', 85),
(372, 7, '', 85),
(373, 8, ':))', 85),
(374, 9, '', 85),
(375, 10, ':D', 85),
(376, 1, 'Grozno', 86),
(377, 2, 'Precej nesre?no', 86),
(378, 3, 'Ve?inoma slabo', 86),
(379, 4, 'Srednje: malo slabo in malo dobro', 86),
(380, 5, 'Ve?inoma dobro', 86),
(381, 6, 'Precej sre?no', 86),
(382, 7, 'Krasno', 86);

-- --------------------------------------------------------

--
-- Table structure for table `odgovori`
--

CREATE TABLE IF NOT EXISTS `odgovori` (
  `id_odgovori` int(11) DEFAULT NULL,
  `id_uporabnik` int(11) DEFAULT NULL,
  `id_odgovor` int(11) DEFAULT NULL,
  `datum` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uporabnik`
--

CREATE TABLE IF NOT EXISTS `uporabnik` (
  `id_uporabnik` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vprasalnik`
--

CREATE TABLE IF NOT EXISTS `vprasalnik` (
  `id_vprasalnik` int(11) NOT NULL DEFAULT '0',
  `naslov` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_vprasalnik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vprasalnik`
--

INSERT INTO `vprasalnik` (`id_vprasalnik`, `naslov`) VALUES
(0, 'MSQOL-54'),
(1, 'MSWS-12'),
(2, 'MFIS'),
(3, 'MSIS-29'),
(4, 'WPAI-MS'),
(5, 'TSQM'),
(6, 'BDI II');

-- --------------------------------------------------------

--
-- Table structure for table `vprasanje`
--

CREATE TABLE IF NOT EXISTS `vprasanje` (
  `id_vprasanje` int(11) NOT NULL AUTO_INCREMENT,
  `id_vprasalnika` int(11) DEFAULT NULL,
  `vprasanje` varchar(255) DEFAULT NULL,
  `id_kategorije` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vprasanje`),
  UNIQUE KEY `id_vprasanje` (`id_vprasanje`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `vprasanje`
--

INSERT INTO `vprasanje` (`id_vprasanje`, `id_vprasalnika`, `vprasanje`, `id_kategorije`) VALUES
(1, 2, 'Sem manj buden.', 2),
(2, 2, 'Imam tezave pri daljsem\r\nvzdrzevanju pozornosti.', 2),
(3, 2, 'Ne zmorem trezno razmis?ljati.', 2),
(4, 2, 'Sem neroden in imam slabo koordinacjo', 1),
(5, 2, 'Sem pozabljiv.', 2),
(6, 2, 'Moram se nadzorovati pri telesnih dejavnostih.', 1),
(7, 2, 'Sem manj motiviran za vse, kar zahteva telesni napor.', 1),
(8, 2, 'Manj se mi ljubi sodelovati pri druzabnih dejavnostih.', 3),
(9, 2, 'Sem omejen glede dejavnosti izven doma.', 3),
(10, 2, 'Tezko zdrzim telesni napor dalj casa.', 1),
(11, 2, 'Tezko se odlocam.', 2),
(12, 2, 'Sem manj motiviran za vse, kar zahteva razmisljanje.', 2),
(13, 2, 'Cutim nemoc v misicah.', 1),
(14, 2, 'Pocutim se nelagodno.', 1),
(15, 2, 'Tezko dokoncam naloge, ki zahtevajo razmisljanje.', 2),
(16, 2, 'Tezko zberem misli pri delu doma ali v sluzbi.', 2),
(17, 2, 'Tezje dokoncam naloge, ki zahtevajo telesni napor.', 1),
(18, 2, 'Moje misljenje je upocasnjeno.', 2),
(19, 2, 'Imam tezave s koncentracijo.', 2),
(20, 2, 'Omejil sem svoje telesne dejavnosti.', 1),
(21, 2, 'Potrebujem vec pocitka, pocivam dalj casa.', 1),
(22, 0, 'Ali bi lahko rekli, da je vaše zdravje na splošno:', 10),
(23, 0, 'Kako bi sedaj na splošno ocenili svoje zdravje, ?e ga primerjate s svojim zdravjem pred enim letom?', 15),
(24, 0, 'Naslednja vprašanja zadevajo dejavnosti, ki jih najbrž po?nete ob obi?ajnih dnevih. Vas zdaj vaše zdravstveno stanje pri teh dejavnostih ovira? ?e vas ovira, ocenite, v kakšni meri:', NULL),
(25, 0, 'Težke dejavnosti, recimo tek, vzdigovanje težkih predmetov, naporni športi', 4),
(26, 0, 'Zmerno težke dejavnosti, recimo premikanje mize, porivanje sesalca po sobi, balinanje ali gobarjenje', 4),
(27, 0, 'Vzdigovanje ali prenašanje vre?k s hrano iz trgovine', 4),
(28, 0, 'Vzpenjanje peš po stopnicah nekaj nadstropij', 4),
(29, 0, 'Vzpenjanje peš po stopnicah eno nadstropje', 4),
(30, 0, 'Sklanjanje, poklekanje, po?epanje', 4),
(31, 0, 'Hoja dlje kot en kilometer', 4),
(32, 0, 'Hoja nekaj sto metrov dale?', 4),
(33, 0, 'Hoja sto metrov dale?', 4),
(34, 0, 'Samostojno kopanje ali obla?enje', 4),
(35, 0, 'Koliko ?asa ste v zadnjih 4 tednih zaradi telesnega zdravja pri delu ali pri drugih rednih dnevnih dejavnostih imeli katerega od naštetih problemov?', NULL),
(36, 0, 'Ste morali skrajšati ?as, namenjen delu ali drugim dejavnostim?', 5),
(37, 0, 'Ste postorili manj, kot bi želeli?', 5),
(38, 0, 'Ste bili omejeni pri opravljanju dolo?ene vrste dela ali drugih dejavnosti?', 5),
(39, 0, 'Ste s težavo opravljali delo ali druge dejavnosti (tako, da je bil na primer potreben dodaten napor)?', 5),
(40, 0, 'Koliko ?asa ste v zadnjih 4 tednih zaradi ?ustvenih težav (recimo, da ste bili potrti ali zaskrbljeni) imeli pri svojem delu ali drugih rednih dnevnih dejavnostih katerega od naštetih problemov?', NULL),
(41, 0, 'Ste morali skrajšati ?as, namenjen delu ali drugim dejavnostim?', 6),
(42, 0, 'Ste postorili manj, kot bi želeli?', 6),
(43, 0, 'Ste bili pri delu ali drugih dejavnostih manj skrbni kot sicer?', 6),
(44, 0, 'Koliko so v zadnjih 4 tednih vaše telesno zdravstveno stanje ali ?ustvene težave ovirale vaše obi?ajne družabne dejavnosti v krogu družine, prijateljev, sosedov ali drugih ljudi?', 11),
(45, 0, 'Ste v zadnjih 4 tednih imeli kakšne telesne bole?ine?', 7),
(46, 0, 'Koliko so vas v zadnjih 4 tednih telesne bole?ine ovirale pri vašem obi?ajnem delu (tako izven doma kot pri hišnih opravilih)?', 7),
(47, 0, 'Ta vprašanja sprašujejo o tem, kako ste se po?utili in kako vam je šlo v zadnjih 4 tednih. Za vsako vprašanje poiš?ite odgovor, ki najbolje opisuje, kako ste se po?utili. Koliko ?asa v zadnjih 4 tednih ste bili...', NULL),
(48, 0, 'Polni življenja?', 9),
(49, 0, 'Zelo živ?ni?', 8),
(50, 0, 'Tako na tleh, da vas ni? ni moglo spraviti v dobro voljo?', 8),
(51, 0, 'Mirni in sproš?eni?', 8),
(52, 0, 'Polni energije?', 9),
(53, 0, 'Malodušni in potrti?', 8),
(54, 0, 'Iz?rpani?', 9),
(55, 0, 'Sre?ni?', 8),
(56, 0, 'Utrujeni?', 9),
(57, 0, 'Zjutraj, ko ste se zbudili, spo?iti?', 9),
(58, 0, 'Koliko ?asa so vas v zadnjih 4 tednih vaše telesno zdravstveno stanje ali ?ustvene težave ovirale pri vaših družabnih dejavnostih (na primer pri sre?anjih s prijatelji, sorodniki, itd.)?', 11),
(59, 0, 'Koliko vsaka od naslednjih trditev za vas DRŽI ali NE DRŽI?', NULL),
(60, 0, 'Zdi se mi, da zbolim prej kot drugi', 10),
(61, 0, 'Tako zdrav sem kot vsi drugi ljudje, ki jih poznam', 10),
(62, 0, 'Pri?akujem, da se mi bo zdravje poslabšalo', 10),
(63, 0, 'Moje zdravje je odli?no', 10),
(64, 0, 'Zdravstvene težave: Koliko ?asa v zadnjih 4 tednih', NULL),
(65, 0, 'Ste zaradi zdravstvenih težav izgubili pogum?', 13),
(66, 0, 'Ste bili razo?arani zaradi svojega zdravstvenega stanja?', 13),
(67, 0, 'Vas je zaradi zdravja skrbelo?', 13),
(68, 0, 'Ste bili potrti zaradi svojih zdravstvenih težav?', 13),
(69, 0, 'Kognitivne (miselne) funkcije: Koliko ?asa v zadnjih 4 tednih...', NULL),
(70, 0, 'Ste imeli težave z zbranostjo in razmišljanjem?', 12),
(71, 0, 'Ste imeli težave pri ohranjanju pozornosti dalj ?asa na dolo?eno aktivnost?', 12),
(72, 0, 'Ste imeli težave s spominom?', 12),
(73, 0, 'So drugi, na primer družinski ?lani ali prijatelji, opazili, da imate težave s spominom ali z zbranostjo?', 12),
(74, 0, 'Naslednji sklop vprašanj zadeva vaše spolno življenje in vašo oceno, kako ste zadovoljni z njim. Vljudno vas prosimo, da ozna?ite ?im bolj to?ne odgovore o svoji spolnosti samo za zadnje 4 tedne.', NULL),
(75, 0, 'Pomanjkanje zanimanja za spolnost', 14),
(76, 0, 'Težave z doseganjem ali vzdrževanjem erekcije', 14),
(77, 0, 'Težave z doseganjem orgazma', 14),
(78, 0, 'Zmožnost zadovoljiti spolnega partnerja', 14),
(79, 0, 'Nezadostna navlažitev nožnice', 14),
(80, 0, 'Težave z doživljanjem orgazma', 14),
(81, 0, 'Zmožnost zadovoljiti spolnega partnerja', 14),
(82, 0, 'Kako zadovoljni ste bili na splošno z vašim spolnim življenjem v zadnjih 4 tednih?', 16),
(83, 0, 'V kolikšni meri so vas v zadnjih 4 tednih težave s ?revesjem oziroma se?nim mehurjem motile pri obi?ajnih družabnih dejavnostih v krogu družine, prijateljev, sosedov ali drugih ljudi?', 11),
(84, 0, 'Koliko so vas v zadnjih 4 tednih bole?ine prepre?evale, da bi uživali življenje?', 7),
(85, 0, 'Kako bi na splošno ocenili svojo kakovost življenja?', 17),
(86, 0, 'Kako bi najbolje opisali, kakšno je vaše življenje na splošno?', 17);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
