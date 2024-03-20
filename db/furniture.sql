-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2024 г., 16:45
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `furniture`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contracts`
--

CREATE TABLE `contracts` (
  `id` smallint NOT NULL,
  `customer_id` smallint DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `contract_completion_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `contracts`
--

INSERT INTO `contracts` (`id`, `customer_id`, `contract_date`, `contract_completion_date`, `is_deleted`) VALUES
(1, 1, '2023-06-05', '2023-07-05', 0),
(2, 2, '2023-06-10', '2023-07-10', 0),
(3, 3, '2023-05-20', '2023-06-20', 0),
(4, 4, '2022-11-15', '2022-12-15', 0),
(5, 5, '2022-10-20', '2022-11-20', 0),
(6, 1, '2022-09-25', '2022-10-25', 0),
(7, 2, '2022-08-30', '2022-09-30', 0),
(8, 3, '2022-07-05', '2022-08-05', 0),
(9, 6, '2010-07-07', '2010-09-07', 1),
(10, 10, '2012-08-05', '2012-09-05', 1),
(11, 9, '2021-09-01', '2021-09-01', 1),
(12, 9, '2022-08-05', '2022-08-05', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `id` smallint NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_address` varchar(40) DEFAULT NULL,
  `customer_phone` varchar(25) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_address`, `customer_phone`, `is_deleted`) VALUES
