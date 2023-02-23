-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2021 lúc 03:29 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(1, 'Laptop Gaming'),
(2, 'Laptop Asus'),
(3, 'Laptop Dell'),
(4, 'Laptop Msi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` float NOT NULL,
  `pricesale` float NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductId`, `productName`, `categoryId`, `product_desc`, `type`, `price`, `pricesale`, `stock`, `image`) VALUES
(1, 'Laptop Gamming xps', 1, '<p>Chi tiáº¿t sáº£n pháº©m</p>\r\n', 0, 10000000, 0, 1, 'image005_3.jpg'),
(2, 'Laptop Gamming xps 123', 1, '<p>Chi tiáº¿t sáº£n pháº©m</p>\r\n', 0, 10000000, 0, 0, '9164291_R_Z001A.jpg'),
(3, 'Laptop Asus 123', 2, '<p>Chi tiáº¿t sáº£n pháº©m</p>\r\n', 0, 1000000000, 90000000, 1, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg'),
(4, 'Laptop Asus A456', 2, '<p>Chi tiáº¿t sáº£n pháº©m</p>\r\n', 0, 10000000, 3000000, 1, 'mi_gaming_laptop_2019_image_1565003115644.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminPass`, `adminEmail`, `level`) VALUES
(1, 'admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', 0),
(2, 'Admin', 'minh', 'c4ca4238a0b923820dcc509a6f75849b', 'Minh.ho.tech@gmail.com', 1),
(3, '12312313', '56464778798789', 'c4ca4238a0b923820dcc509a6f75849b', '13213156446@gmail.com', 4),
(4, 'asdadasdas', 'asdadasdas', '7e27304d9ed469bead7e8667b60f1192', 'phamminh23102000@gmail.com', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `quantity`, `sId`, `image`, `price`, `productName`) VALUES
(4, 4, 1, 'vpj2jh4102qqfb548urssem10m', 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3000000, 'Laptop Asus A456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_custumer`
--

CREATE TABLE `tbl_custumer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_custumer`
--

INSERT INTO `tbl_custumer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'ho minh', 'dinh an , dt bd', 'sadsd', 'Viá»‡t Nam', '700000', '344387371', 'phamminh23102000@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(2, 'ho minh', 'dinh an , dt bd, dinh an dt bd', 'sadsd', 'Viá»‡t Nam', '700000', '344387371', '00000000@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, 'dinh an , dt bd', 'dinh an , dt bd, dinh an dt bd', 'sadsd', 'Viá»‡t Nam', '520000', '344387371', '1234567899@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Minh Hồ', '96 Lê Văn Chí, Linh Trung, Thủ Đức', 'Hồ Chí Minh', 'Vietnam', '700000', '0344387371', 'minhho.technology@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `custumerId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statusId` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `custumerId`, `quantity`, `price`, `image`, `statusId`, `date`) VALUES
(3, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2019-10-06 17:57:44'),
(4, 4, 'Laptop Asus A456', 1, 2, 3000000, 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3, '2019-10-06 18:02:21'),
(5, 1, 'Laptop Gamming xps', 1, 1, 10000000, 'image005_3.jpg', 2, '2019-10-06 17:57:22'),
(6, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 1, '2019-10-09 06:50:28'),
(9, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 0, '2019-10-09 23:42:06'),
(10, 3, 'Laptop Asus 123', 4, 2, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 0, '2021-03-01 18:22:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_custumer`
--
ALTER TABLE `tbl_custumer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `custumerId` (`custumerId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_custumer`
--
ALTER TABLE `tbl_custumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `ProductVsCategory` FOREIGN KEY (`categoryId`) REFERENCES `category` (`Id`);

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`custumerId`) REFERENCES `tbl_custumer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
