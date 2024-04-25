-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 25 2024 г., 13:05
-- Версия сервера: 8.0.34-26-beget-1-1
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- База данных: `j92276h3_bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--
-- Создание: Апр 21 2024 г., 12:02
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int NOT NULL,
  `Second_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `First_name` varchar(32) NOT NULL,
  `Patronymic` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='id клиента и его ФИО';

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `Second_name`, `First_name`, `Patronymic`) VALUES
(1, 'Иванов', 'Иван', 'Иванович'),
(2, 'Петров', 'Петр', 'Петрович'),
(3, 'Михаилов', 'Михаил', 'Михайлович'),
(4, 'Андреев', 'Андрей', 'Андреевич'),
(5, 'Романов', 'Роман', 'Романович'),
(6, 'Алексеев', 'Алексей', 'Алексеевич'),
(7, 'Мышкина', 'Анастасия', NULL),
(8, 'Кошкин', 'Владимир', NULL),
(9, 'Мышкин', 'Николай', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `input_operation`
--
-- Создание: Апр 21 2024 г., 12:24
--

DROP TABLE IF EXISTS `input_operation`;
CREATE TABLE `input_operation` (
  `id` int NOT NULL,
  `id_score` int NOT NULL,
  `amount` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `input_operation`
--

INSERT INTO `input_operation` (`id`, `id_score`, `amount`, `date`) VALUES
(1, 1, 5, '0000-00-00 00:00:00'),
(3, 1, 2, '2024-04-21 12:19:31'),
(4, 1, 10, '2024-04-21 12:21:27'),
(5, 2, 199, '2024-04-21 12:21:42'),
(6, 3, 1, '2024-04-21 12:21:52'),
(7, 4, 500, '2024-04-21 12:22:00'),
(8, 4, 1000, '2024-04-21 12:22:06'),
(9, 5, 10, '2024-04-21 12:22:22'),
(10, 6, 2, '2024-04-21 12:22:29'),
(11, 7, 0.5, '2024-04-21 12:24:38'),
(12, 8, 100000, '2024-04-21 12:25:26'),
(13, 9, 4999, '2024-04-21 12:25:38'),
(14, 10, 1.99, '2024-04-21 12:25:51'),
(15, 11, 123.7, '2024-04-25 09:56:33'),
(16, 13, 1, '2024-04-25 09:58:39'),
(17, 15, 3, '2024-04-25 09:58:49'),
(18, 19, 21000, '2024-04-25 09:59:04');

-- --------------------------------------------------------

--
-- Структура таблицы `output_operation`
--
-- Создание: Апр 21 2024 г., 12:30
--

DROP TABLE IF EXISTS `output_operation`;
CREATE TABLE `output_operation` (
  `id` int NOT NULL,
  `id_score` int NOT NULL,
  `amount` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `output_operation`
--

INSERT INTO `output_operation` (`id`, `id_score`, `amount`, `date`) VALUES
(1, 1, 2, '2024-04-21 12:26:31'),
(2, 2, 152, '2024-04-21 12:27:47'),
(3, 3, 1.99, '2024-04-21 12:27:53'),
(4, 4, 577, '2024-04-21 12:28:00'),
(5, 5, 22, '2024-04-21 12:28:06'),
(6, 5, 2, '2024-04-21 12:28:13'),
(7, 6, 1, '2024-04-21 12:28:21'),
(8, 7, 9999.9, '2024-04-21 12:28:29'),
(9, 9, 214, '2024-04-21 12:28:46'),
(10, 9, 555, '2024-04-21 12:28:51'),
(11, 10, 1999, '2024-04-21 12:28:57'),
(12, 9, 4999, '2024-04-21 12:25:38'),
(13, 13, 1, '2024-04-25 09:58:39'),
(14, 15, 3, '2024-04-25 09:58:49'),
(15, 19, 17000, '2024-04-25 10:01:47');

-- --------------------------------------------------------

--
-- Структура таблицы `score`
--
-- Создание: Апр 21 2024 г., 12:04
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int NOT NULL,
  `id_client` int NOT NULL,
  `valuta` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='банковский счёт';

--
-- Дамп данных таблицы `score`
--

INSERT INTO `score` (`id`, `id_client`, `valuta`) VALUES
(1, 5, 'Доллар'),
(2, 6, 'Рубль'),
(3, 1, 'Евро'),
(4, 2, 'Рубль'),
(5, 3, 'Доллар'),
(6, 4, 'Евро'),
(7, 7, 'Рубль'),
(8, 1, 'Рубль'),
(9, 2, 'Доллар'),
(10, 1, 'Доллар'),
(11, 8, 'Рубль'),
(12, 2, 'Тенге'),
(13, 3, 'Доллар'),
(14, 3, 'Тенге'),
(15, 4, 'Евро'),
(16, 4, 'Рубль'),
(17, 5, 'Рубль'),
(18, 5, 'Рубль'),
(19, 6, 'Тенге'),
(20, 6, 'Тенге'),
(21, 7, 'Доллар');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `input_operation`
--
ALTER TABLE `input_operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_score` (`id_score`);

--
-- Индексы таблицы `output_operation`
--
ALTER TABLE `output_operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_score` (`id_score`);

--
-- Индексы таблицы `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `input_operation`
--
ALTER TABLE `input_operation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `output_operation`
--
ALTER TABLE `output_operation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `score`
--
ALTER TABLE `score`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `input_operation`
--
ALTER TABLE `input_operation`
  ADD CONSTRAINT `input_operation_ibfk_1` FOREIGN KEY (`id_score`) REFERENCES `score` (`id`);

--
-- Ограничения внешнего ключа таблицы `output_operation`
--
ALTER TABLE `output_operation`
  ADD CONSTRAINT `output_operation_ibfk_1` FOREIGN KEY (`id_score`) REFERENCES `score` (`id`);

--
-- Ограничения внешнего ключа таблицы `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`);
COMMIT;
