-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.105
-- Время создания: Фев 11 2021 г., 17:44
-- Версия сервера: 5.7.31-34
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uskov_project3_2020_2`
--
CREATE DATABASE IF NOT EXISTS `uskov_project3_2020_2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `uskov_project3_2020_2`;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_cat` varchar(50) NOT NULL,
  `parent` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name_cat`, `parent`) VALUES
(1, 'Верхняя одежда', NULL),
(2, 'Одежда', NULL),
(3, 'Аксессуары', NULL),
(4, 'Брюки', 2),
(5, 'Джинсы', 2),
(6, 'Рубашки', 2),
(7, 'Худи', 2),
(8, 'Футболки', 2),
(9, 'Анораки', 1),
(10, 'Бомберы', 1),
(11, 'Куртки', 1),
(12, 'Поясные сумки', 3),
(13, 'Рюкзаки', 3),
(14, 'Головные уборы', 3),
(15, 'Пуховики', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `good_id` int(11) UNSIGNED NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `name_good` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type_good` varchar(255) NOT NULL,
  `size` int(11) UNSIGNED NOT NULL,
  `unit_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `good_marker_url` varchar(255) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `sale` tinyint(1) NOT NULL,
  `color` varchar(25) DEFAULT NULL,
  `category` int(11) UNSIGNED NOT NULL,
  `sub_category` int(11) UNSIGNED NOT NULL,
  `img_url_mini` varchar(255) NOT NULL,
  `name_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`good_id`, `img_url`, `name_good`, `article`, `description`, `type_good`, `size`, `unit_price`, `stock_amount`, `good_marker_url`, `new`, `top`, `sale`, `color`, `category`, `sub_category`, `img_url_mini`, `name_size`) VALUES
(1, 'images/catalogue_images/1.png', 'Худи BIEGE', 'Худи BIEGE', '\r\nХуди мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи ', 1, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/1.png', 'XS'),
(2, 'images/catalogue_images/1.png', 'Худи BIEGE', 'Худи BIEGE', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 2, 4400, 11, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/1.png', 'S'),
(3, 'images/catalogue_images/1.png', 'Худи BIEGE', 'Худи BIEGE', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 3, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/1.png', 'M'),
(4, 'images/catalogue_images/1.png', 'Худи BIEGE ', 'Худи BIEGE ', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 4, 4400, 12, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/1.png', 'L'),
(5, 'images/catalogue_images/1.png', 'Худи BIEGE', 'Худи BIEGE', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 5, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/1.png', 'XL'),
(6, 'images/catalogue_images/2.png', 'Худи GRAY', 'Худи GRAY', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 1, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/2.png', 'XS'),
(7, 'images/catalogue_images/2.png', 'Худи GRAY', 'Худи GRAY', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 2, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/2.png', 'S'),
(8, 'images/catalogue_images/2.png', 'Худи GRAY', 'Худи GRAY', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 3, 4400, 15, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/2.png', 'M'),
(9, 'images/catalogue_images/2.png', 'Худи GRAY', 'Худи GRAY', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 4, 4400, 14, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/2.png', 'L'),
(10, 'images/catalogue_images/2.png', 'Худи GRAY', 'Худи GRAY', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи ', 5, 4400, 10, '', 0, 0, 0, NULL, 2, 7, 'images/mini_images/2.png', 'XL'),
(11, 'images/catalogue_images/3.png', 'Худи DULL', 'Худи DULL', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 1, 4400, 11, '', 1, 0, 0, NULL, 2, 7, 'images/mini_images/3.png', 'XS'),
(12, 'images/catalogue_images/3.png', 'Худи DULL', 'Худи DULL', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 2, 4400, 12, '', 1, 0, 0, NULL, 2, 7, 'images/mini_images/3.png', 'S'),
(13, 'images/catalogue_images/3.png', 'Худи DULL', 'Худи DULL', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 3, 4400, 15, '', 1, 0, 0, NULL, 2, 7, 'images/mini_images/3.png', 'M'),
(14, 'images/catalogue_images/3.png', 'Худи DULL', 'Худи DULL', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи', 4, 4400, 11, '', 1, 0, 0, NULL, 2, 7, 'images/mini_images/3.png', 'L'),
(15, 'images/catalogue_images/3.png', 'Худи DULL', 'Худи DULL', 'Худи мужской от модного бренда, Выполненное из мягкого хлопкового футера с начесом.  Комфортная и удобная одежда.', 'Худи ', 5, 4400, 10, '', 1, 0, 0, NULL, 2, 7, 'images/mini_images/3.png', 'XL'),
(16, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка', 1, 1000, 20, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'XS'),
(17, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 0, 1000, 12, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'S'),
(19, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 3, 1000, 14, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'M'),
(20, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 4, 1000, 14, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'L'),
(21, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 5, 1000, 14, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'XL'),
(22, 'images/catalogue_images/5.png', 'Рубашка PINK LINE', 'Рубашка PINK LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 1, 1000, 14, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/5.png', 'XS'),
(23, 'images/catalogue_images/5.png', 'Рубашка PINK LINE', 'Рубашка PINK LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 2, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/5.png', 'S'),
(24, 'images/catalogue_images/5.png', 'Рубашка PINK LINE', 'Рубашка PINK LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 3, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/5.png', 'M'),
(25, 'images/catalogue_images/5.png', 'Рубашка PINK LINE', 'Рубашка PINK LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 4, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/5.png', 'L'),
(26, 'images/catalogue_images/5.png', 'Рубашка PINK LINE', 'Рубашка PINK LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 5, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/5.png', 'XL'),
(27, 'images/catalogue_images/6.png', 'Рубашка BIEGE LINE', 'Рубашка BIEGE LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 1, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/6.png', 'XS'),
(28, 'images/catalogue_images/6.png', 'Рубашка BIEGE LINE', 'Рубашка BIEGE LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 2, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/6.png', 'S'),
(29, 'images/catalogue_images/6.png', 'Рубашка BIEGE LINE', 'Рубашка BIEGE LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 3, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/6.png', 'M'),
(30, 'images/catalogue_images/6.png', 'Рубашка BIEGE LINE', 'Рубашка BIEGE LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 4, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/6.png', 'L'),
(31, 'images/catalogue_images/6.png', 'Рубашка BIEGE LINE', 'Рубашка BIEGE LINE', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 5, 1000, 10, '', 0, 0, 0, NULL, 2, 6, 'images/mini_images/6.png', 'XL'),
(32, 'images/catalogue_images/7.png', 'Футболка OH NO!', 'Футболка OH NO!', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 1, 1200, 10, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/7.png', 'XS'),
(33, 'images/catalogue_images/7.png', 'Футболка OH NO!', 'Футболка OH NO!', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 2, 1200, 10, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/7.png', 'S'),
(34, 'images/catalogue_images/7.png', 'Футболка OH NO!', 'Футболка OH NO!', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 3, 1200, 10, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/7.png', 'M'),
(35, 'images/catalogue_images/7.png', 'Футболка OH NO!', 'Футболка OH NO!', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 4, 1200, 21, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/7.png', 'L'),
(36, 'images/catalogue_images/7.png', 'Футболка OH NO!', 'Футболка OH NO!', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 5, 1200, 21, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/7.png', 'XL'),
(37, 'images/catalogue_images/8.png', 'Футболка GRID', 'Футболка GRID', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 1, 1200, 21, '', 0, 1, 0, NULL, 2, 5, 'images/mini_images/8.png', 'XS'),
(38, 'images/catalogue_images/8.png', 'Футболка GRID', 'Футболка GRID', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 2, 1200, 16, '', 0, 1, 0, NULL, 2, 5, 'images/mini_images/8.png', 'S'),
(39, 'images/catalogue_images/8.png', 'Футболка GRID', 'Футболка GRID', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 3, 1200, 16, '', 0, 1, 0, NULL, 2, 0, 'images/mini_images/8.png', 'M'),
(40, 'images/catalogue_images/8.png', 'Футболка GRID', 'Футболка GRID', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 4, 1200, 16, '', 0, 1, 0, NULL, 2, 0, 'images/mini_images/8.png', 'L'),
(41, 'images/catalogue_images/8.png', 'Футболка GRID', 'Футболка GRID', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 5, 1200, 16, '', 0, 1, 0, NULL, 2, 0, 'images/mini_images/8.png', 'XL'),
(42, 'images/catalogue_images/9.png', 'Футболка BLACK PHO', 'Футболка BLACK PHO', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 1, 1200, 15, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/9.png', 'XS'),
(43, 'images/catalogue_images/9.png', 'Футболка BLACK PHO', 'Футболка BLACK PHO', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 2, 1200, 15, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/9.png', 'S'),
(44, 'images/catalogue_images/9.png', 'Футболка BLACK PHO', 'Футболка BLACK PHO', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 3, 1200, 15, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/9.png', 'M'),
(45, 'images/catalogue_images/9.png', 'Футболка BLACK PHO', 'Футболка BLACK PHO', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 4, 1200, 15, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/9.png', 'L'),
(46, 'images/catalogue_images/9.png', 'Футболка BLACK PHO', 'Футболка BLACK PHO', ' Модная и стильная футболка от известного бренда, пользуется большим спросом.', 'Футболка', 5, 1200, 15, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/9.png', 'XL'),
(47, 'images/catalogue_images/10.png', 'Джинсы BANANA', 'Джинсы BANANA', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 1, 2000, 10, '', 1, 0, 0, NULL, 2, 5, 'images/mini_images/10.png', 'XS'),
(48, 'images/catalogue_images/10.png', 'Джинсы BANANA', 'Джинсы BANANA', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 2, 2000, 10, '', 1, 0, 0, NULL, 2, 5, 'images/mini_images/10.png', 'S'),
(49, 'images/catalogue_images/10.png', 'Джинсы BANANA', 'Джинсы BANANA', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 3, 2000, 10, '', 1, 0, 0, NULL, 2, 5, 'images/mini_images/10.png', 'M'),
(50, 'images/catalogue_images/10.png', 'Джинсы BANANA', 'Джинсы BANANA', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 4, 2000, 10, '', 1, 0, 0, NULL, 2, 5, 'images/mini_images/10.png', 'L'),
(51, 'images/catalogue_images/10.png', 'Джинсы BANANA', 'Джинсы BANANA', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 5, 2000, 10, '', 1, 0, 0, NULL, 2, 5, 'images/mini_images/10.png', 'XL'),
(52, 'images/catalogue_images/11.png', 'Джинсы BLUE', 'Джинсы BLUE', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 1, 2000, 18, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/11.png', 'XS'),
(53, 'images/catalogue_images/11.png', 'Джинсы BLUE', 'Джинсы BLUE', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 2, 2000, 18, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/11.png', 'S'),
(54, 'images/catalogue_images/11.png', 'Джинсы BLUE', 'Джинсы BLUE', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 3, 2000, 18, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/11.png', 'M'),
(55, 'images/catalogue_images/11.png', 'Джинсы BLUE', 'Джинсы BLUE', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 4, 2000, 18, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/11.png', 'L'),
(56, 'images/catalogue_images/11.png', 'Джинсы BLUE', 'Джинсы BLUE', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 5, 2000, 18, '', 0, 0, 1, NULL, 2, 5, 'images/mini_images/11.png', 'XL'),
(57, 'images/catalogue_images/12.png', 'Джинсы DIRECT', 'Джинсы DIRECT', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 1, 2000, 24, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/12.png', 'XS'),
(58, 'images/catalogue_images/12.png', 'Джинсы DIRECT', 'Джинсы DIRECT', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 2, 2000, 24, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/12.png', 'S'),
(59, 'images/catalogue_images/12.png', 'Джинсы DIRECT', 'Джинсы DIRECT', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 3, 2000, 24, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/12.png', 'M'),
(60, 'images/catalogue_images/12.png', 'Джинсы DIRECT', 'Джинсы DIRECT', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 4, 2000, 24, '', 0, 0, 0, NULL, 2, 0, 'images/mini_images/12.png', 'L'),
(61, 'images/catalogue_images/12.png', 'Джинсы DIRECT', 'Джинсы DIRECT', 'Элегантные и удобные мужские джинсы.', 'Джинсы', 5, 2000, 24, '', 0, 0, 0, NULL, 2, 5, 'images/mini_images/12.png', 'XL'),
(62, 'images/catalogue_images/13.png', 'Брюки BLUE PIE', 'Брюки BLUE PIE', 'Качественные и модные мужские брюки.', 'Брюки', 1, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/13.png', 'XS'),
(63, 'images/catalogue_images/13.png', 'Брюки BLUE PIE', 'Брюки BLUE PIE', 'Качественные и модные мужские брюки.', 'Брюки', 2, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/13.png', 'S'),
(64, 'images/catalogue_images/13.png', 'Брюки BLUE PIE', 'Брюки BLUE PIE', 'Качественные и модные мужские брюки.', 'Брюки', 3, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/13.png', 'M'),
(65, 'images/catalogue_images/13.png', 'Брюки BLUE PIE', 'Брюки BLUE PIE', 'Качественные и модные мужские брюки.', 'Брюки', 4, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/13.png', 'L'),
(66, 'images/catalogue_images/13.png', 'Брюки BLUE PIE', 'Брюки BLUE PIE', 'Качественные и модные мужские брюки.', 'Брюки', 5, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/13.png', 'XL'),
(67, 'images/catalogue_images/14.png', 'Брюки BIEGE VELVET', 'Брюки BIEGE VELVET', 'Качественные и модные мужские брюки.', 'Брюки', 1, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/14.png', 'XS'),
(68, 'images/catalogue_images/14.png', 'Брюки BIEGE VELVET', 'Брюки BIEGE VELVET', 'Качественные и модные мужские брюки.', 'Брюки', 2, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/14.png', 'S'),
(69, 'images/catalogue_images/14.png', 'Брюки BIEGE VELVET', 'Брюки BIEGE VELVET', 'Качественные и модные мужские брюки.', 'Брюки', 3, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/14.png', 'M'),
(70, 'images/catalogue_images/14.png', 'Брюки BIEGE VELVET', 'Брюки BIEGE VELVET', 'Качественные и модные мужские брюки.', 'Брюки', 4, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/14.png', 'L'),
(71, 'images/catalogue_images/14.png', 'Брюки BIEGE VELVET', 'Брюки BIEGE VELVET', 'Качественные и модные мужские брюки.', 'Брюки', 5, 2100, 35, '', 0, 0, 0, NULL, 2, 4, 'images/mini_images/14.png', 'XL'),
(72, 'images/catalogue_images/15.png', 'Брюки SAND', 'Брюки SAND', 'Качественные и модные мужские брюки.', 'Брюки', 1, 2100, 35, '', 0, 0, 1, NULL, 2, 4, 'images/mini_images/15.png', 'XS'),
(73, 'images/catalogue_images/15.png', 'Брюки SAND', 'Брюки SAND', 'Качественные и модные мужские брюки.', 'Брюки', 2, 2100, 35, '', 0, 0, 1, NULL, 2, 4, 'images/mini_images/15.png', 'S'),
(74, 'images/catalogue_images/15.png', 'Брюки SAND', 'Брюки SAND', 'Качественные и модные мужские брюки.', 'Брюки', 3, 2100, 35, '', 0, 0, 1, NULL, 2, 4, 'images/mini_images/15.png', 'M'),
(75, 'images/catalogue_images/15.png', 'Брюки SAND', 'Брюки SAND', 'Качественные и модные мужские брюки.', 'Брюки', 4, 2100, 35, '', 0, 0, 1, NULL, 2, 4, 'images/mini_images/15.png', 'L'),
(76, 'images/catalogue_images/15.png', 'Брюки SAND', 'Брюки SAND', 'Качественные и модные мужские брюки.', 'Брюки', 5, 2100, 35, '', 0, 0, 1, NULL, 2, 4, 'images/mini_images/15.png', 'XL'),
(77, 'images/catalogue_images/16.png', 'Куртка EKOSTYLE', 'Куртка EKOSTYLE', 'Отлично и функциональная модель этой куртки защитит вас от любой непогоды.', 'Куртка', 1, 7000, 27, '', 0, 1, 0, NULL, 1, 11, 'images/mini_images/16.png', 'XS'),
(78, 'images/catalogue_images/16.png', 'Куртка EKOSTYLE', 'Куртка EKOSTYLE', 'Отлично и функциональная модель этой куртки защитит вас от любой непогоды.', 'Куртка', 2, 7000, 27, '', 0, 1, 0, NULL, 1, 11, 'images/mini_images/16.png', 'S'),
(79, 'images/catalogue_images/16.png', 'Куртка EKOSTYLE', 'Куртка EKOSTYLE', 'Отлично и функциональная модель этой куртки защитит вас от любой непогоды.', 'Куртка', 3, 7000, 27, '', 0, 1, 0, NULL, 1, 11, 'images/mini_images/16.png', 'M'),
(80, 'images/catalogue_images/16.png', 'Куртка EKOSTYLE', 'Куртка EKOSTYLE', 'Отлично и функциональная модель этой куртки защитит вас от любой непогоды.', 'Куртка', 4, 7000, 27, '', 0, 1, 0, NULL, 1, 11, 'images/mini_images/16.png', 'L'),
(81, 'images/catalogue_images/16.png', 'Куртка EKOSTYLE', 'Куртка EKOSTYLE', 'Отлично и функциональная модель этой куртки защитит вас от любой непогоды.', 'Куртка', 5, 7000, 27, '', 0, 1, 0, NULL, 1, 11, 'images/mini_images/16.png', 'XL'),
(82, 'images/catalogue_images/17.png', 'Пуховик BAD BLUE', 'Пуховик BAD BLUE', 'Стильный и легкий пуховик с натуральным наполнителем.', 'Пуховик', 1, 6000, 30, '', 0, 0, 0, NULL, 1, 15, 'images/mini_images/17.png', 'XS'),
(83, 'images/catalogue_images/17.png', 'Пуховик BAD BLUE', 'Пуховик BAD BLUE', 'Стильный и легкий пуховик с натуральным наполнителем.', 'Пуховик', 2, 6000, 30, '', 0, 0, 0, NULL, 1, 15, 'images/mini_images/17.png', 'S'),
(84, 'images/catalogue_images/17.png', 'Пуховик BAD BLUE', 'Пуховик BAD BLUE', 'Стильный и легкий пуховик с натуральным наполнителем.', 'Пуховик', 3, 6000, 30, '', 0, 0, 0, NULL, 1, 15, 'images/mini_images/17.png', 'M'),
(85, 'images/catalogue_images/17.png', 'Пуховик BAD BLUE', 'Пуховик BAD BLUE', 'Стильный и легкий пуховик с натуральным наполнителем.', 'Пуховик', 4, 6000, 30, '', 0, 0, 0, NULL, 1, 15, 'images/mini_images/17.png', 'L'),
(86, 'images/catalogue_images/17.png', 'Пуховик BAD BLUE', 'Пуховик BAD BLUE', 'Стильный и легкий пуховик с натуральным наполнителем.', 'Пуховик', 5, 6000, 30, '', 0, 0, 0, NULL, 1, 15, 'images/mini_images/17.png', 'XL'),
(87, 'images/catalogue_images/18.png', 'Куртка-Бомбер CRUISE', 'Куртка-Бомбер CRUISE', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 1, 8000, 36, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/18.png', 'XS'),
(88, 'images/catalogue_images/18.png', 'Куртка-Бомбер CRUISE', 'Куртка-Бомбер CRUISE', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 2, 8000, 36, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/18.png', 'S'),
(89, 'images/catalogue_images/18.png', 'Куртка-Бомбер CRUISE', 'Куртка-Бомбер CRUISE', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 3, 8000, 36, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/18.png', 'M'),
(90, 'images/catalogue_images/18.png', 'Куртка-Бомбер CRUISE', 'Куртка-Бомбер CRUISE', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 4, 8000, 36, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/18.png', 'L'),
(91, 'images/catalogue_images/18.png', 'Куртка-Бомбер CRUISE', 'Куртка-Бомбер CRUISE', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 5, 8000, 36, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/18.png', 'XL'),
(92, 'images/catalogue_images/19.png', 'Бомбер SUEDE', 'Бомбер SUEDE', 'Модный и стильный мужской Бомбер.', 'Бомбер', 1, 8500, 36, '', 0, 0, 0, NULL, 1, 10, 'images/mini_images/19.png', 'XS'),
(93, 'images/catalogue_images/19.png', 'Бомбер SUEDE', 'Бомбер SUEDE', 'Модный и стильный мужской Бомбер.', 'Бомбер', 2, 8500, 36, '', 0, 0, 0, NULL, 1, 10, 'images/mini_images/19.png', 'S'),
(94, 'images/catalogue_images/19.png', 'Бомбер SUEDE', 'Бомбер SUEDE', 'Модный и стильный мужской Бомбер.', 'Бомбер', 3, 8500, 36, '', 0, 0, 0, NULL, 1, 10, 'images/mini_images/19.png', 'M'),
(95, 'images/catalogue_images/19.png', 'Бомбер SUEDE', 'Бомбер SUEDE', 'Модный и стильный мужской Бомбер.', 'Бомбер', 4, 8500, 36, '', 0, 0, 0, NULL, 1, 10, 'images/mini_images/19.png', 'L'),
(96, 'images/catalogue_images/19.png', 'Бомбер SUEDE', 'Бомбер SUEDE', 'Модный и стильный мужской Бомбер.', 'Бомбер', 5, 8500, 36, '', 0, 0, 0, NULL, 1, 10, 'images/mini_images/19.png', 'XL'),
(97, 'images/catalogue_images/20.png', 'Куртка-Бомбер DIAMOND', 'Куртка-Бомбер DIAMOND', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 1, 8400, 28, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/20.png', 'XS'),
(98, 'images/catalogue_images/20.png', 'Куртка-Бомбер DIAMOND', 'Куртка-Бомбер DIAMOND', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 2, 8400, 28, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/20.png', 'S'),
(99, 'images/catalogue_images/20.png', 'Куртка-Бомбер DIAMOND', 'Куртка-Бомбер DIAMOND', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 3, 8400, 28, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/20.png', 'M'),
(100, 'images/catalogue_images/20.png', 'Куртка-Бомбер DIAMOND', 'Куртка-Бомбер DIAMOND', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 4, 8400, 28, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/20.png', 'L'),
(101, 'images/catalogue_images/20.png', 'Куртка-Бомбер DIAMOND', 'Куртка-Бомбер DIAMOND', 'Модная и стильная мужская Куртка-Бомбер.', 'Куртка-Бомбер', 5, 8400, 28, '', 0, 0, 0, NULL, 1, 11, 'images/mini_images/20.png', 'XL'),
(102, 'images/catalogue_images/21.png', 'Шапка MINT', 'Шапка MINT', ' Шапка имеет плотную вязку, при этом обладает отличной эластичностью. Подойдёт на прохладную осень и тёплую зиму.', 'Шапка', 6, 900, 43, '', 0, 0, 0, NULL, 3, 14, 'images/mini_images/21.png', '	\r\none size'),
(103, 'images/catalogue_images/22.png', 'Шапка BENE', 'Шапка BENE', ' Шапка имеет плотную вязку, при этом обладает отличной эластичностью. Подойдёт на прохладную осень и тёплую зиму.', 'Шапка', 6, 800, 46, '', 0, 0, 0, NULL, 3, 14, 'images/mini_images/22.png', '	\r\none size'),
(104, 'images/catalogue_images/23.png', 'Кепка VELVET', 'Кепка VELVET', 'Лаконичный дизайн модели и универсальный черный цвет позволяют сочетать ее с верхней одеждой практически любого оттенка и кроя.', 'Кепка', 6, 1500, 34, '', 0, 0, 0, NULL, 3, 14, 'images/mini_images/23.png', '	\r\none size'),
(105, 'images/catalogue_images/24.png', 'Кепка UNHAPPY RED', 'Кепка UNHAPPY RED', 'Утеплённые мужские кепи, прекрасно подойдут в холодную погоду и дополнят ваш стильный образ.', 'Кепка', 6, 1600, 34, '', 0, 0, 0, NULL, 3, 14, 'images/mini_images/24.png', '	\r\none size'),
(106, 'images/catalogue_images/25.png', 'Сумка BIG BOY', 'Сумка BIG BOY', 'Небольшая и удобная сумка на пояс.', 'Сумка', 6, 1300, 31, '', 1, 0, 0, NULL, 3, 12, 'images/mini_images/25.png', '	\r\none size'),
(107, 'images/catalogue_images/26.png', 'Сумка VOKRUG', 'Сумка VOKRUG', 'Небольшая и удобная сумка на пояс.', 'Сумка', 6, 1200, 29, '', 0, 0, 0, NULL, 3, 12, 'images/mini_images/26.png', '	\r\none size'),
(108, 'images/catalogue_images/27.png', 'Рюкзак BESTIE', 'Рюкзак BESTIE', 'Вместительный рюкзак отлично подходит как для путешествий, так и для ежедневного использования в городе. ', 'Рюкзак ', 6, 3500, 45, '', 0, 0, 0, NULL, 3, 13, 'images/mini_images/27.png', '	\r\none size'),
(109, 'images/catalogue_images/28.png', 'Рюкзак TRIP', 'Рюкзак TRIP', 'Удобный и стильный рюкзак для повседневного использования', 'Рюкзак ', 6, 3400, 49, '', 0, 0, 0, NULL, 3, 13, 'images/mini_images/28.png', '	\r\none size'),
(110, 'images/catalogue_images/29.png', 'Рюкзак JOB', 'Рюкзак JOB', 'Красивый о объемный мужской рюкзак, идеальное сочетание качества и цены', 'Рюкзак ', 6, 3700, 32, '', 0, 0, 0, NULL, 3, 13, 'images/mini_images/29.png', '	\r\none size'),
(111, 'images/catalogue_images/4.png', 'Рубашка FOREST', 'Рубашка FOREST', 'Модная и стильная рубашка от известного бренда.', 'Рубашка ', 4, 1000, 14, '', 0, 1, 0, NULL, 2, 6, 'images/mini_images/4.png', 'XL');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_orders`
--

CREATE TABLE `goods_orders` (
  `good_id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `discount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `count_goods` varchar(255) NOT NULL,
  `count_good` varchar(255) NOT NULL,
  `sum_order` varchar(255) NOT NULL,
  `date_order` date NOT NULL,
  `discount` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sizes`
--

INSERT INTO `sizes` (`id`, `name_size`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'one size');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`good_id`),
  ADD KEY `sub_category` (`sub_category`),
  ADD KEY `category` (`category`),
  ADD KEY `size` (`size`);

--
-- Индексы таблицы `goods_orders`
--
ALTER TABLE `goods_orders`
  ADD PRIMARY KEY (`good_id`,`order_id`),
  ADD KEY `good_id` (`good_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `id_user` (`user_id`);

--
-- Индексы таблицы `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `good_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `goods_orders`
--
ALTER TABLE `goods_orders`
  ADD CONSTRAINT `goods_orders_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`good_id`),
  ADD CONSTRAINT `goods_orders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
