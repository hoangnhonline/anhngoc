-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2016 at 04:43 PM
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
(3, 'Phim Hàn Quốc', 'Phim Han Quoc', 'phim-han-quoc', '', 1, 0, 1, 0, '2016-07-20 10:10:48', '2016-07-20 10:10:55', 'Phim Hàn Quốc', '', '', '', 0, 1),
(4, 'Phim Mỹ', 'Phim My', 'phim-my', '', 3, 0, 1, 0, '2016-07-22 08:25:13', '2016-07-22 08:25:13', '', '', '', '', 0, 1),
(5, 'Phim Ý', 'Phim Y', 'phim-y', '', 2, 0, 1, 0, '2016-07-22 08:25:34', '2016-07-22 08:25:34', '', '', '', '', 0, 1);

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
  `views` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `movies` (`id`, `title`, `slug`, `alias`, `description`, `parent_id`, `cate_id`, `url`, `image_url`, `site_id`, `display_order`, `content`, `views`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `is_hot`, `quality`, `duration`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Asian anal along horny milf, Maki Sarada', 'asian-anal-along-horny-milf-maki-sarada', 'Asian anal along horny milf, Maki Sarada', '', 1, 2, 'http://javhihi.com/movie/asian-anal-along-horny-milf-maki-sarada.2514.html', 'http://statics.javhihi.com/images/movies/javhihi.com-asian-anal-along-horny-milf-maki-sarada.jpg', 2, 0, '', 0, '2016-07-22 08:21:25', '2016-07-22 08:21:25', 1, 0, 1, 0, 1, '', '', '', '', ''),
(2, 'Japanese gangbang creampie with Sara Yurikawa ', 'japanese-gangbang-creampie-with-sara-yurikawa', 'Japanese gangbang creampie with Sara Yurikawa ', '', 1, 2, 'http://javhihi.com/movie/japanese-gangbang-creampie-with-sara-yurikawa.2515.html', 'http://statics.javhihi.com/images/movies/javhihi.com-japanese-gangbang-creampie-with-sara-yurikawa.jpg', 2, 0, '', 0, '2016-07-22 08:21:39', '2016-07-22 08:21:39', 1, 0, 1, 0, 1, '', '', '', '', ''),
(3, 'Asian swallows cum in raw threesome action ', 'asian-swallows-cum-in-raw-threesome-action', 'Asian swallows cum in raw threesome action ', '', 1, 2, 'http://javhihi.com/movie/asian-swallows-cum-in-raw-threesome-action.2508.html', 'http://statics.javhihi.com/images/movies/javhihi.com-asian-swallows-cum-in-raw-threesome-action.jpg', 2, 0, '', 0, '2016-07-22 08:21:59', '2016-07-22 08:21:59', 1, 0, 1, 0, 1, '', '', '', '', ''),
(4, 'Cock sucking Asian girls in naughty action ', 'cock-sucking-asian-girls-in-naughty-action', 'Cock sucking Asian girls in naughty action ', '', 1, 2, 'http://javhihi.com/movie/cock-sucking-asian-girls-in-naughty-action.2504.html', 'http://statics.javhihi.com/images/movies/javhihi.com-cock-sucking-asian-girls-in-naughty-action.jpg', 2, 0, '', 0, '2016-07-22 08:22:09', '2016-07-22 08:22:09', 1, 0, 1, 0, 1, '', '', '', '', ''),
(5, 'Hardcore Fucking and Sucking for Japanese Star Maria Ozawa', 'hardcore-fucking-and-sucking-for-japanese-star-maria-ozawa', 'Hardcore Fucking and Sucking for Japanese Star Maria Ozawa', '', 1, 2, 'http://javhihi.com/movie/hardcore-fucking-and-sucking-for-japanese-star-maria-ozawa.721.html', 'http://statics.javhihi.com/images/movies/javhihi.com-hardcore-fucking-and-sucking-for-japanese-honey-maria-ozawa.jpg', 2, 0, '', 0, '2016-07-22 08:22:19', '2016-07-22 08:22:19', 1, 0, 1, 0, 1, '', '', '', '', ''),
(6, 'SLim Sara Yurikawa provides amazing Asian blowjobs', 'slim-sara-yurikawa-provides-amazing-asian-blowjobs', 'SLim Sara Yurikawa provides amazing Asian blowjobs', '', 1, 2, 'http://javhihi.com/movie/slim-sara-yurikawa-provides-amazing-asian-blowjobs.2505.html', 'http://statics.javhihi.com/images/movies/javhihi.com-slim-sara-yurikawa-provides-amazing-asian-blowjobs.jpg', 2, 0, '', 0, '2016-07-22 08:22:28', '2016-07-22 08:22:28', 1, 0, 1, 0, 1, '', '', '', '', ''),
(7, 'Kaede Niiyama gives hot Japanese blow jobs', 'kaede-niiyama-gives-hot-japanese-blow-jobs', 'Kaede Niiyama gives hot Japanese blow jobs', '', 1, 2, 'http://javhihi.com/movie/kaede-niiyama-gives-hot-japanese-blow-jobs.2498.html', 'http://statics.javhihi.com/images/movies/javhihi.com-kaede-niiyama-gives-hot-japanese-blow-jobs.jpg', 2, 0, '', 0, '2016-07-22 08:22:37', '2016-07-22 09:30:22', 1, 0, 1, 1, 1, '30min', 'Kaede Niiyama gives hot Japanese blow jobs', 'Kaede Niiyama gives hot Japanese blow jobs', 'Kaede Niiyama gives hot Japanese blow jobs', 'Kaede Niiyama gives hot Japanese blow jobs'),
(8, 'Rough Asian blowjob along steamy chicks in heats', 'rough-asian-blowjob-along-steamy-chicks-in-heats', 'Rough Asian blowjob along steamy chicks in heats', '', 1, 2, 'http://javhihi.com/movie/rough-asian-blowjob-along-steamy-chicks-in-heats.2499.html', 'http://statics.javhihi.com/images/movies/javhihi.com-rough-asian-blowjob-along-steamy-chicks-in-heats.jpg', 2, 0, '', 0, '2016-07-22 08:22:49', '2016-07-22 08:22:49', 1, 0, 1, 0, 1, '', '', '', '', ''),
(9, 'Yui Uehara gives Japanese blowjob in theeesome ', 'yui-uehara-gives-japanese-blowjob-in-theeesome', 'Yui Uehara gives Japanese blowjob in theeesome ', '', 1, 2, 'http://javhihi.com/movie/yui-uehara-gives-japanese-blowjob-in-theeesome.2502.html', 'http://statics.javhihi.com/images/movies/javhihi.com-yui-uehara-gives-japanese-blowjob-in-theeesome.jpg', 2, 0, '', 0, '2016-07-22 08:23:02', '2016-07-22 08:23:02', 1, 0, 1, 0, 1, '', '', '', '', ''),
(10, 'Asian blow job with Marina Matsumoto in threesome ', 'asian-blow-job-with-marina-matsumoto-in-threesome', 'Asian blow job with Marina Matsumoto in threesome ', '', 1, 2, 'http://javhihi.com/movie/asian-blow-job-with-marina-matsumoto-in-threesome.2497.html', 'http://statics.javhihi.com/images/movies/javhihi.com-asian-blow-job-with-marina-matsumoto-in-threesome.jpg', 2, 0, '', 0, '2016-07-22 08:23:11', '2016-07-22 08:23:11', 1, 0, 1, 0, 1, '', '', '', '', ''),
(11, 'Saki Kobashi asian amateur fucked in the water with a vibrator', 'saki-kobashi-asian-amateur-fucked-in-the-water-with-a-vibrator', 'Saki Kobashi asian amateur fucked in the water with a vibrator', '', 1, 2, 'http://javhihi.com/movie/saki-kobashi-asian-amateur-fucked-in-the-water-with-a-vibrator.2038.html', 'http://statics.javhihi.com/images/movies/javhihi.com-saki-kobashi-asian-amateur-fucked-in-the-water-with-a-vibrator.jpg', 2, 0, '', 0, '2016-07-22 08:23:28', '2016-07-22 09:22:49', 1, 0, 1, 0, 1, '30min', 'Saki Kobashi asian amateur fucked in the water with a vibrator', 'Saki Kobashi asian amateur fucked in the water with a vibrator', 'Saki Kobashi asian amateur fucked in the water with a vibrator', 'Saki Kobashi asian amateur fucked in the water with a vibrator'),
(12, 'Jun Mamiya fondles cock with hot assets', 'jun-mamiya-fondles-cock-with-hot-assets', 'Jun Mamiya fondles cock with hot assets', '', 1, 2, 'http://javhihi.com/movie/jun-mamiya-fondles-cock-with-hot-assets.2041.html', 'http://statics.javhihi.com/images/movies/javhihi.com-jun-mamiya-fondles-cock-with-hot-assets.jpg', 2, 0, '', 0, '2016-07-22 08:23:45', '2016-07-22 08:23:45', 1, 0, 1, 0, 1, '', '', '', '', ''),
(13, 'Ruru Kashiwagi\'s asian blow job leads to cock riding', 'ruru-kashiwagis-asian-blow-job-leads-to-cock-riding', 'Ruru Kashiwagi\'s asian blow job leads to cock riding', '', 1, 2, 'http://javhihi.com/movie/ruru-kashiwagi-s-asian-blow-job-leads-to-cock-riding.2037.html', 'http://statics.javhihi.com/images/movies/javhihi.com-ruru-kashiwagi-s-asian-blow-job-leads-to-cock-riding.jpg', 2, 0, '', 0, '2016-07-22 08:23:57', '2016-07-22 08:23:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(14, 'Slim  Anri Sonozaki gives top asian blow job', 'slim-anri-sonozaki-gives-top-asian-blow-job', 'Slim  Anri Sonozaki gives top asian blow job', '', 1, 2, 'http://javhihi.com/movie/slim-anri-sonozaki-gives-top-asian-blow-job.2035.html', 'http://statics.javhihi.com/images/movies/javhihi.com-slim-anri-sonozaki-gives-top-asian-blow-job.jpg', 2, 0, '', 0, '2016-07-22 08:24:10', '2016-07-22 08:24:10', 1, 0, 1, 0, 1, '', '', '', '', ''),
(15, 'Two guys give anal japanese and DP sex to Sakura Ooba', 'two-guys-give-anal-japanese-and-dp-sex-to-sakura-ooba', 'Two guys give anal japanese and DP sex to Sakura Ooba', '', 1, 2, 'http://javhihi.com/movie/two-guys-give-anal-japanese-and-dp-sex-to-sakura-ooba.2025.html', 'http://statics.javhihi.com/images/movies/javhihi.com-two-guys-give-anal-japanese-and-dp-sex-to-sakura-ooba.jpg', 2, 0, '', 0, '2016-07-22 08:24:19', '2016-07-22 08:24:19', 1, 0, 1, 0, 1, '', '', '', '', ''),
(16, 'Girlfriends Teasing Guy With Beautiful Ass And Lesbian Sex On Webcam Video - Youporn.com', 'girlfriends-teasing-guy-with-beautiful-ass-and-lesbian-sex-on-webcam-video-youporncom', 'Girlfriends Teasing Guy With Beautiful Ass And Lesbian Sex On Webcam Video - Youporn.com', '', 3, 4, 'http://www.youporn.com/watch/9714065/girlfriends-teasing-guy-with-beautiful-ass-and-lesbian-sex-on-webcam/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201406/06/9714065/original/8/girlfriends-teasing-guy-with-beautiful-ass-and-lesbian-sex-on-webcam-8.jpg', 4, 0, '', 0, '2016-07-22 08:25:58', '2016-07-22 08:25:58', 1, 0, 1, 0, 1, '', '', '', '', ''),
(17, 'Brunette Hottie Andrea Showing Off Her Body - Free Porn Videos', 'brunette-hottie-andrea-showing-off-her-body-free-porn-videos', 'Brunette Hottie Andrea Showing Off Her Body - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/579056/brunette-hottie-andrea-showing-off-her-body/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201105/21/579056/original/8/brunette-hottie-andrea-showing-off-her-body-8.jpg', 4, 0, '', 0, '2016-07-22 08:26:32', '2016-07-22 08:26:32', 1, 0, 1, 0, 1, '', '', '', '', ''),
(18, 'Danejones Little Caprice Eaten Out - Free Porn Videos', 'danejones-little-caprice-eaten-out-free-porn-videos', 'Danejones Little Caprice Eaten Out - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/7623926/danejones-little-caprice-eaten-out/', 'http://cdn4.image.youporn.phncdn.com/m=eaAaaEjb/201202/12/7623926/original/8/danejones-little-caprice-eaten-out-8.jpg', 4, 0, '', 0, '2016-07-22 08:28:13', '2016-07-22 08:28:13', 1, 0, 1, 0, 1, '', '', '', '', ''),
(19, 'Amazing Hot Czech Babe Playing With Dildo - Free Porn Videos', 'amazing-hot-czech-babe-playing-with-dildo-free-porn-videos', 'Amazing Hot Czech Babe Playing With Dildo - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/12903345/amazing-hot-czech-babe-playing-with-dildo/', 'http://cdn5b.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12903345/original/16/amazing-hot-czech-babe-playing-with-dildo-16.jpg', 4, 0, '', 0, '2016-07-22 08:30:11', '2016-07-22 08:30:11', 1, 0, 1, 0, 1, '', '', '', '', ''),
(20, 'Blond Amateur Pov Fuck! - Free Porn Videos', 'blond-amateur-pov-fuck-free-porn-videos', 'Blond Amateur Pov Fuck! - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12652475/blond-amateur-pov-fuck/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201604/19/12652475/original/8/blond-amateur-pov-fuck-8.jpg', 4, 0, '', 0, '2016-07-22 08:30:26', '2016-07-22 08:30:26', 1, 0, 1, 0, 1, '', '', '', '', ''),
(21, 'Slutty Brunette Teen Insert Pink Vibrator - Free Porn Videos', 'slutty-brunette-teen-insert-pink-vibrator-free-porn-videos', 'Slutty Brunette Teen Insert Pink Vibrator - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12905643/slutty-brunette-teen-insert-pink-vibrator/', 'http://cdn4.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12905643/original/10/slutty-brunette-teen-insert-pink-vibrator-10.jpg', 4, 0, '', 0, '2016-07-22 08:30:40', '2016-07-22 08:30:40', 1, 0, 1, 0, 1, '', '', '', '', ''),
(22, 'Hot Cam Show Sexy Amateur Chick With Sex Toys - Free Porn Videos', 'hot-cam-show-sexy-amateur-chick-with-sex-toys-free-porn-videos', 'Hot Cam Show Sexy Amateur Chick With Sex Toys - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12903717/hot-cam-show-sexy-amateur-chick-with-sex-toys/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12903717/original/14/hot-cam-show-sexy-amateur-chick-with-sex-toys-14.jpg', 4, 0, '', 0, '2016-07-22 08:30:57', '2016-07-22 08:30:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(23, 'Castingcouch-X - Jade Nile First Audition With Our Casting Agent Video - Youporn.com', 'castingcouch-x-jade-nile-first-audition-with-our-casting-agent-video-youporncom', 'Castingcouch-X - Jade Nile First Audition With Our Casting Agent Video - Youporn.com', '', 2, 5, 'http://www.youporn.com/watch/12904607/castingcouch-x-jade-nile-first-audition-with-our-casting-agent/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12904607/original/9/castingcouch-x-jade-nile-first-audition-with-our-casting-agent-9.jpg', 4, 0, '', 0, '2016-07-22 08:31:09', '2016-07-22 08:31:09', 1, 0, 1, 0, 1, '', '', '', '', ''),
(24, 'Old School Classic - Yenny Abused Teen - Free Porn Videos', 'old-school-classic-yenny-abused-teen-free-porn-videos', 'Old School Classic - Yenny Abused Teen - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12903859/old-school-classic-yenny-abused-teen/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12903859/original/9/old-school-classic-yenny-abused-teen-9.jpg', 4, 0, '', 0, '2016-07-22 08:31:30', '2016-07-22 08:31:30', 1, 0, 1, 0, 1, '', '', '', '', ''),
(25, 'Ersties Präsentiert: Ein Geiler Tag Mit Charlotte - Free Porn Videos', 'ersties-praesentiert-ein-geiler-tag-mit-charlotte-free-porn-videos', 'Ersties Präsentiert: Ein Geiler Tag Mit Charlotte - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12903281/ersties-prasentiert-ein-geiler-tag-mit-charlotte/', 'http://cdn5.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12903281/original/7/ersties-prasentiert-ein-geiler-tag-mit-charlotte-7.jpg', 4, 0, '', 0, '2016-07-22 08:31:46', '2016-07-22 08:31:46', 1, 0, 1, 0, 1, '', '', '', '', ''),
(26, 'Gorgeous Blonde Milf W Big Nipples-Floppy Tits Lets Young Dyke Bbw Fuck Her Video - Youporn.com', 'gorgeous-blonde-milf-w-big-nipples-floppy-tits-lets-young-dyke-bbw-fuck-her-video-youporncom', 'Gorgeous Blonde Milf W Big Nipples-Floppy Tits Lets Young Dyke Bbw Fuck Her Video - Youporn.com', '', 2, 5, 'http://www.youporn.com/watch/12904625/gorgeous-blonde-milf-w-big-nipples-floppy-tits-lets-young-dyke-bbw-fuck-her/', 'http://cdn5.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12904625/original/8/gorgeous-blonde-milf-w-big-nipples-floppy-tits-lets-young-dyke-bbw-fuck-her-8.jpg', 4, 0, '', 0, '2016-07-22 08:31:59', '2016-07-22 08:31:59', 1, 0, 1, 0, 1, '', '', '', '', ''),
(27, 'Amateur Exgf Anal Fuck With Facial Shot - Free Porn Videos', 'amateur-exgf-anal-fuck-with-facial-shot-free-porn-videos', 'Amateur Exgf Anal Fuck With Facial Shot - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12903125/amateur-exgf-anal-fuck-with-facial-shot/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201607/20/12903125/original/12/amateur-exgf-anal-fuck-with-facial-shot-12.jpg', 4, 0, '', 0, '2016-07-22 08:32:13', '2016-07-22 08:32:13', 1, 0, 1, 0, 1, '', '', '', '', ''),
(28, 'Two Bisexual Students In Their First Strapon Experience - Free Porn Videos', 'two-bisexual-students-in-their-first-strapon-experience-free-porn-videos', 'Two Bisexual Students In Their First Strapon Experience - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12908695/two-bisexual-students-in-their-first-strapon-experience/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201607/21/12908695/original/8/two-bisexual-students-in-their-first-strapon-experience-8.jpg', 4, 0, '', 0, '2016-07-22 08:32:26', '2016-07-22 08:32:26', 1, 0, 1, 0, 1, '', '', '', '', ''),
(29, 'Sweet Cat Fucking In Bathroom - Free Porn Videos', 'sweet-cat-fucking-in-bathroom-free-porn-videos', 'Sweet Cat Fucking In Bathroom - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12897751/sweet-cat-fucking-in-bathroom/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201607/18/12897751/original/14/sweet-cat-fucking-in-bathroom-14.jpg', 4, 0, '', 0, '2016-07-22 08:32:39', '2016-07-22 08:32:39', 1, 0, 1, 0, 1, '', '', '', '', ''),
(30, 'Britney Amber Wild Job Interview - Free Porn Videos', 'britney-amber-wild-job-interview-free-porn-videos', 'Britney Amber Wild Job Interview - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/12900559/britney-amber-wild-job-interview/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201607/19/12900559/original/6/britney-amber-wild-job-interview-6.jpg', 4, 0, '', 0, '2016-07-22 08:32:50', '2016-07-22 08:32:50', 1, 0, 1, 0, 1, '', '', '', '', ''),
(31, 'Porch Swing Fucking - Dbm Video - Free Porn Videos', 'porch-swing-fucking-dbm-video-free-porn-videos', 'Porch Swing Fucking - Dbm Video - Free Porn Videos', '', 2, 5, 'http://www.youporn.com/watch/7637027/porch-swing-fucking-dbm-video/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201006/20/7637027/original/8/porch-swing-fucking-dbm-video-8.jpg', 4, 0, '', 0, '2016-07-22 08:33:02', '2016-07-22 08:33:02', 1, 0, 1, 0, 1, '', '', '', '', ''),
(32, 'Attacking The Pussy Like It Stole Something ... Live At The M.a.g.i.c. Studio.. Video - Youporn.com', 'attacking-the-pussy-like-it-stole-something-live-at-the-magic-studio-video-youporncom', 'Attacking The Pussy Like It Stole Something ... Live At The M.a.g.i.c. Studio.. Video - Youporn.com', '', 3, 4, 'http://www.youporn.com/watch/9169659/attacking-the-pussy-like-it-stole-something-live-at-the-m-a-g-i-c-studio/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201401/13/9169659/original/8/attacking-the-pussy-like-it-stole-something-live-at-the-m-a-g-i-c-studio-8.jpg', 4, 0, '', 0, '2016-07-22 08:33:16', '2016-07-22 08:33:16', 1, 0, 1, 0, 1, '', '', '', '', ''),
(33, 'Blonde Love - Free Porn Videos', 'blonde-love-free-porn-videos', 'Blonde Love - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/692906/blonde-love/', 'http://cdn5f.image.youporn.phncdn.com/m=eaAaaEjb/201112/18/692906/original/8/blonde-love-8.jpg', 4, 0, '', 0, '2016-07-22 08:33:49', '2016-07-22 08:33:49', 1, 0, 1, 0, 1, '', '', '', '', ''),
(34, 'Asian Babe On Bed - Free Porn Videos', 'asian-babe-on-bed-free-porn-videos', 'Asian Babe On Bed - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/10302447/asian-babe-on-bed/', 'http://cdn5.image.youporn.phncdn.com/m=eaAaaEjb/201409/16/10302447/original/8/asian-babe-on-bed-8.jpg', 4, 0, '', 0, '2016-07-22 08:34:02', '2016-07-22 08:34:02', 1, 0, 1, 0, 1, '', '', '', '', ''),
(35, 'Feed Her The Seamen - Risque Entertainment - Free Porn Videos', 'feed-her-the-seamen-risque-entertainment-free-porn-videos', 'Feed Her The Seamen - Risque Entertainment - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/11379457/feed-her-the-seamen-risque-entertainment/', 'http://cdn4f.image.youporn.phncdn.com/m=eaAaaEjb/201505/23/11379457/original/8/feed-her-the-seamen-risque-entertainment-8.jpg', 4, 0, '', 0, '2016-07-22 08:34:15', '2016-07-22 08:34:15', 1, 0, 1, 0, 1, '', '', '', '', ''),
(36, 'Castingcouch-Hd.com - Brianna Nails Her Audition - Free Porn Videos', 'castingcouch-hdcom-brianna-nails-her-audition-free-porn-videos', 'Castingcouch-Hd.com - Brianna Nails Her Audition - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/9766405/castingcouch-hd-com-brianna-nails-her-audition/', 'http://cdn5.image.youporn.phncdn.com/m=eaAaaEjb/201406/16/9766405/original/8/castingcouch-hd-com-brianna-nails-her-audition-8.jpg', 4, 0, '', 0, '2016-07-22 08:34:30', '2016-07-22 08:34:30', 1, 0, 1, 0, 1, '', '', '', '', ''),
(37, 'Shy Girl Gets Her First Massage Ever! - Free Porn Videos', 'shy-girl-gets-her-first-massage-ever-free-porn-videos', 'Shy Girl Gets Her First Massage Ever! - Free Porn Videos', '', 3, 4, 'http://www.youporn.com/watch/483158/shy-girl-gets-her-first-massage-ever/', 'http://cdn4.image.youporn.phncdn.com/m=eaAaaEjb/201010/16/483158/original/8/shy-girl-gets-her-first-massage-ever-8.jpg', 4, 0, '', 0, '2016-07-22 08:34:56', '2016-07-22 08:34:56', 1, 0, 1, 0, 1, '', '', '', '', ''),
(38, 'Cum swapping babes share cock and sex swing', 'cum-swapping-babes-share-cock-and-sex-swing', 'Cum swapping babes share cock and sex swing', '', 3, 4, 'https://www.tnaflix.com/hardcore-porn/Cum-swapping-babes-share-cock-and-sex-swing/video1958193', 'https://img1.tnastatic.com/a16:8q80w300/thumbs/a4/31_1958193l.jpg', 5, 0, '', 0, '2016-07-22 08:35:10', '2016-07-22 08:35:10', 1, 0, 1, 0, 1, '', '', '', '', ''),
(39, 'Big tits babe has a back problem', 'big-tits-babe-has-a-back-problem', 'Big tits babe has a back problem', '', 3, 4, 'https://www.tnaflix.com/big-boobs/Big-tits-babe-has-a-back-problem/video2119690', 'https://img2.tnastatic.com/a16:8q80w300/thumbs/0e/31_2119690l.jpg', 5, 0, '', 0, '2016-07-22 08:35:25', '2016-07-22 08:35:25', 1, 0, 1, 0, 1, '', '', '', '', ''),
(40, 'Mature amateur wife homemade anal with creampie cumshot', 'mature-amateur-wife-homemade-anal-with-creampie-cumshot', 'Mature amateur wife homemade anal with creampie cumshot', '', 3, 4, 'https://www.tnaflix.com/anal-porn/Mature-amateur-wife-homemade-anal-with-creampie-cumshot/video237502', 'https://img2.tnastatic.com/a16:8q80w300/thumbs/c9/23_237502l.jpg', 5, 0, '', 0, '2016-07-22 08:35:36', '2016-07-22 08:35:36', 1, 0, 1, 0, 1, '', '', '', '', ''),
(41, 'DaughterSwap- Horny Daughters Fuck Dads on Camping Trip', 'daughterswap-horny-daughters-fuck-dads-on-camping-trip', 'DaughterSwap- Horny Daughters Fuck Dads on Camping Trip', '', 1, 3, 'http://www.xvideos.com/video22633781/channel/0/daughterswap-_horny_daughters_fuck_dads_on_camping_trip', 'http://img-l3.xvideos.com/videos/thumbsll/d2/ec/fd/d2ecfd5eaeac2d24f6a85312bac1ba39/d2ecfd5eaeac2d24f6a85312bac1ba39.4.jpg', 1, 0, '', 0, '2016-07-22 08:48:02', '2016-07-22 08:48:02', 1, 0, 1, 0, 1, '', '', '', '', ''),
(42, 'Booty view!', 'booty-view', 'Booty view!', '', 1, 3, 'http://www.xvideos.com/video22635301/channel/0/booty_view_', 'http://img-hw.xvideos.com/videos/thumbsll/41/f4/7b/41f47b1e738e18a8f1093b8e2739651e/41f47b1e738e18a8f1093b8e2739651e.15.jpg', 1, 0, '', 0, '2016-07-22 08:48:23', '2016-07-22 08:48:23', 1, 0, 1, 0, 1, '', '', '', '', ''),
(43, 'Veronica Rodriguez Squirts Everywhere', 'veronica-rodriguez-squirts-everywhere', 'Veronica Rodriguez Squirts Everywhere', '', 1, 3, 'http://www.xvideos.com/video22656707/channel/0/veronica_rodriguez_squirts_everywhere', 'http://img-hw.xvideos.com/videos/thumbsll/22/8a/40/228a40e25ec5ae74e3e51c3a37b842bb/228a40e25ec5ae74e3e51c3a37b842bb.15.jpg', 1, 0, '', 0, '2016-07-22 08:48:37', '2016-07-22 08:48:37', 1, 0, 1, 0, 1, '', '', '', '', ''),
(44, 'Brazzers - Run away bride Lylith Lavy', 'brazzers-run-away-bride-lylith-lavy', 'Brazzers - Run away bride Lylith Lavy', '', 1, 3, 'http://www.xvideos.com/video22678413/channel/0/brazzers_-_run_away_bride_lylith_lavy', 'http://img-hw.xvideos.com/videos/thumbsll/83/70/5e/83705e0cc2503bed681c21ab3761080c/83705e0cc2503bed681c21ab3761080c.15.jpg', 1, 0, '', 0, '2016-07-22 08:48:52', '2016-07-22 08:48:52', 1, 0, 1, 0, 1, '', '', '', '', ''),
(45, 'Step Dad fucks Leah Gotti&#039;s teen pussy', 'step-dad-fucks-leah-gotti039s-teen-pussy', 'Step Dad fucks Leah Gotti&#039;s teen pussy', '', 1, 2, 'http://www.xvideos.com/video22657457/channel/0/step_dad_fucks_leah_gotti_s_teen_pussy', 'http://img100-457.xvideos.com/videos/thumbsll/77/ae/0d/77ae0d23342b3959faeb62121dd46408/77ae0d23342b3959faeb62121dd46408.15.jpg', 1, 0, '', 0, '2016-07-22 08:49:04', '2016-07-22 08:49:04', 1, 0, 1, 0, 1, '', '', '', '', ''),
(46, 'Emma Brown and her lover', 'emma-brown-and-her-lover', 'Emma Brown and her lover', '', 1, 1, 'http://www.xvideos.com/video22654277/channel/0/emma_brown_and_her_lover', 'http://img100-277.xvideos.com/videos/thumbsll/79/3f/09/793f094cf07c0b6618c3d65e42e6f1dd/793f094cf07c0b6618c3d65e42e6f1dd.15.jpg', 1, 0, '', 0, '2016-07-22 08:49:19', '2016-07-22 08:49:19', 1, 0, 1, 0, 1, '', '', '', '', ''),
(47, 'BLACKED First Interracial For Petite Teen Kristen Scott', 'blacked-first-interracial-for-petite-teen-kristen-scott', 'BLACKED First Interracial For Petite Teen Kristen Scott', '', 1, 1, 'http://www.xvideos.com/video22573507/channel/0/blacked_first_interracial_for_petite_teen_kristen_scott', 'http://img-hw.xvideos.com/videos/thumbsll/07/0b/f8/070bf8b88323c46265f83ec827290b39/070bf8b88323c46265f83ec827290b39.25.jpg', 1, 0, '', 0, '2016-07-22 08:49:32', '2016-07-22 08:49:32', 1, 0, 1, 0, 1, '', '', '', '', ''),
(48, 'Twerking Creampie HD', 'twerking-creampie-hd', 'Twerking Creampie HD', '', 1, 1, 'http://www.xvideos.com/video22608651/channel/0/twerking_creampie_hd', 'http://img100-651.xvideos.com/videos/thumbsll/60/8a/01/608a013598d31b77327e81568d963475/608a013598d31b77327e81568d963475.15.jpg', 1, 0, '', 0, '2016-07-22 08:49:43', '2016-07-22 08:49:43', 1, 0, 1, 0, 1, '', '', '', '', ''),
(49, 'Brazzers - Monique Alexander gets some BBC', 'brazzers-monique-alexander-gets-some-bbc', 'Brazzers - Monique Alexander gets some BBC', '', 1, 1, 'http://www.xvideos.com/video22677567/channel/0/brazzers_-_monique_alexander_gets_some_bbc', 'http://img-hw.xvideos.com/videos/thumbsll/5e/00/7c/5e007cfaa10e54dcfbffb15b21817b95/5e007cfaa10e54dcfbffb15b21817b95.15.jpg', 1, 0, '', 0, '2016-07-22 08:49:59', '2016-07-22 08:49:59', 1, 0, 1, 0, 1, '', '', '', '', ''),
(50, 'ExxxtraSmall - Super Hot Girl Fucked With Rollerblades On', 'exxxtrasmall-super-hot-girl-fucked-with-rollerblades-on', 'ExxxtraSmall - Super Hot Girl Fucked With Rollerblades On', '', 2, 5, 'http://www.xvideos.com/video22576893/channel/0/exxxtrasmall_-_super_hot_girl_fucked_with_rollerblades_on', 'http://img-l3.xvideos.com/videos/thumbsll/4b/b1/0f/4bb10f4bd4c722c39eae70fa65a98f65/4bb10f4bd4c722c39eae70fa65a98f65.28.jpg', 1, 0, '', 0, '2016-07-22 08:50:09', '2016-07-22 08:50:09', 1, 0, 1, 0, 1, '', '', '', '', ''),
(51, 'Pawn A Bearded Dragon For A White Anaconda', 'pawn-a-bearded-dragon-for-a-white-anaconda', 'Pawn A Bearded Dragon For A White Anaconda', '', 1, 1, 'http://www.xvideos.com/video22657761/channel/0/pawn_a_bearded_dragon_for_a_white_anaconda', 'http://img-l3.xvideos.com/videos/thumbsll/15/7e/32/157e32cb5efe5e92f5d83007c8e83d4e/157e32cb5efe5e92f5d83007c8e83d4e.23.jpg', 1, 0, '', 0, '2016-07-22 08:50:20', '2016-07-22 08:50:20', 1, 0, 1, 0, 1, '', '', '', '', ''),
(52, 'Bree Haze Gets DP&#039;d by big black cocks', 'bree-haze-gets-dp039d-by-big-black-cocks', 'Bree Haze Gets DP&#039;d by big black cocks', '', 2, 5, 'http://www.xvideos.com/video22630653/channel/0/bree_haze_gets_dp_d_by_big_black_cocks', 'http://img-l3.xvideos.com/videos/thumbsll/90/40/ad/9040adaca2dcf7c01141a09fb2ead552/9040adaca2dcf7c01141a09fb2ead552.15.jpg', 1, 0, '', 0, '2016-07-22 08:50:31', '2016-07-22 08:50:31', 1, 0, 1, 0, 1, '', '', '', '', ''),
(53, 'PunishTeens- Escort Teen Gets A Rough and Kinky Fuck', 'punishteens-escort-teen-gets-a-rough-and-kinky-fuck', 'PunishTeens- Escort Teen Gets A Rough and Kinky Fuck', '', 1, 2, 'http://www.xvideos.com/video22633723/channel/0/punishteens-_escort_teen_gets_a_rough_and_kinky_fuck', 'http://img-hw.xvideos.com/videos/thumbsll/e0/1f/9e/e01f9ecdddef06eb1de0c1d48f0b301e/e01f9ecdddef06eb1de0c1d48f0b301e.3.jpg', 1, 0, '', 0, '2016-07-22 08:50:44', '2016-07-22 08:50:44', 1, 0, 1, 0, 1, '', '', '', '', ''),
(54, 'Stockings teen cum pov', 'stockings-teen-cum-pov', 'Stockings teen cum pov', '', 2, 5, 'http://www.xvideos.com/video22636245/channel/0/stockings_teen_cum_pov', 'http://img-hw.xvideos.com/videos/thumbsll/79/8e/f7/798ef7ba85602231ad37182a56b232ff/798ef7ba85602231ad37182a56b232ff.15.jpg', 1, 0, '', 0, '2016-07-22 08:50:56', '2016-07-22 08:50:56', 1, 0, 1, 0, 1, '', '', '', '', ''),
(55, 'A Day In India', 'a-day-in-india', 'A Day In India', '', 3, 4, 'http://www.xvideos.com/video22636169/channel/0/a_day_in_india', 'http://img-l3.xvideos.com/videos/thumbsll/e9/00/17/e900173bbf8c125abcc8cb0d4365c872/e900173bbf8c125abcc8cb0d4365c872.26.jpg', 1, 0, '', 0, '2016-07-22 08:51:09', '2016-07-22 08:51:09', 1, 0, 1, 0, 1, '', '', '', '', ''),
(56, 'FamilyStrokes- Step Brother and Sister Sneak Fuck Next to MOM', 'familystrokes-step-brother-and-sister-sneak-fuck-next-to-mom', 'FamilyStrokes- Step Brother and Sister Sneak Fuck Next to MOM', '', 3, 4, 'http://www.xvideos.com/video22576837/channel/0/familystrokes-_step_brother_and_sister_sneak_fuck_next_to_mom', 'http://img100-837.xvideos.com/videos/thumbsll/7f/23/48/7f23483e217b01d2daa86b2edceb2d49/7f23483e217b01d2daa86b2edceb2d49.5.jpg', 1, 0, '', 0, '2016-07-22 08:51:20', '2016-07-22 08:51:20', 1, 0, 1, 0, 1, '', '', '', '', ''),
(57, 'european teen casting compilation', 'european-teen-casting-compilation', 'european teen casting compilation', '', 3, 4, 'http://www.xvideos.com/video22614157/channel/0/european_teen_casting_compilation', 'http://img-hw.xvideos.com/videos/thumbsll/bf/fe/26/bffe2689b643452fae78b8b18fb4f334/bffe2689b643452fae78b8b18fb4f334.15.jpg', 1, 0, '', 0, '2016-07-22 08:51:32', '2016-07-22 08:51:32', 1, 0, 1, 0, 1, '', '', '', '', ''),
(58, 'Passion-HD - Anal Beads and cock make Naomi Nevena cum hard', 'passion-hd-anal-beads-and-cock-make-naomi-nevena-cum-hard', 'Passion-HD - Anal Beads and cock make Naomi Nevena cum hard', '', 3, 4, 'http://www.xvideos.com/video22659659/channel/0/passion-hd_-_anal_beads_and_cock_make_naomi_nevena_cum_hard', 'http://img-l3.xvideos.com/videos/thumbsll/3e/dc/70/3edc70b3254545948c039d443d3e75b4/3edc70b3254545948c039d443d3e75b4.15.jpg', 1, 0, '', 0, '2016-07-22 08:51:44', '2016-07-22 08:51:44', 1, 0, 1, 0, 1, '', '', '', '', ''),
(59, 'Best Ruined Orgasm Cumshot Compilation', 'best-ruined-orgasm-cumshot-compilation', 'Best Ruined Orgasm Cumshot Compilation', '', 3, 4, 'http://www.xvideos.com/video22697465/channel/0/best_ruined_orgasm_cumshot_compilation', 'http://img-hw.xvideos.com/videos/thumbsll/97/1c/38/971c38e60d0791f05e89fd2fb4b793a9/971c38e60d0791f05e89fd2fb4b793a9.26.jpg', 1, 0, '', 0, '2016-07-22 08:51:58', '2016-07-22 08:51:58', 1, 0, 1, 0, 1, '', '', '', '', ''),
(60, 'Dancing Bear house party!', 'dancing-bear-house-party', 'Dancing Bear house party!', '', 2, 5, 'http://www.xvideos.com/video22635737/channel/0/dancing_bear_house_party_', 'http://img100-737.xvideos.com/videos/thumbsll/94/07/cb/9407cb8e0e520f90e676ffe245688b93/9407cb8e0e520f90e676ffe245688b93.26.jpg', 1, 0, '', 0, '2016-07-22 08:52:24', '2016-07-22 08:52:24', 1, 0, 1, 0, 1, '', '', '', '', ''),
(61, 'MILF Makes Son the Man of the House', 'milf-makes-son-the-man-of-the-house', 'MILF Makes Son the Man of the House', '', 2, 5, 'http://www.xvideos.com/video22580067/channel/0/milf_makes_son_the_man_of_the_house', 'http://img-l3.xvideos.com/videos/thumbsll/d4/da/5d/d4da5d8349f8c73fd3cde928efcc651a/d4da5d8349f8c73fd3cde928efcc651a.27.jpg', 1, 0, '', 0, '2016-07-22 08:52:38', '2016-07-22 08:52:38', 1, 0, 1, 0, 1, '', '', '', '', ''),
(62, 'Brazillian maid sucks and fucks', 'brazillian-maid-sucks-and-fucks', 'Brazillian maid sucks and fucks', '', 2, 5, 'http://www.xvideos.com/video22578909/channel/0/brazillian_maid_sucks_and_fucks', 'http://img-hw.xvideos.com/videos/thumbsll/fa/f7/47/faf747887fbceff5af36e55873876e04/faf747887fbceff5af36e55873876e04.6.jpg', 1, 0, '', 0, '2016-07-22 08:52:51', '2016-07-22 08:52:51', 1, 0, 1, 0, 1, '', '', '', '', ''),
(63, 'Mofos - Anne Lee  - College Freshman Goes Wil', 'mofos-anne-lee-college-freshman-goes-wil', 'Mofos - Anne Lee  - College Freshman Goes Wil', '', 2, 5, 'http://www.xvideos.com/video22678597/channel/0/mofos_-_anne_lee_-_college_freshman_goes_wil', 'http://img-hw.xvideos.com/videos/thumbsll/b0/f4/02/b0f402aaaf51badc29c5ef1379981294/b0f402aaaf51badc29c5ef1379981294.16.jpg', 1, 0, '', 0, '2016-07-22 08:53:03', '2016-07-22 08:53:03', 1, 0, 1, 0, 1, '', '', '', '', ''),
(64, 'Unbelievable MONSTER Huge Tits in Hard Action', 'unbelievable-monster-huge-tits-in-hard-action', 'Unbelievable MONSTER Huge Tits in Hard Action', '', 2, 5, 'http://www.xvideos.com/video22577141/channel/0/unbelievable_monster_huge_tits_in_hard_action', 'http://img100-141.xvideos.com/videos/thumbsll/d8/e5/18/d8e518afebde0c28a251a916454281db/d8e518afebde0c28a251a916454281db.18.jpg', 1, 0, '', 0, '2016-07-22 08:53:13', '2016-07-22 08:53:13', 1, 0, 1, 0, 1, '', '', '', '', ''),
(65, 'Skinny teen cum sprayed', 'skinny-teen-cum-sprayed', 'Skinny teen cum sprayed', '', 2, 5, 'http://www.xvideos.com/video22603677/channel/0/skinny_teen_cum_sprayed', 'http://img-hw.xvideos.com/videos/thumbsll/91/cd/d0/91cdd0aeb1be03a2ee5814823f989c1c/91cdd0aeb1be03a2ee5814823f989c1c.15.jpg', 1, 0, '', 0, '2016-07-22 08:53:24', '2016-07-22 08:53:24', 1, 0, 1, 0, 1, '', '', '', '', ''),
(66, 'Busty BBW Doctor Sashaa Juggs Makes House Calls', 'busty-bbw-doctor-sashaa-juggs-makes-house-calls', 'Busty BBW Doctor Sashaa Juggs Makes House Calls', '', 1, 1, 'http://www.xvideos.com/video22578667/channel/0/busty_bbw_doctor_sashaa_juggs_makes_house_calls', 'http://img100-667.xvideos.com/videos/thumbsll/bd/e6/a2/bde6a2757a888145e692394309b2df04/bde6a2757a888145e692394309b2df04.15.jpg', 1, 0, '', 0, '2016-07-22 08:53:42', '2016-07-22 08:53:42', 1, 0, 1, 0, 1, '', '', '', '', ''),
(67, 'Amazing 69 in front of a mirror!', 'amazing-69-in-front-of-a-mirror', 'Amazing 69 in front of a mirror!', '', 1, 1, 'http://www.xvideos.com/video22601433/channel/0/amazing_69_in_front_of_a_mirror_', 'http://img-hw.xvideos.com/videos/thumbsll/b5/f8/95/b5f895be92a11531b41a54f37f6bea60/b5f895be92a11531b41a54f37f6bea60.15.jpg', 1, 0, '', 0, '2016-07-22 08:53:54', '2016-07-22 08:53:54', 1, 0, 1, 0, 1, '', '', '', '', ''),
(68, 'Rockstar fucks the hell out of her virgin fan - Jade Nile and Rebel Lynn', 'rockstar-fucks-the-hell-out-of-her-virgin-fan-jade-nile-and-rebel-lynn', 'Rockstar fucks the hell out of her virgin fan - Jade Nile and Rebel Lynn', '', 1, 1, 'http://www.xvideos.com/video22577763/channel/0/rockstar_fucks_the_hell_out_of_her_virgin_fan_-_jade_nile_and_rebel_lynn', 'http://img-l3.xvideos.com/videos/thumbsll/61/e5/89/61e5896c1bb9da8fc7c4762783313e6c/61e5896c1bb9da8fc7c4762783313e6c.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:06', '2016-07-22 08:54:06', 1, 0, 1, 0, 1, '', '', '', '', ''),
(69, 'Gorgeous Teen Outdoor Fuck And Sucking Cock From Step Dad', 'gorgeous-teen-outdoor-fuck-and-sucking-cock-from-step-dad', 'Gorgeous Teen Outdoor Fuck And Sucking Cock From Step Dad', '', 1, 1, 'http://www.xvideos.com/video22577681/channel/0/gorgeous_teen_outdoor_fuck_and_sucking_cock_from_step_dad', 'http://img100-681.xvideos.com/videos/thumbsll/8c/8d/86/8c8d86075a0875751fe2ee22b45f8bc7/8c8d86075a0875751fe2ee22b45f8bc7.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:19', '2016-07-22 08:54:19', 1, 0, 1, 0, 1, '', '', '', '', ''),
(70, 'Hot tiny babe Lou masturbating', 'hot-tiny-babe-lou-masturbating', 'Hot tiny babe Lou masturbating', '', 1, 1, 'http://www.xvideos.com/video22593801/channel/0/hot_tiny_babe_lou_masturbating', 'http://img-hw.xvideos.com/videos/thumbsll/bd/5e/c0/bd5ec07bf90942cb7dce0ebc90ee9c04/bd5ec07bf90942cb7dce0ebc90ee9c04.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:30', '2016-07-22 08:54:30', 1, 0, 1, 0, 1, '', '', '', '', ''),
(71, 'Busty Mom Ava Addams and Abella Danger', 'busty-mom-ava-addams-and-abella-danger', 'Busty Mom Ava Addams and Abella Danger', '', 2, 5, 'http://www.xvideos.com/video22629503/channel/0/busty_mom_ava_addams_and_abella_danger', 'http://img100-503.xvideos.com/videos/thumbsll/8f/84/67/8f84677d07cbee0651b131b42e3d589d/8f84677d07cbee0651b131b42e3d589d.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:43', '2016-07-22 08:54:43', 1, 0, 1, 0, 1, '', '', '', '', ''),
(72, 'Aletta Ocean tries BBC Anal - Cuckold Sessions', 'aletta-ocean-tries-bbc-anal-cuckold-sessions', 'Aletta Ocean tries BBC Anal - Cuckold Sessions', '', 1, 1, 'http://www.xvideos.com/video22575281/channel/0/aletta_ocean_tries_bbc_anal_-_cuckold_sessions', 'http://img100-281.xvideos.com/videos/thumbsll/df/df/7c/dfdf7c0707c7dc4c1e6a5bacfa16b64c/dfdf7c0707c7dc4c1e6a5bacfa16b64c.8.jpg', 1, 0, '', 0, '2016-07-22 08:54:57', '2016-07-22 08:54:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(73, 'Cum-shots in the Club', 'cum-shots-in-the-club', 'Cum-shots in the Club', '', 1, 1, 'http://www.xvideos.com/video22579357/channel/0/cum-shots_in_the_club', 'http://img-l3.xvideos.com/videos/thumbsll/fa/44/ef/fa44effb40bd78de84d155f87e2f482a/fa44effb40bd78de84d155f87e2f482a.16.jpg', 1, 0, '', 0, '2016-07-22 08:55:16', '2016-07-22 08:55:16', 1, 0, 1, 0, 1, '', '', '', '', ''),
(74, 'Give that crazy woman DICK!', 'give-that-crazy-woman-dick', 'Give that crazy woman DICK!', '', 1, 1, 'http://www.xvideos.com/video22658363/channel/0/give_that_crazy_woman_dick_', 'http://img100-363.xvideos.com/videos/thumbsll/f6/db/05/f6db05821ce1d2ad5339a0aa5f586c76/f6db05821ce1d2ad5339a0aa5f586c76.2.jpg', 1, 0, '', 0, '2016-07-22 08:55:28', '2016-07-22 08:55:28', 1, 0, 1, 0, 1, '', '', '', '', ''),
(75, 'CFNMTEENS- Step-Sis Seduces Brother', 'cfnmteens-step-sis-seduces-brother', 'CFNMTEENS- Step-Sis Seduces Brother', '', 1, 2, 'http://www.xvideos.com/video22577017/channel/0/cfnmteens-_step-sis_seduces_brother', 'http://img100-017.xvideos.com/videos/thumbsll/6d/f1/62/6df16249f8f1c825421436d3f43e9c20/6df16249f8f1c825421436d3f43e9c20.4.jpg', 1, 0, '', 0, '2016-07-22 08:56:57', '2016-07-22 08:56:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(76, 'Teens Analyzed - Blindfolded sex and first anal', 'teens-analyzed-blindfolded-sex-and-first-anal', 'Teens Analyzed - Blindfolded sex and first anal', '', 2, 5, 'http://www.xvideos.com/video22649991/channel/0/teens_analyzed_-_blindfolded_sex_and_first_anal', 'http://img-hw.xvideos.com/videos/thumbsll/7e/70/10/7e7010d1b22686fdf15e46cca40a8b2a/7e7010d1b22686fdf15e46cca40a8b2a.15.jpg', 1, 0, '', 0, '2016-07-22 08:57:25', '2016-07-22 08:57:25', 1, 0, 1, 0, 1, '', '', '', '', '');

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
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
