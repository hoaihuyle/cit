-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2019 lúc 08:13 AM
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
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cate_company`
--
ALTER TABLE `cate_company`
  ADD PRIMARY KEY (`id_cate`,`id_subcate`),
  ADD KEY `id_subcate` (`id_subcate`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cate_company`
--
ALTER TABLE `cate_company`
  ADD CONSTRAINT `cate_company_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `cate_company_ibfk_2` FOREIGN KEY (`id_subcate`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
