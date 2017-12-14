-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 11:43 PM
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
  `id_odgovor` int(11) NOT NULL,
  `opis` varchar(255) DEFAULT NULL,
  `vrednost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_odgovor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
