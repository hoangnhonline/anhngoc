-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 01:16 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anhngoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'base_url', 'http://nghien.biz'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD '),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí'),
(5, 'admin_email', 'nghien.biz@gmail.com'),
(22, 'mail_server', 'mail.example.com'),
(23, 'mail_login_name', 'login@example.com'),
(24, 'mail_password', 'password'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD '),
(110, 'company_fax', ''),
(113, 'google_analystic', 'UA-78246182-1'),
(114, 'facebook_appid', '1704278759791793'),
(115, 'google_fanpage', ''),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa'),
(117, 'twitter_fanpage', ''),
(130, 'logo', '/upload/image/options/logo-250x72.png'),
(131, 'favicon', '/upload/image/options/icon-logo-85x85.png'),
(141, 'home_banner', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
