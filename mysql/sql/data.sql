-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 07:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtimviec`
--

-- --------------------------------------------------------

--
-- Table structure for table `congty`
--

CREATE TABLE `congty` (
  `MaCongTy` int(11) NOT NULL,
  `TenCongTy` varchar(50) NOT NULL DEFAULT '',
  `diachi` varchar(40) NOT NULL DEFAULT '',
  `website` varchar(50) NOT NULL DEFAULT '',
  `motacongty` varchar(2000) NOT NULL DEFAULT '',
  `linkava` varchar(500) NOT NULL DEFAULT '',
  `linhvuc` varchar(100) NOT NULL DEFAULT '',
  `thanhpho` varchar(50) NOT NULL DEFAULT '',
  `phucloi` varchar(2000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congty`
--

INSERT INTO `congty` (`MaCongTy`, `TenCongTy`, `diachi`, `website`, `motacongty`, `linkava`, `linhvuc`, `thanhpho`, `phucloi`) VALUES
(1, 'FPT', 'Hồ Chí Minh', 'fpt.com', 'mo ta cong ty fpt', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', ''),
(2, 'VNG', 'Hồ Chí Minh', 'vng.com', 'mo ta cong ty vng', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Đà Nẵng', ''),
(3, 'Google', 'America', 'google.com', 'mo ta cong ty google', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Quãng Nam', ''),
(4, 'facebook', 'America', 'facebook.com', 'mo ta cong ty facebook', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Nghệ An', ''),
(5, 'amazon', 'SouthAmerica', 'amazon.com', 'mo ta cong ty', '../../../src/assets/Images/google.png', 'ban hang', 'america', ''),
(6, 'tencent', 'America', 'tencent.com', 'mo ta cong ty tencent', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', ''),
(7, 'topcv', 'America', 'topcv.com', 'mo ta cong ty topcv', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', ''),
(8, 'theanh28', 'America', 'theanh28.com', 'mo ta cong ty theanh28', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', ''),
(9, 'binance', 'America', 'binance.com', 'mo ta cong ty binance', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', ''),
(10, 'coccoc', 'America', 'coccoc.com', 'mo ta cong ty coccoc', '../../../src/assets/Images/google.png', 'cong nghe thong tin', 'Hồ Chí Minh', '');

-- --------------------------------------------------------

--
-- Table structure for table `congviecduocmoi`
--

CREATE TABLE `congviecduocmoi` (
  `MaNguoiTimViec` int(11) NOT NULL,
  `MaCongTy` int(11) NOT NULL,
  `daduyet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congviecduocmoi`
--

INSERT INTO `congviecduocmoi` (`MaNguoiTimViec`, `MaCongTy`, `daduyet`) VALUES
(1, 2, -1),
(2, 1, 0),
(1, 3, 1),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dangviec`
--

CREATE TABLE `dangviec` (
  `MaDangTin` int(11) NOT NULL,
  `MaCongTy` int(11) NOT NULL,
  `tencongviec` varchar(100) NOT NULL,
  `linhvuc` varchar(100) NOT NULL,
  `chucvu` varchar(100) NOT NULL,
  `luong` decimal(20,0) NOT NULL,
  `loaicongviec` int(10) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `motacongviec` varchar(2000) NOT NULL,
  `tagkinang` varchar(200) NOT NULL,
  `thoihan` date NOT NULL DEFAULT '2023-06-06',
  `yeucaucongviec` varchar(5000) NOT NULL DEFAULT '',
  `yeucaubangcap` varchar(100) NOT NULL DEFAULT '',
  `quyenloi` varchar(5000) NOT NULL DEFAULT '',
  `soluongtuyendung` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dangviec`
--

INSERT INTO `dangviec` (`MaDangTin`, `MaCongTy`, `tencongviec`, `linhvuc`, `chucvu`, `luong`, `loaicongviec`, `diachi`, `sdt`, `email`, `motacongviec`, `tagkinang`, `thoihan`, `yeucaucongviec`, `yeucaubangcap`, `quyenloi`, `soluongtuyendung`) VALUES
(1, 1, 'Lập trình BackEnd', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(2, 2, 'Lập trình FrontEnd', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(3, 3, 'Lập trình BlockChain', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(4, 1, 'Lập trình nhúng', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(5, 3, 'quản lí dự án', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(6, 4, 'tester', 'Công Nghệ Thông Tin', 'nhân viên', '10000000', 1, 'quận 7 HCM', '0562854976', 'congty@gmail.com', 'công việc lập trình', 'php,html,js,java', '2023-06-06', '', '', '', 1),
(7, 2, 'Lập trình Java, Serverlet', 'Công nghệ thông tin', 'Lập trình viên', '10000000', 1, 'Tôn Đức Tháng', '123456789', 'dangminhphong912@gmail.com', '- Tích cực\r\n- Sáng tạo\r\n- Phụng sự', 'java,oop,mysql', '2023-04-30', '- Hiểu Java, OOP\r\n- Cấu trúc dữ liệu và giải thuật', 'đại học', '- Lương tháng 13\r\n- Ăn cơm 2 bữa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `luuct`
--

CREATE TABLE `luuct` (
  `MaNguoiTimViec` int(11) NOT NULL,
  `MaCongTy` int(11) NOT NULL,
  `MaDangTin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `luuct`
--

INSERT INTO `luuct` (`MaNguoiTimViec`, `MaCongTy`, `MaDangTin`) VALUES
(1, 2, 2),
(1, 3, 5),
(2, 1, 1),
(3, 2, 2),
(5, 1, 1),
(6, 1, 1),
(6, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `luuntv`
--

CREATE TABLE `luuntv` (
  `MaNguoiTimViec` int(11) NOT NULL,
  `MaCongTy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `luuntv`
--

INSERT INTO `luuntv` (`MaNguoiTimViec`, `MaCongTy`) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoitimviec`
--

CREATE TABLE `nguoitimviec` (
  `MaNguoiTimViec` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL DEFAULT '',
  `linkava` varchar(500) NOT NULL DEFAULT '',
  `congviec` varchar(100) NOT NULL DEFAULT '',
  `ngaysinh` date NOT NULL DEFAULT '2000-01-01',
  `gioitinh` int(10) NOT NULL,
  `loaicongviec` int(10) NOT NULL,
  `linhvuc` varchar(100) NOT NULL DEFAULT '',
  `thanhpho` varchar(20) NOT NULL DEFAULT '',
  `diachi` varchar(50) NOT NULL DEFAULT '',
  `muctieunghenghiep` varchar(1000) NOT NULL DEFAULT '',
  `hocvan` varchar(500) NOT NULL DEFAULT '',
  `kinang` varchar(400) NOT NULL DEFAULT '',
  `kinhnghiemlamviec` varchar(1000) NOT NULL DEFAULT '',
  `chitiet` varchar(200) NOT NULL DEFAULT '',
  `tagkinang` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoitimviec`
--

INSERT INTO `nguoitimviec` (`MaNguoiTimViec`, `hoten`, `linkava`, `congviec`, `ngaysinh`, `gioitinh`, `loaicongviec`, `linhvuc`, `thanhpho`, `diachi`, `muctieunghenghiep`, `hocvan`, `kinang`, `kinhnghiemlamviec`, `chitiet`, `tagkinang`) VALUES
(1, 'Phạm Duy Khoa', '../../../src/assets/Images/18-F.png', 'lập trình viên', '2003-03-13', 1, 1, 'công nghệ thông tin', 'Hồ Chí Minh', 'Quận 7', 'backend', 'tốt nghiệp đại học', 'pet: 150, toeic: 650', 'dưới 1 năm', 'mycv.io', 'php,js,html'),
(2, 'Dương Hải Đăng', '../../../src/assets/Images/18-F.png', 'lập trình viên', '2004-01-01', 1, 1, 'công nghệ thông tin', 'Hồ Chí Minh', 'Quận 6', 'frontend', 'tốt nghiệp đại học', 'pet: 150, toeic: 650', 'dưới 1 năm', 'mycv.io', 'php,js,html'),
(3, 'Nguyễn Hoàng Nhật Nam', '../../../src/assets/Images/18-F.png', 'lập trình viên', '2002-01-01', 1, 1, 'công nghệ thông tin', 'Hồ Chí Minh', 'Quận 8', 'blockchain', 'tốt nghiệp đại học', 'pet: 150, toeic: 650', 'dưới 1 năm', 'mycv.io', 'php,js,html'),
(4, 'Trần Phúc Thịnh', '../../../src/assets/Images/18-F.png', 'lập trình viên', '2005-01-01', 1, 1, 'công nghệ thông tin', 'Hồ Chí Minh', 'Quận 4', 'web developer', 'tốt nghiệp đại học', 'pet: 150, toeic: 650', 'dưới 1 năm', 'mycv.io', 'php,js,html'),
(5, 'Lê Hoàng Đức', '../../../src/assets/Images/18-F.png', 'lập trình viên', '2001-01-01', 1, 1, 'công nghệ thông tin', 'Hồ Chí Minh', 'Quận 1', 'lập trình nhúng', 'tốt nghiệp đại học', 'pet: 150, toeic: 650', 'dưới 1 năm', 'mycv.io', 'php,js,html'),
(6, 'Phong', '../../../src/assets/Images/avaClient/salary-icon.png', 'Work', '2022-01-01', 1, 1, 'major', 'City', 'Address', 'Target', 'Study', 'Skill', 'Experience', 'detail infomation', 'Tag Skill');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoancongty`
--

CREATE TABLE `taikhoancongty` (
  `MaCongTy` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoancongty`
--

INSERT INTO `taikhoancongty` (`MaCongTy`, `TenDangNhap`, `matkhau`, `sdt`, `email`) VALUES
(5, 'amazon', '123456', '023648957', 'congty3@gmail.com'),
(9, 'binance', '123456', '023648957', 'congty7@gmail.com'),
(10, 'coccoc', '123456', '023648957', 'congty8@gmail.com'),
(4, 'facebook', '123456', '023648957', 'congty2@gmail.com'),
(1, 'fpt', '123456', '023648957', 'congty@gmail.com'),
(3, 'google', '123456', '023648957', 'congty1@gmail.com'),
(6, 'tencent', '123456', '023648957', 'congty4@gmail.com'),
(8, 'theanh28', '123456', '023648957', 'congty6@gmail.com'),
(7, 'topcv', '123456', '023648957', 'congty5@gmail.com'),
(2, 'vng', '123456', '023648957', 'congty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoannguoitimviec`
--

CREATE TABLE `taikhoannguoitimviec` (
  `MaNguoiTimViec` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoannguoitimviec`
--

INSERT INTO `taikhoannguoitimviec` (`MaNguoiTimViec`, `TenDangNhap`, `matkhau`, `sdt`, `email`) VALUES
(2, 'duonghaidang', '123456', '035469827', 'nguoitimviec2@gmail.com'),
(5, 'lehoangduc', '123456', '035469827', 'nguoitimviec5@gmail.com'),
(6, 'mphong', '123456', '0123456789', 'dangminhphong2003@gmail.com'),
(3, 'nguyenhoangnhatnam', '123456', '035469827', 'nguoitimviec3@gmail.com'),
(1, 'phamduykhoa', '123456', '035469827', 'nguoitimviec1@gmail.com'),
(4, 'tranphucthinh', '123456', '035469827', 'nguoitimviec4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ungtuyen`
--

CREATE TABLE `ungtuyen` (
  `maungtuyen` int(11) NOT NULL,
  `daduyet` int(11) NOT NULL,
  `MaDangTin` int(11) NOT NULL,
  `MaNguoiTimViec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ungtuyen`
--

INSERT INTO `ungtuyen` (`maungtuyen`, `daduyet`, `MaDangTin`, `MaNguoiTimViec`) VALUES
(1, -1, 1, 1),
(2, 1, 2, 1),
(3, 0, 3, 1),
(4, -1, 5, 5),
(5, -1, 7, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`MaCongTy`);

--
-- Indexes for table `congviecduocmoi`
--
ALTER TABLE `congviecduocmoi`
  ADD KEY `MaNguoiTimViec` (`MaNguoiTimViec`) USING BTREE,
  ADD KEY `MaCongTy` (`MaCongTy`) USING BTREE;

--
-- Indexes for table `dangviec`
--
ALTER TABLE `dangviec`
  ADD PRIMARY KEY (`MaDangTin`),
  ADD KEY `MaCongTy` (`MaCongTy`) USING BTREE;

--
-- Indexes for table `luuct`
--
ALTER TABLE `luuct`
  ADD PRIMARY KEY (`MaNguoiTimViec`,`MaCongTy`,`MaDangTin`),
  ADD KEY `MaCongTy` (`MaCongTy`) USING BTREE,
  ADD KEY `MaDangTin` (`MaDangTin`) USING BTREE;

--
-- Indexes for table `luuntv`
--
ALTER TABLE `luuntv`
  ADD PRIMARY KEY (`MaNguoiTimViec`,`MaCongTy`),
  ADD KEY `MaCongTy` (`MaCongTy`) USING BTREE;

--
-- Indexes for table `nguoitimviec`
--
ALTER TABLE `nguoitimviec`
  ADD PRIMARY KEY (`MaNguoiTimViec`);

--
-- Indexes for table `taikhoancongty`
--
ALTER TABLE `taikhoancongty`
  ADD PRIMARY KEY (`TenDangNhap`,`email`),
  ADD KEY `MaCongTy` (`MaCongTy`) USING BTREE;

--
-- Indexes for table `taikhoannguoitimviec`
--
ALTER TABLE `taikhoannguoitimviec`
  ADD PRIMARY KEY (`TenDangNhap`,`email`),
  ADD KEY `MaNguoiTimViec` (`MaNguoiTimViec`) USING BTREE;

--
-- Indexes for table `ungtuyen`
--
ALTER TABLE `ungtuyen`
  ADD PRIMARY KEY (`maungtuyen`),
  ADD KEY `MaNguoiTimViec` (`MaNguoiTimViec`) USING BTREE,
  ADD KEY `MaDangTin` (`MaDangTin`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `congty`
--
ALTER TABLE `congty`
  MODIFY `MaCongTy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dangviec`
--
ALTER TABLE `dangviec`
  MODIFY `MaDangTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nguoitimviec`
--
ALTER TABLE `nguoitimviec`
  MODIFY `MaNguoiTimViec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ungtuyen`
--
ALTER TABLE `ungtuyen`
  MODIFY `maungtuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `congviecduocmoi`
--
ALTER TABLE `congviecduocmoi`
  ADD CONSTRAINT `congviecduocmoi_ibfk_1` FOREIGN KEY (`MaNguoiTimViec`) REFERENCES `nguoitimviec` (`MaNguoiTimViec`),
  ADD CONSTRAINT `congviecduocmoi_ibfk_2` FOREIGN KEY (`MaCongTy`) REFERENCES `congty` (`MaCongTy`);

--
-- Constraints for table `dangviec`
--
ALTER TABLE `dangviec`
  ADD CONSTRAINT `dangviec_ibfk_1` FOREIGN KEY (`MaCongTy`) REFERENCES `congty` (`MaCongTy`);

--
-- Constraints for table `luuct`
--
ALTER TABLE `luuct`
  ADD CONSTRAINT `luuct_ibfk_1` FOREIGN KEY (`MaNguoiTimViec`) REFERENCES `nguoitimviec` (`MaNguoiTimViec`),
  ADD CONSTRAINT `luuct_ibfk_2` FOREIGN KEY (`MaCongTy`) REFERENCES `congty` (`MaCongTy`),
  ADD CONSTRAINT `luuct_ibfk_3` FOREIGN KEY (`MaDangTin`) REFERENCES `dangviec` (`MaDangTin`);

--
-- Constraints for table `luuntv`
--
ALTER TABLE `luuntv`
  ADD CONSTRAINT `luuntv_ibfk_1` FOREIGN KEY (`MaNguoiTimViec`) REFERENCES `nguoitimviec` (`MaNguoiTimViec`),
  ADD CONSTRAINT `luuntv_ibfk_2` FOREIGN KEY (`MaCongTy`) REFERENCES `congty` (`MaCongTy`);

--
-- Constraints for table `taikhoancongty`
--
ALTER TABLE `taikhoancongty`
  ADD CONSTRAINT `taikhoancongty_ibfk_1` FOREIGN KEY (`MaCongTy`) REFERENCES `congty` (`MaCongTy`);

--
-- Constraints for table `taikhoannguoitimviec`
--
ALTER TABLE `taikhoannguoitimviec`
  ADD CONSTRAINT `taikhoannguoitimviec_ibfk_1` FOREIGN KEY (`MaNguoiTimViec`) REFERENCES `nguoitimviec` (`MaNguoiTimViec`);

--
-- Constraints for table `ungtuyen`
--
ALTER TABLE `ungtuyen`
  ADD CONSTRAINT `ungtuyen_ibfk_1` FOREIGN KEY (`MaNguoiTimViec`) REFERENCES `nguoitimviec` (`MaNguoiTimViec`),
  ADD CONSTRAINT `ungtuyen_ibfk_2` FOREIGN KEY (`MaDangTin`) REFERENCES `dangviec` (`MaDangTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
