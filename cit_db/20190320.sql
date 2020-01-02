-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 02:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

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
-- Table structure for table `academic_level`
--

CREATE TABLE `academic_level` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `active`
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
-- Dumping data for table `active`
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
(47, 92, 26, 1, '2019-03-24 00:00:00', '2019-03-13 02:52:43'),
(48, 93, 1, 1, '2019-03-14 00:00:00', '2019-03-13 09:15:31');

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
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `id_stu` int(11) DEFAULT NULL,
  `id_aca` int(11) NOT NULL,
  `id_skills` int(11) NOT NULL,
  `id_add` int(11) DEFAULT NULL,
  `id_leis` int(11) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applies`
--

CREATE TABLE `applies` (
  `id_news` int(11) NOT NULL,
  `id_app` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `timestamp`) VALUES
(1, 'Nhà hàng', ' ', '2019-01-08 10:19:19'),
(2, 'Cafe', '', '2019-01-08 10:20:08'),
(3, 'Kinh Doanh', '', '2019-02-21 02:39:47');

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
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `district`
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
-- Dumping data for table `district`
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
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `id_subcate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `description`) VALUES
(1, 'IT', '<p>C&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n'),
(2, 'Pha chế', '<p>Pha thức uống</p>\r\n'),
(3, 'Bồi bán', '<p>bồi b&aacute;n</p>\r\n'),
(4, 'Sales', '<p>buồn b&aacute;n nh&agrave; đất, c&aacute;c mặt h&agrave;ng</p>\r\n');

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
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `sort_order`, `status`, `parent`, `slug`) VALUES
(32, 'Tìm kiếm nâng cao', '<p>Trang t&igrave;m việc n&acirc;ng cao</p>\r\n', 9, NULL, 0, 'tim-kiem-nang-cao'),
(31, 'Fulltime', NULL, 7, NULL, 29, 'fulltime'),
(30, 'Parttime', NULL, 8, NULL, 29, 'parttime'),
(24, 'Trang chủ', '<p>Trang chủ&nbsp; &nbsp;</p>\r\n', 1, NULL, 0, 'index'),
(25, 'Đăng tin', '<p>Trang d&ugrave;ng để nh&agrave; tuyển dụng đăng tin</p>\r\n', 2, NULL, 0, 'dang-tin'),
(51, 'Việc làm ngay', '<p>Trang tổng hợp những b&agrave;i đăng tuyển l&agrave;m nhanh &lt;1 tuần</p>\r\n', 10, NULL, 0, 'viec-lam-ngay'),
(52, 'Đăng tuyển', '<p>trang đăng tuyển thường</p>\r\n', 4, NULL, 25, 'dang-tuyen'),
(29, 'Tìm việc', '', 5, NULL, 0, 'tim-viec'),
(50, 'Tuyển cấp tốc', '<p>Trang đăng tuyển việc nhanh &lt;1 tuần</p>\r\n', 3, NULL, 25, 'tuyen-cap-toc'),
(53, 'Tổng hợp', '<p>Tổng hợp tất cả c&aacute;c loại b&agrave;i viết</p>\r\n', 6, NULL, 29, 'tong-hop');

-- --------------------------------------------------------

--
-- Table structure for table `news`
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
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Giá thanh toán',
  `start_pr` int(50) NOT NULL DEFAULT '0',
  `end_pr` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sort_order` int(9) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `price`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`) VALUES
