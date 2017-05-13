-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2017 at 10:22 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_PhanQuyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`, `id_PhanQuyen`) VALUES
('Adminstrator', 'admin@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHoaDon`, `MaSanPham`, `SoLuong`) VALUES
('aido2303744', '408', 1),
('buil194161113', '97', 1),
('buil194161131', '4', 1),
('buil194161131', '99', 1),
('buil25161043', '217', 1),
('buil25161043', '219', 1),
('buil25161043', '221', 1),
('cust2303647', '127', 1),
('cust2303647', '91', 1),
('cust2516922', '224', 1),
('cust2516922', '98', 1),
('cust274161224', '93', 1),
('cust274161224', '95', 1),
('cust274161237', '97', 1),
('kimo10515722', '9', 1),
('kimo10515722', '96', 1),
('kimo10515915', '98', 1),
('kimo10515938', '9', 1),
('kimo10515938', '91', 1),
('kimo10515938', '93', 1),
('kimo2516955', '318', 1),
('kimo2516955', '433', 1),
('kimo27416138', '403', 1),
('kimo27416138', '442', 1),
('kimo27416138', '95', 1),
('kimo8515145', '9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `NgayHoaDon` date NOT NULL,
  `TenKhachHang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `NgayHoaDon`, `TenKhachHang`, `ThanhTien`) VALUES
('aido2303744', '2017-03-02', 'aido', 270000),
('buil194161113', '2017-04-19', 'builehuynh', 560000),
('buil194161131', '2017-04-19', 'builehuynh', 1210000),
('buil25161043', '2017-05-02', 'builehuynh', 1390000),
('cust2303647', '2017-03-02', 'customer3', 1020000),
('cust2516922', '2017-05-02', 'customer1', 850000),
('cust274161224', '2017-04-27', 'customer2', 1020000),
('cust274161237', '2017-04-27', 'customer2', 560000),
('kimo10515722', '2017-05-10', 'kimoanh', 1070000),
('kimo10515915', '2017-05-10', 'kimoanh', 550000),
('kimo10515938', '2017-05-10', 'kimoanh', 1530000),
('kimo2516955', '2017-05-02', 'kimoanh', 580000),
('kimo27416138', '2017-04-27', 'kimoanh', 1090000),
('kimo8515145', '2017-05-08', 'kimoanh', 610000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `TenKhachHang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`TenKhachHang`, `MatKhau`, `SoDienThoai`, `DiaChi`, `Email`) VALUES
('aido', '123456', '009231332', 'ai đó ở đâu đó', 'aido@gmail.com'),
('builehuynh', '123456', '0987554394', 'phước hòa phú giáo bình dương', ''),
('customer1', '123456', '09090909', 'đâu đó', 'customer1@gmail.com'),
('customer2', '123456', '0202010210', 'fdsfsa', 'customer2@gmail.com'),
('customer3', '123456', '0802123123', 'đâu đó đó đâu', 'cus3@gmail.com'),
('kimoanh', '123456', '0987554394', 'thôn 10, xuân thành, nghi xuân, hà tĩnh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id_PhanQuyen` int(11) NOT NULL,
  `Quyen` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`id_PhanQuyen`, `Quyen`) VALUES
