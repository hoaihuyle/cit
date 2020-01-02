-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 08:46 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nesthomemedia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role` int(11) DEFAULT NULL,
  `fullname` text COLLATE utf8_unicode_ci,
  `birthday` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `suburb` text COLLATE utf8_unicode_ci,
  `postcode` decimal(10,0) DEFAULT NULL,
  `city` text COLLATE utf8_unicode_ci,
  `province` text COLLATE utf8_unicode_ci,
  `country` text COLLATE utf8_unicode_ci,
  `phone` decimal(10,0) DEFAULT NULL,
  `fax` decimal(10,0) DEFAULT NULL,
  `gender` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `role`, `fullname`, `birthday`, `email`, `company`, `address`, `suburb`, `postcode`, `city`, `province`, `country`, `phone`, `fax`, `gender`) VALUES
(1, 'admin', 'admin', 0, '', '', 'info@bdata.com.vn', '', '', '', NULL, NULL, NULL, NULL, '0', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `news_id` int(50) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `short_des` text COLLATE utf8_unicode_ci,
  `file_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_video` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(9) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `news_id`, `title`, `short_des`, `file_name`, `link_video`, `note`, `status`, `sort_order`, `timestamp`) VALUES
(1, 0, 'Khách hàng 1', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '2018071695726.jpg', NULL, NULL, NULL, 0, '2018-07-16 07:57:27'),
(2, 0, 'Khách hàng 2', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '2018071695941.jpg', NULL, NULL, NULL, 0, '2018-07-16 07:59:41'),
(3, 0, 'Khách hàng 3', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '20180716100748.jpg', NULL, NULL, NULL, 0, '2018-07-16 08:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `sort_order`, `status`) VALUES
(1, 'VỀ CÔNG TY', NULL, NULL, NULL),
(2, 'TƯ VẤN DỊCH VỤ', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', NULL, NULL),
(3, 'TẠI SAO CHỌN CHÚNG TÔI', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', NULL, NULL),
(4, 'DỰ ÁN ĐÃ LÀM', '<p>Dự&nbsp;&aacute;n&nbsp;đ&atilde; ho&agrave;n th&agrave;nh!</p>\r\n', NULL, NULL),
(5, 'ĐÁNH GIÁ CỦA KHÁCH HÀNG', '<p>Đ&aacute;nh gi&aacute; của kh&aacute;ch h&agrave;ng</p>\r\n', NULL, NULL),
(6, 'GIẢI PHÁP', '<p>Giải ph&aacute;p</p>\r\n', NULL, NULL),
(7, 'DỊCH VỤ', '<p>Dịch vụ</p>\r\n', NULL, NULL),
(8, 'DỰ ÁN', '<p>Dự&nbsp;&aacute;n</p>\r\n', NULL, NULL),
(9, 'KHÁCH HÀNG', '<p>Kh&aacute;ch h&agrave;ng</p>\r\n', NULL, NULL),
(10, 'VỀ CHÚNG TÔI', '<p>Đ&ocirc;i lời về ch&uacute;ng t&ocirc;i</p>\r\n', NULL, NULL),
(11, 'BLOG', '<p>Blog</p>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `short_des` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `files` text COLLATE utf8_unicode_ci,
  `role` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort_order` int(9) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `menu_id`, `title`, `short_des`, `description`, `files`, `role`, `timestamp`, `sort_order`) VALUES
