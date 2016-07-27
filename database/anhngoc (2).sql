-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 07:16 PM
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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` tinyint(4) NOT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `is_hot`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Cuộc chiến khốc liệt ở nhóm di động 4 triệu tại Việt Nam', 'cuoc-chien-khoc-liet-o-nhom-di-dong-4-trieu-tai-viet-nam', 'Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam', 'Oppo, Samsung là hai tên tuổi thống trị phân khúc này, trong khi trước đó vài năm, Nokia và các tên tuổi lớn chiếm giữ ngôi vị.', '2016/07/24/oppo-vs-samsung-1469342801.JPG', 1, '<p>Trong khi d&ograve;ng cao cấp dần trở th&agrave;nh cuộc đua song m&atilde; giữa Samsung v&agrave; Apple, ph&acirc;n kh&uacute;c gi&aacute; thấp ng&agrave;y c&agrave;ng trở n&ecirc;n khốc liệt hơn. Smartphone ng&agrave;y c&agrave;ng phổ biến, gi&aacute; thiết bị ng&agrave;y c&agrave;ng rẻ hơn, theo đ&oacute; cấu h&igrave;nh, thiết kế được c&aacute;c nh&agrave; sản xuất ch&uacute; trọng.</p>\r\n\r\n<p>Ở mức dưới 4 triệu, smartphone ng&agrave;y c&agrave;ng phong ph&uacute;, thay thế dần điện thoại cơ bản, những t&ecirc;n tuổi mới xuất hiện nhắm v&agrave;o ph&acirc;n kh&uacute;c n&agrave;y, đe dọa thế qu&acirc;n b&igrave;nh nhiều năm qua.</p>\r\n\r\n<h3>&Ocirc;ng lớn teo t&oacute;p, t&ecirc;n tuổi mới l&ecirc;n ng&ocirc;i</h3>\r\n\r\n<p>B&aacute;o c&aacute;o của IDC cho thấy, chỉ t&iacute;nh tới qu&yacute; II/2015, 51% điện thoại b&aacute;n ra tại Việt Nam l&agrave; smartphone, tương đương khoảng 3,3 triệu chiếc với gi&aacute; trị l&ecirc;n đến 607 triệu USD, v&agrave; con số c&oacute; dấu hiệu tăng so với thời điểm trước đ&oacute;.</p>\r\n\r\n<p>Thống k&ecirc; từ FPT Shop, trong năm 2015, tỷ lệ b&aacute;n ra giữa điện thoại cơ bản v&agrave; smartphone tại chuỗi cửa h&agrave;ng n&agrave;y l&agrave; 4:6, trong đ&oacute; c&aacute;c d&ograve;ng smartphone b&aacute;n chạy c&oacute; 7/10 sản phẩm thuộc ph&acirc;n kh&uacute;c từ 3-6 triệu đồng.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/wohasku/2016_07_21/oppo_in_vietnam.JPG" style="height:478px; width:660px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Oppo tăng trưởng mạnh từ khi v&agrave;o Việt Nam. Ảnh:&nbsp;<em><strong>Duy T&iacute;n.</strong></em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Do đ&oacute;, chỉ trong v&ograve;ng khoảng 2 năm, h&agrave;ng loạt t&ecirc;n tuổi tiến v&agrave;o ph&acirc;n kh&uacute;c n&agrave;y. Khoảng 1 năm trước, thị trường gi&aacute; rẻ khoảng dưới 4 triệu l&agrave; s&acirc;n chơi ch&iacute;nh của Samsung với c&aacute;c sản phẩm như Galaxy Grand Prime, Core Prime, Galaxy J1 c&ugrave;ng Microsoft với Lumia 430, 530.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của IDC, thời điểm năm 2014, Samsung v&agrave; Microsoft chiếm lần lượt 30,2% v&agrave; 26,4% thị phần ph&acirc;n kh&uacute;c n&agrave;y. Phần c&ograve;n lại được chia đều cho h&agrave;ng chục t&ecirc;n tuổi, đ&aacute;ng kể nhất l&agrave; Oppo, Asus vừa bước v&agrave;o thị trường, HTC, Mobiistar, Sony đồng hạng, nhưng cũng chỉ được v&agrave;i phần trăm.</p>\r\n\r\n<p>Thế nhưng, b&aacute;o c&aacute;o mới nhất từ GfK v&agrave;o th&aacute;ng 5/2016 cho thấy những thay đổi mạnh mẽ của ph&acirc;n kh&uacute;c n&agrave;y. Samsung c&oacute; bước tăng trưởng nhẹ l&ecirc;n 34,7%, đ&aacute;ng ch&uacute; &yacute;, Microsoft sụt giảm nghi&ecirc;m trọng, chỉ c&ograve;n 4,7%.</p>\r\n\r\n<p>Trong cơn ng&atilde; ngựa của c&aacute;c đại gia, chứng kiến c&uacute; vươn l&ecirc;n ngoạn mục của Oppo, từ 7% của năm 2014, thương hiệu n&agrave;y đ&atilde; chiếm đến 21,8% thị phần dưới 4 triệu trong th&aacute;ng 5/2016.</p>\r\n\r\n<p>Trong buổi gặp gỡ b&aacute;o ch&iacute; tại TP HCM, đại diện Oppo cho biết, khoảng cuối 2014, họ đ&atilde; may mắn gi&agrave;nh được 25% thị phần nh&oacute;m 2-4 triệu đồng với phi&ecirc;n bản Neo. Thế hệ Neo 3 ra mắt một năm sau đ&oacute; đạt 400.000 m&aacute;y (gấp 4 lần bản đầu). D&ograve;ng di động n&agrave;y l&agrave; &ldquo;c&ocirc;ng thần&quot; gi&uacute;p họ tăng trưởng, n&acirc;ng thị phần 2015 l&ecirc;n tr&ecirc;n 15%, trong đ&oacute; nh&oacute;m 2-4 triệu họ chiếm tới 41,9% to&agrave;n thị trường, 600.000 bản Neo 5 đ&atilde; đến tay người d&ugrave;ng, theo GfK.</p>\r\n\r\n<p>N&oacute;i với&nbsp;<em>Zing.vn</em>, anh Trần Nguy&ecirc;n Trực, ng&agrave;nh h&agrave;ng điện thoại của Thế Giới Di Động cho biết, s&acirc;n chơi ch&iacute;nh trong nh&oacute;m n&agrave;y l&agrave; cuộc đối đầu song m&atilde;: Oppo v&agrave; Samsung. Kh&ocirc;ng chỉ trong mức 4 triệu, hầu hết c&aacute;c model của hai t&ecirc;n tuổi n&agrave;y cũng chiếm giữ c&aacute;c vị tr&iacute; b&aacute;n chạy nhất to&agrave;n thị trường. Ng&ocirc;i sao trong nh&oacute;m n&agrave;y l&agrave; Oppo Neo 5, Neo 7, Galaxy J5, A5. Trong đ&oacute;, c&aacute;c vị tr&iacute; đầu bảng li&ecirc;n tục được thay phi&ecirc;n.</p>\r\n\r\n<p>&ldquo;Ch&iacute;nh những t&ecirc;n tuổi mới thay đổi cuộc chơi, khiến thị trường chuyển biến mạnh hơn&rdquo;, anh Ng&ocirc; Duy B&aacute;, quản l&yacute; một cửa h&agrave;ng tr&ecirc;n đường 3/2, quận 10, TP HCM cho biết. C&aacute;c thiết kế từ Oppo, Asus, Xiaomi hay cuộc chạy đua về cấu h&igrave;nh đ&atilde; khiến Samsung, Sony, LG phải cật lực thay đổi.</p>\r\n\r\n<p>Chỉ trong v&ograve;ng nửa đầu năm 2016, h&agrave;ng loạt t&ecirc;n tuổi vừa quen vừa lạ tiếp tục gia nhập thị trường Việt Nam như Flash, Gionee, Intex, Coolpad&hellip; Tất cả khiến cho ph&acirc;n kh&uacute;c n&agrave;y trở n&ecirc;n s&ocirc;i động.</p>\r\n\r\n<h3>Quảng c&aacute;o mạnh, đ&aacute;nh v&agrave;o kh&aacute;ch h&agrave;ng mới</h3>\r\n\r\n<p>Kh&ocirc;ng kh&oacute; để thấy, nh&oacute;m điện thoại dưới 4 triệu chủ yếu được ưa chuộng bởi những người d&ugrave;ng mới, lần đầu biết đến smartphone, để phục vụ c&aacute;c nhu cầu giải tr&iacute;.</p>\r\n\r\n<p>Theo anh Trần Nguy&ecirc;n Trực, đặc điểm chung người d&ugrave;ng nh&oacute;m n&agrave;y l&agrave; thu nhập ở mức trung b&igrave;nh, hầu hết l&agrave; vừa chuyển đổi từ điện thoại phổ th&ocirc;ng qua, t&igrave;m kiếm gi&aacute; trị về cấu h&igrave;nh, t&iacute;nh năng v&agrave; gi&aacute; tốt. Họ l&agrave; sinh vi&ecirc;n, học sinh, c&ocirc;ng nh&acirc;n, người d&ugrave;ng trẻ. Do đ&oacute;, c&aacute;c nhu cầu được đ&aacute;p ứng ở mức cơ bản nhất, chưa đi s&acirc;u nhiều về t&iacute;nh năng.</p>\r\n\r\n<p>Trong khi đ&oacute;, anh Lạc Huy, đại diện hệ thống CellphoneS cho rằng &ldquo;đ&ocirc;ng người mua v&agrave; dễ b&aacute;n, c&aacute;c h&atilde;ng kh&ocirc;ng cần qu&aacute; đầu tư về thiết kế hay t&iacute;nh năng, miễn c&oacute; th&ocirc;ng số cao l&agrave; sẽ b&aacute;n được, do kh&aacute;ch h&agrave;ng ở ph&acirc;n kh&uacute;c n&agrave;y đ&ograve;i hỏi &iacute;t&rdquo;.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cuoc chien khoc liet o nhom di dong 4 trieu tai Viet Nam hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/wohasku/2016_07_21/oppo_vs_samsung.JPG" style="height:440px; width:660px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cuộc chiến mạnh v&igrave; gạo, bạo v&igrave; tiền trong chi ti&ecirc;u quảng c&aacute;o của Oppo v&agrave; Samsung. Ảnh:&nbsp;<strong><em>Khương Nha.</em></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Tuy vậy, sức n&oacute;ng của thị trường khiến c&aacute;c h&atilde;ng đua chen nhau tăng độ hấp dẫn cho sản phẩm, nếu như 1-2 năm trước, điện thoại dưới 4 triệu được gắn với vỏ nhựa, thiết kế xấu, cấu h&igrave;nh vừa phải th&igrave; hiện tại, kh&ocirc;ng kh&oacute; t&igrave;m được những sản phẩm nguy&ecirc;n khối, kim loại, cấu h&igrave;nh cao v&agrave; nhiều t&iacute;nh năng như v&acirc;n tay, camera tốt vốn trước đ&acirc;y chỉ c&oacute; tr&ecirc;n d&ograve;ng cao cấp.</p>\r\n\r\n<p>Điều n&agrave;y dẫn đến việc người d&ugrave;ng &ldquo;bội thực&rdquo; c&aacute;c sản phẩm gi&aacute; rẻ, dễ dẫn đến t&igrave;nh trạng &ldquo;loay hoay&rdquo; khi mua thiết bị, nhất l&agrave; với nh&oacute;m người d&ugrave;ng đặc th&ugrave; kh&ocirc;ng r&agrave;nh rẽ về c&ocirc;ng nghệ.</p>\r\n\r\n<p>Do đ&oacute;, c&aacute;c nh&agrave; ph&acirc;n phối cho rằng chiến lược quảng c&aacute;o sẽ l&agrave; ch&igrave;a kh&oacute;a để thu h&uacute;t người d&ugrave;ng mới, h&atilde;ng n&agrave;o l&agrave;m tốt điều n&agrave;y th&igrave; đại l&yacute; sẽ b&aacute;n tốt, c&ograve;n kh&ocirc;ng chỉ c&oacute; thể b&aacute;n được sản phẩm trong thời gian ngắn.</p>\r\n\r\n<p>Theo nhiều nh&agrave; b&aacute;n lẻ, c&aacute;c chương tr&igrave;nh quảng c&aacute;o đang t&aacute;c động mạnh đến thị hiếu người d&ugrave;ng nh&oacute;m n&agrave;y. Nếu như trước đ&acirc;y, di động cao cấp được ch&uacute; &yacute; để quảng b&aacute;, th&igrave; hiện c&aacute;c video quảng c&aacute;o xuất hiện tr&ecirc;n truyền h&igrave;nh, mạng x&atilde; hội lại tập trung mạnh v&agrave;o nh&oacute;m thấp.</p>\r\n\r\n<p>Tuy vậy, quảng c&aacute;o cũng chỉ l&agrave; bước đầu để b&aacute;n được h&agrave;ng, đến cuối c&ugrave;ng, chất lượng sản phẩm vẫn l&agrave; yếu tố then chốt cho th&agrave;nh c&ocirc;ng của một thương hiệu, theo đại diện của FPT Shop, c&aacute;c h&atilde;ng n&ecirc;n &ldquo;cố gắng x&acirc;y dựng chuỗi gi&aacute; trị bền vững, đối t&aacute;c chiến lược d&agrave;i hạn hơn l&agrave; ch&uacute; trọng qu&aacute; nhiều v&agrave;o chi ph&iacute;, sản phẩm đảm bảo, ch&iacute;nh s&aacute;ch hậu m&atilde;i hợp l&yacute; v&agrave; tr&aacute;ch nhiệm&rdquo;.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia, thị trường di động Việt dự b&aacute;o sẽ tăng th&ecirc;m 20-35% so với 2015. Trong 5 th&aacute;ng đầu 2016, 5,8 triệu điện thoại đ&atilde; đến tay người d&ugrave;ng (1,2 triệu m&aacute;y/th&aacute;ng). Trong đ&oacute;, ph&acirc;n kh&uacute;c 2-4 triệu chiếm gần 40%, Oppo chiếm ⅔ thị phần. C&aacute;c nh&agrave; b&aacute;n lẻ dự đo&aacute;n, ph&acirc;n kh&uacute;c n&agrave;y tiếp tục l&agrave; m&agrave;n song đấu giữa Samsung, Oppo. D&ugrave; vậy, thị trường sẽ phức tạp hơn khi Asus, c&aacute;c t&ecirc;n tuổi mới gia nhập hay c&aacute;c nh&agrave; sản xuất lớn cũng đang dồn lực đ&aacute;nh chiếm.</p>\r\n', '2016-07-24 06:48:22', '2016-07-24 07:14:31', 0, 0, 1, 1, 0, '', '', '', ''),
(2, 'Cửa hàng di động xách tay nhỏ lẻ vẫn sống tốt', 'cua-hang-di-dong-xach-tay-nho-le-van-song-tot', 'Cua hang di dong xach tay nho le van song tot', 'Trước sự bành trướng của các hệ thống bán lẻ di động, nhiều cửa hàng kinh doanh điện thoại nhỏ lẻ theo hướng truyền thống khẳng định họ đang thích nghi tốt với thị trường.', '2016/07/24/cua-hang-di-dong-nho-le-ben-canh-cac-ong-lon-zing-1-1469342942.JPG', 1, '<p>Trong những năm trở lại đ&acirc;y, c&aacute;c chuỗi b&aacute;n lẻ di động tại Việt Nam b&agrave;nh trướng ở khắp mọi trận địa: từ c&aacute;c th&agrave;nh phố lớn đến c&aacute;c v&ugrave;ng n&ocirc;ng th&ocirc;n. Đ&acirc;y được cho l&agrave; một mối nguy lớn d&agrave;nh cho c&aacute;c cửa h&agrave;ng di động truyền thống.</p>\r\n\r\n<p>Theo c&aacute;c số liệu thống k&ecirc;, thị phần thiết bị b&aacute;n ra của c&aacute;c cửa h&agrave;ng nhỏ lẻ chỉ chiếm 25-30%, ri&ecirc;ng hệ thống Thế giới Di động chiếm 35-40%, c&ograve;n lại thuộc về c&aacute;c hệ thống kh&aacute;c. C&aacute;c chuỗi b&aacute;n lẻ dần thay thế c&aacute;c cửa h&agrave;ng di động nhỏ lẻ l&agrave; xu hướng tất yếu tại Việt Nam. Tuy nhi&ecirc;n, một số chủ cửa h&agrave;ng di động nhỏ lẻ cho biết họ đủ khả năng &quot;chống đỡ&quot; c&aacute;c hệ thống lớn.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cua hang di dong xach tay nho le van song tot hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/OFH_oazszstq/2016_07_07/cua_hang_di_dong_nho_le_ben_canh_cac_ong_lon_zing_1.JPG" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nhiều cửa h&agrave;ng nhỏ, lẻ vẫn c&oacute; nguồn thu ổn định trước sự mở rộng quy m&ocirc; của c&aacute;c hệ thống lớn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Anh Ho&agrave;ng Anh Đức, chủ một cửa h&agrave;ng di động chuy&ecirc;n b&aacute;n iPhone x&aacute;ch tay tr&ecirc;n phố H&agrave;ng B&uacute;n, H&agrave; Nội cho biết, anh kh&ocirc;ng hề &ldquo;ngại&rdquo; chạm tr&aacute;n với chuỗi b&aacute;n lẻ: &ldquo;Từ xưa đến nay, người d&ugrave;ng Việt vẫn mua di động x&aacute;ch tay, đặc biệt l&agrave; iPhone. Mỗi hệ thống v&agrave; cửa h&agrave;ng đều c&oacute; ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng kh&aacute;c nhau&rdquo;. Ở c&aacute;c hệ thống lớn, kh&aacute;ch h&agrave;ng c&oacute; thu nhập cao sẵn s&agrave;ng chi ra để trải nghiệm dịch vụ tốt nhất. C&ograve;n ở c&aacute;c cửa h&agrave;ng x&aacute;ch tay, hầu hết người mua kh&aacute; am hiểu về sản phẩm cũng như t&igrave;m c&aacute;ch tiết kiệm chi ph&iacute;.</p>\r\n\r\n<p>Chung nhận định, anh Nguyễn Tiến Trọng - chủ cửa h&agrave;ng chuy&ecirc;n b&aacute;n smartphone Android x&aacute;ch tay tr&ecirc;n phố Trương Định, H&agrave; Nội cho biết: &ldquo;C&oacute; model mới ra mắt l&agrave; cửa h&agrave;ng nhập về. Đến khi n&agrave;o nghe ng&oacute;ng biết được ch&iacute;nh h&atilde;ng rục rịch ph&acirc;n phối l&agrave; dừng b&aacute;n. Ngo&agrave;i ra, smartphone cao cấp kh&oacute;a mạng Nhật hay Mỹ cũng rất được ưa chuộng do gi&aacute; th&agrave;nh rẻ hơn rất nhiều sản phẩm ch&iacute;nh h&atilde;ng&rdquo;.</p>\r\n\r\n<p>Anh Đức l&yacute; giải, trong khi hệ thống lớn cần đầu tư v&agrave;o mặt bằng ở những vị tr&iacute; tốt nhất, thiết kế cửa h&agrave;ng, đội ngũ nh&acirc;n vi&ecirc;n được đ&agrave;o tạo b&agrave;i bản th&igrave; cửa h&agrave;ng anh mọi thứ được tối giản nhất c&oacute; thể. Trung b&igrave;nh, một cửa h&agrave;ng thuộc hệ thống cần c&oacute; diện t&iacute;ch 100 m2, 10-20 nh&acirc;n vi&ecirc;n, chưa kể 2 gi&aacute;m s&aacute;t ca v&agrave; quản l&yacute; cửa h&agrave;ng. Mở cửa từ 8h s&aacute;ng đến 10h tối. C&ograve;n c&aacute;c cửa h&agrave;ng x&aacute;ch tay mọi thứ được tối giản nhằm tiết kiệm chi ph&iacute;. Cửa h&agrave;ng chỉ c&oacute; 4 nh&acirc;n vi&ecirc;n, diện t&iacute;ch 30 m2, ở những con phố hạng 2, hạng 3 với gi&aacute; thu&ecirc; rẻ hơn, mỗi người ki&ecirc;m nhiệm nhiều nhiệm vụ, thời gian l&agrave;m việc từ 10h30 đến 8h30&hellip;</p>\r\n\r\n<p>C&aacute;c hệ thống lớn phải đ&agrave;m ph&aacute;n với nh&agrave; ph&acirc;n phối của khu vực để nhập sản phẩm c&oacute; mức chiết khấu tốt trong một thời gian thương thảo kh&aacute; d&agrave;i th&igrave; c&aacute;c cửa h&agrave;ng nhỏ lẻ như anh sẵn s&agrave;ng &ldquo;hớt v&aacute;ng&rdquo; thị trường. Anh Đức kể: &ldquo;Ngay khi iPhone được b&aacute;n ra, cửa h&agrave;ng thu&ecirc; người hoặc trực tiếp sang Australia, Singapore hoặc Hong Kong để mang m&aacute;y về nhanh nhất c&oacute; thể. Tuần đầu ti&ecirc;n khi về, nhiều kh&aacute;ch h&agrave;ng sẵn s&agrave;ng chi ra cao hơn 15-20 triệu đồng để c&oacute; thể sở hữu m&aacute;y sớm. Như thế m&igrave;nh vừa l&agrave;m được thương hiệu, vừa tốc độ hơn nhiều c&aacute;c &ocirc;ng lớn. V&agrave; trong ti&ecirc;u ch&iacute; n&agrave;o đ&oacute;, m&igrave;nh đ&atilde; chiến thắng d&ugrave; thời gian ngắn&rdquo;.</p>\r\n\r\n<p>Về chất lượng sản phẩm, anh Đức nhận định: &ldquo;Ti&ecirc;u chuẩn đầu v&agrave;o của sản phẩm c&ocirc;ng nghệ của Việt Nam c&ograve;n chưa cao bằng c&aacute;c nước ch&acirc;u &Acirc;u như Anh, Ph&aacute;p, Đức hoặc khu vực Trung Đ&ocirc;ng&hellip;&quot;. Đ&acirc;y cũng l&agrave; l&yacute; do m&agrave; những người c&oacute; kinh nghiệm về smartphone thường chọn c&aacute;c sản phẩm x&aacute;ch tay ch&acirc;u &Acirc;u. Tuy nhi&ecirc;n, anh lưu &yacute;, người d&ugrave;ng tr&aacute;nh mua iPhone, iPad c&oacute; xuất xứ từ c&aacute;c nước Trung Đ&ocirc;ng v&igrave; khi b&aacute;n ch&iacute;nh thức tại đ&acirc;y, Apple bị ch&iacute;nh phủ nhiều nước trong khu vực y&ecirc;u cầu tắt c&aacute;c dịch vụ như iMessage v&agrave; Facetime.</p>\r\n\r\n<p>Trao đổi với Zing.vn, nh&acirc;n vi&ecirc;n của một hệ thống vừa b&aacute;n iPhone x&aacute;ch tay v&agrave; ch&iacute;nh h&atilde;ng tại H&agrave; Nội tiết lộ một thống k&ecirc; kh&aacute; bất ngờ: &ldquo;Cứ 10 m&aacute;y ch&iacute;nh h&atilde;ng b&aacute;n ra th&igrave; tỷ lệ trả bảo h&agrave;nh l&agrave; 5-6 m&aacute;y, trong khi m&aacute;y x&aacute;ch tay sửa chữa chỉ ở con số 3. Đ&acirc;y cũng l&agrave; l&yacute; do, iPhone ch&iacute;nh h&atilde;ng thay đổi ch&iacute;nh s&aacute;ch bảo h&agrave;nh. Những lỗi về pin, camera trước, sau, c&aacute;p, nguồn,... chỉ được sửa chữa m&agrave; kh&ocirc;ng được hưởng chế độ 1 đổi 1&rdquo;.</p>\r\n\r\n<p>Anh Nguyễn Xu&acirc;n Dũng sống tại quận Cầu Giấy (H&agrave; Nội) đang chuẩn bị mua iPhone 6S sau gần 3 năm sử dụng 5S. Anh cho biết: &ldquo;D&ugrave;ng iPhone từ thời 3GS, t&ocirc;i vẫn mua tại một cửa h&agrave;ng b&aacute;n m&aacute;y x&aacute;ch tay. Thiết bị hoạt động ổn định lại rẻ hơn m&aacute;y ch&iacute;nh h&atilde;ng c&ugrave;ng cấu h&igrave;nh gần 2 triệu đồng th&igrave; tại sao m&igrave;nh kh&ocirc;ng lựa chọn&rdquo;.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Cua hang di dong xach tay nho le van song tot hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/OFH_oazszstq/2016_07_07/cua_hang_di_dong_tren_pho_thai_ha_zing.JPG" /><a href="http://news.zing.vn/cua-hang-di-dong-xach-tay-nho-le-van-song-tot-post663899.html#slideshow">Ph&oacute;ng to</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c cửa h&agrave;ng tr&ecirc;n những tuyến phố b&aacute;n di động Th&aacute;i H&agrave; vẫn nhộn nhịp kh&aacute;ch mua.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Một l&yacute; do nữa khiến c&aacute;c cửa h&agrave;ng nhỏ lẻ vẫn c&oacute; lượng kh&aacute;ch h&agrave;ng ổn định l&agrave; do họ b&aacute;n cả m&aacute;y cũ, đặc biệt l&agrave; iPhone: &ldquo;C&aacute;c hệ thống lớn kh&ocirc;ng thể l&agrave;m được điều n&agrave;y. Nếu muốn b&aacute;n m&aacute;y đ&atilde; qua sử dụng, chuỗi b&aacute;n lẻ phải x&acirc;y dựng th&ecirc;m một bộ phận t&igrave;m kiếm nguồn h&agrave;ng, thẩm định, test m&aacute;y&hellip;, đội chi ph&iacute; l&ecirc;n qu&aacute; nhiều. Trong khi lượng m&aacute;y l&ocirc; để duy tr&igrave; c&aacute;c cửa h&agrave;ng hệ thống lớn sẽ khiến sai số tốt l&agrave;m ảnh hưởng đến thương hiệu. Hay như việc nguồn cung l&uacute;c thừa l&uacute;c thiếu cũng khiến c&aacute;c hệ thống lớn kh&ocirc;ng d&aacute;m nhảy v&agrave;o. Chỉ cần thị trường l&ecirc;n xuống, biến động l&agrave; hệ thống đ&oacute; &lsquo;m&eacute;o mặt&rsquo; do lượng m&aacute;y nhập về lớn&rdquo;, một chủ cửa h&agrave;ng chuy&ecirc;n b&aacute;n iPhone cũ chia sẻ.</p>\r\n\r\n<p>&ldquo;C&ograve;n với c&aacute;c cửa h&agrave;ng nhỏ, việc nhập một model số lượng &iacute;t, chỉ khoảng 20 m&aacute;y khiến việc kiểm tra dễ hơn, c&oacute; lỗi m&igrave;nh sẽ trả lại ngay nguồn cung hay kh&ocirc;ng lo biến động về tỷ gi&aacute;, cung cầu. Điều n&agrave;y gi&uacute;p giảm g&aacute;nh nặng h&agrave;ng tồn hay khan h&agrave;ng&rdquo;.</p>\r\n\r\n<p>L&yacute; giải h&agrave;ng loạt cửa h&agrave;ng di động nhỏ lẻ đ&oacute;ng cửa trong thời gian qua, anh Đức cho biết: &ldquo;Đ&oacute; l&agrave; ở những giai đoạn b&ugrave;ng nổ của thị trường di động Việt Nam, kinh doanh c&oacute; lời th&igrave; ai cũng sẽ nhảy v&agrave;o. Tuy nhi&ecirc;n, việc b&aacute;n h&agrave;ng kh&ocirc;ng đảm bảo chất lượng, chộp giật hay dịch vụ hậu m&atilde;i kh&ocirc;ng tốt mới l&agrave; nguy&ecirc;n nh&acirc;n khiến nhiều cửa h&agrave;ng đ&oacute;ng cửa hay chuyển hướng kinh doanh, trong khi mọi người mặc định nghĩ rằng đ&oacute; l&agrave; do c&aacute;c &ocirc;ng lớn tham gia v&agrave;o s&acirc;n chơi&rdquo;.</p>\r\n\r\n<p>Ngay như việc thống k&ecirc; về doanh thu v&agrave; thị trường smartphone, c&aacute;c h&atilde;ng ph&acirc;n t&iacute;ch chỉ c&oacute; số liệu từ hệ thống ph&acirc;n phối sản phẩm ch&iacute;nh h&atilde;ng: &ldquo;Đ&oacute; chỉ l&agrave; l&aacute;t cắt mỏng của thị trường di động Việt, họ đ&acirc;u biết thị trường x&aacute;ch tay s&ocirc;i động như thế n&agrave;o&rdquo;.</p>\r\n\r\n<p>Ngo&agrave;i ra, đ&oacute; c&ograve;n l&agrave; b&agrave;i to&aacute;n về marketing v&agrave; truyền th&ocirc;ng. C&aacute;c hệ thống lớn cần chạy c&aacute;c chiến dịch quảng b&aacute; trong thời gian d&agrave;i v&agrave; tần suất lớn nhằm đ&aacute;nh v&agrave;o t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng. &ldquo;C&ograve;n cửa h&agrave;ng nhỏ đ&acirc;u cần bỏ chi ph&iacute; như thế, c&ugrave;ng lắm l&agrave; chi ph&iacute; quảng c&aacute;o tr&ecirc;n Facebook. Hầu hết l&agrave; kh&aacute;ch quen, họ mua một lần an t&acirc;m l&agrave; sẽ truyền miệng nhau đến. Chỉ cần chăm s&oacute;c tập kh&aacute;ch h&agrave;ng đ&oacute; l&agrave; cửa h&agrave;ng c&oacute; lời&rdquo;.</p>\r\n\r\n<p>Trần Tiến</p>\r\n', '2016-07-24 06:49:30', '2016-07-24 07:15:26', 0, 0, 1, 1, 0, '', '', '', ''),
(3, 'Người dùng VN còn một tuần để nâng cấp miễn phí Windows 10', 'nguoi-dung-vn-con-mot-tuan-de-nang-cap-mien-phi-windows-10', 'Nguoi dung VN con mot tuan de nang cap mien phi Windows 10', 'Người sử dụng thiết bị Windows 7 và Windows 8.1 cần nâng cấp lên Windows 10 trước khi kỳ hạn nâng cấp miễn phí kết thúc vào ngày 29/7.', '2016/07/24/windows-1469342999.jpg', 1, '<p>Theo th&ocirc;ng tin mới đ&acirc;y từ Microsoft, khoảng gần một nửa số thiết bị đủ ti&ecirc;u ch&iacute; tại ch&acirc;u &Aacute; đối mặt với nguy cơ bỏ lỡ việc n&acirc;ng cấp l&ecirc;n Windows 10 miễn ph&iacute; trước ng&agrave;y 29/7.</p>\r\n\r\n<p>Theo StarCouter, 48,5% PC trong khu vực hiện vẫn sử dụng Windows 7 hoặc Windows 8.1. Đ&acirc;y l&agrave; 2 nền tảng hợp lệ được n&acirc;ng cấp miễn ph&iacute; l&ecirc;n Windows 10.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Nguoi dung VN con mot tuan de nang cap mien phi Windows 10 hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/Aohuouk/2016_07_23/Windows.jpg" style="height:317px; width:586px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Cũng theo b&aacute;o c&aacute;o của StarCouter, hơn 60% m&aacute;y t&iacute;nh hợp lệ tại Ấn Độ đối mặt với nguy cơ bỏ lỡ cơ hội n&acirc;ng cấp, H&agrave;n Quốc l&agrave; 58,2%, Th&aacute;i Lan gần 57% v&agrave; Philippines l&agrave; 56,4%.</p>\r\n\r\n<p>Microsoft Việt Nam vừa ph&aacute;t đi th&ocirc;ng điệp, khuyến kh&iacute;ch người d&ugrave;ng trong nước n&acirc;ng cấp miễn ph&iacute; l&ecirc;n Windows 10 để trải nghiệm những t&iacute;nh năng mới của nền tảng n&agrave;y.</p>\r\n\r\n<p>Theo lịch tr&igrave;nh, Microsoft sẽ tung ra bản cập nhật Windows mới c&oacute; t&ecirc;n Windows 10 Anniversary Update v&agrave;o ng&agrave;y 2/8, bổ sung 6 t&iacute;nh năng mới bao gồm h&agrave;ng loạt t&iacute;nh năng bảo mật, Windows Ink (đưa t&iacute;nh năng của Windows l&ecirc;n b&uacute;t kỹ thuật số để viết tr&ecirc;n thiết bị như viết tr&ecirc;n giấy), Cortana cải tiến, tăng hiệu năng cho tr&igrave;nh duyệt Edge, trải nghiệm game tốt hơn v&agrave; những t&iacute;nh năng cải tiến cho lớp học hiện đại.</p>\r\n\r\n<p>Theo c&aacute;c khảo s&aacute;t gần đ&acirc;y, Windows 10 đang c&oacute; mặt tr&ecirc;n khoảng 350 triệu thiết bị, đem đến mức độ h&agrave;i l&ograve;ng lớn nhất so với c&aacute;c bản Windows trước đ&acirc;y với hơn 135 tỷ giờ sử dụng cho đến nay.</p>\r\n\r\n<p>Sau ng&agrave;y 29/7, những thiết bị chưa n&acirc;ng cấp sẽ phải mua bản Windows 10 Anniversary Update.</p>\r\n', '2016-07-24 06:50:18', '2016-07-24 07:15:32', 0, 0, 1, 1, 0, '', '', '', ''),
(4, 'Cận cảnh laptop mỏng nhất thế giới vừa về VN', 'can-canh-laptop-mong-nhat-the-gioi-vua-ve-vn', 'Can canh laptop mong nhat the gioi vua ve VN', 'Với độ dày chỉ 10,4 mm, HP Spectre hiện là chiếc laptop mỏng nhất thế giới. Model này tập trung nhiều về thiết kế với kiểu dáng thời trang, hướng đến nhóm khách hàng doanh nhân.', '2016/07/24/hp-spectre-zing11-1469343059.jpg', 1, '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp;Với độ d&agrave;y chỉ 10,4 mm, HP Spectre hiện l&agrave; chiếc laptop mỏng nhất thế giới. Model n&agrave;y tập trung nhiều về thiết kế với kiểu d&aacute;ng thời trang, hướng đến nh&oacute;m kh&aacute;ch h&agrave;ng doanh nh&acirc;n.</p>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 1" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing11.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Spectre l&agrave; mẫu m&aacute;y t&iacute;nh x&aacute;ch tay đầu bảng của HP. M&aacute;y vừa về Việt Nam với gi&aacute; 43 triệu đồng.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 2" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing13.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chiếc laptop mỏng nhất thế giới chỉ d&agrave;y 10,4 mm, nặng 1,11 kg, sử dụng khung nh&ocirc;m v&agrave; mặt đ&aacute;y bằng sợi carbon si&ecirc;u nhẹ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 3" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing14.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tất cả c&aacute;c cổng kết nối đều được dời về cạnh sau để ưu ti&ecirc;n cho độ mỏng của m&aacute;y.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 4" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing15_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Spectre được trang bị 3 cổng USB Type C, trong đ&oacute; c&oacute; 2 cổng hỗ trợ giao tiếp tốc độ cao Thunderbolt.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 5" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing16.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giắc cắm tai nghe được dồn về g&oacute;c tr&aacute;i.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 6" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing7_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>HP cũng trang bị cho Spectre 2 quạt tản nhiệt, c&aacute;c khe tho&aacute;t gi&oacute; được thiết kế theo dạng mang c&aacute;, song song với nhau.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 7" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing3.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Để đạt được độ mỏng ấn tượng n&agrave;y, HP đ&atilde; phải chia đều thỏi pin về 2 b&ecirc;n th&acirc;n m&aacute;y. Spectre sử dụng pin lion, sạc qua cổng USB Type C, c&ocirc;ng nghệ hybrid cho thời gian sử dụng l&ecirc;n đến 9,5 tiếng.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 8" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing17.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>HP Spectre cũng được trang bị cấu h&igrave;nh tốt với m&agrave;n h&igrave;nh 13,3 inch, Full HD. M&aacute;y chạy hệ điều h&agrave;nh&nbsp;Windows 10 Home, chip xử l&yacute; Core i7, RAM 8 GB, ổ cứng 256 GB theo chuẩn PCle cho băng th&ocirc;ng lớn hơn chuẩn SATA th&ocirc;ng thường.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 9" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing19.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phần bản lề được thiết kế k&iacute;n với pitt&ocirc;ng đẩy ph&iacute;a trong khiến m&aacute;y tr&ocirc;ng thời trang hơn nhưng vẫn đảm bảo qu&aacute; tr&igrave;nh gập mở được thỏa m&aacute;i.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 10" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing20.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&agrave;n ph&iacute;m hỗ trợ đ&egrave;n LED, ch&uacute;ng được thiết kế mềm, mỏng v&agrave; &iacute;t g&acirc;y ra tiếng k&ecirc;u, h&agrave;nh tr&igrave;nh ph&iacute;m ngắn, cho tốc độ soạn thảo nhanh.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 11" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/IMG_6701.JPG" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dải loa Bang &amp; Olufsen chia đều về 2 cạnh b&ecirc;n.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 12" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing1_1.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bắt đầu từ Spectre, tất cả những model cao cấp của HP sẽ sử dụng logo mới với thiết k&ecirc; tinh giản v&agrave; sang trọng hơn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="Can canh laptop mong nhat the gioi vua ve VN hinh anh 13" src="http://img.v3.news.zdn.vn/w660/Uploaded/spcwvovd/2016_07_05/HP_Spectre_zing18.jpg" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trong tầm gi&aacute; tr&ecirc;n 40 triệu, HP Spectre sẽ ph&ugrave; hợp hơn với nh&oacute;m kh&aacute;ch h&agrave;ng doanh nh&acirc;n, những người cần 1 laptop c&oacute; thiết kế thời trang, kh&ocirc;ng qu&aacute; ch&uacute; trọng về cấu h&igrave;nh.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2016-07-24 06:51:24', '2016-07-24 07:15:37', 0, 0, 1, 1, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
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

--
-- Dumping data for table `articles_cate`
--

INSERT INTO `articles_cate` (`id`, `name`, `slug`, `alias`, `description`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Tin tức', 'tin-tuc', 'Tin tuc', '', '2016-07-24 06:34:20', '2016-07-24 06:37:09', 0, 0, 1, 0, 'Tin tức', '', '', '');

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
(13, 'Ruru Kashiwagi''s asian blow job leads to cock riding', 'ruru-kashiwagis-asian-blow-job-leads-to-cock-riding', 'Ruru Kashiwagi''s asian blow job leads to cock riding', '', 1, 2, 'http://javhihi.com/movie/ruru-kashiwagi-s-asian-blow-job-leads-to-cock-riding.2037.html', 'http://statics.javhihi.com/images/movies/javhihi.com-ruru-kashiwagi-s-asian-blow-job-leads-to-cock-riding.jpg', 2, 0, '', 0, '2016-07-22 08:23:57', '2016-07-22 08:23:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
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
(68, 'Rockstar fucks the hell out of her virgin fan - Jade Nile and Rebel Lynn', 'rockstar-fucks-the-hell-out-of-her-virgin-fan-jade-nile-and-rebel-lynn', 'Rockstar fucks the hell out of her virgin fan - Jade Nile and Rebel Lynn', '', 1, 1, 'http://www.xvideos.com/video22577763/channel/0/rockstar_fucks_the_hell_out_of_her_virgin_fan_-_jade_nile_and_rebel_lynn', 'http://img-l3.xvideos.com/videos/thumbsll/61/e5/89/61e5896c1bb9da8fc7c4762783313e6c/61e5896c1bb9da8fc7c4762783313e6c.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:06', '2016-07-24 08:39:55', 1, 0, 1, 1, 1, '', '', '', '', ''),
(69, 'Gorgeous Teen Outdoor Fuck And Sucking Cock From Step Dad', 'gorgeous-teen-outdoor-fuck-and-sucking-cock-from-step-dad', 'Gorgeous Teen Outdoor Fuck And Sucking Cock From Step Dad', '', 1, 1, 'http://www.xvideos.com/video22577681/channel/0/gorgeous_teen_outdoor_fuck_and_sucking_cock_from_step_dad', 'http://img100-681.xvideos.com/videos/thumbsll/8c/8d/86/8c8d86075a0875751fe2ee22b45f8bc7/8c8d86075a0875751fe2ee22b45f8bc7.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:19', '2016-07-22 08:54:19', 1, 0, 1, 0, 1, '', '', '', '', ''),
(70, 'Hot tiny babe Lou masturbating', 'hot-tiny-babe-lou-masturbating', 'Hot tiny babe Lou masturbating', '', 1, 1, 'http://www.xvideos.com/video22593801/channel/0/hot_tiny_babe_lou_masturbating', 'http://img-hw.xvideos.com/videos/thumbsll/bd/5e/c0/bd5ec07bf90942cb7dce0ebc90ee9c04/bd5ec07bf90942cb7dce0ebc90ee9c04.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:30', '2016-07-22 08:54:30', 1, 0, 1, 0, 1, '', '', '', '', ''),
(71, 'Busty Mom Ava Addams and Abella Danger', 'busty-mom-ava-addams-and-abella-danger', 'Busty Mom Ava Addams and Abella Danger', '', 2, 5, 'http://www.xvideos.com/video22629503/channel/0/busty_mom_ava_addams_and_abella_danger', 'http://img100-503.xvideos.com/videos/thumbsll/8f/84/67/8f84677d07cbee0651b131b42e3d589d/8f84677d07cbee0651b131b42e3d589d.15.jpg', 1, 0, '', 0, '2016-07-22 08:54:43', '2016-07-22 08:54:43', 1, 0, 1, 0, 1, '', '', '', '', ''),
(72, 'Aletta Ocean tries BBC Anal - Cuckold Sessions', 'aletta-ocean-tries-bbc-anal-cuckold-sessions', 'Aletta Ocean tries BBC Anal - Cuckold Sessions', '', 1, 1, 'http://www.xvideos.com/video22575281/channel/0/aletta_ocean_tries_bbc_anal_-_cuckold_sessions', 'http://img100-281.xvideos.com/videos/thumbsll/df/df/7c/dfdf7c0707c7dc4c1e6a5bacfa16b64c/dfdf7c0707c7dc4c1e6a5bacfa16b64c.8.jpg', 1, 0, '', 0, '2016-07-22 08:54:57', '2016-07-22 08:54:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(73, 'Cum-shots in the Club', 'cum-shots-in-the-club', 'Cum-shots in the Club', '', 1, 1, 'http://www.xvideos.com/video22579357/channel/0/cum-shots_in_the_club', 'http://img-l3.xvideos.com/videos/thumbsll/fa/44/ef/fa44effb40bd78de84d155f87e2f482a/fa44effb40bd78de84d155f87e2f482a.16.jpg', 1, 0, '', 0, '2016-07-22 08:55:16', '2016-07-22 08:55:16', 1, 0, 1, 0, 1, '', '', '', '', ''),
(74, 'Give that crazy woman DICK!', 'give-that-crazy-woman-dick', 'Give that crazy woman DICK!', '', 1, 1, 'http://www.xvideos.com/video22658363/channel/0/give_that_crazy_woman_dick_', 'http://img100-363.xvideos.com/videos/thumbsll/f6/db/05/f6db05821ce1d2ad5339a0aa5f586c76/f6db05821ce1d2ad5339a0aa5f586c76.2.jpg', 1, 0, '', 0, '2016-07-22 08:55:28', '2016-07-22 08:55:28', 1, 0, 1, 0, 1, '', '', '', '', ''),
(75, 'CFNMTEENS- Step-Sis Seduces Brother', 'cfnmteens-step-sis-seduces-brother', 'CFNMTEENS- Step-Sis Seduces Brother', '', 1, 2, 'http://www.xvideos.com/video22577017/channel/0/cfnmteens-_step-sis_seduces_brother', 'http://img100-017.xvideos.com/videos/thumbsll/6d/f1/62/6df16249f8f1c825421436d3f43e9c20/6df16249f8f1c825421436d3f43e9c20.4.jpg', 1, 0, '', 0, '2016-07-22 08:56:57', '2016-07-22 08:56:57', 1, 0, 1, 0, 1, '', '', '', '', ''),
(76, 'Teens Analyzed - Blindfolded sex and first anal', 'teens-analyzed-blindfolded-sex-and-first-anal', 'Teens Analyzed - Blindfolded sex and first anal', '', 2, 5, 'http://www.xvideos.com/video22649991/channel/0/teens_analyzed_-_blindfolded_sex_and_first_anal', 'http://img-hw.xvideos.com/videos/thumbsll/7e/70/10/7e7010d1b22686fdf15e46cca40a8b2a/7e7010d1b22686fdf15e46cca40a8b2a.15.jpg', 1, 0, '', 0, '2016-07-22 08:57:25', '2016-07-22 08:57:25', 1, 0, 1, 0, 1, '', '', '', '', ''),
(77, 'Emiri Aoi dame is screwed by sucked shlong', 'emiri-aoi-dame-is-screwed-by-sucked-shlong', 'Emiri Aoi dame is screwed by sucked shlong', '', 1, 1, 'http://www.xvideos.com/video17635711/emiri_aoi_dame_is_screwed_by_sucked_shlong', 'http://img100-711.xvideos.com/videos/thumbsll/95/db/20/95db207fd190a496bcb35bb2fea3c637/95db207fd190a496bcb35bb2fea3c637.3.jpg', 1, 0, '', 0, '2016-07-23 05:35:38', '2016-07-23 05:35:38', 1, 0, 1, 0, 1, '', '', '', '', ''),
(78, 'Tattooed Asian gf home porn', 'tattooed-asian-gf-home-porn', 'Tattooed Asian gf home porn', '', 1, 1, 'http://www.xvideos.com/video22657085/tattooed_asian_gf_home_porn', 'http://img-hw.xvideos.com/videos/thumbsll/ea/70/a6/ea70a61930edf9d28a1c1d611e8c0e47/ea70a61930edf9d28a1c1d611e8c0e47.15.jpg', 1, 0, '', 0, '2016-07-23 05:38:52', '2016-07-24 08:39:43', 1, 0, 1, 1, 1, '', '', '', '', ''),
(79, 'Minami Itao plays with cock after raw masturbation', 'minami-itao-plays-with-cock-after-raw-masturbation', 'Minami Itao plays with cock after raw masturbation', '', 1, 1, 'http://www.xvideos.com/video13985099/minami_itao_plays_with_cock_after_raw_masturbation', 'http://img100-099.xvideos.com/videos/thumbsll/49/f5/89/49f58923f7995b616c10669f581efccf/49f58923f7995b616c10669f581efccf.28.jpg', 1, 0, '', 0, '2016-07-23 05:39:24', '2016-07-23 05:39:24', 1, 0, 1, 0, 1, '', '', '', '', ''),
(80, 'Phim Sex Viet Nam vo chong dit nhau tu quay', 'phim-sex-viet-nam-vo-chong-dit-nhau-tu-quay', 'Phim Sex Viet Nam vo chong dit nhau tu quay', '', 1, 1, 'http://www.xvideos.com/video20256753/phim_sex_viet_nam_vo_chong_dit_nhau_tu_quay_tuoide.com_', 'http://img-l3.xvideos.com/videos/thumbsll/61/16/65/611665104eb84cd6be108697b1440afc/611665104eb84cd6be108697b1440afc.3.jpg', 1, 0, '', 0, '2016-07-23 16:58:20', '2016-07-24 08:39:36', 1, 0, 1, 1, 1, '', '', '', '', ''),
(85, 'anal teen beautiful rides', 'anal-teen-beautiful-ride1111', 'anal teen beautiful rides', '', 1, 1, 'http://www.xvideos.com/video22008689/anal_teen_beautiful_ride', 'http://img100-689.xvideos.com/videos/thumbsll/da/fc/7d/dafc7dd7f4af55a0ad6c3c8aa12dcc5e/dafc7dd7f4af55a0ad6c3c8aa12dcc5e.15.jpg', 1, 0, '<p><img alt="" src="/uploads/images/20160404-123937-taecyeon-hairstyle_520x698.jpg" style="height:698px; width:520px" /></p>\r\n', 0, '2016-07-24 03:22:30', '2016-07-24 03:22:30', 0, 0, 1, 0, 1, '14 min', '', '', '', '');

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
(1, 'base_url', 'http://nghien.biz', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(5, 'admin_email', 'nghien.biz@gmail.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(113, 'google_analystic', 'UA-78246182-1', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(114, 'facebook_appid', '1704278759791793', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(115, 'google_fanpage', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(130, 'logo', '2016/07/27/logo-1469631467.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(131, 'favicon', '2016/07/27/favicon-1469631470.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(141, 'banner', '2016/07/27/banner-1469632581.png', '2016-07-27 14:37:52', '2016-07-27 15:16:22'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2016-07-27 15:16:22');

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
(2, 'naruto', 'naruto', 'dasg dsgdsg adfsg adfs h', 1, '2016-07-20 00:00:00', '2016-07-20 11:45:23', 1, 1, 1, '', '', '', ''),
(3, 'maria', 'maria', '', 2, '2016-07-24 01:53:51', '2016-07-24 01:53:51', 1, 0, 1, '', '', '', ''),
(4, 'ozawa', 'ozawa', '', 1, '2016-07-24 01:53:57', '2016-07-24 01:53:57', 1, 0, 1, '', '', '', ''),
(5, 'zuki', 'zuki', '', 1, '2016-07-24 01:54:06', '2016-07-24 01:54:06', 1, 0, 1, '', '', '', ''),
(6, 'azumi', 'azumi', '', 1, '2016-07-24 01:54:12', '2016-07-24 01:54:12', 1, 0, 1, '', '', '', ''),
(7, 'movies', 'movies', '', 1, '2016-07-24 01:54:46', '2016-07-24 01:54:46', 1, 0, 1, '', '', '', '');

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
-- Dumping data for table `tag_objects`
--

INSERT INTO `tag_objects` (`tag_id`, `object_id`, `object_type`) VALUES
(1, 85, 1),
(2, 85, 1),
(3, 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andy', 'andy2016@gmail.com', '$2y$10$/vF4N2AKvZub7jnhWpTaWeBoejGkbad5DOx9IRfBTvKqWkzgPuTX6', 1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

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
  ADD PRIMARY KEY (`tag_id`,`object_id`,`object_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `parent_cate`
--
ALTER TABLE `parent_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
