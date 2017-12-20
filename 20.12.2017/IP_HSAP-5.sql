-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gostitelj: localhost
-- Čas nastanka: 20. dec 2017 ob 14.50
-- Različica strežnika: 10.1.28-MariaDB
-- Različica PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `IP_HSAP`
--

-- --------------------------------------------------------

--
-- Struktura tabele `kategorija`
--

CREATE TABLE `kategorija` (
  `id_kategorija` int(11) NOT NULL,
  `id_vprasalnik` int(11) DEFAULT NULL,
  `ime_kategorije` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `kategorija`
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
-- Struktura tabele `odgovor`
--

CREATE TABLE `odgovor` (
  `id_odgovor` int(11) NOT NULL,
  `vrednost` int(11) DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  `id_vprasanje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `odgovor`
--

INSERT INTO `odgovor` (`id_odgovor`, `vrednost`, `opis`, `id_vprasanje`) VALUES
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
(119, 100, 'Odli?no', 22),
(120, 75, 'Zelo dobro', 22),
(121, 50, 'Dobro', 22),
(122, 25, 'Ne dobro, ne slabo', 22),
(123, 0, 'Slabo', 22),
(124, 100, 'Veliko boljše kot pred enim letom', 23),
(125, 75, 'Nekoliko boljše kot pred enim letom', 23),
(126, 50, 'Približno enako kot pred enim letom', 23),
(127, 25, 'Nekoliko slabše kot pred enim letom', 23),
(128, 0, 'Veliko slabše kot pred enim letom', 23),
(129, 0, 'Da, zelo me ovira', 25),
(130, 50, 'Da, mslo me ovira', 25),
(131, 100, 'Ne, sploh me ne ovira', 25),
(132, 0, 'Da, zelo me ovira', 26),
(133, 50, 'Da, mslo me ovira', 26),
(134, 100, 'Ne, sploh me ne ovira', 26),
(135, 0, 'Da, zelo me ovira', 27),
(136, 50, 'Da, mslo me ovira', 27),
(137, 100, 'Ne, sploh me ne ovira', 27),
(138, 0, 'Da, zelo me ovira', 28),
(139, 50, 'Da, mslo me ovira', 28),
(140, 100, 'Ne, sploh me ne ovira', 28),
(141, 0, 'Da, zelo me ovira', 29),
(142, 50, 'Da, mslo me ovira', 29),
(143, 100, 'Ne, sploh me ne ovira', 29),
(144, 0, 'Da, zelo me ovira', 30),
(145, 50, 'Da, mslo me ovira', 30),
(146, 100, 'Ne, sploh me ne ovira', 30),
(147, 0, 'Da, zelo me ovira', 31),
(148, 50, 'Da, mslo me ovira', 31),
(149, 100, 'Ne, sploh me ne ovira', 31),
(150, 0, 'Da, zelo me ovira', 32),
(151, 50, 'Da, mslo me ovira', 32),
(152, 100, 'Ne, sploh me ne ovira', 32),
(153, 0, 'Da, zelo me ovira', 33),
(154, 50, 'Da, mslo me ovira', 33),
(155, 100, 'Ne, sploh me ne ovira', 33),
(156, 0, 'Da, zelo me ovira', 34),
(157, 50, 'Da, mslo me ovira', 34),
(158, 100, 'Ne, sploh me ne ovira', 34),
(159, 0, 'Da', 36),
(160, 100, 'Ne', 36),
(161, 0, 'Da', 37),
(162, 100, 'Ne', 37),
(163, 0, 'Da', 38),
(164, 100, 'Ne', 38),
(165, 0, 'Da', 39),
(166, 100, 'Ne', 39),
(167, 0, 'Da', 41),
(168, 100, 'Ne', 41),
(169, 0, 'Da', 42),
(170, 100, 'Ne', 42),
(171, 0, 'Da', 43),
(172, 100, 'Ne', 43),
(173, 100, 'Prav ni?', 44),
(174, 75, 'Nekoliko', 44),
(175, 50, 'Zmerno', 44),
(176, 25, 'Precej', 44),
(177, 0, 'Skrajno', 44),
(178, 100, 'Prav ni?', 46),
(179, 75, 'Nekoliko', 46),
(180, 50, 'Zmerno', 46),
(181, 25, 'Precej', 46),
(182, 0, 'Skrajno', 46),
(183, 100, 'Prav ni?', 83),
(184, 75, 'Nekoliko', 83),
(185, 50, 'Zmerno', 83),
(186, 25, 'Precej', 83),
(187, 0, 'Skrajno', 83),
(188, 100, 'Prav ni?', 84),
(189, 75, 'Nekoliko', 84),
(190, 50, 'Zmerno', 84),
(191, 25, 'Precej', 84),
(192, 0, 'Skrajno', 84),
(193, 100, 'Nobenih', 45),
(194, 80, 'Zelo blage', 45),
(195, 60, 'Blage', 45),
(196, 40, 'Zmerne', 45),
(197, 20, 'Hude', 45),
(198, 0, 'Zelo hude', 45),
(199, 100, 'Ves ?as', 48),
(200, 80, 'Ve?ino ?asa', 48),
(201, 60, 'Precej ?asa', 48),
(202, 40, 'Nekaj ?asa', 48),
(203, 20, 'Malo ?asa', 48),
(204, 0, 'Nikoli', 48),
(205, 100, 'Ves ?as', 49),
(206, 80, 'Ve?ino ?asa', 49),
(207, 60, 'Precej ?asa', 49),
(208, 40, 'Nekaj ?asa', 49),
(209, 20, 'Malo ?asa', 49),
(210, 0, 'Nikoli', 49),
(211, 100, 'Ves ?as', 50),
(212, 80, 'Ve?ino ?asa', 50),
(213, 60, 'Precej ?asa', 50),
(214, 40, 'Nekaj ?asa', 50),
(215, 20, 'Malo ?asa', 50),
(216, 0, 'Nikoli', 50),
(217, 100, 'Ves ?as', 51),
(218, 80, 'Ve?ino ?asa', 51),
(219, 60, 'Precej ?asa', 51),
(220, 40, 'Nekaj ?asa', 51),
(221, 20, 'Malo ?asa', 51),
(222, 0, 'Nikoli', 51),
(223, 100, 'Ves ?as', 52),
(224, 80, 'Ve?ino ?asa', 52),
(225, 60, 'Precej ?asa', 52),
(226, 40, 'Nekaj ?asa', 52),
(227, 20, 'Malo ?asa', 52),
(228, 0, 'Nikoli', 52),
(229, 100, 'Ves ?as', 53),
(230, 80, 'Ve?ino ?asa', 53),
(231, 60, 'Precej ?asa', 53),
(232, 40, 'Nekaj ?asa', 53),
(233, 20, 'Malo ?asa', 53),
(234, 0, 'Nikoli', 53),
(235, 100, 'Ves ?as', 54),
(236, 80, 'Ve?ino ?asa', 54),
(237, 60, 'Precej ?asa', 54),
(238, 40, 'Nekaj ?asa', 54),
(239, 20, 'Malo ?asa', 54),
(240, 0, 'Nikoli', 54),
(241, 100, 'Ves ?as', 55),
(242, 80, 'Ve?ino ?asa', 55),
(243, 60, 'Precej ?asa', 55),
(244, 40, 'Nekaj ?asa', 55),
(245, 20, 'Malo ?asa', 55),
(246, 0, 'Nikoli', 55),
(247, 100, 'Ves ?as', 56),
(248, 80, 'Ve?ino ?asa', 56),
(249, 60, 'Precej ?asa', 56),
(250, 40, 'Nekaj ?asa', 56),
(251, 20, 'Malo ?asa', 56),
(252, 0, 'Nikoli', 56),
(253, 100, 'Ves ?as', 57),
(254, 80, 'Ve?ino ?asa', 57),
(255, 60, 'Precej ?asa', 57),
(256, 40, 'Nekaj ?asa', 57),
(257, 20, 'Malo ?asa', 57),
(258, 0, 'Nikoli', 57),
(259, 100, 'Ves ?as', 65),
(260, 80, 'Ve?ino ?asa', 65),
(261, 60, 'Precej ?asa', 65),
(262, 40, 'Nekaj ?asa', 65),
(263, 20, 'Malo ?asa', 65),
(264, 0, 'Nikoli', 65),
(265, 100, 'Ves ?as', 66),
(266, 80, 'Ve?ino ?asa', 66),
(267, 60, 'Precej ?asa', 66),
(268, 40, 'Nekaj ?asa', 66),
(269, 20, 'Malo ?asa', 66),
(270, 0, 'Nikoli', 66),
(271, 100, 'Ves ?as', 67),
(272, 80, 'Ve?ino ?asa', 67),
(273, 60, 'Precej ?asa', 67),
(274, 40, 'Nekaj ?asa', 67),
(275, 20, 'Malo ?asa', 67),
(276, 0, 'Nikoli', 67),
(277, 100, 'Ves ?as', 68),
(278, 80, 'Ve?ino ?asa', 68),
(279, 60, 'Precej ?asa', 68),
(280, 40, 'Nekaj ?asa', 68),
(281, 20, 'Malo ?asa', 68),
(282, 0, 'Nikoli', 68),
(283, 100, 'Ves ?as', 70),
(284, 80, 'Ve?ino ?asa', 70),
(285, 60, 'Precej ?asa', 70),
(286, 40, 'Nekaj ?asa', 70),
(287, 20, 'Malo ?asa', 70),
(288, 0, 'Nikoli', 70),
(289, 100, 'Ves ?as', 71),
(290, 80, 'Ve?ino ?asa', 71),
(291, 60, 'Precej ?asa', 71),
(292, 40, 'Nekaj ?asa', 71),
(293, 20, 'Malo ?asa', 71),
(294, 0, 'Nikoli', 71),
(295, 100, 'Ves ?as', 72),
(296, 80, 'Ve?ino ?asa', 72),
(297, 60, 'Precej ?asa', 72),
(298, 40, 'Nekaj ?asa', 72),
(299, 20, 'Malo ?asa', 72),
(300, 0, 'Nikoli', 72),
(301, 100, 'Ves ?as', 73),
(302, 80, 'Ve?ino ?asa', 73),
(303, 60, 'Precej ?asa', 73),
(304, 40, 'Nekaj ?asa', 73),
(305, 20, 'Malo ?asa', 73),
(306, 0, 'Nikoli', 73),
(307, 100, 'Ves ?as', 58),
(308, 80, 'Ve?ino ?asa', 58),
(309, 40, 'Nekaj ?asa', 58),
(310, 20, 'Malo ?asa', 58),
(311, 0, 'Nikoli', 58),
(312, 100, 'Popolnoma drži', 60),
(313, 75, 'V glavnem drži', 60),
(314, 50, 'Ne vem', 60),
(315, 25, 'V glavnem ne drži', 60),
(316, 0, 'Nikakor ne drži', 60),
(317, 100, 'Popolnoma drži', 61),
(318, 75, 'V glavnem drži', 61),
(319, 50, 'Ne vem', 61),
(320, 25, 'V glavnem ne drži', 61),
(321, 0, 'Nikakor ne drži', 61),
(322, 100, 'Popolnoma drži', 62),
(323, 75, 'V glavnem drži', 62),
(324, 50, 'Ne vem', 62),
(325, 25, 'V glavnem ne drži', 62),
(326, 0, 'Nikakor ne drži', 62),
(327, 100, 'Popolnoma drži', 63),
(328, 75, 'V glavnem drži', 63),
(329, 50, 'Ne vem', 63),
(330, 25, 'V glavnem ne drži', 63),
(331, 0, 'Nikakor ne drži', 63),
(332, 100, 'Nobenih težav', 75),
(333, 67, 'Malo težav', 75),
(334, 33, 'Precej težav', 75),
(335, 0, 'Zelo  veliko težav', 75),
(336, 100, 'Nobenih težav', 76),
(337, 67, 'Malo težav', 76),
(338, 33, 'Precej težav', 76),
(339, 0, 'Zelo  veliko težav', 76),
(340, 100, 'Nobenih težav', 77),
(341, 67, 'Malo težav', 77),
(342, 33, 'Precej težav', 77),
(343, 0, 'Zelo  veliko težav', 77),
(344, 100, 'Nobenih težav', 78),
(345, 67, 'Malo težav', 78),
(346, 33, 'Precej težav', 78),
(347, 0, 'Zelo  veliko težav', 78),
(348, 100, 'Nobenih težav', 79),
(349, 67, 'Malo težav', 79),
(350, 33, 'Precej težav', 79),
(351, 0, 'Zelo  veliko težav', 79),
(352, 100, 'Nobenih težav', 80),
(353, 67, 'Malo težav', 80),
(354, 33, 'Precej težav', 80),
(355, 0, 'Zelo  veliko težav', 80),
(356, 100, 'Nobenih težav', 81),
(357, 67, 'Malo težav', 81),
(358, 33, 'Precej težav', 81),
(359, 0, 'Zelo  veliko težav', 81),
(360, 100, 'Zelo zadovoljen', 82),
(361, 75, 'Precej zadovoljen', 82),
(362, 50, 'Niti zadovoljen niti nezadovoljen', 82),
(363, 25, 'Precej nezadovoljen', 82),
(364, 0, 'Zelo nezadovoljen', 82),
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
(376, 0, 'Grozno', 86),
(377, 17, 'Precej nesre?no', 86),
(378, 33, 'Ve?inoma slabo', 86),
(379, 50, 'Srednje: malo slabo in malo dobro', 86),
(380, 67, 'Ve?inoma dobro', 86),
(381, 83, 'Precej sre?no', 86),
(382, 100, 'Krasno', 86);

-- --------------------------------------------------------

--
-- Struktura tabele `odgovori`
--

CREATE TABLE `odgovori` (
  `id_odgovori` int(11) DEFAULT NULL,
  `id_uporabnik` int(11) DEFAULT NULL,
  `id_odgovor` int(11) DEFAULT NULL,
  `datum` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabele `uporabnik`
--

CREATE TABLE `uporabnik` (
  `id_uporabnik` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabele `vprasalnik`
--

CREATE TABLE `vprasalnik` (
  `id_vprasalnik` int(11) NOT NULL DEFAULT '0',
  `naslov` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `vprasalnik`
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
-- Struktura tabele `vprasanje`
--

CREATE TABLE `vprasanje` (
  `id_vprasanje` int(11) NOT NULL,
  `id_vprasalnika` int(11) DEFAULT NULL,
  `vprasanje` varchar(255) DEFAULT NULL,
  `id_kategorije` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `vprasanje`
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

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id_kategorija`);

--
-- Indeksi tabele `odgovor`
--
ALTER TABLE `odgovor`
  ADD PRIMARY KEY (`id_odgovor`);

--
-- Indeksi tabele `vprasalnik`
--
ALTER TABLE `vprasalnik`
  ADD PRIMARY KEY (`id_vprasalnik`);

--
-- Indeksi tabele `vprasanje`
--
ALTER TABLE `vprasanje`
  ADD PRIMARY KEY (`id_vprasanje`),
  ADD UNIQUE KEY `id_vprasanje` (`id_vprasanje`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id_kategorija` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT tabele `odgovor`
--
ALTER TABLE `odgovor`
  MODIFY `id_odgovor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT tabele `vprasanje`
--
ALTER TABLE `vprasanje`
  MODIFY `id_vprasanje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
