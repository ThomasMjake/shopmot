-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2023 lúc 10:50 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbmot`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_donhang` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `ngay` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giay`
--

CREATE TABLE `giay` (
  `id_giay` int(11) NOT NULL,
  `tengiay` varchar(200) NOT NULL,
  `loaigiay` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giay`
--

INSERT INTO `giay` (`id_giay`, `tengiay`, `loaigiay`, `gia`, `hinhanh`) VALUES
(65, 'Giày có dây Đen tuyền', 5, 1470000, './images/images_san-pham/giay_da_co_day/mau_den_tuyen/1500x1000_DM_da-den_profile.webp'),
(66, 'Giày có dây Xám nhẹ', 5, 1470000, './images/images_san-pham/giay_da_co_day/mau_xam_nhe/1500x1000_DM_da-xam-nhat_profile.webp'),
(67, 'Giày vải có dây Nước ngọt', 6, 790000, './images/images_san-pham/giay_vai_co_day/mau_nuoc_ngot/1500x1000_dm_nuoc-ngot_profile.webp'),
(68, 'Giày vải có dây Quá đỏ', 6, 720000, './images/images_san-pham/giay_vai_co_day/mau_qua_do/1500x1000_DM_qua-do_profile.webp'),
(69, 'Giày vải có dây Tím than', 6, 720000, './images/images_san-pham/giay_vai_co_day/mau_tim_than/1500x1000_DM_tim-than_profile.webp'),
(70, 'Giảy vải có dây Vàng nghệ', 6, 720000, './images/images_san-pham/giay_vai_co_day/mau_vang_nghe/1500x1000_vang-nghe_doi-moi_profile.webp'),
(71, 'Giày vải có dây Xám thật sự', 6, 720000, './images/images_san-pham/giay_vai_co_day/mau_xam_that_su/1500x1000_DM_vai-xam-that-su_profile.webp'),
(72, 'Giày vải có dây Xanh lá cây', 6, 720000, './images/images_san-pham/giay_vai_co_day/mau_xanh_la_cay/1500x1000_xanh-la-cay_doi-moi_profile.webp'),
(73, 'Giày da không dây Đá', 7, 1789000, './images/images_san-pham/giay_da_khong_day/mau_da/DT_gem_profile.webp'),
(74, 'Giày da không dây Xám nhẹ', 7, 1470000, './images/images_san-pham/giay_da_khong_day/mau_xam_nhe/1500x1000_DT_da-xam-nhat_profile.webp'),
(75, 'Giày vải không dây Nước ngọt', 8, 790000, './images/images_san-pham/giay_vai_khong_day/mau_nuoc_ngot/1500x1000_dt_nuoc-ngot_profile.webp'),
(76, 'Giày vải không dây Quá đỏ', 8, 720000, './images/images_san-pham/giay_vai_khong_day/mau_qua_do/1500x1000_DT_qua-do_profile.webp'),
(77, 'Giày vải không dây Tím than', 8, 720000, './images/images_san-pham/giay_vai_khong_day/mau_tim_than/1500x1000_DT_tim-than_profile.webp'),
(78, 'Giày vải không dây Vàng nghệ', 8, 720000, './images/images_san-pham/giay_vai_khong_day/mau_vang_nghe/1500x1000_DT_vang-nghe_profile.webp'),
(79, 'Giày vải không dây Xám thật sự', 8, 720000, './images/images_san-pham/giay_vai_khong_day/mau_xam_that_su/1500x1000_DT_vai-xam-that-su_profile.webp'),
(80, 'Giày vải không dây Xanh lá cây', 8, 720000, './images/images_san-pham/giay_vai_khong_day/mau_xanh_la_cay/1500x1000_xanh-la-cay_doi-thuong_profile.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_taikhoan` int(11) NOT NULL,
  `id_giay` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_taikhoan`, `id_giay`, `id_size`, `soluong`) VALUES
(1, 65, 2, 1),
(1, 66, 3, 2),
(1, 77, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaigiay`
--

CREATE TABLE `loaigiay` (
  `id_loaigiay` int(11) NOT NULL,
  `tenloaigiay` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaigiay`
--

INSERT INTO `loaigiay` (`id_loaigiay`, `tenloaigiay`) VALUES
(5, 'Da có dây'),
(6, 'Vải có dây'),
(7, 'Da không dây'),
(8, 'Vải không dây');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizegiay`
--

CREATE TABLE `sizegiay` (
  `id_sizegiay` int(11) NOT NULL,
  `id_giay` int(11) NOT NULL,
  `sizegiay` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sizegiay`
--

INSERT INTO `sizegiay` (`id_sizegiay`, `id_giay`, `sizegiay`, `soluong`) VALUES
(1, 65, 35, 10),
(1, 66, 35, 10),
(1, 67, 35, 10),
(1, 68, 35, 10),
(1, 69, 35, 10),
(1, 70, 35, 10),
(1, 71, 35, 10),
(1, 72, 35, 10),
(1, 73, 35, 10),
(1, 74, 35, 10),
(1, 75, 35, 10),
(1, 76, 35, 10),
(1, 77, 35, 10),
(1, 78, 35, 10),
(1, 79, 35, 10),
(1, 80, 35, 10),
(2, 65, 36, 10),
(2, 66, 36, 10),
(2, 67, 36, 10),
(2, 68, 36, 10),
(2, 69, 36, 10),
(2, 70, 36, 10),
(2, 71, 36, 10),
(2, 72, 36, 10),
(2, 73, 36, 10),
(2, 74, 36, 10),
(2, 75, 36, 10),
(2, 76, 36, 10),
(2, 77, 36, 10),
(2, 78, 36, 10),
(2, 79, 36, 10),
(2, 80, 36, 10),
(3, 65, 37, 10),
(3, 66, 37, 10),
(3, 67, 37, 10),
(3, 68, 37, 10),
(3, 69, 37, 10),
(3, 70, 37, 10),
(3, 71, 37, 10),
(3, 72, 37, 10),
(3, 73, 37, 10),
(3, 74, 37, 10),
(3, 75, 37, 10),
(3, 76, 37, 10),
(3, 77, 37, 10),
(3, 78, 37, 10),
(3, 79, 37, 10),
(3, 80, 37, 10),
(4, 65, 38, 10),
(4, 66, 38, 10),
(4, 67, 38, 10),
(4, 68, 38, 10),
(4, 69, 38, 10),
(4, 70, 38, 10),
(4, 71, 38, 10),
(4, 72, 38, 10),
(4, 73, 38, 10),
(4, 74, 38, 10),
(4, 75, 38, 10),
(4, 76, 38, 10),
(4, 77, 38, 10),
(4, 78, 38, 10),
(4, 79, 38, 10),
(4, 80, 38, 10),
(5, 65, 39, 10),
(5, 66, 39, 10),
(5, 67, 39, 10),
(5, 68, 39, 10),
(5, 69, 39, 10),
(5, 70, 39, 10),
(5, 71, 39, 10),
(5, 72, 39, 10),
(5, 73, 39, 10),
(5, 74, 39, 10),
(5, 75, 39, 10),
(5, 76, 39, 10),
(5, 77, 39, 10),
(5, 78, 39, 10),
(5, 79, 39, 10),
(5, 80, 39, 10),
(6, 65, 40, 10),
(6, 66, 40, 10),
(6, 67, 40, 10),
(6, 68, 40, 10),
(6, 69, 40, 10),
(6, 70, 40, 10),
(6, 71, 40, 10),
(6, 72, 40, 10),
(6, 73, 40, 10),
(6, 74, 40, 10),
(6, 75, 40, 10),
(6, 76, 40, 10),
(6, 77, 40, 10),
(6, 78, 40, 10),
(6, 79, 40, 10),
(6, 80, 40, 10),
(7, 65, 41, 10),
(7, 66, 41, 10),
(7, 67, 41, 10),
(7, 68, 41, 10),
(7, 69, 41, 10),
(7, 70, 41, 10),
(7, 71, 41, 10),
(7, 72, 41, 10),
(7, 73, 41, 10),
(7, 74, 41, 10),
(7, 75, 41, 10),
(7, 76, 41, 10),
(7, 77, 41, 10),
(7, 78, 41, 10),
(7, 79, 41, 10),
(7, 80, 41, 10),
(8, 65, 42, 10),
(8, 66, 42, 10),
(8, 67, 42, 10),
(8, 68, 42, 10),
(8, 69, 42, 10),
(8, 70, 42, 10),
(8, 71, 42, 10),
(8, 72, 42, 10),
(8, 73, 42, 10),
(8, 74, 42, 10),
(8, 75, 42, 10),
(8, 76, 42, 10),
(8, 77, 42, 10),
(8, 78, 42, 10),
(8, 79, 42, 10),
(8, 80, 42, 10),
(9, 65, 43, 10),
(9, 66, 43, 10),
(9, 67, 43, 10),
(9, 68, 43, 10),
(9, 69, 43, 10),
(9, 70, 43, 10),
(9, 71, 43, 10),
(9, 72, 43, 10),
(9, 73, 43, 10),
(9, 74, 43, 10),
(9, 75, 43, 10),
(9, 76, 43, 10),
(9, 77, 43, 10),
(9, 78, 43, 10),
(9, 79, 43, 10),
(9, 80, 43, 10),
(10, 65, 44, 10),
(10, 66, 44, 10),
(10, 67, 44, 10),
(10, 68, 44, 10),
(10, 69, 44, 10),
(10, 70, 44, 10),
(10, 71, 44, 10),
(10, 72, 44, 10),
(10, 73, 44, 10),
(10, 74, 44, 10),
(10, 75, 44, 10),
(10, 76, 44, 10),
(10, 77, 44, 10),
(10, 78, 44, 10),
(10, 79, 44, 10),
(10, 80, 44, 10),
(11, 65, 45, 10),
(11, 66, 45, 10),
(11, 67, 45, 10),
(11, 68, 45, 10),
(11, 69, 45, 10),
(11, 70, 45, 10),
(11, 71, 45, 10),
(11, 72, 45, 10),
(11, 73, 45, 10),
(11, 74, 45, 10),
(11, 75, 45, 10),
(11, 76, 45, 10),
(11, 77, 45, 10),
(11, 78, 45, 10),
(11, 79, 45, 10),
(11, 80, 45, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_taikhoan` int(11) NOT NULL,
  `tendangnhap` varchar(30) NOT NULL,
  `matkhau` varchar(8) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `diachi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id_taikhoan`, `tendangnhap`, `matkhau`, `hoten`, `sdt`, `email`, `avatar`, `diachi`) VALUES
(1, 'dangkhoatptp', 'aohkgnad', 'Nguyễn Đăng A', '0948218711', 'dangkhoatptp@gmail.com', '1210776.jpg', '159 Hưng Phú, phường 8, quận 8, Hồ Chí Minh'),
(9, 'nguyenvana', '12345678', 'Nguyễn Văn A', '0948218711', 'dangkhoatptp@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongso_avatar`
--

CREATE TABLE `thongso_avatar` (
  `id_taikhoan` int(11) NOT NULL,
  `chieurong_goc` int(11) NOT NULL,
  `chieudai_goc` int(11) NOT NULL,
  `trai_goc` int(11) NOT NULL,
  `tren_goc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongso_avatar`
--

INSERT INTO `thongso_avatar` (`id_taikhoan`, `chieurong_goc`, `chieudai_goc`, `trai_goc`, `tren_goc`) VALUES
(1, 626, 425, -28, -24);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`);

--
-- Chỉ mục cho bảng `giay`
--
ALTER TABLE `giay`
  ADD PRIMARY KEY (`id_giay`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_taikhoan`,`id_giay`,`id_size`);

--
-- Chỉ mục cho bảng `loaigiay`
--
ALTER TABLE `loaigiay`
  ADD PRIMARY KEY (`id_loaigiay`);

--
-- Chỉ mục cho bảng `sizegiay`
--
ALTER TABLE `sizegiay`
  ADD PRIMARY KEY (`id_sizegiay`,`id_giay`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_taikhoan`);

--
-- Chỉ mục cho bảng `thongso_avatar`
--
ALTER TABLE `thongso_avatar`
  ADD PRIMARY KEY (`id_taikhoan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giay`
--
ALTER TABLE `giay`
  MODIFY `id_giay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `loaigiay`
--
ALTER TABLE `loaigiay`
  MODIFY `id_loaigiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
