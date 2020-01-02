-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 24, 2019 lúc 01:19 AM
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

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, `fullname`, `token`, `password`, `picture`, `link`, `phone`, `spam`, `active`, `created`, `modified`) VALUES
(70, 'google', '114447064091859668413', NULL, NULL, 'vieclamtheogiocit@gmail.com', 'Việc Làm Theo Giờ', NULL, NULL, 'https://lh6.googleusercontent.com/-fNnzliheJZI/AAAAAAAAAAI/AAAAAAAAAAk/JPvC-BqenCM/photo.jpg', '', NULL, 1, 1, '2019-03-16 17:46:23', '2019-04-03 10:33:34'),
(71, 'facebook', '2299230690366581', NULL, NULL, 'hoaihuy2011.vn@gmail.com', 'Hoai Huy Le', NULL, NULL, 'https://graph.facebook.com/2299230690366581/picture', '', NULL, 1, 1, '2019-03-16 18:11:18', '2019-03-16 18:11:18'),
(72, 'google', '105580634109865689891', NULL, NULL, 'hoaihuy2011.vn@gmail.com', 'Le Hoai Huy', NULL, NULL, 'https://lh4.googleusercontent.com/-3qDXVyz4LKs/AAAAAAAAAAI/AAAAAAAAAEw/dUNu9CoLvks/photo.jpg', '', NULL, 1, 1, '2019-03-16 18:11:35', '2019-04-17 21:34:01'),
(73, 'facebook', '1029946827216415', NULL, NULL, 'truongvietmy63@gmail.com', 'Starlet Truong', NULL, NULL, 'https://graph.facebook.com/1029946827216415/picture', NULL, NULL, 1, 1, '2019-04-02 15:35:31', '2019-04-03 07:15:46'),
(74, 'facebook', '272614303681791', NULL, NULL, '', 'Nguyễn Thương', NULL, NULL, 'https://graph.facebook.com/272614303681791/picture', NULL, NULL, 1, 1, '2019-04-03 10:32:42', '2019-04-03 10:32:42'),
(75, 'facebook', '126022068561227', NULL, NULL, 'hungphancit99@gmail.com', 'Đỗ Minh Quân', NULL, NULL, 'https://graph.facebook.com/126022068561227/picture', NULL, NULL, 1, 1, '2019-04-03 10:43:48', '2019-04-03 10:43:48'),
(76, 'facebook', '2160950170679738', NULL, NULL, 'tintacusa@gmail.com', 'Master Thuong', NULL, NULL, 'https://graph.facebook.com/2160950170679738/picture', NULL, NULL, 1, 1, '2019-04-13 16:35:26', '2019-04-13 16:35:26'),
(77, 'facebook', '652220451866125', NULL, NULL, '', 'Mai Thị Lanh', NULL, NULL, 'https://graph.facebook.com/652220451866125/picture', NULL, NULL, 1, 1, '2019-04-13 20:23:43', '2019-04-13 20:23:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
