-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2019 lúc 08:18 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.3.6

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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
