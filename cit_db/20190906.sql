-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 05, 2019 lúc 10:51 PM
-- Phiên bản máy phục vụ: 5.6.41-84.1
-- Phiên bản PHP: 7.2.7

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
-- Cấu trúc bảng cho bảng `academic_level`
--

CREATE TABLE `academic_level` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(37, 82, 8, 1, '2019-02-22 00:00:00', '2019-02-21 02:41:01'),
(38, 83, 0, 1, '2019-02-22 00:00:00', '2019-02-21 02:44:18'),
(39, 84, 4, 1, '2019-02-27 00:00:00', '2019-02-21 02:48:27'),
(40, 85, 0, 1, '2019-02-22 00:00:00', '2019-02-21 02:50:57'),
(41, 86, 0, 1, '2019-02-22 00:00:00', '2019-02-21 02:52:00'),
(42, 87, 10, 1, '2019-02-28 00:00:00', '2019-02-21 02:53:04'),
(43, 88, 19, 1, '2019-02-23 00:00:00', '2019-02-21 02:54:25'),
(44, 89, 8, 1, '2019-03-12 00:00:00', '2019-03-04 10:38:57'),
(45, 90, 0, 1, '2019-03-08 00:00:00', '2019-03-07 07:26:46'),
(46, 91, 0, 1, '2019-03-08 00:00:00', '2019-03-07 07:27:20'),
(47, 92, 31, 1, '2019-03-24 00:00:00', '2019-03-13 02:52:43'),
(48, 93, 1, 1, '2019-03-14 00:00:00', '2019-03-13 09:15:31'),
(49, 92, 0, 1, '2019-03-31 00:00:00', '2019-03-27 04:18:21'),
(50, 92, 5, 1, '2019-03-31 00:00:00', '2019-03-27 04:18:21'),
(51, 94, 5, 1, '2019-04-03 00:00:00', '2019-03-28 03:52:43'),
(52, 95, 6, 1, '2019-03-31 00:00:00', '2019-03-28 04:13:38'),
(53, 96, 9, 1, '2019-04-01 00:00:00', '2019-03-28 04:23:13'),
(54, 97, 9, 1, '2019-04-03 00:00:00', '2019-03-28 04:29:14'),
(55, 98, 28, 1, '2019-04-08 00:00:00', '2019-03-28 08:03:25'),
(56, 92, 1, 1, '2019-04-04 00:00:00', '2019-03-29 01:07:05'),
(57, 92, 153, 1, '2019-04-05 00:00:00', '2019-03-29 13:35:50'),
(58, 94, 6, 1, '2019-04-04 00:00:00', '2019-03-29 13:48:03'),
(59, 99, 64, 1, '2019-04-08 00:00:00', '2019-04-03 00:43:46'),
(60, 100, 34, 1, '2019-04-10 00:00:00', '2019-04-04 00:58:31'),
(61, 101, 1, 1, '2019-04-10 00:00:00', '2019-04-04 09:16:15'),
(62, 102, 4, 1, '2019-04-15 00:00:00', '2019-04-04 09:19:42'),
(63, 103, 5, 1, '2019-04-12 00:00:00', '2019-04-08 01:59:51'),
(64, 104, 2, 1, '2019-04-15 00:00:00', '2019-04-10 09:51:48'),
(65, 105, 5, 1, '2019-04-20 00:00:00', '2019-04-11 04:07:13'),
(66, 106, 4, 1, '2019-04-20 00:00:00', '2019-04-12 11:37:10'),
(67, 107, 147, 1, '2019-07-27 00:00:00', '2019-04-17 12:04:50'),
(68, 108, 0, 1, '2019-07-02 00:00:00', '2019-06-30 00:58:35'),
(69, 108, 0, 1, '2019-07-05 00:00:00', '2019-06-30 00:59:10'),
(70, 108, 0, 1, '2019-07-03 00:00:00', '2019-06-30 01:01:09'),
(71, 109, 0, 1, '2019-07-02 00:00:00', '2019-06-30 01:03:39'),
(72, 110, 0, 1, '2019-07-25 00:00:00', '2019-06-30 01:06:23'),
(73, 106, 0, 1, '2019-07-20 00:00:00', '2019-06-30 01:09:32'),
(74, 106, 59, 1, '2019-07-20 00:00:00', '2019-06-30 01:09:32'),
(75, 111, 0, 1, '2019-07-31 00:00:00', '2019-07-01 13:06:17'),
(76, 112, 50, 1, '2019-07-07 00:00:00', '2019-07-01 14:03:09'),
(77, 113, 1, 0, '2019-07-07 00:00:00', '2019-07-01 14:07:03'),
(78, 114, 1, 1, '2019-07-31 00:00:00', '2019-07-01 15:43:17'),
(79, 115, 330, 1, '2019-08-01 00:00:00', '2019-07-02 03:26:57'),
(80, 116, 1, 1, '2019-07-31 00:00:00', '2019-07-22 12:09:07'),
(81, 117, 95, 1, '2019-07-31 00:00:00', '2019-07-22 12:12:47'),
(82, 115, 136, 1, '2019-11-01 00:00:00', '2019-07-22 14:56:45'),
(83, 117, 311, 1, '2019-10-29 00:00:00', '2019-07-22 14:57:35'),
(84, 118, 779, 1, '2019-09-30 00:00:00', '2019-07-23 04:49:05'),
(85, 119, 191, 1, '2019-09-30 00:00:00', '2019-07-23 07:19:27'),
(86, 120, 276, 1, '2019-09-30 00:00:00', '2019-07-23 07:49:47'),
(87, 121, 241, 1, '2019-09-30 00:00:00', '2019-07-24 12:03:56'),
(88, 122, 97, 1, '2019-09-30 00:00:00', '2019-07-26 06:24:09'),
(89, 123, 3, 1, '2019-09-30 00:00:00', '2019-07-26 11:20:08'),
(90, 123, 97, 1, '2019-10-30 00:00:00', '2019-07-26 11:24:38'),
(91, 124, 72, 1, '2019-09-30 00:00:00', '2019-07-28 12:11:11'),
(92, 125, 2, 1, '2019-09-30 00:00:00', '2019-07-29 13:47:36'),
(93, 125, 172, 1, '2019-10-30 00:00:00', '2019-07-29 13:55:21'),
(94, 126, 192, 1, '2019-09-30 00:00:00', '2019-07-29 14:35:54'),
(95, 127, 178, 1, '2019-09-30 00:00:00', '2019-07-31 10:31:56'),
(96, 128, 168, 1, '2019-09-30 00:00:00', '2019-07-31 11:04:48'),
(97, 129, 48, 1, '2019-09-30 00:00:00', '2019-08-02 11:13:11'),
(98, 130, 118, 1, '2019-08-27 00:00:00', '2019-08-04 04:12:51'),
(99, 131, 1, 1, '2019-08-27 00:00:00', '2019-08-04 04:17:03'),
(100, 132, 107, 1, '2019-09-30 00:00:00', '2019-08-05 12:01:59'),
(101, 133, 155, 1, '2019-09-16 00:00:00', '2019-08-07 14:01:29'),
(102, 134, 53, 1, '2019-09-30 00:00:00', '2019-08-08 09:23:43'),
(103, 135, 95, 1, '2019-09-30 00:00:00', '2019-08-12 11:02:15'),
(104, 136, 67, 1, '2019-09-30 00:00:00', '2019-08-13 12:37:59'),
(105, 137, 73, 1, '2019-09-30 00:00:00', '2019-08-13 12:55:52'),
(106, 138, 31, 1, '2019-09-30 00:00:00', '2019-08-14 11:38:36'),
(107, 139, 34, 1, '2019-09-30 00:00:00', '2019-08-14 11:41:43'),
(108, 140, 64, 1, '2019-09-30 00:00:00', '2019-08-15 12:16:15'),
(109, 141, 55, 1, '2019-09-30 00:00:00', '2019-08-16 12:24:54'),
(110, 142, 26, 1, '2019-09-30 00:00:00', '2019-08-17 14:27:34'),
(111, 143, 0, 1, '2019-09-30 00:00:00', '2019-08-18 17:13:35'),
(112, 144, 5, 1, '2019-09-30 00:00:00', '2019-08-18 17:15:30'),
(113, 145, 129, 1, '2019-09-30 00:00:00', '2019-08-18 17:16:59'),
(114, 146, 51, 1, '2019-09-30 00:00:00', '2019-08-19 11:04:22'),
(115, 147, 566, 1, '2019-09-30 00:00:00', '2019-08-21 11:05:52'),
(116, 148, 77, 1, '2019-09-30 00:00:00', '2019-08-22 05:24:01'),
(117, 149, 60, 1, '2019-09-30 00:00:00', '2019-08-22 05:34:26'),
(118, 150, 1, 1, '2019-08-23 20:46:05', '2019-08-22 13:46:05'),
(119, 151, 2, 1, '2019-08-31 21:02:42', '2019-08-22 14:02:42'),
(120, 152, 14, 1, '2019-08-31 19:58:45', '2019-08-23 12:58:45'),
(121, 153, 181, 1, '2019-09-30 00:00:00', '2019-08-23 13:21:05'),
(122, 154, 60, 1, '2019-08-31 00:00:00', '2019-08-25 11:06:14'),
(123, 155, 1, 1, '2019-08-26 18:33:34', '2019-08-25 11:33:34'),
(124, 156, 314, 1, '2019-09-30 00:00:00', '2019-08-26 14:26:21'),
(125, 157, 70, 1, '2019-09-30 00:00:00', '2019-08-26 15:33:20'),
(126, 158, 730, 1, '2019-09-30 00:00:00', '2019-08-28 15:56:48'),
(127, 159, 43, 1, '2019-09-30 00:00:00', '2019-08-30 15:43:29'),
(128, 160, 78, 1, '2019-10-31 00:00:00', '2019-08-30 15:48:18'),
(129, 161, 86, 1, '2019-10-31 00:00:00', '2019-08-30 16:01:55'),
(130, 162, 56, 1, '2019-10-31 00:00:00', '2019-08-30 16:07:50'),
(131, 163, 43, 1, '2019-10-31 00:00:00', '2019-09-02 03:26:58'),
(132, 164, 38, 1, '2019-11-30 00:00:00', '2019-09-02 03:35:03'),
(133, 165, 95, 1, '2019-10-31 00:00:00', '2019-09-02 03:39:36'),
(134, 166, 569, 1, '2019-11-30 00:00:00', '2019-09-02 08:08:34'),
(135, 167, 169, 1, '2019-10-31 00:00:00', '2019-09-04 16:04:38'),
(136, 168, 50, 1, '2019-10-31 00:00:00', '2019-09-04 16:08:08'),
(137, 169, 64, 1, '2019-11-30 00:00:00', '2019-09-04 16:25:56'),
(138, 170, 4, 1, '2019-11-30 00:00:00', '2019-09-04 16:33:33'),
(139, 171, 8, 1, '2019-11-30 00:00:00', '2019-09-04 16:39:50'),
(140, 172, 30, 1, '2019-11-30 00:00:00', '2019-09-04 16:47:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `id_district` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `id_district`, `name`, `timestamp`) VALUES
(1, 350, '168 Bà Triệu, Tp Huế', '2019-08-12 05:57:16'),
(2, 350, '11 Lê Quý Đôn ', '2019-08-13 07:15:34'),
(3, 350, '376 Phan Chu Trinh', '2019-08-14 06:35:11'),
(4, 350, '43 đặng huy trứ', '2019-08-14 06:39:20'),
(5, 350, '12 Hà Huy Tập - Huế.', '2019-08-15 07:10:01'),
(6, 350, '05 Điện Biên Phủ, Huế', '2019-08-16 07:10:45'),
(7, 350, '32 NGUYỄN THÁI HỌC', '2019-08-17 09:25:02'),
(8, 350, '17 Lê Quang Đạo, Huế.', '2019-08-18 12:07:48'),
(9, 350, '22 Hà Huy Tập', '2019-08-19 05:56:50'),
(10, 350, 'Tầng 5 - Toà nhà 18 Lê Lợi, TP Huế. ', '2019-08-21 05:59:37'),
(11, 350, '14 ĐIỆN BIÊN PHỦ', '2019-08-22 00:18:04'),
(12, 350, '64 Nguyễn Huệ, Thành phố Huế', '2019-08-22 00:29:35'),
(13, 350, '39A BÀ TRIỆU', '2019-08-23 08:14:26'),
(14, 350, '100 Nguyễn Huệ, TP. Huế', '2019-08-25 06:00:14'),
(15, 350, '79 Phạm Thị Liên, TP Huế', '2019-08-26 08:58:52'),
(16, 350, '03 Hà Huy Tập, TP Huế', '2019-08-26 10:25:11'),
(17, 350, '15 ĐỘI CUNG HUẾ', '2019-08-28 10:51:46'),
(18, 350, '05 NGUYỄN HUỆ', '2019-08-30 10:32:27'),
(19, 350, 'Lô B1 Hoàng Quốc Việt - Thành phố Huế', '2019-08-30 10:41:45'),
(20, 350, 'SĐT : 0961463395 ( Mr Nhật)', '2019-08-30 11:00:01'),
(21, 350, '6/20 Nguyễn Công Trứ, P. Phú Hội, Tp. Huế', '2019-08-30 11:05:23'),
(22, 350, '35 Chu Văn An, Phường Phú Hội, Tp-Huế.', '2019-09-01 22:21:48'),
(23, 350, '56 Ngô Quyền', '2019-09-01 22:32:12'),
(24, 350, '9A Nguyễn Huệ ', '2019-09-02 03:00:47'),
(25, 350, '376 PHAN CHU TRINH', '2019-09-04 11:02:58'),
(26, 350, ' D26, Đường số 1, An Cựu city Huế', '2019-09-04 11:06:09'),
(27, 350, 'Cơ sở 1:14 Dương Văn An Cơ sở 2: 72 Hai Bà Trưng', '2019-09-04 11:22:49'),
(28, 350, '26 yết kiêu, TP Huế', '2019-09-04 11:28:58'),
(29, 350, 'Địa chỉ: 181 Mai Thúc Loan 42 Trường Chinh', '2019-09-04 11:36:36'),
(30, 350, '100 Nguyễn Huệ, TP Huế.', '2019-09-04 11:44:24');

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
-- Cấu trúc bảng cho bảng `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `id_stu` int(11) DEFAULT NULL,
  `id_aca` int(11) DEFAULT NULL,
  `id_add` int(11) DEFAULT NULL,
  `id_leis` int(11) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `totalapp` int(11) NOT NULL DEFAULT '0',
  `datelock` datetime DEFAULT NULL,
  `countlock` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `applicant`
--

INSERT INTO `applicant` (`id`, `id_stu`, `id_aca`, `id_add`, `id_leis`, `fullname`, `picture`, `phone`, `totalapp`, `datelock`, `countlock`, `created`) VALUES
(3, NULL, NULL, NULL, NULL, 'Starlet Truong', NULL, '0855566145', 0, NULL, 0, NULL),
(4, NULL, NULL, NULL, NULL, 'Thúy Hạnh', '2019086113538.jpg', '0855566145', 0, NULL, 0, NULL),
(5, NULL, NULL, NULL, NULL, 'Phúc Văn', NULL, NULL, 0, NULL, 0, NULL),
(6, NULL, NULL, NULL, NULL, 'Hải Lý', NULL, NULL, 0, NULL, 0, NULL),
(7, NULL, NULL, NULL, NULL, 'Ung Nho Phi Hai', NULL, NULL, 0, NULL, 0, NULL),
(9, NULL, NULL, NULL, NULL, 'Mai Lớp', NULL, NULL, 0, NULL, 0, NULL),
(10, NULL, NULL, NULL, NULL, 'Trần Văn Linh', NULL, NULL, 0, NULL, 0, NULL),
(11, NULL, NULL, NULL, NULL, 'Như Ý Nguyen Thanh', NULL, NULL, 0, NULL, 0, NULL),
(12, NULL, NULL, NULL, NULL, 'Huy Le', NULL, '0788362644', 0, NULL, 0, NULL),
(13, NULL, NULL, NULL, NULL, 'Le Nguyen Hoai Huy', NULL, NULL, 0, NULL, 0, NULL),
(18, NULL, NULL, NULL, NULL, 'Le Hoai Huy', NULL, '0788362644', 6, NULL, 0, NULL),
(19, NULL, NULL, NULL, NULL, 'Oanh Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(20, NULL, NULL, NULL, NULL, 'Oanh Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(21, NULL, NULL, NULL, NULL, 'baominh', NULL, NULL, 0, NULL, 0, NULL),
(22, NULL, NULL, NULL, NULL, 'Truong Thanh Tuan', NULL, NULL, 0, NULL, 0, NULL),
(23, NULL, NULL, NULL, NULL, 'Thanh Ngọc', NULL, NULL, 0, NULL, 0, NULL),
(24, NULL, NULL, NULL, NULL, 'Trương Quang Định', NULL, NULL, 0, NULL, 0, NULL),
(25, NULL, NULL, NULL, NULL, 'Dương Trần Minh Quang', NULL, '0975948671', 0, NULL, 0, NULL),
(26, NULL, NULL, NULL, NULL, 'Sơn Nguyễn Thanh', NULL, NULL, 0, NULL, 0, NULL),
(27, NULL, NULL, NULL, NULL, 'Trang Hoàng', NULL, NULL, 0, NULL, 0, NULL),
(28, NULL, NULL, NULL, NULL, 'Yến Thanh', NULL, NULL, 0, NULL, 0, NULL),
(29, NULL, NULL, NULL, NULL, 'Hồ Anh', NULL, NULL, 0, NULL, 0, NULL),
(30, NULL, NULL, NULL, NULL, 'Phi Hùng Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(31, NULL, NULL, NULL, NULL, 'Rom Map', NULL, NULL, 0, NULL, 0, NULL),
(32, NULL, NULL, NULL, NULL, 'Thạnh Đào', NULL, NULL, 0, NULL, 0, NULL),
(33, NULL, NULL, NULL, NULL, 'An Nhiên', NULL, NULL, 0, NULL, 0, NULL),
(34, NULL, NULL, NULL, NULL, 'Mín', NULL, NULL, 0, NULL, 0, NULL),
(35, NULL, NULL, NULL, NULL, 'Tiên Hoàng Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(36, NULL, NULL, NULL, NULL, 'Ly Võ', NULL, NULL, 0, NULL, 0, NULL),
(37, NULL, NULL, NULL, NULL, 'Trương Hiếu Hân', NULL, NULL, 0, NULL, 0, NULL),
(43, NULL, NULL, NULL, NULL, 'Đạt Trần', NULL, NULL, 0, NULL, 0, NULL),
(44, NULL, NULL, NULL, NULL, 'Hà Lê Thị Thu', NULL, NULL, 0, NULL, 0, NULL),
(45, NULL, NULL, NULL, NULL, 'Hồ Tấn Hoàng', NULL, NULL, 0, NULL, 0, NULL),
(46, NULL, NULL, NULL, NULL, 'Hồ Tấn Hoàng', NULL, NULL, 0, NULL, 0, NULL),
(47, NULL, NULL, NULL, NULL, 'Nguyễn Thị Tuyết Nhi', NULL, NULL, 0, NULL, 0, NULL),
(48, NULL, NULL, NULL, NULL, 'Đặng Thị Tường Vy', NULL, NULL, 0, NULL, 0, NULL),
(49, NULL, NULL, NULL, NULL, 'Kim Trinh', NULL, NULL, 0, NULL, 0, NULL),
(50, NULL, NULL, NULL, NULL, 'Hoàng Thị Minh Tâm', NULL, NULL, 0, NULL, 0, NULL),
(51, NULL, NULL, NULL, NULL, 'Hoàng Thị Minh Tâm', NULL, NULL, 0, NULL, 0, NULL),
(52, NULL, NULL, NULL, NULL, 'Thu Hiền', NULL, NULL, 0, NULL, 0, NULL),
(53, NULL, NULL, NULL, NULL, 'NgỌc Nữ', NULL, NULL, 0, NULL, 0, NULL),
(54, NULL, NULL, NULL, NULL, 'Nòi Super', NULL, NULL, 0, NULL, 0, NULL),
(55, NULL, NULL, NULL, NULL, 'Phuong Tran', NULL, NULL, 0, NULL, 0, NULL),
(56, NULL, NULL, NULL, NULL, 'Như Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(57, NULL, NULL, NULL, NULL, 'Thảng Lê Đình', NULL, NULL, 0, NULL, 0, NULL),
(58, NULL, NULL, NULL, NULL, 'Anh ÊTô', NULL, NULL, 0, NULL, 0, NULL),
(59, NULL, NULL, NULL, NULL, 'Đan Linh', NULL, NULL, 0, NULL, 0, NULL),
(60, NULL, NULL, NULL, NULL, 'Bo', NULL, NULL, 0, NULL, 0, NULL),
(61, NULL, NULL, NULL, NULL, 'Nguyễn Nhật Thiên', NULL, NULL, 0, NULL, 0, NULL),
(62, NULL, NULL, NULL, NULL, 'Cong Thanh Doan', NULL, NULL, 0, NULL, 0, NULL),
(63, NULL, NULL, NULL, NULL, 'Khánh Duy', NULL, NULL, 0, NULL, 0, NULL),
(64, NULL, NULL, NULL, NULL, 'Quỳnh Như', NULL, '0981265788', 0, NULL, 0, NULL),
(65, NULL, NULL, NULL, NULL, 'KhamNgan Vongdala', NULL, NULL, 0, NULL, 0, NULL),
(66, NULL, NULL, NULL, NULL, 'Lê Minh Nhi', NULL, NULL, 0, NULL, 0, NULL),
(67, NULL, NULL, NULL, NULL, 'Quỳnh Châu Nguyễn', NULL, NULL, 0, NULL, 0, NULL),
(68, NULL, NULL, NULL, NULL, 'Ngọc Thạnh', NULL, NULL, 0, NULL, 0, NULL),
(69, NULL, NULL, NULL, NULL, 'Tam Phan', NULL, NULL, 0, NULL, 0, NULL),
(70, NULL, NULL, NULL, NULL, 'Ta Thanh Tung', NULL, NULL, 0, NULL, 0, NULL),
(71, NULL, NULL, NULL, NULL, 'Phương Sherlock', NULL, NULL, 0, NULL, 0, NULL),
(72, NULL, NULL, NULL, NULL, 'Phan Thanh Phương', NULL, NULL, 0, NULL, 0, NULL),
(74, NULL, NULL, NULL, NULL, 'Kuan Lin2309', NULL, NULL, 0, NULL, 0, NULL),
(75, NULL, NULL, NULL, NULL, 'Hoàng Thị Thanh Thương', NULL, NULL, 0, NULL, 0, '2019-08-02 06:30:21'),
(76, NULL, NULL, NULL, NULL, 'Thành Chung', NULL, NULL, 0, NULL, 0, '2019-08-02 07:57:52'),
(77, NULL, NULL, NULL, NULL, 'Thanh Tùng Tạ', NULL, NULL, 0, NULL, 0, '2019-08-03 23:01:15'),
(78, NULL, NULL, NULL, NULL, 'Thanh Bình Lê', NULL, NULL, 0, NULL, 0, '2019-08-05 02:56:22'),
(79, NULL, NULL, NULL, NULL, 'Ngọcc Khánhh', NULL, NULL, 0, NULL, 0, '2019-08-06 17:05:49'),
(80, NULL, NULL, NULL, NULL, 'Ngọcc Khánhh', NULL, NULL, 0, NULL, 0, '2019-08-06 17:05:49'),
(81, NULL, NULL, NULL, NULL, 'Ngọcc Khánhh', NULL, NULL, 0, NULL, 0, '2019-08-06 17:05:49'),
(82, NULL, NULL, NULL, NULL, 'Diệu Phượng', NULL, NULL, 0, NULL, 0, '2019-08-07 20:55:55'),
(83, NULL, NULL, NULL, NULL, 'Quế Trân Lê Hoàng', NULL, NULL, 0, NULL, 0, '2019-08-07 22:10:35'),
(84, NULL, NULL, NULL, NULL, 'Quế Trân Lê Hoàng', NULL, NULL, 0, NULL, 0, '2019-08-07 22:10:35'),
(85, NULL, NULL, NULL, NULL, 'Uyên Nhi Lý Ngọc', NULL, NULL, 0, NULL, 0, '2019-08-07 23:44:02'),
(86, NULL, NULL, NULL, NULL, 'nguyễn chiến', NULL, NULL, 0, NULL, 0, '2019-08-08 07:49:31'),
(87, NULL, NULL, NULL, NULL, 'Nguyễn Hoàng Anh', '2019081280704.jpg', '0702747260', 0, NULL, 0, '2019-08-12 08:05:57'),
(88, NULL, NULL, NULL, NULL, 'Huỳnh Thị Thuý', NULL, '0793666509', 2, NULL, 0, '2019-08-12 09:16:20'),
(89, NULL, NULL, NULL, NULL, 'Vân Nguyên', NULL, NULL, 0, NULL, 0, '2019-08-12 09:40:32'),
(90, NULL, NULL, NULL, NULL, 'Nhật Đỗ', NULL, NULL, 0, NULL, 0, '2019-08-13 06:38:48'),
(91, NULL, NULL, NULL, NULL, 'Thân Loan', NULL, NULL, 0, NULL, 0, '2019-08-15 02:19:10'),
(92, NULL, NULL, NULL, NULL, 'Tâm Tâm', NULL, NULL, 0, NULL, 0, '2019-08-15 08:20:12'),
(93, NULL, NULL, NULL, NULL, 'Phuong Uyen', 'https://graph.facebook.com/1458219977653780/picture', '0824958840', 2, NULL, 0, '2019-08-16 06:22:01'),
(94, NULL, NULL, NULL, NULL, 'chi lê', NULL, NULL, 0, NULL, 0, '2019-08-18 05:32:04'),
(95, NULL, NULL, NULL, NULL, 'Hoai Huy Le Nguyen', NULL, NULL, 0, NULL, 0, '2019-08-18 23:45:16'),
(96, NULL, NULL, NULL, NULL, 'Vân Anh Phạm', NULL, NULL, 0, NULL, 0, '2019-08-19 07:54:37'),
(97, NULL, NULL, NULL, NULL, 'Phạm Hoa', NULL, NULL, 0, NULL, 0, '2019-08-21 02:07:01'),
(98, NULL, NULL, NULL, NULL, 'Thanh Nhung Đỗ', NULL, NULL, 0, NULL, 0, '2019-08-21 20:49:53'),
(99, NULL, NULL, NULL, NULL, 'Trinh Huỳnh', NULL, NULL, 0, NULL, 0, '2019-08-21 21:02:43'),
(100, NULL, NULL, NULL, NULL, 'Trinh Huỳnh', NULL, '0832410468', 0, NULL, 0, '2019-08-21 21:03:11'),
(101, NULL, NULL, NULL, NULL, 'Ly Hồ', NULL, NULL, 0, NULL, 0, '2019-08-22 04:47:23'),
(102, NULL, NULL, NULL, NULL, 'Huy Le', NULL, NULL, 0, NULL, 0, '2019-08-22 05:57:17'),
(103, NULL, NULL, NULL, NULL, 'Việc Làm Theo Giờ', NULL, '073662222', 0, NULL, 0, '2019-08-22 08:39:27'),
(104, NULL, NULL, NULL, NULL, 'Ái Lệ Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-22 12:23:57'),
(105, NULL, NULL, NULL, NULL, 'Thanh Nghiêm', NULL, NULL, 0, NULL, 0, '2019-08-22 21:58:47'),
(106, NULL, NULL, NULL, NULL, 'Tiến Phan Nhật', NULL, NULL, 0, NULL, 0, '2019-08-22 22:52:45'),
(107, NULL, NULL, NULL, NULL, 'Lam Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-23 00:26:13'),
(108, NULL, NULL, NULL, NULL, 'Trần Lê Tuyết Hạnh', NULL, NULL, 0, NULL, 0, '2019-08-23 08:39:01'),
(109, NULL, NULL, NULL, NULL, 'Thu Huong', NULL, NULL, 0, NULL, 0, '2019-08-23 09:10:04'),
(110, NULL, NULL, NULL, NULL, 'Huỳnh Thoa', NULL, NULL, 0, NULL, 0, '2019-08-23 09:11:37'),
(111, NULL, NULL, NULL, NULL, 'An Mai', '2019082393440.jpg', NULL, 0, NULL, 0, '2019-08-23 09:29:48'),
(112, NULL, NULL, NULL, NULL, 'Nhi Lê', NULL, '0799055024', 0, NULL, 0, '2019-08-23 11:18:17'),
(113, NULL, NULL, NULL, NULL, 'Hít', NULL, NULL, 0, NULL, 0, '2019-08-23 20:26:18'),
(114, NULL, NULL, NULL, NULL, 'Hoàng Thị Ngọc Ân', NULL, NULL, 0, NULL, 0, '2019-08-24 05:22:40'),
(115, NULL, NULL, NULL, NULL, 'Le Hoai Huy', NULL, '0788362644', 0, NULL, 0, '2019-08-24 05:29:03'),
(116, NULL, NULL, NULL, NULL, 'Thuy Nguyen Xuan', NULL, NULL, 0, NULL, 0, '2019-08-24 20:07:48'),
(117, NULL, NULL, NULL, NULL, 'Minh Hiếu', NULL, NULL, 0, NULL, 0, '2019-08-25 06:30:18'),
(118, NULL, NULL, NULL, NULL, 'Khôi Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-25 07:40:29'),
(119, NULL, NULL, NULL, NULL, 'Trần Nguyễn Thị Thanh Trà', NULL, '0976468894', 0, NULL, 0, '2019-08-25 12:13:37'),
(120, NULL, NULL, NULL, NULL, 'USA STARLET', NULL, NULL, 0, NULL, 0, '2019-08-26 09:28:51'),
(121, NULL, NULL, NULL, NULL, 'kim xinh', NULL, NULL, 0, NULL, 0, '2019-08-26 09:45:43'),
(122, NULL, NULL, NULL, NULL, 'Hồ Thanh Lâm', NULL, NULL, 0, NULL, 0, '2019-08-26 10:57:26'),
(123, NULL, NULL, NULL, NULL, 'Châu Nguyên Đan', 'https://graph.facebook.com/668788776953033/picture', '84854601339', 0, NULL, 0, '2019-08-26 11:30:24'),
(124, NULL, NULL, NULL, NULL, 'Min Hiếu Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-26 12:00:22'),
(125, NULL, NULL, NULL, NULL, 'Gió', NULL, NULL, 0, NULL, 0, '2019-08-26 13:01:45'),
(126, NULL, NULL, NULL, NULL, 'Khanh Trì Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-26 19:51:43'),
(127, NULL, NULL, NULL, NULL, 'Khanh Trì Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-26 19:52:06'),
(128, NULL, NULL, NULL, NULL, 'Chi Vy', NULL, NULL, 0, NULL, 0, '2019-08-26 20:17:01'),
(129, NULL, NULL, NULL, NULL, 'Phúc Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-26 21:09:08'),
(130, NULL, NULL, NULL, NULL, 'Nguyễn Ngọc Hạnh', NULL, NULL, 0, NULL, 0, '2019-08-26 23:30:43'),
(131, NULL, NULL, NULL, NULL, 'Trường Lê', NULL, NULL, 0, NULL, 0, '2019-08-27 01:45:26'),
(132, NULL, NULL, NULL, NULL, 'Idiotic Pig', NULL, NULL, 0, NULL, 0, '2019-08-27 19:49:09'),
(133, NULL, NULL, NULL, NULL, 'Kieuoanh Vothi', NULL, NULL, 0, NULL, 0, '2019-08-28 21:25:48'),
(134, NULL, NULL, NULL, NULL, 'Nguyễn Quang Vinh', NULL, NULL, 0, NULL, 0, '2019-08-28 21:39:36'),
(135, NULL, NULL, NULL, NULL, 'Ngọc Hiền', NULL, NULL, 0, NULL, 0, '2019-08-28 21:50:54'),
(136, NULL, NULL, NULL, NULL, 'Nguyễn Văn Thanh Tùng', NULL, NULL, 0, NULL, 0, '2019-08-28 22:42:36'),
(137, NULL, NULL, NULL, NULL, 'Nguyễn Thanh Nhật Tân', NULL, '0396565140', 0, NULL, 0, '2019-08-28 22:59:49'),
(138, NULL, NULL, NULL, NULL, 'LÊ THỊ MINH TÂM', '20190829115002.jpg', '0823200377', 0, NULL, 0, '2019-08-28 23:11:14'),
(139, NULL, NULL, NULL, NULL, 'Ly Ly', NULL, NULL, 0, NULL, 0, '2019-08-28 23:32:25'),
(140, NULL, NULL, NULL, NULL, 'Nguyễn Vũ Minh Thi', NULL, '0889230029', 0, NULL, 0, '2019-08-28 23:38:47'),
(141, NULL, NULL, NULL, NULL, 'Bi Nguyễn', NULL, '0796709451', 0, NULL, 0, '2019-08-28 23:58:08'),
(142, NULL, NULL, NULL, NULL, 'Long Hoàng', NULL, NULL, 0, NULL, 0, '2019-08-29 00:00:28'),
(143, NULL, NULL, NULL, NULL, 'HOÀNG PHƯỚC VĨNH', NULL, '0395313834', 0, NULL, 0, '2019-08-29 00:03:39'),
(144, NULL, NULL, NULL, NULL, 'HOÀNG PHƯỚC VĨNH', NULL, '0395313834', 0, NULL, 0, '2019-08-29 00:24:42'),
(145, NULL, NULL, NULL, NULL, 'Nam Cucu', NULL, NULL, 0, NULL, 0, '2019-08-29 02:05:05'),
(146, NULL, NULL, NULL, NULL, 'Nguyễn Chiều Xuân', NULL, NULL, 0, NULL, 0, '2019-08-29 06:10:12'),
(147, NULL, NULL, NULL, NULL, 'Quốc Cườngg', NULL, NULL, 0, NULL, 0, '2019-08-29 07:43:26'),
(148, NULL, NULL, NULL, NULL, 'Quốc Cườngg', NULL, NULL, 0, NULL, 0, '2019-08-29 07:43:43'),
(149, NULL, NULL, NULL, NULL, 'Nguyễn Thị Thu Nga', NULL, '0353546414', 0, NULL, 0, '2019-08-29 07:44:46'),
(150, NULL, NULL, NULL, NULL, 'Phạm thị thanh thuý', NULL, '0334976902', 0, NULL, 0, '2019-08-29 07:50:13'),
(151, NULL, NULL, NULL, NULL, 'Lam Nguyễn', NULL, NULL, 0, NULL, 0, '2019-08-29 10:29:23'),
(152, NULL, NULL, NULL, NULL, 'Trần Thị Thu Trang', '20190829105229.jpg', '0935716380', 0, NULL, 0, '2019-08-29 10:47:53'),
(153, NULL, NULL, NULL, NULL, 'Thúy Quỳnh', NULL, NULL, 0, NULL, 0, '2019-08-29 20:36:32'),
(154, NULL, NULL, NULL, NULL, 'Văn Nguyễn Quỳnh Thư', NULL, NULL, 0, NULL, 0, '2019-08-30 01:32:28'),
(155, NULL, NULL, NULL, NULL, 'Văn Nguyễn Quỳnh Thư', NULL, '0354097732', 0, NULL, 0, '2019-08-30 01:37:47'),
(156, NULL, NULL, NULL, NULL, 'Uyên Tô', NULL, NULL, 0, NULL, 0, '2019-08-30 21:27:57'),
(157, NULL, NULL, NULL, NULL, 'Lê Thị Tuyết Vy', NULL, '0773908451', 0, NULL, 0, '2019-08-30 21:48:19'),
(158, NULL, NULL, NULL, NULL, 'huy Phan', NULL, NULL, 0, NULL, 0, '2019-08-30 23:58:53'),
(159, NULL, NULL, NULL, NULL, 'LOAN VÕ', NULL, NULL, 0, NULL, 0, '2019-08-31 01:33:50'),
(160, NULL, NULL, NULL, NULL, 'Tài Thái', NULL, NULL, 0, NULL, 0, '2019-08-31 02:30:56'),
(161, NULL, NULL, NULL, NULL, 'Trần Thị Hương Giang', 'https://graph.facebook.com/122787182403560/picture', '0857870198', 0, NULL, 0, '2019-08-31 05:16:33'),
(162, NULL, NULL, NULL, NULL, 'huy Phan', NULL, NULL, 0, NULL, 0, '2019-08-31 06:39:32'),
(163, NULL, NULL, NULL, NULL, 'Nguyễn Như Hảo', NULL, NULL, 0, NULL, 0, '2019-08-31 23:41:52'),
(164, NULL, NULL, NULL, NULL, 'trang thu', '201909111644.jpg', NULL, 0, NULL, 0, '2019-09-01 01:11:35'),
(165, NULL, NULL, NULL, NULL, 'Thúy Vy', NULL, NULL, 0, NULL, 0, '2019-09-01 02:03:51'),
(166, NULL, NULL, NULL, NULL, 'Trần Thắng', NULL, NULL, 0, NULL, 0, '2019-09-01 11:23:09'),
(167, NULL, NULL, NULL, NULL, 'USA STARLET', NULL, '0343333808', 0, NULL, 0, '2019-09-02 02:52:18'),
(168, NULL, NULL, NULL, NULL, 'Huynh Trần', NULL, NULL, 0, NULL, 0, '2019-09-02 03:56:17'),
(169, NULL, NULL, NULL, NULL, 'Mộc Trà', NULL, NULL, 0, NULL, 0, '2019-09-02 05:26:22'),
(170, NULL, NULL, NULL, NULL, 'Hoàng Thị Minh Châu', 'upload/uploadUser/upload/uploadUser/upload/uploadUser/https://graph.facebook.com/750477535451093/picture', '0834338464', 0, NULL, 0, '2019-09-02 05:26:34'),
(171, NULL, NULL, NULL, NULL, 'Thục Clarisse', NULL, NULL, 0, NULL, 0, '2019-09-02 07:05:14'),
(172, NULL, NULL, NULL, NULL, 'Phuong Nhung', NULL, NULL, 0, NULL, 0, '2019-09-02 07:06:33'),
(173, NULL, NULL, NULL, NULL, 'Phuong Nhung', NULL, '0372431509', 0, NULL, 0, '2019-09-02 07:06:54'),
(174, NULL, NULL, NULL, NULL, 'Thoa Nguyễn Thị Kim', NULL, '0978369605', 0, NULL, 0, '2019-09-02 07:07:58'),
(175, NULL, NULL, NULL, NULL, 'Nhật Trần', NULL, NULL, 0, NULL, 0, '2019-09-02 07:08:49'),
(176, NULL, NULL, NULL, NULL, 'Huy Trương Đình', NULL, NULL, 0, NULL, 0, '2019-09-02 07:10:33'),
(177, NULL, NULL, NULL, NULL, 'Cam van Bui', NULL, NULL, 0, NULL, 0, '2019-09-02 07:15:56'),
(178, NULL, NULL, NULL, NULL, 'gia bảo nguyễn', NULL, NULL, 0, NULL, 0, '2019-09-02 07:36:49'),
(179, NULL, NULL, NULL, NULL, 'gia bảo nguyễn', NULL, '0356115990', 0, NULL, 0, '2019-09-02 07:37:06'),
(180, NULL, NULL, NULL, NULL, 'Như Phước', NULL, NULL, 0, NULL, 0, '2019-09-02 07:37:33'),
(181, NULL, NULL, NULL, NULL, 'Như Phước', NULL, '0765574710', 0, NULL, 0, '2019-09-02 08:00:23'),
(182, NULL, NULL, NULL, NULL, 'Nhii', NULL, NULL, 0, NULL, 0, '2019-09-02 08:27:01'),
(183, NULL, NULL, NULL, NULL, 'Đoàn Thủy', NULL, '0942395413', 0, NULL, 0, '2019-09-02 08:28:11'),
(184, NULL, NULL, NULL, NULL, 'Thu Thủy Lê', '201909292528.jpg', '0964409063', 0, NULL, 0, '2019-09-02 09:22:44'),
(185, NULL, NULL, NULL, NULL, 'Trần Thị Thu Huyền', NULL, '0328576491', 0, NULL, 0, '2019-09-02 09:41:13'),
(186, NULL, NULL, NULL, NULL, 'Hằng Nga', NULL, NULL, 0, NULL, 0, '2019-09-02 09:41:53'),
(187, NULL, NULL, NULL, NULL, 'Trần Thị Huyền', NULL, '0796841337', 0, NULL, 0, '2019-09-02 10:11:45'),
(188, NULL, NULL, NULL, NULL, 'Quynh Anh', NULL, NULL, 0, NULL, 0, '2019-09-02 11:07:48'),
(189, NULL, NULL, NULL, NULL, 'Trần Thị Minh Trân', NULL, NULL, 0, NULL, 0, '2019-09-02 12:24:21'),
(190, NULL, NULL, NULL, NULL, 'Nguyễn Chín', NULL, NULL, 0, NULL, 0, '2019-09-02 12:54:26'),
(191, NULL, NULL, NULL, NULL, 'Quỳnh Huỳnh', NULL, NULL, 0, NULL, 0, '2019-09-02 19:40:45'),
(192, NULL, NULL, NULL, NULL, 'Huy Nguyễn', NULL, NULL, 0, NULL, 0, '2019-09-02 20:33:20'),
(193, NULL, NULL, NULL, NULL, 'Đỗ Châu Minh', NULL, NULL, 0, NULL, 0, '2019-09-02 22:49:08'),
(194, NULL, NULL, NULL, NULL, 'Đỗ Châu Minh', NULL, NULL, 0, NULL, 0, '2019-09-02 22:49:17'),
(195, NULL, NULL, NULL, NULL, 'Đạt Ngô Văn', NULL, NULL, 0, NULL, 0, '2019-09-02 23:15:19'),
(196, NULL, NULL, NULL, NULL, 'Ngọc Thịnh', NULL, NULL, 0, NULL, 0, '2019-09-02 23:17:05'),
(197, NULL, NULL, NULL, NULL, 'Bùi Minh Nhân', NULL, NULL, 0, NULL, 0, '2019-09-02 23:43:01'),
(198, NULL, NULL, NULL, NULL, 'Hang Dang', NULL, NULL, 0, NULL, 0, '2019-09-03 00:13:36'),
(199, NULL, NULL, NULL, NULL, 'Mỹ Linh', NULL, NULL, 0, NULL, 0, '2019-09-03 00:33:44'),
(200, NULL, NULL, NULL, NULL, 'Mỹ Linh', NULL, NULL, 0, NULL, 0, '2019-09-03 00:34:14'),
(201, NULL, NULL, NULL, NULL, 'Tai Dang Nghi He', NULL, NULL, 0, NULL, 0, '2019-09-03 01:46:05'),
(202, NULL, NULL, NULL, NULL, 'Tai Dang Nghi He', NULL, NULL, 0, NULL, 0, '2019-09-03 01:46:17'),
(203, NULL, NULL, NULL, NULL, 'Trần T.Kim Tiến', NULL, NULL, 0, NULL, 0, '2019-09-03 02:22:55'),
(204, NULL, NULL, NULL, NULL, 'Thúy Vy', NULL, NULL, 0, NULL, 0, '2019-09-03 02:49:30'),
(205, NULL, NULL, NULL, NULL, 'Phan Minh Thi', NULL, NULL, 0, NULL, 0, '2019-09-03 02:51:40'),
(206, NULL, NULL, NULL, NULL, 'Nguyễn Uyên', NULL, NULL, 0, NULL, 0, '2019-09-03 02:58:47'),
(207, NULL, NULL, NULL, NULL, 'Nguyễn Uyên', NULL, NULL, 0, NULL, 0, '2019-09-03 02:59:04'),
(208, NULL, NULL, NULL, NULL, 'Nguyễn Thị Kiều Diễm', NULL, NULL, 0, NULL, 0, '2019-09-03 03:03:13'),
(209, NULL, NULL, NULL, NULL, 'Cẩm Vân', NULL, NULL, 0, NULL, 0, '2019-09-03 03:29:51'),
(210, NULL, NULL, NULL, NULL, 'Tống Phước Gia Huy', NULL, NULL, 0, NULL, 0, '2019-09-03 05:40:37'),
(211, NULL, NULL, NULL, NULL, 'LÊ THỊ KIỀU', NULL, '0337244803', 0, NULL, 0, '2019-09-03 05:51:37'),
(212, NULL, NULL, NULL, NULL, 'LÊ THỊ KIỀU', NULL, '0337244803', 0, NULL, 0, '2019-09-03 05:58:45'),
(213, NULL, NULL, NULL, NULL, 'Trâm Phạm', NULL, NULL, 0, NULL, 0, '2019-09-03 08:27:03'),
(214, NULL, NULL, NULL, NULL, 'Nguyễn Thị Như Thùy', NULL, '0973066820', 0, NULL, 0, '2019-09-03 08:48:42'),
(215, NULL, NULL, NULL, NULL, 'Phạm Trang', NULL, NULL, 0, NULL, 0, '2019-09-03 09:01:59'),
(216, NULL, NULL, NULL, NULL, 'Bùi Thảo My', NULL, NULL, 0, NULL, 0, '2019-09-03 09:27:09'),
(217, NULL, NULL, NULL, NULL, 'Trần Thị Xuân Phước', NULL, '0336501101', 0, NULL, 0, '2019-09-03 09:35:23'),
(218, NULL, NULL, NULL, NULL, 'Minh Đại', NULL, NULL, 0, NULL, 0, '2019-09-03 11:21:49'),
(219, NULL, NULL, NULL, NULL, 'Bùi Bùi', NULL, NULL, 0, NULL, 0, '2019-09-03 19:21:22'),
(220, NULL, NULL, NULL, NULL, 'miniwa san', NULL, NULL, 0, NULL, 0, '2019-09-04 00:44:39'),
(221, NULL, NULL, NULL, NULL, 'Anh Tran', NULL, NULL, 0, NULL, 0, '2019-09-04 04:48:39'),
(222, NULL, NULL, NULL, NULL, 'Hoài Vi', NULL, NULL, 0, NULL, 0, '2019-09-04 05:42:25'),
(223, NULL, NULL, NULL, NULL, 'Nguyễn Bi', NULL, '0796709451', 0, NULL, 0, '2019-09-04 08:53:00'),
(224, NULL, NULL, NULL, NULL, 'Quỳnh Giao', NULL, NULL, 0, NULL, 0, '2019-09-04 21:09:15'),
(225, NULL, NULL, NULL, NULL, 'Ngọc Thạnh', NULL, NULL, 0, NULL, 0, '2019-09-04 21:19:59'),
(226, NULL, NULL, NULL, NULL, 'Lê Thị Ngọc Hiền', NULL, NULL, 0, NULL, 0, '2019-09-04 21:35:48'),
(227, NULL, NULL, NULL, NULL, 'Hai Nguyen', NULL, NULL, 0, NULL, 0, '2019-09-04 21:40:44'),
(228, NULL, NULL, NULL, NULL, 'Bích Nhật', NULL, NULL, 0, NULL, 0, '2019-09-04 21:43:01'),
(229, NULL, NULL, NULL, NULL, 'Nguyên Nguyễn', NULL, NULL, 0, NULL, 0, '2019-09-04 23:13:53'),
(230, NULL, NULL, NULL, NULL, 'Đỗ Hoàng Quân', NULL, NULL, 0, NULL, 0, '2019-09-05 00:32:46'),
(231, NULL, NULL, NULL, NULL, 'Nguyễn Ngọc Quang', NULL, NULL, 0, NULL, 0, '2019-09-05 05:07:34'),
(232, NULL, NULL, NULL, NULL, 'ngô ngọc kiều trang', NULL, '0775360328', 0, NULL, 0, '2019-09-05 05:24:07'),
(233, NULL, NULL, NULL, NULL, 'Loan Hoàng', NULL, NULL, 0, NULL, 0, '2019-09-05 06:00:25'),
(234, NULL, NULL, NULL, NULL, 'Ngô Thị Mỹ Hạnh', NULL, NULL, 0, NULL, 0, '2019-09-05 06:45:58'),
(235, NULL, NULL, NULL, NULL, 'Bui Trang', NULL, NULL, 0, NULL, 0, '2019-09-05 07:59:03'),
(236, NULL, NULL, NULL, NULL, 'Vy Lương', NULL, NULL, 0, NULL, 0, '2019-09-05 08:09:25'),
(237, NULL, NULL, NULL, NULL, 'Hà Mỹ Hoa', NULL, NULL, 0, NULL, 0, '2019-09-05 11:42:43'),
(238, NULL, NULL, NULL, NULL, 'Hà Công Hùng', NULL, NULL, 0, NULL, 0, '2019-09-05 11:51:38'),
(240, NULL, NULL, NULL, NULL, 'Mai Văn Thắng', NULL, NULL, 0, NULL, 0, '2019-09-05 16:06:38'),
(241, NULL, NULL, NULL, NULL, 'Tuyền Tuyềnn', NULL, NULL, 0, NULL, 0, '2019-09-05 22:21:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `applies`
--

CREATE TABLE `applies` (
  `id_active` int(11) NOT NULL,
  `id_app` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` float DEFAULT NULL COMMENT 'Điểm đánh giá cho một bài đăng',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `success` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `applies`
--

INSERT INTO `applies` (`id_active`, `id_app`, `timestamp`, `rating`, `status`, `success`) VALUES
(82, 152, '2019-09-02 05:18:24', NULL, 1, 0),
(83, 12, '2019-08-22 02:18:15', NULL, 1, 0),
(83, 100, '2019-08-23 08:56:09', NULL, 1, 0),
(83, 112, '2019-08-23 11:19:53', NULL, 1, 0),
(84, 93, '2019-08-16 06:26:24', NULL, 1, 0),
(84, 123, '2019-08-26 11:32:23', NULL, 1, 0),
(84, 157, '2019-08-30 21:58:29', NULL, 1, 0),
(85, 174, '2019-09-02 22:55:54', NULL, 1, 0),
(92, 18, '2019-08-11 07:34:06', NULL, 1, 0),
(94, 88, '2019-08-12 09:20:25', NULL, 1, 0),
(96, 119, '2019-08-25 12:26:59', NULL, 1, 0),
(98, 25, '2019-08-23 01:17:04', NULL, 1, 0),
(101, 18, '2019-08-11 07:33:45', NULL, 1, 0),
(101, 119, '2019-08-25 12:23:09', NULL, 1, 0),
(102, 18, '2019-08-11 07:33:34', NULL, 1, 0),
(103, 88, '2019-08-12 09:18:55', NULL, 1, 0),
(104, 18, '2019-08-16 23:32:19', NULL, 1, 0),
(105, 12, '2019-08-21 16:59:09', NULL, 1, 0),
(107, 12, '2019-08-21 14:15:45', NULL, 1, 0),
(108, 12, '2019-08-21 16:53:56', NULL, 1, 0),
(108, 93, '2019-08-16 06:24:45', NULL, 1, 0),
(109, 12, '2019-08-21 16:57:15', NULL, 1, 0),
(110, 12, '2019-08-21 16:46:23', NULL, 1, 0),
(112, 12, '2019-08-21 14:15:36', NULL, 1, 0),
(113, 12, '2019-08-21 16:49:25', NULL, 1, 0),
(114, 12, '2019-08-21 14:24:38', NULL, 1, 0),
(115, 12, '2019-08-21 14:15:27', NULL, 1, 0),
(115, 25, '2019-08-22 09:10:49', NULL, 1, 0),
(115, 100, '2019-08-23 08:52:46', NULL, 1, 0),
(115, 123, '2019-09-01 23:08:25', NULL, 1, 0),
(115, 152, '2019-08-29 11:01:10', NULL, 1, 0),
(115, 157, '2019-08-30 21:55:14', NULL, 1, 0),
(115, 161, '2019-09-03 03:01:58', NULL, 1, 0),
(115, 183, '2019-09-02 08:33:36', NULL, 1, 0),
(115, 185, '2019-09-03 08:53:24', NULL, 1, 0),
(115, 187, '2019-09-03 06:36:40', NULL, 1, 0),
(115, 211, '2019-09-03 05:55:42', NULL, 1, 0),
(117, 103, '2019-08-22 08:47:03', NULL, 1, 0),
(119, 103, '2019-08-22 09:02:55', NULL, 1, 0),
(120, 18, '2019-08-23 09:46:20', NULL, 1, 0),
(120, 103, '2019-08-23 09:49:35', NULL, 1, 0),
(121, 18, '2019-08-24 05:27:58', NULL, 1, 0),
(121, 100, '2019-08-23 08:49:26', NULL, 1, 0),
(121, 119, '2019-08-25 12:16:56', NULL, 1, 0),
(121, 157, '2019-08-30 21:54:04', NULL, 1, 0),
(124, 157, '2019-08-30 21:50:22', NULL, 1, 0),
(124, 184, '2019-09-02 09:44:28', NULL, 1, 0),
(125, 115, '2019-08-27 00:03:01', NULL, 1, 0),
(126, 115, '2019-09-01 00:49:31', NULL, 1, 0),
(126, 123, '2019-09-01 22:48:46', NULL, 1, 0),
(126, 137, '2019-08-28 23:02:22', NULL, 1, 0),
(126, 138, '2019-08-28 23:14:39', NULL, 1, 0),
(126, 140, '2019-08-28 23:39:58', NULL, 1, 0),
(126, 141, '2019-08-29 00:00:05', NULL, 1, 0),
(126, 143, '2019-08-29 00:20:58', NULL, 1, 0),
(126, 144, '2019-08-29 00:33:36', NULL, 1, 0),
(126, 149, '2019-08-29 07:50:41', NULL, 1, 0),
(126, 152, '2019-08-29 11:01:42', NULL, 1, 0),
(126, 155, '2019-08-30 01:39:29', NULL, 1, 0),
(126, 161, '2019-08-31 05:18:48', NULL, 1, 0),
(126, 170, '2019-09-02 07:09:44', NULL, 1, 0),
(126, 179, '2019-09-02 07:42:10', NULL, 1, 0),
(126, 184, '2019-09-02 09:43:42', NULL, 1, 0),
(126, 214, '2019-09-03 08:51:19', NULL, 1, 0),
(126, 223, '2019-09-04 08:54:54', NULL, 1, 0),
(127, 157, '2019-08-30 22:49:59', NULL, 1, 0),
(129, 100, '2019-09-01 05:57:40', NULL, 1, 0),
(131, 123, '2019-09-01 22:54:43', NULL, 1, 0),
(131, 183, '2019-09-02 08:32:37', NULL, 1, 0),
(134, 152, '2019-09-02 05:10:21', NULL, 1, 0),
(134, 187, '2019-09-03 07:53:12', NULL, 1, 0),
(137, 232, '2019-09-05 21:11:53', NULL, 1, 0),
(139, 4, '2019-09-05 04:13:55', NULL, 1, 0),
(139, 115, '2019-09-05 03:16:16', NULL, 1, 0),
(140, 4, '2019-09-05 21:20:21', NULL, 1, 0),
(140, 115, '2019-09-05 03:15:54', NULL, 1, 0);

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
(2, 'Cafe', '', '2019-01-08 10:20:08'),
(3, 'Kinh Doanh', '', '2019-02-21 02:39:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_company`
--

CREATE TABLE `cate_company` (
  `id_cate` int(11) NOT NULL,
  `id_subcate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_company`
--

INSERT INTO `cate_company` (`id_cate`, `id_subcate`) VALUES
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 32),
(1, 36),
(1, 41),
(1, 43),
(1, 48),
(1, 53),
(1, 65),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 38),
(2, 39),
(2, 40),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 50),
(2, 51),
(2, 52),
(2, 54),
(2, 55),
(2, 56),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 66),
(3, 6),
(3, 35),
(3, 37),
(3, 42),
(3, 49),
(3, 57),
(3, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `id_address` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rateMark` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `files` text COLLATE utf8_unicode_ci,
  `validate` tinyint(1) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `companies`
--

INSERT INTO `companies` (`id`, `id_address`, `name`, `rateMark`, `description`, `files`, `validate`, `timestamp`) VALUES
(6, 0, 'EAGLE TOURIST', NULL, '', NULL, 1, '2019-02-21 02:40:14'),
(16, 0, 'BbData', NULL, ' ', NULL, 1, '2019-03-13 02:51:35'),
(17, 0, 'PIZZA KAT', NULL, '<p>Cửa h&agrave;ng b&aacute;nh PIZZA</p>\r\n', NULL, 1, '2019-07-01 06:06:48'),
(18, 0, 'TACHI SeaFood', NULL, '<p>nh&agrave; h&agrave;ng hải sản</p>\r\n', NULL, 1, '2019-07-02 03:21:19'),
(19, 0, 'Nối Coffee & Milk tea', NULL, '', NULL, 1, '2019-07-22 12:05:51'),
(20, 0, 'THE ALLEY HUẾ - 15 MAI THÚC LOAN', NULL, '', NULL, 1, '2019-07-23 04:31:33'),
(21, 0, 'Mì Quảng CÔ BA', NULL, '', NULL, 1, '2019-07-23 07:14:18'),
(22, 0, 'TRUNG TÂM ANH NGỮ GEM', NULL, '', NULL, 1, '2019-07-23 07:47:27'),
(23, 0, 'ANH KAFE', NULL, '', NULL, 1, '2019-07-24 11:55:13'),
(24, 0, 'ĐỒNG TÂM BAKERY & COFFEE HUẾ', NULL, '', NULL, 1, '2019-07-26 06:22:09'),
(25, 0, 'HOA SƠN QUÁN', NULL, '', NULL, 1, '2019-07-26 11:10:47'),
(26, 0, 'YOFASO SHOP ', NULL, '', NULL, 1, '2019-07-28 11:08:23'),
(27, 0, 'MOMO\'s CAFE ', NULL, '', NULL, 1, '2019-07-29 04:54:55'),
(28, 0, 'JULY COFFEE', NULL, '', NULL, 1, '2019-07-29 14:34:00'),
(29, 0, 'THE GMEN STORE CHI NHÁNH HUẾ', NULL, '', NULL, 1, '2019-07-31 10:24:05'),
(30, 0, 'ELEGANT SHOP', NULL, '', NULL, 1, '2019-07-31 10:47:54'),
(31, 0, 'Dã Tràng Quán', NULL, '', NULL, 1, '2019-08-02 11:06:35'),
(32, 0, 'KICOCHI HOUSE HUẾ', NULL, '<p>Cửa h&agrave;ng đồ nướng H&agrave;n Quốc</p>\r\n', '201908772028.jpg', 1, '2019-08-07 12:20:28'),
(33, 0, 'Pao Lóu Restaurant', NULL, '', NULL, 1, '2019-08-05 11:58:05'),
(34, 0, 'Pao Lóu Restaurant', NULL, '', NULL, 1, '2019-08-05 11:58:16'),
(35, 0, 'SHOP DOREMON', NULL, '', '', 1, '2019-08-07 13:59:42'),
(36, 0, '912 FACTORY BAR', NULL, '<p>Qu&aacute;n ăn</p>\r\n', '', 1, '2019-08-08 09:20:03'),
(37, 1, 'LENKA CORNER SHOP', NULL, '<p>B&aacute;n c&aacute;c mặt h&agrave;ng qu&agrave; tặng, đồ trang tr&iacute;, c&aacute;c loại phụ kiện như cột t&oacute;c - m&oacute;c kho&aacute; - v&iacute; ...</p>\r\n', '2019081255715.jpg', 1, '2019-08-12 10:57:16'),
(38, 2, 'RAW Coffee & Juice ', NULL, '<p>Qu&aacute;n chuy&ecirc;n phục vụ Coffee v&agrave; c&aacute;c loại nước &eacute;p</p>\r\n', '2019081371534.jpg', 1, '2019-08-13 12:15:34'),
(39, 3, 'Bi\'s House Coffee', NULL, '<p>Qu&aacute;n Coffee</p>\r\n', '', 1, '2019-08-14 11:35:11'),
(40, 4, '43 HOUSE COFFEE', NULL, '', '', 1, '2019-08-14 11:39:20'),
(41, 5, 'QUÁN KHÓI- BÁNH TRÁNG THỊT HEO ĐẠI LỘC', NULL, '<p>B&aacute;nh tr&aacute;ng cuốn thịt heo</p>\r\n', '', 1, '2019-08-15 12:10:01'),
(42, 6, 'SPA MASSAGE TRỊ LIỆU HDV', NULL, '', '', 1, '2019-08-16 12:10:45'),
(43, 7, 'GA PUB', NULL, '', '', 1, '2019-08-17 14:25:02'),
(44, 8, 'Quán Cà phê PHÚC NGUYÊN PHƯƠNG ', NULL, '', '', 1, '2019-08-18 17:07:48'),
(45, 9, 'HÂN HY MILK TEA', NULL, '', '', 1, '2019-08-19 10:56:50'),
(46, 10, 'The TIME Coffee & Bakery.', NULL, '', '', 1, '2019-08-21 10:59:37'),
(47, 11, 'HT COFFEE', NULL, '', '', 1, '2019-08-22 05:18:04'),
(48, 12, 'BÁNH ƯỚT HOÀNG THÀNH 2', NULL, '', '', 1, '2019-08-22 05:29:35'),
(49, 13, 'FM STYLE', NULL, '', '', 1, '2019-08-23 13:14:26'),
(50, 14, 'LAM Cafe', NULL, '', '', 1, '2019-08-25 11:00:14'),
(51, 15, 'COFFEE SUN', NULL, '<p>COFFEE SUN -&nbsp;79 Phạm Thị Li&ecirc;n, TP Huế</p>\r\n', '2019082685852.jpg', 1, '2019-08-26 13:58:52'),
(52, 16, 'BELL COFFEE', NULL, '<p>BELL COFFEE -&nbsp;03 H&agrave; Huy Tập, TP Huế</p>\r\n', '20190826102511.jpg', 1, '2019-08-26 15:25:11'),
(53, 17, 'HAN COOK BBQ', NULL, '<p>HAN COOK BBQ -&nbsp;15 ĐỘI CUNG HUẾ</p>\r\n', '20190828105146.jpg', 1, '2019-08-28 15:51:46'),
(54, 18, 'ANH KAFE', NULL, '<p>ANH KAFE - O5 NGUYỄ N HUỆ</p>\r\n\r\n<p>', '20190830103227.jpg', 1, '2019-08-30 15:32:27'),
(55, 19, 'YOU DO COFFEE', NULL, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/youdocoffee?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAdGLWiYCEVqbe-H_stNexTZlfma0DhMSsxtnmsyuj0K5lFDmlaX-HFH06P7w-tdGKaR1IFbIZuRXD7ynCmXouOJ65Q97e3szDN08UFLX5MVg7bwgiMiX-XRarWriqQqReHvs2rQLpknevG4WOYsd6MMJ_ZtfSiExujrZ4PC_B3PRhD8hUly5_HbNDxVEeAxf1BSW1QMrhnBFGZvbQuG-VnTAorqyJ8rS9Y53lxADEOiXFXqixf2j_WlOiJoHPvxirxQaXJkdU38Ay4JIDE8yBvegCO1jtfRLi8TQWwWsytnAbQGyxauALQIF_TTHd2U3WlzKx2rUezCE5a0skH7Mk&amp;__tn__=%2ANK-R\">#YouDoCoffee</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/tuyendung?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAdGLWiYCEVqbe-H_stNexTZlfma0DhMSsxtnmsyuj0K5lFDmlaX-HFH06P7w-tdGKaR1IFbIZuRXD7ynCmXouOJ65Q97e3szDN08UFLX5MVg7bwgiMiX-XRarWriqQqReHvs2rQLpknevG4WOYsd6MMJ_ZtfSiExujrZ4PC_B3PRhD8hUly5_HbNDxVEeAxf1BSW1QMrhnBFGZvbQuG-VnTAorqyJ8rS9Y53lxADEOiXFXqixf2j_WlOiJoHPvxirxQaXJkdU38Ay4JIDE8yBvegCO1jtfRLi8TQWwWsytnAbQGyxauALQIF_TTHd2U3WlzKx2rUezCE5a0skH7Mk&amp;__tn__=%2ANK-R\">#tuyendung</a></p>\r\n\r\n<p>You Do Coffee&nbsp;<br />\r\n', '20190830104145.jpg', 1, '2019-08-30 15:41:45'),
(56, 20, 'HUẾ ZONE', NULL, '<p>&nbsp;HUẾ ZONE ESPORTS GAMING<br />\r\nYOU PLAY - WE CARE</p>\r\n\r\n<p>Địa chỉ : 5A Phong Ch&acirc;u ( Đường b&ecirc;n h&ocirc;ng BigC )<br />\r\n☎️&nbsp;HotLine : 02343933333</p>\r\n\r\n<p>Địa chỉ : 295 Nguyễn Tr&atilde;i&nbsp;<br />\r\n☎️&nbsp;HotLine : 02343.511693&nbsp;Địa chỉ : 131 Ng&ocirc; Thế L&acirc;n<br />\r\n☎️&nbsp;Hotline : 02343.511692</p>\r\n\r\n<p>☕️&nbsp;COFFEE GAME MOBILE</p>\r\n\r\n<p>&nbsp;Địa chỉ : 02 Tố Hữu .<br />\r\n☎️&nbsp;Hotline : 0914561711</p>\r\n\r\n<p>&nbsp;Địa chỉ : 254 Đinh Ti&ecirc;n Ho&agrave;ng&nbsp;<br />\r\n☎️&nbsp;Hotline : 02343.522579</p>\r\n\r\n<p>Trung T&acirc;m Rửa &amp; Chăm S&oacute;c Xe &Ocirc; T&ocirc; - Xe M&aacute;y</p>\r\n\r\n<p>&nbsp;Địa chỉ : 113 B&agrave; Triệu .<br />\r\n☎️&nbsp;Hotline : 0933065995 .</p>\r\n\r\n<p>⚠️&nbsp;Mọi thắc mắc , g&oacute;p &yacute;, phản &aacute;nh, đ&oacute;ng g&oacute;p xin vui l&ograve;ng li&ecirc;n hệ :<br />\r\n&nbsp;Mr Ph&uacute; : 0947744655 .<br />\r\n&nbsp;Mr Huy : 0932449991&nbsp;</p>\r\n', '20190830110001.jpg', 1, '2019-08-30 16:00:01'),
(57, 21, ' Cam On spa', NULL, '<p>Cam On spa</p>\r\n\r\n<p>&nbsp;email: anhtram2410@gmail.com<br />\r\nMọi th&ocirc;ng tin cần xin li&ecirc;n hệ : ‭<br />\r\n☎️‭ 0931 790 944 / 0935 174 474 - Ms. Tr&acirc;m (zalo hoặc gọi điện)</p>\r\n', '20190830110523.jpg', 1, '2019-08-30 16:05:23'),
(58, 22, 'BLUEHANDS CAFE - PHỐ TÂY HUẾ', NULL, '<p>BLUEHANDS CAF&Eacute; - CHUỖI CỬA H&Agrave;NG ELECTRIC MOBILE COFFEE BICYCLE lần đầu ti&ecirc;n c&oacute; mặt tại Huế.</p>\r\n', '2019092102148.jpg', 1, '2019-09-02 03:21:48'),
(59, 23, 'V8 CAFE', NULL, '<p>Cafe V8&nbsp;<br />\r\n<br />\r\nM&ocirc;i trường l&agrave;m việc th&acirc;n thiện , ho&agrave; đồng , m&aacute;t mẻ<br />\r\nLi&ecirc;n hệ trực tiếp tại Cafe V8 56 Ng&ocirc; Quyền hoặc sdt 0766536264 chị Ly ( quản l&yacute;)</p>\r\n', '2019092103212.jpg', 1, '2019-09-02 03:32:12'),
(60, 24, 'SUN CAFE\'', NULL, '<p>SUN CAFE&#39; -&nbsp;9A Nguyễn Huệ&nbsp;</p>\r\n', '201909230047.jpg', 1, '2019-09-02 08:00:47'),
(61, 25, 'BI\'S HOUSE COFFEE', NULL, '<p>BI&#39;S HOUSE COFFEE 376 PHAN CHU TRINH</p>\r\n\r\n<p>Li&ecirc;n hệ trực tiếp: 376 Phan Chu Trinh hoặc ib&nbsp;<a href=\"https://www.facebook.com/bihousecoffee/?ref=gs&amp;__tn__=%2CdK-R-R&amp;eid=ARAp1pvcjCMcYmMnrnCnig1v3_GSJnBRgnRHQJxbywmOrx0Zj-XxbbFYl0N79DxAkfssgZUC9HMblNQE&amp;fref=gs&amp;dti=796024457157629&amp;hc_location=group\">Bi&#39;s House Coffee - 376 Phan Chu Trinh</a></p>\r\n\r\n<p>Gọi hoặc nhắn tin : 0968790356</p>\r\n', '2019094110258.jpg', 1, '2019-09-04 16:02:58'),
(62, 26, 'YOURS workspace', NULL, '<p>YOURS workspace Huế - Coffee Shop &amp; Kh&ocirc;ng gian l&agrave;m việc s&aacute;ng tạo</p>\r\n\r\n<p>&nbsp;D26, Đường số 1, An Cựu city Huế</p>\r\n', '2019094110609.jpg', 1, '2019-09-04 16:06:09'),
(63, 27, 'MÌ QUẢNG CÔ BA', NULL, '<p>M&Igrave; QUẢNG C&Ocirc; BA</p>\r\n\r\n<p>Cơ sở 1:14 Dương Văn An<br />\r\nCơ sở 2: 72 Hai B&agrave; Trưng</p>\r\n', '2019094112249.jpg', 1, '2019-09-04 16:22:49'),
(64, 28, 'Quán Trí Coffee', NULL, '<p>&nbsp;</p>\r\n\r\n<p>Qu&aacute;n Tr&iacute; Coffee địa chỉ 26 yết ki&ecirc;u</p>\r\n\r\n<p>nh&acirc;n vi&ecirc;n phục vụ ca chiều. L&agrave;m việc từ 12h-18h . lương 1tr2.</p>\r\n\r\n<p>Vui l&ograve;ng trực tiếp 0974565050 hoặc chủ động inbox gi&uacute;p m&igrave;nh.</p>\r\n\r\n<p>C&aacute;m ơn!</p>\r\n', '2019094112858.jpg', 1, '2019-09-04 16:28:58'),
(65, 29, 'BÁNH TRÁN TRỘN SÀI GÒN AMY', NULL, '<p>B&Aacute;NH TR&Aacute;N TRỘN S&Agrave;I G&Ograve;N AMY</p>\r\n\r\n<p>Địa chỉ: 181 Mai Th&uacute;c Loan<br />\r\n42 Trường Chinh</p>\r\n\r\n<p>Li&ecirc;n hệ trực tiếp tại qu&aacute;n ho&agrave;n sđt(0338407001)</p>\r\n', '2019094113636.jpg', 1, '2019-09-04 16:36:36'),
(66, 30, 'LAM CÀ FÊ', NULL, '<p>LAM C&Agrave; F&Ecirc;</p>\r\n\r\n<p>⚠️Th&ocirc;ng tin li&ecirc;n hệ:&nbsp;<br />\r\n&nbsp;Địa chỉ: 100 Nguyễn Huệ, TP Huế.<br />\r\n☎️&nbsp;SĐT: 0934929200<br />\r\nFB:&nbsp;<a href=\"https://www.facebook.com/liu.bee.10?__tn__=%2CdKH-R-R&amp;eid=ARCFsmFwUVzbZziJ7UV0UoKxxAlG_Ly1xWgW7YJSaIq_XPnaMngwZDBLj9YrjnECqXPdBdUPn8sKQ_oh&amp;fref=mentions&amp;hc_location=group\" title=\"Liu Bee\">Liu Bee</a></p>\r\n', '2019094114423.jpg', 1, '2019-09-04 16:44:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `title`, `province_id`, `code`, `published`, `ordering`) VALUES
(2, 'Quận Ba Đình', 17, '10101', 1, 5),
(3, 'Quận Tây Hồ', 17, '10103', 1, 5),
(4, 'Quận Hoàn Kiếm', 17, '10105', 1, 5),
(5, 'Quận Hai Bà Trưng', 17, '10107', 1, 5),
(6, 'Quận Đống Đa', 17, '10109', 1, 5),
(7, 'Quận Thanh Xuân', 17, '10111', 1, 5),
(8, 'Quận Cầu Giấy', 17, '10113', 1, 5),
(9, 'Huyện Sóc Sơn', 17, '10115', 1, 5),
(10, 'Huyện Đông Anh', 17, '10117', 1, 5),
(11, 'Huyện Gia Lâm', 17, '10119', 1, 5),
(12, 'Huyện Từ Liêm', 17, '10121', 1, 5),
(13, 'Huyện Thanh Trì', 17, '10123', 1, 5),
(15, 'Quận Hồng Bàng', 23, '10301', 1, 5),
(16, 'Quận Ngô Quyền', 23, '10303', 1, 5),
(17, 'Quận Lê Chân', 23, '10305', 1, 5),
(18, 'Quận Kiến An', 23, '10307', 1, 5),
(19, 'Thị xã Đồ Sơn', 23, '10309', 1, 5),
(20, 'Huyện Thuỷ Nguyên', 23, '10311', 1, 5),
(21, 'Huyện An Hải', 23, '10313', 1, 5),
(22, 'Huyện An Lão', 23, '10315', 1, 5),
(23, 'Huyện Kiến Thuỵ', 23, '10317', 1, 5),
(24, 'Huyện Tiên Lãng', 23, '10319', 1, 5),
(25, 'Huyện Vĩnh Bảo', 23, '10321', 1, 5),
(26, 'Huyện Cát Hải', 23, '10323', 1, 5),
(27, 'Huyện Bạch Long Vĩ', 23, '10325', 1, 5),
(29, 'Thị xã Vĩnh Yên', 55, '10401', 1, 5),
(30, 'Huyện Lập Thạch', 55, '10403', 1, 5),
(31, 'Huyện Tam Dương', 55, '10405', 1, 5),
(32, 'Huyện Vĩnh Tường', 55, '10407', 1, 5),
(33, 'Huyện Yên Lạc', 55, '10409', 1, 5),
(34, 'Huyện Mê Linh', 55, '10411', 1, 5),
(35, 'Huyện Bình Xuyên', 55, '10413', 1, 5),
(37, 'Thị xã Hà Đông', 18, '10501', 1, 5),
(38, 'Thị xã Sơn Tây', 18, '10503', 1, 5),
(39, 'Huyện Ba Vì', 18, '10505', 1, 5),
(40, 'Huyện Phúc Thọ', 18, '10507', 1, 5),
(41, 'Huyện Đan Phượng', 18, '10509', 1, 5),
(42, 'Huyện Thạch Thất', 18, '10511', 1, 5),
(43, 'Huyện Hoài Đức', 18, '10513', 1, 5),
(44, 'Huyện Quốc Oai', 18, '10515', 1, 5),
(45, 'Huyện Chương Mỹ', 18, '10517', 1, 5),
(46, 'Huyện Thanh Oai', 18, '10519', 1, 5),
(47, 'Huyện Thường Tín', 18, '10521', 1, 5),
(48, 'Huyện Mỹ Đức', 18, '10523', 1, 5),
(49, 'Huyện ứng Hòa', 18, '10525', 1, 5),
(50, 'Huyện Phú Xuyên', 18, '10527', 1, 5),
(52, 'Thị xã Bắc Ninh', 9, '22301', 1, 5),
(53, 'Huyện Yên Phong', 9, '22303', 1, 5),
(54, 'Huyện Quế Võ', 9, '22305', 1, 5),
(55, 'Huyện Tiên Du', 9, '22307', 1, 5),
(56, 'Huyện Từ Sơn', 9, '22308', 1, 5),
(57, 'Huyện Thuận Thành', 9, '22309', 1, 5),
(58, 'Huyện Lương Tài', 9, '22311', 1, 5),
(59, 'Huyện Gia Bình', 9, '22312', 1, 5),
(61, 'Thành phố Hải Dương', 22, '10701', 1, 5),
(62, 'Huyện Chí Linh', 22, '10703', 1, 5),
(63, 'Huyện Nam Sách', 22, '10705', 1, 5),
(64, 'Huyện Thanh Hà', 22, '10707', 1, 5),
(65, 'Huyện Kinh Môn', 22, '10709', 1, 5),
(66, 'Huyện Kim Thành', 22, '10711', 1, 5),
(67, 'Huyện Gia Lộc', 22, '10713', 1, 5),
(68, 'Huyện Tứ Kỳ', 22, '10715', 1, 5),
(69, 'Huyện Cẩm Giàng', 22, '10717', 1, 5),
(70, 'Huyện Bình Giang', 22, '10719', 1, 5),
(71, 'Huyện Thanh Miện', 22, '10721', 1, 5),
(72, 'Huyện Ninh Giang', 22, '10723', 1, 5),
(74, 'Thị xã Hưng Yên', 21, '10901', 1, 5),
(75, 'Huyện Văn Lâm', 21, '10902', 1, 5),
(76, 'Huyện Mỹ Văn', 21, '10903', 1, 5),
(77, 'Huyện Yên Mỹ', 21, '10904', 1, 5),
(78, 'Huyện Châu Giang', 21, '10905', 1, 5),
(79, 'Huyện Khoái Châu', 21, '10906', 1, 5),
(80, 'Huyện Ân Thi', 21, '10907', 1, 5),
(81, 'Huyện Kim Động', 21, '10909', 1, 5),
(82, 'Huyện Phù Cừ', 21, '10911', 1, 5),
(83, 'Huyện Tiên Lữ', 21, '10913', 1, 5),
(85, 'Thị xã Phủ Lý', 16, '11101', 1, 5),
(86, 'Huyện Duy Tiên', 16, '11103', 1, 5),
(87, 'Huyện Kim Bảng', 16, '11105', 1, 5),
(88, 'Huyện Lý Nhân', 16, '11107', 1, 5),
(89, 'Huyện Thanh Liêm', 16, '11109', 1, 5),
(90, 'Huyện Bình Lục', 16, '11111', 1, 5),
(92, 'Thành phố Nam Định', 34, '11301', 1, 5),
(93, 'Huyện Vụ Bản', 34, '11303', 1, 5),
(94, 'Huyện Mỹ Lộc', 34, '11305', 1, 5),
(95, 'Huyện ý Yên', 34, '11307', 1, 5),
(96, 'Huyện Nam Trực', 34, '11309', 1, 5),
(97, 'Huyện Trực Ninh', 34, '11311', 1, 5),
(98, 'Huyện Xuân Trường', 34, '11313', 1, 5),
(99, 'Huyện Giao Thủy', 34, '11315', 1, 5),
(100, 'Huyện Nghĩa Hưng', 34, '11317', 1, 5),
(101, 'Huyện Hải Hậu', 34, '11319', 1, 5),
(103, 'Thị xã Thái Bình', 47, '11501', 1, 5),
(104, 'Huyện Quỳnh Phụ', 47, '11503', 1, 5),
(105, 'Huyện Hưng Hà', 47, '11505', 1, 5),
(106, 'Huyện Thái Thụy', 47, '11507', 1, 5),
(107, 'Huyện Đông Hưng', 47, '11509', 1, 5),
(108, 'Huyện Vũ Thư', 47, '11511', 1, 5),
(109, 'Huyện Kiến Xương', 47, '11513', 1, 5),
(110, 'Huyện Tiền Hải', 47, '11515', 1, 5),
(112, 'Thị xã Ninh Bình', 36, '11701', 1, 5),
(113, 'Thị xã Tam Điệp', 36, '11703', 1, 5),
(114, 'Huyện Nho Quan', 36, '11705', 1, 5),
(115, 'Huyện Gia Viễn', 36, '11707', 1, 5),
(116, 'Huyện Hoa Lư', 36, '11709', 1, 5),
(117, 'Huyện Yên Mô', 36, '11711', 1, 5),
(118, 'Huyện Yên Khánh', 36, '11713', 1, 5),
(119, 'Huyện Kim Sơn', 36, '11715', 1, 5),
(121, 'Thị xã Hà Giang', 15, '20101', 1, 5),
(122, 'Huyện Đồng Văn', 15, '20103', 1, 5),
(123, 'Huyện Mèo Vạc', 15, '20105', 1, 5),
(124, 'Huyện Yên Minh', 15, '20107', 1, 5),
(125, 'Huyện Quản Bạ', 15, '20109', 1, 5),
(126, 'Huyện Bắc Mê', 15, '20111', 1, 5),
(127, 'Huyện Hoàng Su Phì', 15, '20113', 1, 5),
(128, 'Huyện Vị Xuyên', 15, '20115', 1, 5),
(129, 'Huyện Xín Mần', 15, '20117', 1, 5),
(130, 'Huyện Bắc Quang', 15, '20119', 1, 5),
(132, 'Thị xã Cao Bằng', 11, '20301', 1, 5),
(133, 'Huyện Bảo Lạc', 11, '20303', 1, 5),
(134, 'Huyện Hà Quảng', 11, '20305', 1, 5),
(135, 'Huyện Thông Nông', 11, '20307', 1, 5),
(136, 'Huyện Trà Lĩnh', 11, '20309', 1, 5),
(137, 'Huyện Trùng Khánh', 11, '20311', 1, 5),
(138, 'Huyện Nguyên Bình', 11, '20313', 1, 5),
(139, 'Huyện Hoà An', 11, '20315', 1, 5),
(140, 'Huyện Quảng Hoà', 11, '20317', 1, 5),
(141, 'Huyện Hạ Lang', 11, '20319', 1, 5),
(142, 'Huyện Thạch An', 11, '20321', 1, 5),
(144, 'Thị xã Lào Cai', 31, '20501', 1, 5),
(145, 'Thị xã Cam Đường', 31, '20503', 1, 5),
(146, 'Huyện Mường Khương', 31, '20505', 1, 5),
(147, 'Huyện Bát Xát', 31, '20507', 1, 5),
(148, 'Huyện Bắc Hà', 31, '20509', 1, 5),
(149, 'Huyện Bảo Thắng', 31, '20511', 1, 5),
(150, 'Huyện Sa Pa', 31, '20513', 1, 5),
(151, 'Huyện Bảo Yên', 31, '20515', 1, 5),
(152, 'Huyện Than Uyên', 31, '20517', 1, 5),
(153, 'Huyện Văn Bàn', 31, '20519', 1, 5),
(155, 'Thị xã Bắc Kạn', 8, '20701', 1, 5),
(156, 'Huyện Ba Bể', 8, '20703', 1, 5),
(157, 'Huyện Ngân Sơn', 8, '20705', 1, 5),
(158, 'Huyện Chợ Đồn', 8, '20707', 1, 5),
(159, 'Huyện Na Rì', 8, '20709', 1, 5),
(160, 'Huyện Bạch Thông', 8, '20711', 1, 5),
(161, 'Huyện Chợ Mới', 8, '20713', 1, 5),
(163, 'Thị xã Lạng Sơn', 33, '20901', 1, 5),
(164, 'Huyện Tràng Định', 33, '20903', 1, 5),
(165, 'Huyện Văn Lãng', 33, '20905', 1, 5),
(166, 'Huyện Bình Gia', 33, '20907', 1, 5),
(167, 'Huyện Bắc Sơn', 33, '20909', 1, 5),
(168, 'Huyện Văn Quan', 33, '20911', 1, 5),
(169, 'Huyện Cao Lộc', 33, '20913', 1, 5),
(170, 'Huyện Lộc Bình', 33, '20915', 1, 5),
(171, 'Huyện Chi Lăng', 33, '20917', 1, 5),
(172, 'Huyện Đình Lập', 33, '20919', 1, 5),
(173, 'Huyện Hữu Lũng', 33, '20921', 1, 5),
(175, 'Thị xã Tuyên Quang', 52, '21101', 1, 5),
(176, 'Huyện Nà Hang', 52, '21103', 1, 5),
(177, 'Huyện Chiêm Hóa', 52, '21105', 1, 5),
(178, 'Huyện Hàm Yên', 52, '21107', 1, 5),
(179, 'Huyện Yên Sơn', 52, '21109', 1, 5),
(180, 'Huyện Sơn Dương', 52, '21111', 1, 5),
(182, 'Thị xã Yên Bái', 56, '21301', 1, 5),
(183, 'Thị xã Nghĩa Lộ', 56, '21303', 1, 5),
(184, 'Huyện Lục Yên', 56, '21305', 1, 5),
(185, 'Huyện Văn Yên', 56, '21307', 1, 5),
(186, 'Huyện Mù Căng Chải', 56, '21309', 1, 5),
(187, 'Huyện Trấn Yên', 56, '21311', 1, 5),
(188, 'Huyện Yên Bình', 56, '21313', 1, 5),
(189, 'Huyện Văn Chấn', 56, '21315', 1, 5),
(190, 'Huyện Trạm Tấu', 56, '21317', 1, 5),
(192, 'Thành phố Thái Nguyên', 48, '21501', 1, 5),
(193, 'Thị xã Sông Công', 48, '21503', 1, 5),
(194, 'Huyện Định Hóa', 48, '21505', 1, 5),
(195, 'Huyện Võ Nhai', 48, '21507', 1, 5),
(196, 'Huyện Phú Lương', 48, '21509', 1, 5),
(197, 'Huyện Đồng Hỷ', 48, '21511', 1, 5),
(198, 'Huyện Đại Từ', 48, '21513', 1, 5),
(199, 'Huyện Phú Bình', 48, '21515', 1, 5),
(200, 'Huyện Phổ Yên', 48, '21517', 1, 5),
(202, 'Thành phố Việt Trì', 38, '21701', 1, 5),
(203, 'Thị xã Phú Thọ', 38, '21703', 1, 5),
(204, 'Huyện Đoan Hùng', 38, '21705', 1, 5),
(205, 'Huyện Hạ Hoà', 38, '21707', 1, 5),
(206, 'Huyện Thanh Ba', 38, '21709', 1, 5),
(207, 'Huyện Phong Châu', 38, '21711', 1, 5),
(208, 'Huyện Lâm Thao', 38, '21712', 1, 5),
(209, 'Huyện Sông Thao', 38, '21713', 1, 5),
(210, 'Huyện Yên Lập', 38, '21715', 1, 5),
(211, 'Huyện Tam Thanh', 38, '21717', 1, 5),
(212, 'Huyện Thanh Thuỷ', 38, '21718', 1, 5),
(213, 'Huyện Thanh Sơn', 38, '21719', 1, 5),
(215, 'Thị xã Bắc Giang', 7, '22101', 1, 5),
(216, 'Huyện Yên Thế', 7, '22103', 1, 5),
(217, 'Huyện Tân Yên', 7, '22105', 1, 5),
(218, 'Huyện Lục Ngạn', 7, '22107', 1, 5),
(219, 'Huyện Hiệp Hòa', 7, '22109', 1, 5),
(220, 'Huyện Lạng Giang', 7, '22111', 1, 5),
(221, 'Huyện Sơn Động', 7, '22113', 1, 5),
(222, 'Huyện Lục Nam', 7, '22115', 1, 5),
(223, 'Huyện Việt Yên', 7, '22117', 1, 5),
(224, 'Huyện Yên Dũng', 7, '22119', 1, 5),
(226, 'Thành phố Hạ Long', 43, '22501', 1, 5),
(227, 'Thị xã Cẩm Phả', 43, '22503', 1, 5),
(228, 'Thị xã Uông Bí', 43, '22505', 1, 5),
(229, 'Huyện Bình Liêu', 43, '22507', 1, 5),
(230, 'Thị Xã Móng Cái', 43, '22509', 1, 5),
(231, 'Huyện Quảng Hà', 43, '22511', 1, 5),
(232, 'Huyện Tiên Yên', 43, '22513', 1, 5),
(233, 'Huyện Ba Chẽ', 43, '22515', 1, 5),
(234, 'Huyện Vân Đồn', 43, '22517', 1, 5),
(235, 'Huyện Hoành Bồ', 43, '22519', 1, 5),
(236, 'Huyện Đông Triều', 43, '22521', 1, 5),
(237, 'Huyện Cô Tô', 43, '22523', 1, 5),
(238, 'Huyện Yên Hưng', 43, '22525', 1, 5),
(240, 'Thị xã Điện Biên Phủ', 29, '30101', 1, 5),
(241, 'Thị xã Lai Châu', 29, '30103', 1, 5),
(242, 'Huyện Mường Tè', 29, '30105', 1, 5),
(243, 'Huyện Phong Thổ', 29, '30107', 1, 5),
(244, 'Huyện Sìn Hồ', 29, '30109', 1, 5),
(245, 'Huyện Mường Lay', 29, '30111', 1, 5),
(246, 'Huyện Tủa Chùa', 29, '30113', 1, 5),
(247, 'Huyện Tuần Giáo', 29, '30115', 1, 5),
(248, 'Huyện Điện Biên', 29, '30117', 1, 5),
(249, 'Huyện Điện Biên Đông', 29, '30119', 1, 5),
(251, 'Thị xã Sơn La', 45, '30301', 1, 5),
(252, 'Huyện Quỳnh Nhai', 45, '30303', 1, 5),
(253, 'Huyện Mường La', 45, '30305', 1, 5),
(254, 'Huyện Thuận Châu', 45, '30307', 1, 5),
(255, 'Huyện Bắc Yên', 45, '30309', 1, 5),
(256, 'Huyện Phù Yên', 45, '30311', 1, 5),
(257, 'Huyện Mai Sơn', 45, '30313', 1, 5),
(258, 'Huyện Sông Mã', 45, '30315', 1, 5),
(259, 'Huyện Yên Châu', 45, '30317', 1, 5),
(260, 'Huyện Mộc Châu', 45, '30319', 1, 5),
(262, 'Thị xã Hòa Bình', 20, '30501', 1, 5),
(263, 'Huyện Đà Bắc', 20, '30503', 1, 5),
(264, 'Huyện Mai Châu', 20, '30505', 1, 5),
(265, 'Huyện Kỳ Sơn', 20, '30507', 1, 5),
(266, 'Huyện Lương Sơn', 20, '30509', 1, 5),
(267, 'Huyện Kim Bôi', 20, '30511', 1, 5),
(268, 'Huyện Tân Lạc', 20, '30513', 1, 5),
(269, 'Huyện Lạc Sơn', 20, '30515', 1, 5),
(270, 'Huyện Lạc Thủy', 20, '30517', 1, 5),
(271, 'Huyện Yên Thủy', 20, '30519', 1, 5),
(273, 'Thành phố Thanh Hóa', 46, '40101', 1, 5),
(274, 'Thị xã Bỉm Sơn', 46, '40103', 1, 5),
(275, 'Thị xã Sầm Sơn', 46, '40105', 1, 5),
(276, 'Huyện Mường Lát', 46, '40107', 1, 5),
(277, 'Huyện Quan Hóa', 46, '40109', 1, 5),
(278, 'Huyện Quan Sơn', 46, '40111', 1, 5),
(279, 'Huyện Bá Thước', 46, '40113', 1, 5),
(280, 'Huyện Cẩm Thủy', 46, '40115', 1, 5),
(281, 'Huyện Lang Chánh', 46, '40117', 1, 5),
(282, 'Huyện Thạch Thành', 46, '40119', 1, 5),
(283, 'Huyện Ngọc Lạc', 46, '40121', 1, 5),
(284, 'Huyện Thường Xuân', 46, '40123', 1, 5),
(285, 'Huyện Như Xuân', 46, '40125', 1, 5),
(286, 'Huyện Như Thanh', 46, '40127', 1, 5),
(287, 'Huyện Vĩnh Lộc', 46, '40129', 1, 5),
(288, 'Huyện Hà Trung', 46, '40131', 1, 5),
(289, 'Huyện Nga Sơn', 46, '40133', 1, 5),
(290, 'Huyện Yên Định', 46, '40135', 1, 5),
(291, 'Huyện Thọ Xuân', 46, '40137', 1, 5),
(292, 'Huyện Hậu Lộc', 46, '40139', 1, 5),
(293, 'Huyện Thiệu Hoá', 46, '40141', 1, 5),
(294, 'Huyện Hoằng Hóa', 46, '40143', 1, 5),
(295, 'Huyện Đông Sơn', 46, '40145', 1, 5),
(296, 'Huyện Triệu Sơn', 46, '40147', 1, 5),
(297, 'Huyện Quảng Xương', 46, '40149', 1, 5),
(298, 'Huyện Nông Cống', 46, '40151', 1, 5),
(299, 'Huyện Tĩnh Gia', 46, '40153', 1, 5),
(301, 'Thành phố Vinh', 35, '40301', 1, 5),
(302, 'Thị xã Cửa Lò', 35, '40303', 1, 5),
(303, 'Huyện Quế Phong', 35, '40305', 1, 5),
(304, 'Huyện Quỳ Châu', 35, '40307', 1, 5),
(305, 'Huyện Kỳ Sơn', 35, '40309', 1, 5),
(306, 'Huyện Quỳ Hợp', 35, '40311', 1, 5),
(307, 'Huyện Nghĩa Đàn', 35, '40313', 1, 5),
(308, 'Huyện Tương Dương', 35, '40315', 1, 5),
(309, 'Huyện Quỳnh Lưu', 35, '40317', 1, 5),
(310, 'Huyện Tân Kỳ', 35, '40319', 1, 5),
(311, 'Huyện Con Cuông', 35, '40321', 1, 5),
(312, 'Huyện Yên Thành', 35, '40323', 1, 5),
(313, 'Huyện Diễn Châu', 35, '40325', 1, 5),
(314, 'Huyện Anh Sơn', 35, '40327', 1, 5),
(315, 'Huyện Đô Lương', 35, '40329', 1, 5),
(316, 'Huyện Thanh Chương', 35, '40331', 1, 5),
(317, 'Huyện Nghi Lộc', 35, '40333', 1, 5),
(318, 'Huyện Nam Đàn', 35, '40335', 1, 5),
(319, 'Huyện Hưng Nguyên', 35, '40337', 1, 5),
(321, 'Thị xã Hà Tĩnh', 19, '40501', 1, 5),
(322, 'Thị xã Hồng Lĩnh', 19, '40503', 1, 5),
(323, 'Huyện Nghi Xuân', 19, '40505', 1, 5),
(324, 'Huyện Đức Thọ', 19, '40507', 1, 5),
(325, 'Huyện Hương Sơn', 19, '40509', 1, 5),
(326, 'Huyện Can Lộc', 19, '40511', 1, 5),
(327, 'Huyện Thạch Hà', 19, '40513', 1, 5),
(328, 'Huyện Cẩm Xuyên', 19, '40515', 1, 5),
(329, 'Huyện Hương Khê', 19, '40517', 1, 5),
(330, 'Huyện Kỳ Anh', 19, '40519', 1, 5),
(332, 'Thị xã Đồng Hới', 40, '40701', 1, 5),
(333, 'Huyện Tuyên Hóa', 40, '40703', 1, 5),
(334, 'Huyện Minh Hóa', 40, '40705', 1, 5),
(335, 'Huyện Quảng Trạch', 40, '40707', 1, 5),
(336, 'Huyện Bố Trạch', 40, '40709', 1, 5),
(337, 'Huyện Quảng Ninh', 40, '40711', 1, 5),
(338, 'Huyện Lệ Thủy', 40, '40713', 1, 5),
(340, 'Thị xã Đông Hà', 44, '40901', 1, 5),
(341, 'Thị xã Quảng Trị', 44, '40903', 1, 5),
(342, 'Huyện Vĩnh Linh', 44, '40905', 1, 5),
(343, 'Huyện Gio Linh', 44, '40907', 1, 5),
(344, 'Huyện Cam Lộ', 44, '40909', 1, 5),
(345, 'Huyện Triệu Phong', 44, '40911', 1, 5),
(346, 'Huyện Hải Lăng', 44, '40913', 1, 5),
(347, 'Huyện Hướng Hóa', 44, '40915', 1, 5),
(348, 'Huyện Đa Krông', 44, '40917', 1, 5),
(350, 'Thành phố Huế', 49, '41101', 1, 5),
(351, 'Huyện Phong Điền', 49, '41103', 1, 5),
(352, 'Huyện Quảng Điền', 49, '41105', 1, 5),
(353, 'Huyện Hương Trà', 49, '41107', 1, 5),
(354, 'Huyện Phú Vang', 49, '41109', 1, 5),
(355, 'Huyện Hương Thủy', 49, '41111', 1, 5),
(356, 'Huyện Phú Lộc', 49, '41113', 1, 5),
(357, 'Huyện A Lưới', 49, '41115', 1, 5),
(358, 'Huyện Nam Đông', 49, '41117', 1, 5),
(360, 'Quận Hải Châu', 57, '50101', 1, 5),
(361, 'Quận Thanh Khê', 57, '50103', 1, 5),
(362, 'Quận Sơn Trà', 57, '50105', 1, 5),
(363, 'Quận Ngũ Hành Sơn', 57, '50107', 1, 5),
(364, 'Quận Liên Chiểu', 57, '50109', 1, 5),
(365, 'Huyện Hoà Vang', 57, '50111', 1, 5),
(366, 'Huyện Đảo Hoàng Sa', 57, '50113', 1, 5),
(368, 'Thị xã Tam Kỳ', 41, '50301', 1, 1),
(369, 'Thị xã Hội An', 41, '50303', 1, 2),
(370, 'Huyện Hiên', 41, '50305', 1, 13),
(371, 'Huyện Đại Lộc', 41, '50307', 1, 12),
(372, 'Huyện Điện Bàn', 41, '50309', 1, 11),
(373, 'Huyện Duy Xuyên', 41, '50311', 1, 10),
(374, 'Huyện Giằng', 41, '50313', 1, 9),
(375, 'Huyện Thăng Bình', 41, '50315', 1, 8),
(376, 'Huyện Quế Sơn', 41, '50317', 1, 7),
(377, 'Huyện Hiệp Đức', 41, '50319', 1, 6),
(378, 'Huyện Tiên Phước', 41, '50321', 1, 5),
(379, 'Huyện Phước Sơn', 41, '50323', 1, 4),
(380, 'Huyện Núi Thành', 41, '50325', 1, 3),
(381, 'Huyện Trà My', 41, '50327', 1, 14),
(383, 'Thị xã Quảng Ngãi', 42, '50501', 1, 5),
(384, 'Huyện Lý Sơn', 42, '50503', 1, 5),
(385, 'Huyện Bình Sơn', 42, '50505', 1, 5),
(386, 'Huyện Trà Bồng', 42, '50507', 1, 5),
(387, 'Huyện Sơn Tịnh', 42, '50509', 1, 5),
(388, 'Huyện Sơn Tây', 42, '50511', 1, 5),
(389, 'Huyện Sơn Hà', 42, '50513', 1, 5),
(390, 'Huyện Tư Nghĩa', 42, '50515', 1, 5),
(391, 'Huyện Nghĩa Hành', 42, '50517', 1, 5),
(392, 'Huyện Minh Long', 42, '50519', 1, 5),
(393, 'Huyện Mộ Đức', 42, '50521', 1, 5),
(394, 'Huyện Đức Phổ', 42, '50523', 1, 5),
(395, 'Huyện Ba Tơ', 42, '50525', 1, 5),
(397, 'Thành phố Qui Nhơn', 6, '50701', 1, 5),
(398, 'Huyện An Lão', 6, '50703', 1, 5),
(399, 'Huyện Hoài Nhơn', 6, '50705', 1, 5),
(400, 'Huyện Hoài Ân', 6, '50707', 1, 5),
(401, 'Huyện Phù Mỹ', 6, '50709', 1, 5),
(402, 'Huyện Vĩnh Thạnh', 6, '50711', 1, 5),
(403, 'Huyện Phù Cát', 6, '50713', 1, 5),
(404, 'Huyện Tây Sơn', 6, '50715', 1, 5),
(405, 'Huyện An Nhơn', 6, '50717', 1, 5),
(406, 'Huyện Tuy Phước', 6, '50719', 1, 5),
(407, 'Huyện Vân Canh', 6, '50721', 1, 5),
(409, 'Thành phố Tuy Hòa', 39, '50901', 1, 1),
(410, 'Huyện Đồng Xuân', 39, '50903', 1, 2),
(411, 'Huyện Sông Cầu', 39, '50905', 1, 3),
(412, 'Huyện Tuy An', 39, '50907', 1, 4),
(413, 'Huyện Sơn Hòa', 39, '50909', 1, 5),
(414, 'Huyện Đông Hòa', 39, '50911', 1, 6),
(415, 'Huyện Sông Hinh', 39, '50913', 1, 7),
(417, 'Thành phố Nha Trang', 25, '51101', 1, 5),
(418, 'Huyện Vạn Ninh', 25, '51103', 1, 5),
(419, 'Huyện Ninh Hòa', 25, '51105', 1, 5),
(420, 'Huyện Diên Khánh', 25, '51107', 1, 5),
(421, 'Huyện Cam Ranh', 25, '51109', 1, 5),
(422, 'Huyện Khánh Vĩnh', 25, '51111', 1, 5),
(423, 'Huyện Khánh Sơn', 25, '51113', 1, 5),
(424, 'Huyện Trường Sa', 25, '51115', 1, 5),
(426, 'Thị xã Kon Tum', 28, '60101', 1, 5),
(427, 'Huyện Đắk Glei', 28, '60103', 1, 5),
(428, 'Huyện Ngọc Hồi', 28, '60105', 1, 5),
(429, 'Huyện Đắk Tô', 28, '60107', 1, 5),
(430, 'Huyện Kon Plông', 28, '60109', 1, 5),
(431, 'Huyện Đak Hà', 28, '60111', 1, 5),
(432, 'Huyện Sa Thầy', 28, '60113', 1, 5),
(434, 'Thị xã Pleiku', 14, '60301', 1, 5),
(435, 'Huyện KBang', 14, '60303', 1, 5),
(436, 'Huyện Mang Yang', 14, '60305', 1, 5),
(437, 'Huyện Chư Păh', 14, '60307', 1, 5),
(438, 'Huyện Ia Grai', 14, '60309', 1, 5),
(439, 'Huyện An Khê', 14, '60311', 1, 5),
(440, 'Huyện Kông Chro', 14, '60313', 1, 5),
(441, 'Huyện Đức Cơ', 14, '60315', 1, 5),
(442, 'Huyện Chư Prông', 14, '60317', 1, 5),
(443, 'Huyện Chư Sê', 14, '60319', 1, 5),
(444, 'Huyện Ayun Pa', 14, '60321', 1, 5),
(445, 'Huyện Krông Pa', 14, '60323', 1, 5),
(447, 'Thành phố Buôn Ma Thuột', 58, '60501', 1, 5),
(448, 'Huyện Ea H\'leo', 58, '60503', 1, 5),
(449, 'Huyện Ea Súp', 58, '60505', 1, 5),
(450, 'Huyện Krông Năng', 58, '60507', 1, 5),
(451, 'Huyện Krông Búk', 58, '60509', 1, 5),
(452, 'Huyện Buôn Đôn', 58, '60511', 1, 5),
(453, 'Huyện Cư M\'gar', 58, '60513', 1, 5),
(454, 'Huyện Ea Kar', 58, '60515', 1, 5),
(455, 'Huyện M\'Đrắk', 58, '60517', 1, 5),
(456, 'Huyện Krông Pắc', 58, '60519', 1, 5),
(457, 'Huyện Cư Jút', 64, '60703', 1, 2),
(458, 'Huyện Krông A Na', 58, '60523', 1, 5),
(459, 'Huyện Krông Bông', 58, '60525', 1, 5),
(460, 'Huyện Đắk Mil', 64, '60705', 1, 3),
(461, 'Huyện Krông Nô', 64, '60707', 1, 4),
(462, 'Huyện Lắk', 58, '60531', 1, 5),
(463, 'Huyện Đắk R\'Lấp', 58, '60533', 1, 5),
(464, 'Huyện Đăk Glong', 64, '60701', 1, 5),
(466, 'Quận 1', 24, '70101', 1, 24),
(467, 'Quận 2', 24, '70103', 1, 15),
(468, 'Quận 3', 24, '70105', 1, 16),
(469, 'Quận 4', 24, '70107', 1, 17),
(470, 'Quận 5', 24, '70109', 1, 18),
(471, 'Quận 6', 24, '70111', 1, 19),
(472, 'Quận 7', 24, '70113', 1, 20),
(473, 'Quận 8', 24, '70115', 1, 21),
(474, 'Quận 9', 24, '70117', 1, 22),
(475, 'Quận 10', 24, '70119', 1, 1),
(476, 'Quận 11', 24, '70121', 1, 23),
(477, 'Quận 12', 24, '70123', 1, 14),
(478, 'Quận Gò Vấp', 24, '70125', 1, 13),
(479, 'Quận Tân Bình', 24, '70127', 1, 4),
(480, 'Quận Bình Thạnh', 24, '70129', 1, 11),
(481, 'Quận Phú Nhuận', 24, '70131', 1, 9),
(482, 'Quận Thủ Đức', 24, '70133', 1, 8),
(483, 'Huyện Củ Chi', 24, '70135', 1, 12),
(484, 'Huyện Hóc Môn', 24, '70137', 1, 6),
(485, 'Huyện Bình Chánh', 24, '70139', 1, 5),
(486, 'Huyện Nhà Bè', 24, '70141', 1, 7),
(487, 'Huyện Cần Giờ', 24, '70143', 1, 10),
(489, 'Thành phố Đà Lạt', 32, '70301', 1, 5),
(490, 'Thị xã Bảo Lộc', 32, '70303', 1, 5),
(491, 'Huyện Lạc Dương', 32, '70305', 1, 5),
(492, 'Huyện Đơn Dương', 32, '70307', 1, 5),
(493, 'Huyện Đức Trọng', 32, '70309', 1, 5),
(494, 'Huyện Lâm Hà', 32, '70311', 1, 5),
(495, 'Huyện Bảo Lâm', 32, '70313', 1, 5),
(496, 'Huyện Di Linh', 32, '70315', 1, 5),
(497, 'Huyện Đạ Huoai', 32, '70317', 1, 5),
(498, 'Huyện Đạ Tẻh', 32, '70319', 1, 5),
(499, 'Huyện Cát Tiên', 32, '70321', 1, 5),
(501, 'Thị xã Phan Rang-Tháp Chàm', 37, '70501', 1, 5),
(502, 'Huyện Ninh Sơn', 37, '70503', 1, 5),
(503, 'Huyện Ninh Hải', 37, '70505', 1, 5),
(504, 'Huyện Ninh Phước', 37, '70507', 1, 5),
(506, 'Huyện Đồng Phú', 4, '70701', 1, 5),
(507, 'Huyện Phước Long', 4, '70703', 1, 5),
(508, 'Huyện Lộc Ninh', 4, '70705', 1, 5),
(509, 'Huyện Bù Đăng', 4, '70707', 1, 5),
(510, 'Huyện Bình Long', 4, '70709', 1, 5),
(512, 'Thị xã Tây Ninh', 53, '70901', 1, 5),
(513, 'Huyện Tân Biên', 53, '70903', 1, 5),
(514, 'Huyện Tân Châu', 53, '70905', 1, 5),
(515, 'Huyện Dương Minh Châu', 53, '70907', 1, 5),
(516, 'Huyện Châu Thành', 53, '70909', 1, 5),
(517, 'Huyện Hòa Thành', 53, '70911', 1, 5),
(518, 'Huyện Bến Cầu', 53, '70913', 1, 5),
(519, 'Huyện Gò Dầu', 53, '70915', 1, 5),
(520, 'Huyện Trảng Bàng', 53, '70917', 1, 5),
(522, 'Thị xã Thủ Dầu Một', 3, '71101', 1, 5),
(523, 'Huyện Bến Cát', 3, '71103', 1, 5),
(524, 'Huyện Tân Uyên', 3, '71105', 1, 5),
(525, 'Huyện Thuận An', 3, '71107', 1, 5),
(527, 'Thành phố Biên Hòa', 59, '71301', 1, 5),
(528, 'Huyện Tân Phú', 59, '71303', 1, 5),
(529, 'Huyện Định Quán', 59, '71305', 1, 5),
(530, 'Huyện Vĩnh Cừu', 59, '71307', 1, 5),
(531, 'Huyện Thống Nhất', 59, '71309', 1, 5),
(532, 'Huyện Long Khánh', 59, '71311', 1, 5),
(533, 'Huyện Xuân Lộc', 59, '71313', 1, 5),
(534, 'Huyện Long Thành', 59, '71315', 1, 5),
(535, 'Huyện Nhơn Trạch', 59, '71317', 1, 5),
(537, 'Thị xã Phan Thiết', 5, '71501', 1, 5),
(538, 'Huyện Tuy Phong', 5, '71503', 1, 5),
(539, 'Huyện Bắc Bình', 5, '71505', 1, 5),
(540, 'Huyện Hàm Thuận Bắc', 5, '71507', 1, 5),
(541, 'Huyện Hàm Thuận Nam', 5, '71509', 1, 5),
(542, 'Huyện Tánh Linh', 5, '71511', 1, 5),
(543, 'Huyện Hàm Tân', 5, '71513', 1, 5),
(544, 'Huyện Đức Linh', 5, '71515', 1, 5),
(545, 'Huyện Phú Quí', 5, '71517', 1, 5),
(547, 'Thành phố Vũng Tầu', 2, '71701', 1, 5),
(548, 'Thị xã Bà Rịa', 2, '71703', 1, 5),
(549, 'Huyện Châu Đức', 2, '71705', 1, 5),
(550, 'Huyện Xuyên Mộc', 2, '71707', 1, 5),
(551, 'Huyện Tân Thành', 2, '71709', 1, 5),
(552, 'Huyện Long Đất', 2, '71711', 1, 5),
(553, 'Huyện Côn Đảo', 2, '71713', 1, 5),
(555, 'Thị xã Tân An', 30, '80101', 1, 5),
(556, 'Huyện Tân Hưng', 30, '80103', 1, 5),
(557, 'Huyện Vĩnh Hưng', 30, '80105', 1, 5),
(558, 'Huyện Mộc Hóa', 30, '80107', 1, 5),
(559, 'Huyện Tân Thạnh', 30, '80109', 1, 5),
(560, 'Huyện Thạnh Hóa', 30, '80111', 1, 5),
(561, 'Huyện Đức Huệ', 30, '80113', 1, 5),
(562, 'Huyện Đức Hòa', 30, '80115', 1, 5),
(563, 'Huyện Bến Lức', 30, '80117', 1, 5),
(564, 'Huyện Thủ Thừa', 30, '80119', 1, 5),
(565, 'Huyện Châu Thành', 30, '80121', 1, 5),
(566, 'Huyện Tân Trụ', 30, '80123', 1, 5),
(567, 'Huyện Cần Đước', 30, '80125', 1, 5),
(568, 'Huyện Cần Giuộc', 30, '80127', 1, 5),
(570, 'Thị xã Cao Lãnh', 60, '80301', 1, 5),
(571, 'Thị xã Sa Đéc', 60, '80303', 1, 5),
(572, 'Huyện Tân Hồng', 60, '80305', 1, 5),
(573, 'Huyện Hồng Ngự', 60, '80307', 1, 5),
(574, 'Huyện Tam Nông', 60, '80309', 1, 5),
(575, 'Huyện Thanh Bình', 60, '80311', 1, 5),
(576, 'Huyện Tháp Mười', 60, '80313', 1, 5),
(577, 'Huyện Cao Lãnh', 60, '80315', 1, 5),
(578, 'Huyện Lấp Vò', 60, '80317', 1, 5),
(579, 'Huyện Lai Vung', 60, '80319', 1, 5),
(580, 'Huyện Châu Thành', 60, '80321', 1, 5),
(582, 'Thành Phố Long Xuyên', 1, '80501', 1, 5),
(583, 'Thị xã Châu Đốc', 1, '80503', 1, 5),
(584, 'Huyện An Phú', 1, '80505', 1, 5),
(585, 'Huyện Tân Châu', 1, '80507', 1, 5),
(586, 'Huyện Phú Tân', 1, '80509', 1, 5),
(587, 'Huyện Châu Phú', 1, '80511', 1, 5),
(588, 'Huyện Tịnh Biên', 1, '80513', 1, 5),
(589, 'Huyện Tri Tôn', 1, '80515', 1, 5),
(590, 'Huyện Chợ Mới', 1, '80517', 1, 5),
(591, 'Huyện Châu Thành', 1, '80519', 1, 5),
(592, 'Huyện Thoại Sơn', 1, '80521', 1, 5),
(594, 'Thành phố Mỹ Tho', 50, '80701', 1, 5),
(595, 'Thị xã Gò Công', 50, '80703', 1, 5),
(596, 'Huyện Tân Phước', 50, '80705', 1, 5),
(597, 'Huyện Châu Thành', 50, '80707', 1, 5),
(598, 'Huyện Cai Lậy', 50, '80709', 1, 5),
(599, 'Huyện Chợ Gạo', 50, '80711', 1, 5),
(600, 'Huyện Cái Bè', 50, '80713', 1, 5),
(601, 'Huyện Gò Công Tây', 50, '80715', 1, 5),
(602, 'Huyện Gò Công Đông', 50, '80717', 1, 5),
(604, 'Thị xã Vĩnh Long', 54, '80901', 1, 5),
(605, 'Huyện Long Hồ', 54, '80903', 1, 5),
(606, 'Huyện Mang Thít', 54, '80905', 1, 5),
(607, 'Huyện Bình Minh', 54, '80907', 1, 5),
(608, 'Huyện Tam Bình', 54, '80909', 1, 5),
(609, 'Huyện Trà Ôn', 54, '80911', 1, 5),
(610, 'Huyện Vũng Liêm', 54, '80913', 1, 5),
(612, 'Thị xã Bến Tre', 10, '81101', 1, 5),
(613, 'Huyện Châu Thành', 10, '81103', 1, 5),
(614, 'Huyện Chợ Lách', 10, '81105', 1, 5),
(615, 'Huyện Mỏ Cày', 10, '81107', 1, 5),
(616, 'Huyện Giồng Trôm', 10, '81109', 1, 5),
(617, 'Huyện Bình Đại', 10, '81111', 1, 5),
(618, 'Huyện Ba Tri', 10, '81113', 1, 5),
(619, 'Huyện Thạnh Phú', 10, '81115', 1, 5),
(621, 'Thị xã Rạch Giá', 27, '81301', 1, 5),
(622, 'Huyện Hà Tiên', 27, '81303', 1, 5),
(623, 'Huyện Hòn Đất', 27, '81305', 1, 5),
(624, 'Huyện Tân Hiệp', 27, '81307', 1, 5),
(625, 'Huyện Châu Thành', 27, '81309', 1, 5),
(626, 'Huyện Giồng Giềng', 27, '81311', 1, 5),
(627, 'Huyện Gò Quao', 27, '81313', 1, 5),
(628, 'Huyện An Biên', 27, '81315', 1, 5),
(629, 'Huyện An Minh', 27, '81317', 1, 5),
(630, 'Huyện Vĩnh Thuận', 27, '81319', 1, 5),
(631, 'Huyện Phú Quốc', 27, '81321', 1, 5),
(632, 'Huyện Kiên Hải', 27, '81323', 1, 5),
(633, 'Thị xã Hà Tiên', 27, '81325', 1, 5),
(635, 'Thành phố Cần Thơ', 13, '81501', 1, 5),
(636, 'Thị xã Vị Thanh', 13, '81502', 1, 5),
(637, 'Huyện Thốt Nốt', 13, '81503', 1, 5),
(638, 'Huyện Ô Môn', 13, '81505', 1, 5),
(639, 'Huyện Châu Thành', 13, '81507', 1, 5),
(640, 'Huyện Phụng Hiệp', 13, '81509', 1, 5),
(641, 'Huyện Vị Thuỷ', 13, '81511', 1, 5),
(642, 'Huyện Long Mỹ', 13, '81513', 1, 5),
(644, 'Thị xã Trà Vinh', 51, '81701', 1, 5),
(645, 'Huyện Càng Long', 51, '81703', 1, 5),
(646, 'Huyện Châu Thành', 51, '81705', 1, 5),
(647, 'Huyện Cầu Kè', 51, '81707', 1, 5),
(648, 'Huyện Tiểu Cần', 51, '81709', 1, 5),
(649, 'Huyện Cầu Ngang', 51, '81711', 1, 5),
(650, 'Huyện Trà Cú', 51, '81713', 1, 5),
(651, 'Huyện Duyên Hải', 51, '81715', 1, 5),
(653, 'Thị xã Sóc Trăng', 62, '81901', 1, 5),
(654, 'Huyện Kế Sách', 62, '81903', 1, 5),
(655, 'Huyện Long Phú', 62, '81905', 1, 5),
(656, 'Huyện Mỹ Tú', 62, '81907', 1, 5),
(657, 'Huyện Mỹ Xuyên', 62, '81909', 1, 5),
(658, 'Huyện Thạnh Trị', 62, '81911', 1, 5),
(659, 'Huyện Vĩnh Châu', 62, '81913', 1, 5),
(661, 'Thị xã Bạc Liêu', 61, '82101', 1, 5),
(662, 'Huyện Hồng Dân', 61, '82103', 1, 5),
(663, 'Huyện Vĩnh Lợi', 61, '82105', 1, 5),
(664, 'Huyện Giá Rai', 61, '82107', 1, 5),
(666, 'Thị xã Cà Mau', 12, '82301', 1, 5),
(667, 'Huyện Thới Bình', 12, '82303', 1, 5),
(668, 'Huyện U Minh', 12, '82305', 1, 5),
(669, 'Huyện Trần Văn Thời', 12, '82307', 1, 5),
(670, 'Huyện Cái Nước', 12, '82309', 1, 5),
(671, 'Huyện Đầm Dơi', 12, '82311', 1, 5),
(672, 'Huyện Ngọc Hiển', 12, '82313', 1, 5),
(673, 'Huyện Đắk Song', 64, '60709', 1, 6),
(674, 'Thị xã Gia Nghĩa', 64, '60713', 1, 1),
(675, 'Huyện Tuy Đức', 64, '60715', 1, 7),
(676, 'Huyện Phú Hòa', 39, '50915', 1, 8),
(677, 'Huyện Tây Hoà', 39, '50917', 1, 9),
(678, 'Thị xã Đồng Xoài', 4, '70711', 1, 5),
(679, 'Quận Bình Tân', 24, '70145', 1, 3),
(680, 'Quận Tân Phú', 24, '70147', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `id_subcate` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `totalpost` int(11) DEFAULT '0',
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employers`
--

INSERT INTO `employers` (`id`, `id_subcate`, `fullname`, `picture`, `phone`, `totalpost`, `created`) VALUES
(1, 0, 'Trinh Huỳnh', NULL, NULL, 0, '2019-08-21 21:03:11'),
(2, 0, 'Huy Le', NULL, NULL, 0, '2019-08-22 05:57:17'),
(3, 0, 'Việc Làm Theo Giờ', NULL, NULL, 0, '2019-08-22 08:39:27'),
(4, 0, 'Ái Lệ Nguyễn', NULL, NULL, 0, '2019-08-22 12:23:57'),
(5, 0, 'Hoàng Thị Ngọc Ân', NULL, NULL, 0, '2019-08-24 05:22:40'),
(6, 0, 'Le Hoai Huy', NULL, NULL, 0, '2019-08-24 05:29:03'),
(7, 0, 'Thuy Nguyen Xuan', NULL, NULL, 0, '2019-08-24 20:07:48'),
(8, 0, 'Minh Hiếu', NULL, NULL, 0, '2019-08-25 06:30:18'),
(9, 0, 'Khanh Trì Nguyễn', NULL, NULL, 0, '2019-08-26 19:52:06'),
(10, 0, 'Vĩnh Hoàng', NULL, NULL, 0, '2019-08-29 00:24:42'),
(11, 0, 'Quốc Cườngg', NULL, NULL, 0, '2019-08-29 07:43:43'),
(12, 0, 'Lam Nguyễn', NULL, NULL, 0, '2019-08-29 10:29:23'),
(13, 0, 'huy Phan', NULL, NULL, 0, '2019-08-31 06:39:32'),
(14, 0, 'USA STARLET', NULL, NULL, 0, '2019-09-02 02:52:18'),
(15, 0, 'Mộc Trà', NULL, NULL, 0, '2019-09-02 05:26:34'),
(16, 0, 'Phuong Nhung', NULL, NULL, 0, '2019-09-02 07:06:54'),
(17, 0, 'gia bảo nguyễn', NULL, NULL, 0, '2019-09-02 07:37:06'),
(18, 0, 'Như Phước', NULL, NULL, 0, '2019-09-02 08:00:23'),
(19, 0, 'Đỗ Châu Minh', NULL, NULL, 0, '2019-09-02 22:49:17'),
(20, 0, 'Mỹ Linh', NULL, NULL, 0, '2019-09-03 00:34:14'),
(21, 0, 'Tai Dang Nghi He', NULL, NULL, 0, '2019-09-03 01:46:17'),
(22, 0, 'Thúy Vy', NULL, NULL, 0, '2019-09-03 02:49:30'),
(23, 0, 'Nguyễn Uyên', NULL, NULL, 0, '2019-09-03 02:59:04'),
(24, 0, 'Phạm Trần Trà My', NULL, NULL, 0, '2019-09-03 05:58:45'),
(25, 0, 'Ngọc Thạnh', NULL, NULL, 0, '2019-09-04 21:19:59'),
(26, 0, 'Mai Văn Thắng', NULL, NULL, 0, '2019-09-05 16:06:38');

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
(4, 'Sales', '<p>buồn b&aacute;n nh&agrave; đất, c&aacute;c mặt h&agrave;ng</p>\r\n'),
(5, 'Nhân viên phục vụ ', '<p>nh&acirc;n vi&ecirc;n phục vụ</p>\r\n'),
(6, 'PHỤC VỤ QUÁN COFFEE', '<p>PHỤC VỤ QU&Aacute;N COFFEE</p>\r\n'),
(7, 'Nhân viên', '<p>Nh&acirc;n vi&ecirc;n</p>\r\n'),
(8, 'DỌN DẸP', ' ');

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
(32, 'Tìm kiếm nâng cao', '<p>Trang t&igrave;m việc n&acirc;ng cao</p>\r\n', 9, NULL, 0, 'tim-kiem-nang-cao'),
(31, 'Fulltime', NULL, 8, NULL, 29, 'fulltime'),
(30, 'Parttime', NULL, 7, NULL, 29, 'parttime'),
(24, 'Trang chủ', '<p>Trang chủ&nbsp; &nbsp;</p>\r\n', 1, NULL, 0, 'index'),
(25, 'Đăng tin', '<p>Trang d&ugrave;ng để nh&agrave; tuyển dụng đăng tin</p>\r\n', 2, NULL, 0, 'dang-tin'),
(51, 'Việc làm ngay', '<p>Trang tổng hợp những b&agrave;i đăng tuyển l&agrave;m nhanh &lt;1 tuần</p>\r\n', 3, NULL, 0, 'viec-lam-ngay'),
(29, 'Tìm việc', '', 5, NULL, 0, 'tim-viec'),
(55, 'TỔNG HỢP', '<p>TỔNG HỢP</p>\r\n', NULL, NULL, 29, 'tong-hop'),
(56, 'ONETIME', '<p>C&aacute;c c&ocirc;ng việc m&agrave; giao k&egrave;o giữa người thu&ecirc; v&agrave; người l&agrave;m việc chỉ xảy ra đ&uacute;ng một lần cụ thể về một c&ocirc;ng việc n&agrave;o đ&oacute;</p>\r\n', NULL, NULL, 29, 'one-time');

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
  `price` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Giá thanh toán',
  `start_pr` int(50) NOT NULL DEFAULT '0',
  `end_pr` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort_order` int(9) DEFAULT '0',
  `contacts` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `price`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`, `contacts`) VALUES
(85, 2, 1, 49, NULL, 'TUYỂN DỤNG LƯƠNG CAO TẠI BIG C', '<p>&lt;3<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ TẠI HUẾ ]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', '2019022195057.jpg', '0', 20000, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(86, 2, 1, 49, NULL, 'ĐIỆN MÁY XANH TUYỂN DỤNG CỘNG TÁC VIÊN GIAO HÀNG LẮP ĐẶT', '<p>????&nbsp;THU NHẬP KHỦNG - L&Ecirc;N ĐẾN 500.000/1 NG&Agrave;Y&nbsp;????&nbsp;<br />\r\n-------------------<br />\r\n✴️&nbsp;ĐIỆN M&Aacute;Y XANH TUYỂN DỤNG CỘNG T&Aacute;C VI&Ecirc;N GIAO H&Agrave;NG LẮP ĐẶT&nbsp;✴️<br />\r\n✴️&nbsp;Số lượng tuyển dụng kh&ocirc;ng giới hạn tr&ecirc;n to&agrave;n quốc !<br />\r\n✴️Thu nhập: Từ 7 - 15 triệu</p>\r\n\r\n<p>????&nbsp;M&Ocirc; TẢ C&Ocirc;NG VIỆC :&nbsp;<br />\r\n- Giao sản phẩm điện m&aacute;y đến nh&agrave; kh&aacute;ch h&agrave;ng<br />\r\n- Lắp đặt v&agrave; tư vấn c&aacute;ch sử dụng<br />\r\n- Hướng dẫn KH thủ tục thanh to&aacute;n.</p>\r\n\r\n<p>????&nbsp;Y&Ecirc;U CẦU CHUNG<br />\r\n- Nam, tuổi 18-35, sức khỏe tốt, c&oacute; xe m&aacute;y.<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp, chỉ cần c&oacute; kinh nghiệm về điện tử, điện lạnh.<br />\r\n- Chỉ cần Bạn y&ecirc;u th&iacute;ch c&ocirc;ng việc - C&ocirc;ng ty sẽ đ&agrave;o tạo v&agrave; huấn luyện cho bạn.</p>\r\n\r\n<p>????&nbsp;QUYỀN LỢI ĐƯỢC HƯỞNG:<br />\r\n- L&agrave;m việc 8 tiếng linh hoạt<br />\r\n- L&agrave; CTV Bạn c&oacute; thể đăng k&yacute; ca theo thời gian rảnh nhưng đảm bảo 8 tiếng/ng&agrave;y<br />\r\n- L&agrave; CTV bạn sẽ c&oacute; cơ hội l&ecirc;n nh&acirc;n vi&ecirc;n ch&iacute;nh thức sau 1 m&ugrave;a hợp t&aacute;c !<br />\r\nL&agrave;m c&agrave;ng nhiều &ndash; Hưởng c&agrave;ng nhiều !<br />\r\n[ ỨNG TUYỂN BẮT ĐẦU TỪ NG&Agrave;Y 01/11/2018 - O1/12/2018 ]<br />\r\n-------<br />\r\n????&nbsp;C&aacute;c bạn vui l&ograve;ng LIKE V&Agrave; CMT để nhận th&ocirc;ng tin nộp hồ sơ tuyển dụng cực hot n&agrave;y từ C-IT nh&eacute;&nbsp;????</p>\r\n', '2019022195200.jpg', '0', 24000, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(87, 2, 3, 49, NULL, 'CƠ HỘI TRỞ THÀNH NHÂN VIÊN CHÍNH THỨC TẠI BIG C - HUẾ ', '<p>????&nbsp;????&nbsp;CƠ HỘI TRỞ TH&Agrave;NH NH&Acirc;N VI&Ecirc;N CH&Iacute;NH THỨC TẠI BIG C - HUẾ&nbsp;????&nbsp;????</p>\r\n\r\n<p>????&nbsp;M&Ocirc; TẢ C&Ocirc;NG VIỆC&nbsp;????&nbsp;<br />\r\n- Đ&oacute;n tiếp, tư vấn v&agrave; phục vụ kh&aacute;ch h&agrave;ng&nbsp;<br />\r\n- Lấy h&agrave;ng từ kho v&agrave; trưng b&agrave;y h&agrave;ng h&oacute;a tại quầy<br />\r\n- Kiểm k&ecirc; h&agrave;ng h&oacute;a, cập nhật bảng gi&aacute; h&agrave;ng ng&agrave;y<br />\r\n- Đảm bảo h&agrave;ng h&oacute;a v&agrave; quầy kệ sạch sẽ, gọn g&agrave;ng<br />\r\n- C&aacute;c c&ocirc;ng việc kh&aacute;c theo ph&acirc;n c&ocirc;ng của quản l&yacute;</p>\r\n\r\n<p>????&nbsp;QUYỀN LỢI ĐƯỢC HƯỞNG&nbsp;<br />\r\n- Ca l&agrave;m việc linh hoạt 4 tiếng, 8 tiếng (t&ugrave;y vị tr&iacute;, khu vực)<br />\r\n- Thu nhập cao: 5 - 8 triệu/ th&aacute;ng<br />\r\n- C&oacute; bảo hiểm tai nạn 24/24<br />\r\n- Được ghỉ ca 6 ng&agrave;y/ th&aacute;ng<br />\r\n- V&agrave; quan trọng nhất l&agrave; cơ hội trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức của Big C</p>\r\n\r\n<p>????&nbsp;Y&Ecirc;U CẦU C&Ocirc;NG VIỆC<br />\r\n- Đ&aacute;p ứng thời gian l&agrave;m thời vụ từ đầu th&aacute;ng 12 đến th&aacute;ng 1 hoặc th&aacute;ng 2<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp, kinh nghiệm<br />\r\n- Th&aacute;i độ: trung thực, sẵn s&agrave;ng phục vụ kh&aacute;ch h&agrave;ng<br />\r\n????&nbsp;Y&Ecirc;U CẦU HỒ SƠ????&nbsp;<br />\r\nNộp hồ sơ nhanh phỏng vấn sớm, đạt y&ecirc;u cầu sẽ bổ sung hồ sơ sau<br />\r\n????&nbsp;????&nbsp;C&aacute;c bạn Like b&agrave;i viết v&agrave; cmt ở dưới để nhận th&ocirc;ng tin cũng như th&ocirc;ng tin hồ sơ ứng tuyển nh&eacute; !<br />\r\n--------------------------<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ ]<br />\r\n<a href=\"https://www.facebook.com/hashtag/th%C3%B4ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#TH&Ocirc;NG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/b%C3%A1o?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#B&Aacute;O</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BB%83n?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#TUYỂN</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/d%E1%BB%A5ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#DỤNG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/bigc?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#BIGC</a></p>\r\n', '2019022195304.jpg', '0', 20000, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(88, 2, 1, 49, NULL, ' PHONE PHỎNG VẤN VIÊN', '<p><a href=\"https://www.facebook.com/hashtag/th%C3%B4ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#TH&Ocirc;NG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/b%C3%A1o?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#B&Aacute;O</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BB%83n?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#TUYỂN</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/d%E1%BB%A5ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#DỤNG</a></p>\r\n\r\n<p>❗VIỆC NHẸ NH&Agrave;NG L&Agrave;M Ở VĂN PH&Ograve;NG❗&nbsp;<br />\r\nVị tr&iacute;: PHONE PHỎNG VẤN VI&Ecirc;N<br />\r\n1. Số lượng: 5 (nam/nữ)<br />\r\n2. Thời gian v&agrave; thu nhập: từ 16h-20h thứ 2,3,5,6 (Chọn ca t&ugrave;y theo thời gian biểu của bạn, tối thiểu 3ca/tuần).<br />\r\nLương: t&iacute;nh theo giờ - thu nhập 13 000đ -18 000đ/giờ<br />\r\nhay 52 000đ - 72 000đ/ ca 4 giờ<br />\r\n3. Y&ecirc;u cầu: C&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc<br />\r\nL&agrave;m việc trong văn ph&ograve;ng m&aacute;y lạnh.<br />\r\n4. Địa chỉ l&agrave;m việc<br />\r\nC&ocirc;ng ty CP nghi&ecirc;n cứu Mặt Trời Th&aacute;ng Năm<br />\r\n- 174 Đinh Ti&ecirc;n Ho&agrave;ng, Th&agrave;nh phố Huế<br />\r\n- Gởi th&ocirc;ng tin: t&ecirc;n &ndash; sdt &ndash; email qua facebook<br />\r\n- Theo SĐT: 0932 457 456<br />\r\n------------------------<br />\r\nMọi th&ocirc;ng tin, thắc mắc v&agrave; phản hồi vui l&ograve;ng li&ecirc;n hệ:<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ ]</p>\r\n', '2019022195425.jpg', '0', 45000, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(92, 2, 4, 49, 16, '[TUYỂN DỤNG C-IT] Việc nhẹ lương cao cho các bạn đây nè.', '<p>[ C-IT VIỆC L&Agrave;M THEO GIỜ &gt;&gt; D&Agrave;NH CHO SINH VI&Ecirc;N - NGƯỜI LAO ĐỘNG MUỐN KIẾM TH&Ecirc;M THU NHẬP TRONG THỜI GIAN R&Atilde;NH V&Agrave; N&Acirc;NG CAO KỸ NĂNG ]<br />\r\n------------------------<br />\r\n&gt;&gt;&gt; SỐ LƯỢNG: 5 (Nam/Nữ)<br />\r\nLƯƠNG CỨNG: 20K/1h (+Thưởng). 1ca 3 tiếng (c&oacute; thể l&agrave;m 2 ca hoặc xoay ca).<br />\r\n- Ca S&aacute;ng (8h - 11h)<br />\r\n- Ca Chiều (13h30 - 16h30)</p>\r\n\r\n<p>&gt;&gt;&gt; M&Ocirc; TẢ C&Ocirc;NG VIỆC<br />\r\n- Giới thiệu v&agrave; c&agrave;i đặt app cho bệnh nh&acirc;n tại Bệnh viện 268 Huế.<br />\r\n- Tư vấn sản phẩm v&agrave; giải đ&aacute;p thắc mắc của kh&aacute;ch h&agrave;ng về sản phẩm.<br />\r\n- Trao đổi th&ecirc;m khi gặp trực tiếp<br />\r\n&gt;&gt;&gt; NƠI L&Agrave;M VIỆC: Bệnh viện Qu&acirc;n Y 268 Nội Th&agrave;nh Huế.</p>\r\n\r\n<p>&gt;&gt;&gt; Y&Ecirc;U CẦU<br />\r\n- C&oacute; kỹ năng giao tiếp, c&oacute; tinh thần tr&aacute;ch nhiệm.<br />\r\n- Nhanh nhẹn, nhiệt t&igrave;nh, c&oacute; smartphone.<br />\r\n- Th&aacute;i độ l&agrave;m việc nghi&ecirc;m t&uacute;c, cởi mở, trung thực.<br />\r\n&gt;&gt;&gt; Hạn nộp hồ sơ đến hết ng&agrave;y 4/4/2019.</p>\r\n\r\n<p>&gt;&gt;&gt; MỌI THẮC MẮC LI&Ecirc;N HỆ : 085 5566 145 - Ms Hạnh.<br />\r\n- fb: <a href=\"https://www.google.com/url?q=https://www.facebook.com/viectheogiocit/&amp;sa=D&amp;ust=1553825096917000&amp;usg=AFQjCNEBe-A_FeBXH_leGNjsEaFzaJEvMw\">https://www.facebook.com/viectheogiocit/</a><br />\r\n- Website: <a href=\"https://www.google.com/url?q=https://viectheogiocit.com/?req&amp;sa=D&amp;ust=1553825096917000&amp;usg=AFQjCNFfu_0HdsgewRh6vitmX_-rWiCxLg\">https://viectheogiocit.com/?req</a></p>\r\n\r\n<p><br />\r\nNhấn &quot; NHẬN VIỆC&quot; ngay để nộp hồ sơ v&agrave; ứng tuyển trực tiếp nh&eacute;!</p>\r\n', '2019031395243.jpg', '0', 20000, 32000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(83, 2, 1, 49, NULL, 'TRUNG TÂM ANH NGỮ VÀ KĨ NĂNG PICTURE FUTURE GIỚI THIỆU Chương trình Giáo viên tập sự dành cho các bạn sinh viên đang học chuyên ngành tiếng Anh tại Huế', '<p>[ C-IT HỖ TRỢ ĐĂNG TIN ]<br />\r\n????&nbsp;TRUNG T&Acirc;M ANH NGỮ V&Agrave; KĨ NĂNG PICTURE FUTURE GIỚI THIỆU Chương tr&igrave;nh Gi&aacute;o vi&ecirc;n tập sự d&agrave;nh cho c&aacute;c bạn sinh vi&ecirc;n đang học chuy&ecirc;n ng&agrave;nh tiếng Anh tại Huế&nbsp;????<br />\r\n????????Cơ hội ph&aacute;t triển nghề nghiệp hấp dẫn cho c&aacute;c bạn sinh vi&ecirc;n. C&aacute;c bạn sẽ được tuyển dụng ngay từ b&acirc;y giờ !<br />\r\n????????Quyền lợi:<br />\r\n????&nbsp;Được tham gia chương tr&igrave;nh huấn luyện d&agrave;nh cho gi&aacute;o vi&ecirc;n<br />\r\n????&nbsp;Được ph&aacute;t triển c&oacute; định hướng để trở th&agrave;nh gi&aacute;o vi&ecirc;n tiếng Anh giỏi<br />\r\n????&nbsp;Được thực h&agrave;nh thường xuy&ecirc;n v&agrave; ph&aacute;t triển trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp<br />\r\n????????Y&ecirc;u cầu:<br />\r\n????&nbsp;Sinh vi&ecirc;n chuy&ecirc;n ng&agrave;nh tiếng Anh từ năm thứ 2<br />\r\n????&nbsp;C&oacute; định hướng trở th&agrave;nh gi&aacute;o vi&ecirc;n tiếng Anh<br />\r\n????&nbsp;Mong muốn cống hiến cho cộng đồng, năng động, s&aacute;ng tạo<br />\r\n????&nbsp;Học lực Kh&aacute; trở l&ecirc;n<br />\r\nC&aacute;c bạn sinh vi&ecirc;n th&acirc;n mến, bạn đang khao kh&aacute;t trở th&agrave;nh Gi&aacute;o vi&ecirc;n giỏi chuy&ecirc;n m&ocirc;n, giỏi kỹ năng, s&aacute;ng tạo v&agrave; năng động, h&atilde;y đồng h&agrave;nh c&ugrave;ng Picture Future nh&eacute; !<br />\r\n--------------------<br />\r\nHồ sơ gửi về địa chỉ: picturefuture.hue@gmail.com<br />\r\nHạn nộp đến: 31/12/2018</p>\r\n', '2019022194418.jpg', '0', 20000, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(84, 3, 1, 49, 6, 'CTCP FASTGO VIỆT NAM cần tuyển nhân viên chính thức các vị trí: Marketing & Admin; Nhân viên kinh doanh. ???????? Yêu cầu chung:', '<p>&nbsp;C&Oacute; NĂNG LỰC L&Agrave; SẼ L&Agrave;M ĐƯỢC TH&Ocirc;I !&nbsp;????&nbsp;????&nbsp;<br />\r\nAi sinh ra cũng c&oacute; &quot;si&ecirc;u&quot; năng lực chờ được kh&aacute;m ph&aacute;, v&agrave; nếu bạn muốn c&oacute; một m&ocirc;i trường để thể hiện &quot;si&ecirc;u&quot; năng lực đ&oacute; của m&igrave;nh th&igrave; đừng chần chờ g&igrave; nữa !&nbsp;<br />\r\nH&Atilde;Y ỨNG TUYỂN NGAY C&Ugrave;NG C&Ocirc;NG TY CP FASTGO VIỆT NAM !!!<br />\r\n-------------------<br />\r\n&nbsp;Với nhu cầu mở rộng thị trường tại Huế v&agrave; Quảng B&igrave;nh, CTCP FASTGO VIỆT NAM cần tuyển nh&acirc;n vi&ecirc;n ch&iacute;nh thức c&aacute;c vị tr&iacute;: Marketing &amp; Admin; Nh&acirc;n vi&ecirc;n kinh doanh.<br />\r\nY&ecirc;u cầu chung:<br />\r\n- Độ tuổi: 24-29<br />\r\n- Tốt nghiệp Cao đẳng/Đại học;<br />\r\n- Kinh nghiệm 0-1 năm<br />\r\n&nbsp;Ph&uacute;c lợi:<br />\r\n- C&oacute; bảo hiểm theo quy định<br />\r\n- Chăm s&oacute;c sức khỏe định k&igrave;<br />\r\n- Đi du lịch hằng năm<br />\r\n- Team building</p>\r\n\r\n<p><br />\r\n- Tăng lương, thưởng nếu l&agrave;m tốt<br />\r\n- Lương: Thỏa Thuận<br />\r\nVị tr&iacute; Marketing &amp; Admin<br />\r\n- Hỗ trợ v&agrave; thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan đến Marketing (60%) v&agrave; Admin (40%) tại chi nh&aacute;nh<br />\r\n- Lập kế hoạch v&agrave; triển khai c&aacute;c chương tr&igrave;nh PR, Marketing cả Online v&agrave; Offline cho c&aacute;c sản phẩm, dịch vụ của c&ocirc;ng ty nhằm ph&aacute;t triển thương hiệu v&agrave; tăng hiệu quả kinh doanh.<br />\r\n&nbsp;Vị tr&iacute; Nh&acirc;n Vi&ecirc;n Kinh Doanh<br />\r\n- T&igrave;m kiếm v&agrave; thuyết phục c&aacute;c đối t&aacute;c t&agrave;i xế, doanh nghiệp (c&aacute;c h&atilde;ng xe) l&agrave;m việc với FastGo;<br />\r\n- T&igrave;m kiếm v&agrave; thuyết phục c&aacute;c đối t&aacute;c c&aacute; nh&acirc;n, doanh nghiệp c&agrave;i v&agrave; sử dụng app Fastgo để gọi xe;<br />\r\n- Tư vấn kh&aacute;ch h&agrave;ng v&agrave; hỗ trợ kh&aacute;ch h&agrave;ng quy tr&igrave;nh hợp t&aacute;c, đăng k&yacute;;<br />\r\n-----------------------<br />\r\nỨng vi&ecirc;n c&oacute; nhu cầu nộp hồ sơ vui l&ograve;ng gửi qua email: ducta@peacesoft.net<br />\r\nTi&ecirc;u đề email: Ứng tuyển FastGo 2018 &ndash; Vị tr&iacute; ứng tuyển<br />\r\nHạn nộp hồ sơ: 25/12/2018<br />\r\nTh&ocirc;ng tin li&ecirc;n hệ:&nbsp;<a href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Ffastgo.mobi%2F%3Ffbclid%3DIwAR0xWoDy2PsmGnYGXgroPWl2JNiL5H4-M3TMMnvd2XMckzOoDWfGfc4vayU&amp;h=AT0dIePYGWHAGzGrDqJTv06zjbv8YlvVryqsvYCDKotAuRbALT28hteu17xO_RXnQLdwUbGJmu4lM9iK6Zxd-NZlrnZOKXR_0LUaVM_uphXoSymS4mxnSPSIYrHostbeaDsnJaagB-rWLgxoz_xPAjK4KWnZQTiBWVtX3SGJF2tz9ycZjRUKp6wNfYtKKxEc2QAsR9pSHYgEzAhoAl1dD7GNqY4dEV4Aqw3DQVpSRSR2Vwum0M7NvqeQvEymZOg3Yyd3wBZZQ67Vuxhi9IKMuCCEBgjJgcHmObyABFQBYDwv196oj22LDhnaQR1yeW3szhpbDoVTyIldpu4qB53vJJUBwuRQcFKc-zTsp5ibYFLxGo0n0Q5ilA-XBSQhuiw0nkE0y9CdCzDw8iBItlX8CI5XKX4h8wqyAmtG_Ie7QcB8oikBgdtdP6W5fqv-2IT05TnGANa6IeoTs6Lr082_vHn5L7IgIs7bNm4uWswtIguSkOVFE04qa9Wdu7VyhVgybhIsEWfZC04PcdruiGCwYxLXAKFbmeRlQt9z-V99pzuBCx4P0VKyrML21QgNBgrtWnRM4pS3F4mWXJNYYr8rvcqUIprjGsULgGyAvKxH0UJnakRznSGINvQy7fPziBIu9wz3xFZdL4WHtYY\" rel=\"noopener nofollow\" target=\"_blank\">https://fastgo.mobi/</a>.<br />\r\nEmail: Mr.Đức: ducta@peacesoft.net<br />\r\nTh&ocirc;ng tin chi tiết tại: sea.coplus.com.vn</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/48268880_361892851240438_7397373545728180224_n.jpg\" style=\"float:left; height:300px; width:300px\" />&nbsp;<img alt=\"\" src=\"/upload/images/48203728_361893047907085_5631342105247875072_n(1).jpg\" style=\"float:right; height:300px; width:300px\" /></p>\r\n', '2019022194917.jpg', '0', 36000, 31000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(103, 2, 14, 49, 26, 'NHÂN VIÊN BẢO VỆ TẠI BIGC HUẾ', '<p>[ C-IT VIỆC L&Agrave;M THEO GIỜ &gt;&gt; D&Agrave;NH CHO SINH VI&Ecirc;N - NGƯỜI LAO ĐỘNG MUỐN KIẾM TH&Ecirc;M THU NHẬP TRONG THỜI GIAN R&Atilde;NH V&Agrave; N&Acirc;NG CAO KỸ NĂNG ]<br />\r\n------------------------<br />\r\n&gt;&gt;&gt; SỐ LƯỢNG: 20&nbsp;(Nam/Nữ)<br />\r\nLƯƠNG CỨNG: 11K/1h (+Thưởng).&nbsp;</p>\r\n\r\n<p>- Ca l&agrave;m tự chọn, c&oacute;&nbsp;tuyển&nbsp;nh&acirc;n vi&ecirc;n thời vụ 1 th&aacute;ng trở l&ecirc;n. C&oacute; ca d&agrave;nh cho sinh vi&ecirc;n (l&agrave;m 4 tiếng, 6 tiếng, 8 tiếng..hoặc ca xoay)</p>\r\n\r\n<p>&harr;️&nbsp;Ca 6h00_12h00<br />\r\n&harr;️&nbsp;Ca 8h00 đến 18h00. hoặc 17h00&nbsp;<br />\r\n&harr;️&nbsp;Ca 12h đến 17 hoặc 18,<br />\r\n&harr;️&nbsp;Ca 12h00 đến 22h<br />\r\n&harr;️&nbsp;Ca 17h00 đến 22h00<br />\r\n&harr;️&nbsp;Ca gảy 8h00 _12h00 / 18h00 _22h00&nbsp;</p>\r\n\r\n<p>&gt;&gt;&gt; M&Ocirc; TẢ C&Ocirc;NG VIỆC<br />\r\n- Tr&ocirc;ng coi gi&aacute;m s&aacute;t h&agrave;ng ho&aacute; trong si&ecirc;u thị&nbsp;BigC&nbsp;Tp&nbsp;Huế<br />\r\n- Trao đổi th&ecirc;m khi gặp trực tiếp<br />\r\n&gt;&gt;&gt; NƠI L&Agrave;M VIỆC: Si&ecirc;u thị&nbsp;BigC Huế&nbsp;số 174 B&agrave; Triệu, , TP&nbsp;Huế.&nbsp;</p>\r\n\r\n<p>&gt;&gt;&gt; Y&Ecirc;U CẦU</p>\r\n\r\n<p>- C&oacute; tinh thần tr&aacute;ch nhiệm.<br />\r\n- Th&aacute;i độ l&agrave;m việc nghi&ecirc;m t&uacute;c, cởi mở, trung thực.</p>\r\n\r\n<p>- Tuổi từ 18-55, kh&ocirc;ng xăm tay v&agrave; kh&ocirc;ng dị tật.</p>\r\n\r\n<p>- C&oacute; Chứng minh nh&acirc;n d&acirc;n nhận việc ngay.<br />\r\n&gt;&gt;&gt; Hạn nộp hồ sơ đến hết ng&agrave;y 12/4/2019.</p>\r\n\r\n<p>&gt;&gt;&gt; MỌI THẮC MẮC LI&Ecirc;N HỆ : Ms Y&ecirc;n 0987421875&nbsp;<br />\r\n- fb: <a href=\"https://www.google.com/url?q=https://www.facebook.com/viectheogiocit/&amp;sa=D&amp;ust=1553825096917000&amp;usg=AFQjCNEBe-A_FeBXH_leGNjsEaFzaJEvMw\">https://www.facebook.com/viectheogiocit/</a><br />\r\n- Website: <a href=\"https://www.google.com/url?q=https://viectheogiocit.com/?req&amp;sa=D&amp;ust=1553825096917000&amp;usg=AFQjCNFfu_0HdsgewRh6vitmX_-rWiCxLg\">https://viectheogiocit.com/?req</a></p>\r\n\r\n<p><br />\r\nNhấn &quot; NHẬN VIỆC&quot; ngay để nộp hồ sơ v&agrave; ứng tuyển trực tiếp nh&eacute;!</p>\r\n', '201904812413.jpg', '0', 20000, 30000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(82, 3, 3, 49, 6, 'EAGLE TOURIST TUYỂN DỤNG NHIỀU VỊ TRÍ HẤP DẪN', '<p>C-IT HỖ TRỢ ĐĂNG TIN?</p>\r\n\r\n<p>EAGLE TOURIST TUYỂN DỤNG NHIỀU VỊ TR&Iacute; HẤP DẪN&nbsp;??<br />\r\nVị tr&iacute;, số lượng:<br />\r\n1. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Huế: 04 người<br />\r\n2. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Quảng Trị: 02 người<br />\r\n3. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Quảng B&igrave;nh: 04 người<br />\r\n&nbsp;Quyền lợi:<br />\r\n1. Lương = lương cứng + % hoa hồng + thưởng (m&ugrave;a cao điểm lương l&ecirc;n đến 20triệu/th&aacute;ng)<br />\r\n2. Được tham gia c&aacute;c hoạt động ngoại kh&oacute;a: văn nghệ, thể thao, du lịch của C&ocirc;ng ty.<br />\r\n3. Được hưởng c&aacute;c chế độ ph&uacute;c lợi theo quy định của c&ocirc;ng ty<br />\r\n4. Được l&agrave;m việc trong m&ocirc;i trường năng động, th&acirc;n thiện, c&oacute; cơ hội thăng tiến. Được đ&agrave;o tạo th&ecirc;m để n&acirc;ng cao nghiệp vụ chuy&ecirc;n m&ocirc;n.<br />\r\n&nbsp;Một số y&ecirc;u cầu:<br />\r\n&bull; Giới t&iacute;nh: Nam, nữ (Ưu ti&ecirc;n Nam, sức khỏe tốt, kinh nghiệm sale thị trường)<br />\r\n&bull; Tuổi: Từ 23 đến 35<br />\r\n&bull; Bằng cấp: Tốt nghiệp từ trung cấp trở l&ecirc;n (Ưu ti&ecirc;n ứng vi&ecirc;n học chuy&ecirc;n ng&agrave;nh kinh tế,quản trị kinh doanh,du lịch)<br />\r\n&bull; Kinh nghiệm: kh&ocirc;ng y&ecirc;u cầu, v&agrave;o l&agrave;m sẽ đc đ&agrave;o tạo, c&oacute; kinh nghiệm sẽ chiếm ưu thế hơn<br />\r\n&bull; Ưu ti&ecirc;n ứng vi&ecirc;n hiểu biết về c&aacute;c điểm tham quan du lịch, đ&atilde; đi nhiều nơi trong v&agrave; ngo&agrave;i nước.<br />\r\n&bull; C&oacute; t&iacute;nh chịu kh&oacute;, chịu &aacute;p lực tốt, ki&ecirc;n tr&igrave; trong c&ocirc;ng việc, giao tiếp với kh&aacute;ch h&agrave;ng tốt<br />\r\n??&nbsp;Thời hạn nộp hồ sơ: đến 05/1/2019<br />\r\n???&nbsp;M&ocirc; tả c&ocirc;ng việc:<br />\r\n?&nbsp;Thực hiện c&ocirc;ng việc kinh doanh theo sự ph&acirc;n c&ocirc;ng của Trưởng ph&ograve;ng kinh doanh.<br />\r\n?&nbsp;Đảm nhận thị trường được giao,l&ecirc;n kế hoạch kinh doanh,nhận chỉ ti&ecirc;u kinh doanh tr&ecirc;n thị trường đ&oacute;.<br />\r\n?&nbsp;Đ&oacute;ng g&oacute;p c&aacute;c &yacute; tưởng kinh doanh,&yacute; tưởng về ph&aacute;t triển sản phẩm để đạt hiệu quả cao nhất trong c&ocirc;ng việc.<br />\r\n?&nbsp;Tư vấn sản phẩm dịch vụ cho kh&aacute;ch h&agrave;ng, chăm s&oacute;c kh&aacute;ch h&agrave;ng hiện tại v&agrave; t&igrave;m kiếm ph&aacute;t triển kh&aacute;ch h&agrave;ng tiềm năng.<br />\r\n?&nbsp;Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c theo sư ph&acirc;n c&ocirc;ng của cấp quản l&yacute; (nếu c&oacute;)<br />\r\n??&nbsp;C&aacute;c h&igrave;nh thức ứng tuyển:<br />\r\n1.Đăng k&yacute; qua mail: Th&ocirc;ng tin ứng tuyển gửi về h&ograve;m thư: hr@dulichdaibang.com (Sẽ bổ sung hồ sơ bản giấy khi đi phỏng vấn)<br />\r\n2. Đăng k&yacute; trực tiếp: Hồ sơ gửi về C&ocirc;ng ty CP truyền th&ocirc;ng quảng c&aacute;o v&agrave; dịch vụ du lịch Đại B&agrave;ng, số 115 Phạm Văn Đồng, phường Vỹ Dạ, tỉnh Thừa Thi&ecirc;n Huế.<br />\r\nHồ sơ bao gồm: + Đơn xin việc + CV m&ocirc; tả kinh nghiệm bản th&acirc;n/+ Sơ yếu l&yacute; lịch / Văn bằng, chứng chỉ li&ecirc;n quan + CMND + Hộ khẩu<br />\r\nMọi thắc mắc gọi về số: 0911.343. 986 (Ms. Thảo)</p>\r\n', '2019022194101.jpg', '0', 34000, 30000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(94, 2, 5, 49, 17, 'Nhân viên bán Bánh mì Pháp Huế', '<p>La Boulangerie Francaise/ B&aacute;nh m&igrave; Ph&aacute;p Huế</p>\r\n\r\n<p>--- TUYỂN NỮ NH&Acirc;N VI&Ecirc;N B&Aacute;N H&Agrave;NG ---</p>\r\n\r\n<p>&gt;&gt; Mức Lương:&nbsp;2tr5 - 3tr<br />\r\n&gt;&gt; Y&Ecirc;U CẦU&nbsp;<br />\r\n- Si&ecirc;ng năng, nhanh nhẹn.<br />\r\n- C&oacute; thể giao tiếp bằng tiếng anh cơ bản.<br />\r\n- L&agrave;m việc theo ca: từ 6h30 - 14h00 v&agrave; 13h30 -21h.<br />\r\n- M&ocirc;i trường l&agrave;m việc th&acirc;n thiện, c&oacute; cơ hội thực h&agrave;nh ngoại ngữ với người nước ngo&agrave;i.</p>\r\n\r\n<p>&gt;&gt; ĐỊA ĐIỂM L&Agrave;M VIỆC :&nbsp;46 Nguyễn Tri Phương - TP Huế</p>\r\n', '20190328105242.jpg', '0', 20000, 30000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(118, 2, 5, 49, 20, 'THE ALLEY HUẾ TUYỂN DỤNG', '<p>THE ALLEY HUẾ - 15 MAI TH&Uacute;C LOAN<br />\r\nTUYỂN DỤNG</p>\r\n\r\n<p>VỊ TR&Iacute; TUYỂN DỤNG<br />\r\n- Nh&acirc;n vi&ecirc;n pha chế: 5 bạn<br />\r\n- Nh&acirc;n vi&ecirc;n thu ng&acirc;n: 3 bạn<br />\r\n- Nh&acirc;n vi&ecirc;n giữ xe (nam): 5 bạn<br />\r\n<br />\r\nTHỜI GIAN L&Agrave;M VIỆC<br />\r\n- Full time: 8h/1 ca<br />\r\n- Part time: 5h/1 ca<br />\r\n- Mức lương: Từ 12k/1h<br />\r\n<br />\r\n&nbsp;QUYỀN LỢI<br />\r\n- Được thưởng cuối th&aacute;ng khi l&agrave;m tốt<br />\r\n- Được thưởng v&agrave;o c&aacute;c ng&agrave;y lễ, tết<br />\r\n- Được l&agrave;m việc trong m&ocirc;i trường h&ograve;a đồng, th&acirc;n thiện, chuy&ecirc;n nghiệp<br />\r\n- Được đ&agrave;o tạo pha chế c&aacute;c m&oacute;n của hệ thống The Alley<br />\r\n- Được cấp đồng phục v&agrave; được training c&aacute;c kỹ năng về giao tiếp<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu về kinh nghiệm, sẽ được hướng dẫn khi v&agrave;o l&agrave;m việc<br />\r\n<br />\r\n&nbsp;Y&Ecirc;U CẦU<br />\r\n- Nam, nữ từ 18 tuổi trở l&ecirc;n<br />\r\n- Si&ecirc;ng năng, chăm chỉ v&agrave; c&oacute; thể l&agrave;m được c&aacute;c ng&agrave;y lễ, tết<br />\r\n- H&ograve;a đồng, th&acirc;n thiện v&agrave; vui vẻ<br />\r\n- C&oacute; &yacute; thức, tr&aacute;ch nhiệm trong c&ocirc;ng việc<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển<br />\r\n- Nạp hồ sơ trực tiếp tại địa chỉ: 15 Mai Th&uacute;c Loan, Tp Huế từ ng&agrave;y 23 - 28/7 (kh&ocirc;ng nhận inbox)</p>\r\n\r\n<p>- Hồ sơ bao gồm:<br />\r\n* Ảnh c&aacute; nh&acirc;n 4*6&nbsp;<br />\r\n* Sơ yếu l&iacute; lịch<br />\r\n* Bản photo hộ khẩu, CMND<br />\r\n* Giấy kh&aacute;m sức khoẻ<br />\r\nPhỏng vấn qua SĐT: 0982254418<br />\r\n------------------------------<br />\r\nC-IT - Việc l&agrave;m theo giờ.</p>\r\n', '20190723114905.jpg', '0', 0, 0, NULL, '2019-07-28 05:13:48', 0, '0982254418'),
(97, 2, 8, 49, 20, 'Nhân viên Pha chế và Phục vụ', '<p>TIỆM CAFE HOA GIẤY TUYỂN DỤNG NH&Acirc;N VI&Ecirc;N</p>\r\n\r\n<p>* Nh&acirc;n vi&ecirc;n pha chế:<br />\r\n- S&ocirc;́ lượng: 2<br />\r\n- Thời gian l&agrave;m việc: ca g&atilde;y 6h30 - 11h30 v&agrave; 17h00 - 22h00<br />\r\n- Lương : Thoả thuận<br />\r\n* Nh&acirc;n vi&ecirc;n phục vụ:<br />\r\n- Số lượng : 3 nữ (ưu ti&ecirc;n c&aacute;c bạn sinh vi&ecirc;n muốn trải nghiệm, kiếm th&ecirc;m thu nhập)&nbsp;<br />\r\n- Thời gian l&agrave;m việc : Ca g&atilde;y 6h00- 11h00 v&agrave; 17h00 - 22h00.<br />\r\n- Lương : Thoả thuận<br />\r\nY&ecirc;u cầu c&oacute; thể l&agrave;m việc l&acirc;u d&agrave;i, năng động, vui vẻ, chu đ&aacute;o....<br />\r\nMọi chi ti&ecirc;́t li&ecirc;n h&ecirc;̣ sdt :0966836891<br />\r\n0905699798<br />\r\nĐịa chỉ: 03 Trần Anh Li&ecirc;n - KQH Kiểm Huệ TP Huế.</p>\r\n', '20190328112914.jpg', '0', 0, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(98, 3, 9, 57, 21, 'Nhân viên Call Center ', '<p>VPBANK tuyển dụng<br />\r\nNh&acirc;n vi&ecirc;n Call Center&nbsp;</p>\r\n\r\n<p>&gt;&gt; Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm</p>\r\n\r\n<p><strong><strong>QUYỀN LỢI</strong></strong></p>\r\n\r\n<ul>\r\n	<li>Mức lương cạnh tranh (6 - 9 triệu)</li>\r\n	<li>M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp</li>\r\n	<li>Cơ hội thăng tiến, đ&agrave;o tạo</li>\r\n</ul>\r\n\r\n<p>============<br />\r\nỨNG VI&Ecirc;N ỨNG TUYỂN</p>\r\n\r\n<p>&gt;&gt;&gt; V&agrave;o Nhận việc&nbsp;chọn m&atilde; CCA</p>\r\n', '2019032830325.jpg', '0', 20000, 30000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(99, 2, 10, 49, 22, '[TUYỂN DỤNG NHÂN VIÊN PHÁT TỜ RƠI - 20K/h]', '<p>[TUYỂN DỤNG NH&Acirc;N VI&Ecirc;N PH&Aacute;T TỜ RƠI - 20K/h]<br />\r\n--- L&Agrave;M G&Igrave; ĐỂ NHIỀU TIỀN??? ---</p>\r\n\r\n<p>&gt;&gt; CẦN TUYỂN 5 NH&Acirc;N VI&Ecirc;N PH&Aacute;T TỜ RƠI<br />\r\n&gt;&gt; LƯƠNG: 20K/1h (+Thưởng). 1 ca 2 tiếng (c&oacute; thể l&agrave;m 2 ca hoặc xoay ca).<br />\r\n- Ca S&aacute;ng (9h30 - 11h30)<br />\r\n- Ca Chiều (16h - 18h)<br />\r\n- Trao đổi th&ecirc;m khi gặp trực tiếp. ( thời gian linh động)<br />\r\n&gt;&gt; Hạn nộp hồ sơ đến hết ng&agrave;y 4/4/2019.</p>\r\n\r\n<p>&gt;&gt; M&Ocirc; TẢ C&Ocirc;NG VIỆC<br />\r\n- Ph&aacute;t tờ rơi tại c&aacute;c địa điểm m&agrave; c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Trao đổi th&ecirc;m khi gặp trực tiếp.</p>\r\n\r\n<p>&gt;&gt; Y&Ecirc;U CẦU<br />\r\n- Nhanh nhẹn, c&oacute; tinh thần tr&aacute;ch nhiệm.<br />\r\n- Th&aacute;i độ l&agrave;m việc nghi&ecirc;m t&uacute;c, cởi mở, TRUNG THỰC.</p>\r\n\r\n<p>&gt;&gt; NƠI L&Agrave;M VIỆC: Khu vực TP Huế</p>\r\n\r\n<p>&gt;&gt; MỌI THẮC MẮC LI&Ecirc;N HỆ : 076 2626 294 - Gặp Chị Hải</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhấn &quot; NHẬN VIỆC&quot; ngay để nộp hồ sơ v&agrave; ứng tuyển trực tiếp nh&eacute;!.</p>\r\n', '201904384143.jpg', '0', 20000, 30000, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(100, 2, 11, 49, 23, 'THỰC TẬP SINH TIỀM NĂNG', '<p>TRUNG T&Acirc;M ANH NGỮ &amp; KỸ NĂNG PICTURE FUTURE</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TUYỂN DỤNG 02 THỰC_TẬP_SINH D&Agrave;NH CHO SINH VI&Ecirc;N NGOẠI NGỮ NĂM 1, NĂM 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>❎❎Cơ hội hiếm c&oacute; d&agrave;nh cho c&aacute;c bạn sinh vi&ecirc;n Ngoại Ngữ Năm 1, Năm 2 đ&acirc;y rồi n&egrave;!!!!❎❎</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&gt;&gt;&gt; TRUNG T&Acirc;M ANH NGỮ &amp; KỸ NĂNG PICTURE FUTURE TUYỂN DỤNG 02 #THỰC_TẬP_SINH D&Agrave;NH CHO SINH VI&Ecirc;N NGOẠI NGỮ NĂM 1, NĂM 2✨</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&gt;&gt;&gt; NHIỆM VỤ CH&Iacute;NH:</p>\r\n\r\n<p>- Hỗ trợ x&acirc;y dựng dụng cụ học tập cho Lớp học trải nghiệm tự nhi&ecirc;n</p>\r\n\r\n<p>- Thời gian thực tập: 3 th&aacute;ng</p>\r\n\r\n<p>&gt;&gt;&gt; QUYỀN LỢI:</p>\r\n\r\n<p>- Được thực h&agrave;nh trong m&ocirc;i trường gi&aacute;o dục năng động v&agrave; s&aacute;ng tạo</p>\r\n\r\n<p>- Được tuyển dụng sau thời gian thực tập khi c&aacute;c bạn l&agrave;m việc tốt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vui l&ograve;ng điền đầy đủ c&aacute;c th&ocirc;ng tin dưới đ&acirc;y trước thời hạn nộp hồ sơ 10/4. Ph&iacute;a Trung t&acirc;m sẽ lh cho bạn trong thời gian sớm nhất.</p>\r\n\r\n<p>&gt;&gt;&gt; Nhấn &quot;NHẬN VIỆC &quot; Ngay.</p>\r\n', '201904475831.jpg', '0', 0, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(101, 2, 12, 49, 24, 'NHÂN VIÊN PHỤC VỤ', '<p>Tuyển nh&acirc;n vi&ecirc;n phục vụ :<br />\r\n', '201904441615.jpg', '0', 0, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(102, 3, 13, 49, 25, 'NHÂN VIÊN NHÀ HÀNG', '<p>', '201904441942.jpg', '0', 0, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(104, 2, 15, 49, 27, 'PHỤC VỤ - PHA CHẾ -GIỮ XE', '<p>Kem đảo dừa GooFoo Gelato Huế tuyển dụng nhiều vị tr&iacute;:<br />\r\n1/ Phục vụ:<br />\r\nThời gian l&agrave;m việc:<br />\r\n- Ca 1: 8h - 12h30<br />\r\n- Ca 2: 12h30 - 17h<br />\r\n- Ca 3: 17h &ndash; 23h<br />\r\n2/ Bartender:<br />\r\nThời gian l&agrave;m việc:<br />\r\n- Ca 1: 8h - 12h30<br />\r\n- Ca 2: 12h30 - 17h<br />\r\n- Ca 3: 17h &ndash; 23h<br />\r\n3/ Giữ xe:<br />\r\nThời gian l&agrave;m việc: 17h-23h<br />\r\n************************************************<br />\r\nLi&ecirc;n hệ nộp hồ sơ tại:<br />\r\n- 33 L&ecirc; Qu&yacute; Đ&ocirc;n (Kem đảo dừa GooFoo Gelato Huế)<br />\r\n- 082.629.6389 (gặp anh T&ugrave;ng)</p>\r\n', '2019041045148.jpg', '0', 0, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(105, 2, 16, 49, 28, 'NHÂN VIÊN PHỤC VỤ', '<p>', '20190411110713.jpg', '0', 9, 0, NULL, '2019-06-29 17:11:09', 0, '085 5566145 gặp hạnh'),
(106, 2, 2, 49, 6, 'NHÂN VIÊN QUÁN CAFE', '<p>❗❗THE TIME COFFEE TUYỂN DỤNG&nbsp;❗❗a</p>\r\n', '2019041263710.jpg', '0', 0, 0, NULL, '2019-06-30 01:09:32', 0, '085 5566145 gặp hạnh'),
(112, 2, 7, 49, 17, 'PIZZA KAT TUYỂN NHÂN VIÊN PART-TIME VÀ FULL-TIME', '<p>PIZZA KAT<br />\r\nTUYỂN DỤNG&nbsp;</p>\r\n\r\n<p>- 02 NH&Acirc;N VI&Ecirc;N PHỤC VỤ<br />\r\nThời gian l&agrave;m việc: 17h30-22h00&nbsp;<br />\r\nLương: 1tr4 + ăn tối + thưởng<br />\r\nC&ocirc;ng việc: phục vụ, dọn b&agrave;n, order..&nbsp;<br />\r\n-----------------------<br />\r\n- 02 NH&Acirc;N VI&Ecirc;N PHỤ BẾP&nbsp;<br />\r\nPART TIME<br />\r\nThời gian l&agrave;m việc: 17h30 - 22h00<br />\r\nLương: 1tr550 + ăn tối + thưởng<br />\r\nFULL TIME<br />\r\nThời gian l&agrave;m việc: 10h00 - 22h00 (được nghỉ trưa 1,5h)<br />\r\nLương 4tr/th&aacute;ng. Hỗ trợ ăn c&aacute;c bữa.<br />\r\nC&ocirc;ng việc: l&agrave;m bếp<br />\r\n-----------------------<br />\r\nM&ocirc;i trường l&agrave;m việc th&acirc;n thiện, vui vẻ<br />\r\nY&ecirc;u cầu : Trung thực, si&ecirc;ng năng, c&oacute; tr&aacute;ch nhiệm với c&ocirc;ng việc.<br />\r\nTuổi từ 18</p>\r\n', '201907190309.jpg', '0', 0, 0, NULL, '2019-07-01 15:42:40', 0, '0905335681'),
(115, 2, 5, 49, 18, 'Tachi SeaFood TUYỂN DỤNG', '<p>TACHI RESTAURANT- SINCE 2019<br />\r\nNh&agrave; h&agrave;ng Hải Sản - 22 Nguyễn Th&aacute;i Học.<br />\r\n-----------------------<br />\r\nPART TIME Bộ phận PHỤC VỤ:<br />\r\n- Số lượng: 10 bạn.<br />\r\n* Chế độ Lương cao v&agrave; Thưởng theo giờ.<br />\r\n* Tip share đều theo giờ l&agrave;m NV.<br />\r\n* Hỗ trợ ăn theo Ca.<br />\r\n* Ca 6 Tiếng v&agrave; c&oacute; thể xoay Ca với NV kh&aacute;c:<br />\r\n+ Ca 1: 16H - 22H<br />\r\n+ Ca 2: 18H - 00H00<br />\r\n+ Ca Phụ : 17H - 23H<br />\r\n* C&ocirc;ng t&aacute;c tốt sẽ được l&ecirc;n vị tr&iacute; cao hơn v&agrave; chế độ kh&aacute;c.<br />\r\n----------------<br />\r\nNh&acirc;n vi&ecirc;n PHỤ BẾP:<br />\r\n- Số lượng: 4 bạn!<br />\r\n* Chế độ Lương cao theo giờ.<br />\r\n* Kh&ocirc;ng y&ecirc;u cầu bằng cấp.<br />\r\n* Tip share đều theo tổng giờ l&agrave;m NV.<br />\r\n* Hổ trợ ăn theo Ca.<br />\r\n* Ca 8-12 Tiếng ( t&ugrave;y nhu cầu ), c&oacute; ca g&atilde;y.<br />\r\n+ Ca 1: 9H - 12H, 15H - 24H.<br />\r\nHoặc Ca phụ 1: 15H - 24H00<br />\r\n+ Ca Phụ 2 : 17H - 24H.<br />\r\n* C&ocirc;ng t&aacute;c tốt sẽ được hưởng chế độ tốt.<br />\r\n----------------<br />\r\nTHU NG&Acirc;N :<br />\r\n- Số lượng: 2 bạn!<br />\r\n* Chế độ Lương theo Giờ, Thưởng r&otilde; r&agrave;ng.<br />\r\n* Tip share đều theo tổng giờ l&agrave;m NV.<br />\r\n* Kh&ocirc;ng y&ecirc;u cầu Bằng cấp.<br />\r\n* Hổ trợ ăn theo Ca.<br />\r\n* Ca 9 Tiếng: 15H - 00H00.<br />\r\n* Hay Ca g&atilde;y 11 Tiếng: 9H - 11H v&agrave; 15H - 00H00. T&ugrave;y nhu cầu.<br />\r\n-----------------------<br />\r\nTR&Ocirc;NG v&agrave; ĐIỀU PHỐI XE:<br />\r\n- Số lượng: 2 bạn!<br />\r\n- Kh&ocirc;ng giới hạn tuổi t&aacute;c.<br />\r\n* Ca 6-8 Tiếng từ 17h30 đến 23H30.<br />\r\n* Lương cao theo giờ.<br />\r\n* Hổ trợ ăn theo Ca.<br />\r\n* Tip share theo giờ l&agrave;m.<br />\r\n* Thưởng nếu l&agrave;m tốt.<br />\r\n-----------------------<br />\r\nTACHI - CH&Agrave;O Đ&Oacute;N NHỮNG B&Agrave;N TAY MỚI !&nbsp;<br />\r\n-----------------------<br />\r\nLi&ecirc;n hệ phỏng vấn:&nbsp;0982 307 335 (Gặp anh Ph&aacute;p)&nbsp;<br />\r\nEmail: phap.vinh@gmail.com<br />\r\nFB: Vĩnh Ph&aacute;p<br />\r\nTACHI restaurant - 22 Nguyễn Th&aacute;i Học - TP Huế.</p>\r\n', '2019072102657.jpg', '0', 0, 0, NULL, '2019-07-02 03:26:57', 0, '0982 307 335'),
(117, 2, 5, 49, 19, 'Nối Coffee & Milktea Tuyển Dụng', '<p>NỐI COFFE &amp; MILK TEA<br />\r\n28 Đống Đa, Huế<br />\r\nTUYỂN NH&Acirc;N VI&Ecirc;N<br />\r\n- Thời gian:<br />\r\nS&aacute;ng: 6h-11h30<br />\r\nTrưa: 11h30-17h30<br />\r\nTối: 17h30-22h30<br />\r\n- Lương khởi điểm: 1tr3/th&aacute;ng (ca 5 tiếng)</p>\r\n\r\n<p>C&oacute; thể xoay ca, tăng lương sau 2 th&aacute;ng l&agrave;m việc<br />\r\n<br />\r\n- Y&ecirc;u cầu: Tr&ecirc;n 18 tuổi , trung thực, vui vẻ, nhanh nhẹn, c&oacute; tinh thần ham học hỏi, ngoại h&igrave;nh tốt, c&oacute; kinh nghiệm.<br />\r\nC&oacute; thể xin xoay ca !!&nbsp;<br />\r\nBoss dễ t&iacute;nh. Nh&acirc;n vi&ecirc;n h&ograve;a đồng, vuii vẻ<br />\r\nSớm nha nhập ng&ocirc;i nh&agrave; NỐI th&acirc;n y&ecirc;u n&agrave;ooo !!<br />\r\n----------------------------<br />\r\nTH&Ocirc;NG TIN ỨNG TUYỂN<br />\r\n&gt;&gt; Ứng vi&ecirc;n li&ecirc;n hệ v&agrave; trao đổi trực tiếp qua h&igrave;nh thức sau:</p>\r\n\r\n<p>1. Chủ động li&ecirc;n hệ v&agrave;o sđt: 0814444409 (a Tốp)</p>\r\n\r\n<p>(kh&ocirc;ng nhận ib, mess)<br />\r\n<br />\r\n2. PHỎNG VẤN TRỰC TIẾP TẠI ĐỊA CHỈ:<br />\r\n28 Đống đa , Huế<br />\r\n------------------------------<br />\r\nC-IT -Việc l&agrave;m theo giờ</p>\r\n', '2019072271323.jpg', '0', 0, 0, NULL, '2019-08-20 11:12:10', 0, '0814444409 a Tốp'),
(147, 2, 5, 49, 46, 'THE TIME COFFEE TUYỂN DỤNG', '<p>THE TIME COFFEE TUYỂN DỤNG&nbsp;<br />\r\nTUYỂN DỤNG NH&Acirc;N VI&Ecirc;N&nbsp;</p>\r\n\r\n<p>●&nbsp;Nh&acirc;n vi&ecirc;n phục vụ part - time : số lượng 5<br />\r\n- Y&ecirc;u cầu : Nam/ Nữ<br />\r\n- Thời gian l&agrave;m việc:&nbsp;<br />\r\nCa s&aacute;ng : 6h30 - 12h ( c&oacute; thể xoay ca )<br />\r\nCa tối : 17h30-22h30&nbsp;<br />\r\n- Thu nhập: 1.500.000 - 1.900.000 ca/th&aacute;ng ( t&ugrave;y năng lực )<br />\r\n+ Ngoại h&igrave;nh dễ nh&igrave;n<br />\r\n+ Y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ, b&aacute;n h&agrave;ng<br />\r\n+ Giao tiếp tự tin v&agrave; lu&ocirc;n tươi cười trong c&aacute;c t&igrave;nh huống<br />\r\n+ Chăm chỉ, chịu kh&oacute;<br />\r\n+ Ưu ti&ecirc;n: ứng vi&ecirc;n c&oacute; kinh nghiệm<br />\r\n●&nbsp;Nh&acirc;n vi&ecirc;n pha chế : số lượng 4<br />\r\n- Thời gian l&agrave;m việc : s&aacute;ng, chiều, tối<br />\r\n- Thu nhập: 1.900.000 - 2.800.000 ca/th&aacute;ng (t&ugrave;y năng lực)<br />\r\n+ Y&ecirc;u cầu: Nhiệt t&igrave;nh, nhanh nhẹn, c&oacute; kinh nghiệm.<br />\r\n+ Quyền lợi được đ&agrave;o tạo n&acirc;ng cao tay nghề, được tiếp x&uacute;c với c&aacute;c pha chế gi&agrave;u kinh nghiệm, được sử dụng c&aacute;c trang thiết bị hiện đại.</p>\r\n\r\n<p>●&nbsp;Quyền lợi:<br />\r\n- Thời gian l&agrave;m việc linh động , c&oacute; thể xoay ca , đổi ca (ph&ugrave;&nbsp;<br />\r\nhợp với tất cả c&aacute;c bạn sinh vi&ecirc;n)<br />\r\n- Thu nhập cao<br />\r\n- N&acirc;ng cao c&aacute;c kỹ năng giao tiếp.<br />\r\n- Cơ hội thăng tiến, tăng lương ngay + thưởng nếu l&agrave;m tốt.</p>\r\n\r\n<p>----------------------------<br />\r\n● Th&ocirc;ng tin ứng tuyển<br />\r\n- Li&ecirc;n hệ : 077.2424.113 ( MR ĐẠt ) - 0935.007.443 ( Ms. Y&Ecirc;N )</p>\r\n\r\n<p>Hoặc c&oacute; thể đến trực tiếp tại qu&aacute;n<br />\r\n- Địa chỉ: Tầng 5 - To&agrave; nh&agrave; 18 L&ecirc; Lợi, TP Huế.&nbsp;<br />\r\nMang theo CMND (bản photo kh&ocirc;ng cần c&ocirc;ng chứng &amp; bản gốc).</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019082160551.jpg', '0', 0, 0, NULL, '2019-08-21 11:05:52', 0, '077.2424.113 ( MR ĐẠT )'),
(119, 2, 5, 49, 21, 'Mì Quảng CÔ BA TUYỂN DỤNG', '<p>M&Igrave; QUẢNG C&Ocirc; BA<br />\r\n14 Dương Văn An, Tp Huế<br />\r\nCẦN TUYỂN GẤP :</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n phục vụ: 10 bạn nam,nữ<br />\r\n- Ca s&aacute;ng: 5h45 đến 11h30<br />\r\n- Ca trưa: 11h30 đến 16h30<br />\r\n- Ca tối: 16h30 đến 21h30<br />\r\nLương: 12k/1h (t&iacute;nh theo giờ v&agrave; thanh to&aacute;n theo tuần<br />\r\n- L&agrave;m tốt sẽ được thưởng<br />\r\nY&ecirc;u cầu:<br />\r\n- Chăm chỉ l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu<br />\r\n- Biết lắng nghe, ham học hỏi<br />\r\n- C&oacute; tr&aacute;ch nhiệm cao v&agrave; l&ograve;ng say m&ecirc; với c&ocirc;ng việc, chịu được &aacute;p lực c&ocirc;ng việc.<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp.<br />\r\n&nbsp;- L&agrave;m việc trong m&ocirc;i trường th&acirc;n thiện, ho&agrave; đồng.<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ trực tiếp tại qu&aacute;n: 14 Dương Văn An, Tp Huế.</p>\r\n\r\n<p>- Sđt: 0868002939 (kh&ocirc;ng trả lời inbox)<br />\r\n------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ.</p>\r\n', '2019072321927.jpg', '0', 0, 0, NULL, '2019-07-23 07:19:27', 0, '0868002939'),
(120, 2, 7, 49, 22, 'Trung Tâm Anh Ngữ GEM TUYỂN DỤNG', '<p>TRUNG T&Acirc;M ANH NGỮ GEM cần tuyển một số vị tr&iacute;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Nh&acirc;n vi&ecirc;n kinh doanh: (Full time)</p>\r\n\r\n<p>- Số lượng: 1</p>\r\n\r\n<p>+ C&ocirc;ng việc: quảng b&aacute;, tư vấn, ghi danh học vi&ecirc;n đăng k&yacute; c&aacute;c chương tr&igrave;nh ngoại ngữ</p>\r\n\r\n<p>+ Y&ecirc;u cầu: th&agrave;nh thạo m&aacute;y t&iacute;nh, biết ngoại ngữ l&agrave; 1 lợi thế, giao tiếp lanh lợi, chăm chỉ, ham học hỏi</p>\r\n\r\n<p>- Mức lương: 3-7 triệu</p>\r\n\r\n<p>2. 20 Nh&acirc;n vi&ecirc;n kinh doanh (Part-time)</p>\r\n\r\n<p>+ C&ocirc;ng việc: quảng b&aacute;, tư vấn, ghi danh học vi&ecirc;n đăng k&yacute; c&aacute;c chương tr&igrave;nh ngoại ngữ.</p>\r\n\r\n<p>+ Y&ecirc;u cầu: nhanh nhẹn, thật th&agrave;, th&agrave;nh thạo m&aacute;y t&iacute;nh, chăm chỉ, ham học hỏi, ngoại ngữ cơ bản</p>\r\n\r\n<p>- Lương: 1,2-4 triệu</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>- Hồ sơ: gồm chứng minh nh&acirc;n d&acirc;n, CV, đơn xin vi&ecirc;c, Bảng điểm, ảnh 4x6 (2 c&aacute;i) bằng cấp li&ecirc;n quan (nếu c&oacute;)</p>\r\n\r\n<p>- Gửi qua Mail: phananh28190@gmail.com</p>\r\n\r\n<p>- Sđt: 0389.942.954</p>\r\n\r\n<p>- Facebook: Olay Bella</p>\r\n\r\n<p>------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ.</p>\r\n', '2019072324947.jpg', '0', 0, 0, NULL, '2019-07-23 07:49:47', 0, '0389.942.954'),
(121, 2, 5, 49, 23, 'ANH KAFE - 05 NGUYỄN HUỆ TUYỂN DỤNG', '<p>ANH KAFE - 05 NGUYỄN HUỆ</p>\r\n\r\n<p>TUYỂN DỤNG</p>\r\n\r\n<p>- Vị tr&iacute;: Nh&acirc;n vi&ecirc;n phục vụ (order/chạy b&agrave;n)</p>\r\n\r\n<p>- THU NHẬP : 1.400.000 - 1.700.000 VNĐ/th&aacute;ng (lương, thưởng theo năng lực)</p>\r\n\r\n<p>- Thời gian:&nbsp;&nbsp;Ca Chiều ( 12h - 17h30 ): SL ( 2 người)</p>\r\n\r\n<p>&nbsp;- Y&ecirc;u cầu:<br />\r\n+ Đủ từ 18 - 22 tuổi.<br />\r\n+ L&agrave;m được thời gian d&agrave;i, dịp lễ, Tết.<br />\r\n+ C&oacute; hộ khẩu Huế (để l&agrave;m đc dịp lễ Tết)<br />\r\n+ Ngoại h&igrave;nh dễ nh&igrave;n, c&oacute; kinh nghiệm phục vụ cafe shop.</p>\r\n\r\n<p>- Quyền lợi:&nbsp;<br />\r\n+ M&ocirc;i trường l&agrave;m việc th&acirc;n thiện, chuy&ecirc;n nghiệp, ph&ograve;ng điều ho&agrave;, kh&ocirc;ng kh&oacute;i thuốc.<br />\r\n+ Được r&egrave;n luyện kĩ năng ăn n&oacute;i, giao tiếp với kh&aacute;ch h&agrave;ng (gi&uacute;p tự tin, mạnh dạn hơn)<br />\r\n+ Được xếp lịch off mỗi tuần cho nh&acirc;n vi&ecirc;n.<br />\r\n+ Được nh&acirc;n lương dịp quốc lễ (x2 c&ocirc;ng), (Tết x3 c&ocirc;ng)<br />\r\n+ Tổ chức tri &acirc;n dịp sinh nhật cho nh&acirc;n vi&ecirc;n, party định k&igrave; hằng th&aacute;ng.<br />\r\n+ Trao giải thưởng (tiền mặt + bằng khen) d&agrave;nh nh&acirc;n vi&ecirc;n xuất sắc hằng th&aacute;ng.<br />\r\n+ Tăng lương định k&igrave; cho nh&acirc;n vi&ecirc;n.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>&nbsp;Li&ecirc;n hệ:&nbsp;<br />\r\n+ Anh Kafe 05 Nguyễn Huệ - Huế<br />\r\n+ Inbox fanpage ANH KaFe<br />\r\n+ SĐT: 078.247.9947 ( Hải)</p>\r\n\r\n<p>------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ.</p>\r\n', '2019072470355.jpg', '0', 0, 0, NULL, '2019-07-24 12:03:56', 0, '0782479947'),
(122, 2, 5, 49, 24, 'Đồng Tâm BAKERY & COFFEE Huế TUYỂN DỤNG', '<p>ĐỒNG T&Acirc;M BAKERY &amp; COFFEE HUẾ</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ</p>\r\n\r\n<p>Thời gian l&agrave;m việc: Từ 14h - 22h30</p>\r\n\r\n<p>Lương: 2,3 triệu/ ca</p>\r\n\r\n<p>- Lương v&agrave; thời gian c&oacute; thể linh hoạt, c&ocirc;ng ty c&oacute; hỗ trợ chổ ở miễn ph&iacute;,ưu ti&ecirc;n người l&agrave;m việc l&acirc;u d&agrave;i.</p>\r\n\r\n<p>- L&agrave;m tốt sẽ được thưởng</p>\r\n\r\n<p>Y&ecirc;u cầu:</p>\r\n\r\n<p>- Chăm chỉ l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu</p>\r\n\r\n<p>- Biết lắng nghe, ham học hỏi</p>\r\n\r\n<p>- C&oacute; tr&aacute;ch nhiệm cao v&agrave; l&ograve;ng say m&ecirc; với c&ocirc;ng việc, chịu được &aacute;p lực c&ocirc;ng việc.</p>\r\n\r\n<p>- Kh&ocirc;ng y&ecirc;u cầu bằng cấp.</p>\r\n\r\n<p>- L&agrave;m việc trong m&ocirc;i trường th&acirc;n thiện, ho&agrave; đồng.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>- Ai c&oacute; nhu cầu vui l&ograve;ng li&ecirc;n hệ sđt: 0787794144 (B&igrave;nh)</p>\r\n\r\n<p>Địa điểm:</p>\r\n\r\n<p>- 62 An Dương Vương, Tp Huế</p>\r\n\r\n<p>- 1020 Nguyễn Tất Th&agrave;nh, Huế</p>\r\n\r\n<p>------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ.</p>\r\n', '2019072612409.jpg', '0', 0, 0, NULL, '2019-07-26 06:25:55', 0, '0787794144'),
(123, 2, 5, 49, 25, 'Hoa Sơn Quán TUYẾN NHÂN VIÊN', '<p>Hoa Sơn Qu&aacute;n<br />\r\nTUYỂN NH&Acirc;N VI&Ecirc;N<br />\r\n- Vị tr&iacute;: Phục vụ (Nam Nữ) 10 người<br />\r\n- Thời gian: 16h30-22h30 Hoặc 17h00 - 23h00<br />\r\nVới 3 mức lương:<br />\r\n- Lương : thoả thuận<br />\r\n- Lương: 1.800.000 + thưởng + tip<br />\r\nTừ 18h00-00h00<br />\r\n- Lương : 1.900.000 + thưởng + tip<br />\r\nTừ 18h00 đến hết kh&aacute;ch<br />\r\n&nbsp;Y&ecirc;u cầu: trung thực, si&ecirc;ng năng, vui vẻ, ưu ti&ecirc;n c&aacute;c bạn sinh vi&ecirc;n.<br />\r\n&nbsp;Quyền lợi: Ăn tối tại Qu&aacute;n, l&agrave;m việc trong m&ocirc;i trường th&acirc;n thiện, vui vẽ, kh&ocirc;ng &aacute;p lực.<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>&nbsp;Li&ecirc;n hệ : 0779382110 (Sơn, 16t) hoặc ib<br />\r\nĐịa chỉ : Hoa Sơn Qu&aacute;n<br />\r\n46 Đặng Thuỳ Tr&acirc;m - Tp Huế<br />\r\n(sau lưng nh&agrave; thi đấu B&agrave; Triệu)<br />\r\n----------------------------<br />\r\nC-IT - Việc l&agrave;m theo giờ.</p>\r\n', '2019072662007.jpg', '0', 0, 0, NULL, '2019-07-26 12:07:19', 0, '0779382110'),
(124, 2, 7, 49, 26, 'YOFASO SHOP Tuyển Dụng', '<p>&nbsp;HỆ THỐNG THỜI TRANG NAM NỮ YOFASO SHOP&nbsp;</p>\r\n\r\n<p>&nbsp;74 NGUYỄN HUỆ - TP HUẾ</p>\r\n\r\n<p>&nbsp;CẦN TUYỂN CỬA H&Agrave;NG PH&Oacute;</p>\r\n\r\n<p>&quot;kh&ocirc;ng cần kinh nghiệm- được đ&agrave;o tạo từ A-Z&quot;</p>\r\n\r\n<p>1. CỬA H&Agrave;NG PH&Oacute; 2</p>\r\n\r\n<p>QUYỀN LỢI</p>\r\n\r\n<p>- Lương + thưởng b&igrave;nh qu&acirc;n: 3.500.000đ - 5.000.000đ</p>\r\n\r\n<p>(theo lương cứng v&agrave; khả năng đạt doanh thu+ nh&acirc;n hệ số thưởng)</p>\r\n\r\n<p>THỜI GIAN L&Agrave;M VIỆC: 14h45 - 22h</p>\r\n\r\n<p>2. QUYỀN LỢI V&Agrave; CHẾ ĐỘ :</p>\r\n\r\n<p>&nbsp;Bạn được th&ecirc;m những điều g&igrave;&nbsp;</p>\r\n\r\n<p>+ C&aacute;i thứ nhất l&agrave; sẽ được cả thế giới YoFaSo chia sẻ kiến thức, sẽ kh&ocirc;ng c&ograve;n phải đi tr&agrave; sữa một m&igrave;nh nữa v&igrave; xung quanh đ&atilde; c&oacute; team, nh&oacute;m chờ sẵn</p>\r\n\r\n<p>+ Lương th&aacute;ng 13, thưởng năm theo quy định</p>\r\n\r\n<p>+ Lại cứ mỗi 6 th&aacute;ng sẽ tăng lương cứng 1 lần.</p>\r\n\r\n<p>+ Mỗi năm 1 lần cả hệ thống sẽ đi chơi chung - team building.</p>\r\n\r\n<p>+ Nếu trong qu&aacute; tr&igrave;nh l&agrave;m việc bạn trở n&ecirc;n kh&aacute; l&agrave; tốt th&igrave; c&oacute; thể ứng tuyển những vị tr&iacute; kh&aacute;c ph&ugrave; hợp hơn trong hệ thống (hoặc đ&ocirc;i khi Hệ thống sẽ đề xuất bạn)</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>- Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>* Đ&acirc;y l&agrave; những th&ocirc;ng tin v&agrave; c&aacute;ch thức để bạn v&agrave; YoFaSo li&ecirc;n lạc kết nối với nhau :</p>\r\n\r\n<p>+ Số phone gọi được 24/24 :0981.507.497 (Ms Hiền)</p>\r\n\r\n<p>+ Zalo để nhắn tin : Hiền Phạm (0981.507.497)</p>\r\n\r\n<p>+ Email để bạn gửi th&ocirc;ng tin : Job.yofaso@gmail.com</p>\r\n\r\n<p>+ Đăng k&yacute; online: https://tinyurl.com/y82p747m</p>\r\n\r\n<p>=&gt; Shop sẽ nhận + lọc th&ocirc;ng tin v&agrave; hồ sơ của bạn. Nếu mọi thứ OK, Shop sẽ gọi bạn để hẹn pv. Sau đ&oacute; nếu bạn được chọn th&igrave; Shop sẽ gửi email v&agrave; gọi để bạn biết để sắp xếp nhanh ch&oacute;ng đến để được đ&agrave;o tạo - học việc thử việc - trước khi tự l&agrave;m ch&iacute;nh thức.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019072871111.jpg', '0', 0, 0, NULL, '2019-07-28 12:11:11', 0, '0981.507.497'),
(125, 2, 5, 49, 27, 'MOMO\'s CAFE Tuyển Dụng Bổ Sung', '<p>MOMO&rsquo;s CAFE 97 Nguyễn Huệ<br />\r\nTUYỂN DỤNG BỔ SUNG:<br />\r\n-NH&Acirc;N VI&Ecirc;N PHỤC VỤ:<br />\r\n-Số lượng: 2 (1 Nam, 1 Nữ)<br />\r\n-Thời gian l&agrave;m việc: S&aacute;ng (6h30-11h30) ( c&oacute; thể xoay ca)<br />\r\n-Thu nhập: 1.500.000ca/ th&aacute;ng<br />\r\n-Y&ecirc;u cầu: 18 tuổi trở l&ecirc;n, ngoại h&igrave;nh dễ nh&igrave;n, chăm chỉ, giao tiếp tốt.<br />\r\n-&nbsp;QUYỀN LỢI:<br />\r\nĐược l&agrave;m việc trong m&ocirc;i trường h&ograve;a đồng, th&acirc;n thiện, chuy&ecirc;n nghiệp<br />\r\nKh&ocirc;ng y&ecirc;u cầu về kinh nghiệm, sẽ được hướng dẫn khi v&agrave;o l&agrave;m việc<br />\r\n----------------------------</p>\r\n\r\n<p>- Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>Li&ecirc;n&nbsp;hệ: 97 Nguyễn Huệ, Th&agrave;nh Phố Huế<br />\r\nĐiện thoại: 02346551369 hoặc ib Fb:&nbsp;https://bit.ly/314p253&nbsp;(Qu&yacute; 10 tuổi)</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019072984736.jpg', '0', 0, 0, NULL, '2019-07-29 13:47:36', 0, '02346551369');
INSERT INTO `news` (`id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `price`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`, `contacts`) VALUES
(126, 2, 5, 49, 28, 'JULY COFFEE Tuyển Dụng', '<p>JULY COFFEE TH&Ocirc;NG B&Aacute;O</p>\r\n\r\n<p>TUYỂN DỤNG 3 PHỤC VỤ - 3 GIỮ XE</p>\r\n\r\n<p>(Thời gian tuyển dụng đến hết ng&agrave;y 01/08)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. NH&Acirc;N VI&Ecirc;N PHỤC VỤ</p>\r\n\r\n<p>- Số lượng: 3 người</p>\r\n\r\n<p>- Thời gian l&agrave;m việc: Ca s&aacute;ng (6h30 - 11h30), Ca chiều (12h-17h30), Ca tối (17h30-22h30)</p>\r\n\r\n<p>- Thu nhập: 1.350.000 - 1.800.000 ca/th&aacute;ng</p>\r\n\r\n<p>- Y&ecirc;u cầu: Ngoại h&igrave;nh dễ nh&igrave;n, nhanh nhẹn, giao tiếp tốt, ưu ti&ecirc;n c&oacute; kinh nghiệm.</p>\r\n\r\n<p>- Y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ, b&aacute;n h&agrave;ng.</p>\r\n\r\n<p>- Giao tiếp tự tin v&agrave; lu&ocirc;n tươi cười trong c&aacute;c t&igrave;nh huống.</p>\r\n\r\n<p>- Chăm chỉ, chịu kh&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. NH&Acirc;N VI&Ecirc;N GIỮ XE</p>\r\n\r\n<p>- Số lượng: 3 người</p>\r\n\r\n<p>- Thời gian l&agrave;m việc: Ca s&aacute;ng (6h30 - 11h30), Ca chiều (12h-17h30), Ca tối (17h30-22h30)</p>\r\n\r\n<p>- Thu nhập: 1.650.000 - 1.800.000 ca/th&aacute;ng</p>\r\n\r\n<p>- Y&ecirc;u cầu: C&oacute; sức khỏe, nhiệt t&igrave;nh, ưu ti&ecirc;n c&oacute; kinh nghiệm.</p>\r\n\r\n<p>- Đ&oacute;n kh&aacute;ch, sắp xếp xe, dắt xe hỗ trợ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>- Th&acirc;n thiện khi gặp kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>+ Quyền lợi:</p>\r\n\r\n<p>Thu nhập cao.</p>\r\n\r\n<p>Thời gian l&agrave;m việc theo ca linh hoạt trong tuần.</p>\r\n\r\n<p>N&acirc;ng cao c&aacute;c kỹ năng giao tiếp.</p>\r\n\r\n<p>Chế độ ưu đ&atilde;i th&aacute;ng nghĩ c&oacute; lương 1 ng&agrave;y.</p>\r\n\r\n<p>Cơ hội thăng tiến, tăng lương ngay nếu l&agrave;m tốt.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>- Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Li&ecirc;n hệ: 109 Nguyễn Huệ, TP Huế.</p>\r\n\r\n<p>Ứng vi&ecirc;n điền đầy đủ th&ocirc;ng tin v&agrave;o link biểu mẫu ph&iacute;a dưới: https://bit.ly/2YbRmVZ</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019072993554.jpg', '0', 0, 0, NULL, '2019-07-29 14:35:54', 0, '0855566145'),
(127, 2, 7, 49, 29, 'THE GMEN STORE CHI NHÁNH HUẾ TUYỂN DỤNG', '<p>THE GMEN STORE CHI NH&Aacute;NH HUẾ</p>\r\n\r\n<p>SHOP THỜI TRANG NAM CẦN TUYỂN 2 NỮ B&Aacute;N H&Agrave;NG&nbsp;</p>\r\n\r\n<p>Mức lương: 12k/giờ - 18k/giờ, t&ugrave;y theo năng lực.</p>\r\n\r\n<p>&nbsp;Y&ecirc;u cầu:</p>\r\n\r\n<p>- Nữ từ 18 đến 27 tuổi.</p>\r\n\r\n<p>- Ngoại h&igrave;nh dễ nh&igrave;n.</p>\r\n\r\n<p>- Giao tiếp tốt, chăm chỉ, nhiệt t&igrave;nh, v&agrave; c&oacute; tinh thần tr&aacute;ch nhiệm trong c&ocirc;ng việc.</p>\r\n\r\n<p>&nbsp;Địa điểm l&agrave;m việc: 95 Mai Th&uacute;c Loan, TP.Huế.</p>\r\n\r\n<p>&nbsp;Thời gian l&agrave;m việc:</p>\r\n\r\n<p>- Ca s&aacute;ng: 8h30&#39; - 13h</p>\r\n\r\n<p>- Ca chiều: 13h - 17h30&#39;</p>\r\n\r\n<p>- Ca tối: 17h30&#39; - 21h45&#39;</p>\r\n\r\n<p>- C&oacute; thể xoay ca linh động.</p>\r\n\r\n<p>&nbsp;Quyền lợi:</p>\r\n\r\n<p>- Được đ&agrave;o tạo kỹ năng b&aacute;n h&agrave;ng.</p>\r\n\r\n<p>- M&ocirc;i trường l&agrave;m việc trẻ trung, năng động, chuy&ecirc;n nghiệp..</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Li&ecirc;n hệ Phương, sđt: 0768.311.333 hoặc đến trực tiếp shop để trao đổi.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ tại Huế</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019073153156.jpg', '0', 0, 0, NULL, '2019-07-31 10:31:56', 0, '0768.311.333'),
(128, 2, 7, 49, 30, 'ELEGANT SHOP 67 BẾN NGHÉ cần tuyển', '<p>&nbsp;ELEGANT SHOP 67 BẾN NGH&Eacute; cần tuyển:</p>\r\n\r\n<p>NH&Acirc;N VI&Ecirc;N B&Aacute;N H&Agrave;NG</p>\r\n\r\n<p>- CA : 14h00 - 22h00 ( 8 tiếng )<br />\r\n- CA : 17h00 - 22h00 ( 5 tiếng )</p>\r\n\r\n<p>+ LƯƠNG THỬ VIỆC (ca 8 tiếng) : 3.000.000 ( tăng theo năng lực, +2% hoa hồng sản phẩm, thưởng th&ecirc;m trong qu&aacute; tr&igrave;nh l&agrave;m việc t&iacute;ch cực )</p>\r\n\r\n<p>+ LƯƠNG THỬ VIỆC (ca 5 tiếng) : 2.000.000 ( tăng theo năng lực, +2% hoa hồng sản phẩm, thưởng th&ecirc;m trong qu&aacute; tr&igrave;nh l&agrave;m việc t&iacute;ch cực )</p>\r\n\r\n<p>+ TĂNG LƯƠNG TỪ TH&Aacute;NG THỨ 3</p>\r\n\r\n<p>=&gt; Thử việc 1 tuần ( c&oacute; lương nếu full tuần )</p>\r\n\r\n<p>Y&Ecirc;U CẦU</p>\r\n\r\n<p>- Chỉ tuyển người Huế.<br />\r\n- Nữ tuổi từ 18 - 28.<br />\r\n- Ngoại h&igrave;nh ưa nh&igrave;n , size S.<br />\r\n- Sạch sẽ, chăm chỉ, c&oacute; tr&aacute;ch nhiệm với c&ocirc;ng việc.&nbsp;<br />\r\n- Ưu ti&ecirc;n người đ&atilde; c&oacute; kinh nghiệm b&aacute;n h&agrave;ng v&agrave; marketing online.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>Li&ecirc;n hệ trực tiếp tại ELEGANT SHOP 67 Bến Ngh&eacute; (0788662588)<br />\r\nKH&Ocirc;NG NHẬN INBOX</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ tại Huế</p>\r\n', '2019073160448.jpg', '0', 0, 0, NULL, '2019-07-31 11:04:48', 0, '0788662588'),
(129, 2, 5, 49, 31, 'Dã Tràng Quán TUYỂN NHÂN VIÊN', '<p>D&Atilde; TR&Agrave;NG QU&Aacute;N</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N NỮ PHỤC VỤ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Ưu ti&ecirc;n: sinh vi&ecirc;n đi l&agrave;m th&ecirc;m</p>\r\n\r\n<p>- Thời gian: 16h30 đến 22h30 (c&oacute; thể th&ecirc;m t&iacute; nếu c&ograve;n kh&aacute;ch, trước 11h )</p>\r\n\r\n<p>- Lương ( thoả thuận ) = lương cứng + t&iacute;p + được bao ăn tối</p>\r\n\r\n<p>- Y&ecirc;u cầu: ngoại h&igrave;nh, biết ăn n&oacute;i, biết tiếp thu, tr&ecirc;n 18 tuổi, c&oacute; kinh nghiệm phục vụ trước đ&acirc;y th&igrave; c&agrave;ng tốt.</p>\r\n\r\n<p>TUYỂN 1 PHỤ BẾP</p>\r\n\r\n<p>- Y&ecirc;u cầu: nhanh nhẹn, hoạt b&aacute;t, biết lắng nghe, tiếp thu,</p>\r\n\r\n<p>- Lương: thoả thuận</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>- Hotline: inbox hoặc 0931999540 (A Điệp, chủ trẻ tuổi vui t&iacute;nh) &mdash;</p>\r\n\r\n<p>Hoặc gặp mặt trực tiếp tại D&atilde; Tr&agrave;ng Qu&aacute;n.</p>\r\n\r\n<p>53 L&ecirc; Viết Lượng ( song song với Trường Chinh )</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '201908261311.jpg', '0', 0, 0, NULL, '2019-08-02 11:13:11', 0, ' 0931999540'),
(130, 2, 5, 49, 32, 'NHÀ HÀNG KICOCHI HUẾ TUYỂN NHÂN VIÊN', '<p>KICOCHI HOUSE HUẾ</p>\r\n\r\n<p>27 Nguyễn Th&aacute;i Học</p>\r\n\r\n<p>CẦN TUYỂN GẤP:</p>\r\n\r\n<p>- PHỤC VỤ<br />\r\n- PHỤ BẾP</p>\r\n\r\n<p>Lương từ 2tr2 - 2tr6</p>\r\n\r\n<p>&nbsp;L&Agrave;M VIỆC THEO CA:</p>\r\n\r\n<p>- PHỤC VỤ ca ng&agrave;y: 8h - 13h, 11h - 17h</p>\r\n\r\n<p>- PHỤ BẾP ca ng&agrave;y: 10h - 17h</p>\r\n\r\n<p>- PHỤ BẾP ca tối: 17h - 22h30</p>\r\n\r\n<p>Quyền lợi:</p>\r\n\r\n<p>Ăn trưa tại qu&aacute;n nếu l&agrave;m ca ng&agrave;y<br />\r\nPhụ cấp 50% tiền ăn nếu l&agrave;m ca tối<br />\r\nThưởng Lễ, Tết cao ngất ng&acirc;y<br />\r\nVoucher tr&agrave; sữa, ăn vặt hằng th&aacute;ng, thưởng nh&acirc;n vi&ecirc;n xuất sắc h&agrave;ng th&aacute;ng.<br />\r\nY&ecirc;u cầu: Tr&ecirc;n 18 tuổi , trung thực, vui vẻ, nhanh nhẹn , c&oacute; tinh thần ham học hỏi, ngoại h&igrave;nh tốt, c&oacute; kinh nghiệm.<br />\r\n----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển<br />\r\nLi&ecirc;n hệ v&agrave;o sđt:&nbsp;08.5522.5522<br />\r\nHoặc đến trực tiếp 27 Nguyễn Th&aacute;i Học sau 16h00 hằng ng&agrave;y&nbsp;<br />\r\n------------------------------<br />\r\nC-IT - việc l&agrave;m theo giờ&nbsp;</p>\r\n', '201908772444.jpg', '0', 0, 0, NULL, '2019-08-07 12:24:44', 0, '0855225522'),
(133, 2, 5, 49, 35, 'SHOP DOREMON - CƠ SỞ TẠI BỜ NAM TUYỂN NHÂN VIÊN ', '<p>&nbsp;SHOP DOREMON - CƠ SỞ TẠI BỜ NAM TUYỂN NH&Acirc;N VI&Ecirc;N - ĐỦ CA CHO C&Aacute;C BẠN !<br />\r\n&nbsp;Shop Doremon chuy&ecirc;n b&aacute;n c&aacute;c mặt h&agrave;ng qu&agrave; tặng, handmade nhỏ xinh tuyển đồng đội c&aacute;c ca như sau:<br />\r\n- 2 Ca s&aacute;ng: 7h30-12h30<br />\r\n- Ca chiều: 12h - 17h<br />\r\n- Ca tối: 16h30-21h30<br />\r\nLương: 1tr5, l&agrave;m tốt c&oacute; thưởng</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>Li&ecirc;n hệ: 0932523826 (Nhi 22t) hoặc đến 24 Ho&agrave; B&igrave;nh trao đổi</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ tại Huế</p>\r\n', '201908790236.jpg', '0', 0, 0, NULL, '2019-08-08 05:03:51', 0, 'Liên hệ: 0932523826 (Nhi 22t) hoặc đến 24 Hoà Bình trao đổi'),
(132, 2, 5, 49, 33, 'PAO LOU RESTAURANT TUYỂN NHÂN VIÊN', '<p>Nh&agrave; h&agrave;ng Pao L&oacute;u Restaurant</p>\r\n\r\n<p>&nbsp;37 Nguyễn Th&aacute;i Học - Huế</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n phục vụ : (10 người)</p>\r\n\r\n<p>- Lương: 2tr-3,5tr/th&aacute;ng</p>\r\n\r\n<p>- Thời gian l&agrave;m việc :</p>\r\n\r\n<p>+Ca 1: 9h30- 16h30</p>\r\n\r\n<p>+Ca 2: 16 h- 22h30.</p>\r\n\r\n<p>Bếp v&agrave; Tạp vụ:</p>\r\n\r\n<p>- Thời gian l&agrave;m việc: 9h-14h v&agrave; 17h-22h</p>\r\n\r\n<p>- Mức lương thỏa thuận</p>\r\n\r\n<p>QUYỀN LỢI:</p>\r\n\r\n<p>- Lương tăng theo thời gian l&agrave;m việc.</p>\r\n\r\n<p>- Chế độ đ&atilde;i ngộ tốt.</p>\r\n\r\n<p>- M&ocirc;i trường l&agrave;mi năng động.</p>\r\n\r\n<p>- Thưởng v&agrave;o c&aacute;c ng&agrave;y lễ lớn, Tết lương x3.</p>\r\n\r\n<p>- Cơ hội đ&agrave;o tạo v&agrave; thăng tiến l&ecirc;n c&aacute;c vị tr&iacute; Quản l&yacute; cấp cao.</p>\r\n\r\n<p>- Được hỗ trợ cơm trưa v&agrave; tối.</p>\r\n\r\n<p>MỨC LƯƠNG C&Oacute; THỂ THOẢ THUẬN TH&Ecirc;M KHI PHỎNG VẤN TRỰC TIẾP</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>- NỘP HỒ SƠ Trực tiếp tại Pao L&oacute;u Restaurant</p>\r\n\r\n<p>37 Nguyễn Th&aacute;i Học, Huế.</p>\r\n\r\n<p>- Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ Hotline: 0234 3688 768 - 0935880001</p>\r\n\r\n<p>Fanpage: Fb.com/Paolourestaurant/u</p>\r\n\r\n<p>Mail: Paolou.vn@gmail.com</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ tại Huế</p>\r\n', '201908570158.jpg', '0', 0, 0, NULL, '2019-08-05 12:01:59', 0, '0935880001'),
(134, 2, 7, 49, 36, '912 FACTORY BAR TUYỂN NHÂN VIÊN', '<p>912 FACTORY BAR</p>\r\n\r\n<p>38 CHU VĂN AN, TP HUẾ&nbsp;</p>\r\n\r\n<p>- 01 nh&acirc;n vi&ecirc;n thu ng&acirc;n ca s&aacute;ng 6h30-11h30. Lương thỏa thuận</p>\r\n\r\n<p>- 02 nh&acirc;n vi&ecirc;n giữ xe ca t&ocirc;́i. Thời gian 17h-24h. Lương 2.400.000 + bao ăn tối</p>\r\n\r\n<p>- 05 nh&acirc;n vi&ecirc;n nam phục vụ ca tối.</p>\r\n\r\n<p>+ Thời gian :17h00-24h00.</p>\r\n\r\n<p>+ Lương : 2.200.000 đ (bao ăn tối + tip) .</p>\r\n\r\n<p>+ Lương sau 24h 1h/15k</p>\r\n\r\n<p>&nbsp;L&agrave;m việc ngay trung t&acirc;m khu phố đi bộ đầy n&aacute;o nhiệt, năng động,...&nbsp;</p>\r\n\r\n<p>=&gt;&nbsp;Ưu ti&ecirc;n: Người c&oacute; kinh nghiệm, biết Tiếng Anh l&agrave; một lợi thế...</p>\r\n\r\n<p>----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Mọi li&ecirc;n hệ li&ecirc;n lạc theo SĐT : 0934949279 (Anh Huy)</p>\r\n\r\n<p>&nbsp;912 FACTORY BAR - FOOD &amp; BEER</p>\r\n\r\n<p>&nbsp;Địa chỉ : 38 Chu Văn An, Tp Huế</p>\r\n\r\n<p>------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '201908842343.jpg', '0', 0, 0, NULL, '2019-08-08 09:23:43', 0, '0934949279 (Anh Huy)'),
(135, 2, 7, 49, 37, ' LENKA CORNER SHOP TUYỂN NHÂn VIÊN ', '<p>LENKA CORNER SHOP</p>\r\n\r\n<p>TUYỂN NH&Acirc;n VI&Ecirc;N</p>\r\n\r\n<p>- L&agrave;m việc tại : 168 B&agrave; triệu &amp; 69 V&otilde; Thị S&aacute;u, Huế</p>\r\n\r\n<p>+ Ca s&aacute;ng 7h30--12h30 (c&oacute; thể về muộn hơn t&iacute; nếu c&ograve;n kh&aacute;ch )</p>\r\n\r\n<p>+ Độ tuổi từ 18---22t (kh&ocirc;ng tuyển c&aacute;c bạn đ&atilde; lập gia đ&igrave;nh &amp; học sinh)</p>\r\n\r\n<p>- M&ocirc; tả c&ocirc;ng việc:</p>\r\n\r\n<p>+ B&aacute;n c&aacute;c mặt h&agrave;ng qu&agrave; tặng, đồ trang tr&iacute;, c&aacute;c loại phụ kiện như cột t&oacute;c - m&oacute;c kho&aacute; - v&iacute; ...</p>\r\n\r\n<p>+ Check &amp; sắp xếp h&agrave;ng ho&aacute;.</p>\r\n\r\n<p>+ Tư vấn b&aacute;n h&agrave;ng ( cần lắm những bạn n&oacute;i nhiều- vui t&iacute;nh - chủ động )</p>\r\n\r\n<p>- Y&ecirc;u cầu :</p>\r\n\r\n<p>+ Bạn n&agrave;o c&agrave;ng t&iacute;nh t&igrave;nh vui vẽ c&agrave;ng tốt.</p>\r\n\r\n<p>+ C&oacute; tr&aacute;nh nhiệm trong c&ocirc;ng việc</p>\r\n\r\n<p>+ Ngoại h&igrave;nh dễ nh&igrave;n, lanh lẹ , chăm chỉ, th&aacute;i độ l&agrave;m việc nghi&ecirc;m t&uacute;c.</p>\r\n\r\n<p>- M&ocirc; tả c&ocirc;ng việc:</p>\r\n\r\n<p>+ B&aacute;n c&aacute;c mặt h&agrave;ng qu&agrave; tặng, đồ trang tr&iacute;, c&aacute;c loại phụ kiện như cột t&oacute;c - m&oacute;c kho&aacute; - v&iacute; ...</p>\r\n\r\n<p>+ Check &amp; sắp xếp h&agrave;ng ho&aacute;.</p>\r\n\r\n<p>+ Tư vấn b&aacute;n h&agrave;ng ( cần lắm những bạn n&oacute;i nhiều- vui t&iacute;nh - chủ động )</p>\r\n\r\n<p>- L&agrave;m từ 3 th&aacute;ng trở l&ecirc;n.</p>\r\n\r\n<p>- Lương thỏa thuận</p>\r\n\r\n<p>----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>&nbsp;Trao đổi trực tiếp tại B&Agrave; TRIỆU (168 B&agrave; Triệu ngay đ&egrave;n xanh đ&egrave;n đỏ B&agrave; Triệu &amp; T&ocirc;n Đức Thắng)</p>\r\n\r\n<p>Call: 0985997542</p>\r\n\r\n<p>------------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081260215.jpg', '0', 0, 0, NULL, '2019-08-12 11:02:15', 0, '0985997542'),
(136, 2, 5, 49, 38, 'RAW Coffee & Juice TUYỂN NHÂN VIÊN', '<p>RAW Coffee &amp; Juice 11 L&ecirc; Qu&yacute; Đ&ocirc;n</p>\r\n\r\n<p>Tuyển 2 nh&acirc;n vi&ecirc;n phục vụ cafe ưu ti&ecirc;n xoay ca</p>\r\n\r\n<p>1/ Thời gian:</p>\r\n\r\n<p>Ca s&aacute;ng 6h30 - 11h30</p>\r\n\r\n<p>Ca chiều 17h00 - 22h00</p>\r\n\r\n<p>2/ Lương : 9k/h, tăng lương sau 2 th&aacute;ng tuỳ theo năng lực</p>\r\n\r\n<p>3/Y&ecirc;u cầu chung:</p>\r\n\r\n<p>- C&oacute; tinh thần tr&aacute;ch nhiệm trong c&ocirc;ng việc.</p>\r\n\r\n<p>- Vui vẻ h&ograve;a đồng</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Vui l&ograve;ng li&ecirc;n hệ trực tiếp qua sđt 0378577775 (gặp chị Linh)</p>\r\n\r\n<p>Địa chỉ: 11 L&ecirc; Qu&yacute; Đ&ocirc;n , Huế</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081373759.jpg', '0', 0, 0, NULL, '2019-08-13 12:37:59', 0, '0378577775 (gặp chị Linh)'),
(137, 2, 7, 49, 26, 'HỆ THỐNG THỜI TRANG YOFASO CẦN TUYỂN', '<p>HỆ THỐNG THỜI TRANG YOFASO CẦN TUYỂN:<br />\r\nNh&acirc;n Vi&ecirc;n Chăm S&oacute;c Kh&aacute;ch H&agrave;ng<br />\r\n&quot; Sẽ được hỗ trợ đ&agrave;o tạo th&ecirc;m tất cả &quot;</p>\r\n\r\n<p>Thời gian:<br />\r\n- Ca 1: 7H00 - 15H00<br />\r\n- Ca 2: 15H00 - 22H00</p>\r\n\r\n<p>Quyền lợi:&nbsp;<br />\r\n- LƯƠNG: 3.500.000 - 4.000.000<br />\r\n- C&oacute; chế độ bảo hiểm lao động theo quy định<br />\r\n- Lương th&aacute;ng 13, thưởng năm v&agrave; nghỉ ph&eacute;p theo quy định<br />\r\n- Tr&atilde;i nghiệm m&ocirc;i trường l&agrave;m việc năng động, ph&aacute;t triển bản th&acirc;n về mọi mặt<br />\r\n- Được c&acirc;n nhắc l&ecirc;n c&aacute;c vị tr&iacute; quản l&yacute; ph&ugrave; hợp nếu c&oacute; năng lực tốt<br />\r\n- Trao đổi kỹ hơn c&aacute;c quyền lợi kh&aacute;c khi đến phỏng vấn</p>\r\n\r\n<p>Y&ecirc;u cầu: Y&ecirc;u th&iacute;ch c&ocirc;ng việc chăm s&oacute;c kh&aacute;ch h&agrave;ng v&agrave; b&aacute;n h&agrave;ng onl&nbsp;<br />\r\n- Tuổi: Nữ từ 18 đến 26 tuổi<br />\r\n- Ngoại h&igrave;nh ưa nh&igrave;n<br />\r\n- Năng động, chăm chỉ&nbsp;<br />\r\n- Được l&agrave;m trong m&ocirc;i trường tập thể cực k&igrave; vui vẻ, ho&agrave; đồng, th&acirc;n thiện, năng động v&agrave; xinh đẹp&nbsp;</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Vui l&ograve;ng&nbsp;li&ecirc;n hệ qua SĐT: 0935633561 ( gặp Oanh)</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081375552.jpg', '0', 0, 0, NULL, '2019-08-13 12:55:52', 0, '0935633561 (gặp Oanh)'),
(138, 2, 5, 49, 39, 'Bi\'s House Coffee Cần tuyển Phục vụ ca sáng', '<p>Bi&#39;s House coffee</p>\r\n\r\n<p>Cần tuyển Phục vụ ca s&aacute;ng</p>\r\n\r\n<p>*Quyền lợi</p>\r\n\r\n<p>- Được l&agrave;m việc m&ocirc;i trường vui vẻ</p>\r\n\r\n<p>- Phục vụ c&oacute; thể đ&agrave;o tạo l&ecirc;n l&agrave;m pha chế</p>\r\n\r\n<p>*Thời gian l&agrave;m ca s&aacute;ng (6h-11h)</p>\r\n\r\n<p>*Lương: 8k/h (l&agrave;m l&acirc;u d&agrave;i v&agrave; l&agrave;m tốt sẽ tăng lương)</p>\r\n\r\n<p>*Y&ecirc;u cầu</p>\r\n\r\n<p>- Vui vẻ h&ograve;a đồng</p>\r\n\r\n<p>- Chăm chỉ, nhiệt t&igrave;nh</p>\r\n\r\n<p>- C&oacute; tr&aacute;ch nhiệm trong việc</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>Li&ecirc;n hệ:&nbsp; Bi&#39;s House Coffee - 376 Phan Chu Trinh</p>\r\n\r\n<p>Sđt: 0796776531 (Bi)</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081463836.jpg', '0', 0, 0, NULL, '2019-08-14 11:38:36', 0, '0796776531 (Bi)'),
(139, 2, 2, 49, 40, '43 HOUSE COFFEE TUYỂN DỤNG', '<p>43 HOUSE COFFEE&nbsp;<br />\r\nTuyển nh&acirc;n vi&ecirc;n :<br />\r\nVị tr&iacute; :<br />\r\n● Pha chế:</p>\r\n\r\n<p>&nbsp;S&aacute;ng: 6h-<a href=\"https://www.facebook.com/viectheogiocit/inbox/?mailbox_id=207853019977756&amp;selected_item_id=100026813616549#\">11h30</a><br />\r\n● Y&ecirc;u cầu chung:<br />\r\n- C&oacute; tinh thần tr&aacute;ch nhiệm trong c&ocirc;ng việc.<br />\r\n- Biết sử dụng v&agrave; th&agrave;nh thạo cafe m&aacute;y<br />\r\n- Đ&atilde; c&oacute; kinh nghiệm pha chế<br />\r\n● Lương thỏa thuận</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>● Mọi chi tiết li&ecirc;n hệ sđt: 0931916464 ( Chị H&ograve;a )<br />\r\nhoặc inbox đến trực tiếp<br />\r\nĐịa chỉ: 43 Đặng Huy Trứ, Huế</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081464143.jpg', '0', 0, 0, NULL, '2019-08-14 11:41:43', 0, '0931916464 ( Chị Hòa )'),
(140, 2, 5, 49, 41, 'QUÁN KHÓI- BÁNH TRÁNG THỊT HEO ĐẠI LỘC CẦN TUYỂN GẤP', '<p>QU&Aacute;N KH&Oacute;I- B&Aacute;NH TR&Aacute;NG THỊT HEO ĐẠI LỘC CẦN TUYỂN GẤP:</p>\r\n\r\n<p>- 5 Nh&acirc;n vi&ecirc;n tạp vụ nữ</p>\r\n\r\n<p>- 5 nh&acirc;n vi&ecirc;n phục vụ nam- nữ</p>\r\n\r\n<p>- LƯƠNG: 1.6tr- 1.9tr thưởng( l&agrave;m việc tốt), tăng lương l&agrave;m việc l&acirc;u d&agrave;i.</p>\r\n\r\n<p>● Bao ăn tại qu&aacute;n.</p>\r\n\r\n<p>● Thời gian l&agrave;m việc: 16h30 - 22h30</p>\r\n\r\n<p>● Y&ecirc;u cầu:&nbsp;<br />\r\n- Chăm chỉ l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu<br />\r\n- Biết lắng nghe, ham học hỏi<br />\r\n- C&oacute; tr&aacute;ch nhiệm cao v&agrave; l&ograve;ng say m&ecirc; với c&ocirc;ng việc, chịu được &aacute;p lực c&ocirc;ng việc.<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp, khi l&agrave;m việc sẽ được training th&ecirc;m.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>● Mọi chi tiết li&ecirc;n hệ SĐT: 0932439429.</p>\r\n\r\n<p>Địa chỉ: 12 H&agrave; Huy Tập - Huế.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081571615.jpg', '0', 0, 0, NULL, '2019-08-15 12:16:15', 0, '0932439429.'),
(141, 2, 7, 49, 42, 'Spa MASSAGE TRỊ LIỆU HDV TUYỂN DỤNG KĨ THUẬT VIÊN', '<p>SPA MASSAGE VẬT L&Yacute; TRỊ LIỆU HDV HUẾ</p>\r\n\r\n<p>TUYỂN DỤNG KĨ THUẬT VI&Ecirc;N<br />\r\n<br />\r\n● Số lượng: 10 kĩ thuật vi&ecirc;n nữ.&nbsp;</p>\r\n\r\n<p>● Lương:&nbsp;Lương thỏa thuận + Tip (kh&ocirc;ng dưới 4tr/th&aacute;ng)</p>\r\n\r\n<p>● Thời gian l&agrave;m việc: 15h00&nbsp;- 22h00 (Thời gian c&oacute; thể linh động cho c&aacute;c bạn sinh vi&ecirc;n muốn kiếm th&ecirc;m thu nhập)</p>\r\n\r\n<p>● M&ocirc; tả c&ocirc;ng việc:</p>\r\n\r\n<p>- Massage body bấm huyệt đả th&ocirc;ng kinh mạch cho kh&aacute;ch du lịch chủ yếu l&agrave; kh&aacute;ch Đ&agrave;i Loan, H&agrave;n Quốc, Trung Quốc, Malaysia,...<br />\r\n- Kh&ocirc;ng c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo miễn ph&iacute;&nbsp;<br />\r\n● Y&ecirc;u cầu:</p>\r\n\r\n<p>- Tuổi từ 18 đến 30 (nữ)</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&aacute;c bạn c&oacute; kinh nghiệm l&agrave;m trong lĩnh vực Spa.&nbsp;</p>\r\n\r\n<p>- Chăm chỉ l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu<br />\r\n- Biết lắng nghe, ham học hỏi<br />\r\n- C&oacute; tr&aacute;ch nhiệm cao v&agrave; l&ograve;ng say m&ecirc; với c&ocirc;ng việc, chịu được &aacute;p lực c&ocirc;ng việc.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>- Vui l&ograve;ng li&ecirc;n hệ trực tiếp v&agrave;o SĐT:&nbsp;0818446556 (gặp Chị Thanh)&nbsp;<br />\r\n- Địa chỉ : 05 Điện Bi&ecirc;n Phủ, Tp Huế</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '2019081672454.jpg', '0', 0, 0, NULL, '2019-08-16 12:24:54', 0, '0818446556 (Chị Thanh)'),
(142, 2, 7, 49, 43, 'GA PUB TUYỂN NHÂN VIÊN GIỮ XE', '<p>GA PUB</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N CA TỐI&nbsp;</p>\r\n\r\n<p>2 NAM GIỮ XE</p>\r\n\r\n<p>● Thời Gian : 18h-24h &amp; 14h-22h</p>\r\n\r\n<p>● LƯƠNG: 12k/h sẽ được tăng lương theo khả năng v&agrave; thời gian ,bao cơm ca</p>\r\n\r\n<p>(Tiền Tip giữ ri&ecirc;ng)</p>\r\n\r\n<p>● M&ocirc;i trường: năng động, chuy&ecirc;n nghiệp, thoải m&aacute;i ', '2019081792734.jpg', '0', 0, 0, NULL, '2019-08-17 14:27:34', 0, '08.6969.8485 '),
(143, 2, 5, 49, 44, 'Coffee PHÚC NGUYÊN PHƯƠNG TUYỂN NHÂN VIÊN PHỤC VỤ', '<p>Qu&aacute;n C&agrave; ph&ecirc; PH&Uacute;C NGUY&Ecirc;N PHƯƠNG&nbsp;</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>●&nbsp;Số lượng: 3 nh&acirc;n vi&ecirc;n ca s&aacute;ng</p>\r\n\r\n<p>●&nbsp;Thời gian: 6h15 -11h30</p>\r\n\r\n<p>●&nbsp;Lương phục vụ: 1.350.000 cho th&aacute;ng đầu ti&ecirc;n thử việc &ndash; 1.500.000 sau khi l&agrave;m ch&iacute;nh thức.</p>\r\n\r\n<p>●&nbsp;Y&ecirc;u cầu: Tr&ecirc;n 18 tuổi , trung thực, vui vẻ, nhanh nhẹn , c&oacute; tinh thần ham học hỏi, ngoại h&igrave;nh tốt, c&oacute; kinh nghiệm.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>PHỎNG VẤN TRỰC TIẾP TẠI ĐỊA CHỈ: 17 L&ecirc; Quang Đạo, Huế.<br />\r\nHoặc li&ecirc;n hệ trực tiếp v&agrave;o SĐT: 0988204322</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', NULL, '0', 0, 0, NULL, '2019-08-18 17:13:35', 0, '0988204322'),
(144, 2, 5, 49, 44, 'Coffee PHÚC NGUYÊN PHƯƠNG TUYỂN NHÂN VIÊN PHỤC VỤ', '<p>Qu&aacute;n C&agrave; ph&ecirc; PH&Uacute;C NGUY&Ecirc;N PHƯƠNG&nbsp;</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>●&nbsp;Số lượng: 3 nh&acirc;n vi&ecirc;n ca s&aacute;ng</p>\r\n\r\n<p>●&nbsp;Thời gian: 6h15 -11h30</p>\r\n\r\n<p>●&nbsp;Lương phục vụ: 1.350.000 cho th&aacute;ng đầu ti&ecirc;n thử việc &ndash; 1.500.000 sau khi l&agrave;m ch&iacute;nh thức.</p>\r\n\r\n<p>●&nbsp;Y&ecirc;u cầu: Tr&ecirc;n 18 tuổi , trung thực, vui vẻ, nhanh nhẹn , c&oacute; tinh thần ham học hỏi, ngoại h&igrave;nh tốt, c&oacute; kinh nghiệm.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>PHỎNG VẤN TRỰC TIẾP TẠI ĐỊA CHỈ: 17 L&ecirc; Quang Đạo, Huế.<br />\r\nHoặc li&ecirc;n hệ trực tiếp v&agrave;o SĐT: 0988204322</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', NULL, '0', 0, 0, NULL, '2019-08-18 17:15:30', 0, '0988204322'),
(145, 2, 5, 49, 44, 'Coffee PHÚC NGUYÊN PHƯƠNG TUYỂN NHÂN VIÊN PHỤC VỤ', '<p>Qu&aacute;n C&agrave; ph&ecirc; PH&Uacute;C NGUY&Ecirc;N PHƯƠNG&nbsp;</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>●&nbsp;Số lượng: 3 nh&acirc;n vi&ecirc;n ca s&aacute;ng</p>\r\n\r\n<p>●&nbsp;Thời gian: 6h15 -11h30</p>\r\n\r\n<p>●&nbsp;Lương phục vụ: 1.350.000 cho th&aacute;ng đầu ti&ecirc;n thử việc &ndash; 1.500.000 sau khi l&agrave;m ch&iacute;nh thức.</p>\r\n\r\n<p>●&nbsp;Y&ecirc;u cầu: Tr&ecirc;n 18 tuổi , trung thực, vui vẻ, nhanh nhẹn , c&oacute; tinh thần ham học hỏi, ngoại h&igrave;nh tốt, c&oacute; kinh nghiệm.</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>Th&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>PHỎNG VẤN TRỰC TIẾP TẠI ĐỊA CHỈ: 17 L&ecirc; Quang Đạo, Huế.<br />\r\nHoặc li&ecirc;n hệ trực tiếp v&agrave;o SĐT: 0988204322</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', NULL, '0', 0, 0, NULL, '2019-08-18 17:16:59', 0, '0988204322'),
(146, 2, 5, 49, 45, 'HÂN HY MILK TEA CẦN TUYỂN GẤP', '<p style=\"text-align:justify\">H&Acirc;N HY MILK TEA</p>\r\n\r\n<p style=\"text-align:justify\">CẦN TUYỂN GẤP<br />\r\n● 2 nam giữ xe (17h - 23h)<br />\r\n● 4 Nh&acirc;n Vi&ecirc;n Phục Vụ&nbsp;(17- 23h)<br />\r\n● Lương 1500k<br />\r\n● Y&ecirc;u cầu :</p>\r\n\r\n<p style=\"text-align:justify\">- L&agrave;m l&acirc;u d&agrave;i , si&ecirc;ng năng.</p>\r\n\r\n<p style=\"text-align:justify\">- C&oacute; tinh thần tr&aacute;ch nhiệm trong c&ocirc;ng việc.<br />\r\n- Vui vẻ h&ograve;a đồng<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p style=\"text-align:justify\">Li&ecirc;n hệ trực tiếp tại địa chỉ:&nbsp;22 h&agrave; huy tập (ngay ng&atilde; 3 trường chinh - h&agrave; huy tập)</p>\r\n\r\n<p style=\"text-align:justify\">----------------------------</p>\r\n\r\n<p style=\"text-align:justify\">C-IT - Việc l&agrave;m theo giờ</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '2019081960422.jpg', '0', 0, 0, NULL, '2019-08-19 11:04:22', 0, '0855566145'),
(148, 2, 5, 49, 47, 'HT COFFEE - TUYỂN NHÂN VIÊN', '<p>HT COFFEE - TUY&Ecirc;̉N NH&Acirc;N VI&Ecirc;N</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n PHỤC VỤ&nbsp;<br />\r\n* Thời gian l&agrave;m việc:<br />\r\n- S&aacute;ng: 6h30 - 11h30<br />\r\n&bull; Lương: 1200k/th&aacute;ng<br />\r\nNh&acirc;n vi&ecirc;n GIỮ XE<br />\r\n&bull; Thời gian l&agrave;m việc:&nbsp;<br />\r\n- Tối: 17h00 - 22h00<br />\r\n&bull; Lương: 1tr350k/th&aacute;ng</p>\r\n\r\n<p>Y&ecirc;u cầu:</p>\r\n\r\n<p>+ Vui vẻ, ho&agrave; đồng, trung thực, nhanh nhẹn, l&agrave;m việc gắn b&oacute; l&acirc;u d&agrave;i,...&nbsp;</p>\r\n\r\n<p>+ Y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ, b&aacute;n h&agrave;ng</p>\r\n\r\n<p>+ Giao tiếp tự tin v&agrave; lu&ocirc;n tươi cười trong c&aacute;c t&igrave;nh huống</p>\r\n\r\n<p>+&nbsp;Chăm chỉ, chịu kh&oacute;&nbsp;<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển</p>\r\n\r\n<p>- C&aacute;c bạn c&oacute; thể inbox hoặc li&ecirc;n hệ trực tiếp qua sđt: 0971402571&nbsp;<br />\r\n- Đến trực tiếp tại địa chỉ:&nbsp;14 ĐIỆN BI&Ecirc;N PHỦ<br />\r\n----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '20190822122401.jpg', '0', 0, 0, NULL, '2019-08-22 05:24:01', 0, '0971402571 '),
(149, 2, 5, 49, 48, 'BÁNH ƯỚT HOÀNG THÀNH 2 Cần tuyển bổ sung', '<p>B&Aacute;NH ƯỚT THỊT HEO HO&Agrave;NG TH&Agrave;NH 2 CẦN TUYỂN<br />\r\n<br />\r\nNh&acirc;n vi&ecirc;n phuc vụ:&nbsp;<br />\r\nCa 2: 8h00 - 13h00 (1 người)<br />\r\nCa 3: 11h00 &ndash; 17h00 (1 người)</p>\r\n\r\n<p>&bull; Lương: 1.500.000/th&aacute;ng<br />\r\n&bull; Y&ecirc;u cầu:</p>\r\n\r\n<p>- Ngoại h&igrave;nh dễ nh&igrave;n, nhanh nhẹn, vui vẻ, l&agrave;m việc c&oacute; tr&aacute;ch nhiệm<br />\r\n- Chăm chỉ l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu<br />\r\n- Biết lắng nghe, ham học hỏi<br />\r\n- Chịu được &aacute;p lực c&ocirc;ng việc.</p>\r\n\r\n<p>----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển<br />\r\nLi&ecirc;n hệ:</p>\r\n\r\n<p>- Goi trực tiếp hoặc nhắn tin qua facebook Thuan Hoang&nbsp;(SDT: 0896.2373.66)<br />\r\n- Đến gặp trực tiếp tại 64 Nguyễn Huệ, TP Huế</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc l&agrave;m theo giờ</p>\r\n', '20190822123426.jpg', '0', 0, 0, NULL, '2019-08-22 05:34:26', 0, '0896.2373.66'),
(152, 4, 8, 49, NULL, 'TUYỂN NHÂN VIÊN DỌN DẸP', '<p>NỮ 25 - 40 TUỔI</p>\r\n\r\n<p>L&Agrave;M 2 GIỜ MỖI NG&Agrave;Y</p>\r\n\r\n<p>S&Aacute;NG TỪ 9H-11H</p>\r\n\r\n<p>HOẶC TỐI TỪ 6H - 8H</p>\r\n', '', '30,000', 0, 0, NULL, '2019-08-23 12:58:45', 0, '0919729110'),
(153, 2, 5, 49, 49, 'CHI NHÁNH FM STYLE 39A BÀ TRIỆU TUYỂN DỤNG', '<p>CHI NH&Aacute;NH FM STYLE 39A B&Agrave; TRIỆU TUYỂN DỤNG</p>\r\n\r\n<p>NH&Acirc;N VI&Ecirc;N B&Aacute;N H&Agrave;NG KH&Ocirc;NG Y&Ecirc;U CẦU KINH NGHIỆM</p>\r\n\r\n<p>●&nbsp;Số lượng tuyển dụng: 2 Nữ</p>\r\n\r\n<p>●&nbsp;Thời gian l&agrave;m việc:&nbsp;&nbsp;17h00 - 22h30</p>\r\n\r\n<p>●&nbsp;Mức lương: 1,900,000 - 2,600,000&nbsp;</p>\r\n\r\n<p>●&nbsp;Y&Ecirc;U CẦU</p>\r\n\r\n<p>- Nữ, tuổi từ 18 đến 24.</p>\r\n\r\n<p>- KH&Ocirc;NG Y&Ecirc;U CẦU KINH NGHIỆM, sẽ được đ&agrave;o tạo</p>\r\n\r\n<p>----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển:</p>\r\n\r\n<p>●&nbsp;HỒ SƠ: Bản photo, bổ sung c&ocirc;ng chứng sau khi nhận việc</p>\r\n\r\n<p>- Đơn xin việc</p>\r\n\r\n<p>- Sơ yếu l&yacute; lịch</p>\r\n\r\n<p>- CMND</p>\r\n\r\n<p>●&nbsp;LI&Ecirc;N HỆ</p>\r\n\r\n<p>- ỨNG VI&Ecirc;N LI&Ecirc;N HỆ TRỰC TIẾP TẠI SHOP.</p>\r\n\r\n<p>- Hotline: 093 2460660 (Ms Hien)</p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT - Việc &agrave;m theo giờ</p>\r\n', '2019082382105.jpg', '0', 0, 0, NULL, '2019-08-23 13:21:05', 0, '093 2460660 (Ms Hien)'),
(154, 2, 5, 49, 50, 'LAM CAFE - CẦN TUYỂN NHÂN VIÊN', '<p>LAM CAFE&nbsp;- 100 Nguyễn Huệ, TP. Huế (Đối diện ph&ograve;ng kh&aacute;m MEDIC)<br />\r\nCẦN TUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ (05 bạn)</p>\r\n\r\n<p><br />\r\n● Thời gian l&agrave;m việc:&nbsp;<br />\r\n+ Ca s&aacute;ng (6h00-11h00) &amp; (6h30-11h30)<br />\r\n+ Ca chiều 11h30-17h00<br />\r\n+Ca tối 17h00-22h00<br />\r\n● Lương: 1.200.000₫/th&aacute;ng<br />\r\n● Y&ecirc;u cầu:&nbsp;<br />\r\n- Ngoại h&igrave;nh dễ nh&igrave;n, nhanh nhẹn, giao tiếp tốt, ưu ti&ecirc;n c&oacute; kinh nghiệm.<br />\r\n- Y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ, b&aacute;n h&agrave;ng.<br />\r\n- Giao tiếp tự tin.<br />\r\n- Chăm chỉ, chịu kh&oacute;.<br />\r\n- L&agrave;m việc được c&aacute;c ng&agrave;y LỄ, TẾT.<br />\r\n● Quyền lợi:<br />\r\n- C&oacute; thể xoay ca.<br />\r\n- Thu nhập cao.<br />\r\n- L&agrave;m tốt sẽ c&oacute; thưởng.<br />\r\n- N&acirc;ng cao c&aacute;c kỹ năng giao tiếp.<br />\r\n- Tăng lương ngay nếu l&agrave;m tốt.<br />\r\n- M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>----------------------------<br />\r\n● Th&ocirc;ng tin li&ecirc;n hệ:&nbsp;</p>\r\n\r\n<p>Địa chỉ: 100 Nguyễn Huệ, TP Huế.<br />\r\nSĐT: 0934929200<br />\r\nFB:&nbsp;<a href=\"https://www.facebook.com/liu.bee.10?__tn__=K-R&amp;eid=ARCmHrediimBdH__HQVeUxd3qaPJxVzvKvg5xX4tPE0hhGxwp1Njcf1FQ0wAYBwSUxu4G26jWcEa6iAp&amp;fref=mentions&amp;__xts__%5B0%5D=68.ARDm9inW6ER_9hbVkJXU3E46PG9owAPrmXkylrQcd81lEJgYB7AvhFRcFgQ4ZHlYKEbbYn8YV5PgfGy-k7XbKpQfoDLrYP9utjyDnJrGawKQeojxHRv84VbydShf8ayZ7Jx10Zl8qWgNO8MMb1oIhhgXvppRjWbyckjT4e5nqnZB6EqOWhLlUHDPqAgKjFyYpFud_vK1vi64ssTEpxO_0E-vcSNtlEeYlr6cyF5jXqUiZLsZVQkjuXVevSGSa1yX-hL0YHA7RoWg4mxjs47bxd6G1Kk3AO9_0e84lBQZYT0JNErQluhFmn51lYArsFpZ7z7aNqhIOJ3Y6czwDjk1yKc\" title=\"Liu Bee\">Liu Bee</a></p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT- Việc l&agrave;m theo giờ</p>\r\n', '2019082560614.jpg', '0', 0, 0, NULL, '2019-08-25 11:06:14', 0, '0934929200'),
(155, 4, 4, 49, NULL, 'Sales', '<p>M&igrave;nh kh&ocirc;ng c&oacute; y&ecirc;u cầu g&igrave;</p>\r\n', '2019082563334.jpg', '5,000,000', 0, 0, NULL, '2019-08-25 11:33:34', 0, '0896209089'),
(156, 2, 6, 49, 51, 'COFFEE SUN TUYỂN NHÂN VIÊN PHỤC VỤ ', '<p>COFFEE SUN</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PART-TIME<br />\r\n* NH&Acirc;N VI&Ecirc;N PHỤC VỤ:&nbsp;<br />\r\n- Ca l&agrave;m việc:<br />\r\n❤️Ca s&aacute;ng: 6h00 &ndash; 11h30<br />\r\n❤️Ca trưa: 11h30-17h30<br />\r\n❤️Ca tối: 17h30- 22h30<br />\r\n❤️&nbsp;Cả Ng&agrave;y: 6h- 22h30 ( lương thoả thuận)<br />\r\n❤️&nbsp;6h -17h30( lương thoả thuận)<br />\r\nQU&Aacute;N KH&Ocirc;NG Y&Ecirc;U CẦU NHIỀU:<br />\r\n- Hoạt b&aacute;c vui vẻ, h&ograve;a đồng, chăm chỉ 1 ch&uacute;t<br />\r\n- Ăn n&oacute;i lịch sự , lễ ph&eacute;p,sạch sẽ.<br />\r\n- V&agrave; c&aacute;i quan trọng nhất l&agrave; T&Iacute;NH TRUNG THỰC.&nbsp;</p>\r\n\r\n<p><br />\r\n&gt;&gt; Mọi th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ trực tiếp tại 79 Phạm Thị Li&ecirc;n. Sdt: 0935340660 ( Nhạn)</p>\r\n', '2019082692621.jpg', '0', 0, 0, NULL, '2019-09-06 02:08:17', 0, '0935340660 ( Nhạn)'),
(157, 2, 6, 49, 52, 'BELL COFFEE TUYỂN NHÂN VIÊN PHỤC VỤ ', '<p>BELL COFFEE -&nbsp;số 3 H&agrave; Huy Tập</p>\r\n\r\n<p>TUY&Ecirc;N NH&Acirc;N VI&Ecirc;N PART-TIME<br />\r\n&gt;&gt; 1: Thu ng&acirc;n&nbsp;<br />\r\nSố lượng: 2 người<br />\r\nThời gian: Xoay ca<br />\r\nCa Sang: 7h - 14h30<br />\r\nCa chiều: 14h30 - 22h<br />\r\nLương 9k/h<br />\r\nTăng lương sau 3 th&aacute;ng nếu l&agrave;m tốt.<br />\r\n&gt;&gt; 2: Tạp vụ<br />\r\nCa tối<br />\r\nThời gian: Từ 17h - 22h<br />\r\nLương: 10k/h<br />\r\nMọi th&ocirc;ng tin li&ecirc;n lạc c&aacute;c bạn c&oacute; thể ib ri&ecirc;ng cho m&igrave;nh hoặc đến trực tiếp tại qu&aacute;n để trao đổi cv ạ.</p>\r\n\r\n<p>1. add fb Huỳnh Hương:&nbsp;<a href=\"https://www.facebook.com/huynhthimyhuong95/timeline?lst=100006033212337%3A100004028713587%3A1566833267\">https://www.facebook.com/huynhthimyhuong95/timeline?lst=100006033212337%3A100004028713587%3A1566833267</a></p>\r\n\r\n<p>2. Li&ecirc;n hệ Bell coffee:&nbsp;0905527553</p>\r\n\r\n<p>------------------</p>\r\n\r\n<p>Website: viectheogiocit.com/index</p>\r\n\r\n<p>Mail: viectheogiocit@gmail.com</p>\r\n', '20190826103320.jpg', '9,000', 0, 0, NULL, '2019-09-06 02:08:53', 0, '0905527553'),
(158, 2, 5, 49, 53, 'HAN COOK BBQ TUYỂN NHÂN VIÊN PART-TIME', '<p>HAN COOK BBQ - 15 Đội Cung<br />\r\nTUYỂN NH&Acirc;N VI&Ecirc;N PHỤC VỤ<br />\r\n&gt; SỐ LƯỢNG: 10<br />\r\n&gt;&gt; THỜI GIAN : ca linh động<br />\r\n=&gt; C&oacute; thể đăng k&yacute; thay đổi ca: s&aacute;ng hoặc tối v&agrave; nghỉ ph&ugrave; hợp với lịch học của c&aacute;c bạn.<br />\r\n&gt;&gt; LƯƠNG KHỞI ĐIỂM: 15k/h. Trả lương qua thẻ ng&acirc;n h&agrave;ng.<br />\r\n&gt;&gt; Y&ecirc;u cầu: L&agrave;m được thứ 7, CN v&agrave; lễ.<br />\r\n&gt;&gt; QUYỀN LỢI:<br />\r\n- Được l&agrave;m việc trong m&ocirc;i trường năng động, th&acirc;n thiện v&agrave; học hỏi cao (100% sinh vi&ecirc;n). Sẽ được đ&agrave;o tạo nhiều kỹ năng v&agrave; kinh nghiệm giao tiếp, ửng xử.‬<br />\r\n----------------------------<br />\r\nTh&ocirc;ng tin ứng tuyển:<br />\r\n- Li&ecirc;n lạc trực tiếp theo sđt: 0979.549.095 (gặp Thanh)<br />\r\n* Thời gian từ 28/08-/10/09/2019<br />\r\n------------------------------<br />\r\nC-IT - Việc l&agrave;m theo giờ</p>\r\n', '20190828105648.jpg', '15,000', 0, 0, NULL, '2019-09-06 02:09:23', 0, '0979.549.095 gặp Thanh'),
(159, 2, 5, 49, 55, ' You Do Coffee TUYỂN NHÂN VIÊN PART-TIME', '<p>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&gt;&gt; You Do Coffee &lt;&lt;<br />\r\nPHA CHẾ - PHỤC VỤ - TẠP VỤ - GIỮ XE - THU NG&Acirc;N</p>\r\n\r\n<p>1. NH&Acirc;N VI&Ecirc;N PHA CHẾ:<br />\r\n- Số lượng: 5 người<br />\r\n- Thời gian l&agrave;m việc:<br />\r\n---&gt; Ca s&aacute;ng : 6h - 11h<br />\r\n---&gt; Ca chiều : 12h - 17h<br />\r\n---&gt; Ca tối : 17h - 22h&nbsp;<br />\r\nTHU NHẬP : 2.500.000 - 3.000.000 ca/th&aacute;ng (t&ugrave;y theo năng lực).<br />\r\n- Cả ng&agrave;y :<br />\r\n---&gt; 6h - 17h<br />\r\nTHU NHẬP: 5.500.000-6.500.000<br />\r\n- Y&ecirc;u cầu: Nhiệt t&igrave;nh, nhanh nhẹn, c&oacute; kinh nghiệm, ưu ti&ecirc;n biết sử dụng m&aacute;y pha c&agrave; ph&ecirc;, vệ sinh sạch sẽ quầy pha chế v&agrave; c&aacute;c vật dụng pha chế , ưu ti&ecirc;n nữ từ 23 đến 28 tuổi.</p>\r\n\r\n<p>2. NH&Acirc;N VI&Ecirc;N PHỤC VỤ:<br />\r\n- Số lượng: 15 người&nbsp;<br />\r\n- Thời gian l&agrave;m việc:<br />\r\n---&gt; Ca s&aacute;ng : 6h - 11h&nbsp;<br />\r\n---&gt; Ca chiều : 12h - 17h&nbsp;<br />\r\n---&gt; Ca tối : 17h - 22h<br />\r\nTHU NHẬP : 2.200.000- 2.500.000( theo năng lực l&agrave;m việc ) ca/th&aacute;ng.<br />\r\n- Cả ng&agrave;y : 6h30-16h30 : 4.500.000/ th&aacute;ng&nbsp;<br />\r\n- Y&ecirc;u cầu: Ngoại h&igrave;nh dễ nh&igrave;n, nhanh nhẹn, giao tiếp tốt, ưu ti&ecirc;n c&oacute; kinh nghiệm, ưu ti&ecirc;n biết ngoại ngữ , tuổi từ 18 đến 26 tuổi.&nbsp;<br />\r\n- Chăm chỉ, chịu kh&oacute;.</p>\r\n\r\n<p>3. NH&Acirc;N VI&Ecirc;N GIỮ XE:<br />\r\n- Số lượng: 2 người&nbsp;<br />\r\n- Thời gian l&agrave;m việc:&nbsp;<br />\r\n---&gt; Ca s&aacute;ng: 6h30 - 11h30<br />\r\n---&gt; Ca chiều: 12h-17h30<br />\r\n---&gt; Ca tối: 17h30-22h30<br />\r\nTHU NHẬP: 2.000.000 ca/th&aacute;ng<br />\r\nL&agrave;m 2 ca được phụ cấp tiền ăn.&nbsp;<br />\r\n- Y&ecirc;u cầu: C&oacute; sức khỏe, nhiệt t&igrave;nh. Đ&oacute;n kh&aacute;ch, sắp xếp xe, dắt xe hỗ trợ kh&aacute;ch h&agrave;ng. Th&acirc;n thiện khi gặp kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>4. TẠP VỤ:&nbsp;<br />\r\n- Thời gian l&agrave;m việc:<br />\r\n---&gt; Thời gian: 6h - 16h : 4.500.000( 1 người )&nbsp;<br />\r\n---&gt; Thời gian: 16h - 22h : 2.500.000 ( 1 người )&nbsp;<br />\r\n- Y&ecirc;u cầu : Sạch sẽ , sắp xếp ly t&aacute;ch gọn g&agrave;ng , rửa ly v&agrave; vệ sinh khu vực nh&agrave; vệ sinh , dọn dẹp qu&aacute;n sạch sẽ.</p>\r\n\r\n<p>5. THU NG&Acirc;N:<br />\r\n- Thời gian l&agrave;m việc:<br />\r\n---&gt; Thời gian: 6h - 11h30: 2.200.000<br />\r\n---&gt; Thời gian: 11h30 - 17h: 2.200.000&nbsp;<br />\r\n---&gt; Thời gian: 17h - 22h: 2.200.000&nbsp;<br />\r\n---&gt; Thời gian: 6h - 17h : 5.000.000&nbsp;<br />\r\n- Y&ecirc;u cầu : Gương mặt tươi, ngoại h&igrave;nh ưa nh&igrave;n, nhanh nhẹn, giao tiếp tốt, biết tiếng anh l&agrave; một lợi thế, tốt nghiệp THPT, c&oacute; bằng trung cấp hoặc kế to&aacute;n b&aacute;n h&agrave;ng, kh&ocirc;ng nhận sinh vi&ecirc;n trong qu&aacute; tr&igrave;nh lịch học kh&ocirc;ng ổn định.</p>\r\n\r\n<p>QUYỀN LƠI:<br />\r\n- Thu nhập cao, m&ocirc;i trường l&agrave;m việc m&aacute;t mẻ trong l&agrave;nh, kh&ocirc;ng kh&oacute;i thuốc.<br />\r\n- Thời gian l&agrave;m việc theo ca linh hoạt trong tuần.<br />\r\n- N&acirc;ng cao c&aacute;c kỹ năng giao tiếp.<br />\r\n- Chế độ ưu đ&atilde;i th&aacute;ng nghĩ c&oacute; lương từ 2 đến 4 ca , c&oacute; chế độ bảo hiểm x&atilde; hội sau thời gian l&agrave;m việc từ 8 th&aacute;ng - 1 năm&nbsp;<br />\r\n- Cơ hội thăng tiến, tăng lương, được đi du lịch h&agrave;ng năm nếu l&agrave;m tốt, được nhận lương th&aacute;ng 13 nếu ko nghỉ trong suốt qu&aacute; tr&igrave;nh l&agrave;m việc .</p>\r\n\r\n<p>Th&ocirc;ng tin li&ecirc;n hệ: YouDo Coffee - L&ocirc; B1 Ho&agrave;ng Quốc Việt - Th&agrave;nh phố Huế</p>\r\n\r\n<p>Mọi thắc mắc liện hệ: Ms. Ph&uacute; 0977.554.554 - 0234.3.838379</p>\r\n\r\n<p>C&aacute;c bạn vui l&ograve;ng CLICK v&agrave;o đường link b&ecirc;n dưới để điền th&ocirc;ng tin:<br />\r\n<a href=\"https://docs.google.com/forms/d/e/1FAIpQLScDHr6Skwjj_rkB14HNgKZGOBK05l_2A9pOhYfbcLQEG8-7Bw/viewform?usp=sf_link&amp;fbclid=IwAR0YUqOFAico3rUDsZUjPiDw9RbspmX_hPBDsbxtnUT1UApCKtkiFrmj4x0\" rel=\"noopener nofollow\" target=\"_blank\">https://docs.google.com/&hellip;/1FAIpQLScDHr6Skwjj_rkB1&hellip;/viewform&hellip;</a></p>\r\n\r\n<p>P/S: C&aacute;c bạn share th&ocirc;ng tin n&agrave;y đến bạn b&egrave; của m&igrave;nh gi&uacute;p Ad nha. Cảm ơn c&aacute;c bạn.</p>\r\n\r\n<p>------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '20190830104328.jpg', '0', 0, 0, NULL, '2019-09-06 02:10:03', 0, '0977554554 Ms Phú'),
(160, 2, 5, 49, 54, 'ANH KAFE TUYỂN NHÂN VIÊN PART-TIME', '<p>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG&nbsp;</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n giữ xe - đ&oacute;n tiếp kh&aacute;ch h&agrave;ng:</p>\r\n\r\n<p>▶️&nbsp;Vị tr&iacute; l&agrave;m việc: Anh Kafe 05 Nguyễn Huệ<br />\r\n-Thời gian: Ca s&aacute;ng ( 6h30 - 11h30 )<br />\r\n-Thời gian: Ca chiều ( 12h30 - 5h30 )</p>\r\n\r\n<p>&nbsp;Y&ecirc;u cầu:<br />\r\n&nbsp;Giới t&iacute;nh NAM, đủ từ 18 - 22 tuổi.<br />\r\n&nbsp;Thời gian l&agrave;m l&acirc;u d&agrave;i v&agrave; l&agrave;m được c&aacute;c dịp Lễ, Tết.<br />\r\n&nbsp;C&oacute; hộ khẩu tại Huế.<br />\r\n&nbsp;C&oacute; sức khoẻ, c&oacute; kinh nghiệm phục vụ qu&aacute;n cafe l&agrave; một lợi thế.<br />\r\nMức lương : 1.700.000 đ/ th&aacute;ng (ca 5 tiếng)<br />\r\n&nbsp;Li&ecirc;n hệ:&nbsp;<br />\r\n+ Anh Kafe - 05 Nguyễn Huệ - Huế.<br />\r\n+ SĐT: ‭0782479947( Hải )</p>\r\n', '20190830104818.jpg', '0', 0, 0, NULL, '2019-09-06 02:10:42', 0, '+ Anh Kafe - 05 Nguyễn Huệ - Huế. + SĐT: ‭0782479947( Hải )'),
(161, 2, 5, 49, 56, 'HUẾ ZONE TUYỂN NHÂN VIÊN', '<p>HUẾ ZONE&nbsp;TUYỂN NH&Acirc;N SỰ&nbsp;</p>\r\n\r\n<p>✍&nbsp;02 NAM giữ xe: 7h - 12h, 12h - 17h ( mỗi ca 1 người)</p>\r\n\r\n<p>✍&nbsp;01 NỮ phục vụ NET: 17-22h</p>\r\n\r\n<p>✍&nbsp;01 NỮ phục vụ CF: 7-12h</p>\r\n\r\n<p>✍&nbsp;01 NỮ Lễ T&acirc;n: 7h - 14h</p>\r\n\r\n<p>&gt;&gt; Lương tốt .</p>\r\n\r\n<p>&nbsp;L&agrave;m việc tại HUẾ ZONE ESPORTS GAMING - 5A Phong Ch&acirc;u .</p>\r\n\r\n<p>&nbsp;Li&ecirc;n hệ :&nbsp;<br />\r\n_ Inbox Fanpage : Huế Zone Esports Gaming (&nbsp;<a href=\"https://www.facebook.com/HueZoneEGaming/?__tn__=K-R&amp;eid=ARD5OPpOSNuBXw1OKxJG7_veTagSyazypgs-ItwwrFzCwkTNg0g70v-FcaEUB6QiBBL89DpmPSX-WHO-&amp;fref=mentions&amp;__xts__%5B0%5D=68.ARDerCwxdipFVfXugCxL_UP34Hk2VLwcJxdkH60dwDq70iJC13l6QoWfXmtW1_SZla_j7v_3lhXhf97DD4dSLZUE8GmcWs6YIgpj3b4HgOjr3en5DOrHxdt5m7cFBhgCXGKhZXmh_dc23VbZmW6QV6NJ8dWSynlsvkXni4QU70N4QuwKQ9TAufPdkOvLCOhjanlQMFYqVfH5q0jLUWfG7AnYxPa6GxGZv-N_uibLQQLRiQ2dOZTzOfp7Lz5ZmrEqxDFHrkbMZh7wfVsLEAukc2oqCZGZYDHvKuN3ZcuT7MaPE5SLo5aFctJ4yRBUHWwEWI5ojhyYVrLqSbgO1Gr_DzHeR7f0\">https://www.facebook.com/HueZoneEGaming/</a>&nbsp;)<br />\r\n_ SĐT : 0961463395 ( Mr Nhật)<br />\r\n-------------------------------------<br />\r\n⚠️&nbsp;Y&ecirc;u Cầu Chung :<br />\r\n_ Nam - Nữ : 17 - 22 tuổi .<br />\r\n_ Trung thực, si&ecirc;ng năng , biết lắng nghe .<br />\r\n_ C&oacute; ngoại h&igrave;nh l&agrave; một lợi thế</p>\r\n\r\n<p>---------------------------------------------<br />\r\n&nbsp;HUẾ ZONE ESPORTS GAMING&nbsp;</p>\r\n', '20190830110155.jpg', '0', 0, 0, NULL, '2019-09-06 02:16:16', 0, '0961463395 ( Mr Nhật)'),
(162, 2, 7, 49, 57, 'CAM ON SPA TUYỂN NHÂN VIÊN ', '<p>CAM ON SPA -&nbsp;6/20 Nguyễn C&ocirc;ng Trứ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do nhu cầu mở rộng n&ecirc;n Cam On spa cần tuyển dụng th&ecirc;m vị tr&iacute;&nbsp;<a href=\"https://www.facebook.com/hashtag/l%E1%BB%85_t%C3%A2n_part_time?epa=HASHTAG\">#Lễ_t&acirc;n_Part_time</a><br />\r\n<br />\r\n&gt;&gt;Y&ecirc;u cầu:<br />\r\n- L&agrave;m việc tr&ecirc;n m&aacute;y t&iacute;nh<br />\r\n- Giao tiếp tốt cả Tiếng Anh v&agrave; Tiếng Việt<br />\r\n- C&oacute; kinh nghiệm l&agrave; một lợi thế<br />\r\n<br />\r\n➡️Quyền lợi:<br />\r\n- Lương: 15,000/giờ<br />\r\n- C&oacute; cơ hội r&egrave;n luyện tiếng anh giao tiếp<br />\r\n- L&agrave;m việc trong m&ocirc;i trường thư gi&atilde;n, th&acirc;n thiện<br />\r\n<br />\r\n✴Thời gian l&agrave;m việc: 17:00 - 22:00<br />\r\n✴Địa điểm l&agrave;m việc: 6/20 Nguyễn C&ocirc;ng Trứ, P. Ph&uacute; Hội, Tp. Huế<br />\r\nNội dung c&ocirc;ng việc sẽ trao đổi trực tiếp khi phỏng vấn<br />\r\n<br />\r\nTHAM GIA ỨNG TUYỂN<br />\r\n&gt;&gt; Th&ocirc;ng tin ứng tuyển vui l&ograve;ng gửi v&agrave;o email:&nbsp;<br />\r\n&nbsp;anhtram2410@gmail.com<br />\r\nMọi th&ocirc;ng tin cần xin li&ecirc;n hệ : ‭<br />\r\n☎️‭ 0931 790 944 / 0935 174 474 - Ms. Tr&acirc;m (zalo hoặc gọi điện)</p>\r\n\r\n<p>-------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '20190830110750.jpg', '15,000', 0, 0, NULL, '2019-09-06 02:17:00', 0, '0931 790 944 / 0935 174 474 - Ms. Trâm (zalo hoặc gọi điện)'),
(163, 2, 5, 49, 58, 'BLUEHANDS CAFE - PHỐ TÂY HUẾ TUYỂN NHÂN VIÊN', '<p>BLUEHANDS CAFE - PHỐ T&Acirc;Y HUẾ TUYỂN DỤNG NH&Acirc;N SỰ</p>\r\n\r\n<p>Mức Lương:&nbsp;<br />\r\nCơ bản: 14k/h + thưởng.<br />\r\nCh&iacute;nh thức: 16-18k/h + thưởng.<br />\r\nL&agrave;m l&acirc;u d&agrave;i tăng lương theo năng lực: 20-22-24k/h.</p>\r\n\r\n<p>Thời gian l&agrave;m việc: 15h30-19h30, 19h30-23h30<br />\r\nĐịa chỉ l&agrave;m việc: 35 Chu Văn An, Phường Ph&uacute; Hội, Tp-Huế.</p>\r\n\r\n<p>Y&ecirc;u cầu:<br />\r\n+ Thực hi&ecirc;̣n pha ch&ecirc;́ theo y&ecirc;u c&acirc;̀u của khách, đúng với ti&ecirc;u chu&acirc;̉n của C&ocirc;ng ty<br />\r\n+ Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm ưu ti&ecirc;n c&aacute;c bạn vừa tốt nghiệp c&oacute; nhu cầu l&agrave;m việc l&acirc;u d&agrave;i.<br />\r\n+ Tuổi: từ 18-26<br />\r\n+ Năng động, tự tin, khả năng giao tiếp tốt<br />\r\n+ Biết ngoại ngữ l&agrave; 1 lợi thế .<br />\r\n+ Chăm chỉ , trung thực, team-work<br />\r\n+ C&oacute; kinh nghiệm trong ng&agrave;nh F&amp;B l&agrave; 1 lợi thế.<br />\r\n+ C&oacute; khả năng l&agrave;m việc với cường độ &aacute;p lực cao.<br />\r\nQuyền lợi:<br />\r\n+ C&oacute; cơ hội học tập v&agrave; ph&aacute;t triển bản th&acirc;n.<br />\r\n+ Chế độ cực tốt cho những bạn cam kết l&acirc;u d&agrave;i với c&ocirc;ng ty.</p>\r\n\r\n<p>Nếu muốn thử sức v&agrave; trải nghiệm trong m&ocirc;i trường của Bluehands Cafe</p>\r\n', '2019092102658.jpg', '14', 0, 0, NULL, '2019-09-06 02:17:30', 0, '35 Chu Văn An, Phường Phú Hội, Tp-Huế.'),
(164, 2, 5, 49, 59, 'Cafe V8 TUYỂN NHÂN VIÊN PART-TIME', '<p>Cafe V8 cần tuyển nh&acirc;n vi&ecirc;n kh&ocirc;ng y&ecirc;u cầu kinh nghiệm&nbsp;<br />\r\n&bull; Thu ng&acirc;n chuy&ecirc;n ca s&aacute;ng (6h15-14h)<br />\r\n&bull; phục vục ca s&aacute;ng (6h15-11h)<br />\r\n&bull;phục vụ ca chiều (12h-17h)<br />\r\n&gt;&gt; Lương trao đổi trực tiếp&nbsp;<br />\r\nM&ocirc;i trường l&agrave;m việc th&acirc;n thiện , ho&agrave; đồng , m&aacute;t mẻ<br />\r\n&gt;&gt; Li&ecirc;n hệ trực tiếp tại Cafe V8 56 Ng&ocirc; Quyền hoặc sdt 0766536264 chị Ly ( quản l&yacute;)</p>\r\n\r\n<p>---------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019092103503.jpg', '0', 0, 0, NULL, '2019-09-06 02:17:52', 0, '0766536264 chị Ly ( quản lý)'),
(165, 3, 5, 49, 24, 'Tiệm Bánh Đồng Tâm TUYỂN NHÂN VIÊN', '<p>Tiệm B&aacute;nh Đồng T&acirc;m - 197 B&agrave; Triệu.</p>\r\n\r\n<p>Cần tuyển nữ nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng.<br />\r\n&nbsp;- Ca 2 : 14h-&gt;22h<br />\r\n&gt;&gt; Lương 10k/h.<br />\r\n(L&acirc;u l&acirc;u C&oacute; việc bận c&oacute; thể xoay ca)&nbsp;<br />\r\nY&ecirc;u cầu: l&agrave;m việc nhiệt t&igrave;nh, vui vẻ!. Ưu ti&ecirc;n người Huế♡<br />\r\n&gt;&gt; Li&ecirc;n hệ ứng tuyển ngay: SĐT&nbsp;02343835107.</p>\r\n\r\n<p>----------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019092105029.jpg', '10', 0, 0, NULL, '2019-09-06 02:18:29', 0, '02343835107'),
(166, 2, 5, 49, 60, 'SUN CAFE TUYỂN NHÂN VIÊN ', '<p>SUN CAFE&#39; c&oacute; đ&ocirc;i điều nhắn nhủ c&aacute;c bạn&nbsp;<br />\r\n&lt; Tuyển nh&acirc;n vi&ecirc;n &gt;<br />\r\n➡️&nbsp;Vị tr&iacute; :<br />\r\n● Pha chế:<br />\r\n&gt;&gt; Số lượng : 3<br />\r\n● Phục vụ:<br />\r\n&gt;&gt; Số lượng : 3<br />\r\n&gt;&gt; Địa điểm l&agrave;m việc : 9A Nguyễn Huệ&nbsp;<br />\r\n&gt;&gt;Y&ecirc;u cầu : Ngoại h&igrave;nh dễ nh&igrave;n , ưu ti&ecirc;n cho những bạn c&oacute; kinh nghiệm, vui vẻ , ho&agrave; đồng , hoạt b&aacute;t, nhanh nhẹn .&nbsp;<br />\r\n➡️C&oacute; khả năng l&agrave;m việc lễ tết.<br />\r\n&gt;&gt; Quyền lợi :&nbsp;<br />\r\nLương + thưởng + tip&nbsp;<br />\r\nL&agrave;m việc trong m&ocirc;i trường năng động , r&egrave;n luyện bản th&acirc;n nhanh nhẹn v&agrave; vui vẻ&nbsp;<br />\r\n☎️&nbsp;Mọi th&ocirc;ng tin li&ecirc;n hệ qua :&nbsp;<br />\r\nFacebook : Nguyễn Trọng Mẫn<br />\r\nSdt : 0765710635<br />\r\nNộp hồ sơ : tại 9A Nguyễn Huệ,Huế&nbsp;</p>\r\n\r\n<p>--------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '201909230834.jpg', '0', 0, 0, NULL, '2019-09-06 02:18:51', 0, 'Facebook : Nguyễn Trọng Mẫn Sdt : 0765710635'),
(167, 2, 5, 49, 61, 'TUYỂN NHÂN VIÊN PART-TIME', '<p>BI&#39;S HOUSE COFFEE 376 PHAN CHU TRINH</p>\r\n\r\n<p>Tuyển phục vụ ca s&aacute;ng v&agrave; Pha chế xoay ca</p>\r\n\r\n<p>*Quyền lợi</p>\r\n\r\n<p>- Được l&agrave;m việc m&ocirc;i trường vui vẻ</p>\r\n\r\n<p>- Được đ&agrave;o tạo l&agrave;m pha chế nếu c&oacute; mong muốn</p>\r\n\r\n<p>*Thời gian l&agrave;m theo ca</p>\r\n\r\n<p>- Phục vụ Ca s&aacute;ng (6h - 11h)</p>\r\n\r\n<p>- Pha chế xoay ca: s&aacute;ng chiều ( 7h-12, 13-18h )</p>\r\n\r\n<p>*Lương</p>\r\n\r\n<p>- Lương thỏa thuận khi phỏng vấn</p>\r\n\r\n<p>*Y&ecirc;u cầu</p>\r\n\r\n<p>- Ưu ti&ecirc;n tuyển c&aacute;c bạn sinh vi&ecirc;n, kh&ocirc;ng nhận học sinh</p>\r\n\r\n<p>- Vui vẻ h&ograve;a đồng</p>\r\n\r\n<p>- Chăm chỉ, nhiệt t&igrave;nh</p>\r\n\r\n<p>- C&oacute; tr&aacute;ch nhiệm trong việc</p>\r\n\r\n<p>________________________________</p>\r\n\r\n<p>Li&ecirc;n hệ trực tiếp: 376 Phan Chu Trinh hoặc ib&nbsp;<a href=\"https://www.facebook.com/bihousecoffee/?ref=gs&amp;__tn__=%2CdK-R-R&amp;eid=ARAp1pvcjCMcYmMnrnCnig1v3_GSJnBRgnRHQJxbywmOrx0Zj-XxbbFYl0N79DxAkfssgZUC9HMblNQE&amp;fref=gs&amp;dti=796024457157629&amp;hc_location=group\">Bi&#39;s House Coffee - 376 Phan Chu Trinh</a></p>\r\n\r\n<p>Gọi hoặc nhắn tin : 0968790356</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/bihousecoffee?source=feed_text&amp;epa=HASHTAG\">#bihousecoffee</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/phucvu?source=feed_text&amp;epa=HASHTAG\">#phucvu</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/vieclamtaihue?source=feed_text&amp;epa=HASHTAG\">#vieclamtaihue</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/hu%E1%BA%BF?source=feed_text&amp;epa=HASHTAG\">#huế</a></p>\r\n\r\n<p>--------------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019094110438.jpg', '0', 0, 0, NULL, '2019-09-04 16:04:38', 0, '0968790356');
INSERT INTO `news` (`id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `price`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`, `contacts`) VALUES
(168, 2, 5, 49, 62, 'YOURS workspace TUYỂN NHÂN VIÊN PART-TIME', '<p>TUYỂN NH&Acirc;N VI&Ecirc;N NỮ PARTIME - PHỤC VỤ C&Agrave; PH&Ecirc; CA CHIỀU</p>\r\n\r\n<p>YOURS workspace cần tuyển nh&acirc;n vi&ecirc;n nữ phục vụ c&agrave; ph&ecirc; ca chiều (13h00 - 18h00) từ thứ 2 đến thứ 7, được nghỉ Chủ nhật tại An Cựu city.</p>\r\n\r\n<p>- Lương cố định: 1.200.000 + thưởng (doanh thu tốt).</p>\r\n\r\n<p>- C&oacute; thể xoay ca v&agrave;o th&aacute;ng 9.</p>\r\n\r\n<p>- Y&ecirc;u cầu:</p>\r\n\r\n<p>Nữ 18 - 23 tuổi.</p>\r\n\r\n<p>Trung thực, tinh thần tốt.</p>\r\n\r\n<p>Chăm chỉ, th&acirc;n thiện, chủ động.</p>\r\n\r\n<p>Đảm bảo thời gian l&agrave;m việc.</p>\r\n\r\n<p>- Ưu ti&ecirc;n: Ngoại h&igrave;nh, Ở gần An Cựu city.</p>\r\n\r\n<p>Vui l&ograve;ng li&ecirc;n hệ trực tiếp qua Số điện thoại: 0947.777.102 (gặp H&agrave;) hoặc gửi th&ocirc;ng tin trực tiếp qua fanpage&nbsp;<a href=\"https://www.facebook.com/YOURS.workspace/?__tn__=K-R&amp;eid=ARBsMx0BITCvmoZW0TIRrLDT6_B-eo7pBME8BKFpH8hYdJ5xOAG1xqsgkYqdUE2xyRnuIhGJU_ncwR7x&amp;fref=mentions&amp;__xts__%5B0%5D=68.ARDXxM3x5PMgeWgHY6NIkcKk5JCLAnRjQphbPS5s06oOBkKL16OSGE-Ep5AJzI0XaSOiVNhBWyxlMibbfpRz8rXG52kl50Gz5w1VSRaAuEH6wCHy2K1THmeUQAQNrUB5n9hOr_9xHVgPqh0tk--UrFjF8wLSytmzhKPn8tzQ-hqrBYFU4b4rz2N8xvq2p3hyMl9A1iRAUKjrQcLbBvC0WjweKj3-qEyYUk_2pqldWK8i0AijJqazm1SZgYvN0uay0tuQMFCmcYXj_0Mw1Ejg3KwE_YIa8H6_Tw0zVl43-iQ9grwFQ3NRcj3CS6vJEdc1cfXqVWWpW7lPLkhQTZ_Uu0A\">YOURS workspace Huế - Coffee Shop &amp; Kh&ocirc;ng gian l&agrave;m việc s&aacute;ng tạo</a></p>\r\n\r\n<p>Mọi sự đ&oacute;ng g&oacute;p của c&aacute;c bạn trong qu&aacute; tr&igrave;nh cộng t&aacute;c c&ugrave;ng YOURS workspace sẽ lu&ocirc;n được tập thể YOURS workspace đ&aacute;nh gi&aacute; v&agrave; cảm k&iacute;ch khi c&ugrave;ng nhau ph&aacute;t triển.</p>\r\n\r\n<p>--------------------------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019094110808.jpg', '0', 0, 0, NULL, '2019-09-06 02:12:52', 0, '0947.777.102 (gặp Hà) '),
(169, 2, 5, 49, 63, 'MÌ QUẢNG CÔ BA TUYỂN NHÂN VIÊN PART-TIME ', '<p>M&Igrave; QUẢNG C&Ocirc; BA<br />\r\nCẦN TUYỂN NV PHỤC VỤ</p>\r\n\r\n<p>1. NH&Acirc;N VI&Ecirc;N NỮ PHỤC VỤ</p>\r\n\r\n<p>* Y&ecirc;u cầu:<br />\r\n- Nữ từ 18 tuổi trở l&ecirc;n.<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm.<br />\r\n- Vui vẻ, nhanh nhẹn</p>\r\n\r\n<p>* Thời gian l&agrave;m việc:<br />\r\n- Ca s&aacute;ng: 5h45 đến 11h30<br />\r\n- Ca chiều: 11h30 đến 16h30<br />\r\n- Ca tối: 16h30 đến 21h30</p>\r\n\r\n<p>* LƯƠNG: 12k/1h được thanh to&aacute;n theo tuần</p>\r\n\r\n<p>* QUYỀN LỢI:<br />\r\n- Được thưởng theo h&agrave;ng th&aacute;ng.<br />\r\n- M&ocirc;i trường l&agrave;m việc năng động,h&ograve;a đồng học hỏi v&agrave; cầu tiến<br />\r\n- Ưu ti&ecirc;n xoay ca<br />\r\n- L&agrave;m việc từ 3 th&aacute;ng trở l&ecirc;n (sau 3 th&aacute;ng c&oacute; chế độ ri&ecirc;ng).</p>\r\n\r\n<p>L&agrave;m việc tại<br />\r\nCơ sở 1:14 Dương Văn An<br />\r\nCơ sở 2: 72 Hai B&agrave; Trưng</p>\r\n\r\n<p>Li&ecirc;n hệ nhận lịch phỏng vấn ngay!&nbsp;</p>\r\n\r\n<p>SĐT anh B&igrave;nh:&nbsp;0346792991</p>\r\n\r\n<p>------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019094112556.jpg', '12', 0, 0, NULL, '2019-09-06 02:11:04', 0, '0346792991 ANH BÌNH'),
(170, 2, 5, 49, 64, 'Quán Trí Coffee TUYỂN NHÂN VIÊN ', '<p>✳Tuyển nh&acirc;n vi&ecirc;n phục vụ</p>\r\n\r\n<p>Qu&aacute;n Tr&iacute; Coffee địa chỉ 26 yết ki&ecirc;u cần tuyển:</p>\r\n\r\n<p>1 nh&acirc;n vi&ecirc;n phục vụ ca chiều. L&agrave;m việc từ 12h-18h . lương 1tr2.</p>\r\n\r\n<p>Vui l&ograve;ng li&ecirc;n hệ&nbsp;trực tiếp để ứng tuyển&nbsp;0974565050&nbsp;</p>\r\n\r\n<p>C&aacute;m ơn!</p>\r\n', '2019094113333.jpg', '0', 0, 0, NULL, '2019-09-06 02:11:27', 0, '0974565050'),
(171, 2, 5, 49, 65, 'BÁNH TRÁNG TRỘN SÀI GÒN AMY TUYỂN NHÂN VIÊN', '<p>B&Aacute;NH TR&Aacute;NG TRỘN S&Agrave;I G&Ograve;N&nbsp;AMY ( cơ sở1, cơ sở 2)</p>\r\n\r\n<p>TUYỂN NH&Acirc;N VI&Ecirc;N PART-TIME</p>\r\n\r\n<p><br />\r\nCa 2:12h đến 18h&nbsp;<br />\r\nCơ sở 1: 2 người&nbsp;<br />\r\nCơ sở 2: 2 người<br />\r\nLương : 1tr8 đến 2tr ( chưa thưởng )<br />\r\nNhận lương 2 tuần/ lần<br />\r\nY&ecirc;u cầu : chăm chỉ tự gi&aacute;c thật th&agrave; nhiệt huyết vs c&ocirc;ng việc của bản th&acirc;n. Đ&atilde; từng l&agrave;m ở m&ocirc;i trường đ&ocirc;ng kh&aacute;ch...&nbsp;<br />\r\nĐịa chỉ: 181 Mai Th&uacute;c Loan<br />\r\n42 Trường Chinh<br />\r\nLi&ecirc;n hệ trực tiếp tại qu&aacute;n ho&agrave;n sđt (0338407001)</p>\r\n\r\n<p>-----------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019094113950.jpg', '0', 0, 0, NULL, '2019-09-06 02:11:50', 0, '0338407001'),
(172, 2, 5, 49, 66, 'LAM COFFEE TUYỂN NHÂN VIÊN PART-TIME', '<p>LAM C&Agrave; F&Ecirc; - 100 Nguyễn Huệ, TP. Huế(Đối diện ph&ograve;ng kh&aacute;m MEDIC)<br />\r\nCẦN TUYỂN NH&Acirc;N VI&Ecirc;N<br />\r\n1. NH&Acirc;N VI&Ecirc;N PHỤC VỤ (05 bạn)<br />\r\n- Thời gian l&agrave;m việc:&nbsp;<br />\r\n➡️&nbsp;Ca s&aacute;ng (6h00-11h00) &amp; (6h30-11h30)<br />\r\n➡️&nbsp;Ca chiều 11h30-17h00<br />\r\n➡️&nbsp;Ca tối 17h00-22h00<br />\r\n&nbsp;1.200.000₫/th&aacute;ng<br />\r\n⚠️&nbsp;Y&ecirc;u cầu:&nbsp;<br />\r\n- Ngoại h&igrave;nh dễ nh&igrave;n, nhanh nhẹn, giao tiếp tốt, ưu ti&ecirc;n c&oacute; kinh nghiệm.<br />\r\n- Y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ, b&aacute;n h&agrave;ng.<br />\r\n- Giao tiếp tự tin.<br />\r\n- Chăm chỉ, chịu kh&oacute;.<br />\r\n- L&agrave;m việc được c&aacute;c ng&agrave;y LỄ, TẾT.<br />\r\nLi&ecirc;n hệ để trao đổi trực tiếp.<br />\r\n⚠️&nbsp;Quyền lợi:<br />\r\nC&oacute; thể xoay ca.<br />\r\nThu nhập cao.<br />\r\nL&agrave;m tốt sẽ c&oacute; thưởng.<br />\r\nN&acirc;ng cao c&aacute;c kỹ năng giao tiếp.<br />\r\nTăng lương ngay nếu l&agrave;m tốt.<br />\r\nM&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp.<br />\r\n⚠️Th&ocirc;ng tin li&ecirc;n hệ:&nbsp;<br />\r\nĐịa chỉ: 100 Nguyễn Huệ, TP Huế.<br />\r\n☎️&nbsp;SĐT: 0934929200<br />\r\nFB:&nbsp;<a href=\"https://www.facebook.com/liu.bee.10?__tn__=%2CdKH-R-R&amp;eid=ARCFsmFwUVzbZziJ7UV0UoKxxAlG_Ly1xWgW7YJSaIq_XPnaMngwZDBLj9YrjnECqXPdBdUPn8sKQ_oh&amp;fref=mentions&amp;hc_location=group\" title=\"Liu Bee\">Liu Bee</a></p>\r\n\r\n<p>----------------------------</p>\r\n\r\n<p>C-IT Việc l&agrave;m theo giờ</p>\r\n', '2019094114732.jpg', '0', 0, 0, NULL, '2019-09-06 02:12:19', 0, '☎️ SĐT: 0934929200');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `postsed`
--

CREATE TABLE `postsed` (
  `id_active` int(11) NOT NULL,
  `id_em` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Cấu trúc bảng cho bảng `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `schools`
--

INSERT INTO `schools` (`id`, `code`, `name`) VALUES
(1, '0201', 'Trường Trung cấp Bách Khoa TP. Hồ Chí Minh'),
(2, '0206', 'Trường Trung cấp Đông Dương'),
(3, '0240', 'Trường trung cấp Bến Thành'),
(4, '2011', 'Trường Trung cấp Sài Gòn'),
(5, '3402', 'Trường trung cấp Quảng Đông'),
(6, '4003', 'Trung cấp Sư phạm Mầm non Đắk lắk'),
(7, '7001', 'Trường Trung cấp Tài chính Kế toán Bình Dương'),
(8, 'ANS', 'Trường Đại học An ninh Nhân dân'),
(9, 'BKA', 'Trường Đại học Bách Khoa Hà Nội'),
(10, 'BMU', 'Trường Đại học Buôn Ma Thuột'),
(11, 'BPH', 'Học viện Biên phòng'),
(12, 'BVH', 'Học viện Công nghệ Bưu chính Viễn thông'),
(13, 'BVS', 'Học viện Công nghệ Bưu chính Viễn thông - Cơ sở 2'),
(14, 'BVU', 'Trường Đại học Bà Rịa - Vũng Tàu'),
(15, 'C05', 'Trường Cao đẳng Sư phạm Hà Giang'),
(16, 'C06', 'Trường Cao đẳng Sư phạm Cao Bằng'),
(17, 'C08', 'Trường Cao đẳng Sư phạm Lào Cai'),
(18, 'C10', 'Trường Cao đẳng Sư phạm Lạng Sơn'),
(19, 'C11', 'Trường Cao đẳng Cộng đồng Bắc Kạn'),
(20, 'C12', 'Trường Cao đẳng Sư phạm Thái Nguyên'),
(21, 'C13', 'Trường Cao đẳng Sư phạm Yên Bái'),
(22, 'C14', 'Trường Cao đẳng Sơn La'),
(23, 'C18', 'Trường Cao đẳng Ngô Gia Tự - Bắc Giang'),
(24, 'C19', 'Trường Cao đẳng Sư phạm Bắc Ninh'),
(25, 'C20', 'Trường Cao đẳng Sư phạm Hà Tây'),
(26, 'C21', 'Trường Cao đẳng Hải Dương'),
(27, 'C22', 'Trường Cao đẳng Sư phạm Hưng Yên'),
(28, 'C23', 'Trường Cao đẳng Sư phạm Hoà Bình'),
(29, 'C25', 'Trường Cao đẳng Sư phạm Nam Định'),
(30, 'C29', 'Trường Cao đẳng Sư phạm Nghệ An'),
(31, 'C32', 'Trường Cao đẳng Sư phạm Quảng Trị'),
(32, 'C33', 'Trường Cao đẳng Sư phạm Thừa Thiên Huế'),
(33, 'C36', 'Trường Cao đẳng Cộng đồng KonTum'),
(34, 'C37', 'Trường Cao đẳng Bình Định'),
(35, 'C38', 'Trường Cao đẳng Sư phạm Gia Lai'),
(36, 'C40', 'Trường Cao đẳng Sư phạm Đắk Lắk'),
(37, 'C42', 'Trường Cao đẳng Sư phạm Đà Lạt'),
(38, 'C43', 'Trường Cao đẳng Sư phạm Bình Phước'),
(39, 'C45', 'Trường Cao đẳng Sư phạm Ninh Thuận'),
(40, 'C46', 'Trường Cao đẳng Sư phạm Tây Ninh'),
(41, 'C47', 'Trường Cao đẳng Cộng đồng Bình Thuận'),
(42, 'C49', 'Trường Cao đẳng Sư phạm Long An'),
(43, 'C52', 'Trường Cao đẳng Sư phạm Bà Rịa-Vũng Tàu'),
(44, 'C54', 'Trường Cao đẳng Sư phạm Kiên Giang'),
(45, 'C55', 'Trường Cao đẳng Cần Thơ'),
(46, 'C56', 'Trường Cao đẳng Bến Tre'),
(47, 'C57', 'Trường Cao đẳng Sư phạm Vĩnh Long'),
(48, 'C59', 'Trường Cao đẳng Sư phạm Sóc Trăng'),
(49, 'C62', 'Trường Cao đẳng Sư phạm Điện Biên'),
(50, 'CCM', 'Trường Đại học Công nghiệp Dệt may Hà Nội'),
(51, 'CDD0407', 'Cao Đẳng Đại Việt Đà Nẵng'),
(52, 'CEA', 'Trường Đại học Kinh tế Nghệ An'),
(53, 'CM1', 'Trường Cao đẳng Sư phạm Trung ương'),
(54, 'CM2', 'Trường Cao đẳng Sư phạm Trung ương Nha Trang'),
(55, 'CM3', 'Trường Cao đẳng Sư phạm trung ương TP.Hồ Chí Minh'),
(56, 'CNV', 'Trường Cao đẳng Văn hoá Nghệ thuật Việt Bắc'),
(57, 'CSH', 'Học viện Cảnh sát Nhân dân'),
(58, 'CSS', 'Trường Đại học Cảnh sát Nhân dân'),
(59, 'CTO', 'Trường Cao đẳng Thể dục Thể thao Thanh Hoá'),
(60, 'CVV', 'Trường Cao đẳng Văn hoá Nghệ thuật Nghệ An'),
(61, 'D64', 'Trường Cao đẳng Cộng đồng Hậu Giang'),
(62, 'DAD', 'Trường Đại học Đông Á'),
(63, 'DBD', 'Trường Đại học Bình Dương'),
(64, 'DBG', 'Trường Đại học Nông lâm Bắc Giang'),
(65, 'DBH', 'Trường Đại học Quốc tế Bắc Hà'),
(66, 'DBL', 'Trường Đại học Bạc Liêu'),
(67, 'DCD', 'Trường Đại học Công nghệ Đồng Nai'),
(68, 'DCG', 'Trường Đại học Tư thục Công nghệ Thông tin Gia Định'),
(69, 'DCH', 'Trường Sĩ quan Đặc công'),
(70, 'DCL', 'Trường Đại học Cửu Long'),
(71, 'DCN', 'Trường Đại học Công nghiệp Hà Nội'),
(72, 'DCQ', 'Trường Đại học Công nghệ và Quản lý Hữu nghị'),
(73, 'DCT', 'Trường Đại học Công nghiệp Thực phẩm tp. Hồ Chí Minh'),
(74, 'DCV', 'Trường Đại học Công nghiệp Vinh'),
(75, 'DD', 'Đại học Đà Nẵng'),
(76, 'DDB', 'Trường Đại học Thành Đông'),
(77, 'DDC', 'Khoa Công nghệ - Đại học Đà Nẵng'),
(78, 'DDD', 'Trường Đại học Dân lập Đông Đô'),
(79, 'DDF', 'Trường Đại họ̣c Ngoại ngữ - Đại học Đà Nẵng'),
(80, 'DDG', 'Khoa Giáo dục thể chất - Đại học Đà Nẵng'),
(81, 'DDI', 'Khoa Công nghệ thông tin và truyền thông - Đại học Đà Nẵng'),
(82, 'DDK', 'Trường Đại họ̣c Bách khoa - Đại học Đà Nẵng'),
(83, 'DDL', 'Trường Đại học Điện lực'),
(84, 'DDM', 'Trường Đại học Công nghiệp Quảng Ninh'),
(85, 'DDN', 'Trường Đại học Đại Nam'),
(86, 'DDP', 'Phân hiệu ĐHĐN tại KonTum'),
(87, 'DDQ', 'Trường Đại học Kinh tế - Đại học Đà Nẵng'),
(88, 'DDS', 'Trường Đại họ̣c Sư phạm - Đại học Đà Nẵng'),
(89, 'DDT', 'Trường Đại học Duy Tân'),
(90, 'DDV', 'Viện Nghiên cứu và Đào tạo Việt - Anh thuộc Đại học Đà Nẵng'),
(91, 'DDY', 'Khoa Y dược - Đại học Đà Nẵng'),
(92, 'DFA', 'Trường Đại học Tài chính - Quản trị Kinh doanh'),
(93, 'DH', 'Đại học Huế'),
(94, 'DHV', 'Trường Đại học Hùng Vương - tp. Hồ Chí Minh'),
(95, 'DKB', 'Trường Đại học Kinh tế - Kỹ thuật Bình Dương'),
(96, 'DKC', 'Trường Đại học Công nghệ Tp. Hồ Chí Minh'),
(97, 'DKH', 'Trường Đại học Dược Hà Nội'),
(98, 'DKK', 'Trường Đại học Kinh tế Kỹ thuật Công nghiệp'),
(99, 'DKS', 'Trường Đại học Kiểm sát Hà Nội'),
(100, 'DKT', 'Trường Đại học Hải Dương'),
(101, 'DKY', 'Trường Đại học Kỹ thuật Y tế Hải Dương'),
(102, 'DLA', 'Trường Đại học Kinh tế Công nghiệp Long An'),
(103, 'DLH', 'Trường Đại học Lạc Hồng'),
(104, 'DLS', 'Trường Đại học Lao động - Xã hội (Cơ sở II TP. HCM)'),
(105, 'DLX', 'Trường Đại học Lao động - Xã hội (Trụ sở chính)'),
(106, 'DMD', 'Trường Đại học Công nghệ miền Đông'),
(107, 'DMS', 'Trường Đại học Tài chính - Marketing'),
(108, 'DMT', 'Trường Đại học Tài nguyên và Môi Trường Hà Nội'),
(109, 'DNB', 'Trường Đại học Hoa Lư'),
(110, 'DNC', 'Trường Đại học nam Cần Thơ'),
(111, 'DNU', 'Trường Đại học Đồng Nai'),
(112, 'DNV', 'Trường Đại học Nội vụ Hà Nội'),
(113, 'DPC', 'Trường Đại học Phan Châu Trinh'),
(114, 'DPD', 'Trường Đại học Dân lập Phương Đông'),
(115, 'DPQ', 'Trường Đại học Phạm Văn Đồng'),
(116, 'DPT', 'Trường Đại học Phan Thiết'),
(117, 'DPX', 'Trường Đại học Dân lập Phú Xuân'),
(118, 'DPY', 'Trường Đại học Phú Yên'),
(119, 'DQB', 'Trường Đại học Quảng Bình'),
(120, 'DQK', 'Trường Đại học Kinh doanh và Công nghệ Hà Nội'),
(121, 'DQN', 'Trường Đại học Quy Nhơn'),
(122, 'DQT', 'Trường Đại học Quang Trung'),
(123, 'DQU', 'Trường Đại học Quảng Nam'),
(124, 'DSD', 'Trường Đại học Sân khấu, Điện ảnh tp. Hồ Chí Minh'),
(125, 'DSG', 'Trường Đại học Công nghệ Sài Gòn'),
(126, 'DT', 'Đại học Thái Nguyên'),
(127, 'DTA', 'Trường Đại học Thành Tây'),
(128, 'DTB', 'Trường Đại học Thái Bình'),
(129, 'DTC', 'Trường Đại học Công nghệ Thông tin và Truyền thông - Đại học Thái Nguyên'),
(130, 'DTD', 'Trường Đại học Tây Đô'),
(131, 'DTE', 'Trường Đại học Kinh tế Quản trị Kinh doanh - Đại học Thái Nguyên'),
(132, 'DTF', 'Khoa Ngoại ngữ - Đại học Thái Nguyên'),
(133, 'DTH', 'Trường Đại học Hoa Sen'),
(134, 'DTK', 'Trường Đại học Kỹ thuật Công nghiệp - Đại học Thái Nguyên'),
(135, 'DTL', 'Trường Đại học Thăng Long'),
(136, 'DTM', 'Trường Đại học Tài nguyên và Môi Trường tp. Hồ Chí Minh'),
(137, 'DTN', 'Trường Đại học Nông lâm - Đại học Thái Nguyên'),
(138, 'DTP', 'Phân hiệu Đại học Thái Nguyên tại Lào Cai'),
(139, 'DTQ', 'Khoa quốc tế - Đại học Thái Nguyên'),
(140, 'DTS', 'Trường Đại học Sư phạm - Đại học Thái Nguyên'),
(141, 'DTT', 'Trường Đại học Tôn Đức Thắng'),
(142, 'DTV', 'Trường Đại học Lương Thế Vinh'),
(143, 'DTY', 'Trường Đại học Y dược - Đại học Thái Nguyên'),
(144, 'DTZ', 'Trường Đại học Khoa học - Đại học Thái Nguyên'),
(145, 'DVB', 'Trường Đại học Việt bắc'),
(146, 'DVD', 'Trường Đại học Văn hoá, Thể thao và Du lịch Thanh Hoá'),
(147, 'DVH', 'Trường Đại học Văn Hiến'),
(148, 'DVL', 'Trường Đại học Văn Lang'),
(149, 'DVP', 'Trường Đại học Trưng vương'),
(150, 'DVX', 'Trường Đại học Công nghệ Vạn Xuân'),
(151, 'DYD', 'Trường Đại học Yersin Đà Lạt'),
(152, 'EIU', 'Trường Đại học Quốc tế miền Đông'),
(153, 'ETU', 'Trường Đại học Hòa Bình'),
(154, 'FBU', 'Trường Đại học Tài chính - Ngân hàng Hà Nội'),
(155, 'FPT', 'Trường Đại học Fpt'),
(156, 'GHA', 'Trường Đại học Giao thông Vận tải'),
(157, 'GNT', 'Trường Đại học Sư phạm Nghệ thuật Trung ương'),
(158, 'GSA', 'Trường Đại học Giao thông Vận tải - Cơ sở 2 ở phía Nam'),
(159, 'GTA', 'Trường Đại học Công nghệ Giao thông Vận tải'),
(160, 'GTS', 'Trường Đại học Giao thông Vận tải tp. Hồ Chí Minh'),
(161, 'HBT', 'Học viện Báo chí và Tuyên truyền'),
(162, 'HBU', 'Đại học Quốc tế Hồng Bàng'),
(163, 'HCP', 'Học viện Chính sách và Phát triển'),
(164, 'HDT', 'Trường Đại học Hồng Đức'),
(165, 'HEH', 'Học viện Hậu cần (hệ Quân sự)'),
(166, 'HGH', 'Trường sĩ quan Phòng hoá'),
(167, 'HHA', 'Trường Đại học Hàng hải Việt Nam'),
(168, 'HHK', 'Học viện Hàng không Việt Nam'),
(169, 'HHT', 'Trường Đại học Hà Tĩnh'),
(170, 'HPN', 'Học viện Phụ nữ Việt Nam'),
(171, 'HQH', 'Học viện Hải quân'),
(172, 'HQP', 'Học viện Quốc phòng'),
(173, 'HQT', 'Học viện Ngoại giao'),
(174, 'HTA', 'Học viện Toà án'),
(175, 'HTC', 'Học viện Tài chính'),
(176, 'HTN', 'Học viện Thanh thiếu niên Việt Nam'),
(177, 'HUI', 'Trường Đại học Công nghiệp tp. Hồ Chí Minh'),
(178, 'HVA', 'Học viện Âm nhạc Huế'),
(179, 'HVN', 'Học viện Nông nghiệp Việt Nam'),
(180, 'HVQ', 'Học viện Quản lý Giáo dục'),
(181, 'HYD', 'Học viện Y dược học Cổ truyền Việt Nam'),
(182, 'IUQ', 'Phân hiệu ĐH Công nghiệp Tp. HCM tại Quảng Ngãi'),
(183, 'KCC', 'Trường Đại học Kỹ thuật - Công nghệ Cần Thơ'),
(184, 'KGH', 'Trường Sĩ quan Không quân'),
(185, 'KHA', 'Trường Đại học Kinh tế Quốc dân'),
(186, 'KMA', 'Học viện Kỹ thuật Mật mã'),
(187, 'KPH', 'Học viện Phòng không - Không quân'),
(188, 'KSA', 'Trường Đại học Kinh tế tp. Hồ Chí Minh'),
(189, 'KTC', 'Trường Đại học Kinh tế - Tài chính tp. Hồ Chí Minh'),
(190, 'KTD', 'Trường Đại học Kiến trúc Đà Nẵng'),
(191, 'LBH', 'Trường Đại học Nguyễn Huệ'),
(192, 'LCH', 'Trường Sĩ quan Chính trị (hệ quân sự)'),
(193, 'LDA', 'Trường Đại học Công Đoàn'),
(194, 'LNH', 'Trường Đại học Lâm nghiệp (Phía Bắc)'),
(195, 'LPS', 'Trường Đại học Luật tp. Hồ Chí Minh'),
(196, 'MBS', 'Trường Đại học Mở tp. Hồ Chí Minh'),
(197, 'MDA', 'Trường Đại học Mỏ - Địa chất'),
(198, 'MHN', 'Viện Đại học Mở Hà Nội'),
(199, 'MTC', 'Trường Đại học Mỹ thuật Công nghiệp'),
(200, 'MTH', 'Trường Đại học Mỹ thuật Việt Nam'),
(201, 'MTU', 'Trường Đại học Xây dựng miền Tây'),
(202, 'NHB', 'Học viện Ngân hàng (Cơ sở Bắc Ninh)'),
(203, 'NHF', 'Trường Đại học Hà Nội'),
(204, 'NHH', 'Học viện Ngân hàng (Cơ sở Hà Nội)'),
(205, 'NHP', 'Học viện Ngân hàng (Cơ sở Phú Yên)'),
(206, 'NHS', 'Trường Đại học Ngân hàng tp. Hồ Chí Minh'),
(207, 'NLG', 'Phân hiệu Trường Đại học Nông lâm Tp. Hồ Chí Minh tại Gia Lai'),
(208, 'NLN', 'Phân hiệu Trường Đại học nông lâm tp. Hồ Chí Minh tại Ninh Thuận'),
(209, 'NLS', 'Trường Đại học Nông lâm Tp. Hồ Chí Minh'),
(210, 'NQH', 'Học viện Khoa học Quân sự (quân sự)'),
(211, 'NTH', 'Trường Đại học Ngoại thương'),
(212, 'NTS', 'Trường Đại học Ngoại thương - Cơ sở phía Nam'),
(213, 'NTT', 'Trường Đại học Nguyễn Tất Thành'),
(214, 'NTU', 'Trường Đại học Nguyễn Trãi'),
(215, 'NVH', 'Học viện Âm nhạc Quốc gia Việt Nam'),
(216, 'PBH', 'Trường Sĩ quan Pháo binh'),
(217, 'PCH', 'Trường Đại học Phòng cháy Chữa cháy'),
(218, 'PKH', 'Học viện Phòng không - Không quân'),
(219, 'PVU', 'Trường Đại học Dầu khí Việt Nam'),
(220, 'QH', 'Đại học Quốc gia Hà Nội'),
(221, 'QHE', 'Trường Đại học Kinh tế - Đại học Quốc gia Hà Nội'),
(222, 'QHF', 'Trường Đại học Ngoại ngữ - Đại học Quốc gia Hà Nội'),
(223, 'QHI', 'Trường Đại học Công nghệ - Đại học Quốc gia Hà Nội'),
(224, 'QHL', 'Khoa luật - Đại học Quốc gia Hà Nội'),
(225, 'QHQ', 'Khoa Quốc tế - Đại học Quốc gia Hà Nội'),
(226, 'QHS', 'Trường Đại học Giáo dục - Đại học Quốc gia Hà Nội'),
(227, 'QHT', 'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia Hà Nội'),
(228, 'QHX', 'Trường Đại học Khoa học Xã hội và Nhân văn - Đại học Quốc gia Hà Nội'),
(229, 'QHY', 'Khoa Y - Dược - Đại học Quốc gia Hà Nội'),
(230, 'QS', 'Đại học Quốc gia Tp. Hồ Chí Minh'),
(231, 'QSB', 'Trường Đại học Bách Khoa - Đại học Quốc gia TP.HCM'),
(232, 'QSC', 'Trường Đại học Công nghệ Thông tin - Đại học Quốc gia TP.HCM'),
(233, 'QSK', 'Trường Đại học Kinh tế - Luật - Đại học Quốc gia TP.HCM'),
(234, 'QSQ', 'Trường Đại học Quốc tế - Đại học Quốc gia TP.HCM'),
(235, 'QST', 'Trường Đại học Khoa học Tự nhiên - Đại học Quốc gia TP.HCM'),
(236, 'QSX', 'Trường Đại học Khoa học Xã hội và Nhân văn - Đại học Quốc gia TP.HCM'),
(237, 'QSY', 'Khoa Y - Đại học Quốc gia TP.HCM'),
(238, 'SDU', 'Trường Đại học Sao Đỏ'),
(239, 'SGD', 'Trường Đại học Sài Gòn'),
(240, 'SKD', 'Trường Đại học Sân khấu Điện ảnh Hà Nội'),
(241, 'SKN', 'Trường Đại học Sư phạm Kỹ thuật Nam Định'),
(242, 'SKV', 'Trường Đại học Sư phạm Kỹ thuật Vinh'),
(243, 'SNH', 'Trường Sĩ quan Công binh'),
(244, 'SP2', 'Trường Đại học Sư phạm Hà Nội 2'),
(245, 'SPD', 'Trường Đại học Đồng Tháp'),
(246, 'SPH', 'Trường Đại học Sư phạm Hà Nội'),
(247, 'SPK', 'Trường Đại học Sư phạm Kỹ thuật tp. Hồ Chí Minh'),
(248, 'SPS', 'Trường Đại học Sư phạm tp. Hồ Chí Minh'),
(249, 'STS', 'Trường Đại học Sư phạm Thể dục Thể thao TP.HCM'),
(250, 'TAG', 'Trường Đại học An Giang'),
(251, 'TBD', 'Trường Đại học Thái Bình Dương'),
(252, 'TCT', 'Trường Đại học Cần Thơ'),
(253, 'TCU', 'Trường Đại học Thông tin liên lạc'),
(254, 'TDB', 'Trường Đại học Thể dục Thể thao Bắc Ninh'),
(255, 'TDD', 'Trường Đại học Thành Đô'),
(256, 'TDH', 'Trường Đại học Sư phạm Thể dục Thể thao Hà Nội'),
(257, 'TDL', 'Trường Đại học Đà Lạt'),
(258, 'TDM', 'Trường Đại học Thủ Dầu Một'),
(259, 'TDS', 'Trường Đại học Thể dục Thể thao Thành phố Hồ Chí Minh'),
(260, 'TDV', 'Trường Đại học Vinh'),
(261, 'TGH', 'Trường Sĩ quan Tăng - Thiết giáp'),
(262, 'THP', 'Trường Đại học Hải Phòng'),
(263, 'THU', 'Trường Đại học Y khoa Tokyo Việt Nam'),
(264, 'THV', 'Trường Đại học Hùng Vương'),
(265, 'TKG', 'Trường Đại học Kiên Giang'),
(266, 'TLA', 'Trường Đại học Thuỷ lợi'),
(267, 'TLS', 'Trường Đại học Thuỷ lợi - Cơ sở 2 ở phía Nam'),
(268, 'TMA', 'Trường Đại học Thương mại'),
(269, 'TQU', 'Trường Đại học Tân Trào'),
(270, 'TSN', 'Trường Đại học Nha Trang'),
(271, 'TTB', 'Trường Đại học Tây Bắc'),
(272, 'TTD', 'Trường Đại học Thể dục Thể thao Đà Nẵng'),
(273, 'TTG', 'Trường Đại học Tiền Giang'),
(274, 'TTQ', 'Trường Đại học Tư thục Quốc tế Sài Gòn'),
(275, 'TYS', 'Trường Đại học Y khoa Phạm Ngọc Thạch'),
(276, 'UKH', 'Trường Đại học Khánh Hoà'),
(277, 'VGU', 'Trường Đại học Việt Đức'),
(278, 'VHD', 'Trường Đại học Công nghiệp Việt - Hung'),
(279, 'VHH', 'Trường Đại học Văn hoá Hà Nội'),
(280, 'VHS', 'Trường Đại học Văn hoá Tp. Hồ Chí Minh'),
(281, 'VPH', 'Trường Sĩ quan Kỹ thuật quân sự'),
(282, 'VTT', 'Trường Đại học Võ Trường Toản'),
(283, 'VUI', 'Trường Đại học Công nghiệp Việt Trì'),
(284, 'XDA', 'Trường Đại học Xây dựng'),
(285, 'YDD', 'Trường Đại học Điều dưỡng Nam Định'),
(286, 'YDN', 'Trường Đại học Kỹ thuật Y - dược Đà Nẵng'),
(287, 'YDS', 'Trường Đại học Y dược TP.HCM'),
(288, 'YKV', 'Trường Đại học Y khoa Vinh'),
(289, 'YPB', 'Trường Đại học Y dược Hải Phòng'),
(290, 'YTB', 'Trường Đại học Y dược Thái Bình'),
(291, 'YTC', 'Trường Đại học Y tế Công cộng'),
(292, 'ZNH', 'Trường Đại học Văn hoá - Nghệ thuật Quân đội'),
(293, 'ZPH', 'Trường Đại học Trần Đại Nghĩa (hệ dân sự)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skills`
--

CREATE TABLE `skills` (
  `id_job` int(11) NOT NULL,
  `id_appli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 31, '<p>B&agrave;i đăng FullTime</p>\r\n'),
(4, 56, '<p>C&aacute;c loại b&agrave;i đăng về c&ocirc;ng việc m&agrave; ở đ&oacute; giao dịch, cam kết giữa người thu&ecirc; v&agrave; người cung cấp lao động hoạt động chỉ dựa tr&ecirc;n 1 c&ocirc;ng việc. Khi ho&agrave;n th&agrave;nh c&ocirc;ng việc th&igrave; cam kết chấm dứt</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('facebook','google','twitter','email') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_app` int(11) DEFAULT NULL,
  `id_em` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `birthday` date DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `spam` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, `fullname`, `token`, `password`, `picture`, `gender`, `birthday`, `link`, `phone`, `spam`, `active`, `created`, `modified`) VALUES
(74, 'facebook', '1029946827216415', 3, NULL, 'truongvietmy63@gmail.com', 'Starlet Truong', NULL, NULL, 'https://graph.facebook.com/1029946827216415/picture', 1, NULL, NULL, NULL, 1, 1, '2019-06-30 08:28:14', '2019-07-02 11:19:01'),
(75, 'google', '111457067068034845970', NULL, NULL, 'thanhnh610@gmail.com', 'Thanh Lê', NULL, NULL, 'https://lh6.googleusercontent.com/-JJAaxPQiVw4/AAAAAAAAAAI/AAAAAAAAAQM/hmV-bkBalOw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-06-30 08:58:42', '2019-06-30 08:58:42'),
(77, 'facebook', '2422696811344891', 4, NULL, 'thuyhanhnt3@gmail.com', 'Thúy Hạnh', NULL, NULL, 'https://graph.facebook.com/2422696811344891/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-06-30 09:55:24', '2019-09-06 09:14:02'),
(78, 'google', '106442475096130167993', 5, NULL, 'levanphuc26022000@gmail.com', 'Phúc Văn', NULL, NULL, 'https://lh6.googleusercontent.com/-nQbrUM4mlFc/AAAAAAAAAAI/AAAAAAAANq4/RdKU5LQ0SLA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-01 16:18:11', '2019-07-05 11:59:00'),
(79, 'facebook', '751964925217972', 6, NULL, 'haihoa3006@gmail.com', 'Hải Lý', NULL, NULL, 'https://graph.facebook.com/751964925217972/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-01 18:50:45', '2019-07-01 18:50:45'),
(80, 'google', '102622823338111619498', 7, NULL, '16k4081018@hce.edu.vn', 'Ung Nho Phi Hai', NULL, NULL, 'https://lh6.googleusercontent.com/-iKWWd5kK2zU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdB2_bJdyyrwFzZyfRljUnwHh7TEg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-01 20:58:28', '2019-07-01 20:58:28'),
(81, 'google', '101415614584834959559', NULL, NULL, 'quangnhat249@gmail.com', 'Quang Nhật', NULL, NULL, 'https://lh3.googleusercontent.com/-cmKPNrkQ2Sc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3remx2LKY_ZmQgisud7aF6aDUP34tQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-01 21:29:41', '2019-07-01 21:29:41'),
(82, 'facebook', '633491900501614', NULL, NULL, '', 'Hoàng Oanh', NULL, NULL, 'https://graph.facebook.com/633491900501614/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-01 22:26:34', '2019-07-01 22:26:34'),
(83, 'facebook', '1678697252274233', 9, NULL, 'ngoinhinkncho_ngodolaem@yahoo.com.vn', 'Mai Lớp', NULL, NULL, 'https://graph.facebook.com/1678697252274233/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 03:51:24', '2019-07-02 03:51:24'),
(84, 'facebook', '1315901211909502', 10, NULL, 'linhtran438@yahoo.com', 'Trần Văn Linh', NULL, NULL, 'https://graph.facebook.com/1315901211909502/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 10:43:48', '2019-07-02 10:43:48'),
(85, 'facebook', '2334930296782000', NULL, NULL, '', 'Đài Hy', NULL, NULL, 'https://graph.facebook.com/2334930296782000/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 10:48:55', '2019-07-23 20:28:13'),
(86, 'facebook', '1258664477648068', NULL, NULL, '', 'Hà Ngân Thể', NULL, NULL, 'https://graph.facebook.com/1258664477648068/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 12:24:31', '2019-07-02 12:24:31'),
(87, 'facebook', '2361904760718981', NULL, NULL, 'ilovelife21399@gmail.com', 'Võ Quang Phương', NULL, NULL, 'https://graph.facebook.com/2361904760718981/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 13:25:33', '2019-07-03 12:51:02'),
(88, 'facebook', '1091084541102794', NULL, NULL, '', 'Giáng Lin', NULL, NULL, 'https://graph.facebook.com/1091084541102794/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 14:30:22', '2019-08-17 10:04:15'),
(89, 'facebook', '2535801136697808', 11, NULL, 'ynguyen_maiyeunguoi79@yahoo.com', 'Như Ý Nguyen Thanh', NULL, NULL, 'https://graph.facebook.com/2535801136697808/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-02 17:51:21', '2019-07-02 17:51:21'),
(90, 'google', '115417972077490383873', 102, 2, 'hoaihuy1998.vn@gmail.com', 'Huy Le', NULL, NULL, 'https://lh3.googleusercontent.com/-Y7t2ZBIsDxU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcexip_tsOTvq91uTVFPj74VsZajA/photo.jpg', 1, '1998-04-08', NULL, NULL, 1, 1, '2019-07-03 00:21:36', '2019-09-06 10:48:20'),
(91, 'google', '105632077784850960987', 13, NULL, '16k4081028@hce.edu.vn', 'Le Nguyen Hoai Huy', NULL, NULL, 'https://lh5.googleusercontent.com/-ewxFFck3RWA/AAAAAAAAAAI/AAAAAAAAABQ/M2BpVYJjZyI/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-03 00:28:02', '2019-07-03 00:28:02'),
(93, 'google', '105580634109865689891', 115, 6, 'hoaihuy2011.vn@gmail.com', 'Le Hoai Huy', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mBFfulb42Ctets8aJRkZbSootcsArbtLe5-BLjr', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-07-03 00:37:25', '2019-09-06 10:18:22'),
(94, 'facebook', '2359250864351327', NULL, NULL, 'nguyenthiuyennhi234@gmail.com', 'Uyển Nhi', NULL, NULL, 'https://graph.facebook.com/2359250864351327/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-03 12:59:10', '2019-07-03 12:59:10'),
(95, 'facebook', '2265916050340102', 20, NULL, 'kerosokool@gmail.com', 'Oanh Nguyễn', NULL, NULL, 'https://graph.facebook.com/2265916050340102/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-03 21:48:54', '2019-07-22 22:29:46'),
(96, 'google', '118045186071451817623', 21, NULL, 'baominhtruonghoang@gmail.com', 'baominh', NULL, NULL, 'https://lh6.googleusercontent.com/-soVlnnZpUO4/AAAAAAAAAAI/AAAAAAAAAQs/uk3Vnc4HF58/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 08:23:53', '2019-07-05 08:23:53'),
(97, 'google', '106060974911920665413', 22, NULL, 'thanhtuant97@gmail.com', 'Truong Thanh Tuan', NULL, NULL, 'https://lh3.googleusercontent.com/-ZnggkYvdwEE/AAAAAAAAAAI/AAAAAAAAJBc/txSimxi0b5E/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 09:13:01', '2019-07-05 09:13:01'),
(98, 'facebook', '661388247606418', NULL, NULL, '', 'Bonne Chance', NULL, NULL, 'https://graph.facebook.com/661388247606418/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 14:02:22', '2019-09-04 18:10:11'),
(99, 'facebook', '689710998165943', NULL, NULL, '', 'Trần Phương Thơ', NULL, NULL, 'https://graph.facebook.com/689710998165943/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 16:13:03', '2019-07-05 16:13:03'),
(100, 'facebook', '2421855061432117', NULL, NULL, '', 'Nghĩa Jiro', NULL, NULL, 'https://graph.facebook.com/2421855061432117/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 17:41:19', '2019-07-05 17:41:19'),
(101, 'facebook', '1313701305445419', 23, NULL, 'thanhngoc4320@gmail.com', 'Thanh Ngọc', NULL, NULL, 'https://graph.facebook.com/1313701305445419/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 20:56:41', '2019-07-30 13:27:17'),
(102, 'facebook', '2376430755979348', NULL, NULL, '', 'Tragg Nguyen', NULL, NULL, 'https://graph.facebook.com/2376430755979348/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 21:08:49', '2019-07-05 21:08:49'),
(103, 'facebook', '1213370272170856', 24, NULL, 'k2v6developer@gmail.com', 'Trương Quang Định', NULL, NULL, 'https://graph.facebook.com/1213370272170856/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-05 22:32:48', '2019-07-18 02:02:42'),
(104, 'google', '111518267605771675602', 25, NULL, 'minhquang3822@gmail.com', 'Dương Quang', NULL, NULL, 'https://lh4.googleusercontent.com/-iQQxIAyFxy8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reXzY6Ip0zQfXYr_piJ53Aqo1BH1g/photo.jpg', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-07-06 11:49:47', '2019-08-24 00:09:12'),
(105, 'facebook', '329076094670769', NULL, NULL, '', 'Trà My', NULL, NULL, 'https://graph.facebook.com/329076094670769/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-06 12:20:53', '2019-07-06 12:20:53'),
(106, 'google', '107644169883956347026', 26, NULL, 'sonwnguyen13@gmail.com', 'Sơn Nguyễn Thanh', NULL, NULL, 'https://lh4.googleusercontent.com/-uYowIL5cq3g/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdKq9tvAhk1AtnCd7xMbavsZ8muJA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-06 21:35:01', '2019-07-07 08:00:36'),
(107, 'google', '107355731888222416618', 27, NULL, 'trang.hoang@eggcop.com', 'Trang Hoàng', NULL, NULL, 'https://lh4.googleusercontent.com/-mA_F0lnzmTc/AAAAAAAAAAI/AAAAAAAAAAc/YH4mGVj_MRQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-09 11:15:57', '2019-07-09 11:15:57'),
(108, 'facebook', '2313229865604906', 28, NULL, 'thanh.nguyn440@yahoo.com', 'Yến Thanh', NULL, NULL, 'https://graph.facebook.com/2313229865604906/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-09 11:17:25', '2019-07-09 11:17:25'),
(109, 'facebook', '2382313942092279', NULL, NULL, 'bebuongbinh148@gmail.com', 'Truong Quynh Anh', NULL, NULL, 'https://graph.facebook.com/2382313942092279/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-09 11:17:58', '2019-07-09 11:17:58'),
(110, 'facebook', '478809629596267', NULL, NULL, 'ghe5122003@gmail.com', 'Bảo Trân', NULL, NULL, 'https://graph.facebook.com/478809629596267/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-09 22:13:12', '2019-07-09 22:13:12'),
(111, 'google', '101735202671713783283', NULL, NULL, 'danghantien@gmail.com', 'Dang Tien', NULL, NULL, 'https://lh3.googleusercontent.com/-jwjKSx1_cd0/AAAAAAAAAAI/AAAAAAAAChw/Jsxxaz25Xnw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-10 06:15:02', '2019-07-27 13:15:59'),
(112, 'facebook', '2302488246683766', NULL, NULL, 'lethithanhluyen13198@gmail.com', 'Thanh Luyến', NULL, NULL, 'https://graph.facebook.com/2302488246683766/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-10 14:38:29', '2019-07-10 14:38:29'),
(113, 'facebook', '858381331210563', 29, NULL, 'vananh251201@gmail.com', 'Hồ Anh', NULL, NULL, 'https://graph.facebook.com/858381331210563/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-10 16:18:44', '2019-07-10 16:18:44'),
(114, 'google', '103705725406666513232', 30, NULL, 'nguyenphihungg03@gmail.com', 'Phi Hùng Nguyễn', NULL, NULL, 'https://lh4.googleusercontent.com/-oFn8V1wVB5U/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcJKUgq6IydcrPztE14Za9vNhZ0Sg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-10 20:28:11', '2019-07-28 11:11:50'),
(115, 'facebook', '212897659680325', NULL, NULL, '', 'Thiên Thiên', NULL, NULL, 'https://graph.facebook.com/212897659680325/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-16 10:36:03', '2019-09-02 20:38:46'),
(116, 'facebook', '339190523688308', NULL, NULL, '', 'Thanh Hà', NULL, NULL, 'https://graph.facebook.com/339190523688308/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-16 14:41:01', '2019-07-16 14:41:01'),
(117, 'facebook', '2362261934031754', NULL, NULL, 'tramyhoang2001@gmail.com', 'Song Thảo', NULL, NULL, 'https://graph.facebook.com/2362261934031754/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-18 16:14:18', '2019-07-20 17:27:03'),
(118, 'google', '117588002254416493596', 31, NULL, 'huyhoangduongviet0604@gmail.com', 'Rom Map', NULL, NULL, 'https://lh5.googleusercontent.com/-azr4yKB2Teg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfmZtDGX5IqSJ7dKf2ozsbQo0JCMg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-19 12:41:58', '2019-07-24 19:09:37'),
(119, 'google', '105467982752537717492', 32, NULL, 'ngocthanh6398@gmail.com', 'Thạnh Đào', NULL, NULL, 'https://lh3.googleusercontent.com/-eklAUtSCp9Q/AAAAAAAAAAI/AAAAAAAAAC4/woctLW7-p30/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-19 14:39:37', '2019-07-23 18:53:39'),
(120, 'google', '118017449707486049188', 33, NULL, 'binhan792000@gmail.com', 'An Nhiên', NULL, NULL, 'https://lh3.googleusercontent.com/-H71PKWyhqOA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcogOGaAKeob06EXI9m9dog_P1-UA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-20 13:28:10', '2019-08-03 17:18:37'),
(121, 'facebook', '883718235296274', NULL, NULL, 'nmh999269@gmail.com', 'Ngô Minh Hoàng', NULL, NULL, 'https://graph.facebook.com/883718235296274/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:20:07', '2019-07-31 17:46:34'),
(122, 'facebook', '2423129144573517', 34, NULL, 'hopluu140298@gmail.com', 'Mín', NULL, NULL, 'https://graph.facebook.com/2423129144573517/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:29:34', '2019-07-22 19:29:34'),
(123, 'facebook', '1413082828861031', 35, NULL, 'kitaga.keii@gmail.com', 'Tiên Hoàng Nguyễn', NULL, NULL, 'https://graph.facebook.com/1413082828861031/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:35:38', '2019-07-26 21:16:18'),
(124, 'facebook', '2463753513904217', 36, NULL, 'ly.vo.pvd@gmail.com', 'Ly Võ', NULL, NULL, 'https://graph.facebook.com/2463753513904217/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:36:17', '2019-07-23 16:16:12'),
(125, 'facebook', '703766683398096', NULL, NULL, 'thanhxuanadt56@gmail.com', 'Thanh Xuân', NULL, NULL, 'https://graph.facebook.com/703766683398096/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:36:21', '2019-07-22 19:36:21'),
(126, 'facebook', '1621684534635090', 37, NULL, 'han_codon273@yahoo.com.vn', 'Trương Hiếu Hân', NULL, NULL, 'https://graph.facebook.com/1621684534635090/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 19:44:31', '2019-07-25 12:11:48'),
(127, 'facebook', '2445950192307090', NULL, NULL, '', 'Minh Nhật', NULL, NULL, 'https://graph.facebook.com/2445950192307090/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 21:12:08', '2019-07-23 10:11:18'),
(128, 'facebook', '1082685931921637', 104, 4, 'nguyenaile1912@gmail.com', 'Ái Lệ Nguyễn', NULL, NULL, 'https://graph.facebook.com/1082685931921637/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-07-22 21:45:29', '2019-08-23 19:54:45'),
(129, 'facebook', '1321673717987233', NULL, NULL, 'truonganhkiet92@gmail.com', 'Kiệt Trương', NULL, NULL, 'https://graph.facebook.com/1321673717987233/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 22:19:46', '2019-07-22 22:19:46'),
(130, 'google', '107356349005576077001', NULL, NULL, 'tanluong2102@gmail.com', 'luong cao tan', NULL, NULL, 'https://lh4.googleusercontent.com/-Zg8IR2ms0JI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc2qPUV4wuaF4QcEngjlfx1BtrTHw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 22:20:19', '2019-07-23 12:23:57'),
(131, 'facebook', '2320320481563105', 76, NULL, 'chunggiathanh02@gmail.com', 'Thành Chung', NULL, NULL, 'https://graph.facebook.com/2320320481563105/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-22 22:43:08', '2019-08-02 19:57:29'),
(132, 'facebook', '2367840876807097', NULL, NULL, 'tranvantruongdatnmkd2001@gmail.com', 'Trần Văn Trương Đạt', NULL, NULL, 'https://graph.facebook.com/2367840876807097/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 09:28:48', '2019-07-23 09:28:48'),
(133, 'google', '101526944944370235002', 43, NULL, 'tranvantruongdat2001@gmail.com', 'Đạt Trần', NULL, NULL, 'https://lh3.googleusercontent.com/-37uXcrk6bDs/AAAAAAAAAAI/AAAAAAAAAAg/sWCpk24l_So/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 09:29:13', '2019-07-24 20:11:33'),
(134, 'facebook', '1345681075608806', NULL, NULL, 'thientrannguyen522@gmail.com', 'Võ Trọng Thức', NULL, NULL, 'https://graph.facebook.com/1345681075608806/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:01:24', '2019-07-23 12:01:24'),
(135, 'google', '100675396471988990204', 44, NULL, 'khongbiet12387@gmail.com', 'Hà Lê Thị Thu', NULL, NULL, 'https://lh6.googleusercontent.com/-FdF47xegGbM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reA0nl1NgTxHfN-cRMri3SJLx-DHg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:04:25', '2019-08-22 22:16:48'),
(136, 'facebook', '474408796451184', 46, NULL, 'taichodien0609@gmail.com', 'Hồ Tấn Hoàng', NULL, NULL, 'https://graph.facebook.com/474408796451184/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:05:58', '2019-07-23 12:05:58'),
(137, 'facebook', '2463171827248074', NULL, NULL, 'luthiquynhnhi111098@gmail.com', 'Nhi Quỳnh Quỳnh', NULL, NULL, 'https://graph.facebook.com/2463171827248074/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:28:36', '2019-07-23 12:28:36'),
(138, 'facebook', '609240126265943', 47, NULL, 'nhi.jks0901@gmail.com', 'Nguyễn Thị Tuyết Nhi', NULL, NULL, 'https://graph.facebook.com/609240126265943/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:40:31', '2019-08-29 10:15:29'),
(139, 'google', '116286898597542150991', NULL, NULL, 'ngoctruyen20396@gmail.com', 'ngọc truyền', NULL, NULL, 'https://lh6.googleusercontent.com/-b_BYRzS7ANo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re10FBKGTJKQr2AQC-PCKXya00rXg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:42:06', '2019-07-23 12:42:06'),
(140, 'facebook', '1584207538377413', NULL, NULL, '', 'Min', NULL, NULL, 'https://graph.facebook.com/1584207538377413/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 12:55:06', '2019-07-23 12:55:06'),
(141, 'google', '102154827938529854183', NULL, NULL, 'phuonganh11346@gmail.com', 'VG Ngọc', NULL, NULL, 'https://lh4.googleusercontent.com/-REbR2BNdITg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcYBIUkw0AGCm_kJNomm-dbdl5S-Q/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 13:11:07', '2019-07-23 13:11:07'),
(142, 'facebook', '2071099616528170', 48, NULL, 'dangthituongvy05@gmail.com', 'Đặng Thị Tường Vy', NULL, NULL, 'https://graph.facebook.com/2071099616528170/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 13:33:25', '2019-07-23 16:43:52'),
(143, 'facebook', '673900329688114', 49, NULL, '16l3011084@huaf.edu.vn', 'Kim Trinh', NULL, NULL, 'https://graph.facebook.com/673900329688114/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 14:38:56', '2019-08-19 08:44:41'),
(144, 'facebook', '2409821342569689', NULL, NULL, 'loanthan96@gmail.com', 'Loan Thân', NULL, NULL, 'https://graph.facebook.com/2409821342569689/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 14:56:16', '2019-08-13 21:07:28'),
(145, 'facebook', '1545072838961674', 51, NULL, 'baby_kute721999@yahoo.com.vn', 'Hoàng Thị Minh Tâm', NULL, NULL, 'https://graph.facebook.com/1545072838961674/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 16:11:25', '2019-07-23 16:11:25'),
(146, 'facebook', '2611100479176029', 52, NULL, 'tieubangbang999@gmail.com', 'Thu Hiền', NULL, NULL, 'https://graph.facebook.com/2611100479176029/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 16:17:31', '2019-09-02 12:30:53'),
(147, 'facebook', '716351342152581', NULL, NULL, '', 'Vy Vy', NULL, NULL, 'https://graph.facebook.com/716351342152581/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 16:44:09', '2019-07-23 16:44:09'),
(148, 'facebook', '584271505434768', 53, NULL, 'vonu130899@gmail.com', 'NgỌc Nữ', NULL, NULL, 'https://graph.facebook.com/584271505434768/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 19:17:07', '2019-09-04 12:02:43'),
(149, 'facebook', '1384110418402834', NULL, NULL, 'nguyendinhthaonguyen@yahoo.com', 'Nguyễn Đinh Thảo Nguyên', NULL, NULL, 'https://graph.facebook.com/1384110418402834/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 19:33:17', '2019-07-23 19:33:17'),
(150, 'facebook', '1548759225260166', 54, NULL, 'kieulinh100815@gmail.com', 'Nòi Super', NULL, NULL, 'https://graph.facebook.com/1548759225260166/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 19:40:00', '2019-07-23 19:40:00'),
(151, 'google', '108213425499584007386', 55, NULL, 'tranthiphuong.2310tth@gmail.com', 'Phuong Tran', NULL, NULL, 'https://lh5.googleusercontent.com/-ERJWiPYk9bA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfIuyn4Y4W-WwIhOm-qbTmNl5_aZg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 20:28:17', '2019-07-23 20:28:17'),
(152, 'facebook', '1365230646966618', 56, NULL, 'mnhunguyen6196@gmail.com', 'Như Nguyễn', NULL, NULL, 'https://graph.facebook.com/1365230646966618/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 20:37:25', '2019-07-30 15:23:40'),
(153, 'facebook', '2322857871288709', 57, NULL, 'kxixprod@gmail.com', 'Thảng Lê Đình', NULL, NULL, 'https://graph.facebook.com/2322857871288709/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 20:46:59', '2019-07-24 06:10:45'),
(154, 'facebook', '2241336039512180', NULL, NULL, '', 'Thanh Châu', NULL, NULL, 'https://graph.facebook.com/2241336039512180/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 21:03:31', '2019-07-23 21:03:31'),
(155, 'facebook', '2393220110963215', 58, NULL, 'ttanh92tcv@gmail.com', 'Anh ÊTô', NULL, NULL, 'https://graph.facebook.com/2393220110963215/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-23 23:45:59', '2019-07-23 23:45:59'),
(156, 'facebook', '2410544605847572', 59, NULL, 'linhdan11a4@gmail.com', 'Đan Linh', NULL, NULL, 'https://graph.facebook.com/2410544605847572/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 06:09:34', '2019-08-08 08:49:44'),
(157, 'facebook', '2357280757869270', 60, NULL, 'baolikeaboss@gmail.com', 'Bo', NULL, NULL, 'https://graph.facebook.com/2357280757869270/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 11:13:32', '2019-08-01 22:55:40'),
(158, 'facebook', '509768706427436', NULL, NULL, '', 'Hồng', NULL, NULL, 'https://graph.facebook.com/509768706427436/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 11:37:15', '2019-07-24 11:37:15'),
(159, 'facebook', '729343917521071', NULL, NULL, '', 'Hoàng Thảo Vân', NULL, NULL, 'https://graph.facebook.com/729343917521071/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 11:44:54', '2019-07-24 11:44:54'),
(160, 'google', '117866509967927479861', 167, 14, 'truongvietmy63@gmail.com', 'USA STARLET', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mDWGHzV_kBWmdt4Noe65vjnwOWtiavb4Lch_NG56w', 1, '1997-06-03', NULL, NULL, 1, 1, '2019-07-24 12:26:50', '2019-09-04 23:48:16'),
(161, 'facebook', '1241832165996068', 61, NULL, 'tinvit2012@gmail.com', 'Nguyễn Nhật Thiên', NULL, NULL, 'https://graph.facebook.com/1241832165996068/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 17:04:34', '2019-07-24 17:04:34'),
(162, 'facebook', '2488831071340445', NULL, NULL, 'nkiet6441@gmail.com', 'Kiệt Nguyễn', NULL, NULL, 'https://graph.facebook.com/2488831071340445/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 18:42:12', '2019-07-24 18:42:12'),
(163, 'facebook', '483119405598197', NULL, NULL, '', 'Lam Ngọc', NULL, NULL, 'https://graph.facebook.com/483119405598197/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 20:02:58', '2019-07-24 20:02:58'),
(164, 'facebook', '2384518331760313', 62, NULL, 'doanthanhcong4@gmail.com', 'Cong Thanh Doan', NULL, NULL, 'https://graph.facebook.com/2384518331760313/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-24 22:06:32', '2019-07-24 22:06:32'),
(165, 'facebook', '1117434821786843', NULL, NULL, 'uthitaiem@gmail.com', 'Thiên Hà', NULL, NULL, 'https://graph.facebook.com/1117434821786843/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-25 09:07:56', '2019-07-25 09:07:56'),
(166, 'google', '101738973287604136499', 63, NULL, 'lykhanhduy3519@gmail.com', 'Khánh Duy', NULL, NULL, 'https://lh6.googleusercontent.com/-FNGTURFX61E/AAAAAAAAAAI/AAAAAAAAAMY/ufiEferQLks/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-25 10:11:14', '2019-07-25 10:11:14'),
(167, 'facebook', '2325029984477985', NULL, NULL, '', 'Phan Dung', NULL, NULL, 'https://graph.facebook.com/2325029984477985/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-25 13:14:23', '2019-09-05 20:33:23'),
(168, 'facebook', '523104261765590', NULL, NULL, '', 'Nguyễn Thanh Bình', NULL, NULL, 'https://graph.facebook.com/523104261765590/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-25 18:00:04', '2019-07-25 18:00:04'),
(169, 'facebook', '1334052106749578', NULL, NULL, 'thienduongtinhyeu_coanh_98@yahoo.com.vn', 'Khánh Linh', NULL, NULL, 'https://graph.facebook.com/1334052106749578/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-25 20:22:32', '2019-07-25 20:22:32'),
(170, 'facebook', '1383422731820044', NULL, NULL, 'syty15@yahoo.com.vn', 'Lê Mỹ Linh', NULL, NULL, 'https://graph.facebook.com/1383422731820044/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-26 09:48:57', '2019-07-26 09:48:57'),
(171, 'facebook', '2287926667989341', NULL, NULL, '', 'Nhi Thanh Truong', NULL, NULL, 'https://graph.facebook.com/2287926667989341/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-26 15:20:27', '2019-07-26 15:20:27'),
(172, 'facebook', '1204596549701591', NULL, NULL, '', 'Lê Thị Kim Huệ', NULL, NULL, 'https://graph.facebook.com/1204596549701591/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-26 16:14:39', '2019-08-29 10:36:30'),
(173, 'google', '101395659858162987999', NULL, NULL, 'ply160998@gmail.com', 'Ly Phạm Vlog miumiu', NULL, NULL, 'https://lh3.googleusercontent.com/-hTRI8QPCnTU/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re_JOWuZFe_loLhZ3V4dgCntPD0Sg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-26 19:40:33', '2019-07-26 20:27:12'),
(174, 'facebook', '2397820680542648', 64, NULL, 'lle.quynhnhu@gmail.com', 'Quỳnh Như', NULL, NULL, 'https://graph.facebook.com/2397820680542648/picture', 1, '2000-07-08', NULL, NULL, 1, 1, '2019-07-26 21:11:22', '2019-09-02 15:26:54'),
(175, 'facebook', '2389354078004410', NULL, NULL, '', 'Diệu Thu', NULL, NULL, 'https://graph.facebook.com/2389354078004410/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-26 22:56:52', '2019-07-26 22:56:52'),
(176, 'facebook', '891712394527991', NULL, NULL, 'honha511@gmail.com', 'Phạm Thị Cẩm Tú', NULL, NULL, 'https://graph.facebook.com/891712394527991/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-27 08:23:04', '2019-07-27 08:23:04'),
(177, 'facebook', '653295861821915', NULL, NULL, 'tranglainha@gmail.com', 'Huỳnh Trang', NULL, NULL, 'https://graph.facebook.com/653295861821915/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-27 17:32:47', '2019-07-27 17:32:47'),
(178, 'facebook', '2063252993780640', 65, NULL, 'missu_handsome_1111@yahoo.com.vn', 'KhamNgan Vongdala', NULL, NULL, 'https://graph.facebook.com/2063252993780640/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-28 12:36:27', '2019-07-28 12:36:27'),
(179, 'facebook', '121409979141288', 66, NULL, 'hien26101996@gmail.com', 'Lê Minh Nhi', NULL, NULL, 'https://graph.facebook.com/121409979141288/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-28 14:41:52', '2019-07-28 14:41:52'),
(180, 'facebook', '587346278461406', NULL, NULL, 'vuonhoadep979797@gmail.com', 'Nguyễn Cửu Hoài Đức', NULL, NULL, 'https://graph.facebook.com/587346278461406/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-28 19:40:18', '2019-07-28 19:40:18'),
(181, 'facebook', '1716474328496779', NULL, NULL, 'cudoi_cute_maiyeuem@yahoo.com', 'Chấn Hưng', NULL, NULL, 'https://graph.facebook.com/1716474328496779/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-28 22:41:33', '2019-07-28 22:41:33'),
(182, 'google', '106324512798442464514', NULL, NULL, 'vybuidoi119@gmail.com', 'huỳnh văn vỹ', NULL, NULL, 'https://lh4.googleusercontent.com/-sfR_4OoFV0s/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re5AVlYXi1kOSl9T8Sptp8ir59QlA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 00:04:50', '2019-07-29 00:04:50'),
(183, 'facebook', '795249524206286', NULL, NULL, 'panhpham2000@gmail.com', 'Han Sasunaru', NULL, NULL, 'https://graph.facebook.com/795249524206286/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 07:41:26', '2019-07-29 07:41:26'),
(184, 'google', '100330498150495715755', NULL, NULL, 'toimadridista7@gmail.com', 'Truong toi', NULL, NULL, 'https://lh5.googleusercontent.com/-M7GNROtKR1o/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcYftni6k_DyF36eSHrMVVRVAbw7Q/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 08:47:50', '2019-07-29 08:47:50'),
(185, 'google', '109141602270094799943', 67, NULL, 'nguyenchau020816@gmail.com', 'Quỳnh Châu Nguyễn', NULL, NULL, 'https://lh6.googleusercontent.com/-dvpf8WhSFkE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reHpxZmOEQ8_JdSZ8TplIZrlysdtg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 09:54:21', '2019-07-30 07:47:50'),
(186, 'facebook', '1127591304099258', NULL, NULL, '', 'Hà Dương', NULL, NULL, 'https://graph.facebook.com/1127591304099258/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 09:56:30', '2019-07-29 09:56:30'),
(187, 'facebook', '836003736742586', 225, 25, 'kunh0zdn@gmail.com', 'Ngọc Thạnh', NULL, NULL, 'https://graph.facebook.com/836003736742586/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 15:02:40', '2019-09-05 09:18:04'),
(188, 'facebook', '924593471226640', NULL, NULL, '', 'Tâm Chuyên Hậu', NULL, NULL, 'https://graph.facebook.com/924593471226640/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 22:04:16', '2019-07-29 22:04:16'),
(189, 'facebook', '377249376320455', NULL, NULL, 'tranthingochuyen163@gmail.com', 'Huyền Ngọc', NULL, NULL, 'https://graph.facebook.com/377249376320455/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-29 23:09:16', '2019-08-26 22:06:13'),
(190, 'facebook', '868927193485604', NULL, NULL, '', 'Dung Dung', NULL, NULL, 'https://graph.facebook.com/868927193485604/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 06:50:01', '2019-08-08 07:26:58'),
(191, 'facebook', '2316937711906680', NULL, NULL, '', 'Cát Tường', NULL, NULL, 'https://graph.facebook.com/2316937711906680/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 09:56:29', '2019-07-30 15:57:52'),
(192, 'google', '117821075559853721228', 69, NULL, 'tmphan2000@gmail.com', 'Tam Phan', NULL, NULL, 'https://lh4.googleusercontent.com/-59OGWBbUapw/AAAAAAAAAAI/AAAAAAAAFRc/vOqJjg77xcU/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 10:58:54', '2019-08-02 21:35:44'),
(193, 'facebook', '2355220411392886', NULL, NULL, '', 'Minh Phước', NULL, NULL, 'https://graph.facebook.com/2355220411392886/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 12:11:06', '2019-07-30 12:11:06'),
(194, 'google', '108909410325028975492', NULL, NULL, 'ngothuytrang105@gmail.com', 'Thuỳ Trang', NULL, NULL, 'https://lh3.googleusercontent.com/-XzTvQcR8bMo/AAAAAAAAAAI/AAAAAAAAD6k/BYS7XoGifzE/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 12:32:58', '2019-07-31 15:11:03'),
(195, 'facebook', '2203571069946803', NULL, NULL, '', 'Phương Thi', NULL, NULL, 'https://graph.facebook.com/2203571069946803/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 13:04:32', '2019-08-22 15:36:10'),
(196, 'facebook', '1651318355000496', NULL, NULL, 'thonghau2308@gmail.com', 'Tony Hậu Thi', NULL, NULL, 'https://graph.facebook.com/1651318355000496/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 16:06:01', '2019-07-30 18:37:12'),
(197, 'facebook', '378432282811608', NULL, NULL, '', 'Huy Quang Phan', NULL, NULL, 'https://graph.facebook.com/378432282811608/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-30 20:30:28', '2019-08-03 08:30:18'),
(198, 'google', '112820774885550114460', NULL, NULL, 'myvy.nguyen2203@gmail.com', 'Vy Nguyen', NULL, NULL, 'https://lh6.googleusercontent.com/-Chgvh_b5e7k/AAAAAAAAAAI/AAAAAAAABug/CgeCx-Ahee0/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 07:12:57', '2019-07-31 07:12:57'),
(199, 'facebook', '2351921835072053', NULL, NULL, 'heo980727@gmail.com', 'Bùi Thanh Huyền', NULL, NULL, 'https://graph.facebook.com/2351921835072053/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 11:05:54', '2019-08-09 10:26:32'),
(200, 'facebook', '1602632759870810', NULL, NULL, 'traitim_nhoanh_28@yahoo.com.vn', 'Nguyễn Ngọc Gia Minh', NULL, NULL, 'https://graph.facebook.com/1602632759870810/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 13:40:03', '2019-08-13 08:38:15'),
(201, 'google', '113383170694426685095', 70, NULL, 'tathanhtung16@gmail.com', 'Ta Thanh Tung', NULL, NULL, 'https://lh4.googleusercontent.com/-rzuyYulSjzs/AAAAAAAAAAI/AAAAAAAAB_8/yDvI50P0HJ4/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 14:32:14', '2019-09-03 14:24:55'),
(202, 'facebook', '336802500603572', NULL, NULL, '', 'Nguyễn Ngàn', NULL, NULL, 'https://graph.facebook.com/336802500603572/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 15:03:20', '2019-08-14 18:46:32'),
(203, 'facebook', '662834380849666', 71, NULL, 'dian.ripu@gmail.com', 'Phương Sherlock', NULL, NULL, 'https://graph.facebook.com/662834380849666/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 17:38:52', '2019-08-01 09:56:51'),
(204, 'google', '106348338295641301183', NULL, NULL, 'phanbichtam@gmail.com', 'Bích Tâm Phan', NULL, NULL, 'https://lh5.googleusercontent.com/-iSlXuKhKHr4/AAAAAAAAAAI/AAAAAAAAADE/4P7xggbseSk/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 17:50:30', '2019-07-31 17:50:30'),
(205, 'google', '113687562811201703531', NULL, NULL, 'dieuhuonghoang.010174@gmail.com', 'Huong Hoang', NULL, NULL, 'https://lh4.googleusercontent.com/-YqrRi_BB5hk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcXCZyMDOpZof8Co29_4jpjdtnpgw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 18:03:15', '2019-08-23 21:39:04'),
(206, 'facebook', '730502017386820', 72, NULL, 'taurus06052000@gmail.com', 'Phan Thanh Phương', NULL, NULL, 'https://graph.facebook.com/730502017386820/picture', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 19:09:03', '2019-07-31 19:17:58'),
(207, 'google', '107948884507845126149', NULL, NULL, 'lethiphuongthao010799@gmail.com', 'thiphuongthao le', NULL, NULL, 'https://lh5.googleusercontent.com/-G4afcw8suMM/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcBmrt1ALiboeUgw5hdbBNIPioNug/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 19:22:18', '2019-07-31 19:22:18'),
(208, 'google', '107802981247440290895', 74, NULL, 'cobexaki2312@gmail.com', 'Kuan Lin2309', NULL, NULL, 'https://lh5.googleusercontent.com/-KbFTHvN_kx8/AAAAAAAAAAI/AAAAAAAAFJk/htJML_Dxj2s/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-07-31 19:36:41', '2019-08-05 22:10:34'),
(209, 'google', '102345989494278147779', NULL, NULL, 'pnny2808@gmail.com', 'Ý Phan', NULL, NULL, 'https://lh5.googleusercontent.com/-dOipivKENlA/AAAAAAAAAAI/AAAAAAAAAAo/-1ArHz77YS0/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-01 07:38:22', '2019-08-01 07:38:22'),
(210, 'facebook', '171480530562064', 75, NULL, 'hoangthithanhthuong0511@gmail.com', 'Hoàng Thị Thanh Thương', NULL, NULL, 'https://graph.facebook.com/171480530562064/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-02 18:27:56', '2019-08-02 18:27:56'),
(211, 'facebook', '1218711198307433', NULL, NULL, '', 'Nhật Thanh', NULL, NULL, 'https://graph.facebook.com/1218711198307433/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-03 14:44:03', '2019-08-03 14:44:03'),
(212, 'facebook', '152013622577405', 202, 21, '', 'Tai Dang Nghi He', NULL, NULL, 'https://graph.facebook.com/152013622577405/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-03 15:41:07', '2019-09-03 13:44:59'),
(213, 'google', '104978717368376954907', 77, NULL, 'tathanhtung0805@gmail.com', 'Thanh Tùng Tạ', NULL, NULL, 'https://lh4.googleusercontent.com/-NqTBUwlQe5g/AAAAAAAAAAI/AAAAAAAAAAc/frC0hN1fGwU/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-04 10:59:55', '2019-08-21 15:04:22'),
(214, 'google', '113463901107485411732', 78, NULL, 'binh.aki.299@gmail.com', 'Thanh Bình Lê', NULL, NULL, 'https://lh3.googleusercontent.com/-gzGmKLQgegw/AAAAAAAAAAI/AAAAAAAACkY/0PLASYMcnbA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-05 14:55:51', '2019-08-05 14:55:51'),
(215, 'facebook', '933556626988352', NULL, NULL, 'phamthihien3241@gmail.com', 'Hiền Phạm', NULL, NULL, 'https://graph.facebook.com/933556626988352/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-05 19:09:52', '2019-08-18 18:25:25'),
(216, 'facebook', '895953907429478', NULL, NULL, 'quangnhatle19@gmail.com', 'Lê Quang Nhật', NULL, NULL, 'https://graph.facebook.com/895953907429478/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-05 19:21:27', '2019-08-05 19:21:27'),
(217, 'facebook', '2336516859942069', NULL, NULL, '', 'Xíu Chelsea', NULL, NULL, 'https://graph.facebook.com/2336516859942069/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-05 20:33:10', '2019-08-05 20:33:10'),
(218, 'google', '115545409500874484053', 81, NULL, 'khanhkelly16@gmail.com', 'Ngọcc Khánhh', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mDHk1G0qsRpgnoQjyRdHksPzWWh6kZys8VDCOg-qQ', 1, NULL, NULL, NULL, 1, 1, '2019-08-07 05:05:35', '2019-09-03 20:30:42'),
(219, 'google', '103371250971859085744', NULL, NULL, 'nguyentu06011976@gmail.com', 'Tú Nguyễn', NULL, NULL, 'https://lh4.googleusercontent.com/-BHoQH6t_MHw/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf7pwcAbylBpAVr60DmHnRfNgBbcg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-07 11:08:53', '2019-08-07 11:08:53'),
(220, 'facebook', '2334643043532112', NULL, NULL, '', 'Khả Lạc', NULL, NULL, 'https://graph.facebook.com/2334643043532112/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-07 23:48:48', '2019-08-08 08:21:18'),
(221, 'facebook', '2410335562581313', NULL, NULL, 'trangkarry002@gmail.com', 'Trang Hoang', NULL, NULL, 'https://graph.facebook.com/2410335562581313/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 08:53:28', '2019-08-08 08:53:28'),
(222, 'facebook', '2460288840860992', 82, NULL, 'dieuphuong12b6@gmail.com', 'Diệu Phượng', NULL, NULL, 'https://graph.facebook.com/2460288840860992/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 08:53:30', '2019-08-08 08:53:30'),
(223, 'google', '111902118632689506729', 84, NULL, 'tranle.miumiu@gmail.com', 'Quế Trân Lê Hoàng', NULL, NULL, 'https://lh6.googleusercontent.com/-55rcNMDAU_E/AAAAAAAAAAI/AAAAAAAAAB0/KkTt0idn5KU/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 10:10:21', '2019-08-25 10:53:29'),
(224, 'google', '115710991708467939237', 85, NULL, 'nhilys@gmail.com', 'Uyên Nhi Lý Ngọc', NULL, NULL, 'https://lh5.googleusercontent.com/-CahjJMOzFHY/AAAAAAAAAAI/AAAAAAAAAPo/MoTc7CCM0Ts/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 11:43:32', '2019-08-09 12:06:49'),
(225, 'facebook', '2415148128705722', NULL, NULL, 'minhtam1709.11@gmail.com', 'Nguyễn Thị Mai', NULL, NULL, 'https://graph.facebook.com/2415148128705722/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 12:34:28', '2019-08-08 12:34:28'),
(226, 'google', '111150992454968400313', 133, NULL, 'oanhkieuvothi12@gmail.com', 'Kieuoanh Vothi', NULL, NULL, 'https://lh3.googleusercontent.com/-pE--0Mp62cs/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcoos1LtbeNscZml-reoq5CYh7WXg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 15:47:23', '2019-08-29 09:25:40'),
(227, 'google', '108274411769825635466', NULL, NULL, 'ttktavebn@gmail.com', 'Lạc Lạc', NULL, NULL, 'https://lh6.googleusercontent.com/-gIZVWHJCZZs/AAAAAAAAAAI/AAAAAAAAJT0/UR6Assj-M30/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 16:48:36', '2019-08-08 16:48:36'),
(228, 'google', '112487319031273293005', NULL, NULL, 'vivy1518@gmail.com', 'Vi Vi', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mBfYf6cPlqmEB2ZN7Btesj81JO5BWIrFafpxg0I', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 19:26:13', '2019-08-08 19:26:13'),
(229, 'google', '102231109668664271861', 86, NULL, 'chienakatsuki@gmail.com', 'nguyễn chiến', NULL, NULL, 'https://lh6.googleusercontent.com/-dh4uP0nATzA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfgZ0Y2S5lRFL8F38JWnQbl54L6Sg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 19:49:03', '2019-08-10 14:02:44'),
(230, 'facebook', '2555785267985106', NULL, NULL, 'nakelenanguyenquocdat@yahoo.com.vn', 'Quốc Đạt', NULL, NULL, 'https://graph.facebook.com/2555785267985106/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 20:07:46', '2019-08-08 20:07:46'),
(231, 'facebook', '409628216566168', NULL, NULL, '', 'Kim Thắng', NULL, NULL, 'https://graph.facebook.com/409628216566168/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-08 21:52:47', '2019-08-24 09:34:38'),
(232, 'google', '110004422826675970217', NULL, NULL, 'thienbang180899@gmail.com', 'Băng Thiên', NULL, NULL, 'https://lh4.googleusercontent.com/-ZfcDP35B5KI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdjIsiSGdfy2I5tKTAkEv7Z3xUkEw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-10 09:39:18', '2019-08-10 09:39:18'),
(233, 'facebook', '640629179783614', NULL, NULL, '', 'Nhã Đan', NULL, NULL, 'https://graph.facebook.com/640629179783614/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-10 18:12:00', '2019-08-26 21:15:44'),
(234, 'facebook', '2418964681726671', NULL, NULL, '', 'Hùynh Thị Mỹ Nga', NULL, NULL, 'https://graph.facebook.com/2418964681726671/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-11 07:22:04', '2019-08-14 07:08:17'),
(235, 'facebook', '2428846677396992', 87, NULL, 'anhkenter1999@gmail.com', 'Nguyễn Hoàng Anh', NULL, NULL, 'https://graph.facebook.com/2428846677396992/picture', 1, '1999-02-04', NULL, NULL, 1, 1, '2019-08-12 20:03:31', '2019-08-14 05:50:45'),
(236, 'google', '117327301554294124608', 88, NULL, 'thuyhuynh3301@gmail.com', 'Thúy Huỳnh', NULL, NULL, 'https://lh6.googleusercontent.com/-yqw-ZlROqAE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdvox5-TtA1rsvMvB_X4z0WVT3EzA/photo.jpg', 1, '2001-03-03', NULL, NULL, 1, 1, '2019-08-12 21:15:26', '2019-08-12 21:15:26'),
(237, 'facebook', '483144078900057', 89, NULL, 'nhodu2000@gmail.com', 'Vân Nguyên', NULL, NULL, 'https://graph.facebook.com/483144078900057/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-12 21:39:27', '2019-08-20 10:02:50'),
(238, 'facebook', '1365084930322397', NULL, NULL, 'pemeokt1999@gmail.com', 'Khánh Tâm', NULL, NULL, 'https://graph.facebook.com/1365084930322397/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-13 09:07:07', '2019-08-13 09:58:58'),
(239, 'google', '105675463225866551803', 90, NULL, 'minhnhat28042001@gmail.com', 'Nhật Đỗ', NULL, NULL, 'https://lh4.googleusercontent.com/-UZSf4xIFPGo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3reKFE42NYcH94O8lFr-jmUiC5b2-Q/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-13 18:37:42', '2019-08-14 12:21:27'),
(240, 'facebook', '106011890759628', NULL, NULL, '', 'Trần Trần', NULL, NULL, 'https://graph.facebook.com/106011890759628/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-13 21:07:41', '2019-08-15 14:18:26'),
(241, 'facebook', '333421424231121', NULL, NULL, '', 'Nguyễn Ngọc', NULL, NULL, 'https://graph.facebook.com/333421424231121/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-14 11:12:01', '2019-08-14 11:13:46'),
(242, 'facebook', '116833686326545', NULL, NULL, '', 'Nguyễn Thị Ngàn', NULL, NULL, 'https://graph.facebook.com/116833686326545/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-14 18:47:04', '2019-08-14 18:47:04'),
(243, 'facebook', '712747919170284', NULL, NULL, '', 'Khôi Văn Phan', NULL, NULL, 'https://graph.facebook.com/712747919170284/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-14 21:20:46', '2019-08-14 21:20:46'),
(244, 'google', '103966781878001460776', 91, NULL, 'loanthan96@gmail.com', 'Thân Loan', NULL, NULL, 'https://lh3.googleusercontent.com/-rlSvrKdAmBI/AAAAAAAAAAI/AAAAAAAALBg/TDql8VAZRbY/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-15 14:18:37', '2019-08-15 22:42:07'),
(245, 'facebook', '192796655060887', 92, NULL, 'tam220061@gmail.com', 'Tâm Tâm', NULL, NULL, 'https://graph.facebook.com/192796655060887/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-15 20:19:30', '2019-08-23 15:57:14'),
(246, 'facebook', '879221689144166', NULL, NULL, '', 'Phương Nguyên', NULL, NULL, 'https://graph.facebook.com/879221689144166/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-15 22:59:06', '2019-08-15 22:59:06'),
(247, 'facebook', '150213972730373', NULL, NULL, '', 'Hạ Nguyên', NULL, NULL, 'https://graph.facebook.com/150213972730373/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-16 09:18:52', '2019-08-16 09:18:52'),
(248, 'facebook', '1458219977653780', 93, NULL, 'phuonguyenbtxdalat@gmail.com', 'Phuong Uyen', NULL, NULL, 'https://graph.facebook.com/1458219977653780/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-16 18:21:42', '2019-08-16 18:21:42'),
(249, 'google', '101089199676308876204', 94, NULL, 'uyenchi1710@gmail.com', 'chi lê', NULL, NULL, 'https://lh6.googleusercontent.com/-LovpBj57sTY/AAAAAAAAAAI/AAAAAAAAABE/zdDIaUUbWNc/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-18 17:25:44', '2019-08-18 21:03:02'),
(250, 'google', '118356166224569196881', 95, NULL, 'hoaihuylenguyen@gmail.com', 'Hoai Huy Le Nguyen', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mDy8PH595AtGIp69gENTD1XtxM6qpfP_xnvar-u', 1, NULL, NULL, NULL, 1, 1, '2019-08-18 19:56:38', '2019-08-24 17:38:30'),
(251, 'facebook', '1351260931687664', 96, NULL, 'vananhpham5898@gmail.com', 'Vân Anh Phạm', NULL, NULL, 'https://graph.facebook.com/1351260931687664/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-19 19:11:56', '2019-08-19 19:53:08'),
(252, 'facebook', '2356550084613317', NULL, NULL, 'anpingpong99@yahoo.com.vn', 'Trương Thùy An', NULL, NULL, 'https://graph.facebook.com/2356550084613317/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-19 21:23:01', '2019-08-19 21:23:01'),
(253, 'facebook', '1320913384730736', NULL, NULL, '', 'Văn Tâm', NULL, NULL, 'https://graph.facebook.com/1320913384730736/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-20 19:11:07', '2019-08-20 19:11:07'),
(254, 'facebook', '139053590640710', NULL, NULL, '', 'Su Bin', NULL, NULL, 'https://graph.facebook.com/139053590640710/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-20 21:19:59', '2019-08-20 21:19:59'),
(255, 'facebook', '2987138394843929', 97, NULL, 'cobehoahong99@gmail.com', 'Phạm Hoa', NULL, NULL, 'https://graph.facebook.com/2987138394843929/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-21 14:06:43', '2019-08-22 20:23:59'),
(256, 'facebook', '1380310665470600', NULL, NULL, 'cunconngonghinh98@gmail.com', 'Huyền Nguyễn', NULL, NULL, 'https://graph.facebook.com/1380310665470600/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-21 20:11:40', '2019-08-23 07:49:00'),
(257, 'facebook', '975074916157044', NULL, NULL, '', 'Nhưư Ýý', NULL, NULL, 'https://graph.facebook.com/975074916157044/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-21 22:02:58', '2019-08-22 17:12:00'),
(258, 'google', '112726227906026096254', 101, NULL, 'lychiu02091997@gmail.com', 'Ly Hồ', NULL, NULL, 'https://lh5.googleusercontent.com/-xS7Br05vxUc/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdogPAgWQQ8dgDzPsF4fSjs0WCefw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-21 23:17:31', '2019-08-22 16:47:14'),
(259, 'google', '101203146694778618036', 98, NULL, 'thanhnhung18499@gmail.com', 'Thanh Nhung Đỗ', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mCUDkEf-_AIUWzCaGwaCHsHf8CwAyg82rFZE8Au', 1, NULL, NULL, NULL, 1, 1, '2019-08-22 08:49:41', '2019-08-22 08:49:41'),
(260, 'facebook', '2403768686559952', 100, 1, 'cobebuongbinh.me@gmail.com', 'Trinh Huỳnh', NULL, NULL, 'https://graph.facebook.com/2403768686559952/picture', 1, '2000-03-10', NULL, NULL, 1, 1, '2019-08-22 09:02:34', '2019-09-01 17:57:13'),
(261, 'facebook', '883719535329622', NULL, NULL, '', 'Võ Nguyên Tường Vi', NULL, NULL, 'https://graph.facebook.com/883719535329622/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-22 09:03:15', '2019-08-22 22:56:13'),
(262, 'google', '114447064091859668413', 103, 3, 'vieclamtheogiocit@gmail.com', 'Việc Làm Theo Giờ', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAD85sIsjUw4ar7dtxIkEAt0e_jL0e23pR9j7oo', 1, '1998-04-08', NULL, NULL, 1, 1, '2019-08-22 20:25:18', '2019-08-24 17:29:58'),
(263, 'facebook', '1136533313221200', 105, NULL, 'lethanhnghiem2000@yahoo.com', 'Thanh Nghiêm', NULL, NULL, 'https://graph.facebook.com/1136533313221200/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 09:58:38', '2019-08-23 09:58:38'),
(264, 'google', '108646234558149305437', 106, NULL, 'tienpro2001ntp@gmail.com', 'Tiến Phan Nhật', NULL, NULL, 'https://lh6.googleusercontent.com/-zE2WyDp3Qok/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcotMwiI9MalzTkxY59ggKfsj0iDQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 10:52:37', '2019-08-23 10:52:37'),
(265, 'facebook', '344702513139317', 151, 12, 'tieuthienthien36@gmail.com', 'Lam Nguyễn', NULL, NULL, 'https://graph.facebook.com/344702513139317/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 12:26:04', '2019-08-29 22:23:36'),
(266, 'facebook', '1188621251324339', 108, NULL, 'mangaka_iris@yahoo.com.vn', 'Trần Lê Tuyết Hạnh', NULL, NULL, 'https://graph.facebook.com/1188621251324339/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 20:38:51', '2019-08-23 20:38:51'),
(267, 'facebook', '2468952936673482', NULL, NULL, '', 'Hà Nguyễn', NULL, NULL, 'https://graph.facebook.com/2468952936673482/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 21:07:11', '2019-08-29 09:59:21'),
(268, 'facebook', '888570908173132', 109, NULL, 'thuhuong2122002@yahoo.com.vn', 'Thu Huong', NULL, NULL, 'https://graph.facebook.com/888570908173132/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 21:09:46', '2019-08-23 21:09:46'),
(269, 'facebook', '829986464061786', 110, NULL, 'thoahuynh2701@gmail.com', 'Huỳnh Thoa', NULL, NULL, 'https://graph.facebook.com/829986464061786/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 21:11:25', '2019-08-23 21:11:25'),
(270, 'facebook', '726885254421234', NULL, NULL, '', 'Minhh Hiếuu', NULL, NULL, 'https://graph.facebook.com/726885254421234/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 21:17:25', '2019-09-02 16:14:00'),
(271, 'facebook', '952335645121849', 111, NULL, 'phanthianmai@gmail.com', 'An Mai', NULL, NULL, 'https://graph.facebook.com/952335645121849/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-23 21:29:38', '2019-08-23 21:29:38'),
(272, 'google', '101012093282386690958', 112, NULL, 'nhilovebanbe3107@gmail.com', 'Nhi Lê', NULL, NULL, 'https://lh3.googleusercontent.com/-B5hV-OXLzv4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcQMaiu73vMF-dfpT5pVeqrIedkXw/photo.jpg', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-23 23:17:59', '2019-08-23 23:17:59'),
(273, 'facebook', '933873733615695', 113, NULL, 'himchan9b.dtnt.ct@gmail.com', 'Hít', NULL, NULL, 'https://graph.facebook.com/933873733615695/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-24 08:26:04', '2019-08-26 21:02:27'),
(274, 'facebook', '2393699684220231', 114, 5, '', 'Hoàng Thị Ngọc Ân', NULL, NULL, 'https://graph.facebook.com/2393699684220231/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-24 16:47:39', '2019-08-24 17:34:00'),
(276, 'google', '103051943044981845644', 116, 7, 'xthuy64@gmail.com', 'Thuy Nguyen Xuan', NULL, NULL, 'https://lh5.googleusercontent.com/-4g4Jv6grZlg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdPAH1xXalAfGcyMinT3Nzinuq7wQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-25 08:07:31', '2019-08-25 08:07:31'),
(277, 'facebook', '2181235308844074', 117, 8, 'deeddwon@gmail.com', 'Minh Hiếu', NULL, NULL, 'https://graph.facebook.com/2181235308844074/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-25 18:30:11', '2019-08-25 18:30:11'),
(278, 'facebook', '2456906144545014', 118, NULL, 'senbayvienngocrong@zing.vn', 'Khôi Nguyễn', NULL, NULL, 'https://graph.facebook.com/2456906144545014/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-25 19:40:18', '2019-08-25 19:40:18'),
(279, 'facebook', '2475367196026047', 119, NULL, '', 'Gu Pink', NULL, NULL, 'https://graph.facebook.com/2475367196026047/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-26 00:02:44', '2019-08-26 00:02:44'),
(280, 'google', '103083947493031092891', 121, NULL, 'kimxinhpham98@gmail.com', 'kim xinh', NULL, NULL, 'https://lh5.googleusercontent.com/-ja30SIrwAO8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcfx-2XtHIhBNC75qaHNLcfaU9kDA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-26 21:45:29', '2019-08-26 21:45:29'),
(281, 'facebook', '1147539525438752', 122, NULL, 'khongthuhan97@gmail.com', 'Hồ Thanh Lâm', NULL, NULL, 'https://graph.facebook.com/1147539525438752/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-26 22:57:13', '2019-08-26 22:57:13'),
(282, 'facebook', '668788776953033', 123, NULL, 'catherinepham3920@gmail.com', 'Đan Đan', NULL, NULL, 'https://graph.facebook.com/668788776953033/picture', 1, '2000-03-09', NULL, NULL, 1, 1, '2019-08-26 23:30:16', '2019-09-03 06:46:10');
INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, `fullname`, `token`, `password`, `picture`, `gender`, `birthday`, `link`, `phone`, `spam`, `active`, `created`, `modified`) VALUES
(283, 'google', '104889976731336114629', 124, NULL, 'nguyenminhhieu.qbh11@gmail.com', 'Min Hiếu Nguyễn', NULL, NULL, 'https://lh5.googleusercontent.com/-bEODgX-Vp-A/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfJ94V4fdZOTV8g1OPkhw-URBcFCQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 00:00:10', '2019-09-03 08:24:15'),
(284, 'facebook', '2342663805993525', NULL, NULL, '', 'Tuyết Ngân Nhỉ', NULL, NULL, 'https://graph.facebook.com/2342663805993525/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 00:10:07', '2019-08-27 00:10:07'),
(285, 'facebook', '2406472682924439', 125, NULL, 'nguoidinhattinhyeu213@gmail.com', 'Gió', NULL, NULL, 'https://graph.facebook.com/2406472682924439/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 01:01:38', '2019-08-29 12:49:45'),
(286, 'google', '101448787481783416310', 127, 9, 'khanhtri009@gmail.com', 'Khanh Trì Nguyễn', NULL, NULL, 'https://lh3.googleusercontent.com/-Tweg6GMJs4E/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfkbyskvASowdiJuJm0rIEKBTu9vg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 07:51:35', '2019-08-27 07:51:35'),
(287, 'facebook', '1365097986986542', 128, NULL, 'khungkhung70@gmail.com', 'Chi Vy', NULL, NULL, 'https://graph.facebook.com/1365097986986542/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 08:16:52', '2019-08-27 08:16:52'),
(288, 'facebook', '2438441559767944', 129, NULL, 'thanhphucn085@gmail.com', 'Phúc Nguyễn', NULL, NULL, 'https://graph.facebook.com/2438441559767944/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 09:09:00', '2019-08-27 21:06:27'),
(289, 'facebook', '954300611581874', NULL, NULL, '', 'Thanh Linh', NULL, NULL, 'https://graph.facebook.com/954300611581874/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 11:18:09', '2019-09-06 08:52:18'),
(290, 'facebook', '910029082663454', 130, NULL, 'ngoc.hanh29012000@gmail.com', 'Nguyễn Ngọc Hạnh', NULL, NULL, 'https://graph.facebook.com/910029082663454/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 11:30:25', '2019-09-03 21:25:31'),
(291, 'google', '100253493434882818722', 131, NULL, 'xtruong2799@gmail.com', 'Trường Lê', NULL, NULL, 'https://lh3.googleusercontent.com/-8hb9R8UHogk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd5ZMcXuDYgstTgPeaF5RN7K23lfA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 13:45:06', '2019-08-27 13:45:06'),
(292, 'facebook', '942800049415883', NULL, NULL, '', 'Thúy Hà', NULL, NULL, 'https://graph.facebook.com/942800049415883/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 14:32:36', '2019-08-28 18:30:43'),
(293, 'facebook', '974642559546534', NULL, NULL, '', 'Như Ý Lê', NULL, NULL, 'https://graph.facebook.com/974642559546534/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-27 17:15:02', '2019-08-27 17:15:02'),
(294, 'facebook', '2506874126213879', 132, NULL, 'thanhlamnguyen1999@gmail.com', 'Idiotic Pig', NULL, NULL, 'https://graph.facebook.com/2506874126213879/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-28 07:48:57', '2019-08-28 07:48:57'),
(295, 'facebook', '179936379714493', 144, 10, '', 'Vĩnh Hoàng', NULL, NULL, 'https://graph.facebook.com/179936379714493/picture', 1, '2000-04-01', NULL, NULL, 1, 1, '2019-08-29 09:33:50', '2019-08-29 20:52:36'),
(296, 'facebook', '2364479083814873', 134, NULL, 'wwejohncenavinh@yahoo.com', 'Nguyễn Quang Vinh', NULL, NULL, 'https://graph.facebook.com/2364479083814873/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 09:39:17', '2019-08-29 10:47:04'),
(297, 'facebook', '941951236161241', 135, NULL, 'lethingochien96tcv@gmail.com', 'Ngọc Hiền', NULL, NULL, 'https://graph.facebook.com/941951236161241/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 09:50:41', '2019-08-29 09:50:41'),
(298, 'facebook', '373919783285804', 136, NULL, 'nguyenvanthanhtung1426@gmail.com', 'Nguyễn Văn Thanh Tùng', NULL, NULL, 'https://graph.facebook.com/373919783285804/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 10:42:26', '2019-08-30 21:32:56'),
(299, 'facebook', '799203143828423', 137, NULL, 'nhattan851@gmail.com', 'Nhật Tân', NULL, NULL, 'https://graph.facebook.com/799203143828423/picture', 1, '2001-08-05', NULL, NULL, 1, 1, '2019-08-29 10:59:34', '2019-08-29 10:59:34'),
(300, 'facebook', '2450928328522605', 138, NULL, 'bupb3thuytinh2000@gmail.com', 'Minh Tâm', NULL, NULL, 'https://graph.facebook.com/2450928328522605/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-29 11:10:59', '2019-08-29 11:58:57'),
(301, 'facebook', '192563341764152', NULL, NULL, '', 'Nu Nu', NULL, NULL, 'https://graph.facebook.com/192563341764152/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 11:18:10', '2019-09-02 19:11:46'),
(302, 'facebook', '1201322156721030', 139, NULL, 'phanlyly.210297@gmail.com', 'Ly Ly', NULL, NULL, 'https://graph.facebook.com/1201322156721030/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 11:32:14', '2019-08-29 11:32:14'),
(303, 'google', '111558159697616653885', 140, NULL, 'minsg0307@gmail.com', 'Thii Minh', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mD0mtohunGqp8PWEnMLleihzD6VRfyqiPOd4pl_2A', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-29 11:38:40', '2019-08-29 21:15:06'),
(304, 'google', '114587627850643372310', 141, NULL, 'bibanhbaooo@gmail.com', 'Bi Nguyễn', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mD998sVxTXSKMXzcmaK91xajuI4p1tRc4-fqNZm', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-29 11:57:56', '2019-08-30 20:57:14'),
(305, 'facebook', '1117714301761556', 142, NULL, 'hoanglongvsg@gmail.com', 'Long Hoàng', NULL, NULL, 'https://graph.facebook.com/1117714301761556/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 12:00:21', '2019-08-29 12:00:21'),
(306, 'facebook', '2544166459205572', 145, NULL, 'duynam2301@gmail.com', 'Nam Cucu', NULL, NULL, 'https://graph.facebook.com/2544166459205572/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 14:04:48', '2019-08-29 14:04:48'),
(307, 'facebook', '676861102794056', NULL, NULL, '', 'Hồ Thị Thành', NULL, NULL, 'https://graph.facebook.com/676861102794056/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 14:07:59', '2019-08-29 20:35:55'),
(308, 'facebook', '1887239774756255', NULL, NULL, '', 'Thanh Tâm', NULL, NULL, 'https://graph.facebook.com/1887239774756255/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 15:43:34', '2019-08-29 15:43:34'),
(309, 'facebook', '1340678056098835', 146, NULL, 'chieuxuannguyen1999@gmail.com', 'Nguyễn Chiều Xuân', NULL, NULL, 'https://graph.facebook.com/1340678056098835/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 18:10:01', '2019-08-29 18:10:01'),
(310, 'facebook', '2414837252096832', 148, 11, 'cuonvnguyen5@gmail.com', 'Quốc Cườngg', NULL, NULL, 'https://graph.facebook.com/2414837252096832/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 19:43:14', '2019-09-03 18:41:04'),
(311, 'facebook', '2383255641929052', 149, NULL, 'tnga2206@gmail.com', 'Nguyễn Thu Nga', NULL, NULL, 'https://graph.facebook.com/2383255641929052/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-29 19:44:17', '2019-08-29 19:44:17'),
(312, 'facebook', '2135839330054837', 150, NULL, 'tienvietvu1999@gmail.com', 'Thanh Thúy', NULL, NULL, 'https://graph.facebook.com/2135839330054837/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-29 19:50:03', '2019-08-31 10:29:40'),
(313, 'facebook', '102614821118920', NULL, NULL, '', 'Annie Phạm', NULL, NULL, 'https://graph.facebook.com/102614821118920/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-29 21:48:34', '2019-08-29 21:48:34'),
(314, 'google', '113998611575369618067', 152, NULL, 'trangyeuquy0407@gmail.com', 'Trang Trần', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mD_-4-Ct9McKSKROywhuZMTEaYAGoCBK4_Md84P', 1, '1999-04-07', NULL, NULL, 1, 1, '2019-08-29 22:47:29', '2019-09-02 17:13:00'),
(315, 'facebook', '2369688506577032', 153, NULL, 'vjtkyungsoo@gmail.com', 'Thúy Quỳnh', NULL, NULL, 'https://graph.facebook.com/2369688506577032/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-30 08:36:26', '2019-08-30 09:49:24'),
(316, 'facebook', '2094719597490020', 154, NULL, 'vanthufacebook123@gmail.com', 'Văn Nguyễn Quỳnh Thư', NULL, NULL, 'https://graph.facebook.com/2094719597490020/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-30 13:32:19', '2019-08-30 13:32:19'),
(317, 'google', '106411386655547710881', 155, NULL, 'quynhthuripper@gmail.com', 'Thư Quỳnh', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mBtKxNXK_F7Ym8IxReNVDOPVg5xkeD83XOEs9Yytg', 1, '2001-01-04', NULL, NULL, 1, 1, '2019-08-30 13:37:41', '2019-08-30 13:37:41'),
(318, 'facebook', '2488161688086625', NULL, NULL, 'ngocanhphan1710@gmail.com', 'Ngọc Anh Phan', NULL, NULL, 'https://graph.facebook.com/2488161688086625/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-30 20:34:09', '2019-08-30 20:34:09'),
(319, 'facebook', '2438105779810887', 156, NULL, 'uyento220999@gmail.com', 'Uyên Tô', NULL, NULL, 'https://graph.facebook.com/2438105779810887/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 09:27:46', '2019-08-31 20:42:54'),
(320, 'facebook', '2437396476506755', 157, NULL, 'lethituyetvy.tn95@gmail.com', 'Vy Chucky', NULL, NULL, 'https://graph.facebook.com/2437396476506755/picture', 1, '2001-08-11', NULL, NULL, 1, 1, '2019-08-31 09:48:10', '2019-09-02 19:10:37'),
(321, 'google', '108424425350939823559', 162, 13, 'phanhuyb8@gmail.com', 'huy Phan', NULL, NULL, 'https://lh5.googleusercontent.com/-mxFl2wPgBM4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rd5n0ppDngzai-Sre07yGFaInMneg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 11:58:25', '2019-09-04 14:31:33'),
(322, 'google', '105677128042381513866', 159, NULL, 'vothiloan2k@gmail.com', 'LOAN VÕ', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAOXmzS9oh05XVqKizTUq5CFgMdKkbW9XCsgBQU', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 13:33:40', '2019-08-31 13:33:40'),
(323, 'google', '114149797755834652290', 160, NULL, 'bokunopicoismylife12b7@gmail.com', 'Tài Thái', NULL, NULL, 'https://lh6.googleusercontent.com/-vL7UoKCPIY4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdQMfw17A36K2HonrB2IZPD_5nZ0A/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 14:30:47', '2019-08-31 14:30:47'),
(324, 'facebook', '152312589185395', NULL, NULL, '', 'Mắm Ruốc', NULL, NULL, 'https://graph.facebook.com/152312589185395/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 17:00:51', '2019-08-31 17:00:51'),
(325, 'facebook', '122787182403560', 161, NULL, 'studywashley@gmail.com', 'Ashley Pham', NULL, NULL, 'https://graph.facebook.com/122787182403560/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-08-31 17:16:21', '2019-09-04 12:12:50'),
(326, 'facebook', '432614874264717', NULL, NULL, '', 'Việt Long', NULL, NULL, 'https://graph.facebook.com/432614874264717/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 18:23:23', '2019-08-31 18:23:23'),
(327, 'facebook', '2409062736045274', NULL, NULL, 'huyphan2362@gmail.com', 'Huy Phan', NULL, NULL, 'https://graph.facebook.com/2409062736045274/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 18:39:22', '2019-08-31 18:39:22'),
(328, 'facebook', '1349704505240104', NULL, NULL, '', 'Ngọc Ánh', NULL, NULL, 'https://graph.facebook.com/1349704505240104/picture', 1, NULL, NULL, NULL, 1, 1, '2019-08-31 18:41:22', '2019-08-31 18:41:22'),
(329, 'facebook', '515349262366458', 163, NULL, 'angelanguyenkute2001@gmail.com', 'Nguyễn Như Hảo', NULL, NULL, 'https://graph.facebook.com/515349262366458/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-01 11:41:40', '2019-09-01 12:45:01'),
(330, 'facebook', '927509544267775', NULL, NULL, '', 'Nhi Trần', NULL, NULL, 'https://graph.facebook.com/927509544267775/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-01 12:18:16', '2019-09-01 12:18:16'),
(331, 'google', '104247603645600386228', 164, NULL, 'lethutrang160920@gmail.com', 'trang thu', NULL, NULL, 'https://lh5.googleusercontent.com/-VpH3aE_7eL0/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdHPyMpDm88wTKNNgkACbLxW_hwVw/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-01 13:11:27', '2019-09-02 11:55:24'),
(332, 'google', '105093376844513943044', 204, 22, 'rymheo1312@gmail.com', 'Thúy Vy', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAMZ8Ky7sOaWqHZgnUDpyIQx5K_wocrvcYAzXG8_w', 1, NULL, NULL, NULL, 1, 1, '2019-09-01 14:03:40', '2019-09-06 07:32:51'),
(333, 'facebook', '2471184026434507', 166, NULL, 'tran9259@gmail.com', 'Trần Thắng', NULL, NULL, 'https://graph.facebook.com/2471184026434507/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-01 23:23:03', '2019-09-01 23:23:03'),
(334, 'facebook', '540317720148255', NULL, NULL, '', 'Ky Nè', NULL, NULL, 'https://graph.facebook.com/540317720148255/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 15:24:55', '2019-09-04 12:58:22'),
(335, 'facebook', '1368689476633916', 168, NULL, 'iphone4s.1280@gmail.com', 'Huynh Trần', NULL, NULL, 'https://graph.facebook.com/1368689476633916/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 15:56:10', '2019-09-02 15:56:10'),
(336, 'facebook', '750477535451093', 170, 15, 'hvy2449@gmail.com', 'Mộc Trà', NULL, NULL, 'https://graph.facebook.com/750477535451093/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 17:26:08', '2019-09-02 19:01:21'),
(337, 'facebook', '715308648892337', NULL, NULL, '', 'Huỳnh Tom', NULL, NULL, 'https://graph.facebook.com/715308648892337/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 18:41:02', '2019-09-02 18:41:02'),
(338, 'facebook', '2414843388773986', 173, 16, '', 'Phuong Nhung', NULL, NULL, 'https://graph.facebook.com/2414843388773986/picture', 1, '2000-02-09', NULL, NULL, 1, 1, '2019-09-02 18:56:03', '2019-09-05 09:03:12'),
(339, 'facebook', '355591018663777', NULL, NULL, '', 'Kiên Hồ', NULL, NULL, 'https://graph.facebook.com/355591018663777/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 18:58:08', '2019-09-05 07:10:02'),
(340, 'google', '115919362790784064114', 171, NULL, 'clarissethuc1206@gmail.com', 'Thục Clarisse', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAZILRJ87R2-Q17YJW0QGmy-k0xj-0Tm1npETKlBEQ', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 19:05:05', '2019-09-02 19:05:05'),
(341, 'google', '112180493131409712891', 174, NULL, 'kimthoa10.3ltt@gmail.com', 'Thoa Nguyễn Thị Kim', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mABdCP7pb3ZMh-xUCKCagmzQ9kTeRPRbgZH015DyA', 1, '2000-10-10', NULL, NULL, 1, 1, '2019-09-02 19:07:48', '2019-09-03 10:54:27'),
(342, 'google', '116014102677692392093', 175, NULL, 'analogvn2@gmail.com', 'Nhật Trần', NULL, NULL, 'https://lh3.googleusercontent.com/-cWrcE35UJl8/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfh51s7jk5xQhyMBnN0jhOfuCBqog/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 19:08:34', '2019-09-02 19:08:34'),
(343, 'google', '107339797042841977793', 176, NULL, 'huychuong1308@gmail.com', 'Huy Trương Đình', NULL, NULL, 'https://lh3.googleusercontent.com/-DhvV8RAB2hY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfkGvfIdTxHbFcFqD0s0dh10DeXvA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 19:10:24', '2019-09-02 19:10:24'),
(344, 'facebook', '1154099288108845', 177, NULL, 'b.camvan@yahoo.com', 'Cam van Bui', NULL, NULL, 'https://graph.facebook.com/1154099288108845/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 19:15:44', '2019-09-02 19:15:44'),
(345, 'facebook', '912234342483734', NULL, NULL, '', 'Mi Mi', NULL, NULL, 'https://graph.facebook.com/912234342483734/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 19:24:06', '2019-09-02 19:24:06'),
(346, 'google', '104860299740697406644', 179, 17, 'nguyngiabao10@gmail.com', 'gia bảo nguyễn', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mA604Oo1PXZTi1Z4NR_DuLo0T8hOY0fBJyUvMW5', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 19:36:42', '2019-09-03 15:37:53'),
(347, 'facebook', '909468509409037', 181, 18, 'nphuochg@gmail.com', 'Như Phước', NULL, NULL, 'https://graph.facebook.com/909468509409037/picture', 1, '2001-01-02', NULL, NULL, 1, 1, '2019-09-02 19:37:25', '2019-09-05 12:40:22'),
(348, 'facebook', '1417916758373432', 182, NULL, 'phanuyennhi5@gmail.com', 'Nhii', NULL, NULL, 'https://graph.facebook.com/1417916758373432/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 20:26:49', '2019-09-02 20:26:49'),
(349, 'facebook', '902962850061239', 183, NULL, 'doanthuy131299@gmail.com', 'Đoàn Thủy', NULL, NULL, 'https://graph.facebook.com/902962850061239/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 20:28:00', '2019-09-04 09:58:21'),
(350, 'google', '117393368260574933421', 184, NULL, 'lthuthuy248@gmail.com', 'Thu Thủy Lê', NULL, NULL, 'https://lh4.googleusercontent.com/-kYdwclDS0fE/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdsmnvtObJ_nVfJDwTtEMCr5VenaQ/photo.jpg', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 21:22:27', '2019-09-02 21:22:27'),
(351, 'facebook', '1165495870304488', 185, NULL, 'huyenlove7g@yahoo.com', 'Trần Thu Huyền', NULL, NULL, 'https://graph.facebook.com/1165495870304488/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 21:41:04', '2019-09-03 20:53:13'),
(352, 'facebook', '963843290681008', 186, NULL, 'ngatamahh@gmail.com', 'Hằng Nga', NULL, NULL, 'https://graph.facebook.com/963843290681008/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 21:41:38', '2019-09-02 21:41:38'),
(353, 'facebook', '872419356463179', NULL, NULL, '', 'Phúc Lê', NULL, NULL, 'https://graph.facebook.com/872419356463179/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 21:55:50', '2019-09-03 12:44:06'),
(354, 'facebook', '2466860576885081', NULL, NULL, '', 'Trần Duy', NULL, NULL, 'https://graph.facebook.com/2466860576885081/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 21:57:42', '2019-09-02 21:57:42'),
(355, 'facebook', '122286125797656', NULL, NULL, '', 'Trà Mi', NULL, NULL, 'https://graph.facebook.com/122286125797656/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 22:03:40', '2019-09-03 08:46:57'),
(356, 'google', '111252814825518143993', 187, NULL, 'huyenyi2681@gmail.com', 'Yi Huyền', NULL, NULL, 'https://lh5.googleusercontent.com/-thL82YiF-BQ/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdYiSo-zPodaC9ue2Ebd7kBC2Gd_Q/photo.jpg', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-02 22:11:27', '2019-09-05 18:15:24'),
(357, 'facebook', '872546983127006', 188, NULL, 'qanh4340@gmail.com', 'Quynh Anh', NULL, NULL, 'https://graph.facebook.com/872546983127006/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 23:07:43', '2019-09-02 23:07:43'),
(358, 'facebook', '716157335569425', NULL, NULL, '', 'Mai Thi', NULL, NULL, 'https://graph.facebook.com/716157335569425/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-02 23:29:54', '2019-09-02 23:29:54'),
(359, 'facebook', '1353000794874236', NULL, NULL, '', 'Thanh Thủy', NULL, NULL, 'https://graph.facebook.com/1353000794874236/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 00:05:34', '2019-09-04 17:12:19'),
(360, 'facebook', '768389976897497', 189, NULL, 'minhtran4589@gmail.com', 'Trần Thị Minh Trân', NULL, NULL, 'https://graph.facebook.com/768389976897497/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 00:24:09', '2019-09-03 00:24:09'),
(361, 'facebook', '912948045705200', 190, NULL, 'chinnguyen.davd@gmail.com', 'Nguyễn Chín', NULL, NULL, 'https://graph.facebook.com/912948045705200/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 00:54:20', '2019-09-03 00:54:20'),
(362, 'facebook', '829788110749498', NULL, NULL, '', 'Dương Ngọc Ánh', NULL, NULL, 'https://graph.facebook.com/829788110749498/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 07:07:28', '2019-09-03 07:07:28'),
(363, 'facebook', '1196433193892622', 191, NULL, 'heoquaysua.hvq@gmail.com', 'Quỳnh Huỳnh', NULL, NULL, 'https://graph.facebook.com/1196433193892622/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 07:40:34', '2019-09-03 16:49:19'),
(364, 'google', '106733043896948198143', 192, NULL, 'ngthhuy231299@gmail.com', 'Huy Nguyễn', NULL, NULL, 'https://lh4.googleusercontent.com/-X_1n0QXuR_s/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rczFxlYfGAJYFFis_CTGMV2g3Sx_g/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 08:33:09', '2019-09-03 08:33:09'),
(365, 'facebook', '186563762370354', NULL, NULL, '', 'Thanh Tuyền', NULL, NULL, 'https://graph.facebook.com/186563762370354/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 10:06:50', '2019-09-03 10:06:50'),
(366, 'facebook', '159863505069857', 194, 19, '', 'Đỗ Châu Minh', NULL, NULL, 'https://graph.facebook.com/159863505069857/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 10:47:42', '2019-09-03 10:47:42'),
(367, 'google', '111043800473810259919', 195, NULL, 'ngovandat261198@gmail.com', 'Đạt Ngô Văn', NULL, NULL, 'https://lh4.googleusercontent.com/-_DdByq4vgBk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rflWGaQobStU9WXd-QakqSkALwQVQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 11:15:06', '2019-09-03 11:15:06'),
(368, 'facebook', '683391318807537', 196, NULL, 'thinh.huynhngoc.97@gmail.com', 'Ngọc Thịnh', NULL, NULL, 'https://graph.facebook.com/683391318807537/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 11:16:57', '2019-09-03 18:17:35'),
(369, 'facebook', '506649469906158', NULL, NULL, '', 'Trần Tú Uyên', NULL, NULL, 'https://graph.facebook.com/506649469906158/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 11:40:58', '2019-09-03 11:40:58'),
(370, 'facebook', '696334607502555', 197, NULL, 'buiminhnhan0@gmail.com', 'Bùi Minh Nhân', NULL, NULL, 'https://graph.facebook.com/696334607502555/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 11:42:49', '2019-09-03 11:42:49'),
(371, 'google', '115254365215356840010', 198, NULL, 'danghang280717@gmail.com', 'Hang Dang', NULL, NULL, 'https://lh4.googleusercontent.com/-TP8wKjsHBEk/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3re6O0HAo6n63gWvDIQulTew-JeJyg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 12:13:17', '2019-09-03 12:13:17'),
(372, 'facebook', '966275403726929', NULL, NULL, '', 'Trần Thị Thu Hương', NULL, NULL, 'https://graph.facebook.com/966275403726929/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 12:30:04', '2019-09-03 12:30:04'),
(373, 'facebook', '1293980877444399', 200, 20, 'mylinh120797@gmail.com', 'Mỹ Linh', NULL, NULL, 'https://graph.facebook.com/1293980877444399/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 12:33:30', '2019-09-03 12:33:30'),
(374, 'facebook', '119310032771666', NULL, NULL, 'tranthihientrang952001@gmail.com', 'Trần Thị Hiền Trang', NULL, NULL, 'https://graph.facebook.com/119310032771666/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 12:49:39', '2019-09-03 12:49:39'),
(375, 'facebook', '498223964080859', NULL, NULL, '', 'VânAnh RB', NULL, NULL, 'https://graph.facebook.com/498223964080859/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 13:37:19', '2019-09-03 13:37:19'),
(376, 'facebook', '1103846399805997', 203, NULL, 'trankimtien0000@gmail.com', 'Trần T.Kim Tiến', NULL, NULL, 'https://graph.facebook.com/1103846399805997/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 14:22:45', '2019-09-03 14:22:45'),
(377, 'facebook', '195033258189855', 205, NULL, 'phanminhthi2903@gmail.com', 'Phan Minh Thi', NULL, NULL, 'https://graph.facebook.com/195033258189855/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 14:51:27', '2019-09-03 14:51:27'),
(378, 'facebook', '1407625579391240', 207, 23, 'giaminh01122006@gmail.com', 'Nguyễn Uyên', NULL, NULL, 'https://graph.facebook.com/1407625579391240/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 14:58:37', '2019-09-03 14:58:37'),
(379, 'facebook', '680407419100895', 208, NULL, 'trnthanhbnh@gmail.com', 'Nguyễn Thị Kiều Diễm', NULL, NULL, 'https://graph.facebook.com/680407419100895/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 15:03:05', '2019-09-03 15:03:05'),
(380, 'facebook', '757628048005295', 209, NULL, 'htcvan.10d1@gmail.com', 'Cẩm Vân', NULL, NULL, 'https://graph.facebook.com/757628048005295/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 15:29:34', '2019-09-03 15:29:34'),
(381, 'facebook', '1129505954105294', 210, NULL, 'tpgiahuy5@yahoo.com', 'Tống Phước Gia Huy', NULL, NULL, 'https://graph.facebook.com/1129505954105294/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 17:40:28', '2019-09-05 21:20:16'),
(382, 'facebook', '2407708936174137', 212, 24, 'phamtrantramy0503@gmail.com', 'Phạm Trần Trà My', NULL, NULL, 'https://graph.facebook.com/2407708936174137/picture', 1, '1999-10-12', NULL, NULL, 1, 1, '2019-09-03 17:51:19', '2019-09-03 17:51:19'),
(383, 'facebook', '3024934537732533', NULL, NULL, '', 'Phượng Nguyễn', NULL, NULL, 'https://graph.facebook.com/3024934537732533/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 17:53:01', '2019-09-03 17:53:01'),
(384, 'facebook', '955311681473351', NULL, NULL, '', 'Quang Nguyễn', NULL, NULL, 'https://graph.facebook.com/955311681473351/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 17:57:14', '2019-09-03 17:57:14'),
(385, 'google', '112073632962961603614', NULL, NULL, 'tran9259@gmail.com', 'Thang Tran', NULL, NULL, 'https://lh3.googleusercontent.com/-3ViX3ctfq6s/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfSZt1GE6zn6obZvVEMSGkXxthqtg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 20:24:11', '2019-09-05 21:04:26'),
(386, 'facebook', '2110344689261770', 213, NULL, 'phamtramtanthuy@gmail.com', 'Trâm Phạm', NULL, NULL, 'https://graph.facebook.com/2110344689261770/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 20:26:41', '2019-09-03 20:26:41'),
(387, 'google', '101164968368856286383', 214, NULL, 'thuyyst@gmail.com', 'Nguyễn Thuỳ', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mA-LzRUi10Gvul4eAQMRT6OkERpyNWRGfs4Ix6L', 1, '2001-10-08', NULL, NULL, 1, 1, '2019-09-03 20:48:33', '2019-09-04 23:38:27'),
(388, 'facebook', '1205825579605589', 215, NULL, 'tpcobedautay.91@gmail.com', 'Phạm Trang', NULL, NULL, 'https://graph.facebook.com/1205825579605589/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 21:01:52', '2019-09-03 21:01:52'),
(389, 'facebook', '173985803652398', 216, NULL, 'tuyetroimaimai00@gmail.com', 'Bùi Thảo My', NULL, NULL, 'https://graph.facebook.com/173985803652398/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 21:26:50', '2019-09-03 21:26:50'),
(390, 'google', '110363836120902611558', 217, NULL, 'phuoc228@gmail.com', 'Trần Thị Xuân Phước', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mDDeUIBZLKK7zvHbqw3heQogbPVGtBGaGsm5gU-8A', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-03 21:35:13', '2019-09-03 21:35:13'),
(391, 'google', '105253522274645106570', 218, NULL, 'nguyenminhdai2409@gmail.com', 'Minh Đại', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mCJbERt1dnfYBgGC41lNoe1vpRnXqgTnbWPUCruPg', 1, NULL, NULL, NULL, 1, 1, '2019-09-03 23:21:41', '2019-09-03 23:21:41'),
(392, 'facebook', '2479936858907537', NULL, NULL, '', 'Hà Ngân', NULL, NULL, 'https://graph.facebook.com/2479936858907537/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 00:19:39', '2019-09-04 07:27:26'),
(393, 'google', '105683905823664005724', NULL, NULL, '16k4081006@hce.edu.vn', 'Hoang Thi Ngoc An', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mAxjYRDkN6OJTu7PmWSPLO02UBuzSG0wilQFTf2', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 00:41:19', '2019-09-04 00:41:32'),
(394, 'facebook', '755248461599009', 219, NULL, 'buigaidnd@gmail.com', 'Bùi Bùi', NULL, NULL, 'https://graph.facebook.com/755248461599009/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 07:21:13', '2019-09-04 07:21:13'),
(395, 'google', '108507343890694795464', 220, NULL, 'khuynhnha20@gmail.com', 'miniwa san', NULL, NULL, 'https://lh6.googleusercontent.com/-MJAOKhsimiY/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfTbr0rc-GzJcWMfR4f4Yo4yFCMLA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 12:44:30', '2019-09-04 12:44:30'),
(396, 'google', '116058616176826262705', 221, NULL, 'annytran80@gmail.com', 'Anh Tran', NULL, NULL, 'https://lh3.googleusercontent.com/-IqEXxGI0Elg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rf5SFdSmttMJpNqLepS_3em57xGUQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 16:48:27', '2019-09-05 21:25:10'),
(397, 'facebook', '366776950927875', 222, NULL, '', 'Hoài Vi', NULL, NULL, 'https://graph.facebook.com/366776950927875/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 16:59:55', '2019-09-05 13:18:43'),
(398, 'google', '105712438341346743026', NULL, NULL, 'minhtran4589@gmail.com', 'Minh Trân', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mCjC0WDXwp21R5ui7SKQZKqHxLs5fgxK2UtYuInMw', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 19:38:08', '2019-09-05 20:20:40'),
(399, 'facebook', '491924224927460', NULL, NULL, '', 'Ngọc Nguyễn', NULL, NULL, 'https://graph.facebook.com/491924224927460/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 20:00:20', '2019-09-04 20:00:20'),
(400, 'facebook', '948415672187674', 223, NULL, '', 'Nguyễn Bi', NULL, NULL, 'https://graph.facebook.com/948415672187674/picture', 1, '1970-01-01', NULL, NULL, 1, 1, '2019-09-04 20:49:34', '2019-09-04 20:49:34'),
(401, 'facebook', '706569023149801', NULL, NULL, '', 'Nhi Tran', NULL, NULL, 'https://graph.facebook.com/706569023149801/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 22:37:41', '2019-09-04 22:37:41'),
(402, 'facebook', '2488653841354123', NULL, NULL, '', 'Phong Nguyễn', NULL, NULL, 'https://graph.facebook.com/2488653841354123/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-04 23:37:15', '2019-09-04 23:37:15'),
(403, 'facebook', '2325398161110063', 224, NULL, 'lequynhgiao2805@gmail.com', 'Quỳnh Giao', NULL, NULL, 'https://graph.facebook.com/2325398161110063/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 09:09:06', '2019-09-05 09:09:06'),
(404, 'facebook', '1403163763166367', 226, NULL, 'yeuema_xephangdianh_1288@yahoo.com', 'Lê Thị Ngọc Hiền', NULL, NULL, 'https://graph.facebook.com/1403163763166367/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 09:35:33', '2019-09-05 09:35:33'),
(405, 'google', '107471313289257545923', 227, NULL, 'huuhaihbt10@gmail.com', 'Hai Nguyen', NULL, NULL, 'https://lh5.googleusercontent.com/-ZVqyp8rPHcA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdg_rKMAKMx2xsp-4jkWUyVy5ZKRg/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 09:40:32', '2019-09-05 09:40:32'),
(406, 'facebook', '436226246993493', 228, NULL, 'bichnhat247@gmail.com', 'Bích Nhật', NULL, NULL, 'https://graph.facebook.com/436226246993493/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 09:42:52', '2019-09-06 08:30:20'),
(407, 'facebook', '374182883470102', NULL, NULL, '', 'Bảo Việt Ng', NULL, NULL, 'https://graph.facebook.com/374182883470102/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 09:56:20', '2019-09-05 09:56:20'),
(408, 'facebook', '2533628960194239', NULL, NULL, '', 'Su Đoàn', NULL, NULL, 'https://graph.facebook.com/2533628960194239/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 10:38:22', '2019-09-05 10:38:22'),
(409, 'facebook', '2369782383263908', 229, NULL, 'nguyendow1999@gmail.com', 'Nguyên Nguyễn', NULL, NULL, 'https://graph.facebook.com/2369782383263908/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 11:13:36', '2019-09-05 16:16:01'),
(410, 'facebook', '2432888436978916', 230, NULL, 'quando87@yahoo.com', 'Đỗ Hoàng Quân', NULL, NULL, 'https://graph.facebook.com/2432888436978916/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 12:32:36', '2019-09-05 12:32:36'),
(411, 'facebook', '910000016028779', NULL, NULL, '', 'Thùy Vi', NULL, NULL, 'https://graph.facebook.com/910000016028779/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 12:46:21', '2019-09-05 12:46:21'),
(412, 'facebook', '2491240841119967', NULL, NULL, '', 'Tae Tae', NULL, NULL, 'https://graph.facebook.com/2491240841119967/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 15:21:37', '2019-09-05 15:21:37'),
(413, 'facebook', '2390795997846362', NULL, NULL, '', 'Trang Nguyễn', NULL, NULL, 'https://graph.facebook.com/2390795997846362/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 15:45:27', '2019-09-05 16:29:59'),
(414, 'facebook', '724386267987055', NULL, NULL, '', 'Lệ Dương', NULL, NULL, 'https://graph.facebook.com/724386267987055/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 16:12:31', '2019-09-05 16:12:31'),
(415, 'facebook', '2406297786360876', 231, NULL, 'quang128238@gmail.com', 'Nguyễn Ngọc Quang', NULL, NULL, 'https://graph.facebook.com/2406297786360876/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 17:07:23', '2019-09-06 08:55:22'),
(416, 'google', '106267616976514754499', 232, NULL, 'kieutrangh1210@gmail.com', 'trang kiều trang', NULL, NULL, 'https://lh6.googleusercontent.com/-KJQ7oFUpjn4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc4_JpO40DiVtWORZDIa4dDKSnXEA/photo.jpg', 1, '2001-12-10', NULL, NULL, 1, 1, '2019-09-05 17:23:58', '2019-09-06 08:55:33'),
(417, 'facebook', '753947385059623', NULL, NULL, '', 'Tuyền Tuyềnn', NULL, NULL, 'https://graph.facebook.com/753947385059623/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 17:52:19', '2019-09-05 22:53:17'),
(418, 'facebook', '1361453720694764', 233, NULL, 'hoangloann.97@gmail.com', 'Loan Hoàng', NULL, NULL, 'https://graph.facebook.com/1361453720694764/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 18:00:12', '2019-09-05 18:00:12'),
(419, 'facebook', '667818607029197', 234, NULL, 'nguyenthidieutrinh1613@gmail.com', 'Ngô Thị Mỹ Hạnh', NULL, NULL, 'https://graph.facebook.com/667818607029197/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 18:45:49', '2019-09-05 22:02:21'),
(420, 'facebook', '1044587219266251', NULL, NULL, '', 'My Phạm', NULL, NULL, 'https://graph.facebook.com/1044587219266251/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 18:53:15', '2019-09-05 18:53:15'),
(421, 'facebook', '498082374322425', 235, NULL, 'buitranggg614@gmail.com', 'Bui Trang', NULL, NULL, 'https://graph.facebook.com/498082374322425/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 19:58:54', '2019-09-05 19:58:54'),
(422, 'google', '118034535981578499572', 236, NULL, 'luongnutuongvy1810@gmail.com', 'Vy Lương', NULL, NULL, 'https://lh5.googleusercontent.com/-JsjW0BaK69s/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdJmKQr0YjQLuCeJ4Hu7Q6gK6oaBQ/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 20:09:16', '2019-09-05 20:09:16'),
(423, 'facebook', '904033586607866', NULL, NULL, '', 'Nguyễn Thúy Hằng', NULL, NULL, 'https://graph.facebook.com/904033586607866/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 21:51:15', '2019-09-05 21:51:15'),
(424, 'facebook', '890469731318615', 237, NULL, 'myhoa.070716@gmail.com', 'Hà Mỹ Hoa', NULL, NULL, 'https://graph.facebook.com/890469731318615/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 23:42:34', '2019-09-05 23:42:34'),
(425, 'facebook', '2703043779922211', 238, NULL, 'haconghung123@gmail.com', 'Hà Công Hùng', NULL, NULL, 'https://graph.facebook.com/2703043779922211/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-05 23:51:26', '2019-09-05 23:51:26'),
(426, 'facebook', '154597555648250', 240, 26, 'suunhi25052001@gmail.com', 'Mai Văn Thắng', NULL, NULL, 'https://graph.facebook.com/154597555648250/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 04:03:23', '2019-09-06 07:49:31'),
(427, 'facebook', '935011133503633', NULL, NULL, '', 'Lê Cules', NULL, NULL, 'https://graph.facebook.com/935011133503633/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 08:18:41', '2019-09-06 08:18:41'),
(428, 'facebook', '911753505876024', NULL, NULL, '', 'Nguyễn Na', NULL, NULL, 'https://graph.facebook.com/911753505876024/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 08:39:44', '2019-09-06 08:39:44'),
(429, 'facebook', '2057139917915146', NULL, NULL, '', 'Thảo Trần', NULL, NULL, 'https://graph.facebook.com/2057139917915146/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 09:30:42', '2019-09-06 09:30:42'),
(430, 'google', '108815418114227067495', NULL, NULL, 'hoangthitocanhtqt2016@gmail.com', 'cảnh Hoàng thị tố', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mDSV90ugUhojScWeqR2ebbYX8wbL1cm2J3XWgLn', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 09:54:44', '2019-09-06 09:54:44'),
(431, 'google', '106267616976514754499', NULL, NULL, 'kieutrangh1210@gmail.com', 'trang kiều trang', NULL, NULL, 'https://lh6.googleusercontent.com/-KJQ7oFUpjn4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc4_JpO40DiVtWORZDIa4dDKSnXEA/photo.jpg', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 09:56:39', '2019-09-06 09:56:39'),
(432, 'google', '117387662311663872350', NULL, NULL, 'ngoyennhi26092001@gmail.com', 'Ngô Thị Yến Nhi', NULL, NULL, 'https://lh3.googleusercontent.com/a-/AAuE7mD7Pz0MdiJkHHHLDcBW5tGMsdurCviK5a_5wuU0og', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 09:57:02', '2019-09-06 09:57:02'),
(433, 'facebook', '753947385059623', NULL, NULL, '', 'Tuyền Tuyềnn', NULL, NULL, 'https://graph.facebook.com/753947385059623/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:06:23', '2019-09-06 10:06:23'),
(434, 'facebook', '706569023149801', NULL, NULL, '', 'Nhi Tran', NULL, NULL, 'https://graph.facebook.com/706569023149801/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:10:27', '2019-09-06 10:10:27'),
(435, 'facebook', '706569023149801', NULL, NULL, '', 'Nhi Tran', NULL, NULL, 'https://graph.facebook.com/706569023149801/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:13:21', '2019-09-06 10:13:21'),
(436, 'facebook', '2403127093347563', NULL, NULL, '', 'Hồ Thục Nhi', NULL, NULL, 'https://graph.facebook.com/2403127093347563/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:16:20', '2019-09-06 10:16:20'),
(437, 'facebook', '436226246993493', NULL, NULL, 'bichnhat247@gmail.com', 'Bích Nhật', NULL, NULL, 'https://graph.facebook.com/436226246993493/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:20:55', '2019-09-06 10:20:55'),
(438, 'facebook', '2467037260216925', NULL, NULL, '15b23vongocha@tckt.edu.vn', 'Minh Châu', NULL, NULL, 'https://graph.facebook.com/2467037260216925/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:31:11', '2019-09-06 10:31:11'),
(439, 'facebook', '465499164005307', NULL, NULL, 'ngonhunghk@gmail.com', 'Hồng Nhung Nt', NULL, NULL, 'https://graph.facebook.com/465499164005307/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:43:04', '2019-09-06 10:43:04'),
(440, 'facebook', '753947385059623', NULL, NULL, '', 'Tuyền Tuyềnn', NULL, NULL, 'https://graph.facebook.com/753947385059623/picture', 1, NULL, NULL, NULL, 1, 1, '2019-09-06 10:45:11', '2019-09-06 10:45:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `academic_level`
--
ALTER TABLE `academic_level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `applies`
--
ALTER TABLE `applies`
  ADD PRIMARY KEY (`id_active`,`id_app`),
  ADD KEY `id_app` (`id_app`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_company`
--
ALTER TABLE `cate_company`
  ADD PRIMARY KEY (`id_cate`,`id_subcate`);

--
-- Chỉ mục cho bảng `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_province` (`province_id`);

--
-- Chỉ mục cho bảng `employers`
--
ALTER TABLE `employers`
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
-- Chỉ mục cho bảng `postsed`
--
ALTER TABLE `postsed`
  ADD PRIMARY KEY (`id_active`,`id_em`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_job`,`id_appli`),
  ADD KEY `id_appli` (`id_appli`);

--
-- Chỉ mục cho bảng `type_post`
--
ALTER TABLE `type_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_app` (`id_app`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `active`
--
ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT cho bảng `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `type_post`
--
ALTER TABLE `type_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `applies`
--
ALTER TABLE `applies`
  ADD CONSTRAINT `applies_ibfk_1` FOREIGN KEY (`id_app`) REFERENCES `applicant` (`id`);

--
-- Các ràng buộc cho bảng `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`id_appli`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `skills_ibfk_2` FOREIGN KEY (`id_job`) REFERENCES `jobs` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_app`) REFERENCES `applicant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
