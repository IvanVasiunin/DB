-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2018 г., 18:22
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task_01`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Phone_number` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `Phone_number`) VALUES
(1, 'Фролова Алиса Олеговна ', '8 (907) 520-72-43'),
(2, 'Егорова Станислава Викторовна \r\n', '8 (965) 322-54-86'),
(3, 'Сидорова Наталья Львовна', '8 (971) 299-61-55'),
(4, 'Петрова Нина Николаевна ', '8 (978) 240-55-92'),
(5, 'Гаврилова Милена Ильинична ', '8 (965) 964-79-63'),
(6, 'Богданов Гаврила', '8 (953) 367-99-61'),
(7, 'Пешнин Елизар Михайлович', '8 (940) 767-82-70'),
(8, 'Куколевская Таисия Павловна', '8 (965) 663-58-38'),
(9, 'Васильев Гостомысл Ярославович', '8 (914) 903-39-91');

-- --------------------------------------------------------

--
-- Структура таблицы `device_list`
--

CREATE TABLE `device_list` (
  `order_id` smallint(6) NOT NULL,
  `device_name` char(255) NOT NULL,
  `payment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `device_list`
--

INSERT INTO `device_list` (`order_id`, `device_name`, `payment`) VALUES
(0, 'Мультиварка-скороварка MOULINEX CE500E32', 3257),
(0, 'Пылесос без мешка GORENJE VC2102BCYIV', 1205),
(0, 'Утюг Tefal Easygliss FV3930', 8930),
(0, 'Вытяжка PERFELLI DNS 9862 BL LED', 5260),
(0, 'микроволновая печь SAMSUNG FW77SR-W', 5696),
(0, 'Электрокамин Electrolux EFP/C-1000RC', 123),
(0, 'Huawei Mate 10 Lite 4/64GB Blue', 8053),
(0, 'Philips AJ6000/12', 1380),
(0, 'Panasonic SC-PM250EE-S', 3940),
(0, 'Бойлер ARISTON ABS PRO R 80V Slim', 2129),
(0, 'Пылесос THOMAS TWIN XT', 1144),
(0, 'Отпариватель Mystery MGS-4003', 1945),
(0, 'Швейная машина JANOME TC 1214', 5693),
(0, 'Кофемашина DELONGHI ECAM 650.75', 8767),
(0, 'Мультиварка PHILIPS Viva Collection HD4734/0', 5171),
(0, 'Panasonic Lumix DMC-FZ300', 2252),
(0, 'Мясорубка PHILIPS Viva Collection HR2723/20', 3883),
(0, 'Стиральная машина узкая INDESIT IWSC 61253 C ECO EU', 5055),
(0, 'Panasonic SC-UX100EE-К', 1500),
(0, 'Утюг TEFAL ULTIMATE ANTI-CALC FV9787', 4426),
(0, 'Кофемолка SATURN ST-CM1033 Black', 1123),
(0, 'Кофеварка SINBO SCM-2948 ELECTRIC COFFEE POT', 879),
(0, 'Бойлер ARISTON BLU EVO R 10/3', 1250),
(0, 'Sony Cyber-shot DSC-HX400', 3637),
(0, 'Утюг TEFAL Turbo Pro Anti-calc FV5655', 800);

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `name`) VALUES
(1, 'Кудрявцева Александра Юрьевна'),
(2, 'Фролова Олимпиада Егоровна');

-- --------------------------------------------------------

--
-- Структура таблицы `masters`
--

CREATE TABLE `masters` (
  `id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `masters`
--

INSERT INTO `masters` (`id`, `name`) VALUES
(1, 'Назаров Вениамин Федорович'),
(2, 'Андреев Фирс Матвеевич'),
(3, 'Беляев Фёдор Павлович'),
(4, 'Тихомиров Леонтий Григорьевич'),
(5, 'Марков Моисей Егорович'),
(6, 'Щербаков Авдей Ярославович'),
(7, 'Шашков Боголюб Тимофеевич'),
(8, 'Трофимов Никанор Макарович'),
(9, 'Сорокин Андроник Филиппович');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `master_id` smallint(6) NOT NULL,
  `manager_id` smallint(6) NOT NULL,
  `client_id` smallint(6) NOT NULL,
  `total_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `master_id`, `manager_id`, `client_id`, `total_cost`) VALUES
(7211, 0, 0, 0, 0),
(6195, 0, 0, 0, 0),
(7864, 0, 0, 0, 0),
(5851, 0, 0, 0, 0),
(9171, 0, 0, 0, 0),
(8541, 0, 0, 0, 0),
(7247, 0, 0, 0, 0),
(9963, 0, 0, 0, 0),
(6581, 0, 0, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `masters`
--
ALTER TABLE `masters`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
