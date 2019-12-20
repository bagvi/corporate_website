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
-- Структура таблицы `gb_posts`
--

CREATE TABLE IF NOT EXISTS `gb_posts` (
  `PostID` int(11) NOT NULL auto_increment,
  `Header` text NOT NULL,
  `Name` text NOT NULL,
  `Date` datetime NOT NULL,
  `Post` text NOT NULL,
  `userIP` text NOT NULL,
  PRIMARY KEY  (`PostID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gb_posts`
--

INSERT INTO `gb_posts` (`PostID`, `Header`, `Name`, `Date`, `Post`, `userIP`) VALUES
(1, 'Отзыв', 'Anna', '2019-11-15 13:53:23', 'Благодарю за качественную организацию мероприятия', '100.255.210.204'),
(2, 'Предложение', 'Макс', '2019-11-29 08:31:39', 'Предлагаю организовать ещё один корпоратив', '213.215.132.241');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
