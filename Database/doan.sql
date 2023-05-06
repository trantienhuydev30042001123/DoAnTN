-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2023 lúc 09:34 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`) VALUES
(70, 5, NULL),
(71, 7, NULL),
(69, 0, NULL),
(74, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `description`, `name`) VALUES
(20, 'loại này cũng oke phết', 'adidas'),
(21, 'okeoke', 'MLB'),
(51, 'loại này oke', 'nike');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(79),
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderid` bigint(20) DEFAULT NULL,
  `productid` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `username` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `image2` longtext DEFAULT NULL,
  `image3` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `categoryid` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `available`, `createdate`, `description`, `discount`, `image`, `image2`, `image3`, `price`, `categoryid`) VALUES
(6, 'sao đéo đúng 1', b'0', '2023-04-11', 'Khái niệm đoạn văn ở trường phổ thông hiện nay được hiểu theo nhiều cách khác nhau:', 30, 'https://vn-live-01.slatic.net/p/8fc8b0949d42407908e0467ee45f21d5.jpg', 'https://znews-photo.zingcdn.me/w660/Uploaded/yqdxwpjwq/2021_02_06/sn.jpg', 'https://giaysihcm.com/wp-content/uploads/2021/04/z2468147040292_b5a9614b05934d71fc20945ca4609acb-scaled.jpg', 300000, 20),
(7, 'sao đéo đúng 2', b'0', '2023-04-11', 'awtawtwtfguiwehguiewhgiwhgiewhgiweghiweghwhguiw', 35, 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 9000000, 21),
(0, 'gdfgsd', b'0', '2023-04-11', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 20, 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 3000000, 20),
(2, 'gdfgsd', b'0', '2023-04-11', ' Người bản lĩnh, họ sẽ được mọi người yêu quý, tin cậy; bản thân họ cũng sẽ hiểu được sứ mệnh của mình là chỗ dựa tinh thần cho người khác. Vì vậy, người bản lĩnh là người dám nghĩ, dám làm và dám thành công. Tuy nhiên cũng có những người vừa mới thấy nhấp nhô gợn sóng đã vội vã buông tay chèo, dễ dàng chấp nhận thất bại.Chắc chắn một điều rằng, những kẻ ấy vĩnh viễn không thể tự khẳng định vị trí của mình trong xã hội, mãi mãi chỉ có thể sống dưới cái bóng của kẻ khác.', 10, 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 30000000, 20),
(4, 'etrwyweyt', b'0', '2023-04-11', 'ywetwgwrwt', 45, 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 300000000, 21),
(5, 'ewtrewr', b'0', '2023-04-03', 'yewregdgfsdgfd', 40, 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 'https://ordixi.com/wp-content/uploads/2020/10/0eb4c83d.jpg', 900000, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL,
  `stars` int(11) DEFAULT NULL,
  `productid` bigint(20) DEFAULT NULL,
  `username` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(54, 'USER'),
(3, 'ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) NOT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(42, 55),
(41, 66),
(32, 77),
(40, 34),
(45, 80),
(46, 50),
(47, 89);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `avatar` longtext DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `avatar`, `email`, `name`, `password`, `username`) VALUES
(61, NULL, 'stfdring@gmail.com', 'abcrưer', NULL, 'sdfa'),
(57, NULL, 'string@gmail.com', 'tdgfw542', '$2a$10$Bo3MfqhxiHL5lBg0sQcuPOYlCOykFVZj6lMxBUhe7b5u48VOcaEvy', 'sdfusdu5w4'),
(15, NULL, 'hiuhiu@gmail.com', 'hiu hiu', '$2a$10$ZhzLQJExY7jUk5Y5fdhOfe.cuIDpygOO8O/WQZnhmCrGmNwdUPnOa', 'hiuhiu2'),
(16, NULL, 'trantienhuy2001@gmail.com', 'abc', '$2a$10$2Q5WhT6JvHMVkrDgfbVzUO7fcWMkLAN4P8Keim6d2qS5kZSOI0Scq', 'abcd'),
(17, NULL, 'hiuhiu1@gmail.com', 'abc', '$2a$10$4jNoL8T5e8qwCqiXQAK72OStVhxjZiAtw28r9Q8bzz9KTcBob7aJ.', 'abcd1'),
(18, NULL, 'abc1@gmail.com', 'abc', '$2a$10$vHxPnBjfPb8TuQrzm6e6f.Us18EEZsIHCiAwRM1lwkRBeoVfFdzQ6', 'abc1'),
(19, NULL, 'hiuhiu10@gmail.com', 'hiu hiu', '$2a$10$3mJHdek8g1AVHjk52qz3Ee1st4cbeOpM8zmqyxQWTgdChtRxhPsfe', 'hiuhiu3'),
(62, NULL, 'stfdrin34qwg@gmail.com', 'abcrreweqưer', NULL, 'sdfqửeqa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(57, 54),
(61, 54),
(62, 54);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpu4bcbluhsxagirmbdn7dilm5` (`product_id`),
  ADD KEY `FKg5uhi8vpsuy0lgloxk2h4w5o6` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj4gc2ja2otvwemf4rho2lp3s8` (`orderid`),
  ADD KEY `FKaltatpxipsjtcih4d1h6bn0xr` (`productid`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5ul5qtyh6slfyq8i4jby7qecx` (`username`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1krrsjgcawsfg8k8u4hm5gi8q` (`categoryid`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbvp08mhetx9i7xvsmxa8qdqix` (`productid`),
  ADD KEY `FKkuu2efg4ccryc75qa6d7epifa` (`username`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
