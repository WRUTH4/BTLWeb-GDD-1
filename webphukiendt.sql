-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2018 lúc 08:16 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphukiendt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fullname` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(1, '0', '2017-04-28 09:49:42'),
(2, '0', '2017-04-28 09:51:15'),
(3, '0', '2017-04-28 09:53:53'),
(4, 'Hiáº¿u', '2017-04-28 09:54:34'),
(5, 'Hiáº¿u', '2017-04-28 19:12:53'),
(6, 'Hiáº¿u', '2017-04-30 23:58:25'),
(7, 'Hiáº¿u', '2017-05-01 03:16:28'),
(8, 'Hiáº¿u', '2017-05-01 03:17:28'),
(9, 'Hiáº¿u', '2017-05-01 04:15:23'),
(10, 'admin', '2017-05-01 04:42:20'),
(11, 'admin', '2017-05-01 04:45:21'),
(12, 'admin', '2017-05-03 07:20:16'),
(13, 'admin', '2017-05-03 19:53:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 62, 0, '0'),
(2, 2, 60, 1, '50'),
(3, 2, 61, 1, '50'),
(4, 3, 45, 5, '60'),
(5, 4, 39, 1, '50'),
(6, 5, 62, 1, '50'),
(7, 6, 38, 1, '50'),
(8, 6, 39, 1, '50'),
(9, 6, 45, 1, '60'),
(10, 7, 40, 1, '50'),
(11, 7, 48, 1, '60'),
(12, 8, 48, 1, '60,000'),
(13, 9, 84, 7, '199000'),
(14, 10, 81, 5, '1290000'),
(15, 10, 79, 3, '1990000'),
(16, 10, 65, 1, '199'),
(17, 11, 83, 3, '199000'),
(18, 12, 86, 1, '27000000'),
(19, 12, 67, 8, '249900'),
(20, 12, 85, 1, '12000000'),
(21, 12, 72, 1, '40000'),
(22, 13, 86, 3, '27000000'),
(23, 13, 84, 1, '199000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(23, 60, 'featured-section-new-to-imac_2x1493467732.jpg'),
(24, 60, 'image0011493467732.png'),
(25, 60, 'image001_21493467732.jpg'),
(26, 60, 'image001_111493467732.jpg'),
(29, 63, '5190001_sa (1) - Copy1493468586.jpg'),
(30, 63, '5190001_sa (1)1493468586.jpg'),
(31, 63, '1466960633738_19141493468586.jpg'),
(32, 63, '1466960633738_19141493468706.jpg'),
(33, 63, 'featured-section-new-to-imac_2x1493468926.jpg'),
(34, 63, '5190001_sa (1) - Copy1493469597.jpg'),
(38, 61, '1466960639886_19201493470147.jpg'),
(43, 62, '5190001_sa (1) - Copy1493471267.jpg'),
(44, 62, '5190001_sa (1)1493471267.jpg'),
(45, 62, 'featured-section-new-to-imac_2x1493471267.jpg'),
(46, 51, '5190001_sa (1) - Copy1493612642.jpg'),
(47, 51, '5190001_sa (1)1493612643.jpg'),
(48, 45, '5190001_sa (1) - Copy1493616068.jpg'),
(49, 45, '5190001_sa (1)1493616068.jpg'),
(50, 45, '1466960633738_19141493616068.jpg'),
(51, 85, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493695704.jpg'),
(52, 85, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493695704.jpg'),
(53, 85, 'canon-eos-1d-x-1-1-min1493695704.jpg'),
(54, 85, 'canon-eos-1d-x-2-1-min1493695704.jpg'),
(55, 86, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493696681.jpg'),
(56, 86, 'canon-6d-1-1-min1493696682.jpg'),
(57, 86, 'canon-eos-1d-x-2-1-min1493696682.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hieusp`
--

CREATE TABLE `hieusp` (
  `idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(1, 'Sony', '1'),
(3, 'Byz', '1'),
(4, 'Ramax', '1'),
(5, 'Dudao', '1'),
(6, 'Niken', '1'),
(7, 'Piseen', '1'),
(8, 'Noko', '1'),
(9, 'Vukas', '1'),
(10, 'Basuse', '1'),
(11, 'Samsung', '1'),
(12, 'fasion', '1'),
(13, 'Äá»™c quyá»n', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(2, 'Cục sạc', '1'),
(4, 'Ốp lưng Iphone', '1'),
(8, 'Gậy chụp ảnh', '1'),
(9, 'Pin điện thoại', '1'),
(10, 'Sạc đự phòng', '1'),
(11, 'Dán trong suốt', '1'),
(12, 'Dán cường lực', '1'),
(13, 'Bộ sạc', '1'),
(14, 'Bao da hÃ£ng', '1'),
(15, 'Dây sạc,cáp sạc', '1'),
(16, 'Ốp lưng Samsung', '1'),
(17, 'Loa nghe nhạc', '1'),
(18, 'Tai nghe head', '1'),
(19, 'Thiết bị an ninh', '1'),
(20, 'Thẻ nhớ', '1'),
(21, 'Thiết bị mạng', '1'),
(22, 'Sản phẩm khác', '1'),
(23, 'loai 1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(37, 'iphone 7', 'M01', 'iphone-7-plus-red-128gb-400x460.png', 89, 89, 1, 5, 4, '1', 'rrrrrrr'),
(38, 'Macbook Pro', 'M50', 'featured-section-new-to-imac_2x.jpg', 500000, 39, 1, 9, 3, '1', '<p>Ä‘áº¹p</p>'),
(39, 'iphone 7', 'M50', 'iphone-7-plus-red-128gb-400x460.png', 3200000, 39, 1, 12, 3, '1', '<p>Ä‘áº¹p</p>'),
(40, 'Laptop Core ', 'M50', '5190001_sa (1).jpg', 1800000, 39, 1, 10, 1, '1', '<p>Ä‘áº¹p</p>'),
(44, 'Oppo F3 plus', 'f3plus', 'oppo-f3-plus-pp-300x300.jpg', 230000, 89, 5, 11, 4, '1', '<p>Ä‘áº¹p</p>'),
(45, 'iphone 5 plus 256GB', 'ip5', 'iphone-7-plus-256gb-300x300.jpg', 24000, 60, 6, 11, 3, '1', '<p>Ä‘áº¹p</p>'),
(47, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 180000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>'),
(48, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 20000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>'),
(82, 'Bá»™ Sáº¡c T2H5', 'b6', '2.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(83, 'Bá»™ Sáº¡c T2H5', 'b6', '3.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(84, 'Bá»™ Sáº¡c T2H5', 'b6', 'download.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sáº£n pháº«m h&agrave;ng ch&iacute;nh h&atilde;ng v&agrave; ráº¥t l&agrave; Ä‘áº¹p.</p>'),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Äáº¹p</p>'),
(87, 'may cat 123', 'mc123', '8064396-1-hotpink.jpg', 1234, 12, 2, 23, 1, '1', '<p>asfasfa</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Chỉ mục cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  ADD PRIMARY KEY (`idhieusp`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idloaisp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
