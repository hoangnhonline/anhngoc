-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 01:34 AM
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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://nghien.biz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'admin_email', 'nghien.biz@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'mail_server', 'mail.example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'mail_login_name', 'login@example.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'mail_password', 'password', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'google_analystic', 'UA-78246182-1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'facebook_appid', '1704278759791793', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'google_fanpage', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'twitter_fanpage', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'logo', '/upload/image/options/logo-250x72.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'favicon', '/upload/image/options/icon-logo-85x85.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'home_banner', '/upload/image/options/logo-250x72.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
