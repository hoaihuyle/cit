-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 15, 2019 lúc 08:38 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cit_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `active`
--

CREATE TABLE `active` (
  `id` int(11) NOT NULL,
  `id_news` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `end_date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `active`
--

INSERT INTO `active` (`id`, `id_news`, `count`, `state`, `end_date`, `timestamp`) VALUES
(1, 1, 0, 1, '2019-01-23 00:00:00', '2019-01-20 04:24:59'),
(2, 53, 0, 1, '2019-01-23 00:00:00', '2019-01-20 11:45:43'),
(3, 1, 0, 1, '2019-01-31 00:00:00', '2019-01-20 12:00:36'),
(5, 1, 0, 1, '2019-01-31 00:00:00', '2019-01-21 09:08:27'),
(6, 4, 0, 1, '2019-01-22 00:00:00', '2019-01-21 09:08:50'),
(7, 4, 0, 1, '2019-01-22 00:00:00', '2019-01-21 09:08:50'),
(8, 1, 12, 1, '2019-02-22 00:00:00', '2019-01-21 09:35:54'),
(9, 55, 1, 1, '2019-01-23 00:00:00', '2019-01-22 07:47:35'),
(10, 2, 11, 1, '2019-01-31 00:00:00', '2019-01-24 17:31:41'),
(11, 3, 0, 1, '2019-03-03 00:00:00', '2019-01-24 17:44:07'),
(12, 3, 4, 1, '2019-03-03 00:00:00', '2019-01-24 17:44:07'),
(13, 4, 0, 1, '2019-01-26 00:00:00', '2019-01-24 17:45:08'),
(14, 4, 2, 1, '2019-01-26 00:00:00', '2019-01-24 17:45:08'),
(16, 63, 0, 1, '2019-01-27 16:35:18', '2019-01-27 09:35:18'),
(17, 9, 0, 1, '2019-03-03 00:00:00', '2019-01-27 15:02:50'),
(18, 9, 1, 1, '2019-03-03 00:00:00', '2019-01-27 15:02:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
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
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `role`, `fullname`, `birthday`, `email`, `company`, `address`, `suburb`, `postcode`, `city`, `province`, `country`, `phone`, `fax`, `gender`) VALUES
(1, 'admin', 'admin', 0, '', '', 'info@bdata.com.vn', '', '', '', NULL, NULL, NULL, NULL, '0', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Nhà hàng', ' ', '2019-01-08 10:19:19'),
(2, 'Cafe', '', '2019-01-08 10:20:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_subcate`
--

CREATE TABLE `cate_subcate` (
  `id_cate` int(11) NOT NULL,
  `id_subcate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_subcate`
--

INSERT INTO `cate_subcate` (`id_cate`, `id_subcate`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `news_id` int(50) DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`id`, `news_id`, `title`, `short_des`, `file_name`, `link_video`, `note`, `status`, `sort_order`, `timestamp`) VALUES
(1, 0, 'Khách hàng 1', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '2018071695726.jpg', NULL, NULL, NULL, 0, '2018-07-16 07:57:27'),
(2, 0, 'Khách hàng 2', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '2018071695941.jpg', NULL, NULL, NULL, 0, '2018-07-16 07:59:41'),
(3, 0, 'Khách hàng 3', '<p>Th&ocirc;ng tin chưa&nbsp;được cập nhật!</p>\r\n', '20180716100748.jpg', NULL, NULL, NULL, 0, '2018-07-16 08:07:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `description`) VALUES
(1, 'IT', '<p>C&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n'),
(2, 'Pha chế', '<p>Pha thức uống</p>\r\n'),
(3, 'Bồi bán', '<p>bồi b&aacute;n</p>\r\n'),
(4, 'Sales', '<p>buồn b&aacute;n nh&agrave; đất, c&aacute;c mặt h&agrave;ng</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `sort_order`, `status`, `parent`, `slug`) VALUES
(32, 'Tìm việc', '<p>Trang t&igrave;m việc n&acirc;ng cao</p>\r\n', NULL, NULL, 0, 'tim-viec'),
(31, 'Fulltime', NULL, NULL, NULL, 29, 'fulltime'),
(30, 'Parttime', NULL, NULL, NULL, 29, 'parttime'),
(24, 'Trang chủ', '<p>Trang chủ&nbsp; &nbsp;</p>\r\n', NULL, NULL, 0, 'index'),
(25, 'Đăng tin', '<p>Trang d&ugrave;ng để nh&agrave; tuyển dụng đăng tin</p>\r\n', NULL, NULL, 0, 'dang-tin'),
(29, 'Bài đăng', NULL, NULL, NULL, 0, 'bai-dang'),
(49, 'Nhân viên', NULL, NULL, NULL, 0, 'nhan-vien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_province` int(11) DEFAULT NULL,
  `id_subcate` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `files` text COLLATE utf8_unicode_ci,
  `start_pr` int(50) NOT NULL DEFAULT '0',
  `end_pr` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort_order` int(9) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`) VALUES
(1, 2, 2, 49, 2, 'NestHome media ', '<p style=\"text-align:justify\">NestHome media l&agrave; c&ocirc;ng ty chuy&ecirc;n s&acirc;u về hoạch định chiến lược, thiết kế nhận diện v&agrave; truyền th&ocirc;ng thương hiệu. Ch&uacute;ng t&ocirc;i cung cấp một giải ph&aacute;p to&agrave;n diện gi&uacute;p doanh nghiệp n&acirc;ng cao năng lực cạnh tranh th&ocirc;ng qua việc x&acirc;y dựng thương hiệu mạnh.aa</p>\r\n', '2019012224908.jpg', 23000, 35000, NULL, '2019-01-22 09:46:15', 0),
(2, 3, 2, 49, 2, 'BrandCare – Giải Pháp Chăm Sóc Thương Hiệu Toàn Diện', '<p style=\"text-align:justify\">Từ việc đặt t&ecirc;n thương hiệu, thiết kế logo, nhận diện thương hiệu, bao b&igrave; sản phẩm đến giải ph&aacute;p truyền th&ocirc;ng để ra mắt một thương hiệu mới ho&agrave;n hảo.</p>\r\n', '2019011581654.jpg', 20000, 30000, NULL, '2019-01-24 17:31:41', 0),
(3, 2, 3, 49, 2, 'SME Branding - Giải Pháp Thương Hiệu Cho Doanh Nghiệp Vừa Và Nhỏ', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp vừa v&agrave; nhỏ x&acirc;y dựng thương hiệu đồng nhất th&ocirc;ng qua tất cả c&aacute;c yếu tố từ logo đến nhận diện thương hiệu, profile v&agrave; website.</p>\r\n', '2019012051622.jpg', 23000, 33000, NULL, '2019-01-24 17:35:22', 0),
(4, 2, 1, 49, 2, 'CIP - Giải Pháp Thiết Kế Thương Hiệu Toàn Diện', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp s&aacute;ng tạo hệ thống nhận diện thương hiệu đồng bộ v&agrave; nhất qu&aacute;n gi&uacute;p quảng b&aacute; h&igrave;nh ảnh thương hiệu tại mọi điểm tiếp x&uacute;c.</p>\r\n', '2019012140850.jpg', 26000, 30000, NULL, '2019-01-24 17:44:56', 0),
(5, 2, 1, 49, 2, 'CCP - Giải Pháp Truyền Thông Thương Hiệu', '<p style=\"text-align:justify\">Tạo ra nhận biết thương hiệu hay tăng hiệu quả b&aacute;n h&agrave;ng, giải ph&aacute;p của Nesthome media gi&uacute;p doanh nghiệp tiếp cận với kh&aacute;ch h&agrave;ng mục ti&ecirc;u hiệu quả v&agrave; tiết kiệm chi ph&iacute; nhất.</p>\r\n', '2019012222720.jpg', 24000, 33000, NULL, '2019-01-22 07:27:20', 0),
(6, 2, 1, 49, 2, 'CBP - Giải Pháp Xây Dựng Thương Hiệu Doanh Nghiệp Toàn Diện', '\r\nĐồng hành cùng doanh nghiệp từ khâu tư vấn, xây dựng chiến lược thương hiệu, sáng tạo thông điệp, thiết kế hệ thống nhận diện đến xác lập giải pháp truyền thông thương hiệu.\r\n\r\n', '2019012223039.jpg', 26000, 30000, NULL, '2019-01-27 10:13:35', 0),
(7, 2, 1, 49, 2, 'PLP - Giải Pháp Quảng Bá Thương Hiệu Sản Phẩm Mới', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp chủ động, nhanh ch&oacute;ng đưa sản phẩm mới ra thị trường với h&igrave;nh ảnh thương hiệu s&aacute;ng tạo v&agrave; kế hoạch truyền th&ocirc;ng hiệu quả.</p>\r\n', '2019012223626.jpg', 21000, 30000, NULL, '2019-01-27 10:14:31', 0),
(8, 2, 1, 49, 2, 'PBP - Giải Pháp Xây Dựng Thương Hiệu Cho Dự Án Mới', '<p style=\"text-align:justify\">Gi&uacute;p chủ đầu tư định vị thương hiệu cho dự &aacute;n, s&aacute;ng tạo bản sắc thương hiệu sinh động, ấn tượng v&agrave; x&acirc;y dựng kế hoạch truyền th&ocirc;ng tiếp thị hiệu quả cho dự &aacute;n.</p>\r\n', '2019012224157.jpg', 22000, 31000, NULL, '2019-01-22 07:41:57', 0),
(9, 3, 1, 49, 2, 'DBP – Giải Pháp Truyền Thông Trực Tuyến', '<p style=\"text-align:justify\">Gi&uacute;p doanh nghiệp tận dụng tối đa sức mạnh của c&ocirc;ng nghệ để lan truyền v&agrave; quảng b&aacute; h&igrave;nh ảnh thương hiệu tr&ecirc;n m&ocirc;i trường số v&agrave; internet.</p>\r\n', '', 20000, 31000, NULL, '2019-01-27 15:02:50', 0),
(55, 2, 1, 49, 1, 'Demo 22/01', '<p>đ&acirc;sdasd</p>\r\n', '2019012225107.jpg', 20000, 32000, NULL, '2019-01-22 07:51:07', 0),
(63, 3, 1, 49, NULL, 'Demo 27/01/2019', '<p>huy</p>\r\n', '2019012743518.jpg', 20000, 0, NULL, '2019-01-27 09:35:18', 0),
(20, 3, 1, 49, 2, 'LÊ GIA ĐỨC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', '', 21000, 0, NULL, '2019-01-27 10:20:20', 0),
(54, 2, 1, 49, NULL, 'Demo-1 15/01/2019', '<p>đ&acirc;sdasd</p>\r\n', '', 20000, 20000, NULL, '2019-01-21 08:22:11', 0),
(48, 3, 1, 49, 2, 'Trang chủ 2', '<p>&aacute;das</p>\r\n', '', 0, NULL, NULL, '2019-01-18 12:12:05', 0),
(49, 3, 1, 49, 2, 'Demo 15/01/2019-10', '<p>Demo 15/01/2019-10</p>\r\n', '', 0, NULL, NULL, '2019-01-18 12:12:05', 0),
(47, 2, 1, 49, 2, 'Demo 15/01/2019 huy', '<p>demo huy</p>\r\n', '', 0, NULL, NULL, '2019-01-18 12:12:05', 0),
(50, 2, 1, 49, 2, 'Demo 15/01/2019 huy', '<p>&aacute;dasd</p>\r\n', '', 49000, 100000, NULL, '2019-01-20 04:50:24', 0),
(51, 2, 1, 49, 2, 'demo active 18/01/2019', '<p>sacdsdas</p>\r\n', '', 21000, NULL, NULL, '2019-01-20 04:50:35', 0),
(52, 2, 1, 49, NULL, 'demo 18/01/2019', '<p>sấdsad</p>\r\n', '', 49000, 70000, NULL, '2019-01-20 04:51:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `code`, `published`, `ordering`) VALUES
(1, 'An Giang', '805', 1, 63),
(2, 'Bà Rịa - Vũng Tầu', '717', 1, 46),
(3, 'Bình Dương', '711', 1, 45),
(4, 'Bình Phước', '707', 1, 44),
(5, 'Bình Thuận', '715', 1, 43),
(6, 'Bình Định', '507', 1, 42),
(7, 'Bắc Giang', '221', 1, 41),
(8, 'Bắc Kạn', '207', 1, 40),
(9, 'Bắc Ninh', '223', 1, 39),
(10, 'Bến Tre', '811', 1, 38),
(11, 'Cao Bằng', '203', 1, 37),
(12, 'Cà Mau', '823', 1, 36),
(13, 'Cần Thơ', '815', 1, 35),
(14, 'Gia Lai', '603', 1, 34),
(15, 'Hà Giang', '201', 1, 47),
(16, 'Hà Nam', '111', 1, 48),
(17, 'Hà Nội', '101', 1, 49),
(18, 'Hà Tây', '105', 1, 62),
(19, 'Hà Tĩnh', '405', 1, 61),
(20, 'Hòa Bình', '305', 1, 60),
(21, 'Hưng Yên', '109', 1, 59),
(22, 'Hải Dương', '107', 1, 58),
(23, 'Hải Phòng', '103', 1, 57),
(24, 'Hồ Chí Minh', '701', 1, 1),
(25, 'Khánh Hòa', '511', 1, 56),
(27, 'Kiên Giang', '813', 1, 55),
(28, 'Kon Tum', '601', 1, 54),
(29, 'Lai Châu', '301', 1, 53),
(30, 'Long An', '801', 1, 52),
(31, 'Lào Cai', '205', 1, 51),
(32, 'Lâm Đồng', '703', 1, 50),
(33, 'Lạng Sơn', '209', 1, 33),
(34, 'Nam Định', '113', 1, 32),
(35, 'Nghệ An', '403', 1, 15),
(36, 'Ninh Bình', '117', 1, 14),
(37, 'Ninh Thuận', '705', 1, 13),
(38, 'Phú Thọ', '217', 1, 12),
(39, 'Phú Yên', '509', 1, 11),
(40, 'Quảng Bình', '407', 1, 10),
(41, 'Quảng Nam', '503', 1, 9),
(42, 'Quảng Ngãi', '505', 1, 7),
(43, 'Quảng Ninh', '225', 1, 6),
(44, 'Quảng Trị', '409', 1, 5),
(45, 'Sơn La', '303', 1, 4),
(46, 'Thanh Hóa', '401', 1, 3),
(47, 'Thái Bình', '115', 1, 2),
(48, 'Thái Nguyên', '215', 1, 16),
(49, 'Thừa Thiên - Huế', '411', 0, 17),
(50, 'Tiền Giang', '807', 1, 31),
(51, 'Trà Vinh', '817', 1, 30),
(52, 'Tuyên Quang', '211', 1, 29),
(53, 'Tây Ninh', '709', 1, 28),
(54, 'Vĩnh Long', '809', 1, 27),
(55, 'Vĩnh Phúc', '104', 1, 26),
(56, 'Yên Bái', '213', 1, 25),
(57, 'Đà Nẵng', '501', 1, 24),
(58, 'Đắk Lắk', '605', 1, 23),
(59, 'Đồng Nai', '713', 1, 22),
(60, 'Đồng Tháp', '803', 1, 21),
(61, 'Bạc Liêu', '821', 1, 20),
(62, 'Sóc Trăng', '819', 1, 19),
(63, 'Hậu Giang', '825', 1, 18),
(64, 'Đắk Nông', '607', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Nhật Quang', '<p>Nhật quang&acirc;</p>\r\n', '2019-01-15 08:17:16'),
(2, 'Hoài Huy', '<p>demo 15/01/2019</p>\r\n', '2019-01-15 07:56:12'),
(3, 'Hoài Huy 2', '<p>demo 15/01/2019</p>\r\n', '2019-01-15 07:57:20'),
(4, 'demo', '<p>demo&nbsp;</p>\r\n', '2019-01-15 07:59:29'),
(5, 'demo 3', '<p>Demo 15/01/2019</p>\r\n', '2019-01-15 08:00:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_post`
--

CREATE TABLE `type_post` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_post`
--

INSERT INTO `type_post` (`id`, `menu_id`, `description`) VALUES
(2, 30, '<p>B&agrave;i đăng parttime</p>\r\n'),
(3, 31, '<p>B&agrave;i đăng FullTime</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(10, 'google', '105580634109865689891', '', '', 'hoaihuy2011.vn@gmail.com', '', 'en', '', 'https://plus.google.com/105580634109865689891', '2019-02-15 14:23:30', '2019-02-15 14:23:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_subcate`
--
ALTER TABLE `cate_subcate`
  ADD PRIMARY KEY (`id_cate`,`id_subcate`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_post`
--
ALTER TABLE `type_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `active`
--
ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `type_post`
--
ALTER TABLE `type_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
