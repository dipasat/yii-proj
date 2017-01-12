-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 12 2017 г., 05:03
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `workout`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_ro` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` int(255) NOT NULL,
  `date` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title_ro`, `title_ru`, `title_en`, `date`, `status`) VALUES
(1, 'dfg', 'dfg', 0, 1484224863, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `title_ro` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `description_ro` varchar(255) NOT NULL,
  `description_ru` varchar(255) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `text_ro` text NOT NULL,
  `text_ru` text NOT NULL,
  `text_en` text NOT NULL,
  `date` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `cat_id`, `subcat_id`, `title_ro`, `title_ru`, `title_en`, `meta_key`, `meta_desc`, `description_ro`, `description_ru`, `description_en`, `text_ro`, `text_ru`, `text_en`, `date`, `status`) VALUES
(1, 1, 1, 'uio', 'uiop', 'lkj;', 'jkl', 'jkljkl', 'jkljkl', 'jkl', 'jkljkl', '<p>\r\n	ljlljkljkl</p>\r\n', '<p>\r\n	jkljkll</p>\r\n', '<p>\r\n	jkljkl</p>\r\n', 1484225880, '1'),
(2, 1, 1, 'cvcv', 'cvcv', 'cvbcvb', 'cvb', 'cvb', 'cvb', 'cvb', 'cvb', '<p>\r\n	cvbcvbcvb</p>\r\n', '<p>\r\n	vbcvbcvbcvb</p>\r\n', '<p>\r\n	cvbcvb</p>\r\n', 1484225947, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_ro` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `title_ro`, `title_ru`, `title_en`, `date`, `status`) VALUES
(1, 3, 'fgh', 'fgh', 'gjjk', 1484225438, '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
