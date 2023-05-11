-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 09. 19:17
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `valami2`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fish`
--

CREATE TABLE `fish` (
  `halid` int(255) NOT NULL,
  `url` varchar(200) COLLATE utf16_hungarian_ci NOT NULL,
  `nev` varchar(100) COLLATE utf16_hungarian_ci NOT NULL,
  `ar` int(255) NOT NULL,
  `db` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `fish`
--

INSERT INTO `fish` (`halid`, `url`, `nev`, `ar`, `db`) VALUES
(1, './images/neon.png', 'Neonhal', 200, 255),
(2, './images/vitorlas.jpg', 'Vitorláshal', 500, 255),
(3, 'https://vadvilagbolt.cdn.shoprenter.hu/custom/vadvilagbolt/image/data/labirintkopolty%C3%BAs/t%C3%B6rpe%20gur%C3%A1mi.jpg?lastmod=1682422198.1625440538', 'Törpe gurámi', 1500, 255),
(4, 'http://akvaguru.hu/kepek2/halak/panga2.jpg', 'Ázsiai cápaharcsa', 2500, 100),
(5, 'https://www.fisch.hu/images/cikkek_akva/thumb/crop400x266/xifo.jpg', 'Szifó', 1200, 255),
(6, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Pygocentrus_nattereri_01.jpg/260px-Pygocentrus_nattereri_01.jpg', 'Vöröshasú pirája', 4500, 255),
(7, 'https://www.haziallat.hu/upload/4/article/3411/diszkoszhalak.jpg', 'Diszkoszhal', 4500, 20);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `uid` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf16_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf16_hungarian_ci NOT NULL,
  `password` varchar(100) COLLATE utf16_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`) VALUES
(1, 'sdasdasdasd', 'dfgdfgdfg', '7889b68e6bad0b0282a389f93c98ac72fa6ddeac'),
(2, 'sadasdasd', 'he', '056eafe7cf52220de2df36845b8ed170c67e23e3'),
(3, 'szia', 'jelszo', 'a88b7dcd1a9e3e17770bbaa6d7515b31a2d7e85d'),
(4, 'szia', 'jelszo', 'a88b7dcd1a9e3e17770bbaa6d7515b31a2d7e85d'),
(5, 'gfghfghjfgh', 'rdterter', '99bde0a73faee565a6a8e1a3ed65707e6af189a1');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`halid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `fish`
--
ALTER TABLE `fish`
  MODIFY `halid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
