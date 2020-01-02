-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 24, 2019 lúc 01:17 AM
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
(5, 'Bán hàng', ' '),
(6, 'Phục vụ và giữ xe', ' '),
(7, 'Thu ngân, Pha chế, Phụ bếp', ' '),
(8, 'Nhân viên Pha chế và Phục vụ', ' '),
(9, 'Nhân viên Call Center ', ' '),
(10, 'Nhân viên phát tờ rơi', ' '),
(11, 'THỰC TẬP SINH TIỀM NĂNG', ' '),
(12, 'NHÂN VIÊN PHỤC VỤ TẠI QUÁN BAR', ' '),
(13, 'QUẢN LÝ - NHÂN VIÊN PV', ' '),
(14, 'NHÂN VIÊN BẢO VỆ', ' '),
(15, 'NHÂN VIÊN PHỤC VỤ - PHA CHẾ - GIỮ XE', ' '),
(16, 'NHÂN VIÊN PHỤC VỤ QUÁN CAFE', ' '),
(17, 'NHÂN VIÊN PHỤC VỤ - PHA CHẾ - TẠP VỤ', ' ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
