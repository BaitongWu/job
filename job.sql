-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2020 年 03 月 21 日 18:51
-- 服务器版本: 5.5.53
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `job`
--

-- --------------------------------------------------------

--
-- 表的结构 `jobposting`
--

CREATE TABLE IF NOT EXISTS `jobposting` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) DEFAULT NULL,
  `regions` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `company_Id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `jobposting`
--

INSERT INTO `jobposting` (`Id`, `categories`, `regions`, `position`, `requirement`, `numbers`, `company_Id`) VALUES
(1, 'asd', 'asd', 'asdsad', 'asdasd', '1', '3');

-- --------------------------------------------------------

--
-- 表的结构 `joinjobs`
--

CREATE TABLE IF NOT EXISTS `joinjobs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `jobposting` varchar(255) DEFAULT NULL,
  `user_Id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `joinjobs`
--

INSERT INTO `joinjobs` (`Id`, `jobposting`, `user_Id`) VALUES
(1, '1', '2');

-- --------------------------------------------------------

--
-- 表的结构 `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_Id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `yearold` varchar(255) DEFAULT NULL,
  `graduate` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `resume`
--

INSERT INTO `resume` (`Id`, `usr_Id`, `firstname`, `lastname`, `sex`, `yearold`, `graduate`, `skill`) VALUES
(1, '2', '11', '22', 'male', '22', '22', '222');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`Id`, `username`, `password`, `realname`, `sex`, `mobile`, `email`, `role`) VALUES
(2, 'jacky', '12345', 'jacky', 'male', '13000000000', '454565@qq.com', 'male'),
(3, 'company01', '8888', 'conpany01', 'male', '13000000000', '454565@qq.com', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
