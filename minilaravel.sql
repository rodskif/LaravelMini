-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 03 2017 г., 01:36
-- Версия сервера: 5.5.53
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `minilaravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(789) NOT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `meta_desc` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `desc`, `alias`, `img`, `keywords`, `meta_desc`, `updated_at`, `created_at`) VALUES
(1, 'The first article', 'Lorem ipsum dolor sit amet, vel ei integre pertinacia, ridens veritus mea ad. Eu has sale minim paulo, timeam epicurei inciderint cu cum. Wisi sonet ne eos. An tation option sit.\r\n\r\nNumquam euismod detraxit ne nam, nec accusam omnesque quaerendum no. Mutat sapientem dignissim qui no, legendos abhorreant vituperatoribus ei pro, cibo oporteat vis in. Eos utinam denique propriae id. Mea ea magna elitr, pro cu wisi aliquip placerat. Eum quando reformidans in, ex munere antiopam pro, vel euripidis scribentur id. Deseruisse reformidans dissentiunt in mei, ea possit inciderint mediocritatem eam. Id choro inermis duo.\r\n\r\nTe his sanctus delenit dissentias, ut eos putant sensibus vituperata, pri fabulas salutatus ad. Per putant dignissim dissentiunt no, et cum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean massa elit, malesuada ac consequat lobortis, pulvinar. ', 'art1', '', 'ключи', 'Краткое описание', '0000-00-00', '0000-00-00'),
(2, 'Second article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a ipsum fermentum, fringilla quam sed, blandit mi. Fusce.\r\n\r\nNumquam euismod detraxit ne nam, nec accusam omnesque quaerendum no. Mutat sapientem dignissim qui no, legendos abhorreant vituperatoribus ei pro, cibo oporteat vis in. Eos utinam denique propriae id. Mea ea magna elitr, pro cu wisi aliquip placerat. Eum quando reformidans in, ex munere antiopam pro, vel euripidis scribentur id. Deseruisse reformidans dissentiunt in mei, ea possit inciderint mediocritatem eam. Id choro inermis duo.\r\n\r\nTe his sanctus delenit dissentias, ut eos putant sensibus vituperata, pri fabulas salutatus ad. Per putant dignissim dissentiunt no, et cum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a ipsum fermentum, fringilla quam sed, blandit mi. Fusce. ', 'art2', '', '', '', '0000-00-00', '0000-00-00'),
(3, 'Third article', 'Lorem ipsum dolor sit amet, id verear erroribus nam, eam te vitae aperiri eloquentiam. Ad cibo error mel. Quas platonem at pro, numquam principes ea sed. Dissentiet liberavisse vituperatoribus nam id. Cibo aliquam hendrerit te pro, et vel dicant reformidans, vix cu suas repudiandae. Homero feugiat adolescens pro in, mel ea dicit postulant contentiones, tota brute dicant et vis.\n\nDuis latine et mel. Ad affert delenit propriae cum, ad ullum maiorum per, ut tritani feugiat pri. Vel ne utamur admodum. Sea in eleifend praesent reformidans. Eloquentiam reformidans mei at, harum voluptatum ex ius.\n\nEt liber nonumy iriure qui, verterem principes cu cum, eos lucilius dissentiunt ad. Te modo iisque consetetur vis, saepe labores te his, qui.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam imperdiet venenatis magna vel gravida. Sed lectus in eleifend praesent reformidans.', 'art3', '', '', '', '0000-00-00', '0000-00-00'),
(4, 'A new method of development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit purus, pretium vitae pharetra a, vulputate ut sem. Nulla id leo eget nisi pharetra sagittis. Mauris vel nisi erat. Mauris ac libero bibendum mi ultricies aliquam et sagittis lectus. Donec dictum semper justo ut ultrices. Fusce sed semper justo. Sed scelerisque nulla in urna sagittis, at feugiat massa tincidunt. Fusce in nisl faucibus, fermentum mi id, congue est. Donec non tincidunt odio. Fusce lobortis ultricies lorem, in blandit purus molestie nec. Vestibulum condimentum lacus eu nulla pharetra, eget.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit purus, pretium vitae pharetra a, vulputate ut sem. Nulla id leo eget nisi pharetra sagittis. Mauris vel nisi erat. Mauris ac libero bibendum mi ultricies aliquam et sagittis lectus.', 'art4', NULL, NULL, NULL, '2017-10-02', '2017-10-02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
