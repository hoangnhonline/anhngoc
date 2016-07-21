-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2016 at 04:45 PM
-- Server version: 5.6.30-1+deb.sury.org~wily+2
-- PHP Version: 7.0.8-4+deb.sury.org~wily+1

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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `display_order` tinyint(4) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `name`, `alias`, `slug`, `description`, `parent_id`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `is_hot`, `status`) VALUES
(1, 'Phim Việt Nam', 'Phim Viet Nam', 'phim-viet-nam', '', 1, 0, 1, 0, '2016-07-20 10:00:06', '2016-07-20 10:09:56', '', '', '', '', 0, 1),
(2, 'Phim Nhật Bản', 'Phim Nhat Ban', 'phim-nhat-ban', '', 1, 0, 1, 0, '2016-07-20 10:10:12', '2016-07-20 10:10:32', 'Phim Nhật Bản', '', '', '', 0, 1),
(3, 'Phim Hàn Quốc', 'Phim Han Quoc', 'phim-han-quoc', '', 1, 0, 1, 0, '2016-07-20 10:10:48', '2016-07-20 10:10:55', 'Phim Hàn Quốc', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL,
  `display_order` int(11) NOT NULL COMMENT 'danh cho video hot',
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `quality` tinyint(4) NOT NULL COMMENT '1 : full HD, 2 HD, 3 SD , 4 CAM',
  `duration` varchar(20) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `slug`, `alias`, `description`, `parent_id`, `cate_id`, `url`, `image_url`, `site_id`, `display_order`, `content`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `is_hot`, `quality`, `duration`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(0, 'Posh British Webcam Chick [ More on youcamgirl.net/webcamgirls ] - XVIDEOS.COM', 'posh-british-webcam-chick-more-on-youcamgirlnetwebcamgirls-xvideoscom', 'Posh British Webcam Chick [ More on youcamgirl.net-webcamgirls ] - XVIDEOS.COM', '', 1, 1, 'http://www.xvideos.com/video20196023/posh_british_webcam_chick_more_on_youcamgirl.net_webcamgirls_', NULL, 1, 0, NULL, '2016-07-20 16:35:27', '2016-07-20 16:35:27', 1, 0, 1, 0, 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `parent_cate`
--

CREATE TABLE `parent_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent_cate`
--

INSERT INTO `parent_cate` (`id`, `name`, `alias`, `slug`, `description`, `display_order`, `created_user`, `updated_user`, `created_at`, `updated_at`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `is_hot`, `status`) VALUES
(1, 'Phim châu Á', 'Phim chau A', 'phim-chau-a', '', 0, 1, 0, '2016-07-20 09:51:23', '2016-07-20 09:51:23', 'Phim châu Á', '', '', '', 0, 1),
(2, 'Phim châu Âu', 'Phim chau Au', 'phim-chau-au', '', 0, 1, 0, '2016-07-20 09:51:39', '2016-07-20 09:51:39', 'Phim châu Âu', '', '', '', 0, 1),
(3, 'Phim châu Mỹ', 'Phim chau My', 'phim-chau-my', '', 0, 1, 0, '2016-07-20 09:53:32', '2016-07-20 10:11:30', 'Phim châu Á', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : movies, 2 : story, 3 : picture ',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`, `slug`, `description`, `type`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Uzumaki Naruto', 'uzumaki-naruto', '', 1, '2016-07-20 00:00:00', '2016-07-20 11:49:11', 1, 1, 1, 'Uzumaki Naruto', '', '', ''),
(2, 'naruto', 'naruto', 'dasg dsgdsg adfsg adfs h', 1, '2016-07-20 00:00:00', '2016-07-20 11:45:23', 1, 1, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `tag_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `parent_cate`
--
ALTER TABLE `parent_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`,`type`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`tag_id`,`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parent_cate`
--
ALTER TABLE `parent_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
