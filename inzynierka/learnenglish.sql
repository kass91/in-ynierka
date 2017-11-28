-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lis 2017, 19:38
-- Wersja serwera: 10.1.19-MariaDB
-- Wersja PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `learnenglish`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `colours`
--

CREATE TABLE `colours` (
  `IDCol` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `colours`
--

INSERT INTO `colours` (`IDCol`, `EN`, `PL`) VALUES
(1, 'beige', 'beżowy'),
(2, 'black', 'czarny'),
(3, 'pitch black', 'czarny jak smoła'),
(4, 'blue', 'niebieski'),
(5, 'brown', 'brązowy'),
(6, 'chestnut', 'kasztanowy'),
(7, 'cream', 'kremowy'),
(8, 'crimson', 'purpurowy'),
(9, 'gold', 'złoty'),
(10, 'grey', 'szary'),
(11, 'green', 'zielony'),
(12, 'khaki', 'khaki'),
(13, 'lemon', 'cytrynowy'),
(14, 'lilac', 'liliowy'),
(15, 'mauve', 'fiołkoworóżowy'),
(16, 'olive green', 'oliwkowy'),
(17, 'orange', 'pomarańczowy'),
(18, 'pink', 'różowy'),
(19, 'purple', 'fioletowy (z odcieniem różowym)'),
(20, 'red', 'czerwony'),
(21, 'rose', 'różowy'),
(22, 'scarlet', 'szkarłatny'),
(23, 'silver', 'srebrny'),
(24, 'turquoise', 'turkusowy'),
(25, 'violet', 'fiolet (z odcieniem niebieskim)'),
(26, 'white', 'biały'),
(27, 'snow-white', 'śnieżnobiały'),
(28, 'yellow', 'żółty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `days`
--

CREATE TABLE `days` (
  `IDDays` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `days`
--

INSERT INTO `days` (`IDDays`, `EN`, `PL`) VALUES
(1, 'Monday', 'poniedziałek'),
(2, 'Tuesday', 'wtorek'),
(3, 'Wednesday', 'środa'),
(4, 'Thursday', 'czwartek'),
(5, 'Friday', 'piątek'),
(6, 'Saturday', 'sobota'),
(7, 'Sunday', 'niedziela');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `holidays`
--

CREATE TABLE `holidays` (
  `IDHol` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `holidays`
--

INSERT INTO `holidays` (`IDHol`, `EN`, `PL`) VALUES
(1, 'Advent', 'Adwent'),
(2, 'Boxing Day', 'drugi dzień świąt Bożego Narodzenia'),
(3, 'Christmas', 'Boże Narodzenie'),
(4, 'at Christmas', 'w Boże Narodzenie'),
(5, 'Christmas carol', 'kolęda, pastorałka'),
(6, 'Christmas craker', 'tubka, którą rozrywa się z trzaskiem, by wyjąć upominek, papierową czapeczkę i karteczkę z dowcipem'),
(7, 'Christmas Day', 'pierwszy dzień świąt Bożego Narodzenia'),
(8, 'Christmas decoration', 'ozdoby świąteczne'),
(9, 'Christmas Eve', 'Wigilia'),
(10, 'Christmas tree', 'choinka'),
(11, 'Father Christmas', 'Święty Mikołaj'),
(12, 'Merry Christmas', 'Wesołych Świąt'),
(13, 'white Christmas', 'białe Boże Narodzenie'),
(14, 'Midnight Mass', 'pasterka'),
(15, 'lights', 'lampki (choinkowe)'),
(16, 'mistletoe', 'jemioła'),
(17, 'nativity play', 'jasełka'),
(18, 'present', 'prezent'),
(19, 'Santa (Claus)', 'Święty Mikołaj'),
(20, 'Ash Wednesday', 'środa popielcowa'),
(21, 'Easter', 'Wielkanoc'),
(22, 'at Easter', 'na Wielkanoc'),
(23, 'Easter bunny', 'zajączek wielkanocny'),
(24, 'Easter egg', 'pisanka'),
(25, 'Easter Monday', 'poniedziałek wielkanocny, lany poniedziałek'),
(26, 'Easter Sunday', 'niedziela wielkanocna'),
(27, 'Good Friday', 'Wielki Piątek'),
(28, 'Holy Week', 'Wielki Tydzień'),
(29, 'Lent', 'Wielki Post'),
(30, 'Palm Sunday', 'Niedziela Palmowa'),
(31, 'Shrove Tuesday / Pancake Tuesday', 'ostatki, ostatni dzień karnawału'),
(32, 'All Saints'' Day', 'Wszystkich Świętych'),
(33, 'All Souls'' Day', 'Dzień Zaduszny'),
(34, 'anniversary', 'rocznica'),
(35, 'April Fool''s Day', 'prima aprilis'),
(36, 'April fool', 'żart primaaprilisowy'),
(37, 'birthday', 'urodziny'),
(38, 'birthday party', 'przyjęcie urodzinowe'),
(39, 'Happy Birthday!', 'Wszystkiego najlepszego z okazji urodzin!'),
(40, 'Children''s Day', 'Dzień Dziecka'),
(41, 'Epiphany', 'święto Trzech Króli'),
(42, 'Father''s Day', 'Dzień Ojca'),
(43, 'feast', 'święto (religijne), uczta'),
(44, 'mov(e)able feast', 'święto ruchome'),
(45, 'festival', 'święto'),
(46, 'festive', 'świąteczny, uroczysty'),
(47, 'Halloween', 'Halloween'),
(48, 'holiday', 'święto'),
(49, 'bank holiday', 'dzień wolny od pracy (Z racji święta)'),
(50, 'labour day', 'Święto Pracy'),
(51, 'May Day', 'Pierwszy Maja'),
(52, 'Mother''s Day', 'Dzień Matki'),
(53, 'New Year', 'nowy rok'),
(54, 'New Year Eve', 'sylwester'),
(55, 'Pentecost', 'Zielone Świątki'),
(56, 'Passover', 'Pascha'),
(57, 'Remembrance Day', 'święto ku czci ofiar wojen światowych, obchodzone w listopadzie'),
(58, 'saint''s day', 'święto patrona (świętego)'),
(59, 'Thanksgiving (Day)', 'Święto Dziękczynienia'),
(60, 'Whitesun', 'Zielone Świątki'),
(61, 'Women''s Day', 'Dzień Kobiet');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `human body`
--

CREATE TABLE `human body` (
  `IdHB` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `human body`
--

INSERT INTO `human body` (`IdHB`, `EN`, `PL`) VALUES
(1, 'abdomen', 'brzuch'),
(2, 'ankle', 'kostka'),
(3, 'arm', 'ramie'),
(4, 'back', 'plecy'),
(5, 'blood', 'krew'),
(6, 'brain', 'mózg'),
(7, 'cheek', 'policzek'),
(8, 'chin', 'podbródek'),
(9, 'ear', 'ucho'),
(10, 'eye', 'oko'),
(11, 'elbow', 'łokieć'),
(12, 'face', 'twarz'),
(13, 'fist', 'pięść'),
(14, 'foot', 'stopa'),
(15, 'hair', 'włosy'),
(16, 'hand', 'ręka'),
(17, 'head', 'głowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `months`
--

CREATE TABLE `months` (
  `IDMon` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `months`
--

INSERT INTO `months` (`IDMon`, `EN`, `PL`) VALUES
(1, 'January', 'styczeń'),
(2, 'February', 'luty'),
(3, 'March', 'marzec'),
(4, 'April', 'kwiecień'),
(5, 'May', 'maj'),
(6, 'June', 'czerwiec'),
(7, 'July', 'lipiec'),
(8, 'August', 'sierpień'),
(9, 'September', 'wrzesień'),
(10, 'October', 'październik'),
(11, 'November', 'listopad'),
(12, 'December', 'grudzień');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `time`
--

CREATE TABLE `time` (
  `IDTime` int(11) NOT NULL,
  `EN` varchar(255) NOT NULL,
  `PL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `time`
--

INSERT INTO `time` (`IDTime`, `EN`, `PL`) VALUES
(1, 'afternoon', 'popołudnie'),
(2, '...ago', '...temu'),
(3, 'after', 'po'),
(4, 'before', 'przed, zanim'),
(5, 'century', 'wiek, stulecie'),
(6, 'current', 'bieżacy'),
(7, 'dawn', 'świt'),
(8, 'day', 'dzień, doba'),
(9, 'dusk', 'zmierzch'),
(10, 'evening', 'wieczór'),
(11, 'fortnight', 'twa tygodnie'),
(12, 'future', 'przyszłość'),
(13, 'meanwhile', 'w międzyczasie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `IDUser` int(11) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `e-mail` text NOT NULL,
  `pass` varchar(50) NOT NULL,
  `admin` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`IDUser`, `nick`, `e-mail`, `pass`, `admin`) VALUES
(1, 'Admin', 'admin@learnenglish.com', '*6D45FD76D5E9C6A404E39C25106A7F032659ACB8', 1),
(2, 'kass', 'kc@learnenglish.com', '*97C27DAC100B0789ECB58B2DFBA424692DFCF13A', 0),
(5, 'kkkk', 'kkk@gmlk.ck', '*67FD22DC6AFA75DC24002FBFA52B3565B5090B3F', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`IDCol`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`IDDays`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`IDHol`);

--
-- Indexes for table `human body`
--
ALTER TABLE `human body`
  ADD PRIMARY KEY (`IdHB`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`IDMon`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`IDTime`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `colours`
--
ALTER TABLE `colours`
  MODIFY `IDCol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT dla tabeli `days`
--
ALTER TABLE `days`
  MODIFY `IDDays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `holidays`
--
ALTER TABLE `holidays`
  MODIFY `IDHol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT dla tabeli `human body`
--
ALTER TABLE `human body`
  MODIFY `IdHB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `months`
--
ALTER TABLE `months`
  MODIFY `IDMon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `time`
--
ALTER TABLE `time`
  MODIFY `IDTime` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
