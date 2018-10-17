-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Paź 2018, 19:52
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `panstwamiasta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwa`
--

CREATE TABLE `panstwa` (
  `ID` int(11) NOT NULL,
  `Panstwa` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `panstwa`
--

INSERT INTO `panstwa` (`ID`, `Panstwa`) VALUES
(1, 'Abchazja'),
(2, 'Afganistan'),
(3, 'Albania'),
(4, 'Algieria'),
(5, 'Andora'),
(6, 'Angola'),
(7, 'Antigua I Barbuda'),
(8, 'Arabia Saudyjska'),
(9, 'Argentyna'),
(10, 'Armenia'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Azerbejdżan'),
(14, 'Bahamy'),
(15, 'Bahrajn'),
(16, 'Bangladesz'),
(17, 'Barbados'),
(18, 'Belgia'),
(19, 'Belize'),
(20, 'Benin'),
(21, 'Bhutan'),
(22, 'Białoruś'),
(23, 'Birma'),
(24, 'Boliwia'),
(25, 'Bośnia I Hercegowina'),
(26, 'Botswana'),
(27, 'Brazylia'),
(28, 'Brunei'),
(29, 'Bułgaria'),
(30, 'Burkina'),
(31, 'Faso'),
(32, 'Burundi'),
(33, 'Chile'),
(34, 'Chińska'),
(35, 'Republika'),
(36, 'Ludowa'),
(37, 'Chorwacja'),
(38, 'Cypr'),
(39, 'Cypr'),
(40, 'Północny'),
(41, 'Czad'),
(42, 'Czarnogóra'),
(43, 'Dania'),
(44, 'Demokratyczna'),
(45, 'Republika Konga'),
(46, 'Dominika'),
(47, 'Dominikana'),
(48, 'Dżibuti'),
(49, 'Egipt'),
(50, 'Ekwador'),
(51, 'Erytrea'),
(52, 'Estonia'),
(53, 'Etiopia'),
(54, 'Fidżi'),
(55, 'Filipiny'),
(56, 'Finlandia'),
(57, 'Francja'),
(58, 'Gabon'),
(59, 'Gambia'),
(60, 'Ghana'),
(61, 'Górski'),
(62, 'Karabach'),
(63, 'Grecja'),
(64, 'Grenada'),
(65, 'Gruzja'),
(66, 'Gujana'),
(67, 'Gwatemala'),
(68, 'Gwinea'),
(69, 'Gwinea Bissau'),
(70, 'Gwinea Równikowa'),
(71, 'Haiti'),
(72, 'Hiszpania'),
(73, 'Holandia'),
(74, 'Honduras'),
(75, 'Indie'),
(76, 'Indonezja'),
(77, 'Irak'),
(78, 'Iran'),
(79, 'Irlandia'),
(80, 'Islandia'),
(81, 'Izrael'),
(82, 'Jamajka'),
(83, 'Japonia'),
(84, 'Jemen'),
(85, 'Jordania'),
(86, 'Kambodża'),
(87, 'Kamerun'),
(88, 'Kanada'),
(89, 'Katar'),
(90, 'Kazachstan'),
(91, 'Kenia'),
(92, 'Kirgistan'),
(93, 'Kiribati'),
(94, 'Kolumbia'),
(95, 'Komory'),
(96, 'Kongo'),
(97, 'Korea'),
(98, 'Południowa Korea'),
(99, 'Północna'),
(100, 'Kosowo'),
(101, 'Kostaryka'),
(102, 'Kuba'),
(103, 'Kuwejt'),
(104, 'Laos'),
(105, 'Lesotho'),
(106, 'Liban'),
(107, 'Liberia'),
(108, 'Libia'),
(109, 'Liechtenstein'),
(110, 'Litwa'),
(111, 'Luksemburg'),
(112, 'Łotwa'),
(113, 'Macedonia'),
(114, 'Madagaskar'),
(115, 'Malawi'),
(116, 'Malediwy'),
(117, 'Malezja'),
(118, 'Mali'),
(119, 'Malta'),
(120, 'Maroko'),
(121, 'Mauretania'),
(122, 'Mauritius'),
(123, 'Meksyk'),
(124, 'Mikronezja'),
(125, 'Mołdawia'),
(126, 'Monako'),
(127, 'Mongolia'),
(128, 'Mozambik'),
(129, 'Naddniestrze'),
(130, 'Namibia'),
(131, 'Nauru'),
(132, 'Nepal'),
(133, 'Niemcy'),
(134, 'Niger'),
(135, 'Nigeria'),
(136, 'Nikaragua'),
(137, 'Norwegia'),
(138, 'Nowa'),
(139, 'Zelandia'),
(140, 'Oman'),
(141, 'Osetia Południowa'),
(142, 'Pakistan'),
(143, 'Palau'),
(144, 'Palestyna'),
(145, 'Panama'),
(146, 'Papua'),
(147, 'Nowa Gwinea'),
(148, 'Paragwaj'),
(149, 'Peru'),
(150, 'Polska'),
(151, 'Portugalia'),
(152, 'Republika Czeska'),
(153, 'Republika Południowej Afryki'),
(154, 'Republika Środkowoafrykańska'),
(155, 'Republika Zielonego Przylądka'),
(156, 'Rosja'),
(157, 'Rumunia'),
(158, 'Rwanda'),
(159, 'Sahara Zachodnia'),
(160, 'Saint Kitts I Nevis'),
(161, 'Saint Lucia'),
(162, 'Saint Vincent I Grenadyny'),
(163, 'Salwador'),
(164, 'Samoa'),
(165, 'San Marino'),
(166, 'Senegal'),
(167, 'Serbia'),
(168, 'Seszele'),
(169, 'Sierra'),
(170, 'Leone'),
(171, 'Singapur'),
(172, 'Słowacja'),
(173, 'Słowenia'),
(174, 'Somalia'),
(175, 'Somaliland'),
(176, 'Sri Lanka'),
(177, 'Stany Zjednoczone'),
(178, 'Suazi'),
(179, 'Sudan'),
(180, 'Surinam'),
(181, 'Syria'),
(182, 'Szwajcaria'),
(183, 'Szwecja'),
(184, 'Tadżykistan'),
(185, 'Tajlandia'),
(186, 'Tajwan'),
(187, 'Tanzania'),
(188, 'Timor'),
(189, 'Wschodni'),
(190, 'Togo'),
(191, 'Tonga'),
(192, 'Trynidad I Tobago'),
(193, 'Tunezja'),
(194, 'Turcja'),
(195, 'Turkmenistan'),
(196, 'Tuvalu'),
(197, 'Uganda'),
(198, 'Ukraina'),
(199, 'Urugwaj'),
(200, 'Uzbekistan'),
(201, 'Vanuatu'),
(202, 'Watykan'),
(203, 'Wenezuela'),
(204, 'Węgry'),
(205, 'Wielka Brytania'),
(206, 'Wietnam'),
(207, 'Włochy'),
(208, 'Wybrzeże Kości Słoniowej'),
(209, 'Wyspy Marshalla'),
(210, 'Wyspy Salomona'),
(211, 'Wyspy Świętego Tomasza I Książęca'),
(212, 'Zambia'),
(213, 'Zimbabwe'),
(214, 'Zjednoczone Emiraty Arabskie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `panstwa`
--
ALTER TABLE `panstwa`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `panstwa`
--
ALTER TABLE `panstwa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
