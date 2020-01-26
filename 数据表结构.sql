-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-01-26 15:41:57
-- 服务器版本： 5.6.44-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jx2280249147`
--

-- --------------------------------------------------------

--
-- 表的结构 `jxdata`
--

CREATE TABLE IF NOT EXISTS `jxdata` (
  `id` int(8) NOT NULL,
  `jx_name` varchar(255) DEFAULT NULL,
  `jx_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jxdata`
--

INSERT INTO `jxdata` (`id`, `jx_name`, `jx_value`) VALUES
(1, '接口1', 'https://jiexi.380k.com/?url='),
(2, '接口2', 'https://jiexi.380k.com/?url='),
(3, '接口3', 'https://jiexi.380k.com/?url='),
(4, '接口4', ''),
(5, '接口5', '');

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `option_id` int(8) NOT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_value` text,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`, `notes`) VALUES
(1, 'sitename', '安柯影视解析网', '网站名字'),
(2, 'siteurl', 'http://tom.anke6.cn/', '网址'),
(3, 'describe', '本站为广大网友提供优酷VIP解析，爱奇艺VIP解析，腾讯VIP解析，乐视VIP解析，芒果VIP解析等解析服务，让你省去购买视频VIP费用，欢迎大家收藏本站，并将它介绍给您的朋友！', '网站描述'),
(4, 'keyword', '安柯解析网,安柯视频,影视解析,免费看电影', '网站关键字'),
(5, 'copyright', '安柯工作室', '版权说明'),
(6, 'icp', '浙ICP备18024279号-2', 'ICP备案号'),
(7, 'cnzz', 'test1111', '统计信息');

-- --------------------------------------------------------

--
-- 表的结构 `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(4) NOT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `title_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `titles`
--

INSERT INTO `titles` (`id`, `title_name`, `title_url`) VALUES
(1, '官方博客', 'http://www.jarod8.cn/'),
(2, '', ''),
(3, '', ''),
(4, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL,
  `user_login` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_qq` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `user_login`, `user_pass`, `user_name`, `user_qq`) VALUES
(1, '2280249147', '992132575', 'jarod', '4776246');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jxdata`
--
ALTER TABLE `jxdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`) USING BTREE;

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
