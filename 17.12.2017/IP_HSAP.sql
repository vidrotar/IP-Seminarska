-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gostitelj: localhost
-- Čas nastanka: 27. nov 2017 ob 22.05
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
-- Struktura tabele `odgovori`
--

CREATE TABLE `odgovori` (
  `id` int(11) NOT NULL,
  `id_vprasanje` int(11) DEFAULT NULL,
  `id_osebe` int(11) DEFAULT NULL,
  `odgovor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `odgovori`
--

INSERT INTO `odgovori` (`id`, `id_vprasanje`, `id_osebe`, `odgovor`) VALUES
(1, 1, 123, 5),
(2, 2, 123, 5),
(3, 3, 123, 5),
(4, 4, 123, 5),
(5, 5, 123, 5),
(6, 6, 123, 5),
(7, 8, 123, 5),
(8, 9, 123, 5),
(9, 1, 456, 5),
(10, 2, 456, 5),
(11, 3, 456, 5),
(12, 4, 456, 5),
(13, 5, 456, 5),
(14, 6, 456, 5),
(15, 8, 456, 5),
(16, 9, 456, 5),
(17, 1, 456, 5),
(18, 2, 456, 5),
(19, 3, 456, 5),
(20, 4, 456, 5),
(21, 5, 456, 5),
(22, 6, 456, 5),
(23, 8, 456, 5),
(24, 9, 456, 5);

-- --------------------------------------------------------

--
-- Struktura tabele `vprasanja`
--

CREATE TABLE `vprasanja` (
  `id` int(20) NOT NULL,
  `vprasanje` varchar(100) DEFAULT NULL,
  `kategorija` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Odloži podatke za tabelo `vprasanja`
--

INSERT INTO `vprasanja` (`id`, `vprasanje`, `kategorija`) VALUES
(1, 'Sem manj buden.', 1),
(2, 'Imam tezave pri daljsem\r\nvzdrzevanju pozornosti.', 1),
(3, 'Ne zmorem trezno razmis?ljati.', 1),
(4, 'Sem neroden in imam slabo koordinacjo', 1),
(5, 'Sem pozabljiv.', 1),
(6, 'Moram se nadzorovati pri telesnih dejavnostih.', 1),
(8, 'Sem manj motiviran za vse, kar zahteva telesni napor.', 2),
(9, 'Manj se mi ljubi sodelovati pri druzabnih dejavnostih.', 2);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `odgovori`
--
ALTER TABLE `odgovori`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `vprasanja`
--
ALTER TABLE `vprasanja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `odgovori`
--
ALTER TABLE `odgovori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT tabele `vprasanja`
--
ALTER TABLE `vprasanja`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
