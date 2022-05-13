-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 13 2022 г., 15:24
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bagdanzp_paramon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Admission`
--
-- Создание: Май 13 2022 г., 11:06
-- Последнее обновление: Май 13 2022 г., 11:29
--

DROP TABLE IF EXISTS `Admission`;
CREATE TABLE `Admission` (
  `id_applicant` int(255) NOT NULL,
  `Admission_status` varchar(255) NOT NULL,
  `Admission_data` varchar(255) NOT NULL,
  `Visit_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Admission`
--

INSERT INTO `Admission` (`id_applicant`, `Admission_status`, `Admission_data`, `Visit_status`) VALUES
(1, 'Поступил', '10.12.2003', 1),
(2, 'Поступил', '09.02.2004', 2),
(3, 'Не поступил', '13.07.2003', 3),
(4, 'Поступил', '17.11.2004', 4),
(5, 'Не поступил', '10.10.2010', 5),
(6, 'Не поступил', '26.03.2007', 6),
(7, 'Не поступил', '14.06.20011', 7),
(8, 'Поступил', '10.12.2013', 8),
(9, 'Не поступил', '03.02.2015', 9),
(10, 'Не поступил', '13.09.2017', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `Applicants`
--
-- Создание: Май 13 2022 г., 10:53
-- Последнее обновление: Май 13 2022 г., 11:32
--

DROP TABLE IF EXISTS `Applicants`;
CREATE TABLE `Applicants` (
  `id_applicant` int(11) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Average_mark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Applicants`
--

INSERT INTO `Applicants` (`id_applicant`, `Surname`, `Name`, `Address`, `Average_mark`) VALUES
(1, 'Парамонов', 'Дмитрий', 'Железнодорожная 27, кв 116', '3'),
(2, 'Иванов', 'Сергей', 'Матросова 45, кв 36', '4'),
(3, 'Пахомов', 'Никита', 'Молодёжная 42, кв 15', '5'),
(4, 'Клюкина', 'Лиза', 'Железнодорожная 28, кв 63', '3'),
(5, 'Цыпина', 'Полина', 'Молодогвардейская 76, кв 78', '4'),
(6, 'Куприянов', 'Михаил', 'Громовой 13, кв 45', '5'),
(7, 'Харламова', 'Таня', 'Железнодорожная 25, кв 123', '5'),
(8, 'Кареев', 'Степан', 'Молодёжная 16, кв 3', '3'),
(9, 'Хисамутдинова', 'Анастасия', 'Громова 28, кв 93', '5'),
(10, 'Васильев', 'Максим', 'Карбушева 56, кв 117', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `Certificate`
--
-- Создание: Май 13 2022 г., 10:53
-- Последнее обновление: Май 13 2022 г., 11:35
--

DROP TABLE IF EXISTS `Certificate`;
CREATE TABLE `Certificate` (
  `id_applicant` int(11) NOT NULL,
  `id_College` int(11) NOT NULL,
  `Russian` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Physics` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Certificate`
--

INSERT INTO `Certificate` (`id_applicant`, `id_College`, `Russian`, `Mathematics`, `Physics`) VALUES
(1, 1, 4, 4, 4),
(2, 2, 3, 4, 3),
(3, 3, 5, 5, 5),
(4, 4, 3, 2, 3),
(5, 5, 5, 5, 5),
(6, 6, 3, 5, 5),
(7, 7, 4, 4, 4),
(8, 8, 3, 4, 5),
(9, 9, 4, 3, 5),
(10, 10, 2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `College`
--
-- Создание: Май 13 2022 г., 10:53
-- Последнее обновление: Май 13 2022 г., 11:50
--

DROP TABLE IF EXISTS `College`;
CREATE TABLE `College` (
  `id_College` int(11) NOT NULL,
  `id_speciality` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `Telephone` int(255) NOT NULL,
  `Rating` int(255) NOT NULL,
  `Courses` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `College`
--

INSERT INTO `College` (`id_College`, `id_speciality`, `Name`, `City`, `Street`, `Telephone`, `Rating`, `Courses`) VALUES
(1, 1, 'ТСПК', 'Тольятти', 'Громова 29', 7902189, 4, '1'),
(2, 2, 'СГК', 'Тольятти', 'Молодёжная 9', 7902333, 3, '2'),
(3, 3, 'ПТРК', 'Москва', 'Железнодорожная 5', 7902444, 3, '1'),
(4, 4, 'СРДК', 'Самара', 'Чайкина 45', 7902563, 5, '3'),
(5, 5, 'МРКГ', 'Самара', 'Громова 77', 7902884, 4, '3'),
(6, 6, 'ТРНК', 'Тольятти', 'Карбушева 78', 7902379, 2, '4'),
(7, 7, 'БДРК', 'Сиэтл', 'Пушкина 87', 7902397, 5, '3'),
(8, 8, 'СОРК', 'Москва', 'Калатушкина 28', 7902656, 2, '4'),
(9, 9, 'МОР', 'Самара', 'Победы 116', 7902641, 5, '4'),
(10, 10, 'НАРК', 'Тольятти', 'Карбушева', 7902228, 4, '3');

-- --------------------------------------------------------

--
-- Структура таблицы `speciality`
--
-- Создание: Май 13 2022 г., 10:53
-- Последнее обновление: Май 13 2022 г., 11:53
--

DROP TABLE IF EXISTS `speciality`;
CREATE TABLE `speciality` (
  `id_speciality` int(11) NOT NULL,
  `places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `speciality`
--

INSERT INTO `speciality` (`id_speciality`, `places`) VALUES
(1, 15),
(2, 25),
(3, 7),
(4, 11),
(5, 23),
(6, 13),
(7, 13),
(8, 17),
(9, 13),
(10, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `Tuition_payment`
--
-- Создание: Май 13 2022 г., 10:53
-- Последнее обновление: Май 13 2022 г., 12:09
--

DROP TABLE IF EXISTS `Tuition_payment`;
CREATE TABLE `Tuition_payment` (
  `id_applicant` int(11) NOT NULL,
  `id_Payment` int(11) NOT NULL,
  `Payment_date` date NOT NULL,
  `Payment_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Tuition_payment`
--

INSERT INTO `Tuition_payment` (`id_applicant`, `id_Payment`, `Payment_date`, `Payment_amount`) VALUES
(1, 1, '2007-01-08', 115000),
(2, 2, '2006-07-09', 100000),
(3, 3, '2009-09-07', 75000),
(4, 4, '2007-05-07', 33000),
(5, 5, '2008-04-11', 63000),
(6, 6, '2010-07-06', 113000),
(7, 7, '2013-08-07', 123000),
(8, 8, '2009-09-06', 35000),
(9, 9, '2010-10-01', 134000),
(10, 10, '2013-08-09', 133874);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Admission`
--
ALTER TABLE `Admission`
  ADD PRIMARY KEY (`id_applicant`);

--
-- Индексы таблицы `Applicants`
--
ALTER TABLE `Applicants`
  ADD PRIMARY KEY (`id_applicant`);

--
-- Индексы таблицы `Certificate`
--
ALTER TABLE `Certificate`
  ADD PRIMARY KEY (`id_applicant`);

--
-- Индексы таблицы `College`
--
ALTER TABLE `College`
  ADD PRIMARY KEY (`id_College`,`id_speciality`);

--
-- Индексы таблицы `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`id_speciality`);

--
-- Индексы таблицы `Tuition_payment`
--
ALTER TABLE `Tuition_payment`
  ADD PRIMARY KEY (`id_applicant`,`id_Payment`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Admission`
--
ALTER TABLE `Admission`
  MODIFY `id_applicant` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
