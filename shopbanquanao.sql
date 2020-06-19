-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 08:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopbanquanao`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `idCTHD` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Dongia` float NOT NULL,
  `Thanhtien` float NOT NULL,
  `khuyenmai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`idCTHD`, `idHD`, `idSP`, `Soluong`, `Dongia`, `Thanhtien`, `khuyenmai`) VALUES
(1, 16, 43, 1, 450000, 450000, 0),
(2, 17, 3, 1, 350000, 350000, 0),
(3, 18, 7, 1, 320000, 320000, 0),
(4, 19, 14, 1, 400000, 400000, 0),
(5, 20, 20, 1, 450000, 450000, 0),
(6, 21, 26, 1, 350000, 350000, 0),
(7, 22, 31, 1, 400000, 400000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `idHD` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `hoten_user` varchar(255) NOT NULL,
  `Gmail_user` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `Diachi` varchar(255) NOT NULL,
  `Tongtien` float NOT NULL,
  `payment` varchar(255) NOT NULL,
  `Ngaytao` varchar(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idHD`, `idUser`, `hoten_user`, `Gmail_user`, `phone`, `Diachi`, `Tongtien`, `payment`, `Ngaytao`, `trangthai`) VALUES
(16, 5, 'nguyen van c', 'nguyenvanc@gmail.com', '0968798351', 'Hồ Chí Minh', 450000, 'Tiền mặt', '15-05-2019', 1),
(17, 5, 'nguyenvanc', 'nguyenvanc@gmail.com', '0968798351', 'Hồ Chí Minh', 350000, 'Qua thẻ', '15-05-2019', 1),
(18, 2, 'nguyen van b', 'nguyenvanb@gmail.com', '0968798351', 'Quận 8 -  TP.Hồ chí minh', 320000, 'Tiền mặt', '15-05-2019', 1),
(19, 6, 'nguyen van d', 'nguyenvand@gmail.com', '0132849123', 'Hà Nội', 400000, 'Qua thẻ', '15-05-2019', 0),
(20, 1, 'nguyen van a', 'nguyenvana@gmail.com', '0132849123', 'Hà Nội', 450000, 'Tiền mặt', '15-05-2019', 1),
(21, 7, 'nguyen van e', 'nguyenvane@gmail.com', '0123494123', 'Hồ Chí Minh', 350000, 'Qua thẻ', '15-05-2019', 1),
(22, 7, 'nguyen van e', 'nguyenvane@gmail.com', '0123494123', 'Hồ Chí Minh', 400000, 'Qua thẻ', '15-05-2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `idLH` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_gmail` varchar(100) NOT NULL,
  `Noidung` text NOT NULL,
  `Create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idLSP` int(3) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `maloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`idLSP`, `tenloai`, `maloai`) VALUES
(1, 'Áo tay ngắn', 'ATN'),
(2, 'Áo tay dài', 'ATD'),
(3, 'Hoodie', 'HD'),
(4, 'Flannel', 'FN'),
(5, 'Quần short', 'QS'),
(6, 'Quần dài', 'QD');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `STT` int(11) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `Ten` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Luong` int(11) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Trangthai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhanQuyen` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`STT`, `MaNV`, `Ten`, `SDT`, `DiaChi`, `NgaySinh`, `GioiTinh`, `Luong`, `Pass`, `Trangthai`, `PhanQuyen`) VALUES
(1, 'Admin', 'Nguyen Van A', '0987654321', '20 Hai Bà Trung, P7, Quận 1,TPHCM', '1997-05-08', 'Nữ', 500, '123', 'Mở khóa', 'Admin'),
(2, 'Manager01', 'Tran Van B', '0837060928', '20, Quang Trung,P.10,Gò Vấp,HCM', '1999-05-26', 'Nam', 350, '123', 'Mở khóa', 'Manager'),
(3, 'Manager02', 'Vo Thi C', '0123456789', '18 Bùi thị xuân,P3,Tân Bình,HCM', '1999-05-12', 'Nam', 350, '123', 'Mở khóa', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `idLSP` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` float NOT NULL,
  `mota` varchar(200) NOT NULL,
  `hinhanh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idLSP`, `tensp`, `gia`, `mota`, `hinhanh`) VALUES
