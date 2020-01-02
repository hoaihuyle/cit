-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 07:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cit_db`
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
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Nhà hàng', ' ', '2019-01-08 10:19:19'),
(2, 'Cafe', '', '2019-01-08 10:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `cate_subcate`
--

CREATE TABLE `cate_subcate` (
  `id_cate` int(11) NOT NULL,
  `id_subcate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cate_subcate`
--

INSERT INTO `cate_subcate` (`id_cate`, `id_subcate`) VALUES
(1, 1),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 5);

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
  `status` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `sort_order`, `status`, `parent`, `slug`) VALUES
(32, 'Tìm việc', '<p>Trang t&igrave;m việc n&acirc;ng cao</p>\r\n', NULL, NULL, 0, 'tim-viec'),
(31, 'Fulltime', NULL, NULL, NULL, 29, 'fulltime'),
(30, 'Parttime', NULL, NULL, NULL, 29, 'parttime'),
(24, 'Trang chủ', '<p>Trang chủ&nbsp; &nbsp;</p>\r\n', NULL, NULL, 0, 'index'),
(25, 'Đăng tin', '<p>Trang d&ugrave;ng để nh&agrave; tuyển dụng đăng tin</p>\r\n', NULL, NULL, 0, 'dang-tin'),
(26, 'Tài khoản', '<p>Trang d&ugrave;ng để quản l&yacute; t&agrave;i khoản</p>\r\n', NULL, NULL, 0, 'tai-khoan'),
(27, 'Nhà tuyển dụng', '<p>T&agrave;i khoản nh&agrave; tuyển dụng</p>\r\n', NULL, NULL, 26, 'nha-tuyen-dung'),
(28, 'Người lao động', '<p>T&agrave;i khoản người lao động</p>\r\n', NULL, NULL, 26, 'nguoi-lao-dong'),
(29, 'Bài đăng', NULL, NULL, NULL, 0, 'bai-dang'),
(33, 'Nhân viên', '<p>Danh s&aacute;ch c&aacute;c nh&acirc;n vi&ecirc;n&nbsp;</p>\r\n', NULL, NULL, 0, 'nhan-vien');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `files` text COLLATE utf8_unicode_ci,
  `role` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort_order` int(9) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_type`, `title`, `description`, `files`, `role`, `timestamp`, `sort_order`) VALUES
(1, 2, 'NestHome media ', '<p style=\"text-align:justify\">NestHome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh.aa</p>\r\n', '2019011474222.jpg', NULL, '2019-01-15 03:55:15', 0),
(2, 3, 'BrandCare – Giải Pháp Chăm Sóc Thương Hiệu Toàn Diện', '<p style=\"text-align:justify\">Từ việc đặt t&ecirc;n thương hiệu, thiết kế logo, nhận diện thương hiệu, bao b&igrave; sản phẩm đến giải ph&aacute;p truyền th&ocirc;ng để ra mắt một thương hiệu mới ho&agrave;n hảo.</p>\r\n', '2019011581654.jpg', NULL, '2019-01-15 07:16:54', 0),
(3, 2, 'SME Branding - Giải Pháp Thương Hiệu Cho Doanh Nghiệp Vừa Và Nhỏ', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp vừa v&agrave; nhỏ x&acirc;y dựng thương hiệu đồng nhất th&ocirc;ng qua tất cả c&aacute;c yếu tố từ logo đến nhận diện thương hiệu, profile v&agrave; website.</p>\r\n', '', NULL, '2019-01-13 04:42:24', 0),
(4, 2, 'CIP - Giải Pháp Thiết Kế Thương Hiệu Toàn Diện', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp s&aacute;ng tạo hệ thống nhận diện thương hiệu đồng bộ v&agrave; nhất qu&aacute;n gi&uacute;p quảng b&aacute; h&igrave;nh ảnh thương hiệu tại mọi điểm tiếp x&uacute;c.</p>\r\n', '', NULL, '2019-01-13 04:44:55', 0),
(5, 2, 'CCP - Giải Pháp Truyền Thông Thương Hiệu', '<p style=\"text-align:justify\">Tạo ra nhận biết thương hiệu hay tăng hiệu quả b&aacute;n h&agrave;ng, giải ph&aacute;p của Nesthome media gi&uacute;p doanh nghiệp tiếp cận với kh&aacute;ch h&agrave;ng mục ti&ecirc;u hiệu quả v&agrave; tiết kiệm chi ph&iacute; nhất.</p>\r\n', '', NULL, '2019-01-13 08:54:49', 0),
(6, 1, 'CBP - Giải Pháp Xây Dựng Thương Hiệu Doanh Nghiệp Toàn Diện', '<p style=\"text-align:justify\">Đồng h&agrave;nh c&ugrave;ng doanh nghiệp từ kh&acirc;u tư vấn, x&acirc;y dựng chiến lược thương hiệu, s&aacute;ng tạo th&ocirc;ng điệp, thiết kế hệ thống nhận diện đến x&aacute;c lập giải ph&aacute;p truyền th&ocirc;ng thương hiệu.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(7, 1, 'PLP - Giải Pháp Quảng Bá Thương Hiệu Sản Phẩm Mới', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp chủ động, nhanh ch&oacute;ng đưa sản phẩm mới ra thị trường với h&igrave;nh ảnh thương hiệu s&aacute;ng tạo v&agrave; kế hoạch truyền th&ocirc;ng hiệu quả.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(8, 2, 'PBP - Giải Pháp Xây Dựng Thương Hiệu Cho Dự Án Mới', '<p style=\"text-align:justify\">Gi&uacute;p chủ đầu tư định vị thương hiệu cho dự &aacute;n, s&aacute;ng tạo bản sắc thương hiệu sinh động, ấn tượng v&agrave; x&acirc;y dựng kế hoạch truyền th&ocirc;ng tiếp thị hiệu quả cho dự &aacute;n.</p>\r\n', '', NULL, '2019-01-11 08:29:40', 0),
(9, 1, 'DBP – Giải Pháp Truyền Thông Trực Tuyến', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp tận dụng tối đa sức mạnh của c&ocirc;ng nghệ để lan truyền v&agrave; quảng b&aacute; h&igrave;nh ảnh thương hiệu tr&ecirc;n m&ocirc;i trường số v&agrave; internet.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(11, 1, 'Dự án đã hoàn thành', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/images/sv_5.png\" style=\"height:256px; width:256px\" /></p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394828.jpg', NULL, '2019-01-11 05:06:54', 0),
(12, 1, 'Dự án đã hoàn thành', '<p style=\"text-align:justify\">Th&ocirc;ng tin chưa được cập nhật!</p>\r\n', '2018071394837.jpg', NULL, '2019-01-11 05:06:54', 0),
(13, 1, 'Dự án đã hoàn thành', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394846.jpg', NULL, '2019-01-11 05:06:54', 0),
(14, 1, 'Dự án đã hoàn thành', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394856.jpg', NULL, '2019-01-11 05:06:54', 0),
(15, 1, 'Dự án đã hoàn thành', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394907.jpg', NULL, '2019-01-11 05:06:54', 0),
(16, 1, 'Dự án đã hoàn thành', '<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3 style=\"text-align:justify\">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p style=\"text-align:justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2018071394917.jpg', NULL, '2019-01-11 05:06:54', 0),
(17, 1, 'LÊ GIA ĐỨC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(18, 1, 'LÊ GIA ĐỨC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(19, 1, 'LÊ GIA ĐỨC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(20, 1, 'LÊ GIA ĐỨC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(21, 1, 'GIẢI PHÁP XÂY DỰNG THƯƠNG HIỆU TOÀN DIỆN', '<p style=\"text-align:justify\">Với kinh nghiệm gần 5 năm hoạt động, cung cấp dịch vụ cho hơn 1000+ kh&aacute;ch h&agrave;ng, Nesthome media h&acirc;n hạnh cung cấp giải ph&aacute;p x&acirc;y dựng thương hiệu to&agrave;n diện th&ocirc;ng qua c&aacute;c dịch vụ.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(22, 1, 'CÁC DỊCH VỤ  THƯƠNG HIỆU TẠI NESTHOME', '<p style=\"text-align:justify\">Với 10+ năm kinh nghiệm, cung cấp dịch vụ cho hơn 3000+ kh&aacute;ch h&agrave;ng, Sao Kim h&acirc;n hạnh cung cấp giải ph&aacute;p x&acirc;y dựng thương hiệu to&agrave;n diện.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(23, 1, 'DỰ ÁN ĐÃ THỰC HIỆN', '<p style=\"text-align:justify\">Với kinh nghiệm hơn 5+ năm hoạt động, cung cấp dịch vụ cho hơn 1000+ kh&aacute;ch h&agrave;ng, Nesthome media h&acirc;n hạnh giới thiệu c&aacute;c dự &aacute;n ti&ecirc;u biểu do ch&uacute;ng t&ocirc;i thực hiện dưới đ&acirc;y.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(24, 1, 'Khách hàng của chúng tôi', '<p style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i lu&ocirc;n giao tiếp cởi mở v&agrave; lắng nghe y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để c&oacute; thể đảm bảo thấu hiểu y&ecirc;u cầu s&aacute;ng tạo ngay từ khi mới bắt đầu v&agrave; đảm bảo t&iacute;nh nhất qu&aacute;n trong suốt qu&aacute; tr&igrave;nh thực thi dự &aacute;n.<br />\r\n&nbsp;</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(25, 1, 'ĐÔI LỜI VỀ NESTHOME', '<p style=\"text-align:justify\">Tạo lợi thế cạnh tranh bền vững bằng việc<br />\r\nx&acirc;y dựng thương hiệu mạnh.</p>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(26, 1, 'TREND DESIGN LOGO', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '2018071395042.jpg', NULL, '2019-01-11 05:06:54', 0),
(27, 1, 'Giới thiệu', '<h3>Nesthome media</h3>\r\n\r\n<p style=\"text-align:justify\">Nesthome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh. Nesthome media tự hào đang tạo ra sức mạnh v&agrave; sinh kh&iacute; cho h&agrave;ng ngh&igrave;n thương hi&ecirc;̣u kh&aacute;ch h&agrave;ng qua đ&oacute; nỗ lực g&oacute;p sức m&igrave;nh v&agrave;o sứ mệnh v&igrave; sự ph&aacute;t triển của thương hiệu Việt.Ch&uacute;ng t&ocirc;i lu&ocirc;n giao tiếp cởi mở v&agrave; lắng nghe y&ecirc;u cầu của kh&aacute;ch h&agrave;ng để c&oacute; thể đảm bảo thấu hiểu y&ecirc;u cầu s&aacute;ng tạo ngay từ khi mới bắt đầu v&agrave; đảm bảo t&iacute;nh nhất qu&aacute;n trong suốt qu&aacute; tr&igrave;nh thực thi dự &aacute;n. Cam kết mang lại những giải ph&aacute;p s&aacute;ng tạo v&agrave; hiệu quả, Nesthome media đồng h&agrave;nh c&ugrave;ng doanh nghiệp x&acirc;y dựng thương hiệu mạnh.</p>\r\n\r\n<h4>Mục ti&ecirc;u</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:500px; width:1500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Chiến lược thương hiệu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Truyền th&ocirc;ng thương hiệu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Quản trị thương hiệu</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />X&acirc;y dựng chiến lược thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Giới thiệu nhận diện thương hiệu mới</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Đ&agrave;o tạo nội bộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />X&aacute;c lập định vị thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Kế hoạch truyền th&ocirc;ng</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Giới thiệu nhận diện thương hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Quy chuẩn kiến tr&uacute;c thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />K&iacute;ch hoạt thương hiệu mới</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Cẩm nang hướng dẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nghi&ecirc;n cứu</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nhận diện thương hiệu doanh nghiệp</h5>\r\n			</td>\r\n			<td>\r\n			<h5 style=\"margin-left:40px\">Nhận diện thương hiệu cửa h&agrave;ng</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu hiện trạng thương hiệu</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Brandname, subrand name</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Posm, Biển bảng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu kh&aacute;ch h&agrave;ng mục ti&ecirc;u</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Logo, slogan, logo subbrand, logo guidelines</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Print Ads</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Nghi&ecirc;n cứu đối thủ cạnh tranh</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />T&agrave;i liệu marketing &ndash; b&aacute;n h&agrave;ng</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Direct marketing: mail, email SMS, newsletter v.v&hellip;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Sales Marketing tools</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Event: tradshow, event</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Print ads: Brochure, flyer, poster</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Advertising: Billboard, Online radio, Television</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img alt=\"enlightened\" src=\"http://localhost/nesthomemedia.com/admin/ckeditor/plugins/smiley/images/lightbulb.png\" style=\"height:23px; width:23px\" title=\"enlightened\" />Multimedia: E &ndash; catalogue, TVC</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h5>\r\n', '', NULL, '2019-01-11 05:06:54', 0),
(28, 1, 'TREND DESIGN LOGO', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '2018071395312.jpg', NULL, '2019-01-11 05:06:54', 0),
(48, 30, 'Trang chủ 2', '<p>&aacute;das</p>\r\n', '', NULL, '2019-01-15 09:35:53', 0),
(49, 3, 'Demo 15/01/2019-10', '<p>Demo 15/01/2019-10</p>\r\n', '', NULL, '2019-01-15 10:05:55', 0),
(47, 2, 'Demo 15/01/2019 huy', '<p>demo huy</p>\r\n', '', NULL, '2019-01-15 09:31:40', 0),
(46, 1, 'demo img 15/01/2019', '<p>demo img 15/01/2019&acirc;&acirc;aa</p>\r\n', '2019011482937.jpg', NULL, '2019-01-15 03:40:55', 0),
(45, 0, 'Demo 15/01/2019', '<p>dsadas</p>\r\n', '', NULL, '2019-01-14 19:28:45', 0),
(43, 31, 'Demo 15/01/2019', '<p>Demo 15/01/2019</p>\r\n', '', NULL, '2019-01-14 19:23:04', 0),
(44, 0, 'Demo-1 15/01/2019', '<p>Demo-1 15/01/2019</p>\r\n', '', NULL, '2019-01-14 19:25:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_cate`
--

