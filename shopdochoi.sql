-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2024 lúc 01:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopdochoi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(6, 'img/banners/dochoicuabe.jpg'),
(8, 'img/banners/lego.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Mô hình'),
(2, 'Con quay'),
(3, 'Nhân vật trang trí'),
(4, 'Mô hình lắp ráp'),
(5, 'Âm nhạc'),
(6, 'Mô hình xe'),
(7, 'Bộ đồ chơi'),
(8, 'Trí tuệ'),
(9, 'Điều khiển từ xa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Âm nhạc', 'do-choi-am-nhac.jpg', '', 5),
(2, 'Robot', 'robot.jpg', '', 1),
(3, 'Xe moto', 'moto.jpg', '', 6),
(4, 'Lắp ráp', 'laprap.jpg', '', 1),
(5, 'Khủng long', 'khunglong.jpg', '', 1),
(6, 'Trang trí', 'trangtri.jpg', '', 3),
(7, 'Con quay', 'conquay.jpg', '', 2),
(8, 'Xe 4 bánh', 'Picture5.png', '', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'admin', 'admin', 'Nam', '0123456789', 'admin@gmail.com', 'Bình Dương', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 2, 1),
(15, 'Trí', 'Nhân viên', 'Nam', '1234567890', 'a@gmail.com', 'Bình Dương', 'nhanvien', 'e10adc3949ba59abbe56e057f20f883e', 3, 1),
(21, 'Phạm Huỳnh', 'Nhật Ý', 'Nam', '0338129604', '23050075@student.bdu.edu.vn', '', 'NhatY123', '14e1b600b1fd579f47433b88e8d85291', 1, 1),
(22, 'abc', 'abc', 'Nam', '1234567890', 'huutri762004@gmail.com', '', 'siunhangao', '14e1b600b1fd579f47433b88e8d85291', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `Tensanpham` varchar(50) DEFAULT NULL,
  `Tinhtrang` varchar(50) DEFAULT NULL,
  `Kichthuoc` varchar(50) DEFAULT NULL,
  `Trongluong` varchar(50) DEFAULT NULL,
  `Chatlieu` varchar(50) DEFAULT NULL,
  `Soluongg` varchar(50) DEFAULT NULL,
  `Mausac` varchar(50) DEFAULT NULL,
  `Donvitinh` varchar(50) DEFAULT NULL,
  `Noisanxuat` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `Tensanpham`, `Tinhtrang`, `Kichthuoc`, `Trongluong`, `Chatlieu`, `Soluongg`, `Mausac`, `Donvitinh`, `Noisanxuat`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(1, 5, 1, 'Mô hình khủng long tấn công guaibasaurus jurassic world matte', 499000, 5, 'img/products/mohinh khunglong 1.jpg', '', '', 1, 'Mô hình khủng long tấn công tuojiangosaurus jurass', 'Còn hàng', '7 inch x 3 inch', '100g', 'Nhựa', '5', 'Đỏ, Xanh, Vàng', 'Hộp', 'Trung Quốc', 0, 0, 1, '<h2 style=\"font-family: \" plus=\"\" jakarta=\"\" sans\";=\"\" font-weight:=\"\" var(--font-heading-weight);=\"\" color:=\"\" rgb(17,=\"\" 17,=\"\" 17);=\"\" line-height:=\"\" calc(1=\"\" +=\"\" .3=\"\" max(1,var(--font-heading-scale)));=\"\" word-break:=\"\" break-word;=\"\" text-transform:=\"\" capitalize;=\"\" font-size:=\"\" calc(var(--font-heading-scale)=\"\" *=\"\" 2.4rem);\"=\"\">Đồ Chơi Khủng Long Tấn Công Guaibasaurus JURASSIC WORLD MATTEL</h2><p style=\"color: rgb(17, 17, 17); font-family: \" plus=\"\" jakarta=\"\" sans\";\"=\"\">- Jurassic World khủng long tấn công Guaibasaurus mang đến trải nghiệm chân thực với các chi tiết điêu khắc tinh xảo, màu sắc sống động và đặc biệt là tính năng tấn công độc đáo cho từng loài. </p><p style=\"color: rgb(17, 17, 17); font-family: \" plus=\"\" jakarta=\"\" sans\";\"=\"\">- Khủng long có các khớp di chuyển linh hoạt, giúp trẻ dễ dàng tạo dáng và mô phỏng những trận chiến hấp dẫn. Với kích thước khoảng 7 inch chiều dài và 3 inch chiều cao, đây là món quà hoàn hảo cho các bé từ 4 tuổi trở lên, cũng như những người đam mê thế giới khủng long Jurassic World.</p><p style=\"color: rgb(17, 17, 17); font-family: \" plus=\"\" jakarta=\"\" sans\";\"=\"\">- Một điểm thú vị khác của mô hình này là mã QR Code, khi được quét bằng ứng dụng Jurassic World Play, bé sẽ mở ra các trò chơi thực tế ảo cực kỳ độc đáo. Bé có thể trải nghiệm những cuộc đua xe địa hình đầy kịch tính, nơi mà tay đua và xe địa hình đột ngột biến thành một con khủng long hung dữ, phá vỡ chướng ngại vật trên đường đi!<br style=\"letter-spacing: 0px;\"></p><p style=\"color: rgb(17, 17, 17); font-family: \" plus=\"\" jakarta=\"\" sans\";\"=\"\">- Jurassic World khủng long tấn công Guaibasaurus không chỉ là một món đồ chơi mà còn khơi dậy trí tưởng tượng và sáng tạo của trẻ nhỏ.</p>', '2024-11-25 10:13:30'),
(2, 5, 1, 'Mô Hình Khủng Long Tấn Công Tuojiangosaurus JURASSIC WORLD MATTEL', 369000, 100, 'img/products/mohinh khunglong 2.jpg', '', '', 1, 'Mô Hình Khủng Long Tấn Công Tuojiangosaurus JURASS', 'Còn hàng', '7 inch x 3 inch', '200g', 'Nhựa', '100', 'Xám', 'Hộp', 'Trung Quốc', 0, 0, 1, '<h2 style=\"font-family: \"Plus Jakarta Sans\"; font-weight: var(--font-heading-weight); color: rgb(17, 17, 17); line-height: calc(1 + .3/max(1,var(--font-heading-scale))); word-break: break-word; text-transform: capitalize; font-size: calc(var(--font-heading-scale) * 2.4rem);\">Đồ Chơi Mô Hình Khủng Long CRATEROSAURUS 6 inch Có Khớp Linh Hoạt Jurassic World Mattel HTK52/HLN49<br data-mce-fragment=\"1\" style=\"letter-spacing: 0px;\"></h2><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">Khủng long CRATEROSAURUS nổi tiếng với việc di chuyển thành đàn, săn mồi và tấn công, với các khớp có thể di chuyển để tạo dáng và chơi trò chiến đấu.<br style=\"letter-spacing: 0px;\"><br style=\"letter-spacing: 0px;\">Có chiều dài khoảng 6inch và chiều cao khoảng 3 inch. Phù hợp với trẻ từ 4 tuổi trở lên. Tải Jurassic World Facts App để khởi đầu các hoạt động và trò chơi Thực Tế Ảo.<br style=\"letter-spacing: 0px;\"><br style=\"letter-spacing: 0px;\">Bé có thể khám phá chế độ nhiệt và X-quang, săn và bắt khủng long ở các môi trường sống khác nhau, cũng như cứu và thả khủng long vào môi trường sống phù hợp chúng trong các trò chơi phiêu lưu hấp dẫn.</p>', '2024-11-25 10:13:42'),
(3, 5, 1, 'Mô Hình Khủng Long Tấn Công Velociraptor JURASSIC WORLD MATTEL', 499000, 100, 'img/products/mohinh khunglong 3.jpg', '', '', 1, 'Mô Hình Khủng Long Tấn Công Velociraptor JURASSIC ', 'Còn hàng', '7 inch x 3 inch', '200g', 'Nhựa', '100', 'Vàng', 'Hộp', 'Trung Quốc', 0, 0, 1, '<h2 style=\"font-family: \"Plus Jakarta Sans\"; font-weight: var(--font-heading-weight); color: rgb(17, 17, 17); line-height: calc(1 + .3/max(1,var(--font-heading-scale))); word-break: break-word; text-transform: capitalize; font-size: calc(var(--font-heading-scale) * 2.4rem);\">Đồ Chơi Khủng Long Tấn Công Velociraptor JURASSIC WORLD MATTEL HTK60/HLN63</h2><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Jurassic World khủng long tấn công Velociraptor mang đến trải nghiệm chân thực với các chi tiết điêu khắc tinh xảo, màu sắc sống động và đặc biệt là tính năng tấn công độc đáo cho từng loài. </p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Khủng long có các khớp di chuyển linh hoạt, giúp trẻ dễ dàng tạo dáng và mô phỏng những trận chiến hấp dẫn. Với kích thước khoảng 7 inch chiều dài và 3 inch chiều cao, đây là món quà hoàn hảo cho các bé từ 4 tuổi trở lên, cũng như những người đam mê thế giới khủng long Jurassic World.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Một điểm thú vị khác của mô hình này là mã QR Code, khi được quét bằng ứng dụng Jurassic World Play, bé sẽ mở ra các trò chơi thực tế ảo cực kỳ độc đáo. Bé có thể trải nghiệm những cuộc đua xe địa hình đầy kịch tính, nơi mà tay đua và xe địa hình đột ngột biến thành một con khủng long hung dữ, phá vỡ chướng ngại vật trên đường đi!</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Jurassic World khủng long tấn công Velociraptor không chỉ là một món đồ chơi mà còn khơi dậy trí tưởng tượng và sáng tạo của trẻ nhỏ.</p>', '2024-11-25 10:13:53'),
(4, 1, 5, 'Thảm chơi piano', 1259000, 20, 'img/products/Thampiano 1.jpg', '/img/products/Thampiano 2.jpg', '', 1, 'Thảm chơi piano', 'Còn hàng', '50 inch x 70 inch', '200g', 'Lông', '20', 'Đỏ, Xanh, Vàng', 'Cái', 'Trung Quốc', 0, 0, 1, '<p dir=\"ltr\" style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\"><span data-mce-style=\"font-size: x-large;\" style=\"letter-spacing: 0px; font-size: x-large;\"><strong style=\"letter-spacing: 0px;\">Đồ Chơi FISHER PRICE Thảm Chơi Piano FGG45</strong></span></p><p dir=\"ltr\" style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\"><strong style=\"letter-spacing: 0px;\">Đồ chơi Fisher Price thảm chơi piano FGG45</strong><span style=\"letter-spacing: 0px;\"> là hãng đồ chơi dành cho trẻ sơ sinh tại Mỹ. Đồ chơi của hãng giúp cho bé có thể vui chơi, thư giãn, học hỏi, tiếp cận, vận động, di chuyển phát triển thể lực, tính phối hợp và sự tự tin của bé. Từ đó giúp bé tăng khả năng nhận thức: khuyến khích bé cảm nhận, lắng nghe, chạm vào và nhận thức thông qua các trò chơi, kích thích sự tò mò tự nhiên, cũng như xây dựng khả năng sáng tạo và trí thông minh cho bé.</span></p><p dir=\"ltr\" style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\"><strong style=\"letter-spacing: 0px;\">Đồ chơi sơ sinh</strong><span style=\"letter-spacing: 0px;\"> Fisher Price thảm chơi piano FGG45</span><span style=\"letter-spacing: 0px;\"> </span><span style=\"letter-spacing: 0px;\">gây ấn tượng với những đặc điểm nổi bật sau đây:</span></p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Bộ sản phẩm có thiết kế tinh tế, kết hợp với thảm giúp bé có thể nằm hoặc ngồi chơi cực kỳ thoải mái cho từng giai đoạn phát triển của trẻ.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Sở hữu 5 phím đàn piano và vòm treo lục lạc, có gương mini cũng như 03 chế độ âm nhạc giúp phụ huynh có thể vừa chơi vừa tương tác với bé.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Nhờ những loại đồ chơi tích hợp sẽ kích thích bé vận động để chạm vào các đồ vật. </p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Bé cũng được học về màu sắc, hình dáng đồ vật hay các con số. Bước đầu học hỏi và nhận biết các loại đồ vật xung quanh.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Đồ chơi được làm từ chất liệu cực kỳ êm và mềm mại, phần nhựa làm từ nhựa cao cấp không góc cạnh giúp đảm bảo an toàn cho bé trong quá trình chơi.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">- Sản phẩm phù hợp với các bé sơ sinh.</p>', '2024-11-25 12:22:43'),
(5, 1, 5, ' Đồ chơi chú voi âm nhạc vui nhộn Peek a Boo', 200000, 30, 'img/products/Chu voi vui nhon.jpg', '', '', 1, '', 'Còn hàng', '15 inch x 5 inch', '200g', 'Nhựa', '30', 'Đỏ, Xanh, Vàng', 'Hộp', ' Việt Nam', 0, 0, 1, '<h2 style=\"font-family: \"Plus Jakarta Sans\"; font-weight: var(--font-heading-weight); color: rgb(17, 17, 17); line-height: calc(1 + .3/max(1,var(--font-heading-scale))); word-break: break-word; text-transform: capitalize; font-size: calc(var(--font-heading-scale) * 2.4rem);\">Đồ Chơi Chú Voi Âm Nhạc Vui Nhộn PEEK A BOO 230202 </h2><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">Chơi và tương tác </p>', '2024-11-25 10:13:40'),
(6, 3, 6, 'Xe mô hình mô tô tỉ lệ 1:18 suzuki gsx-s750 abs', 200000, 20, 'img/products/moto.jpg', '', '', 1, 'xe mô hình mô tô tỉ lệ 1:18 suzuki gsx-s750 abs', 'Còn hàng', '50 inch x 70 inch', '300g', 'Nhựa', '30', 'Đỏ, Xanh, Vàng', 'Hộp', 'Trung Quốc', 0, 0, 1, '<h2 style=\"font-family: &quot;Plus Jakarta Sans&quot;; font-weight: var(--font-heading-weight); color: rgb(17, 17, 17); line-height: calc(1 + .3/max(1,var(--font-heading-scale))); word-break: break-word; text-transform: capitalize; font-size: calc(var(--font-heading-scale) * 2.4rem);\">Đồ Chơi Xe Mô Hình Mô Tô Tỉ Lệ 1:18 Suzuki Gsx-S750 Abs Có Kệ Đứng MAISTO 19133/MT39300</h2><p style=\"color: rgb(17, 17, 17); font-family: &quot;Plus Jakarta Sans&quot;;\">Mô hình xe mô tô tỉ lệ 1:18 với kiểu dáng thể thao mạnh mẽ. Chiều dài xe 12cm.</p><p style=\"color: rgb(17, 17, 17); font-family: &quot;Plus Jakarta Sans&quot;;\">Xe có kèm đế trưng bày hoặc bạn có thể trưng bày xe đứng trên chống chân khi tháo đế trưng bày ra.</p>', '2024-11-25 10:13:22'),
(7, 2, 7, 'Đồ chơi Máy Nuôi Thú Ảo - Phiên bản Disney', 200000, 10, 'img/products/Picture1.png', '', '', 3, 'Đồ chơi Máy Nuôi Thú Ảo - Phiên bản Disney', 'Còn hàng', '19 x 12.5 x 6.5 cm', '200g', 'Nhựa', '10', 'Đỏ, Xanh, Vàng', 'Hộp', 'USA', 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Trải nghiệm thế giới đồ chơi thú cưng kỹ thuật số trong lòng bàn tay của bạn! Giới thiệu Bitzee: thú cưng kỹ thuật số bạn có thể chạm và cảm nhận! Vật nuôi tương tác Bitzee phản ứng với các thao tác vuốt, nghiêng, lắc và chạm với âm thanh và phản ứng! Mỗi Bitzee bắt đầu như một em bé. Giống như vật nuôi thật, vật nuôi ảo Bitzee cần tình yêu và sự chăm sóc để phát triển. Bạn càng chơi nhiều, bạn sẽ nhận được nhiều đồ chơi thú cưng hơn! Cho chúng ăn và chơi, đung đưa chúng ngủ, dọn dẹp sau chúng và cho chúng tình yêu. Xem chúng phát triển từ em bé, đến người lớn, đến Super Bitzee! Mở khóa từng thú cưng Super Bitzee và khám phá trang phục và trò chơi độc đáo, sau đó sử dụng món ăn để thu hút con vật ảo tiếp theo của bạn. Thu thập 15 thú cưng Bitzee trong trường hợp của bạn và khoe bộ sưu tập của bạn với bạn bè ở bất cứ đâu! Bao gồm 3 pin AA. Đồ chơi Bitzee dành cho bé trai và bé gái là hoàn hảo cho trẻ em thích hoạt hình, đồ điện tử kids’, đồ chơi bất ngờ, đồ chơi động vật, đồ chơi fidget và đồ chơi STEM – ngay cả người lớn cũng sẽ bị mê hoặc bởi sự thay đổi sáng tạo không có màn hình của Bitzee trên các trò chơi u0026 đồ chơi thập niên 90 từ thời thơ ấu của họ! Đồ chơi thú cưng tương tác Bitzee dành cho trẻ em là những món đồ sưu tầm thú cưng tuyệt vời, quà sinh nhật, quà Giáng sinh hoặc quà tặng cho bé gái và bé trai cho bất kỳ dịp nào. Thoát ra khỏi hộp với Bitzee! Bao gồm: 1 Bitzee, 1 Hướng dẫn bắt đầu nhanh, 1 Bảng hướng dẫn, 3 Pin AA</span></p>', '2024-11-25 10:14:00'),
(8, 4, 7, 'Đồ chơi Máy Nuôi Thú Ảo Bitzee', 250000, 0, 'img/products/Picture2.png', '', '', 3, '', '', '', '', '', '15', '', 'VNĐ', 'Indonesia', 0, 0, 1, '', '2024-11-25 09:48:16'),
(9, 7, 2, 'Con quay bx-15 starter leon claw 5-60p beyblade', 404100, 0, 'img/products/conquay bx15.jpg', '', '', 1, 'Con quay bx-15 starter leon claw 5-60p beyblade', 'Còn hàng', '19 x 12.5 x 6.5 cm', '165g', 'Nhựa, Kim Loại', '20', 'Xanh, Vàng', 'Hộp', 'Việt Nam', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Con Quay BX-15 Starter Leon Claw 5-60P - Beyblade X 913030</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">- Chất liệu nhựa và kim loại tạo độ cứng cáp cho sản phẩm.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">- Sản phẩm đồ chơi được sản xuất theo công nghệ Nhật Bản: Tự tay lắp ráp và dán nhãn các chi tiết. Có khả năng tùy biến cao, cho phép người dùng tự do sáng tạo, lắp ráp các bộ phận từ nhiều con quay khác nhau.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">- Bên trong sản phẩm có sách hướng dẫn đi kèm giúp việc lắp ráp dễ dàng.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Lưu ý:</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">- Sản phẩm có tay cầm</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">- Sản phẩm phù hợp với tay cầm bên phải</p>', '2024-11-25 10:14:29'),
(10, 4, 4, 'Đồ Chơi Lắp Ráp Thùng Gạch Lớn Classic Sáng Tạo LEGO CLASSIC', 300000, 20, 'img/products/Picture3.png', '', '', 1, 'Đồ Chơi Lắp Ráp Thùng Gạch Lớn Classic Sáng Tạo LE', 'Còn hàng', '400x300', '2 kilogram', 'Nhựa ABS', '20', 'vàng', 'Hộp', ' Đan Mạch', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">Nằm trong bộ chủ đề LEGO Classic, LEGO® Large Creative Brick Box LEGO 10698 gồm 790 chi tiết, dành cho trẻ trên 4 tuổi, là món đồ chơi thú vị và hấp dẫn. Trẻ có thể sử dụng các viên gạch đầy màu sắc, cùng với sự sáng tạo và tư duy để hoàn thành các ngôi nhà với kiểu dáng đa dạng, xe cần cẩu, xe gắn máy, chiếc máy chụp hình cổ điển, cô nàng gấu đáng yêu,... hoặc bất kỳ mô hình gì tùy theo sở thích và khả năng. Đặc biệt, bộ sản phẩm gồm các chi tiết đôi mắt, cánh cửa, bánh xe,... cho phép trẻ tạo nên các con vật, đồ vật ngộ nghĩnh, đáng yêu mà mình yêu thích. LEGO 10698 sẽ mang lại cho trẻ những phút giây vui chơi thú vị khi được tự mình tưởng tượng và mày mò lắp ghép, rèn luyện tính tỉ mỉ cũng như khơi gợi khả năng tư duy và sáng tạo ở từng trẻ.</p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\"> </p><p style=\"color: rgb(17, 17, 17); font-family: \"Plus Jakarta Sans\";\">Thương hiệu đồ chơi LEGO, đồ chơi xếp hình LEGO nổi tiếng, được làm từ những chất liệu cao cấp, đảm bảo an toàn cho người chơi. Những chủ đề nổi bật nhất của LEGO là: LEGO Ninjago, LEGO Super Heroes, LEGO Technic, LEGO Star Wars, LEGO Bionicle, LEGO City và LEGO Nexo Knights, ... Đồ chơi LEGO là thương hiệu đồ chơi bằng nhựa cao cấp dành cho mọi lứa tuổi do Tập đoàn đồ chơi LEGO (Đan Mạch) sản xuất.<br style=\"letter-spacing: 0px;\">Những bộ mô hình đồ chơi LEGO chính hãng được làm từ nhựa ABS cao cấp an toàn cho người chơi. Đây là những bộ mô hình không thể thiếu dành cho những ai thực sự đam mê sưu tầm đồ chơi LEGO.</p>', '2024-11-25 12:29:09'),
(11, 4, 7, 'Xe cứu hỏa Abrick ECOIFFIER', 28700000, 20, 'img/products/Picture4.png', '', '', 2, 'Xe cứu hỏa Abrick ECOIFFIER', 'Còn hàng', '230x300', '600', ' Nhựa ABS', '20', 'Đỏ', 'Hộp', ' PHÁP', 0, 0, 1, '<p><span style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Bộ lắp ráp sở cứu hỏa thành phố Gorock 1010 (Gồm 30 mảnh ghép)</span><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\"> là mô hình thu nhỏ sở cứu hỏa. Bé sẽ là người điều khiển đội quân cứu hỏa đến những nơi xảy ra cháy để kịp thời dập tắt ngọn lửa. Trụ sở được trang bị các thiết bị và xe cứu hỏa cao cấp sẽ giúp bé rất thích thú hơn khi chơi. Chắc chắn sẽ giúp bé có những giây phút vui chơi giải trí thật tuyệt vời. Sản phẩm được làm bằng nhựa ABS được kiểm nghiệm độ an toàn, thích hợp cho bé từ 3 tuổi trở lên. </span><span style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Bộ đồ chơi</span><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\"> </span><span style=\"margin: 0px; padding: 0px; font-family: Quicksand, sans-serif; max-width: 100%; color: rgb(37, 42, 43); font-size: 14px;\">Gorock </span><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif; font-size: 14px;\">giúp cho trẻ học tập cách nhận diện đồ vật, học tập lắp ghép và kết hợp các đồ vật với nhau. Bé sẽ thỏa sức tưởng tượng và nhập vai vào trò chơi, qua đó tăng khả năng tư duy và óc sáng tạo.</span></p>', '2024-11-25 10:14:22'),
(12, 8, 6, 'Xe chạy tự động - Ếch Crash', 50000, 100, 'img/products/Picture5.png', '', '', 1, 'Xe chạy tự động - Ếch Crash', 'Còn hàng', '21.3 x 15.1 cm', '200g', 'Nhựa', '100', 'Xanh lá', 'Hộp', 'USA', 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Xe Chạy Tự Động - Ếch Crash</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">Xe chạy tự động - Ếch Crash có khả năng vô cùng độc đáo, Chỉ cần nhấn nút khởi động, động cơ xe sẽ được kích hoạt và chạy cực nhanh về phía trước, xe có khả năng vượt chướng ngại vât, các rào cản phía trước.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(33, 33, 33); font-family: \"Nunito Sans\"; text-align: justify;\">Thiết kế đẹp mắt, với chất liệu nhựa cao cấp.</p>', '2024-11-25 10:14:14'),
(13, 2, 1, 'Đồ Chơi Robot Vệ Binh Không Gian Điều Khiển Từ Xa ', 579000, 100, 'img/products/robot green.jpg', '/img/products/robot.jpg', '', 1, 'Đồ Chơi Robot Vệ Binh Không Gian Điều Khiển Từ Xa ', 'Còn hàng', '34 x 31 x 12 cm', '300g', 'Nhựa, Kim Loại', '100', 'Đỏ, Xanh lá', 'Cái', 'Việt Nam', 0, 0, 1, '<h2 style=\"font-family: \" plus=\"\" jakarta=\"\" sans\";=\"\" font-weight:=\"\" var(--font-heading-weight);=\"\" color:=\"\" rgb(17,=\"\" 17,=\"\" 17);=\"\" line-height:=\"\" calc(1=\"\" +=\"\" .3=\"\" max(1,var(--font-heading-scale)));=\"\" word-break:=\"\" break-word;=\"\" text-transform:=\"\" capitalize;=\"\" font-size:=\"\" calc(var(--font-heading-scale)=\"\" *=\"\" 2.4rem);\"=\"\"></h2><h1 style=\"line-height:normal\"></h1><h6 style=\"line-height:normal\"><h1><b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: Nunito;\">Đồ Chơi Robot Vệ Binh Không Gian Điều Khiển\r\nTừ Xa</span></span></b></h1><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Đồ chơi Robot vệ binh không gian điều khiển\r\ntừ Vecto – Một mẫu robot với ngoại hình siêu ngầu, cùng nhiều chức năng thú vị\r\ncho bé tha hồ khám phá:</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">+ Chế độ lập trình trí tuệ: nhấn nút “lập\r\ntrình” và thiết lập các động tác mong muốn, sau đó nhấn “lập trình” một lần nữa,\r\nrobot sẽ thực hiện chính xác theo những động tác vừa được cài đặt</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">+ Có hệ thống đèn bắt mắt</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">+ Có thể nhảy theo nhạc</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">+ Di chuyển đa hướng: Tiến lùi trái phải</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">+ Sử dụng pin sạc, cáp sạc USB đi kèm</span><br></span><b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Thông tin về sản phẩm:</span><br></span></b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Kích thước hộp hàng: 34 x 31 x 12 cm</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Chủ đề: Vecto Robot</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Xuất xứ thương hiệu: Việt Nam</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Chất liệu: Nhựa và kim loại (An toàn tuyệt\r\nđối cho bé)</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\">&nbsp;<br></span><b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Bộ đồ chơi bao gồm:</span><br></span></b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">1 x Robot vệ binh không gian điều khiển (Sử\r\ndụng pin sạc, có kèm pin)</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">1 x Remote điều khiển từ xa (Sử dụng pin\r\ntiểu, không kèm pin)</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">1 x Cáp sạc USB</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">1 x Hướng dẫn sử dụng</span><br></span><b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Vecto - Thế giới đồ chơi bé trai cực đỉnh</span><br></span></b><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">Vecto là thương hiệu đồ chơi dành riêng\r\ncho các bé trai, với các dòng đồ chơi trải dài từ điều khiển từ xa đến lắp ráp.\r\nVới mong muốn giúp các bé trai có sự phát triển toàn diện từ trí não đến thể chất,\r\nVecto đã phát triển đa dạng các loại đồ chơi nhằm mang đến cho bé nhiều lựa chọn\r\nnhất có thể, một số dòng đồ chơi nổi bật:</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">- Robot điều khiển – Phát triển tư duy\r\nsáng tạo</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\">-<span style=\"font-family: &quot;Times New Roman&quot;;\"> Xe điều khiển – Phát triển tư duy phương\r\nhướng</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">- Đồ chơi bay – Phát triển tư duy logic</span><br></span><span style=\"font-size:12.0pt;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">- Đồ chơi lắp ráp DIY – Phát triển kỹ năng\r\nvận động tinh</span><br></span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;;\" times=\"\" new=\"\" roman\",serif;mso-ascii-theme-font:major-latin;=\"\" mso-fareast-font-family:simsun;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin;mso-ansi-language:en-gb\"=\"\">Và còn nhiều dòng đồ chơi khác từ Vecto\r\nđang đợi bé khám phá</span><span style=\"font-size:16.0pt;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" mso-ascii-theme-font:major-latin;mso-fareast-font-family:simsun;mso-hansi-theme-font:=\"\" major-latin;mso-bidi-theme-font:major-latin;mso-ansi-language:en-gb\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\">.</span><o:p></o:p></span></h6>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2024-11-25 12:44:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
