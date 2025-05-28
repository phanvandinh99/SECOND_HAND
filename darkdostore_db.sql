-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2025 lúc 05:26 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `darkdostore_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `img` varchar(100) NOT NULL,
  `small_content` mediumtext DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `img`, `small_content`, `content`, `created_at`) VALUES
(0, 'hello', 'hello-31', '1744645540.png', '12344556677', '<p>kdjgokplls\'gsmsk]psk]ps</p>', '2025-04-14 15:45:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `image`, `created_at`) VALUES
(21, 'Mũ', 'mũ', 'Mũ', 0, '1744473694.png', '2023-04-14 16:21:49'),
(22, 'Áo ', 'Áo-89', 'Áo', 0, '1743608876.png', '2025-04-02 15:47:56'),
(23, 'Quần ', 'Quần-89', 'Quần', 0, '1744473521.png', '2025-04-12 15:58:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `created_at`) VALUES
(20, 53, 2, '2025-03-29 16:09:13'),
(23, 53, 4, '2025-03-31 17:06:52'),
(24, 54, 3, '2025-04-01 17:37:59'),
(25, 54, 2, '2025-04-01 17:40:20'),
(26, 53, 2, '2025-04-01 17:43:04'),
(27, 55, 2, '2025-04-02 15:16:18'),
(28, 55, 2, '2025-04-02 15:25:36'),
(29, 55, 4, '2025-04-02 15:26:19'),
(30, 55, 3, '2025-04-02 15:26:57'),
(31, 55, 2, '2025-04-12 18:26:05'),
(32, 53, 2, '2025-04-13 15:54:07'),
(33, 53, 3, '2025-04-13 15:57:50'),
(34, 55, 2, '2025-04-22 15:26:50'),
(35, 55, 2, '2025-05-16 09:36:46'),
(36, 55, 2, '2025-05-16 10:16:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `rate` tinyint(4) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `user_id`, `product_id`, `order_id`, `selling_price`, `quantity`, `status`, `rate`, `comment`, `created_at`) VALUES
(71, 53, 64, 32, 7500000, 1, 3, NULL, NULL, '2025-04-13 15:54:00'),
(72, 53, 63, 33, 700000, 1, 3, NULL, NULL, '2025-04-13 15:57:47'),
(73, 55, 56, 34, 800000, 1, 2, NULL, NULL, '2025-04-22 15:26:39'),
(74, 55, 51, 35, 750000, 1, 2, NULL, NULL, '2025-05-16 09:36:40'),
(75, 55, 72, 36, 650000, 1, 2, NULL, NULL, '2025-05-16 10:16:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `created_at`) VALUES
(49, 21, 'Jacket cahartt detroit ', 'jacket-cahartt-detroit--46', 'Áo làm từ chất liệu canvas vô cùng bền, lót lông ấm áp', 'Dài 60, Ngang 58', 4000000, 4000000, '1743608495.png', 1, 0, '2025-04-02 15:41:35'),
(50, 22, 'TOMMY HILFIGER DENIM JACKET', 'Áo khoác jean thương hiệu tommy -68', 'Áo mới không lủng rách, màu fade đẹp ', 'Dài 65, Rộng 60', 1700000, 1700000, '1744473436.png', 1, 0, '2025-04-12 15:57:16'),
(51, 23, 'LEVIS 552 JEANS', 'Quần jean levis-43', 'Quần được làm từ vải jean, màu chưa bạc nhiều ,không rách ', 'Eo 82, Dài 105, Ống 23', 750000, 750000, '1744475701.png', 0, 0, '2025-04-12 16:35:01'),
(52, 23, 'KAPORA JEANS', 'kapora-jeans-91', 'Quần kapora túi hộp, màu xanh bạc, sờn gấu ', 'Eo 78, Dài 100, Ống 20', 650000, 650000, '1744475855.png', 1, 0, '2025-04-12 16:37:35'),
(53, 23, 'MODERN BASICS JEANS', 'modern-basics-jeans-57', 'Quần jeans nội địa Nhật, chất vải đẹp không lủng rách', 'Eo 86, Dài 108, Ống 24', 650000, 650000, '1744476161.png', 1, 0, '2025-04-12 16:42:41'),
(54, 23, 'LEVI STRAUSS&CO JEANS', 'levi-straussco-jeans-50', 'Quần jeans loe thập niên 90, màu xanh navy , có rách nhẹ ở túi sau ', 'Eo 88, Dài 110, Ống 28', 675000, 675000, '1744476288.png', 1, 0, '2025-04-12 16:44:48'),
(55, 23, ';ONLY CARGO JEANS PANT', 'only-cargo-jeans-pant-21', 'Quần cargo nhiều túi hộp , màu đỏ độc lạ, không rách', 'Eo 80, Dài 110, Ống 23', 700000, 700000, '1744477326.png', 1, 0, '2025-04-12 17:02:06'),
(56, 23, 'EVENRIVER CARGO JEANS PANT', 'evenriver-cargo-jeans-pant-56', 'Quần cargo đen có túi hộp màu đen fade bạc ', 'Eo 84, Dài 107, Ống 23', 800000, 800000, '1744477680.png', 0, 0, '2025-04-12 17:08:00'),
(60, 23, 'BROWN CARGO PANT', 'brown-cargo-pant-66', 'Quần vải canvas dày dặn ', 'Eo 84, Dài 103, Ống 22', 700000, 700000, '1744482661.png', 1, 0, '2025-04-12 18:31:01'),
(61, 23, 'AVIREX CARGO PANTS', 'avirex-cargo-pants-57', 'Quần với thiết kể độc đáo túi khỉ đằng sau mông ', 'Eo 76, Dài 105, Ống 21', 1200000, 1200000, '1744482772.png', 1, 0, '2025-04-12 18:32:52'),
(62, 22, 'AAPE BY A BATHING APE 93 VARSITY JACKET', 'aape-by-a-bathing-ape-93-varsity-jacket-28', 'Áo khoác 2 lớp trần bông nhẹ ', 'Dài 65, Rộng 60', 2200000, 2200000, '1744482981.png', 1, 0, '2025-04-12 18:36:21'),
(63, 22, 'ARMY WINBREAKER JACKET', 'army-winbreaker-jacket-59', 'Áo gió quân đội Mỹ', 'Dài 66, Rộng 66', 700000, 700000, '1744483042.png', 0, 0, '2025-04-12 18:37:22'),
(64, 22, 'FUBU REAL LEATHER BOMBER JACKET', 'fubu-real-leather-bomber-jacket-86', 'Áo da, Trần bông quả trám ', 'Dài 70, rộng 65', 7500000, 7500000, '1744483122.png', 0, 0, '2025-04-12 18:38:42'),
(65, 22, 'UMBRO JACKET', 'umbro-jacket-33', 'Áo khoác thể thao những năm 1990 ', 'Dài 63, Rộng 58', 650000, 650000, '1744483194.png', 1, 0, '2025-04-12 18:39:54'),
(66, 22, 'POLO RALPH LAUREN WOOL CARDIGAN', 'polo-ralph-lauren-wool-cardigan-34', 'Áo len cardigan ấm ', 'Dài 65, Rộng 63', 1600000, 1600000, '1744483262.png', 1, 0, '2025-04-12 18:41:02'),
(67, 22, 'LEVIS STRAUSS SHERPA FELT JACKET', 'levis-strauss-sherpa-felt-jacket-99', 'Áo khoác dạ lót lông cừu ', 'Dài 70, Rộng 68', 2700000, 2700000, '1744483333.png', 1, 0, '2025-04-12 18:42:13'),
(68, 21, 'STARTERS RAIDERS CAP', 'starters-raiders-cap-34', 'Mũ lưỡi trai 90s', 'Mũ size 3', 900000, 900000, '1744483417.png', 1, 0, '2025-04-12 18:43:37'),
(69, 21, 'KANGOL FELT CAP', 'kangol-felt-cap-60', 'Mũ lông kangol', 'Size 4', 890000, 890000, '1744483476.png', 1, 0, '2025-04-12 18:44:36'),
(70, 21, 'SUPREME CORDUROY TURQUOISE CAP', 'supreme-corduroy-turquoise-cap-55', 'Mũ nhung tăm đến từ supreme', 'Mũ size 3', 1700000, 1700000, '1744483552.png', 1, 0, '2025-04-12 18:45:52'),
(71, 21, 'KANGOL FELT BUCKET HAT', 'kangol-felt-bucket-hat-55', 'Mũ độ mới cao ', 'Mũ size 5', 650000, 650000, '1744483626.png', 1, 0, '2025-04-12 18:47:06'),
(72, 21, 'KANGOL BERET HAT', 'kangol-beret-hat-74', 'Mũ nồi với phối màu đặc biệt', 'Không có size có thể tùy chỉnh độ rộng ', 650000, 650000, '1744483703.png', 0, 0, '2025-04-12 18:48:23'),
(73, 21, 'POLO SPORT CAP HAT', 'polo-sport-cap-hat-97-27-37', 'Mũ lưỡi trai polo vintage', 'Có thể tùy chỉnh theo size đầu ', 500000, 500000, '1744483774.png', 1, 1, '2025-04-12 18:49:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `role_as`, `creat_at`) VALUES
(53, 'Trần Đức Mạnh', 'manh@gmail.com', '0979419901', '94 trần quốc vượng', '$2y$10$2lSE73f0XCM9GVpUkdEEYOY971qkPzWWjthxCSzByXGyZOcIswtT2', 1, '2025-03-29 16:08:06'),
(55, 'kiệt', 'kiet@gmail.com', '0364611267', '127 lạc long quân ', '$2y$10$hRmzzYmZ4JmBnTcGJSOEZ.sgeRN5wGbXeJ/v3JT66N5z2H9AggVbC', 0, '2025-04-02 15:15:22'),
(56, 'kiệt', 'kiet1@gmail.com', '0364611267', '127 lạc long quân ', '$2y$10$.09VwcBH50P3X10tM3L/0.d3BngNAyOnp8BuCVwPAG8gDvkHyseNG', 1, '2025-04-14 15:42:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