(1, 1, 'NestHome media ', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">NestHome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh.</p>\r\n', '', NULL, '2018-07-06 10:54:21', 0),
(2, 2, 'BrandCare – Giải Pháp Chăm Sóc Thương Hiệu Toàn Diện', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Từ việc đặt t&ecirc;n thương hiệu, thiết kế logo, nhận diện thương hiệu, bao b&igrave; sản phẩm đến giải ph&aacute;p truyền th&ocirc;ng để ra mắt một thương hiệu mới ho&agrave;n hảo.</p>\r\n', '', NULL, '2018-07-06 11:05:47', 0),
(3, 2, 'SME Branding - Giải Pháp Thương Hiệu Cho Doanh Nghiệp Vừa Và Nhỏ', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp vừa v&agrave; nhỏ x&acirc;y dựng thương hiệu đồng nhất th&ocirc;ng qua tất cả c&aacute;c yếu tố từ logo đến nhận diện thương hiệu, profile v&agrave; website.</p>\r\n', '', NULL, '2018-07-09 01:56:41', 0),
(4, 2, 'CIP - Giải Pháp Thiết Kế Thương Hiệu Toàn Diện', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp s&aacute;ng tạo hệ thống nhận diện thương hiệu đồng bộ v&agrave; nhất qu&aacute;n gi&uacute;p quảng b&aacute; h&igrave;nh ảnh thương hiệu tại mọi điểm tiếp x&uacute;c.</p>\r\n', '', NULL, '2018-07-09 01:56:50', 0),
(5, 2, 'CCP - Giải Pháp Truyền Thông Thương Hiệu', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Tạo ra nhận biết thương hiệu hay tăng hiệu quả b&aacute;n h&agrave;ng, giải ph&aacute;p của Nesthome media gi&uacute;p doanh nghiệp tiếp cận với kh&aacute;ch h&agrave;ng mục ti&ecirc;u hiệu quả v&agrave; tiết kiệm chi ph&iacute; nhất.</p>\r\n', '', NULL, '2018-07-09 01:56:59', 0),
(6, 2, 'CBP - Giải Pháp Xây Dựng Thương Hiệu Doanh Nghiệp Toàn Diện', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Đồng h&agrave;nh c&ugrave;ng doanh nghiệp từ kh&acirc;u tư vấn, x&acirc;y dựng chiến lược thương hiệu, s&aacute;ng tạo th&ocirc;ng điệp, thiết kế hệ thống nhận diện đến x&aacute;c lập giải ph&aacute;p truyền th&ocirc;ng thương hiệu.</p>\r\n', '', NULL, '2018-07-09 07:51:58', 0),
(7, 2, 'PLP - Giải Pháp Quảng Bá Thương Hiệu Sản Phẩm Mới', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp chủ động, nhanh ch&oacute;ng đưa sản phẩm mới ra thị trường với h&igrave;nh ảnh thương hiệu s&aacute;ng tạo v&agrave; kế hoạch truyền th&ocirc;ng hiệu quả.</p>\r\n', '', NULL, '2018-07-09 01:57:18', 0),
(8, 2, 'PBP - Giải Pháp Xây Dựng Thương Hiệu Cho Dự Án Mới', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Gi&uacute;p chủ đầu tư định vị thương hiệu cho dự &aacute;n, s&aacute;ng tạo bản sắc thương hiệu sinh động, ấn tượng v&agrave; x&acirc;y dựng kế hoạch truyền th&ocirc;ng tiếp thị hiệu quả cho dự &aacute;n.</p>\r\n', '', NULL, '2018-07-09 01:57:29', 0),
(9, 2, 'DBP – Giải Pháp Truyền Thông Trực Tuyến', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp tận dụng tối đa sức mạnh của c&ocirc;ng nghệ để lan truyền v&agrave; quảng b&aacute; h&igrave;nh ảnh thương hiệu tr&ecirc;n m&ocirc;i trường số v&agrave; internet.</p>\r\n', '', NULL, '2018-07-09 01:57:37', 0),
(10, 3, 'Tại sao chọn chúng tôi', '					<p>Thông tin chưa được cập nhật!</p>\r\n				', '<p style=\"text-align:justify\">Nesthome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh. Nesthome media tự hào đang tạo ra sức mạnh v&agrave; sinh kh&iacute; cho h&agrave;ng ngh&igrave;n thương hi&ecirc;̣u kh&aacute;ch h&agrave;ng qua đ&oacute; nỗ lực g&oacute;p sức m&igrave;nh v&agrave;o sứ mệnh v&igrave; sự ph&aacute;t triển của thương hiệu Việt.</p>\r\n', '', NULL, '2018-07-12 10:45:21', 0),
(11, 4, 'Dự án đã hoàn thành', '										Thông tin về dự án\r\n																				', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/images/sv_5.png\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394828.jpg', NULL, '2018-07-17 02:44:38', 0),
(12, 4, 'Dự án đã hoàn thành', '																									<p>Thông tin chưa được cập nhật!</p>\r\n																				', '<p style=\"text-align:justify\">Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '2018071394837.jpg', NULL, '2018-07-13 09:30:57', 0),
(13, 4, 'Dự án đã hoàn thành', '															<p>Thông tin chưa được cập nhật!</p>\r\n												', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394846.jpg', NULL, '2018-07-13 09:14:25', 0),
(14, 4, 'Dự án đã hoàn thành', '															<p>Thông tin chưa được cập nhật!</p>\r\n												', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394856.jpg', NULL, '2018-07-13 09:14:41', 0),
(15, 4, 'Dự án đã hoàn thành', '															<p>Thông tin chưa được cập nhật!</p>\r\n												', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394907.jpg', NULL, '2018-07-13 09:15:01', 0),
(16, 4, 'Dự án đã hoàn thành', '															<p>Thông tin chưa được cập nhật!</p>\r\n												', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394917.jpg', NULL, '2018-07-13 09:15:15', 0),
(17, 5, 'LÊ GIA ĐỨC', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2018-07-09 02:42:36', 0),
(18, 5, 'LÊ GIA ĐỨC', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2018-07-09 02:43:06', 0),
(19, 5, 'LÊ GIA ĐỨC', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2018-07-09 02:55:54', 0),
(20, 5, 'LÊ GIA ĐỨC', '<p>Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2018-07-10 01:42:46', 0),
(21, 6, 'GIẢI PHÁP XÂY DỰNG THƯƠNG HIỆU TOÀN DIỆN', '					Thông tin chưa được cập nhật!				', '<p style=\"text-align:justify\">Với kinh nghiệm gần 5 năm hoạt động, cung cấp dịch vụ cho hơn 1000+ kh&aacute;ch h&agrave;ng, Nesthome media h&acirc;n hạnh cung cấp giải ph&aacute;p x&acirc;y dựng thương hiệu to&agrave;n diện th&ocirc;ng qua c&aacute;c dịch vụ.</p>\r\n', '', NULL, '2018-07-13 02:16:54', 0),
(22, 7, 'CÁC DỊCH VỤ  THƯƠNG HIỆU TẠI NESTHOME', '					Thông tin chưa được cập nhật!				', '<p style=\"text-align:justify\">Với 10+ năm kinh nghiệm, cung cấp dịch vụ cho hơn 3000+ kh&aacute;ch h&agrave;ng, Sao Kim h&acirc;n hạnh cung cấp giải ph&aacute;p x&acirc;y dựng thương hiệu to&agrave;n diện.</p>\r\n', '', NULL, '2018-07-13 02:17:12', 0),
(23, 8, 'DỰ ÁN ĐÃ THỰC HIỆN', '					Thông tin chưa được cập nhật!				', '<p style=\"text-align:justify\">Với kinh nghiệm hơn 5+ năm hoạt động, cung cấp dịch vụ cho hơn 1000+ kh&aacute;ch h&agrave;ng, Nesthome media h&acirc;n hạnh giới thiệu c&aacute;c dự &aacute;n ti&ecirc;u biểu do ch&uacute;ng t&ocirc;i thực hiện dưới đ&acirc;y.</p>\r\n', '', NULL, '2018-07-13 02:17:26', 0),
(24, 9, 'Khách hàng của chúng tôi', '										Thông tin chưa được cập nhật!								', '<p style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i lu&ocirc;n giao tiếp cởi mở v&agrave; lắng nghe y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để c&oacute; thể đảm bảo thấu hiểu y&ecirc;u cầu s&aacute;ng tạo ngay từ khi mới bắt đầu v&agrave; đảm bảo t&iacute;nh nhất qu&aacute;n trong suốt qu&aacute; tr&igrave;nh thực thi dự &aacute;n.<br />\r\n&nbsp;</p>\r\n', '', NULL, '2018-07-16 07:43:10', 0),
(25, 10, 'ĐÔI LỜI VỀ NESTHOME', '					Thông tin chưa được cập nhật!				', '<p style=\"text-align:justify\">Tạo lợi thế cạnh tranh bền vững bằng việc<br />\r\nx&acirc;y dựng thương hiệu mạnh.</p>\r\n', '', NULL, '2018-07-13 02:17:47', 0),
(26, 11, 'TREND DESIGN LOGO', '															Thông tin chưa được cập nhật!																', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '2018071395042.jpg', NULL, '2018-07-13 07:50:42', 0),
(27, 10, 'Giới thiệu', '																																																																																					Nesthome media																																																																				', '<h3>Nesthome media</h3>\r\n\r\n<p style=\"text-align:justify\">Nesthome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh. Nesthome media tự hào đang tạo ra sức mạnh v&agrave; sinh kh&iacute; cho h&agrave;ng ngh&igrave;n thương hi&ecirc;̣u kh&aacute;ch h&agrave;ng qua đ&oacute; nỗ lực g&oacute;p sức m&igrave;nh v&agrave;o sứ mệnh v&igrave; sự ph&aacute;t triển của thương hiệu Việt.Ch&uacute;ng t&ocirc;i lu&ocirc;n giao tiếp cởi mở v&agrave; lắng nghe y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để c&oacute; thể đảm bảo thấu hiểu y&ecirc;u cầu s&aacute;ng tạo ngay từ khi mới bắt đầu v&agrave; đảm bảo t&iacute;nh nhất qu&aacute;n trong suốt qu&aacute; tr&igrave;nh thực thi dự &aacute;n. Cam kết mang lại những giải ph&aacute;p s&aacute;ng tạo v&agrave; hiệu quả, Nesthome media đồng h&agrave;nh c&ugrave;ng doanh nghiệp x&acirc;y dựng thương hiệu mạnh.</p>\r\n\r\n<h4>Mục ti&ecirc;u</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:500px; width:1500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Chiến lược thương hiệu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Truyền th&ocirc;ng thương hiệu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Quản trị thương hiệu</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />X&acirc;y dựng chiến lược thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Giới thiệu nhận diện thương hiệu mới</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Đ&agrave;o tạo nội bộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />X&aacute;c lập định vị thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Kế hoạch truyền th&ocirc;ng</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Giới thiệu nhận diện thương hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Quy chuẩn kiến tr&uacute;c thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />K&iacute;ch hoạt thương hiệu mới</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Cẩm nang hướng dẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nghi&ecirc;n cứu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nhận diện thương hiệu doanh nghiệp</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nhận diện thương hiệu cửa h&agrave;ng</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu hiện trạng thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Brandname, subrand name</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Posm, Biển bảng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu kh&aacute;ch h&agrave;ng mục ti&ecirc;u</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Logo, slogan, logo subbrand, logo guidelines</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Print Ads</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu đối thủ cạnh tranh</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />T&agrave;i liệu marketing &ndash; b&aacute;n h&agrave;ng</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Direct marketing: mail, email SMS, newsletter v.v&hellip;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Sales Marketing tools</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Event: tradshow, event</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Print ads: Brochure, flyer, poster</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Advertising: Billboard, Online radio, Television</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Multimedia: E &ndash; catalogue, TVC</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h5>\r\n', '', NULL, '2018-07-13 04:05:27', 0),
(28, 11, 'TREND DESIGN LOGO', 'Thông tin chưa được cập nhật!', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '2018071395312.jpg', NULL, '2018-07-13 07:53:12', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
