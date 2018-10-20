-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Paź 2018, 19:51
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

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
-- Struktura tabeli dla tabeli `kolory`
--

CREATE TABLE `kolory` (
  `ID` int(11) NOT NULL,
  `kolory` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `kolory`
--

INSERT INTO `kolory` (`ID`, `kolory`) VALUES
(1, 'biały'),
(2, 'alabastrowy'),
(3, 'kość słoniowa'),
(4, 'mleczny'),
(5, 'chamois'),
(6, 'kremowy'),
(7, 'perłowy'),
(8, 'porcelanowy'),
(9, 'amarantowy'),
(10, 'arbuzowy'),
(11, 'biskupi'),
(12, 'cyklamen'),
(13, 'eozyna'),
(14, 'łososiowy'),
(15, 'magenta'),
(16, 'majtkowy'),
(17, 'malinowy'),
(18, 'pąsowy'),
(19, 'róż indyjski'),
(20, 'róż pompejański'),
(21, 'róż wenecki'),
(22, 'różowy'),
(23, 'rubinowy'),
(24, 'bordowy'),
(25, 'buraczkowy'),
(26, 'burgund'),
(27, 'ceglasty'),
(28, 'cynobrowy'),
(29, 'czerwień alizarynowa'),
(30, 'czerwień wzrokowa'),
(31, 'czerwień żelazowa'),
(32, 'czerwony'),
(33, 'fuksja'),
(34, 'kardynalski'),
(35, 'karmazynowy'),
(36, 'karminowy'),
(37, 'magenta'),
(38, 'makowy'),
(39, 'poziomkowy'),
(40, 'rdzawy'),
(41, 'rudy'),
(42, 'szkarłatny'),
(43, 'tango'),
(44, 'truskawkowy'),
(45, 'wiśniowy'),
(46, 'brzoskwiniowy'),
(47, 'bursztynowy'),
(48, 'brązowy'),
(49, 'cynamonowy'),
(50, 'herbaciany'),
(51, 'koralowy'),
(52, 'marchewkowy'),
(53, 'miedziany'),
(54, 'miodowy'),
(55, 'morelowy'),
(56, 'ochra'),
(57, 'oranż'),
(58, 'pomarańczowy'),
(59, 'siena palona'),
(60, 'tycjan'),
(61, 'ugier'),
(62, 'złocisty'),
(63, 'beżowy'),
(64, 'brunatny'),
(65, 'czekoladowy'),
(66, 'heban'),
(67, 'kakaowy'),
(68, 'kasztanowy'),
(69, 'khaki'),
(70, 'mahoń'),
(71, 'palisander'),
(72, 'orzechowy'),
(73, 'sepia'),
(74, 'spiżowy'),
(75, 'tabaczkowy'),
(76, 'umbra'),
(77, 'bahama yellow'),
(78, 'bananowy'),
(79, 'cytrynowy'),
(80, 'kanarkowy'),
(81, 'piwny'),
(82, 'siarkowy'),
(83, 'słomkowy'),
(84, 'stare złoto'),
(85, 'szafranowy'),
(86, 'zieleń wiosenna'),
(87, 'złoty'),
(88, 'żółty'),
(89, 'malachitowy'),
(90, 'marengo'),
(91, 'miętowy'),
(92, 'morski'),
(93, 'oliwkowy'),
(94, 'patynowy'),
(95, 'pistacjowy'),
(96, 'seledynowy'),
(97, 'szmaragdowy'),
(98, 'trawiasty'),
(99, 'zieleń butelkowa'),
(100, 'zieleń jaskrawa'),
(101, 'zieleń Veronese\'a'),
(102, 'zieleń zgniła'),
(103, 'zielony'),
(104, 'atramentowy'),
(105, 'błękit królewski'),
(106, 'błękit paryski'),
(107, 'błękit pruski'),
(108, 'błękit Thénarda'),
(109, 'błękit Turnbulla'),
(110, 'chabrowy'),
(111, 'kobaltowy'),
(112, 'lapis-lazuli'),
(113, 'lazurowy'),
(114, 'modry'),
(115, 'niebieski'),
(116, 'siny'),
(117, 'szafirowy'),
(118, 'ultramaryna'),
(119, 'turkusowy'),
(120, 'lawendowy'),
(121, 'ametystowy'),
(122, 'fioletowy'),
(123, 'fiołkowy'),
(124, 'jagodowy'),
(125, 'purpurowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwa`
--

CREATE TABLE `panstwa` (
  `ID` int(11) NOT NULL,
  `Panstwa` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
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
(34, 'Chińska Republika Ludowa'),
(37, 'Chorwacja'),
(38, 'Cypr'),
(39, 'Cypr'),
(40, 'Północny'),
(41, 'Czad'),
(42, 'Czarnogóra'),
(43, 'Dania'),
(45, 'Demokratyczna Republika Konga'),
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
-- Indeksy dla tabeli `kolory`
--
ALTER TABLE `kolory`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `panstwa`
--
ALTER TABLE `panstwa`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kolory`
--
ALTER TABLE `kolory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT dla tabeli `panstwa`
--
ALTER TABLE `panstwa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
