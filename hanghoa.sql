-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 04:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanghoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaCTHD` varchar(6) NOT NULL,
  `MaHD` varchar(6) NOT NULL,
  `MaHH` varchar(6) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaCTHD`, `MaHD`, `MaHH`, `SoLuong`) VALUES
('ERT001', 'YUI001', 'ABC001', 1),
('ERT002', 'YUI002', 'ABC003', 1),
('ERT003', 'YUI003', 'ABC004', 1),
('ERT004', 'YUI004', 'ABC008', 1),
('ERT005', 'YUI005', 'ABC002', 1),
('ERT006', 'YUI006', 'ABC004', 1),
('ERT007', 'YUI007', 'ABC005', 1),
('ERT008', 'YUI008', 'ABC005', 1),
('ERT009', 'YUI009', 'ABC009', 1),
('ERT010', 'YUI010', 'ABC006', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MaHH` varchar(6) NOT NULL,
  `TenHH` varchar(20) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Hinh` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MaHH`, `TenHH`, `DonGia`, `Hinh`) VALUES
('DEF001', 'Toán 10 tập 1', 12000, NULL),
('DEF002', 'Ngữ Văn 12 tập 2', 15000, NULL),
('DEF003', 'Gone with the Wind', 260000, NULL),
('DEF004', 'Tuyển tập truyện kin', 0, NULL),
('DEF005', 'Doremon tập 30', 20000, NULL),
('DEF006', 'Cambridge Practice T', 140000, NULL),
('DEF007', 'Buổi Chiều Windows', 36000, NULL),
('DEF008', 'Con Chó Săn Nhà Bask', 75000, NULL),
('DEF009', 'Looking for Alaska', 230000, NULL),
('DEF010', 'The Count of Monte C', 207000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(6) NOT NULL,
  `NgayLapHD` date NOT NULL,
  `MaKH` varchar(6) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `NgayLapHD`, `MaKH`, `TongTien`) VALUES
('YUI001', '2019-11-28', 'ABC001', 207000),
('YUI002', '2019-09-12', 'ABC003', 140000),
('YUI003', '2020-06-28', 'ABC004', 12000),
('YUI004', '2020-07-01', 'ABC008', 260000),
('YUI005', '2019-12-28', 'ABC002', 40000),
('YUI006', '2020-01-04', 'ABC004', 75000),
('YUI007', '2019-08-28', 'ABC005', 36000),
('YUI008', '2019-09-19', 'ABC005', 20000),
('YUI009', '2020-01-16', 'ABC009', 20000),
('YUI010', '2019-10-08', 'ABC006', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(6) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `DienThoai` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `DienThoai`, `Email`) VALUES
('ABC001', 'Nguyễn Tiến An', 489785, NULL),
('ABC002', 'John Watson', 376247, 'watson@gmail.com'),
('ABC003', 'Franz Kafka', 426302, NULL),
('ABC004', 'John Green', 279880, 'green77@gmail.com'),
('ABC005', 'Hoàng Gia Linh', 464630, 'lunglink@gmail.com'),
('ABC006', 'Maxim Gorky', 817270, NULL),
('ABC007', 'Lương Chân Nhân', 941648, NULL),
('ABC008', 'Paula Hawkins', 338986, 'ontrain151@gmail.com'),
('ABC009', 'Michael Scott', 316105, 'alch3m1st@gmail.com'),
('ABC010', 'Percy Jackson', 670519, 'blu3lightning@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `MaLoai` varchar(6) NOT NULL,
  `TenLoai` varchar(20) NOT NULL,
  `MoTa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `MoTa`) VALUES
('000001', 'SGK', 'Sách giáo khoa lớp 10'),
('000002', 'SGK', 'Sách giáo khoa lớp 11'),
('000003', 'SGK', 'Sách giáo khoa lớp 12'),
('000004', 'Trinh thám', 'Tiểu thuyết trinh thám'),
('000005', 'Tiểu thuyết Việt Nam', NULL),
('000006', 'Kinh dị', 'Tiểu thuyết kinh dị'),
('000007', 'Truyện tranh', NULL),
('000008', 'Khoa học', NULL),
('000009', 'Luyện thi', 'Sách luyện thi'),
('000010', 'Ngoại văn', 'Sách tiếng nước ngoài');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaCTHD`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MaHH`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
