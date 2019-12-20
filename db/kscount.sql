-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net

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
-- Структура таблицы `kscount`
--

CREATE TABLE IF NOT EXISTS `kscount` (
  `PostID` int(11) NOT NULL auto_increment,
  `usip` char(30) default NULL,
  `cookie` char(10) default NULL,
  `referer` text,
  `screen` char(30) default NULL,
  `java` char(10) default NULL,
  `browser` char(255) default NULL,
  `page` char(255) default NULL,
  `date` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kscount`
--

INSERT INTO `kscount` (`usip`, `cookie`, `referer`, `screen`, `java`, `browser`, `page`, `date`) VALUES
('1', '110.125.210.154', '0', '', '1920x1080x24', 'false', 'Netscape5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '/site/', '2019-11-25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