(1, 'admin'),
(2, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `GiaSanPham` int(7) NOT NULL,
  `LoaiSanPham` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `KieuSanPham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `GiaSanPham`, `LoaiSanPham`, `KieuSanPham`, `HinhAnh`) VALUES
('1', 'Giày mọi N75 Nâu', 500, 'Nam', 'MỌI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6662.jpg'),
('10', 'XỎ 2013 ĐEN 7F', 950, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0002-0152-1-1.JPG'),
('100', 'XỎ 5189 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3845.JPG'),
('101', 'XỎ 454 NÂU', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3941.jpg'),
('102', 'XỎ 454 XANH', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3962.jpg'),
('103', 'XỎ 454 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11271.JPG'),
('104', 'XỎ 453 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87311.jpg'),
('105', 'XỎ 453 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1111.JPG'),
('106', 'XỎ 127 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57862.jpg'),
('107', 'XỎ 204 ĐEN', 430, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57711.jpg'),
('108', 'XỎ 915 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3897.jpg'),
('109', 'XỎ 790 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11411.JPG'),
('11', 'MỌI 04 NÂU', 570, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07251.jpg'),
('110', 'XỎ 5919 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3872.jpg'),
('112', 'XỎ 5167 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11151.JPG'),
('114', 'XỎ 0548 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9395.jpg'),
('115', 'XỎ 480 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9380.jpg'),
('116', 'XỎ 8494 NÂU', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9307.jpg'),
('117', 'XỎ 2124 NÂU', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9302.jpg'),
('118', 'XỎ 0547 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6317.jpg'),
('119', 'XỎ 0546 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_63011.jpg'),
('12', 'MỌI 968 NÂU', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8938.jpg'),
('120', 'XỎ 5162 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6292.jpg'),
('121', 'XỎ 643 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6284.jpg'),
('122', 'XỎ 038 ĐEN', 570, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6288.jpg'),
('123', 'XỎ 1317 VÀNG', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6248.jpg'),
('124', 'XỎ 0539 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6778.JPG'),
('125', 'XỎ 5185 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6773.JPG'),
('126', 'XỎ 5185 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6783.JPG'),
('127', 'XỎ 616 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42741.jpg'),
('128', 'XỎ 078 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3047.jpg'),
('129', 'XỎ 8229 ĐEN', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42642.jpg'),
('13', 'MỌI 968 ĐEN', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_89731.jpg'),
('130', 'XỎ 635 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4238.jpg'),
('131', 'XỎ 634 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41881.jpg'),
('132', 'XỎ 5198 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41841.jpg'),
('133', 'XỎ 4164 ĐEN', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0602.jpg'),
('134', 'XỎ 5191 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8772.JPG'),
('135', 'XỎ 605 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8726.JPG'),
('136', 'XỎ 605 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8768.JPG'),
('137', 'XỎ 602 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8687.JPG'),
('138', 'XỎ 602 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8735.JPG'),
('139', 'XỎ 5197 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8712.JPG'),
('14', 'MỌI 077 XANH', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_89681.jpg'),
('140', 'XỎ 536 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5789.jpg'),
('141', 'XỎ 412 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87661.JPG'),
('142', 'XỎ 610 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5263.jpg'),
('143', 'XỎ T6 ĐEN', 550, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5255.jpg'),
('144', 'XỎ 1060 ĐEN', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3030.jpg'),
('145', 'XỎ 5189 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3845.JPG'),
('146', 'XỎ 454 NÂU', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3941.jpg'),
('147', 'XỎ 454 XANH', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3962.jpg'),
('148', 'XỎ 454 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11271.JPG'),
('149', 'XỎ 453 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87311.jpg'),
('15', 'MỌI 077 ĐEN', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_89421.jpg'),
('150', 'XỎ 453 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1111.JPG'),
('151', 'XỎ 127 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57862.jpg'),
('152', 'XỎ 204 ĐEN', 430, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57711.jpg'),
('153', 'XỎ 915 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3897.jpg'),
('155', 'XỎ 5919 ĐEN', 459, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3872.jpg'),
('156', 'XỎ 287 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11371.JPG'),
('157', 'XỎ 5167 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11151.JPG'),
('158', 'XỎ T7 ĐEN', 440, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9411.jpg'),
('159', 'XỎ 0548 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9395.jpg'),
('16', 'MỌI 5337 RÊU', 490, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8964.jpg'),
('160', 'XỎ 480 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9380.jpg'),
('161', 'XỎ 8494 NÂU', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9307.jpg'),
('162', 'XỎ 2124 NÂU', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9302.jpg'),
('163', 'XỎ 0547 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6317.jpg'),
('164', 'XỎ 0546 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_63011.jpg'),
('165', 'XỎ 5162 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6292.jpg'),
('166', 'XỎ 643 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6284.jpg'),
('167', 'XỎ 038 ĐEN', 570, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6288.jpg'),
('168', 'XỎ 1317 VÀNG', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6248.jpg'),
('169', 'XỎ 0539 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6778.JPG'),
('17', 'MỌI 5128 NÂU', 460, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_89601.jpg'),
('170', 'XỎ 5185 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6773.JPG'),
('171', 'XỎ 5185 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6783.JPG'),
('172', 'XỎ 616 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42741.jpg'),
('173', 'XỎ 078 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3047.jpg'),
('174', 'XỎ 8229 ĐEN', 800, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42642.jpg'),
('175', 'XỎ 635 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4238.jpg'),
('176', 'XỎ 634 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41881.jpg'),
('177', 'XỎ 5198 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41841.jpg'),
('178', 'XỎ 4164 ĐEN', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0602.jpg'),
('179', 'XỎ 5191 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8772.JPG'),
('18', 'Giày búp bê H77 Đen', 255, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_18631.jpg'),
('180', 'XỎ 605 NÂU', 468, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8726.JPG'),
('181', 'XỎ 605 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8768.JPG'),
('182', 'XỎ 602 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8687.JPG'),
('183', 'XỎ 602 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8735.JPG'),
('184', 'XỎ 5197 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8712.JPG'),
('185', 'XỎ 536 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5789.jpg'),
('186', 'XỎ 412 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87661.JPG'),
('187', 'XỎ 610 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5263.jpg'),
('188', 'XỎ T6 ĐEN', 550, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5255.jpg'),
('189', 'XỎ 1060 ĐEN', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3030.jpg'),
('19', 'MỌI MB53 NÂU', 550, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_02591.jpg'),
('191', 'CỘT DÂY 1109 ĐEN', 560, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0643.jpg'),
('192', 'CỘT DÂY 281 ĐEN', 490, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11231.JPG'),
('193', 'CÔT DÂY 281 NÂU', 490, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8977.jpg'),
('194', 'CỘT DÂY 010 ĐEN', 700, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41102.jpg'),
('195', 'CỘT DÂY 605 ĐEN', 480, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99772.jpg'),
('196', 'CỘT DÂY 4019 ĐEN', 400, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99731.jpg'),
('197', 'CỘT DÂY 1615 ĐEN', 450, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99691.jpg'),
('199', 'CỘT DÂY 468 ĐEN', 480, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8662.jpg'),
('2', 'XỎ 2017 NÂU 6F', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_37251.jpg'),
('20', 'MỌI 1618 NÂU', 480, 'Nam', 'MỌI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_89291.'),
('200', 'CỘT DÂY 468 NÂU', 480, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_76901.jpg'),
('201', 'CỘT DÂY 478 ĐEN', 460, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_76852.jpg'),
('202', 'CỘT DÂY 1026 ĐEN', 400, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2786.JPG'),
('203', 'CỘT DÂY 1247 ĐEN', 500, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_86861.jpg'),
('204', 'CỘT DÂY 951 ĐEN', 400, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1217.JPG'),
('205', 'CỘT DÂY 461 ĐEN', 440, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11771.JPG'),
('206', 'CỘT DÂY 458 ĐEN', 480, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11541.JPG'),
('207', 'CỘT DÂY 638 NÂU', 460, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6228.jpg'),
('208', 'CỘT DÂY 043 ĐEN', 550, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3915.jpg'),
('209', 'CỘT DÂY H389 ĐEN', 620, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5308.jpg'),
('21', 'MỌI 414 ĐEN', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_40841.jpg'),
('210', 'CỘT DÂY 426 ĐEN', 440, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5291.jpg'),
('211', 'CỘT DÂY 608 NÂU', 490, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5287.jpg'),
('212', 'CỘT DÂY H384 ĐEN', 620, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3039.jpg'),
('213', 'CỘT DÂY 5187 ĐEN', 480, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3770.JPG'),
('214', 'CỘT DÂY 709 ĐEN', 440, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1013.JPG'),
('215', 'CỘT DÂY 9802 ĐEN', 550, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1008.JPG'),
('216', 'CÔT DÂY 493 ĐEN', 560, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0023-_MG_9258-1.JPG'),
('217', 'CỘT DÂY 070  ĐEN', 620, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0019-_MG_9933-1.JPG'),
('218', 'CỘT DÂY 483 ĐEN', 560, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0017-_MG_9923-1.JPG'),
('219', 'CỘT DÂY 358 ĐEN', 460, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0016-_MG_9916-1.JPG'),
('22', 'MỌI 718 NÂU', 480, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00272.jpg'),
('220', 'CỘT DÂY 156  ĐEN', 450, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0004-0160-1-1.JPG'),
('221', 'MỌI 6197 XÁM', 310, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07121.jpg'),
('222', 'MỌI 2991 ĐEN', 300, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_40881.jpg'),
('223', 'CỘT DÂY 6193 NÂU', 360, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9914.jpg'),
('224', 'MỌI 7438 XANH', 300, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87101.jpg'),
('225', 'MỌI 7438 ĐEN', 300, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87061.jpg'),
('226', 'MỌI 8445 XANH', 300, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87021.jpg'),
('227', 'Xỏ 6187 NÂU', 310, 'Nam', 'GIÀY VẢI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79671.jpg'),
('228', 'Bal T605 đen', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9920.jpg'),
('229', 'Bal HP499 XANH', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01021.jpg'),
('23', 'MỌI 718 ĐEN', 480, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99951.jpg'),
('230', 'Bal HP499 kem,  xanh', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00561.jpg'),
('231', 'Bal 1795 kem', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00642.jpg'),
('232', 'BAL 1795 ĐEN 3F', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8540.jpg'),
('233', 'Bal 6035 NHŨ', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00601.jpg'),
('234', 'BAL 2038 KEM', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7841.jpg'),
('235', 'BAL 2058 ĐEN', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77131.jpg'),
('236', 'BAL 0399 XÁM', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77652.jpg'),
('237', 'BAL 0399 ĐEN', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77351.jpg'),
('238', 'BAL 7059 ĐEN NHŨ', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3126.JPG'),
('239', 'BAL 7055 NHŨ', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2962.JPG'),
('24', 'MỌI 076 XANH', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00002.jpg'),
('240', 'HP430 ĐEN', 275, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0137.jpg'),
('241', 'BAL 2020 KEM', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01961.jpg'),
('242', 'BAL 2020 ĐEN', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0129.jpg'),
('243', 'BAL B0149 TRẮNG 5F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8631.jpg'),
('244', 'BAL B0143 NÂU 5F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_85281.jpg'),
('245', 'BAL 5407 ĐEN 5F', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8390.jpg'),
('246', 'BAL  TD52 ĐEN 10F', 285, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8386.jpg'),
('247', 'BAL 1909 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8374.jpg'),
('248', 'BAL 1930 ĐEN 5F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_83661.jpg'),
('249', 'BAL 6011 BẠC.7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56102.jpg'),
('25', 'MỌI 076 ĐEN', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99851.jpg'),
('250', 'BAL 1818 HỒNG NÂU 5F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07661.JPG'),
('251', 'BAL TW0071 ĐEN 3F', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0547.JPG'),
('252', 'BAL TW0071 HONG 3F', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_08511.JPG'),
('253', 'BAL HỞ 406 XANH  8F', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06951.JPG'),
('254', 'BAL HỞ 406 ĐEN 8F', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06892.JPG'),
('255', 'BAL A7 -238 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0556.JPG'),
('256', 'BAL HTB303 ĐEN 3F', 235, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9512.jpg'),
('257', 'BAL 377 HỒNG ,ĐEN 12F', 335, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_52931.jpg'),
('258', 'BAL 377 ĐEN ,HỒNG 12F', 335, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5219.jpg'),
('259', 'BAL A84 HỒNG 3F', 410, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_90321.JPG'),
('26', 'MỌI N73 NÂU', 490, 'Nam', 'MỌI', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00042.jpg'),
('260', 'BAL 7389 NÂU 7F', 310, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7054.JPG'),
('261', 'BAL HBT 210 XANH 5F', 230, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7086.JPG'),
('262', 'BAL HBT 106 ĐEN 7F', 230, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7001.JPG'),
('263', 'BAL 3680 ĐEN BÓNG 5F', 300, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4569.jpg'),
('264', 'BAL HỞ VC536 ĐEN 3F', 275, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10831.jpg'),
('265', 'BAL AV5 -198 ĐẸN 5F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10781.jpg'),
('266', 'BAL V7 -225 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8941.JPG'),
('267', 'BAL V7-227 NÂU 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8945.JPG'),
('268', 'BAL V7-227 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8936.JPG'),
('269', 'BAL 1287 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5442.jpg'),
('27', 'MỌI N73 ĐEN', 490, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_99811.jpg'),
('270', 'BAL DD001 KEM  7F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2925.jpg'),
('271', 'BAL V7-239 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2901.jpg'),
('272', 'BAL V7-155 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9086.jpg'),
('274', 'Bal HP499 XANH', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01021.jpg'),
('275', 'Bal HP499 kem,  xanh', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00561.jpg'),
('276', 'Bal 1795 kem', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00642.jpg'),
('277', 'BAL 1795 ĐEN 3F', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8540.jpg'),
('278', 'Bal 6035 NHŨ', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00601.jpg'),
('279', 'BAL 2038 KEM', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7841.jpg'),
('28', 'MỌI K3638 RÊU', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00231.jpg'),
('280', 'BAL 2058 ĐEN', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77131.jpg'),
('281', 'BAL 0399 XÁM', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77652.jpg'),
('282', 'BAL 0399 ĐEN', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77351.jpg'),
('283', 'BAL 7059 ĐEN NHŨ', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3126.JPG'),
('284', 'BAL 7055 NHŨ', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2962.JPG'),
('285', 'HP430 ĐEN', 275, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0137.jpg'),
('286', 'BAL 2020 KEM', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01961.jpg'),
('287', 'BAL 2020 ĐEN', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0129.jpg'),
('288', 'BAL B0149 TRẮNG 5F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8631.jpg'),
('289', 'BAL B0143 NÂU 5F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_85281.jpg'),
('29', 'MỌI K3636 RÊU', 520, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00142.jpg'),
('290', 'BAL 5407 ĐEN 5F', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8390.jpg'),
('291', 'BAL  TD52 ĐEN 10F', 285, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8386.jpg'),
('292', 'BAL 1909 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8374.jpg'),
('293', 'BAL 1930 ĐEN 5F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_83661.jpg'),
('294', 'BAL 6011 BẠC.7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56102.jpg'),
('295', 'BAL 1818 HỒNG NÂU 5F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07661.JPG'),
('296', 'BAL TW0071 ĐEN 3F', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0547.JPG'),
('297', 'BAL TW0071 HONG 3F', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_08511.JPG'),
('298', 'BAL HỞ 406 XANH  8F', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06951.JPG'),
('299', 'BAL HỞ 406 ĐEN 8F', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06892.JPG'),
('3', 'XỎ 929 ĐEN 6F', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0270.jpg'),
('30', 'MỌI 1929 NÂU', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77031.jpg'),
('300', 'BAL A7 -238 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0556.JPG'),
('301', 'BAL HTB303 ĐEN 3F', 235, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9512.jpg'),
('302', 'BAL 377 HỒNG ,ĐEN 12F', 335, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_52931.jpg'),
('303', 'BAL 377 ĐEN ,HỒNG 12F', 335, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5219.jpg'),
('304', 'BAL A84 HỒNG 3F', 410, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_90321.JPG'),
('305', 'BAL 7389 NÂU 7F', 310, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7054.JPG'),
('306', 'BAL HBT 210 XANH 5F', 230, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7086.JPG'),
('307', 'BAL HBT 106 ĐEN 7F', 230, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7001.JPG'),
('308', 'BAL 3680 ĐEN BÓNG 5F', 300, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4569.jpg'),
('309', 'BAL HỞ VC536 ĐEN 3F', 275, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10831.jpg'),
('31', 'MỌI 2078 ĐEN', 550, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_76691.jpg'),
('310', 'BAL AV5 -198 ĐẸN 5F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10781.jpg'),
('311', 'BAL V7 -225 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8941.JPG'),
('312', 'BAL V7-227 NÂU 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8945.JPG'),
('313', 'BAL V7-227 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8936.JPG'),
('314', 'BAL 1287 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5442.jpg'),
('315', 'BAL DD001 KEM  7F', 370, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2925.jpg'),
('316', 'BAL V7-239 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2901.jpg'),
('317', 'BAL V7-155 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9086.jpg'),
('318', 'Bal T605 đen', 280, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9920.jpg'),
('319', 'Bal HP499 XANH', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01021.jpg'),
('32', 'MỌI 7290 ĐEN', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_36801.jpg'),
('320', 'Bal HP499 kem,  xanh', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00561.jpg'),
('321', 'Bal 1795 kem', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00642.jpg'),
('322', 'BAL 1795 ĐEN 3F', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8540.jpg'),
('323', 'Bal 6035 NHŨ', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_00601.jpg'),
('324', 'BAL 2038 KEM', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7841.jpg'),
('325', 'BAL 2058 ĐEN', 270, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77131.jpg'),
('326', 'BAL 0399 XÁM', 250, 'Nữ', 'GIÀY BÍT GÓT CAO', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77652.jpg'),
('327', 'BAL 0399 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77351.jpg'),
('328', 'BAL 7059 ĐEN NHŨ', 270, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3126.JPG'),
('329', 'BAL 7055 NHŨ', 270, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2962.JPG'),
('33', 'MỌI 7290 NÂU', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_37711.jpg'),
('330', 'HP430 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0137.jpg'),
('331', 'BAL 2020 KEM', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_01961.jpg'),
('332', 'BAL 2020 ĐEN', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0129.jpg'),
('333', 'BAL B0149 TRẮNG 5F', 370, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8631.jpg'),
('334', 'BAL B0143 NÂU 5F', 370, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_85281.jpg'),
('335', 'BAL 5407 ĐEN 5F', 270, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8390.jpg'),
('336', 'BAL  TD52 ĐEN 10F', 285, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8386.jpg'),
('337', 'BAL 1909 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8374.jpg'),
('338', 'BAL 1930 ĐEN 5F', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_83661.jpg'),
('339', 'BAL 6011 BẠC.7F', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56102.jpg'),
('34', 'MỌI 0772 NÂU', 480, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_37012.jpg'),
('340', 'BAL 1818 HỒNG NÂU 5F', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07661.JPG'),
('341', 'BAL TW0071 ĐEN 3F', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0547.JPG'),
('342', 'BAL TW0071 HONG 3F', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_08511.JPG'),
('343', 'BAL HỞ 406 XANH  8F', 280, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06951.JPG'),
('344', 'BAL HỞ 406 ĐEN 8F', 280, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_06892.JPG'),
('345', 'BAL A7 -238 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0556.JPG'),
('346', 'BAL HTB303 ĐEN 3F', 235, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9512.jpg'),
('347', 'BAL 377 HỒNG ,ĐEN 12F', 335, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_52931.jpg'),
('348', 'BAL 377 ĐEN ,HỒNG 12F', 335, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5219.jpg'),
('349', 'BAL A84 HỒNG 3F', 410, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_90321.JPG'),
('35', 'MỌI 998 ĐEN', 610, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_36921.jpg'),
('350', 'BAL 7389 NÂU 7F', 310, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7054.JPG'),
('351', 'BAL HBT 210 XANH 5F', 230, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7086.JPG'),
('352', 'BAL HBT 106 ĐEN 7F', 230, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7001.JPG'),
('353', 'BAL 3680 ĐEN BÓNG 5F', 300, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4569.jpg'),
('354', 'BAL HỞ VC536 ĐEN 3F', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10831.jpg'),
('355', 'BAL AV5 -198 ĐẸN 5F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_10781.jpg'),
('356', 'BAL V7 -225 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8941.JPG'),
('357', 'BAL V7-227 NÂU 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8945.JPG'),
('358', 'BAL V7-227 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8936.JPG'),
('359', 'BAL 1287 ĐEN 7F', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5442.jpg'),
('36', 'MỌI 5116 ĐEN', 460, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3688.jpg'),
('360', 'BAL DD001 KEM  7F', 370, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2925.jpg'),
('361', 'BAL V7-239 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2901.jpg'),
('362', 'BAL V7-155 ĐEN 7F', 345, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9086.jpg'),
('363', 'MỌI MX06 TÍM', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5135.jpg'),
('364', 'MỌI MX06 XANH', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5127.jpg'),
('365', 'MỌI MX27 ĐEN', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5097.jpg'),
('366', 'BAL 1380 ĐEN', 255, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8887.JPG'),
('367', 'BAL 2012 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56121.jpg'),
('368', 'BAL 2007 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5463.jpg'),
('369', 'BAL V210 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4335.jpg'),
('37', 'MỌI 205 ĐEN', 490, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3667.jpg'),
('370', 'XỎ HV08 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0021-_MG_2313-1.JPG'),
('371', 'XỎ HV09 ĐEN ,CAM', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0022-_MG_2318-1.JPG'),
('372', 'BAL 7340 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/124A_HongThanh_0415.jpg'),
('373', 'MỌI MX06 TÍM', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5135.jpg'),
('374', 'MỌI MX06 XANH', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5127.jpg'),
('375', 'MỌI MX27 ĐEN', 265, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5097.jpg'),
('378', 'BAL 2007 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5463.jpg'),
('379', 'BAL V210 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4335.jpg'),
('38', 'MỌI 6952 XANH', 600, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3663.jpg'),
('380', 'XỎ HV08 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0021-_MG_2313-1.JPG'),
('381', 'XỎ HV09 ĐEN ,CAM', 275, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0022-_MG_2318-1.JPG'),
('382', 'BAL 7340 ĐEN', 250, 'Nữ', 'GIÀY BÍT ĐẾ XẸP', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/124A_HongThanh_0415.jpg'),
('383', 'XỎ 553 NÂU', 350, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_02261.jpg'),
('384', 'BAL 597 ĐEN', 350, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41591.jpg'),
('385', 'BAL 597 XANH', 350, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42402.jpg'),
('386', 'BAL BB188 XÁM', 240, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42353.jpg'),
('387', 'BAL BH156 XÁM', 230, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42271.jpg'),
('388', 'BAL HV151 KEM', 265, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_75501.jpg'),
('389', 'BAL HV 151 DEN', 265, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7460.jpg'),
('39', 'MỌI 0614 ĐEN', 460, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9844.jpg'),
('390', 'BAL P720 ĐỎ', 290, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_39171.jpg'),
('391', 'BAL P721 BÒ', 280, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_38591.jpg'),
('392', 'BAL HT71 ĐEN', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_38361.jpg'),
('393', 'BAL P721 ĐEN', 280, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_38191.jpg'),
('394', 'BAL P722 XÁM', 280, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_38031.jpg'),
('395', 'BAL HT71 KEM', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_37981.jpg'),
('396', 'BAL P720 KEM', 290, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_37851.jpg'),
('397', 'Bal HV84-B đen', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9941.jpg'),
('398', 'Bal HV84 cam', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0145.jpg'),
('399', 'BAL HV80 XANH ĐEN', 260, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77251.jpg'),
('4', 'CỘT DÂY 931 ĐEN 6F', 590, 'Nam', 'CỘT DÂY', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0258.jpg'),
('40', 'MỌI 953 NÂU', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79591.jpg'),
('400', 'BAL BL126 ĐEN', 275, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3108.JPG'),
('401', 'BAL BL126 KEM', 275, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2955.JPG'),
('402', 'BAL HỞ B0153 XANH', 310, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8532.jpg'),
('403', 'BAL 1888 XANH', 260, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_55281.jpg'),
('404', 'BAL T601 ĐEN', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_55011.jpg'),
('405', 'BAL BS35 ĐEN', 255, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56491.jpg'),
('406', 'BAL H64 ĐEN', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5185.jpg'),
('407', 'BAL BS35 BÒ ,ĐỎ', 255, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4621.jpg'),
('408', 'BAL H58 ĐEN', 270, 'Nữ', 'GIÀY BÍT ĐẾ XUỒNG', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0735.jpg'),
('409', 'BÚP BÊ HP 502 ĐEN', 245, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_91022.jpg'),
('41', 'MỌI 953 ĐEN', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79422.jpg'),
('410', 'BÚP BÊ HP502 ĐỎ', 245, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42791.jpg'),
('411', 'BÚP BÊ HP 502 KEM', 245, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_7612.jpg'),
('412', 'BÚP BÊ HP502 xám kem 7F', 245, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_76341.jpg'),
('413', 'BÚP BÊ B41 XANH', 265, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_91202.jpg'),
('414', 'BÚP BÊ B41 ĐEN', 265, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_90551.jpg'),
('415', 'BÚP BÊ B41 HỒNG', 265, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_91121.jpg'),
('416', 'BÚP BÊ B41 ĐỎ 7F', 265, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_90591.jpg'),
('417', 'BÚP BÊ B41 ĐỒNG 7F', 265, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8623.jpg'),
('418', 'BÚP BÊ BN5 ĐEN.7F', 235, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_56741.jpg'),
('419', 'BÚP BÊ T801 ĐEN', 235, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41751.jpg'),
('42', 'MỌI H096 NÂU', 510, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2856.JPG'),
('420', 'BÚP BÊ T607 đen 3F', 290, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_76381.jpg'),
('421', 'Búp Bê M68 đen', 280, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9969.jpg'),
('422', 'Búp Bê M69 đen', 290, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9965.jpg'),
('423', 'BÚP BÊ SK64 BÒ', 300, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79201.jpg'),
('424', 'BÚP BÊ SK65 ĐEN', 300, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_77311.jpg'),
('425', 'BÚP BÊ M67 ĐEN', 290, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3739.jpg'),
('426', 'BÚP BÊ T595 ĐEN', 270, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3644.jpg'),
('427', 'BÚP BÊ T598 ĐEN', 270, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3601.jpg'),
('428', 'BÚP BÊ H7-214 ĐEN 7F', 340, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_07881.JPG'),
('429', 'BÚP BẺ 7002 BẠC ,XANH 7F', 250, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_52981.jpg'),
('43', 'MỌI H096 ĐEN', 510, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79501.jpg'),
('430', 'BÚP BÊ 7002 XANH ,BẠC 7F', 250, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_52321.jpg'),
('431', 'BÚP BÊ 014 ĐEN 10F', 295, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9309.JPG'),
('432', 'BÚP BÊ R15 NÂU', 310, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5650.jpg'),
('4322', 'fdsfsdf', 0, 'sdf', 'dsfsdfsdf', 'sdfsdf'),
('433', 'BÚP BÊ 235 KEM ,ĐEN 5F', 300, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8983.jpg'),
('434', 'BÚP BÊ 235 ĐEN,KEM 5F', 300, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8891.jpg'),
('435', 'BÚP BÊ H50 ĐEN', 250, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0010-_MG_9592-1.JPG'),
('436', 'BUP BÊ M54 ĐEN', 270, 'Nữ', 'GIÀY BÚP BÊ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/150A_HongThanh.jpg'),
('437', 'SANDAL H56 KEM HỒNG 5F', 270, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9128.jpg'),
('438', 'SANDAL C768 ĐEN 7F', 230, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8908.jpg'),
('439', 'SANDAL SD4 KEM 9F', 240, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2399.JPG'),
('44', 'MỌI 5110 ĐEN', 480, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79341.jpg'),
('440', 'SANDAL B72 ĐEN 10F', 225, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/204A_HongThanh_1494.jpg'),
('441', 'SANDAL H147 XÁM 10F', 270, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/174A_HongThanh_1395.jpg'),
('442', 'SANDAL H56 KEM HỒNG 5F', 270, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9128.jpg'),
('443', 'SANDAL C768 ĐEN 7F', 230, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8908.jpg'),
('444', 'SANDAL SD4 KEM 9F', 240, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2399.JPG'),
('445', 'SANDAL B72 ĐEN 10F', 225, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/204A_HongThanh_1494.jpg'),
('446', 'SANDAL H147 XÁM 10F', 270, 'Nữ', 'GIÀY XĂNG ĐAN GÓT CA', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/174A_HongThanh_1395.jpg'),
('45', 'MỌI 5673 ĐEN', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_79291.jpg'),
('46', 'MỌI 5673 NÂU', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2881.JPG'),
('47', 'MỌI 012 NÂU', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_28731.JPG'),
('48', 'MỌI 336 NÂU', 550, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2864.JPG'),
('49', 'MỌI 339 ĐEN', 550, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0278.jpg'),
('5', 'XỎ 1565 ĐEN 6F', 650, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6769.JPG'),
('50', 'MỌI 595 NÂU', 510, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2860.JPG'),
('51', 'MỌI 595 XANH', 510, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2904.JPG'),
('52', 'MỌI 596 XANH', 500, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2845.JPG'),
('53', 'MỌI 5102 ĐEN', 490, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0236.jpg'),
('54', 'MỌI 5102 NÂU', 490, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2850.JPG'),
('55', 'MỌI 5674 ĐEN', 560, 'Nam', 'MỌI ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_2798.JPG'),
('56', 'XỎ 454 NÂU', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3941.jpg'),
('57', 'XỎ 454 XANH', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3962.jpg'),
('58', 'XỎ 454 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11271.JPG'),
('59', 'XỎ 453 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87311.jpg'),
('6', 'XỎ 2023 ĐEN.6F', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87701.JPG'),
('60', 'XỎ 453 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_1111.JPG'),
('61', 'XỎ 127 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57862.jpg'),
('62', 'XỎ 204 ĐEN', 430, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_57711.jpg'),
('63', 'XỎ 915 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3897.jpg'),
('64', 'XỎ 790 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11411.JPG'),
('65', 'XỎ 5919 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3872.jpg'),
('66', 'XỎ 287 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11371.JPG'),
('67', 'XỎ 5167 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_11151.JPG'),
('68', 'XỎ T7 ĐEN', 440, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9411.jpg'),
('69', 'XỎ 0548 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9395.jpg'),
('7', 'XỎ 2016 ĐEN 6F', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87871.JPG'),
('70', 'XỎ 480 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9380.jpg'),
('71', 'XỎ 8494 NÂU', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9307.jpg'),
('72', 'XỎ 2124 NÂU', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_9302.jpg'),
('73', 'XỎ 0547 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6317.jpg'),
('74', 'XỎ 0546 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_63011.jpg'),
('75', 'XỎ 5162 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6292.jpg'),
('76', 'XỎ 643 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6284.jpg'),
('77', 'XỎ 038 ĐEN', 570, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6288.jpg'),
('78', 'XỎ 1317 VÀNG', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6248.jpg'),
('79', 'XỎ 0539 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6778.JPG'),
('8', 'XỎ 2016 NÂU 6F', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87791.JPG'),
('80', 'XỎ 5185 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6773.JPG'),
('81', 'XỎ 5185 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_6783.JPG'),
('82', 'XỎ 616 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42741.jpg'),
('83', 'XỎ 078 ĐEN', 490, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3047.jpg'),
('84', 'XỎ 8229 ĐEN', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_42642.jpg'),
('85', 'XỎ 635 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_4238.jpg'),
('86', 'XỎ 634 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41881.jpg'),
('87', 'XỎ 5198 ĐEN', 450, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_41841.jpg');
INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `GiaSanPham`, `LoaiSanPham`, `KieuSanPham`, `HinhAnh`) VALUES
('88', 'XỎ 4164 ĐEN', 590, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_0602.jpg'),
('89', 'XỎ 5191 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8772.JPG'),
('9', 'XỎ 1534 ĐEN.6F', 610, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/0036-_MG_9429-1.JPG'),
('90', 'XỎ 605 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8726.JPG'),
('91', 'XỎ 605 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8768.JPG'),
('92', 'XỎ 602 NÂU', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8687.JPG'),
('93', 'XỎ 602 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8735.JPG'),
('94', 'XỎ 5197 ĐEN', 480, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_8712.JPG'),
('95', 'XỎ 536 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5789.jpg'),
('96', 'XỎ 412 ĐEN', 460, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_87661.JPG'),
('97', 'XỎ 610 ĐEN', 560, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5263.jpg'),
('98', 'XỎ T6 ĐEN', 550, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_5255.jpg'),
('99', 'XỎ 1060 ĐEN', 620, 'Nam', 'XỎ', 'http://www.giayhongthanh.com.vn/upload/photo/thumb/IMG_3030.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `fk_admin_phanquyen` (`id_PhanQuyen`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`MaSanPham`),
  ADD KEY `fk_chitiethoadon_sanpham` (`MaSanPham`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `fk_hoadon_khachhang` (`TenKhachHang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`TenKhachHang`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id_PhanQuyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_phanquyen` FOREIGN KEY (`id_PhanQuyen`) REFERENCES `phanquyen` (`id_PhanQuyen`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_chitiethoadon_hoadon` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `fk_chitiethoadon_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_khachhang` FOREIGN KEY (`TenKhachHang`) REFERENCES `khachhang` (`TenKhachHang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
