-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Версия сервера: 5.0.67
-- Версия PHP: 5.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `corp_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `poll_ip`
--

CREATE TABLE IF NOT EXISTS `poll_ip` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `poll_id` int(10) unsigned NOT NULL,
  `ip` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `poll_ip`
--

INSERT INTO `poll_ip` (`id`, `poll_id`, `ip`, `date`) VALUES
(1, 1, '10.25.135.71', '2019-11-26'),
(2, 1, '10.25.210.55', '2019-11-08'),
(3, 1, '10.25.210.54', '2019-10-29'),
(4, 1, '10.25.135.18', '2019-11-26'),
(5, 1, '10.25.138.122', '2019-11-27'),
(6, 1, '10.25.133.216', '2019-11-27'),
(7, 1, '10.25.133.213', '2019-11-27'),
(8, 1, '10.25.198.183', '2019-11-29');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