CREATE TABLE `news_cate` (
  `id_news` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_cate`
--

INSERT INTO `news_cate` (`id_news`, `id_cate`) VALUES
(1, 1),
(1, 2),
(2, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(49, 1),
(49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Nhật Quang', '<p>Nhật quang&acirc;</p>\r\n', '2019-01-15 08:17:16'),
(2, 'Hoài Huy', '<p>demo 15/01/2019</p>\r\n', '2019-01-15 07:56:12'),
(3, 'Hoài Huy 2', '<p>demo 15/01/2019</p>\r\n', '2019-01-15 07:57:20'),
(4, 'demo', '<p>demo&nbsp;</p>\r\n', '2019-01-15 07:59:29'),
(5, 'demo 3', '<p>Demo 15/01/2019</p>\r\n', '2019-01-15 08:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `type_post`
--

CREATE TABLE `type_post` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_post`
--

INSERT INTO `type_post` (`id`, `menu_id`, `description`) VALUES
(1, 0, '<p>B&agrave;i đăng untified</p>'),
(2, 30, '<p>B&agrave;i đăng parttime</p>\r\n'),
(3, 31, '<p>B&agrave;i đăng FullTime</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `contact_number` varchar(64) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(512) NOT NULL,
  `access_level` varchar(16) NOT NULL,
  `access_code` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending,1=confirmed',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='admin and customer users';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_subcate`
--
ALTER TABLE `cate_subcate`
  ADD PRIMARY KEY (`id_cate`,`id_subcate`);

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
-- Indexes for table `news_cate`
--
ALTER TABLE `news_cate`
  ADD PRIMARY KEY (`id_news`,`id_cate`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_post`
--
ALTER TABLE `type_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type_post`
--
ALTER TABLE `type_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
