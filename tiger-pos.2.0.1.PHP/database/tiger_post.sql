-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2016 at 08:41 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_tiger_post`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

DROP TABLE IF EXISTS `tbl_app`;
CREATE TABLE IF NOT EXISTS `tbl_app` (
`id` int(11) NOT NULL,
  `fid` varchar(128) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `app_id` varchar(128) DEFAULT NULL,
  `app_secret` varchar(128) DEFAULT NULL,
  `cid` varchar(128) DEFAULT NULL,
  `access_token` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facebook`
--

DROP TABLE IF EXISTS `tbl_facebook`;
CREATE TABLE IF NOT EXISTS `tbl_facebook` (
`id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `fid` varchar(32) DEFAULT NULL,
  `uid` int(111) DEFAULT '0',
  `access_token` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groups`
--

DROP TABLE IF EXISTS `tbl_groups`;
CREATE TABLE IF NOT EXISTS `tbl_groups` (
`id` int(11) NOT NULL,
  `group_id` varchar(128) DEFAULT NULL,
  `group_name` varchar(128) DEFAULT NULL,
  `privacy` varchar(32) DEFAULT NULL,
  `fid` varchar(128) DEFAULT NULL,
  `uid` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_groups`
--

DROP TABLE IF EXISTS `tbl_list_groups`;
CREATE TABLE IF NOT EXISTS `tbl_list_groups` (
`id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `groups` text,
  `uid` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

DROP TABLE IF EXISTS `tbl_posts`;
CREATE TABLE IF NOT EXISTS `tbl_posts` (
`id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `fid` varchar(125) DEFAULT NULL,
  `account` varchar(128) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `access_token` text,
  `cid` varchar(128) DEFAULT NULL,
  `message` text,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` text,
  `image` text,
  `caption` varchar(30) DEFAULT NULL,
  `time_post` datetime DEFAULT NULL,
  `add_time_post` int(1) DEFAULT '0',
  `delete` int(1) DEFAULT '0',
  `deplay` int(11) NOT NULL DEFAULT '5',
  `repeat_post` int(1) DEFAULT '0',
  `repeat_time` int(11) DEFAULT NULL,
  `repeat_end` date DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `message_error` text,
  `uid` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_save`
--

DROP TABLE IF EXISTS `tbl_save`;
CREATE TABLE IF NOT EXISTS `tbl_save` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` text,
  `image` text,
  `caption` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE IF NOT EXISTS `tbl_settings` (
`id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `theme` varchar(64) DEFAULT NULL,
  `sidebar` int(1) DEFAULT '1',
  `layout` varchar(64) DEFAULT NULL,
  `register` int(1) NOT NULL DEFAULT '1',
  `active_register` int(1) DEFAULT '0',
  `default_language` varchar(128) DEFAULT 'en',
  `default_timezone` varchar(128) DEFAULT 'Asia/Ho_Chi_Minh',
  `users_limit` int(11) DEFAULT '3',
  `default_deplay` int(4) DEFAULT '5',
  `minimum_deplay` int(4) DEFAULT '5',
  `purchase_code` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `name`, `theme`, `sidebar`, `layout`, `register`, `active_register`, `default_language`, `default_timezone`, `users_limit`, `default_deplay`, `minimum_deplay`, `purchase_code`) VALUES
(1, 'assets/img/logo-tiger1.png', 'Tiger Post - Facebook Auto Post Multi Pages/Groups/Profiles', 'blue-light', 1, 'layout-boxed', 1, 0, 'en', 'Asia/Ho_Chi_Minh', 10, 180, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
`id` int(11) NOT NULL,
  `fid` varchar(255) DEFAULT NULL,
  `admin` int(1) DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `default_timezone` varchar(128) DEFAULT 'Asia/Ho_Chi_Minh',
  `uncheck_groups` int(1) DEFAULT '1',
  `facebook_api` varchar(5) DEFAULT 'v2.0',
  `cookie` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fid`, `admin`, `username`, `password`, `default_timezone`, `uncheck_groups`, `facebook_api`, `cookie`, `status`, `changed`, `created`) VALUES
(1, '100000318614474', 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Asia/Ho_Chi_Minh', 1, 'v2.0', NULL, 1, '2016-06-11 13:55:26', '2016-03-08 16:46:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_groups`
--
ALTER TABLE `tbl_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_list_groups`
--
ALTER TABLE `tbl_list_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_save`
--
ALTER TABLE `tbl_save`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_groups`
--
ALTER TABLE `tbl_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_list_groups`
--
ALTER TABLE `tbl_list_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_save`
--
ALTER TABLE `tbl_save`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
