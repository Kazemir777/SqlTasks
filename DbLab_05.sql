-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 02 2024 г., 22:07
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `N` int(11) NOT NULL,
  `Code` int(10) UNSIGNED NOT NULL,
  `New` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Title` varchar(255) NOT NULL,
  `Price` float DEFAULT 0,
  `Publisher_id` int(11) NOT NULL,
  `Pages` int(10) UNSIGNED NOT NULL,
  `Format` varchar(20) NOT NULL DEFAULT '',
  `Date` date DEFAULT NULL,
  `Circulation` int(11) NOT NULL,
  `Topic_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`N`, `Code`, `New`, `Title`, `Price`, `Publisher_id`, `Pages`, `Format`, `Date`, `Circulation`, `Topic_id`, `Category_id`) VALUES
(2, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 1),
(8, 4985, 'No', 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.', 18.9, 2, 288, '70х100/16', '2000-07-07', 5000, 1, 1),
(9, 5141, 'No', 'Структури даних та алгоритми', 37.8, 2, 384, '70х100/16', '2000-09-29', 5000, 1, 1),
(20, 5127, 'No', 'Автоматизація інженерно-графічних робіт', 11.58, 1, 256, '70х100/16', '2000-06-15', 5000, 1, 1),
(31, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 2),
(46, 5199, 'No', 'Залізо IBM 2001', 30.7, 3, 368, '70х100/16', '2000-02-12', 5000, 1, 2),
(50, 3851, 'No', 'Захист інформації та безпека комп\'ютерних систем', 26, 4, 480, '84х108/16', NULL, 5000, 1, 3),
(58, 3932, 'No', 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 5, 144, '60х88/16', '1999-06-09', 5000, 1, 4),
(59, 4713, 'No', 'Plug-ins. Додаткові програми для музичних програм', 11.41, 5, 144, '70х100/16', '2000-02-22', 5000, 1, 4),
(175, 5217, 'No', ' Windows МЕ. Найновіші версії програм', 16.57, 6, 320, '70х100/16', '2000-08-25', 5000, 2, 5),
(176, 4829, 'No', 'Windows 2000 Professional крок за кроком з CD', 27.25, 7, 320, '70х100/16', '2000-04-28', 5000, 2, 5),
(188, 5170, 'No', 'Linux версії', 24.43, 5, 346, '70х100/16', '2000-09-29', 5000, 2, 6),
(191, 860, 'No', 'Операційна система UNIX', 3.5, 1, 395, '84х100\\16', '1997-05-05', 5000, 2, 7),
(203, 44, 'No', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 4, 352, '60х84/16', '1996-03-20', 5000, 2, 8),
(206, 5176, 'No', 'Windows Ме. Супутник користувача', 12.79, 1, 306, '', '2000-10-10', 5000, 2, 8),
(209, 5462, 'No', 'Мова програмування С++. Лекції та вправи', 29, 4, 656, '84х108/16', '2000-12-12', 5000, 3, 9),
(210, 4982, 'No', 'Мова програмування С. Лекції та вправи', 29, 4, 432, '84х108/16', '2000-07-12', 5000, 3, 9),
(220, 4687, 'No', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.6, 5, 240, '70х100/16', '2000-02-03', 5000, 3, 9),
(222, 235, 'No', 'Інформаційні системи і структури даних', NULL, 8, 288, '60х90/16', NULL, 400, 1, 4),
(225, 8746, 'Yes', 'Бази даних в інформаційних системах', NULL, 9, 418, '60х84/16', '2018-07-25', 100, 3, 10),
(226, 2154, 'Yes', 'Сервер на основі операційної системи FreeBSD 6.1', 0, 9, 216, '60х84/16', '2015-11-03', 500, 3, 8),
(245, 2662, 'No', 'Організація баз даних та знань', 0, 10, 208, '60х90/16', '2001-10-10', 1000, 3, 10),
(247, 5641, 'Yes', 'Організація баз даних та знань', 0, 1, 384, '70х100/16', '2021-12-15', 5000, 3, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `Category`) VALUES
(9, 'C&C++'),
(6, 'Linux'),
(10, 'SQL'),
(7, 'Unix'),
(5, 'Windows 2000'),
(4, 'Інші книги'),
(8, 'Інші операційні системи'),
(2, 'Апаратні засоби ПК'),
(3, 'Захист і безпека ПК'),
(1, 'Підручники');

-- --------------------------------------------------------

--
-- Структура таблицы `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `Publisher` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `publisher`
--

INSERT INTO `publisher` (`id`, `Publisher`) VALUES
(4, 'DiaSoft'),
(2, 'Вільямс'),
(10, 'Вінниця: ВДТУ'),
(1, 'Видавнича група BHV'),
(5, 'ДМК'),
(8, 'Києво-Могилянська академія'),
(3, 'МикроАрт'),
(6, 'Триумф'),
(9, 'Університет \"Україна\"'),
(7, 'Эком');

-- --------------------------------------------------------

--
-- Структура таблицы `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `Topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `topic`
--

INSERT INTO `topic` (`id`, `Topic`) VALUES
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`N`),
  ADD KEY `Publisher_id` (`Publisher_id`),
  ADD KEY `Category_id` (`Category_id`),
  ADD KEY `Topic_id` (`Topic_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Category` (`Category`);

--
-- Индексы таблицы `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Publisher` (`Publisher`);

--
-- Индексы таблицы `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Topic` (`Topic`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `N` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Publisher_id`) REFERENCES `publisher` (`id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`Category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `books_ibfk_4` FOREIGN KEY (`Topic_id`) REFERENCES `topic` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