(85, 2, 1, 49, NULL, 'TUYỂN DỤNG LƯƠNG CAO TẠI BIG C', '<p>&lt;3<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ TẠI HUẾ ]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', '2019022195057.jpg', NULL, 20000, 0, NULL, '2019-02-21 02:50:57', 0),
(86, 2, 1, 49, NULL, 'ĐIỆN MÁY XANH TUYỂN DỤNG CỘNG TÁC VIÊN GIAO HÀNG LẮP ĐẶT', '<p>????&nbsp;THU NHẬP KHỦNG - L&Ecirc;N ĐẾN 500.000/1 NG&Agrave;Y&nbsp;????&nbsp;<br />\r\n-------------------<br />\r\n✴️&nbsp;ĐIỆN M&Aacute;Y XANH TUYỂN DỤNG CỘNG T&Aacute;C VI&Ecirc;N GIAO H&Agrave;NG LẮP ĐẶT&nbsp;✴️<br />\r\n✴️&nbsp;Số lượng tuyển dụng kh&ocirc;ng giới hạn tr&ecirc;n to&agrave;n quốc !<br />\r\n✴️Thu nhập: Từ 7 - 15 triệu</p>\r\n\r\n<p>????&nbsp;M&Ocirc; TẢ C&Ocirc;NG VIỆC :&nbsp;<br />\r\n- Giao sản phẩm điện m&aacute;y đến nh&agrave; kh&aacute;ch h&agrave;ng<br />\r\n- Lắp đặt v&agrave; tư vấn c&aacute;ch sử dụng<br />\r\n- Hướng dẫn KH thủ tục thanh to&aacute;n.</p>\r\n\r\n<p>????&nbsp;Y&Ecirc;U CẦU CHUNG<br />\r\n- Nam, tuổi 18-35, sức khỏe tốt, c&oacute; xe m&aacute;y.<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp, chỉ cần c&oacute; kinh nghiệm về điện tử, điện lạnh.<br />\r\n- Chỉ cần Bạn y&ecirc;u th&iacute;ch c&ocirc;ng việc - C&ocirc;ng ty sẽ đ&agrave;o tạo v&agrave; huấn luyện cho bạn.</p>\r\n\r\n<p>????&nbsp;QUYỀN LỢI ĐƯỢC HƯỞNG:<br />\r\n- L&agrave;m việc 8 tiếng linh hoạt<br />\r\n- L&agrave; CTV Bạn c&oacute; thể đăng k&yacute; ca theo thời gian rảnh nhưng đảm bảo 8 tiếng/ng&agrave;y<br />\r\n- L&agrave; CTV bạn sẽ c&oacute; cơ hội l&ecirc;n nh&acirc;n vi&ecirc;n ch&iacute;nh thức sau 1 m&ugrave;a hợp t&aacute;c !<br />\r\nL&agrave;m c&agrave;ng nhiều &ndash; Hưởng c&agrave;ng nhiều !<br />\r\n[ ỨNG TUYỂN BẮT ĐẦU TỪ NG&Agrave;Y 01/11/2018 - O1/12/2018 ]<br />\r\n-------<br />\r\n????&nbsp;C&aacute;c bạn vui l&ograve;ng LIKE V&Agrave; CMT để nhận th&ocirc;ng tin nộp hồ sơ tuyển dụng cực hot n&agrave;y từ C-IT nh&eacute;&nbsp;????</p>\r\n', '2019022195200.jpg', NULL, 24000, 0, NULL, '2019-02-21 02:52:00', 0),
(87, 2, 3, 49, NULL, 'CƠ HỘI TRỞ THÀNH NHÂN VIÊN CHÍNH THỨC TẠI BIG C - HUẾ ', '<p>????&nbsp;????&nbsp;CƠ HỘI TRỞ TH&Agrave;NH NH&Acirc;N VI&Ecirc;N CH&Iacute;NH THỨC TẠI BIG C - HUẾ&nbsp;????&nbsp;????</p>\r\n\r\n<p>????&nbsp;M&Ocirc; TẢ C&Ocirc;NG VIỆC&nbsp;????&nbsp;<br />\r\n- Đ&oacute;n tiếp, tư vấn v&agrave; phục vụ kh&aacute;ch h&agrave;ng&nbsp;<br />\r\n- Lấy h&agrave;ng từ kho v&agrave; trưng b&agrave;y h&agrave;ng h&oacute;a tại quầy<br />\r\n- Kiểm k&ecirc; h&agrave;ng h&oacute;a, cập nhật bảng gi&aacute; h&agrave;ng ng&agrave;y<br />\r\n- Đảm bảo h&agrave;ng h&oacute;a v&agrave; quầy kệ sạch sẽ, gọn g&agrave;ng<br />\r\n- C&aacute;c c&ocirc;ng việc kh&aacute;c theo ph&acirc;n c&ocirc;ng của quản l&yacute;</p>\r\n\r\n<p>????&nbsp;QUYỀN LỢI ĐƯỢC HƯỞNG&nbsp;<br />\r\n- Ca l&agrave;m việc linh hoạt 4 tiếng, 8 tiếng (t&ugrave;y vị tr&iacute;, khu vực)<br />\r\n- Thu nhập cao: 5 - 8 triệu/ th&aacute;ng<br />\r\n- C&oacute; bảo hiểm tai nạn 24/24<br />\r\n- Được ghỉ ca 6 ng&agrave;y/ th&aacute;ng<br />\r\n- V&agrave; quan trọng nhất l&agrave; cơ hội trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức của Big C</p>\r\n\r\n<p>????&nbsp;Y&Ecirc;U CẦU C&Ocirc;NG VIỆC<br />\r\n- Đ&aacute;p ứng thời gian l&agrave;m thời vụ từ đầu th&aacute;ng 12 đến th&aacute;ng 1 hoặc th&aacute;ng 2<br />\r\n- Kh&ocirc;ng y&ecirc;u cầu bằng cấp, kinh nghiệm<br />\r\n- Th&aacute;i độ: trung thực, sẵn s&agrave;ng phục vụ kh&aacute;ch h&agrave;ng<br />\r\n????&nbsp;Y&Ecirc;U CẦU HỒ SƠ????&nbsp;<br />\r\nNộp hồ sơ nhanh phỏng vấn sớm, đạt y&ecirc;u cầu sẽ bổ sung hồ sơ sau<br />\r\n????&nbsp;????&nbsp;C&aacute;c bạn Like b&agrave;i viết v&agrave; cmt ở dưới để nhận th&ocirc;ng tin cũng như th&ocirc;ng tin hồ sơ ứng tuyển nh&eacute; !<br />\r\n--------------------------<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ ]<br />\r\n<a href=\"https://www.facebook.com/hashtag/th%C3%B4ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#TH&Ocirc;NG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/b%C3%A1o?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#B&Aacute;O</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BB%83n?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#TUYỂN</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/d%E1%BB%A5ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#DỤNG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/bigc?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARANhIURryhkTqollp3cVowy-pRLjYfIGaiazzEDSbOLMw9wQ8TY37MOFD_-mSnjzX9y4OKX6mz4d2Wz1gfxcEE3W57aU8KUHZEhF628qqjWK8HSjW2CnDdRaw_8W3yXLri96rlV6U34rDERVGLW0LBaA_Q9J9_hVtSF2wLMprtzssJ_DOEu-AnQcLHlXv16qb8UzLjBfCpXyc403HciOXCqvmcz6NYN8MZtSyc1PMyPaBHeOP3XUlfBn-pRqSnGbN1n4Rj0nrICCLt_HHbXO_rP8qQgox5ZR8jj4-p0vejTlLX41ueo8_8OthK6cL3p2ZIfI6V59ujgNURngC7BygI&amp;__tn__=%2ANK-R\">#BIGC</a></p>\r\n', '2019022195304.jpg', NULL, 20000, 0, NULL, '2019-02-21 02:53:04', 0),
(88, 2, 1, 49, NULL, ' PHONE PHỎNG VẤN VIÊN', '<p><a href=\"https://www.facebook.com/hashtag/th%C3%B4ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#TH&Ocirc;NG</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/b%C3%A1o?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#B&Aacute;O</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BB%83n?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#TUYỂN</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/d%E1%BB%A5ng?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAAW9hbdH0MSHHSNS_proPFBPRTzkCQkvDUoaSNhpvfrQuERjcKK1n-SU6TSz6fBQG4nnfRbylO1ip30wD43BvD_xofnpZ5tX4lrqn1i6Fg2-mzZ8lT9CSzYjvuJ-TI8ZHxGRX-wU_GT9DzLfJjyHPf0zpgFck9rusCBk6ifsF9qx8_n0iuXbwDDrp_yVs0rvNxH63w__WtRn9JBieoAMUKuSVTloc0zXt6Xc6PzXKlA2efdGrcxNDX8j7DSl-RkOtCC_qnLPllRQDiDpZyUdoPReXW7Uej6QwZFafNmWyMin7mENRzVRBSWbDfiasJiahGKJbCg1-esy6kiyVxL-8&amp;__tn__=%2ANK-R\">#DỤNG</a></p>\r\n\r\n<p>❗VIỆC NHẸ NH&Agrave;NG L&Agrave;M Ở VĂN PH&Ograve;NG❗&nbsp;<br />\r\nVị tr&iacute;: PHONE PHỎNG VẤN VI&Ecirc;N<br />\r\n1. Số lượng: 5 (nam/nữ)<br />\r\n2. Thời gian v&agrave; thu nhập: từ 16h-20h thứ 2,3,5,6 (Chọn ca t&ugrave;y theo thời gian biểu của bạn, tối thiểu 3ca/tuần).<br />\r\nLương: t&iacute;nh theo giờ - thu nhập 13 000đ -18 000đ/giờ<br />\r\nhay 52 000đ - 72 000đ/ ca 4 giờ<br />\r\n3. Y&ecirc;u cầu: C&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc<br />\r\nL&agrave;m việc trong văn ph&ograve;ng m&aacute;y lạnh.<br />\r\n4. Địa chỉ l&agrave;m việc<br />\r\nC&ocirc;ng ty CP nghi&ecirc;n cứu Mặt Trời Th&aacute;ng Năm<br />\r\n- 174 Đinh Ti&ecirc;n Ho&agrave;ng, Th&agrave;nh phố Huế<br />\r\n- Gởi th&ocirc;ng tin: t&ecirc;n &ndash; sdt &ndash; email qua facebook<br />\r\n- Theo SĐT: 0932 457 456<br />\r\n------------------------<br />\r\nMọi th&ocirc;ng tin, thắc mắc v&agrave; phản hồi vui l&ograve;ng li&ecirc;n hệ:<br />\r\n[ C-IT - VIỆC L&Agrave;M THEO GIỜ ]</p>\r\n', '2019022195425.jpg', NULL, 45000, 0, NULL, '2019-02-21 02:54:25', 0),
(92, 2, 4, 49, 16, '[TUYỂN DỤNG C-IT] Việc nhẹ lương cao cho các bạn đây nè.', '<p>[TUYỂN DỤNG C-IT]<br />\r\nViệc nhẹ lương cao cho c&aacute;c bạn đ&acirc;y n&egrave;.<br />\r\nC&Ocirc;NG TY<br />\r\n<br />\r\nLƯƠNG: 20K/1h. 1ca 3 tiếng<br />\r\n- Ca 1 (8h - 11h)<br />\r\n- Ca 2(13h30 - 16h30)<br />\r\nSỐ LƯỢNG: 4<br />\r\nM&Ocirc; TẢ C&Ocirc;NG VIỆC:<br />\r\n- Giới thiệu v&agrave; c&agrave;i đặt app cho bệnh nh&acirc;n tại Bệnh viện 268 Huế.<br />\r\n- Trao đổi th&ecirc;m khi gặp trực tiếp<br />\r\nY&Ecirc;U CẦU:<br />\r\n- Nhanh nhẹn, nhiệt t&igrave;nh, c&oacute; smartphone.<br />\r\n- Th&aacute;i độ l&agrave;m việc nghi&ecirc;m t&uacute;c, cởi mở, trung thực.<br />\r\n- C&oacute; kỹ năng giao tiếp, c&oacute; tinh thần tr&aacute;ch nhiệm.<br />\r\nNhanh tay click v&agrave;o link b&ecirc;n dưới để nộp hồ sơ ngay n&agrave;o anh em ơi.<br />\r\n&nbsp;</p>\r\n', '2019031395243.jpg', 'LƯƠNG: 20K/1h. 1ca 3 tiếng', 0, 0, NULL, '2019-03-13 02:57:41', 0),
(90, 2, 1, 18, 6, 'demo 07/03/2019', '<p>dacx</p>\r\n', '', NULL, 1212, 0, NULL, '2019-03-07 07:26:46', 0),
(91, 3, 1, 17, 9, 'demo 07/03/2019', '<p>sadasdas</p>\r\n', '', NULL, 121, 0, NULL, '2019-03-07 07:27:20', 0),
(83, 2, 1, 49, NULL, 'TRUNG TÂM ANH NGỮ VÀ KĨ NĂNG PICTURE FUTURE GIỚI THIỆU Chương trình Giáo viên tập sự dành cho các bạn sinh viên đang học chuyên ngành tiếng Anh tại Huế', '<p>[ C-IT HỖ TRỢ ĐĂNG TIN ]<br />\r\n????&nbsp;TRUNG T&Acirc;M ANH NGỮ V&Agrave; KĨ NĂNG PICTURE FUTURE GIỚI THIỆU Chương tr&igrave;nh Gi&aacute;o vi&ecirc;n tập sự d&agrave;nh cho c&aacute;c bạn sinh vi&ecirc;n đang học chuy&ecirc;n ng&agrave;nh tiếng Anh tại Huế&nbsp;????<br />\r\n????????Cơ hội ph&aacute;t triển nghề nghiệp hấp dẫn cho c&aacute;c bạn sinh vi&ecirc;n. C&aacute;c bạn sẽ được tuyển dụng ngay từ b&acirc;y giờ !<br />\r\n????????Quyền lợi:<br />\r\n????&nbsp;Được tham gia chương tr&igrave;nh huấn luyện d&agrave;nh cho gi&aacute;o vi&ecirc;n<br />\r\n????&nbsp;Được ph&aacute;t triển c&oacute; định hướng để trở th&agrave;nh gi&aacute;o vi&ecirc;n tiếng Anh giỏi<br />\r\n????&nbsp;Được thực h&agrave;nh thường xuy&ecirc;n v&agrave; ph&aacute;t triển trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp<br />\r\n????????Y&ecirc;u cầu:<br />\r\n????&nbsp;Sinh vi&ecirc;n chuy&ecirc;n ng&agrave;nh tiếng Anh từ năm thứ 2<br />\r\n????&nbsp;C&oacute; định hướng trở th&agrave;nh gi&aacute;o vi&ecirc;n tiếng Anh<br />\r\n????&nbsp;Mong muốn cống hiến cho cộng đồng, năng động, s&aacute;ng tạo<br />\r\n????&nbsp;Học lực Kh&aacute; trở l&ecirc;n<br />\r\nC&aacute;c bạn sinh vi&ecirc;n th&acirc;n mến, bạn đang khao kh&aacute;t trở th&agrave;nh Gi&aacute;o vi&ecirc;n giỏi chuy&ecirc;n m&ocirc;n, giỏi kỹ năng, s&aacute;ng tạo v&agrave; năng động, h&atilde;y đồng h&agrave;nh c&ugrave;ng Picture Future nh&eacute; !<br />\r\n--------------------<br />\r\nHồ sơ gửi về địa chỉ: picturefuture.hue@gmail.com<br />\r\nHạn nộp đến: 31/12/2018</p>\r\n', '2019022194418.jpg', NULL, 20000, 0, NULL, '2019-02-21 02:44:18', 0),
(84, 3, 1, 49, 6, 'CTCP FASTGO VIỆT NAM cần tuyển nhân viên chính thức các vị trí: Marketing & Admin; Nhân viên kinh doanh. ???????? Yêu cầu chung:', '<p>????&nbsp;????&nbsp;C&Oacute; NĂNG LỰC L&Agrave; SẼ L&Agrave;M ĐƯỢC TH&Ocirc;I !&nbsp;????&nbsp;????&nbsp;<br />\r\nAi sinh ra cũng c&oacute; &quot;si&ecirc;u&quot; năng lực chờ được kh&aacute;m ph&aacute;, v&agrave; nếu bạn muốn c&oacute; một m&ocirc;i trường để thể hiện &quot;si&ecirc;u&quot; năng lực đ&oacute; của m&igrave;nh th&igrave; đừng chần chờ g&igrave; nữa !&nbsp;<br />\r\n????&nbsp;????&nbsp;H&Atilde;Y ỨNG TUYỂN NGAY C&Ugrave;NG C&Ocirc;NG TY CP FASTGO VIỆT NAM !!!<br />\r\n-------------------<br />\r\n????&nbsp;Với nhu cầu mở rộng thị trường tại Huế v&agrave; Quảng B&igrave;nh, CTCP FASTGO VIỆT NAM cần tuyển nh&acirc;n vi&ecirc;n ch&iacute;nh thức c&aacute;c vị tr&iacute;: Marketing &amp; Admin; Nh&acirc;n vi&ecirc;n kinh doanh.<br />\r\n????????&nbsp;Y&ecirc;u cầu chung:<br />\r\n- Độ tuổi: 24-29<br />\r\n- Tốt nghiệp Cao đẳng/Đại học;<br />\r\n- Kinh nghiệm 0-1 năm<br />\r\n????????&nbsp;Ph&uacute;c lợi:<br />\r\n- C&oacute; bảo hiểm theo quy định<br />\r\n- Chăm s&oacute;c sức khỏe định k&igrave;<br />\r\n- Đi du lịch hằng năm<br />\r\n- Team building</p>\r\n\r\n<p><br />\r\n- Tăng lương, thưởng nếu l&agrave;m tốt<br />\r\n- Lương: Thỏa Thuận<br />\r\n????&nbsp;????&nbsp;Vị tr&iacute; Marketing &amp; Admin<br />\r\n- Hỗ trợ v&agrave; thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan đến Marketing (60%) v&agrave; Admin (40%) tại chi nh&aacute;nh<br />\r\n- Lập kế hoạch v&agrave; triển khai c&aacute;c chương tr&igrave;nh PR, Marketing cả Online v&agrave; Offline cho c&aacute;c sản phẩm, dịch vụ của c&ocirc;ng ty nhằm ph&aacute;t triển thương hiệu v&agrave; tăng hiệu quả kinh doanh.<br />\r\n????&nbsp;????&nbsp;Vị tr&iacute; Nh&acirc;n Vi&ecirc;n Kinh Doanh<br />\r\n- T&igrave;m kiếm v&agrave; thuyết phục c&aacute;c đối t&aacute;c t&agrave;i xế, doanh nghiệp (c&aacute;c h&atilde;ng xe) l&agrave;m việc với FastGo;<br />\r\n- T&igrave;m kiếm v&agrave; thuyết phục c&aacute;c đối t&aacute;c c&aacute; nh&acirc;n, doanh nghiệp c&agrave;i v&agrave; sử dụng app Fastgo để gọi xe;<br />\r\n- Tư vấn kh&aacute;ch h&agrave;ng v&agrave; hỗ trợ kh&aacute;ch h&agrave;ng quy tr&igrave;nh hợp t&aacute;c, đăng k&yacute;;<br />\r\n-----------------------<br />\r\nỨng vi&ecirc;n c&oacute; nhu cầu nộp hồ sơ vui l&ograve;ng gửi qua email: ducta@peacesoft.net<br />\r\nTi&ecirc;u đề email: Ứng tuyển FastGo 2018 &ndash; Vị tr&iacute; ứng tuyển<br />\r\nHạn nộp hồ sơ: 25/12/2018<br />\r\nTh&ocirc;ng tin li&ecirc;n hệ:&nbsp;<a href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Ffastgo.mobi%2F%3Ffbclid%3DIwAR0xWoDy2PsmGnYGXgroPWl2JNiL5H4-M3TMMnvd2XMckzOoDWfGfc4vayU&amp;h=AT0dIePYGWHAGzGrDqJTv06zjbv8YlvVryqsvYCDKotAuRbALT28hteu17xO_RXnQLdwUbGJmu4lM9iK6Zxd-NZlrnZOKXR_0LUaVM_uphXoSymS4mxnSPSIYrHostbeaDsnJaagB-rWLgxoz_xPAjK4KWnZQTiBWVtX3SGJF2tz9ycZjRUKp6wNfYtKKxEc2QAsR9pSHYgEzAhoAl1dD7GNqY4dEV4Aqw3DQVpSRSR2Vwum0M7NvqeQvEymZOg3Yyd3wBZZQ67Vuxhi9IKMuCCEBgjJgcHmObyABFQBYDwv196oj22LDhnaQR1yeW3szhpbDoVTyIldpu4qB53vJJUBwuRQcFKc-zTsp5ibYFLxGo0n0Q5ilA-XBSQhuiw0nkE0y9CdCzDw8iBItlX8CI5XKX4h8wqyAmtG_Ie7QcB8oikBgdtdP6W5fqv-2IT05TnGANa6IeoTs6Lr082_vHn5L7IgIs7bNm4uWswtIguSkOVFE04qa9Wdu7VyhVgybhIsEWfZC04PcdruiGCwYxLXAKFbmeRlQt9z-V99pzuBCx4P0VKyrML21QgNBgrtWnRM4pS3F4mWXJNYYr8rvcqUIprjGsULgGyAvKxH0UJnakRznSGINvQy7fPziBIu9wz3xFZdL4WHtYY\" rel=\"noopener nofollow\" target=\"_blank\">https://fastgo.mobi/</a>.<br />\r\nEmail: Mr.Đức: ducta@peacesoft.net<br />\r\nTh&ocirc;ng tin chi tiết tại: sea.coplus.com.vn</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/48268880_361892851240438_7397373545728180224_n.jpg\" style=\"float:left; height:300px; width:300px\" />&nbsp;<img alt=\"\" src=\"/upload/images/48203728_361893047907085_5631342105247875072_n(1).jpg\" style=\"float:right; height:300px; width:300px\" /></p>\r\n', '2019022194917.jpg', NULL, 36000, 31000, NULL, '2019-02-21 02:49:17', 0),
(82, 3, 3, 49, 6, 'EAGLE TOURIST TUYỂN DỤNG NHIỀU VỊ TRÍ HẤP DẪN', '<p>?&nbsp;C-IT HỖ TRỢ ĐĂNG TIN?</p>\r\n\r\n<p>??&nbsp;EAGLE TOURIST TUYỂN DỤNG NHIỀU VỊ TR&Iacute; HẤP DẪN&nbsp;??<br />\r\n?&nbsp;Vị tr&iacute;, số lượng:<br />\r\n1. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Huế: 04 người<br />\r\n2. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Quảng Trị: 02 người<br />\r\n3. Nh&acirc;n vi&ecirc;n kinh doanh thị trường tại Quảng B&igrave;nh: 04 người<br />\r\n??&nbsp;Quyền lợi:<br />\r\n1. Lương = lương cứng + % hoa hồng + thưởng (m&ugrave;a cao điểm lương l&ecirc;n đến 20triệu/th&aacute;ng)<br />\r\n2. Được tham gia c&aacute;c hoạt động ngoại kh&oacute;a: văn nghệ, thể thao, du lịch của C&ocirc;ng ty.<br />\r\n3. Được hưởng c&aacute;c chế độ ph&uacute;c lợi theo quy định của c&ocirc;ng ty<br />\r\n4. Được l&agrave;m việc trong m&ocirc;i trường năng động, th&acirc;n thiện, c&oacute; cơ hội thăng tiến. Được đ&agrave;o tạo th&ecirc;m để n&acirc;ng cao nghiệp vụ chuy&ecirc;n m&ocirc;n.<br />\r\n??&nbsp;Một số y&ecirc;u cầu:<br />\r\n&bull; Giới t&iacute;nh: Nam, nữ (Ưu ti&ecirc;n Nam, sức khỏe tốt, kinh nghiệm sale thị trường)<br />\r\n&bull; Tuổi: Từ 23 đến 35<br />\r\n&bull; Bằng cấp: Tốt nghiệp từ trung cấp trở l&ecirc;n (Ưu ti&ecirc;n ứng vi&ecirc;n học chuy&ecirc;n ng&agrave;nh kinh tế,quản trị kinh doanh,du lịch)<br />\r\n&bull; Kinh nghiệm: kh&ocirc;ng y&ecirc;u cầu, v&agrave;o l&agrave;m sẽ đc đ&agrave;o tạo, c&oacute; kinh nghiệm sẽ chiếm ưu thế hơn<br />\r\n&bull; Ưu ti&ecirc;n ứng vi&ecirc;n hiểu biết về c&aacute;c điểm tham quan du lịch, đ&atilde; đi nhiều nơi trong v&agrave; ngo&agrave;i nước.<br />\r\n&bull; C&oacute; t&iacute;nh chịu kh&oacute;, chịu &aacute;p lực tốt, ki&ecirc;n tr&igrave; trong c&ocirc;ng việc, giao tiếp với kh&aacute;ch h&agrave;ng tốt<br />\r\n??&nbsp;Thời hạn nộp hồ sơ: đến 05/1/2019<br />\r\n???&nbsp;M&ocirc; tả c&ocirc;ng việc:<br />\r\n?&nbsp;Thực hiện c&ocirc;ng việc kinh doanh theo sự ph&acirc;n c&ocirc;ng của Trưởng ph&ograve;ng kinh doanh.<br />\r\n?&nbsp;Đảm nhận thị trường được giao,l&ecirc;n kế hoạch kinh doanh,nhận chỉ ti&ecirc;u kinh doanh tr&ecirc;n thị trường đ&oacute;.<br />\r\n?&nbsp;Đ&oacute;ng g&oacute;p c&aacute;c &yacute; tưởng kinh doanh,&yacute; tưởng về ph&aacute;t triển sản phẩm để đạt hiệu quả cao nhất trong c&ocirc;ng việc.<br />\r\n?&nbsp;Tư vấn sản phẩm dịch vụ cho kh&aacute;ch h&agrave;ng, chăm s&oacute;c kh&aacute;ch h&agrave;ng hiện tại v&agrave; t&igrave;m kiếm ph&aacute;t triển kh&aacute;ch h&agrave;ng tiềm năng.<br />\r\n?&nbsp;Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c theo sư ph&acirc;n c&ocirc;ng của cấp quản l&yacute; (nếu c&oacute;)<br />\r\n??&nbsp;C&aacute;c h&igrave;nh thức ứng tuyển:<br />\r\n1.Đăng k&yacute; qua mail: Th&ocirc;ng tin ứng tuyển gửi về h&ograve;m thư: hr@dulichdaibang.com (Sẽ bổ sung hồ sơ bản giấy khi đi phỏng vấn)<br />\r\n2. Đăng k&yacute; trực tiếp: Hồ sơ gửi về C&ocirc;ng ty CP truyền th&ocirc;ng quảng c&aacute;o v&agrave; dịch vụ du lịch Đại B&agrave;ng, số 115 Phạm Văn Đồng, phường Vỹ Dạ, tỉnh Thừa Thi&ecirc;n Huế.<br />\r\nHồ sơ bao gồm: + Đơn xin việc + CV m&ocirc; tả kinh nghiệm bản th&acirc;n/+ Sơ yếu l&yacute; lịch / Văn bằng, chứng chỉ li&ecirc;n quan + CMND + Hộ khẩu<br />\r\nMọi thắc mắc gọi về số: 0911.343. 986 (Ms. Thảo)</p>\r\n', '2019022194101.jpg', NULL, 34000, 30000, NULL, '2019-02-21 16:12:38', 0),
(93, 2, 1, 1, 16, 'demo 07/03/2019', '<p>adas</p>\r\n', '2019031341530.jpg', NULL, 0, 0, NULL, '2019-03-13 09:15:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_news` int(11) NOT NULL,
  `id_em` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
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
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
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
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id_job` int(11) NOT NULL,
  `id_appli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `description`, `timestamp`) VALUES