(1, 'Ivanov Ivan', '123 Main St', '+7 (123) 456-7890', 0),
(2, 'Petrov Alexey', '5 Lenin St', '+7 (987) 654-3210', 0),
(3, 'Sidorova Elena', '10 Gagarin St', '+7 (111) 222-3333', 0),
(4, 'Kuznetsov Sergey', '15 Lenin St', '+7 (777) 888-9999', 0),
(5, 'Ivanova Maria', '25 Gagarin St', '+7 (555) 444-3333', 0),
(6, 'Smirnov Pavel', '30 Pushkin St', '+7 (222) 333-4444', 0),
(7, 'Fedorova Olga', '8 Tchaikovsky St', '+7 (999) 888-7777', 0),
(8, 'Mikhailov Dmitry', '2 Mayakovsky St', '+7 (111) 222-3333', 0),
(9, 'Naumov Vladimir', 'DSTU', '+7 (800) 555-3535', 1),
(10, 'Naumov Vladimir', 'Gagarina square 1', '+7 (800) 555-3535', 0),
(11, '1234', '1234', '1235', 1),
(12, '123', '123', '123', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `furniture_models`
--

CREATE TABLE `furniture_models` (
  `id` smallint NOT NULL,
  `furniture_name` varchar(20) DEFAULT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `model_characteristics` varchar(50) DEFAULT NULL,
  `model_price` mediumint DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `furniture_models`
--

INSERT INTO `furniture_models` (`id`, `furniture_name`, `model_name`, `model_characteristics`, `model_price`, `is_deleted`) VALUES
(1, 'Computer Chair', 'Model 1', 'Material: Leather', 50000, 0),
(2, 'Computer Chair', 'Model 2', 'Material: Leather', 60000, 0),
(3, 'Table', 'Model 3', 'Material: Wood', 35000, 0),
(4, 'Sofa', 'Model 4', 'Material: Fabric', 70000, 0),
(5, 'Cabinet', 'Model 5', 'Material: Wood', 45000, 0),
(6, 'Chair', 'Model 6', 'Material: Metal', 20000, 0),
(7, 'Computer Chair', 'Model 7', 'Material: Leather', 55000, 0),
(8, 'Table', 'Model 8', 'Material: Glass', 40000, 0),
(9, 'Sofa', 'Model 9', 'Material: Leather', 80000, 0),
(10, 'Cabinet', 'Model 10', 'Material: Wood', 60000, 0),
(11, 'Sofa', 'Model 11', 'Material: Fabric', 75000, 0),
(12, 'Table', 'Model 12', 'Material: Wood', 42000, 0),
(13, 'Chair', 'Model 13', 'Material: Plastic', 15000, 0),
(14, 'Cabinet', 'Model 14', 'Material: Glass', 50000, 0),
(15, 'Computer Chair', 'Model 15', 'Material: Leather', 58000, 0),
(16, 'Table', 'Model 16', 'Material: Metal', 30000, 0),
(17, 'Sofa', 'Model 17', 'Material: Leather', 85000, 0),
(18, 'Chair', 'Model 18', 'Material: Wood', 22000, 0),
(19, 'Cabinet', 'Model 19', 'Material: Wood', 48000, 0),
(20, 'Computer Chair', 'Model 20', 'Material: Leather', 62000, 0),
(23, 'Bed', 'Model 21', 'Material: Wood', 20000, 1),
(24, '123', '123', '123', 123, 1),
(25, 'Bed', 'Model 21', 'Material: Wood', 1337, 0),
(26, '123', '123', '123', 123, 1),
(27, '321', '321', '321', 321, 1),
(28, '321', '321', '321', 321, 1),
(29, '321', '321', '321', 321, 1),
(30, '321', '321', '321', 321, 1),
(31, '321', '321', '321', 321, 1),
(32, '321', '321', '321', 321, 1),
(33, '321', '321', '321', 321, 1),
(34, '1234', '1234', '1234', 1234, 1),
(35, '123', '123', '123', 123, 1);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `report_furniture_sales`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `report_furniture_sales` (
);

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `id` smallint NOT NULL,
  `contract_id` smallint DEFAULT NULL,
  `furniture_model_id` smallint DEFAULT NULL,
  `quantity` smallint DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`id`, `contract_id`, `furniture_model_id`, `quantity`, `is_deleted`) VALUES
(1, 1, 1, 2, 0),
(2, 1, 3, 1, 0),
(3, 2, 2, 1, 0),
(4, 3, 4, 1, 0),
(5, 3, 5, 2, 0),
(6, 4, 9, 2, 0),
(7, 5, 10, 1, 0),
(8, 6, 16, 4, 0),
(9, 7, 15, 2, 0),
(10, 8, 19, 3, 0),
(11, 7, 12, 1, 0),
(12, 6, 13, 5, 0),
(13, 5, 18, 2, 0),
(14, 4, 14, 1, 0),
(15, 5, 11, 3, 0),
(16, 8, 20, 1, 1),
(17, 7, 17, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` smallint NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `accessright` varchar(25) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `accessright`, `is_deleted`) VALUES
(3, 'admin@mail.ru', '$2y$10$huNVOumgKGmQSmgp8JCqoO706BjPvQe9eUJ/.aIr548qVb0UN3VFi', 'admin', 0),
(4, 'operator@gmail.com', '$2y$10$ifefWcbiXuEizhEn4jgP7OnQk8Iu4Wct.twMpqR1FfNFSHIOg085W', 'operator', 0),
(5, 'guest@mail.ru', '$2y$10$VeR2TJBftnLj0LHWWuN.ZuLCSS5CeN1ycChzu9b1gGIjBq6Y69eWS', 'guest', 0);

-- --------------------------------------------------------

--
-- Структура для представления `report_furniture_sales`
--
DROP TABLE IF EXISTS `report_furniture_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_furniture_sales`  AS SELECT `contracts`.`id` AS `Contract Number`, `furniture_model`.`furniture_name` AS `Furniture Name`, `furniture_model`.`model_name` AS `Model`, `sales`.`quantity` AS `Quantity`, `furniture_model`.`model_price` AS `Model Price`, (`furniture_model`.`model_price` * `sales`.`quantity`) AS `Total Cost` FROM ((`contracts` join `sales` on((`contracts`.`id` = `sales`.`contract_id`))) join `furniture_model` on((`sales`.`furniture_model_id` = `furniture_model`.`id`)))  ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `furniture_models`
--
ALTER TABLE `furniture_models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `furniture_model_id` (`furniture_model_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `furniture_models`
--
ALTER TABLE `furniture_models`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Ограничения внешнего ключа таблицы `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`furniture_model_id`) REFERENCES `furniture_models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