(1, 1, 'ĐẠI ĐỊNH SƠN HÀ SẮT', 450000, '[SẮT] ĐỊNH thần thiết, bọc lấy những căm hờn,\r\nGiết một trận, vì ngàn năm đất tổ.', 'aotayngan1.png'),
(2, 1, 'ĐẠI ĐỊNH SƠN HÀ NƯỚC', 450000, '[Nước] ĐẠI giang nổi sóng, gầm thét tận trời xanh.\r\nĐánh một trận, vì sơn hà xã tắc.', 'aotayngan2.png'),
(3, 1, '12 con giáp - rắn', 350000, 'Dưới tán rừng oai nghiêm,\r\nCạnh sông sâu thác dữ,\r\nQuấn lấy ngàn cổ thụ,\r\nNgạo nghễ nhìn hồng hoang.\r\nRẮN - LINH XÀ.', 'aotayngan3.png'),
(4, 1, 'Baby Don\'t Cry - Áo thun Đen', 350000, 'Áo thun đen đơn giản cá tính', 'aotayngan4.png'),
(5, 1, 'Noel No-End Vàng', 450000, 'Người ta cần mối tình đêm noel\r\nCòn anh thì chỉ cần mối tình mãi No-End', 'aotayngan4.png'),
(6, 1, 'Baby Don\'t Cry - Áo thun Trắng', 350000, 'Áo thun đơn giản cá tính', 'aotayngan6.png'),
(7, 1, 'Summer Puzzle Tee - Blue', 320000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'aotayngan7.png'),
(8, 1, 'Tết-ngải-bồ trắng', 450000, 'Áo thun trắng đơn giản', 'aotayngan8.png'),
(9, 1, 'Noel No-End Vàng', 450000, 'Người ta cần mối tình đêm noel\r\nCòn anh thì chỉ cần mối tình mãi No-End', 'aotayngan9.png'),
(10, 1, 'Áo Dark Society Tím', 450000, 'Một câu chuyện về xã hội hiện đại.\r\nCâu chuyện ngay trong chúng ta.', 'aotayngan10.png'),
(11, 2, 'Sweater Inside Out Vàng', 450000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'aotaydai1.png'),
(12, 2, 'Sweater Inside Out Đen', 450000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'aotaydai2.png'),
(13, 2, 'Áo Cháu Tiên tay dài', 400000, 'Áo con rồng cháu tiên', 'aotaydai3.png'),
(14, 2, 'Sweater Inside Out Hồng', 450000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'aotaydai4.png'),
(15, 2, 'Summer Puzzle Long Sleeve - Blue', 380000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'aotaydai5.png'),
(16, 2, 'Summer Puzzle Long Sleeve - Black', 380000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'aotaydai6.png'),
(17, 2, 'Áo Cháu Tiên tay dài', 400000, 'Áo con rồng cháu tiên', 'aotaydai7.png'),
(18, 2, 'Basic long sleeve - White', 300000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'aotaydai8.png'),
(19, 2, 'Baby Don\'t Cry - Sweater', 450000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'aotaydai9.png'),
(20, 3, 'Hoodie Unsteelable rose', 450000, 'Một form sweater mới, đường phố hơn, bụi bặm hơn.\r\nCùng với đó là phản quang đến từ Siser - Ý.\r\nNgoài ra, chất liệu vải của Inside out cũng đạt những tiêu chuẩn điên-rồ như: chống tia cực tím, không g', 'hoodie1.png'),
(21, 3, 'Hoodie Hồng', 450000, 'Hoodie đơn giản cá tính', 'hoodie2.png'),
(22, 3, 'Hoodie Xanh', 450000, 'Hoodie đơn giản cá tính', 'hoodie3.png'),
(23, 3, 'Hoodie Vàng', 450000, 'Hoodie đơn giản cá tính', 'hoodie4.png'),
(24, 3, 'Hoodie Đen', 450000, 'Hoodie đơn giản cá tính', 'hoodie5.png'),
(26, 4, 'Deep blue sea flannel', 350000, 'Flannel sọc caro xanh đen', 'flannel1.png'),
(27, 4, 'Northern jungle flannel', 350000, 'Flannel họa tiết cá tính', 'flannel2.png'),
(28, 4, 'Ivory creme flannel', 350000, 'Flannel kaki trắng xám', 'flannel3.png'),
(29, 4, 'Silver stardust flannel', 350000, 'Flannel bạc', 'flannel4.png'),
(30, 5, 'Cordless primitive UJ shorts - Quần shorts UJ không dây', 400000, 'Quần iconic đen', 'quanshort1.png'),
(31, 5, 'Quần Midwaves', 400000, 'Midwaves a.k.a. Giữa-những-cơn-sóng\r\nBộ sưu tập được lấy cảm hứng từ hai điều rất ý nghĩa với chúng tôi:\r\nMiền Trung thân thương.\r\nNhững cơn sóng bất tận của dải đất này.\r\nMiền Trung năm nào cũng bão ', 'quanshort2.png'),
(32, 5, 'Summer Puzzle Shorts - White', 400000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'quanshort3.png'),
(33, 5, 'Summer Puzzle Shorts - Blue', 400000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'quanshort4.png'),
(34, 5, 'Summer Puzzle Shorts - Black', 400000, 'Một bầu trời trong xanh.\r\nMột bãi cỏ trải nắng vàng.\r\nKhông gian đầy tiếng cười.\r\nVà ngập tràn tuổi trẻ.\r\nSUMMER SHALL COME.', 'quanshort5.png'),
(35, 5, 'Baby Don\'t Cry - Quần short', 400000, 'Quần short cá tính', 'quanshort6.png'),
(36, 5, 'Primitive UJ shorts', 400000, 'Quần short cá tính', 'quanshort7.png'),
(37, 5, 'Quần short Westside', 400000, 'Quần short cá tính', 'quanshort8.png'),
(38, 5, 'Basic short xám', 320000, 'Dòng sản phẩm Thiết Yếu – Hàng Ngày mà chúng tôi muốn mang đến cho bạn.\r\nQuần lửng thể thao, phối màu Stormy Cloud.\r\nThích hợp cho: các hoạt động thể chất mạnh, phù hợp khí hậu nóng ẩm của Việt Nam tr', 'quanshort9.png'),
(39, 5, 'Basic short đỏ', 320000, 'Dòng sản phẩm Thiết Yếu – Hàng Ngày mà chúng tôi muốn mang đến cho bạn.\r\nQuần lửng thể thao, phối màu Stormy Cloud.\r\nThích hợp cho: các hoạt động thể chất mạnh, phù hợp khí hậu nóng ẩm của Việt Nam tr', 'quanshort10.png'),
(40, 5, 'Basic short xanh', 320000, 'Dòng sản phẩm Thiết Yếu – Hàng Ngày mà chúng tôi muốn mang đến cho bạn.\r\nQuần lửng thể thao, phối màu Stormy Cloud.\r\nThích hợp cho: các hoạt động thể chất mạnh, phù hợp khí hậu nóng ẩm của Việt Nam tr', 'quanshort11.png'),
(41, 6, 'Quần sọc caro - Đen', 450000, 'Đơn giản. Dễ phối. Dễ mặc.\r\nVới những tiểu tiết đắt giá:\r\nTúi với dây khoá.\r\nTag logo dệt ở đùi trái.\r\nBox logo thêu ở đầu gối phải.\r\nThích hợp cho đi học, đi chơi, đi hẹn hò.', 'quandai1.png'),
(42, 6, 'Jogger Vàng', 450000, 'Jogger đơn giản.\r\nThích hợp đi tập thể dục, ở nhà.', 'quandai2.png'),
(43, 6, 'Jogger Xanh', 450000, 'Jogger đơn giản.\r\nThích hợp đi tập thể dục, ở nhà.', 'quandai3.png'),
(44, 6, 'Jogger Hồng', 450000, 'Jogger đơn giản.\r\nThích hợp đi tập thể dục, ở nhà.', 'quandai4.png'),
(45, 6, 'Quần sọc caro - Xám', 450000, 'Đơn giản. Dễ phối. Dễ mặc.\r\nVới những tiểu tiết đắt giá:\r\nTúi với dây khoá.\r\nTag logo dệt ở đùi trái.\r\nBox logo thêu ở đầu gối phải.\r\nThích hợp cho đi học, đi chơi, đi hẹn hò.', 'quandai5.png'),
(46, 6, 'Jooger Đen', 450000, 'Jogger đơn giản.\r\nThích hợp đi tập thể dục, ở nhà.', 'quandai6.png'),
(47, 6, 'Quần Urban Jungle', 450000, 'Urban Jungle pants a.k.a quần Rừng thành thị.\r\nMột sản phẩm hợp tác hình ảnh cùng Biti\'s Hunter.', 'quandai7.png'),
(49, 6, 'Quần Âu a.k.a Long Trousers', 450000, 'Mẫu quần âu Grimm DC được thiết kế với điểm nhấn là gấu quần (cuffs) được rút ngắn lên 4cm so với form quần âu chuẩn. \r\nMục đích là để rũ bỏ sự già nua trong thiết kế và giúp bạn khoe được vớ/giày của', 'quandai8.png'),
(50, 6, 'Quần Iron Flame', 450000, 'Mẫu quần đầu tiên của Grimm DC. Được làm ra với mục đích ban đầu là...đi rừng. \r\nPattern Iron Flame - Đại Định Sơn Hà do Grimm DC phát triển suốt 3 tháng qua, được đặt ở nắp túi hộp đùi trái sử dụng d', 'quandai9.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `Gmail` varchar(100) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `Diachi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `tendangnhap`, `matkhau`, `hoten`, `Gmail`, `SDT`, `Diachi`) VALUES
(1, 'user1', '123', 'nguyen van a', 'nguyenvana@gmail.com', '0986727134', 'Hồ Chí Minh'),
(2, 'user2', '123', 'nguyen van b', 'nguyenvanb@gmail.com', '0837060928', 'Hồ Chí Minh'),
(5, 'user3', '123', 'nguyen van c', 'nguyenvanc@gmail.com', '0968798351', 'Hồ Chí Minh'),
(6, 'user6', '123', 'nguyen van d', 'nguyenvand@gmail.com', '0132849123', 'Hà Nội'),
(7, 'user7', '123', 'nguyen van e', 'nguyenvane@gmail.com', '0123494123', 'Hà Nội');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`idCTHD`),
  ADD KEY `idHD` (`idHD`),
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idHD`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`idLH`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idLSP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLSP` (`idLSP`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `idCTHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `idLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idLSP` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idLSP`) REFERENCES `loaisanpham` (`idLSP`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
