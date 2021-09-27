-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 28 2021 р., 00:51
-- Версія сервера: 10.3.22-MariaDB
-- Версія PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `test`
--

-- --------------------------------------------------------

--
-- Структура таблиці `car`
--

CREATE TABLE `car` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ParentID` int(10) UNSIGNED NOT NULL,
  `Cartype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `car`
--

INSERT INTO `car` (`ID`, `ParentID`, `Cartype`) VALUES
(1, 0, 'Авто'),
(2, 1, 'Легкове'),
(3, 1, 'Джип');

-- --------------------------------------------------------

--
-- Структура таблиці `carinfo`
--

CREATE TABLE `carinfo` (
  `ID` int(10) UNSIGNED NOT NULL,
  `CarID` int(10) UNSIGNED NOT NULL,
  `CarName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `carinfo`
--

INSERT INTO `carinfo` (`ID`, `CarID`, `CarName`) VALUES
(1, 2, 'тайота корола'),
(3, 2, 'тайота кемри'),
(4, 2, 'тайота авалон'),
(5, 3, 'Тайота рав4'),
(6, 3, 'фольксваген туарег'),
(7, 2, 'BMW'),
(11, 3, 'ауді ку7');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `carinfo`
--
ALTER TABLE `carinfo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Carinfo_car_fk` (`CarID`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `car`
--
ALTER TABLE `car`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `carinfo`
--
ALTER TABLE `carinfo`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `carinfo`
--
ALTER TABLE `carinfo`
  ADD CONSTRAINT `Carinfo_car_fk` FOREIGN KEY (`CarID`) REFERENCES `car` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
