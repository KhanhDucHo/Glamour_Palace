-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2023 lúc 07:03 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `glamour-data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reg-data`
--

CREATE TABLE `reg-data` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` enum('Full Control','Data Management','Watch','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `reg-data`
--

INSERT INTO `reg-data` (`id`, `name`, `email`, `number`, `username`, `password`, `type`) VALUES
(7, 'Đạt Nguyễn', 'datnguyen@gmail.com', '0972883751', 'datnguyen1', 'datnguyen123', 'Full Control'),
(10, 'Quốc Trường', 'quoctruong@gmail.com', '0766888213', 'quoctruong2', 'quoctruong123', 'Data Management'),
(11, 'Ngọc Hân', 'ngochan@gmail.com', '0133888291', 'ngochan3', 'ngochan123', 'Full Control'),
(12, 'Khả Như', 'khanhu@gmail.com', '0782199338', 'khanhu4', 'khanhu123', 'Data Management');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users-booking`
--

CREATE TABLE `users-booking` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` enum('Tiệc Trưa','Tiệc Tối','','') NOT NULL,
  `service` enum('Tiệc Cưới','Hội Nghị','Sự Kiện','Khác') NOT NULL,
  `hall` enum('Sảnh Sapphire','Sảnh Ruby','Sảnh Emerald','Sảnh Diamond') NOT NULL,
  `guests` enum('< 100','> 100','> 400','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users-booking`
--

INSERT INTO `users-booking` (`id`, `name`, `number`, `email`, `date`, `time`, `service`, `hall`, `guests`) VALUES
(24, 'Gia Linh', '0967818782', 'gialinh@gmail.com', '17/06/2023', 'Tiệc Trưa', 'Tiệc Cưới', 'Sảnh Ruby', '> 100'),
(25, 'Đức Trí', '0911239481', 'ductri@gmail.com', '19/06/2023', 'Tiệc Tối', 'Hội Nghị', 'Sảnh Ruby', '> 100'),
(26, 'Vạn Đạt', '0933355112', 'vandat@gmail.com', '21/06/2023', 'Tiệc Trưa', 'Tiệc Cưới', 'Sảnh Sapphire', '> 400'),
(27, 'Hoài An', '0936789776', 'hoaian@gmail.com', '22/06/2023', 'Tiệc Tối', 'Khác', 'Sảnh Diamond', '> 100'),
(28, 'Duy Nguyễn', '0688111939', 'duynguyen@gmail.com', '29/06/2023', 'Tiệc Tối', 'Tiệc Cưới', 'Sảnh Ruby', '> 400');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `reg-data`
--
ALTER TABLE `reg-data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users-booking`
--
ALTER TABLE `users-booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `reg-data`
--
ALTER TABLE `reg-data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users-booking`
--
ALTER TABLE `users-booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
