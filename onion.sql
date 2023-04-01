-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2023 lúc 08:41 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

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
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(1, 'Laptop Gaming'),
(2, 'Laptop Asus'),
(3, 'Laptop Dell'),
(4, 'Laptop Msi'),
(6, 'MacBook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `categoryId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` float NOT NULL,
  `pricesale` float NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductId`, `productName`, `categoryId`, `product_desc`, `type`, `price`, `pricesale`, `stock`, `image`) VALUES
(1, 'Laptop Gamming xps', 1, 'Laptop Dell Alienware m15 R6 có một thiết kế bo tròn cứng cáp, dù là laptop gaming nhưng với sự bo tròn ở góc cạnh cũng như các chi tiết ở cổng giao tiếp tăng thêm phần mềm mại cho tổng thể. Chiếc máy được chế tác từ lớp vỏ kim loại đem đến một diện mạo thời thượng cho dòng laptop gaming Alienware. Bên cạnh đó, chiếc máy dày 19.2 mm và nặng 2.69 kg, theo cảm nhận của mình thì chiếc máy không quá cồng kềnh, cầm nắm chắc chắn, gọn gàng dễ dàng mang theo bên mình.', 0, 10000000, 0, 1, 'image005_3.jpg'),
(2, 'Laptop Gamming xps 123', 1, 'Laptop Dell Alienware m15 R6 có một thiết kế bo tròn cứng cáp, dù là laptop gaming nhưng với sự bo tròn ở góc cạnh cũng như các chi tiết ở cổng giao tiếp tăng thêm phần mềm mại cho tổng thể. Chiếc máy được chế tác từ lớp vỏ kim loại đem đến một diện mạo thời thượng cho dòng laptop gaming Alienware. Bên cạnh đó, chiếc máy dày 19.2 mm và nặng 2.69 kg, theo cảm nhận của mình thì chiếc máy không quá cồng kềnh, cầm nắm chắc chắn, gọn gàng dễ dàng mang theo bên mình.\r\n', 0, 10000000, 0, 1, '9164291_R_Z001A.jpg'),
(3, 'Laptop Asus 123', 2, 'Laptop Dell Alienware m15 R6 có một thiết kế bo tròn cứng cáp, dù là laptop gaming nhưng với sự bo tròn ở góc cạnh cũng như các chi tiết ở cổng giao tiếp tăng thêm phần mềm mại cho tổng thể. Chiếc máy được chế tác từ lớp vỏ kim loại đem đến một diện mạo thời thượng cho dòng laptop gaming Alienware. Bên cạnh đó, chiếc máy dày 19.2 mm và nặng 2.69 kg, theo cảm nhận của mình thì chiếc máy không quá cồng kềnh, cầm nắm chắc chắn, gọn gàng dễ dàng mang theo bên mình.', 0, 32000000, 9000000, 1, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg'),
(4, 'Laptop Asus A456', 2, '<p>Chi tiáº¿t sáº£n pháº©m</p>\r\n', 0, 25000000, 3000000, 1, 'mi_gaming_laptop_2019_image_1565003115644.jpg'),
(6, 'LapTop - Game', 1, 'Laptop Asus Gaming ROG Strix G15 G513IH R7 (HN015W) là một trợ thủ đắc lực cho mọi game thủ chuyên nghiệp với phong cách thiết kế vô cùng độc đáo, ấn tượng chuẩn gaming cùng bộ cấu hình đầy mạnh mẽ.\r\n• Bộ vi xử lý AMD Ryzen 7 4800H cùng card rời NVIDIA GeForce GTX 1650 4 GB đáp ứng mọi nhu cầu của người dùng từ học tập, game giải trí đến thiết kế đồ hoạ, render video,...\r\n\r\n• Chuyển động mượt mà, giảm độ trễ hình ảnh nhờ tần số quét 144 Hz. Màn hình chống chói Anti Glare bảo vệ mắt cho người dùng trước những nơi có cường độ ánh sáng mạnh.\r\n\r\n• Kích thước màn hình 15.6 inch trên laptop Asus cùng tấm nền IPS hiện đại, cung cấp góc nhìn rộng lên đến 178 độ.\r\n\r\n• Laptop gaming có khối lượng 2.1 kg từ lớp vỏ nhựa cứng cáp cho khả năng tản nhiệt tốt cùng nắp lưng kim loại bền bỉ.', 0, 25000000, 24500000, 1, 'laptop-game.png'),
(7, 'MacBook Ari M2', 6, 'Apple đã âm thầm tung ra thế hệ MacBook Pro 14 inch M2 Pro 2023 hoàn toàn mới, hứa hẹn hiệu suất cao hơn so với MacBook Pro đợt trước, có khả năng xử lý mượt mà các tác vụ khắt khe của người dùng chuyên nghiệp.\r\nHiệu suất vô song, thời lượng pin dài chưa từng có\r\nVới bộ vi xử lý M2 Pro, MacBook Pro 14 inch có thể đáp ứng hoàn hảo nhu cầu làm việc chuyên nghiệp thuộc nhiều lĩnh vực khác nhau từ nghệ thuật, khoa học cho đến phát triển ứng dụng. Người dùng sẽ được trải nghiệm những cải tiến ấn tượng về hiệu suất, thời lượng pin, khả năng kết nối và năng suất tổng thể. ', 0, 32000000, 0, 1, 'macbook.png'),
(8, 'Laptop Dell Vostro 5620', 3, 'Laptop Dell Vostro 5620 i5 (V6I5001W1) có lối thiết kế đơn giản nhưng hiện đại, sở hữu cấu hình mạnh mẽ đến từ bộ vi xử lý Intel Gen 12 đi cùng màn hình kích thước lớn hỗ trợ mình giải quyết mọi tác vụ trong cả công việc và học tập.\r\nCấu hình mạnh mẽ đáp ứng đa nhu cầu khác nhau\r\nMang trong mình bộ vi xử lý Intel Core i5 1240P với điểm số Cinebench R23 mình đo được là 6196 điểm đa nhân và 1611 điểm đơn nhân, chiếc laptop học tập - văn phòng này hỗ trợ mình làm việc, học tập một cách mượt mà trên các phần mềm văn phòng như Word, Excel, PowerPoint,... cũng như thoả mãn niềm đam mê chỉnh sửa hình ảnh 2D cơ bản trên các ứng dụng của nhà Adobe như Photoshop, Illustrator,... nhờ card đồ họa tích hợp Intel UHD. \r\nBộ đôi Windows 11 Home SL + Office Home & Student vĩnh viễn được tích hợp sẵn trong máy mang đến sự tiện lợi, hỗ trợ mình hoàn thành công việc tốt hơn trong thời gian ngắn hơn, hơn nữa dữ liệu còn luôn được bảo đảm an toàn khi sao lưu trên OneDrive.\r\nLaptop RAM 8 GB chuẩn DDR4 có khả năng xử lý trơn tru tác vụ đa nhiệm, mình không cần phải phân vân đóng các ứng dụng trong quá trình sử dụng thông thường. Đối với mình 8 GB cũng đã đủ đáp ứng mọi nhu cầu nhưng để nâng cao thêm khả năng đa nhiệm và kích hoạt Dual Channel thì bạn có thể nâng cấp RAM cho máy lên đến tối đa 32 GB sử dụng cho thoải mái. \r\n\r\n', 0, 22190000, 21390000, 1, 'laptop dell.jpg'),
(9, 'Laptop Dell Gaming ', 3, 'Laptop Dell Alienware m15 R6 có một thiết kế bo tròn cứng cáp, dù là laptop gaming nhưng với sự bo tròn ở góc cạnh cũng như các chi tiết ở cổng giao tiếp tăng thêm phần mềm mại cho tổng thể. Chiếc máy được chế tác từ lớp vỏ kim loại đem đến một diện mạo thời thượng cho dòng laptop gaming Alienware. Bên cạnh đó, chiếc máy dày 19.2 mm và nặng 2.69 kg, theo cảm nhận của mình thì chiếc máy không quá cồng kềnh, cầm nắm chắc chắn, gọn gàng dễ dàng mang theo bên mình. ', 0, 47390000, 43390000, 1, 'lapdell.jpg'),
(10, 'Laptop MSI Gaming ', 4, 'Laptop MSI Gaming Pulse GL66 11UDK i7 (816VN) xuất hiện với một diện mạo ấn tượng cùng CPU Intel dòng H và card rời RTX 30 series, sẵn sàng cùng mình chinh phục những tựa game hấp dẫn hay hoàn thành công việc với hiệu suất cao hơn.\r\nKhám phá sức mạnh từ bộ vi xử lý Intel thế hệ 11\r\nMang trong mình sức mạnh từ bộ vi xử lý Intel Core i7 Tiger Lake 11800H mạnh mẽ cùng card đồ họa rời NVIDIA GeForce RTX 3050Ti 4 GB mang đến hiệu suất cao và nhanh hơn, hỗ trợ mình xử lý mọi tác vụ từ các phần mềm render đồ họa cho đến chiến những tựa game máu lửa. ', 0, 24790000, 0, 1, 'lapmsi.png'),
(11, 'Laptop MSI Modern 14', 4, 'Laptop MSI Gaming Pulse GL66 11UDK i7 (816VN) xuất hiện với một diện mạo ấn tượng cùng CPU Intel dòng H và card rời RTX 30 series, sẵn sàng cùng mình chinh phục những tựa game hấp dẫn hay hoàn thành công việc với hiệu suất cao hơn.\r\nKhám phá sức mạnh từ bộ vi xử lý Intel thế hệ 11\r\nMang trong mình sức mạnh từ bộ vi xử lý Intel Core i7 Tiger Lake 11800H mạnh mẽ cùng card đồ họa rời NVIDIA GeForce RTX 3050Ti 4 GB mang đến hiệu suất cao và nhanh hơn, hỗ trợ mình xử lý mọi tác vụ từ các phần mềm render đồ họa cho đến chiến những tựa game máu lửa. ', 1, 13490000, 0, 1, 'laptopmsi.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(150) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminPass`, `adminEmail`, `level`) VALUES
(1, 'admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', 0),
(6, 'huy', 'huy', '11967d5e9addc5416ea9224eee0e91fc', 'huy@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `productName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `quantity`, `sId`, `image`, `price`, `productName`) VALUES
(4, 4, 1, 'vpj2jh4102qqfb548urssem10m', 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3000000, 'Laptop Asus A456'),
(15, 3, 1, 'e7c8b68uo5cptgecmekr5278b0', 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 90000000, 'Laptop Asus 123'),
(18, 6, 2, '8sc0fgitgnbochobbf55jkssq5', 'laptop-game.png', 24500000, 'LapTop - Game'),
(26, 7, 1, '9qt57eukv2ougf8bbomvc64rd5', 'macbook.png', 52000000, 'MacBook Ari M2'),
(27, 1, 1, 'iudg7hrf58ggfumsj3ord0ph1k', 'image005_3.jpg', 10000000, 'Laptop Gamming xps'),
(29, 3, 1, 'ns7emfhp5p1hjo037bvh7fadb0', 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 90000000, 'Laptop Asus 123'),
(44, 4, 1, 'hl9io7hbsgdatgcbk7j8ubdfle', 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3000000, 'Laptop Asus A456'),
(45, 6, 1, 'hl9io7hbsgdatgcbk7j8ubdfle', 'laptop-game.png', 24500000, 'LapTop - Game'),
(50, 1, 2, 'ftp2to7cdr60tt2rrcnaefovr2', 'image005_3.jpg', 10000000, 'Laptop Gamming xps'),
(51, 1, 1, '4foovenv0e74ha854r4ac86cvs', 'image005_3.jpg', 10000000, 'Laptop Gamming xps'),
(52, 6, 1, '4foovenv0e74ha854r4ac86cvs', 'laptop-game.png', 24500000, 'LapTop - Game'),
(56, 6, 1, 'i7uljac5sc52han4vrvhj3sjtd', 'laptop-game.png', 24500000, 'LapTop - Game'),
(67, 6, 1, 'l25st5b7uie7mapuvv2oe3ub0n', 'laptop-game.png', 24500000, 'LapTop - Game'),
(72, 4, 1, '80fi7tghh7hkrhecs2ecif694b', 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3000000, 'Laptop Asus A456'),
(76, 7, 1, 'jni0m04nntu205mhi5uohosuib', 'macbook.png', 32000000, 'MacBook Ari M2'),
(89, 1, 1, 'pnrh65gb29e60522r2mfcttj3q', 'image005_3.jpg', 10000000, 'Laptop Gamming xps');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_custumer`
--

CREATE TABLE `tbl_custumer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_custumer`
--

INSERT INTO `tbl_custumer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'ho minh', 'dinh an , dt bd', 'sadsd', 'Viá»‡t Nam', '700000', '344387371', 'phamminh23102000@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(2, 'ho minh', 'dinh an , dt bd, dinh an dt bd', 'sadsd', 'Viá»‡t Nam', '700000', '344387371', '00000000@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, 'dinh an , dt bd', 'dinh an , dt bd, dinh an dt bd', 'sadsd', 'Viá»‡t Nam', '520000', '344387371', '1234567899@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Minh Hồ', '96 Lê Văn Chí, Linh Trung, Thủ Đức', 'Hồ Chí Minh', 'Vietnam', '700000', '0344387371', 'minhho.technology@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'tu', 'hcm', 'HCM', 'hia lai', '10000', '0948232304', 'tu7890@gmail.com', '7d5ecd3960c190b6ed8ae6a52aed991b'),
(6, 'TienHuy', 'hcm', 'Bien Hòa', 'hia lai', '10000', '0948232304', 'pthuy230301@gmail.com', '11967d5e9addc5416ea9224eee0e91fc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `custumerId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `statusId` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `custumerId`, `quantity`, `price`, `image`, `statusId`, `date`) VALUES
(3, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2019-10-06 17:57:44'),
(4, 4, 'Laptop Asus A456', 1, 2, 3000000, 'mi_gaming_laptop_2019_image_1565003115644.jpg', 3, '2019-10-06 18:02:21'),
(5, 1, 'Laptop Gamming xps', 1, 1, 10000000, 'image005_3.jpg', 3, '2023-03-20 12:36:42'),
(6, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2023-03-20 06:03:32'),
(9, 3, 'Laptop Asus 123', 1, 1, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2023-03-17 04:35:19'),
(10, 3, 'Laptop Asus 123', 4, 2, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2023-03-20 12:36:09'),
(11, 3, 'Laptop Asus 123', 5, 2, 90000000, 'surface-laptop-2-red-2018-core-i5-8250u-ram-8g-ssd-256g-13-5-co-san-ban-phim_36013_1.jpg', 3, '2023-03-20 06:13:41'),
(75, 1, 'Laptop Gamming xps', 6, 1, 10000000, 'image005_3.jpg', 0, '2023-03-30 14:53:19');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `tbl_custumer`
--
ALTER TABLE `tbl_custumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
