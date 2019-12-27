-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 02:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangdienthoai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('08101200100', 3, 50000000, '081012001', 11),
('08101200101', 1, 43900000, '081012001', 4),
('08101200102', 3, 7900000, '081012001', 10),
('08101200103', 1, 15000000, '081012001', 9),
('08101200200', 1, 23000000, '081012002', 7),
('08101200300', 2, 7900000, '081012003', 10),
('13121200100', 4, 43900000, '131212001', 4),
('13121200200', 1, 37000000, '131212002', 5),
('13121200201', 2, 260000, '131212002', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('081012001', '2019-10-08 00:00:00', 380000, 6, 2),
('081012002', '2019-10-08 00:00:00', 380000, 6, 2),
('081012003', '2019-10-08 00:00:00', 440000, 1, 2),
('131212001', '2019-12-13 00:00:00', 640000, 6, 1),
('131212002', '2019-12-13 00:00:00', 700000, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'Apple', 'logo-Apple.png', 0),
(2, 'SamSung', 'logoSamsung.png', 0),
(3, 'Oppo', 'logoOppo.png', 0),
(4, 'Xiaomi', 'logoXiaomi', 0),
(5, 'Realme', 'logoRealme.png', 0),
(6, 'Vivo', 'logoVivo.png', 0),
(7, 'Huawei', 'logoHuawei.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'Dưới 2 triệu', 0),
(2, 'Từ 2-4 triệu', 0),
(3, 'Từ 4-7 triệu', 0),
(4, 'Từ 7-13 triệu', 0),
(5, 'Trên 13 triệu', 0),
(6, 'Trả góp 0%', 0),
(7, 'Chỉ bán onlinne', 0),
(8, 'Mới', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(4, 'Điện thoại iPhone 11 Pro Max 512GB', 'iphone-11-pro-max-512gb.png', 43990000, '2019-08-25 00:00:00', 25, 9, 26, 'Màn hình: 6.5\", Super Retina XDR\r\nCPU: Apple A13 Bionic 6 nhân\r\nRAM: 4 GB, ROM: 512 GB\r\nCamera: 3 camera 12 MP\r\nSelfie: 12 MP\r\nPIN: 3969 mAh, có sạc nhanh', 0, 5, 1),
(5, 'Điện thoại iPhone 11 Pro Max 256GB', 'iphone-11-pro-max-256gb-green-600x600.jpg', 37900000, '2019-05-01 00:00:00', 21, 6, 32, 'Màn hình: 6.5\", Super Retina XDR\r\nCPU: Apple A13 Bionic 6 nhân\r\nRAM: 4 GB, ROM: 512 GB\r\nCamera: 3 camera 12 MP\r\nSelfie: 12 MP\r\nPIN: 3969 mAh, có sạc nhanh', 0, 5, 1),
(7, 'iPhone Xs Max 256GB', 'iphone-xs-max-256gb-white-600x600.jpg', 33900000, '2019-09-12 00:00:00', 25, 2, 9, 'Màn hình: 6.5\", Super Retina\r\nCPU: Apple A12 Bionic 6 nhân\r\nRAM: 4 GB, ROM: 256 GB\r\nCamera: Chính 12 MP & Phụ 12 MP\r\nSelfie: 7 MP\r\nPIN: 3174 mAh, có sạc nhanh', 0, 5, 1),
(8, 'Điện thoại iPhone 11 128GB', 'iphone-11-128gb-black-600x600.jpg', 23900000, '2019-07-03 00:00:00', 30, 0, 8, 'Màn hình:	IPS LCD, 6.1\", Liquid Retina\r\nHệ điều hành:	iOS 13\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	12 MP\r\nCPU:	Apple A13 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB', 0, 5, 1),
(9, 'Điện thoại iPhone 8 Plus 64GB', 'iphone-8-plus-hh-600x600-600x600.jpg', 15900000, '2019-01-01 00:00:00', 24, 6, 20, 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB', 0, 7, 1),
(10, 'Điện thoại iPhone 7 32GB', 'iphone-7-plus-32gb-gold-600x600-600x600.jpg', 7000000, '2019-08-15 00:00:00', 28, 7, 9, 'Màn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB', 0, 3, 1),
(11, 'Samsung Galaxy Fold', 'samsung-galaxy-fold-black-600x600.jpg', 50000000, '2019-09-01 00:00:00', 38, 3, 41, 'Màn hình: Chính 7.3\" & Phụ 4.6\", Quad HD (2K)\r\nCPU: Snapdragon 855 8 nhân\r\nRAM: 12 GB, ROM: 512 GB\r\nCamera: Chính 12 MP & Phụ 12 MP, 16 MP\r\nSelfie: Trong: 10 MP, 8 MP; Ngoài: 10 MP\r\nPIN: 4380 mAh, có sạc nhanh', 0, 8, 2),
(12, 'Samsung Galaxy S10+(512GB)', 'samsung-galaxy-a50s-green-600x600.jpg', 28900000, '2019-10-02 00:00:00', 20, 0, 2, 'Màn hình: 6.4\", Quad HD+ (2K+)\r\nCPU: Exynos 9820 8 nhân\r\nRAM: 8 GB, ROM: 512 GB\r\nCamera: Chính 12 MP & Phụ 12 MP, 16 MP\r\nSelfie: Chính 10 MP & Phụ 8 MP\r\nPIN: 4100 mAh, có sạc nhanh\r\n', 0, 6, 2),
(13, 'Điện thoại Samsung Galaxy A50 128GB', 'samsung-galaxy-a50s-green-600x600.jpg', 7900000, '2019-10-04 00:00:00', 10, 2, 15, 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	25 MP\r\nCPU:	Exynos 9610 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB', 0, 4, 2),
(14, 'Samsung Galaxy A20(64GB)', 'samsung-galaxy-a20s-black-600x600.jpg', 4990000, '2019-09-25 00:00:00', 5, 5, 1, 'Màn hình: 6.5\", HD+ CPU: Snapdragon 450 8 nhân RAM: 4 GB, ROM: 64 GB Camera: Chính 13 MP & Phụ 8 MP, 5 MP Selfie: 8 MP PIN: 4000 mAh, có sạc nhanh', 0, 3, 2),
(15, 'Samsung Galaxy A30 3GB/32GB', 'samsung-galaxy-a20s-black-600x600.jpg', 4900000, '2019-08-27 00:00:00', 19, 3, 3, 'Màn hình: 6.4\", Full HD+\r\nCPU: Exynos 7904 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 16 MP & Phụ 5 MP\r\nSelfie: 16 MP\r\nPIN: 4000 mAh, có sạc nhanh', 0, 3, 2),
(16, 'Samsung Galaxy A20', 'samsung-galaxy-a50s-green-600x600.jpg', 4990000, '2019-07-13 00:00:00', 50, 3, 5, 'Màn hình: 6.5\", HD+\r\nCPU: Snapdragon 450 8 nhân\r\nRAM: 4 GB, ROM: 64 GB\r\nCamera: Chính 13 MP & Phụ 8 MP, 5 MP\r\nSelfie: 8 MP\r\nPIN: 4000 mAh, có sạc nhanh', 0, 7, 2),
(17, 'OPPO Reno 10x Zoom Edition', 'oppo-reno-10x-zoom-edition-black-600x600.jpg', 14900000, '2019-09-15 00:00:00', 60, 3, 2, 'Màn hình: 6.6\", Full HD+\r\nCPU: Snapdragon 855 8 nhân\r\nRAM: 8 GB, ROM: 256 GB\r\nCamera: Chính 48 MP & Phụ 13 MP, 8 MP\r\nSelfie: 16 MP\r\nPIN: 4065 mAh, có sạc nhanh', 0, 5, 3),
(18, 'OPPo Reno2', 'oppo-reno2-600x600.jpg', 9900000, '2019-09-14 00:00:00', 30, 30, 22, 'Màn hình: 6.55\", Full HD+\r\nCPU: Snapdragon 730G 8 nhân\r\nRAM: 8 GB, ROM: 256 GB\r\nCamera: Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP\r\nSelfie: 16 MP\r\nPIN: 4000 mAh, có sạc nhanh\r\n', 0, 4, 3),
(19, 'OPPO A1K', 'oppo-a5s-red-600x600.jpg', 2990000, '2019-06-12 00:00:00', 19, 13, 25, 'Màn hình: 6.1\", HD+\r\nCPU: MediaTek MT6762R 8 nhân\r\nRAM: 2 GB, ROM: 32 GB\r\nCamera: 8 MP\r\nSelfie: 5 MP\r\nPIN: 4000 mAh', 0, 7, 3),
(20, 'OPPO A5s', 'oppo-a5s-red-600x600.jpg', 3690000, '2019-07-12 00:00:00', 20, 12, 13, 'Màn hình: 6.2\", HD+\r\nCPU: MediaTek Helio P35 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 13 MP & Phụ 2 MP\r\nSelfie: 8 MP\r\nPIN: 4230 mAh\r\n', 0, 2, 3),
(21, 'OPPO F11 Pro 128GB', 'oppo-f11-pro-128gb-600x600.jpg', 6900000, '2019-08-17 00:00:00', 35, 12, 12, 'Màn hình: 6.5\", Full HD+\r\nCPU: MediaTek Helio P70 8 nhân\r\nRAM: 6 GB, ROM: 64 GB\r\nCamera: Chính 48 MP & Phụ 5 MP\r\nSelfie: 16 MP\r\nPIN: 4020 mAh, có sạc nhanh', 0, 3, 3),
(22, 'Xiaomi Mi Note 10 Pro', 'xiaomi-mi-note-10-pro-black-600x600.jpg', 14900000, '2019-10-05 00:00:00', 24, 28, 30, 'Màn hình: 6.47\", Full HD+\r\nCPU: Snapdragon 730G 8 nhân\r\nRAM: 8 GB, ROM: 256 GB\r\nCamera: Chính 108 MP & Phụ 20 MP, 12 MP, 5 MP, 2 MP\r\nSelfie: 32 MP\r\nPIN: 5260 mAh, có sạc nhanh', 0, 5, 3),
(23, 'Xiaomi Redmi Note 8 Pro (6GB/128GB)', 'xiaomi-redmi-note-8-32gb-white-600x600.jpg', 6490000, '2019-10-07 00:00:00', 30, 2, 25, 'Màn hình: 6.53\", Full HD+\r\nCPU: Mediatek Helio G90T 8 nhân\r\nRAM: 6 GB, ROM: 128 GB\r\nCamera: Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nSelfie: 20 MP\r\nPIN: 4500 mAh, có sạc nhanh', 0, 3, 4),
(24, 'Xiaomi Redmi 7A (2GB/16GB)', 'xiaomi-redmi-go-16gb-blue-600x600.jpg', 1990000, '2019-10-08 00:00:00', 39, 2, 10, 'Màn hình: 5.45\", HD+\r\nCPU: Snapdragon 439 8 nhân\r\nRAM: 2 GB, ROM: 16 GB\r\nCamera: 12 MP\r\nSelfie: 5 MP\r\nPIN: 4000 mAh', 0, 1, 4),
(25, 'Xiaomi Redmi 7A', 'xiaomi-redmi-7a-16gb-black-600x600.jpg', 199000, '2019-09-07 00:00:00', 38, 2, 5, 'Màn hình: 5.45\", HD+\r\nCPU: Snapdragon 439 8 nhân\r\nRAM: 2 GB, ROM: 32 GB\r\nCamera: 12 MP\r\nSelfie: 5 MP\r\nPIN: 4000 mAh', 0, 1, 4),
(26, 'Xiaomi Redmi Note 7 64GB', 'xiaomi-redmi-note-7-600x600.jpg', 4990000, '2019-10-07 00:00:00', 20, 12, 30, 'Màn hình: 6.3\", Full HD+\r\nCPU: Snapdragon 660 8 nhân\r\nRAM: 4 GB, ROM: 64 GB\r\nCamera: Chính 48 MP & Phụ 5 MP\r\nSelfie: 13 MP\r\nPIN: 4000 mAh, có sạc nhanh\r\n', 0, 3, 4),
(27, 'Vivo V17 Pro', 'vivo-v17-pro-blue-noo-600x600.jpg', 9940000, '2019-10-02 00:00:00', 20, 12, 3, 'Màn hình: 6.44\", Full HD+\r\nCPU: Snapdragon 675 8 nhân\r\nRAM: 8 GB, ROM: 128 GB\r\nCamera: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nSelfie: Chính 32 MP & Phụ 8 MP\r\nPIN: 4100 mAh, có sạc nhanh', 0, 4, 6),
(28, 'Vivo V15 128GB', 'vivo-v15-quanghai-600x600.jpg', 5990000, '2019-10-01 00:00:00', 10, 1, 3, 'Màn hình: 6.53\", Full HD+\r\nCPU: MediaTek Helio P70 8 nhân\r\nRAM: 6 GB, ROM: 128 GB\r\nCamera: Chính 12 MP & Phụ 8 MP, 5 MP\r\nSelfie: 32 MP\r\nPIN: 4000 mAh, có sạc nhanh', 0, 4, 6),
(29, 'Vivo Y91C', 'vivo-y11-blue-600x600.jpg', 2390000, '2019-09-30 00:00:00', 10, 3, 5, 'Màn hình: 6.22\", HD+\r\nCPU: MediaTek MT6762R 8 nhân\r\nRAM: 2 GB, ROM: 32 GB\r\nCamera: 13 MP\r\nSelfie: 5 MP\r\nPIN: 4030 mAh', 0, 2, 6),
(30, 'Vivo Y93', 'vivo-y93-32gb-black-600x600.jpg', 1990000, '2019-10-01 00:00:00', 4, 2, 2, 'Màn hình: 6.2\", HD+\r\nCPU: Snapdragon 439 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 13 MP & Phụ 2 MP\r\nSelfie: 8 MP\r\nPIN: 4030 mAh\r\n', 0, 1, 6),
(31, 'Vivo Y11', 'vivo-y93-32gb-black-600x600.jpg', 1990000, '2019-10-05 00:00:00', 2, 6, 5, 'Màn hình: 6.35\", HD+\r\nCPU: Snapdragon 439 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 13 MP & Phụ 2 MP\r\nSelfie: 8 MP\r\nPIN: 5000 mAh\r\n', 0, 1, 6),
(32, 'Vivo Y12', 'vivo-y93-32gb-black-600x600.jpg', 1900000, '2019-10-06 00:00:00', 3, 0, 0, 'Màn hình: 6.35\", HD+\r\nCPU: MediaTek MT6762 8 nhân (Helio P22)\r\nRAM: 3 GB, ROM: 64 GB\r\nCamera: Chính 13 MP & Phụ 8 MP, 2 MP\r\nSelfie: 8 MP\r\nPIN: 5000 mAh\r\nP', 0, 1, 6),
(33, 'Realme 5 Pro', 'realme-5s-red-600x600.jpg', 6990000, '2019-10-06 00:00:00', 4, 2, 16, 'Màn hình: 6.3\", Full HD+\r\nCPU: Snapdragon 712 8 nhân\r\nRAM: 4 GB, ROM: 128 GB\r\nCamera: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nSelfie: 16 MP\r\nPIN: 4035 mAh, có sạc nhanh\r\n', 0, 3, 5),
(34, 'Realme XT', 'realme-xt-white-1-600x600.jpg', 7990000, '2019-12-04 00:00:00', 15, 23, 32, 'Màn hình: 6.4\", Full HD+\r\nCPU: Snapdragon 712 8 nhân\r\nRAM: 8 GB, ROM: 128 GB\r\nCamera: Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nSelfie: 16 MP\r\nPIN: 4000 mAh, có sạc nhanh\r\n', 0, 7, 5),
(35, 'Realme 5 (4GB/128GB)', 'realme-5s-red-600x600.jpg', 4690000, '2019-12-04 00:00:00', 20, 5, 12, 'Màn hình: 6.5\", HD+\r\nCPU: Snapdragon 665 8 nhân\r\nRAM: 4 GB, ROM: 128 GB\r\nCamera: Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP\r\nSelfie: 13 MP\r\nPIN: 5000 mAh', 0, 7, 5),
(36, 'Realme C2 32GB', 'realme-c2-16gb-new-blue-600x600.jpg', 2990000, '2019-12-04 00:00:00', 15, 6, 17, 'Màn hình: 6.1\", HD+\r\nCPU: MediaTek MT6762 8 nhân (Helio P22)\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 13 MP & Phụ 2 MP\r\nSelfie: 5 MP\r\nPIN: 4000 mAh\r\n', 0, 7, 5),
(37, 'Realme 3 32GB', 'realme-3-green-isaac-600x600.jpg', 3290000, '2019-12-04 00:00:00', 8, 5, 10, 'Màn hình: 6.22\", HD+\r\nCPU: MediaTek Helio P60 8 nhân\r\nRAM: 3 GB, ROM: 32 GB\r\nCamera: Chính 13 MP & Phụ 2 MP\r\nSelfie: 13 MP\r\nPIN: 4230 mAh\r\n', 0, 7, 5),
(38, 'Huawei P30 Lite', 'huawei-p30-lite-1-600x600.jpg', 6990000, '2019-12-04 00:00:00', 15, 6, 14, 'Màn hình: 6.15\", Full HD+\r\nCPU: Kirin 710\r\nRAM: 6 GB, ROM: 128 GB\r\nCamera: Chính 24 MP & Phụ 8 MP, 2 MP\r\nSelfie: 32 MP\r\nPIN: 3340 mAh, có sạc nhanh', 0, 8, 7),
(39, 'Huawei Nova 3i', 'huawei-nova-3i-600-600-600x600.jpg', 5390000, '2019-12-04 00:00:00', 9, 3, 11, 'Màn hình: 6.3\", Full HD+\r\nCPU: Kirin 710\r\nRAM: 4 GB, ROM: 128 GB\r\nCamera: Chính 16 MP & Phụ 2 MP\r\nSelfie: Chính 24 MP & Phụ 2 MP\r\nPIN: 3340 mAh', 0, 6, 7),
(40, 'Huawei Y9 Prime', 'huawei-y9-prime-2019-blue-2-600x600.jpg', 5490000, '2019-12-04 00:00:00', 5, 10, 16, 'Màn hình: 6.59\", Full HD+\r\nCPU: Kirin 710F 8 nhân\r\nRAM: 4 GB, ROM: 128 GB\r\nCamera: Chính 16 MP & Phụ 8 MP, 2 MP\r\nSelfie: 16 MP\r\nPIN: 4000 mAh\r\n', 0, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'ndhuy', 'ndhuy', 'Đức Huy', '227 - Nguyễn Văn Cừ - Q.5', '01234567890', 'ndhuy@gmail.com', 0, 1),
(2, 'admin', 'admin', 'Admin website', 'Smartphone Store', '0909123456', 'admin@smartphonestore.vn', 0, 2),
(3, 'sanhtuan', '', 'Sanh Tuấn', 'Hồ Chí Minh', '0342250192', 'st123@gmail.com', 1, 1),
(4, 'sanhtuan123', 'st12345', 'Sao Cũng Được', 'Linh Trung, Thủ Đức, TP.Hồ Chí Minh', '0342250192', 'st123@gmail.com', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_TaiKhoan1_idx` (`MaTaiKhoan`),
  ADD KEY `fk_DonDatHang_TinhTrang1_idx` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham1_idx` (`MaLoaiSanPham`),
  ADD KEY `fk_SanPham_HangSanXuat1_idx` (`MaHangSanXuat`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `fk_TaiKhoan_LoaiTaiKhoan_idx` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_TaiKhoan1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrang1` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_HangSanXuat1` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham1` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_TaiKhoan_LoaiTaiKhoan` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