(6, 'EAGLE TOURIST', '', '2019-02-21 02:40:14'),
(7, 'sadasdas', ' ', '2019-03-03 17:41:40'),
(8, 'sadasdas', ' ', '2019-03-03 17:42:40'),
(9, 'đâsd', ' ', '2019-03-04 10:26:46'),
(10, 'đâsdasd', ' ', '2019-03-04 10:27:12'),
(11, 'ádasda', ' ', '2019-03-04 10:27:41'),
(12, 'demo', ' ', '2019-03-04 10:30:38'),
(13, 'demo', ' ', '2019-03-04 10:36:14'),
(14, 'demo', ' ', '2019-03-04 10:37:03'),
(15, 'demo', ' ', '2019-03-04 10:38:57'),
(16, 'BbData', ' ', '2019-03-13 02:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `type_post`
--

CREATE TABLE `type_post` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_post`
--

INSERT INTO `type_post` (`id`, `menu_id`, `description`) VALUES
(2, 30, '<p>B&agrave;i đăng parttime</p>\r\n'),
(3, 31, '<p>B&agrave;i đăng FullTime</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `spam` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, `fullname`, `token`, `password`, `picture`, `link`, `phone`, `spam`, `active`, `created`, `modified`) VALUES
(70, 'google', '114447064091859668413', NULL, NULL, 'vieclamtheogiocit@gmail.com', 'Việc Làm Theo Giờ', NULL, NULL, 'https://lh6.googleusercontent.com/-fNnzliheJZI/AAAAAAAAAAI/AAAAAAAAAAk/JPvC-BqenCM/photo.jpg', '', NULL, 1, 1, '2019-03-16 17:46:23', '2019-03-18 20:03:11'),
(71, 'facebook', '2299230690366581', NULL, NULL, 'hoaihuy2011.vn@gmail.com', 'Hoai Huy Le', NULL, NULL, 'https://graph.facebook.com/2299230690366581/picture', '', NULL, 1, 1, '2019-03-16 18:11:18', '2019-03-16 18:11:18'),
(72, 'google', '105580634109865689891', NULL, NULL, 'hoaihuy2011.vn@gmail.com', 'Le Hoai Huy', NULL, NULL, 'https://lh4.googleusercontent.com/-3qDXVyz4LKs/AAAAAAAAAAI/AAAAAAAAAEw/dUNu9CoLvks/photo.jpg', '', NULL, 1, 1, '2019-03-16 18:11:35', '2019-03-20 20:41:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_level`
--
ALTER TABLE `academic_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
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
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_province` (`province_id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
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
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `active`
--
ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `type_post`
--
ALTER TABLE `type_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
