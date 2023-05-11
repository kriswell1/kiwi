-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 11. 10:23
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
-- Tábla szerkezet ehhez a táblához `bird`
--

CREATE TABLE `bird` (
  `birdid` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf16_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE utf16_hungarian_ci NOT NULL,
  `ar` int(200) NOT NULL,
  `db` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `bird`
--

INSERT INTO `bird` (`birdid`, `url`, `nev`, `ar`, `db`) VALUES
(1, 'https://www.fressnapf.hu/wp-content/uploads/2015/09/fressnapf_0920.jpg', 'Papagáj', 5000, 10),
(2, 'https://m.blog.hu/va/varosimadar/image/gouldian-finch-2022851_1280.jpg', 'Amandina', 35000, 5),
(3, 'https://media.icdn.hu/content/entity/2018/04/38598/5d24e5de22558th1.jpg', 'Zebrapinty', 2500, 15),
(4, 'https://www.haziallat.hu/upload/4/article/1489/1_original.jpg', 'Beó', 1200, 26);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cat`
--

CREATE TABLE `cat` (
  `catid` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf16_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE utf16_hungarian_ci NOT NULL,
  `ar` int(200) NOT NULL,
  `db` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `cat`
--

INSERT INTO `cat` (`catid`, `url`, `nev`, `ar`, `db`) VALUES
(1, 'https://nlc.p3k.hu/uploads/2021/07/tolvajmacska-768x432.jpg', 'Csibész', 55000, 1),
(2, 'https://kep.cdn.indexvas.hu/1/0/3439/34395/343957/34395707_2633589_988e30c4e1068d56e1e3b4285a7392d5_wm.jpg', 'Pici', 3000, 1),
(3, 'https://www.grandopet.hu/upload_files/magazine/thumbs/thumb_nagyperzsa-cirmos-macska-1.jpg', 'Pipp', 30000, 1),
(4, 'https://media.szekelyhon.ro/pictures/erdelyin/szabadido/b_macskaidill.jpg', 'Inci', 2000, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dog`
--

CREATE TABLE `dog` (
  `dogid` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf16_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE utf16_hungarian_ci NOT NULL,
  `ar` int(200) NOT NULL,
  `db` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `dog`
--

INSERT INTO `dog` (`dogid`, `url`, `nev`, `ar`, `db`) VALUES
(1, 'https://pcdn.hu/articles/images-md/p/o/m/pomeraniai-kutya-getty-stock-357205.jpg', 'Hácsi', 80000, 1),
(2, 'https://kutyabarathelyek.hu/images/images/2048x2048/12924428885f33e16fd79d4.jpg', 'Breki', 5000, 1),
(3, 'https://media1.hu/wp-content/uploads/2019/12/kutya.jpg', 'Pufi', 15000, 1),
(4, 'https://nlc.p3k.hu/uploads/2023/04/border-collie-768x432.jpg', 'Flipper', 5000, 1);

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
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendelesid` int(255) NOT NULL,
  `szallitasicim` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `osszeg` int(50) DEFAULT NULL,
  `uid` int(100) DEFAULT NULL,
  `halid` int(255) DEFAULT NULL,
  `dogid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `birdid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
(5, 'gfghfghjfgh', 'rdterter', '99bde0a73faee565a6a8e1a3ed65707e6af189a1'),
(6, 'rfdfgdfg', 'dgfdgdg', '4c691771cd6d4d934cf9fa3ef88219fd6a57e98d'),
(7, 'gtrtzru', 'gjghj', '77f1493982dad6f81b20ce3f03da5ac51b14fa7c'),
(8, 'Andor', 'Andor', 'dddaffa7f74fef905a73b0d8498300e3930a1321'),
(9, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(10, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(11, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(12, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(13, 'Cili', 'Cili', '2f5db5c5d86a35ec2d2394f758f0334dd531f176'),
(14, 'Dávid', 'Dávid', '1684a2b04a95ff549f502efba53a24f611a58d64'),
(15, 'Dávid', 'Dávid', '1684a2b04a95ff549f502efba53a24f611a58d64'),
(16, 'Emese', 'Emese', 'cab50e3400255471bd0674d145d12c05e3c535c0'),
(17, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(18, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(19, 'Géza', 'Géza', '0daea3b7aa46b490ff7e993c33a42ce1a6d421bf'),
(20, 'Hedvig', 'Hedvig', 'dbd19bec9182b754749466c79c5462d211b6ce27'),
(21, 'Irén', 'Irén', '41cda4fb08da97f65dd7142f49670f5ad708f42b'),
(22, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(23, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(24, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(25, 'Imre', 'Imre', '7b6a36c4d9cb02c55efad1584d919b3732f3264e'),
(26, 'Kálmán', 'Kálmán', 'c2da86bed45813a1386633d12247f27f4073a0d6'),
(27, 'Kálmán', 'Kálmán', 'c2da86bed45813a1386633d12247f27f4073a0d6'),
(28, 'Saci', 'Saci', 'b19236eb09d10ac5179c14db66bd2ba4d3146e41'),
(29, 'Tomi', 'Tomi', 'cdc2b7bf55c2ac7d6fec3896cf56ba9e8d05d54c'),
(30, 'Zoli', 'Zoli', '4c1d5554805a9e84d7120fba8a27071f3f852e79'),
(31, 'Sári', 'Sári', '76cb53523c42abbf6bd0bdc3a230339647a97384'),
(32, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(33, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(34, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(35, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(36, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(37, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(38, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(39, 'Jani', 'Jani', '342f5bba34b5cc82ecc06d9b059ad57bd0dac5cd'),
(40, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(41, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(42, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(43, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(44, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(45, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(46, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(47, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(48, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(49, 'Feri', 'Feri', '461f8248b6f2fb6e1f0507b66cc62ec477168c36'),
(50, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(51, 'János', 'János', 'f79ae2ae6d0cf04d923cf53dae915e6c5b24a6d6'),
(52, 'Jani', 'Jani', '342f5bba34b5cc82ecc06d9b059ad57bd0dac5cd'),
(53, 'Jani', 'Jani', '342f5bba34b5cc82ecc06d9b059ad57bd0dac5cd'),
(54, 'Jani', 'Jani', '342f5bba34b5cc82ecc06d9b059ad57bd0dac5cd'),
(55, 'Béla', 'Béla', 'd76b4105165453cd8a4eea63f49a3c76e357ca1b'),
(56, 'Julcsi', 'Julcsi', 'a2c8133d8097efcd71dcacd779a661a9c8f51b78'),
(57, 'Julcsi', 'Julcsi', 'a2c8133d8097efcd71dcacd779a661a9c8f51b78'),
(58, 'Károly', 'Károly', '4f5cebb741ef140f55e9ccc0acfa7f83b9efa9dc'),
(59, 'Sanyi', 'Sanyi', '5f64d23d2858994eec9c78db365e65540eba32da');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bird`
--
ALTER TABLE `bird`
  ADD PRIMARY KEY (`birdid`);

--
-- A tábla indexei `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`catid`);

--
-- A tábla indexei `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`dogid`);

--
-- A tábla indexei `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`halid`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendelesid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `halid` (`halid`),
  ADD KEY `dogid` (`dogid`),
  ADD KEY `catid` (`catid`),
  ADD KEY `birdid` (`birdid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bird`
--
ALTER TABLE `bird`
  MODIFY `birdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `cat`
--
ALTER TABLE `cat`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `dog`
--
ALTER TABLE `dog`
  MODIFY `dogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `fish`
--
ALTER TABLE `fish`
  MODIFY `halid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendelesid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `rendeles_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `rendeles_ibfk_2` FOREIGN KEY (`halid`) REFERENCES `fish` (`halid`),
  ADD CONSTRAINT `rendeles_ibfk_3` FOREIGN KEY (`dogid`) REFERENCES `dog` (`dogid`),
  ADD CONSTRAINT `rendeles_ibfk_4` FOREIGN KEY (`catid`) REFERENCES `cat` (`catid`),
  ADD CONSTRAINT `rendeles_ibfk_5` FOREIGN KEY (`birdid`) REFERENCES `bird` (`birdid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
