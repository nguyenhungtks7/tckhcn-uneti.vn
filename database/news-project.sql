-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 16, 2023 lúc 03:22 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `news-project`
--
CREATE DATABASE IF NOT EXISTS `news-project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `news-project`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(300) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`id`, `fullname`, `email`, `url`, `image`) VALUES
(1, 'Nguyen Van Cuong', 'nvc@gmail.com', '/public/', 'public/setting/logo.png'),
(2, 'Nguyễn Đình Tú', 'nvc@gmail.com', '', ''),
(3, 'Nguyễn Đình Vượng', 'dung@gmail.com', '', ''),
(4, 'Lê Tiến Bảo', 'bao@gmail.com', '', ''),
(5, 'Đỗ Tiến Long', 'long@gmail.com', '', ''),
(6, 'Lê Văn Ba', 'ba@gmail.com', '', ''),
(7, 'Trần Quốc Chiến', 'chien@gmail.com', '', ''),
(8, 'Đỗ Chí Bình', 'binh@gmail.com', '', ''),
(9, 'Trần Tiến Dũng', 'dung@gmail.com', '', ''),
(10, 'Lê Quốc Bảo', 'baob@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `url`, `type`, `created_at`, `updated_at`, `id_post`) VALUES
(73, './public/post-image/2023-07-16-11-32-52-16894999729987.jpeg', '', 1, '2023-07-16 16:32:52', NULL, 129),
(74, './public/post-image/2023-07-16-11-32-53-16894999730197.jpeg', '', 0, '2023-07-16 16:32:53', NULL, 129),
(75, './public/post-image/2023-07-16-11-32-53-16894999730226.jpeg', '', 0, '2023-07-16 16:32:53', NULL, 129),
(76, './public/post-image/2023-07-16-11-32-53-16894999730254.jpeg', '', 0, '2023-07-16 16:32:53', NULL, 129),
(77, './public/post-image/2023-07-16-11-35-45-16895001451952.jpeg', '', 1, '2023-07-16 16:35:45', NULL, 130),
(78, './public/post-image/2023-07-16-11-35-45-16895001451987.jpeg', '', 0, '2023-07-16 16:35:45', NULL, 130),
(79, './public/post-image/2023-07-16-11-35-45-16895001452007.jpeg', '', 0, '2023-07-16 16:35:45', NULL, 130),
(80, './public/post-image/2023-07-16-11-35-45-16895001452033.jpeg', '', 0, '2023-07-16 16:35:45', NULL, 130),
(81, './public/post-image/2023-07-16-11-38-29-16895003094186.jpeg', '', 1, '2023-07-16 16:38:29', NULL, 131),
(82, './public/post-image/2023-07-16-11-38-29-16895003094281.jpeg', '', 0, '2023-07-16 16:38:29', NULL, 131),
(83, './public/post-image/2023-07-16-11-38-29-16895003094303.jpeg', '', 0, '2023-07-16 16:38:29', NULL, 131),
(88, './public/post-image/2023-07-16-11-45-11-16895007115444.jpeg', '', 1, '2023-07-16 16:45:11', NULL, 133),
(89, './public/post-image/2023-07-16-11-45-11-16895007115475.jpeg', '', 0, '2023-07-16 16:45:11', NULL, 133),
(90, './public/post-image/2023-07-16-11-45-11-16895007115497.jpeg', '', 0, '2023-07-16 16:45:11', NULL, 133),
(91, './public/post-image/2023-07-16-11-45-11-16895007115517.jpeg', '', 0, '2023-07-16 16:45:11', NULL, 133),
(92, './public/post-image/2023-07-16-11-47-41-16895008615435.jpeg', '', 1, '2023-07-16 16:47:41', NULL, 134),
(93, './public/post-image/2023-07-16-11-47-41-16895008615469.jpeg', '', 0, '2023-07-16 16:47:41', NULL, 134),
(94, './public/post-image/2023-07-16-11-47-41-16895008615487.jpeg', '', 0, '2023-07-16 16:47:41', NULL, 134),
(95, './public/post-image/2023-07-16-11-51-16-16895010762059.jpeg', '', 1, '2023-07-16 16:51:16', NULL, 135),
(96, './public/post-image/2023-07-16-11-51-16-16895010762089.jpeg', '', 0, '2023-07-16 16:51:16', NULL, 135),
(97, './public/post-image/2023-07-16-11-51-16-16895010762109.jpeg', '', 0, '2023-07-16 16:51:16', NULL, 135),
(98, './public/post-image/2023-07-16-11-51-16-1689501076213.jpeg', '', 0, '2023-07-16 16:51:16', NULL, 135),
(99, './public/post-image/2023-07-16-11-53-51-16895012313826.jpeg', '', 1, '2023-07-16 16:53:51', NULL, 136),
(100, './public/post-image/2023-07-16-11-53-51-1689501231385.jpeg', '', 0, '2023-07-16 16:53:51', NULL, 136),
(101, './public/post-image/2023-07-16-11-53-51-16895012313868.jpeg', '', 0, '2023-07-16 16:53:51', NULL, 136),
(102, './public/post-image/2023-07-16-11-53-51-16895012313884.jpeg', '', 0, '2023-07-16 16:53:51', NULL, 136),
(103, './public/post-image/2023-07-16-11-53-51-16895012313909.jpeg', '', 0, '2023-07-16 16:53:51', NULL, 136),
(110, './public/post-image/2023-07-16-11-57-09-1689501429863.jpeg', '', 1, '2023-07-16 16:57:09', NULL, 138),
(111, './public/post-image/2023-07-16-11-57-09-16895014298657.jpeg', '', 0, '2023-07-16 16:57:09', NULL, 138),
(112, './public/post-image/2023-07-16-11-57-09-16895014298674.jpeg', '', 0, '2023-07-16 16:57:09', NULL, 138),
(113, './public/post-image/2023-07-16-11-57-09-16895014298691.jpeg', '', 0, '2023-07-16 16:57:09', NULL, 138),
(114, './public/post-image/2023-07-16-11-57-09-16895014298707.jpeg', '', 0, '2023-07-16 16:57:09', NULL, 138),
(115, './public/post-image/2023-07-16-11-57-09-16895014298724.jpeg', '', 0, '2023-07-16 16:57:09', NULL, 138),
(116, './public/post-image/2023-07-16-12-01-37-16895016971633.jpeg', '', 1, '2023-07-16 17:01:37', NULL, 139),
(117, './public/post-image/2023-07-16-12-07-20-16895020403839.png', '', 1, '2023-07-16 17:07:20', NULL, 140),
(118, './public/post-image/2023-07-16-12-09-57-16895021970172.png', '', 1, '2023-07-16 17:09:57', NULL, 141);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code_name` varchar(200) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `code_name`, `type`) VALUES
(15, 'Tạp chí khoa học và công nghệ Trường Đại Học Kinh Tế Kỹ Thuật Công nghiệp ', '2022-10-24 09:36:05', '2023-07-11 15:45:01', 'Số 31 (2022)', 1),
(16, 'Tạp chí khoa học và công nghệ Trường Đại Học Kinh Tế Kỹ Thuật Công nghiệp ', '2022-10-24 09:49:39', '2023-07-11 15:45:03', 'Số 31 (2022)', 1),
(17, 'Tạp chí khoa học và công nghệ Trường Đại Học Bách Khoa Hà Nội', '2022-10-24 10:00:18', '2023-07-11 15:32:12', 'Số 31 (2022)', 1),
(18, 'Tạp chí khoa học và Công nghệ Bộ Công Thương', '2023-07-11 15:33:55', '2023-07-11 15:33:57', 'Số 32 (2023)', 1),
(19, 'Tạp chí kinh tế - xã hội Bộ Công Thương', '2023-07-11 15:34:44', '2023-07-11 15:34:41', 'Số 33 (2023)', 2),
(20, 'Tạp chí kinh tế - xã hội Bộ Công Thương', '2023-07-11 15:36:10', '2023-07-11 15:36:13', 'Số 34(2023)', 2),
(21, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:28', '2023-07-11 15:44:14', 'Số 31 (2023)', 2),
(22, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:32', '2023-07-11 15:44:17', 'Số 32 (2023)', 2),
(23, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:35', '2023-07-11 15:44:20', 'Số 33 (2023)', 2),
(24, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:38', '2023-07-11 15:44:24', 'Số 34 (2023)', 2),
(25, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:41', '2023-07-11 15:44:27', 'Số 35 (2023)', 2),
(26, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:44', '2023-07-11 15:44:31', 'Số 36 (2023)', 2),
(27, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:47', '2023-07-11 15:44:35', 'Số 37 (2023)', 2),
(28, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:50', '2023-07-11 15:44:38', 'Số 38 (2023)', 2),
(29, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:43:53', '2023-07-11 15:44:40', 'Số 39 (2023)', 2),
(30, 'Tạp chí Khoa học quốc tế', '2023-07-11 15:43:55', '2023-07-11 15:44:43', 'Số 59 (2023)', 3),
(31, 'Tạp chí Khoa học Luxambua', '2023-07-11 15:43:58', '2023-07-11 15:44:45', 'Số 66 (2023)', 3),
(32, 'Tạp chí Diễn đàn khoa học Bộ công thương', '2023-07-11 15:44:01', '2023-07-11 15:44:48', 'Số 45 (2023)', 3),
(33, 'Tạp chí Diễn đàn khoa học Bộ Công nghệ thông tin', '2023-07-11 15:44:03', '2023-07-11 15:44:50', 'Số 39 (2023)', 3),
(34, 'Tạp chí Diễn đàn khoa học và hội nhập kinh tế', '2023-07-11 15:44:05', '2023-07-11 15:44:52', 'Số 77 (2023)', 3),
(77, 'Tạp chí kinh tế - xã hội Bộ Văn Hóa Thể thao và Du lịch', '2023-07-11 15:44:09', '2023-07-11 15:44:54', 'Số 32 (2023)', 2),
(79, 'Thông báo', '2023-07-16 01:53:58', NULL, NULL, 4),
(80, 'Sự kiện', '2023-07-16 01:54:23', NULL, NULL, 5),
(81, 'Giới thiệu', '2023-07-16 01:54:40', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` enum('unseen','seen','approved') NOT NULL DEFAULT 'unseen',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(300) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(9, 'most visited', '#', NULL, '2019-07-17 12:05:11', '2022-10-24 11:33:11'),
(12, 'about us ', 'http://localhost/OnlineNewsSite/', NULL, '2022-10-24 14:38:39', NULL),
(13, 'Home', 'http://localhost/OnlineNewsSite/', NULL, '2022-10-24 14:39:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `summary` text NOT NULL,
  `body` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` enum('disable','enable') NOT NULL DEFAULT 'disable',
  `selected` tinyint(5) NOT NULL DEFAULT 1,
  `breaking_news` tinyint(5) NOT NULL DEFAULT 1,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `author_name` varchar(200) NOT NULL DEFAULT '',
  `file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `user_id` (`user_id`),
  KEY `posts_author` (`author_name`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `body`, `view`, `user_id`, `cat_id`, `image`, `status`, `selected`, `breaking_news`, `published_at`, `created_at`, `updated_at`, `author_name`, `file`) VALUES
(129, 'Tạp chí nghiên cứu khoa học số 30', 'Bài báo dựa trên ý tưởng toán học trên đường cong Elliptic. Số học đường cong Elliptic này \r\nđược ứng dụng trong bảo mật, an toàn thông tin, chứng thực, chữ ký số. So với các hệ mật \r\ntruyền thống khác với cùng kích thước khóa thì hệ mật đường cong Elliptic có độ mật tốt \r\nhơn.', 'Bài báo dựa trên ý tưởng toán học trên đường cong Elliptic. Số học đường cong Elliptic này \r\nđược ứng dụng trong bảo mật, an toàn thông tin, chứng thực, chữ ký số. So với các hệ mật \r\ntruyền thống khác với cùng kích thước khóa thì hệ mật đường cong Elliptic có độ mật tốt \r\nhơn. Trong bài báo này nhóm tác giả đề xuất không cần tạo chuỗi dữ liệu để mã hóa mà chỉ \r\ncần lấy vị trí của điểm tương ứng ký tự để mã hóa. Với việc này thì bản mã ngắn gọn hơn khi\r\ngửi bản mã trên mạng sẽ chiếm ít băng thông trên quá trình truyền.', 0, 1, 32, '', 'disable', 1, 1, '1970-01-01 01:00:00', '2023-07-16 16:32:52', '2023-07-16 18:05:04', 'Nguyễn Cao Ngọc Hồng, Nguyễn Minh Vương, Phạm Xuân Việt, Bùi Xuân Thành, Dương Thanh Tùng\r\n', './public/upload/2023-07-16-11-32-52-.pdf'),
(130, 'Tạp chí nghiên cứu khoa học số 31', 'Graphene oxit (GO) là một vật liệu carbon 2 chiều, được biết đến như một loại vật liệu tương \r\nlai với nhiều đặc tính ưu việt. Trong nghiên cứu này, chúng tôi báo cáo một quy trình tổng \r\nhợp điện hóa xanh cho chế tạo GO sử dụng điện cực graphit và chất điện ly K2CO3. Các đặc \r\ntrưng của vật liệu GO được khảo sát sử dụng các phương pháp: phép đo nhiễu xạ tia X \r\n(XRD), hiển vi điện tử quét (SEM), phổ hồng ngoại biến đổi Fourier (FTIR), quang phổ \r\nRaman và quang phổ hấp thụ tử ngoại khả kiến (UV-vis). ', 'Graphene oxit (GO) là một vật liệu carbon 2 chiều, được biết đến như một loại vật liệu tương \r\nlai với nhiều đặc tính ưu việt. Trong nghiên cứu này, chúng tôi báo cáo một quy trình tổng \r\nhợp điện hóa xanh cho chế tạo GO sử dụng điện cực graphit và chất điện ly K2CO3. Các đặc \r\ntrưng của vật liệu GO được khảo sát sử dụng các phương pháp: phép đo nhiễu xạ tia X \r\n(XRD), hiển vi điện tử quét (SEM), phổ hồng ngoại biến đổi Fourier (FTIR), quang phổ \r\nRaman và quang phổ hấp thụ tử ngoại khả kiến (UV-vis). Kết quả thu được cho thấy, GO \r\nđược chế tạo ở điều kiện nồng độ chất điện ly K2CO3 0,08 M, điệp áp 12 V trong thời gian \r\n120 phút ở nhiệt độ phòng cho chất lượng GO tốt nhất. Phổ UV-vis của GO xuất hiện 2 đỉnh \r\nhấp thụ đặc trưng ở tại 230 nm đặc trưng cho liên kết C=C và một bờ hấp thụ ở 280-320 nm \r\nđặc trưng cho liên kết C=O. Vật liệu GO chế tạo được có số lớp khoảng 5-6 lớp, khoảng \r\ncách giữa hai lớp liền kề khoảng 0,82 nm, kích thước tấm GO lên đến vài micromet. Các kết \r\nquả thu được cho thấy đây là một giải pháp công nghệ đơn giản, thân thiện với môi trường, \r\nchi phí thấp và dễ dàng nâng cấp quy mô sản xuất số lượng lớn.\r\n', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:35:45', NULL, 'Hoàng Văn Tuấn, Nguyễn Lê Nhật Trang, Đào Thị Nguyệt Nga, Ngô Xuân Đinh , Vũ Đình Lãm , Lê Anh Tuấn\r\n', './public/upload/2023-07-16-11-35-45-.vnd.openxmlformats-officedocument.wordprocessingml.document'),
(131, 'Tạp chí nghiên cứu khoa học số 32', 'Để bảo đảm độ tin cậy và hiệu quả của quá trình gia công cắt gọt không thể thiếu các thông \r\ntin về trạng thái dao, cũng như trạng thái của cả quá trình cắt. Bài báo giới thiệu mô hình \r\nứng dụng mạng nơron nhân tạo trong dự báo mòn dao khi tiện, nhằm nâng cao hiệu quả, độ \r\ntin cậy của quá trình gia công.', 'Để bảo đảm độ tin cậy và hiệu quả của quá trình gia công cắt gọt không thể thiếu các thông \r\ntin về trạng thái dao, cũng như trạng thái của cả quá trình cắt. Bài báo giới thiệu mô hình \r\nứng dụng mạng nơron nhân tạo trong dự báo mòn dao khi tiện, nhằm nâng cao hiệu quả, độ \r\ntin cậy của quá trình gia công.', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:38:29', NULL, 'Phạm Vũ Dũng', './public/upload/2023-07-16-11-38-29-.pdf'),
(133, 'Tạp chí nghiên cứu khoa học số 33', 'Bảo quản rau bina bằng màng bao gói kháng khuẩn ứng dụng kỹ thuật khí quyển biến đổi là \r\nmột phương pháp phù hợp với điều kiện cơ sở vật chất tại Việt Nam. Mục tiêu của nghiên \r\ncứu này là xác định được ảnh hưởng của tỷ lệ diện tích màng bao gói LLDPE -G/khối lượng \r\nnông sản (cm²/g); độ dày màng (mm) đến điều kiện cân bằng khí oxy, cacbonic trong bao \r\ngói và chất lượng dinh dưỡng, cảm quan của rau bina trong quá trình tồn trữ.\r\n\r\n, Đặng Thảo Yến Linh\r\n, \r\nNguyễn Thị Mai Hương3', 'Bảo quản rau bina bằng màng bao gói kháng khuẩn ứng dụng kỹ thuật khí quyển biến đổi là \r\nmột phương pháp phù hợp với điều kiện cơ sở vật chất tại Việt Nam. Mục tiêu của nghiên \r\ncứu này là xác định được ảnh hưởng của tỷ lệ diện tích màng bao gói LLDPE -G/khối lượng \r\nnông sản (cm²/g); độ dày màng (mm) đến điều kiện cân bằng khí oxy, cacbonic trong bao \r\ngói và chất lượng dinh dưỡng, cảm quan của rau bina trong quá trình tồn trữ. Kết quả thực \r\nnghiệm đã xác định được tỷ lệ diện tích màng bao gói/ khối lượng rau bina là 3,43 cm2\r\n/g và \r\nđộ dày màng LLDPE -G là 0,04 mm, tương ứng với trạng thái cân bằng môi trường vi khí \r\nhậu ở nồng độ khí O2 khoảng 18% và nồng độ khí CO2 10%. Chất lượng rau bina được bảo \r\nquản ở điều kiện này được đánh giá sau 15 ngày tồn trữ đạt tiêu chuẩn vệ sinh an toàn \r\nthực phẩm về vi sinh theo quy định Thực hành sản xuất nông nghiệp tốt (GAP)', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:45:11', NULL, 'Phạm Thị Thu Hoài\r\n, Chu Xuân Quang\r\n, Trần Hùng Thuận\r\n\r\n, Đặng Thảo Yến Linh', './public/upload/2023-07-16-11-45-11-.pdf'),
(134, 'Tạp chí nghiên cứu khoa học số 34', 'Bài báo nghiên cứu xây dựng quy trình ứng dụng phần mềm Mastercam để tạo ra 1 bộ \r\npost-processor hỗ trợ cho việc kiết xuất chương trình gia công sử dụng trên máy tiện CNC \r\nCLK6140D/2. Để xử lý một số cấu trúc chương trình đặc trưng riêng của máy tiện CNC \r\nCLK6140D/2, đảm bảo máy hoạt động không bị lỗi trong quá trình vận hành. ', 'Bài báo nghiên cứu xây dựng quy trình ứng dụng phần mềm Mastercam để tạo ra 1 bộ \r\npost-processor hỗ trợ cho việc kiết xuất chương trình gia công sử dụng trên máy tiện CNC \r\nCLK6140D/2. Để xử lý một số cấu trúc chương trình đặc trưng riêng của máy tiện CNC \r\nCLK6140D/2, đảm bảo máy hoạt động không bị lỗi trong quá trình vận hành. Đây là một \r\ncông việc quan trọng và được sử dụng nhiều trong lĩnh vực gia công cơ khí có áp dụng công \r\nnghệ CAD/CAM/CNC, nhằm nâng cao độ chính xác chế tạo, chất lượng bề mặt gia công, \r\nđơn giản hoá quy trình công nghệ, nâng cao năng suất & giảm giá thành sản phẩm.', 0, 1, 19, '', 'disable', 1, 1, '1970-01-01 01:00:00', '2023-07-16 16:47:41', '2023-07-16 18:03:31', 'Trịnh Thị Mai1\r\n, Đỗ Anh Tuấn\r\n\r\n, Trần Trọng Thể\r\n\r\n, Hoàng Trọng Hưng\r\n', ''),
(135, 'Tạp chí nghiên cứu khoa học số 36', 'gũ vị tử (Schisandra chinensis) thu hoạch ở chân núi Ngọc Linh - Kom Tum. Theo Đông y, \r\nngũ vị tử có vị chua, tính ôn. Ngũ vị tử có nhiều công dụng trong hỗ trợ điều trị bệnh bởi \r\ntrong quả chứa các thành phần hóa học có hoạt chất sinh học như lignan, vitamin C, axit \r\nhữu cơ. Tuy nhiên, các hoạt chất dễ bị tổn thất trong công đoạn làm khô quả. \r\n', 'Ngũ vị tử (Schisandra chinensis) thu hoạch ở chân núi Ngọc Linh - Kom Tum. Theo Đông y, \r\nngũ vị tử có vị chua, tính ôn. Ngũ vị tử có nhiều công dụng trong hỗ trợ điều trị bệnh bởi \r\ntrong quả chứa các thành phần hóa học có hoạt chất sinh học như lignan, vitamin C, axit \r\nhữu cơ. Tuy nhiên, các hoạt chất dễ bị tổn thất trong công đoạn làm khô quả. Nghiên cứu đã \r\nứng dụng phương pháp sấy bơm nhiệt kết hợp bức xạ hồng ngoại để làm khô quả ngũ vị tử \r\nvới các thông số công nghệ: nhiệt độ sấy 49,18oC, độ dày lớp quả sấy 20,41 cm, tốc độ tác \r\nnhân sấy 1,5 m/s. Kết quả thu được quả ngũ vị tử khô có hàm lượng lignan được bảo tồn là \r\n4,26%, hàm hượng VTM C 143,28 mg%; hàm lượng axit 5,37%, độ ẩm < 9%, quả khô đều, \r\nmàu đỏ nâu sáng phù hợp để làm dược liệu hỗ trợ trong điều trị bệnh hoặc dùng làm nguyên \r\nliệu để chế biến các sản phẩm trà từ ngũ vị tử.', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:51:16', NULL, 'Đặng Thị Thanh Quyên\r\n, Đỗ Thị Kim Loan\r\n, Nguyễn Thị Thảo', './public/upload/2023-07-16-11-51-16-.pdf'),
(136, 'Tạp chí khoa học công nghệ số 37', 'Hydroxyapatite kích thước nano là ứng viên sáng giá trong lĩnh vực kĩ thuật mô xương, do \r\ncó thành phần tương tự với thành phần vô cơ trong xương tự nhiên. Ở dạng bột mịn, HAp \r\nvới kích thước nano là dạng canxi photphat được cơ thể hấp thụ dễ dàng do tỷ lệ Ca/P trong \r\nphân tử HAp tương đồng tỷ lệ Ca/P trong xương và răng. Nano bạc kim loại là vật liệu có tác \r\ndụng kháng khuẩn, diệt virut, nấm…', 'Hydroxyapatite kích thước nano là ứng viên sáng giá trong lĩnh vực kĩ thuật mô xương, do \r\ncó thành phần tương tự với thành phần vô cơ trong xương tự nhiên. Ở dạng bột mịn, HAp \r\nvới kích thước nano là dạng canxi photphat được cơ thể hấp thụ dễ dàng do tỷ lệ Ca/P trong \r\nphân tử HAp tương đồng tỷ lệ Ca/P trong xương và răng. Nano bạc kim loại là vật liệu có tác \r\ndụng kháng khuẩn, diệt virut, nấm… Sự kết hợp giữa nano HAp với nano Ag thể hiện các \r\nđặc tính kháng khuẩn ưu việt và là vật liệu sinh học thích hợp để điều trị các bệnh nhiễm \r\ntrùng xương do vi khuẩn như viêm tủy xương. Trong nghiên cứu này, chúng tôi đã nghiên \r\ncứu chế tạo thành công vật liệu nano Ag/hydroxyapatite (Ag/HAp) với quy trình hai bước. \r\nĐặc trưng hóa lý của bột nano Ag/HAp được phân tích bằng phương pháp nhiễu xạ tia X, \r\nhình ảnh hiển vi điện tử quét, phổ hồng ngoại biến đổi Fourier, quang phổ huỳnh quang tia X \r\nvà quang phổ tử ngoại khả kiến UV-Vis... Kết quả phân tích cho thấy bột nano Ag/HAp có \r\ndạng hạt, kích thước hạt trung bình khoảng 75 nm, bột có cấu trúc xốp rỗng với các lỗ xốp \r\nphân bố khá đồng đều gần tương đồng với cấu trúc dạng xốp của xương tự nhiên.', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:53:51', NULL, 'Phan Thị Lan Hương\r\n, Nguyễn Bá Hưng\r\n, Nguyễn Thị Thục Anh\r\n, Vũ Thị Trang1', './public/upload/2023-07-16-11-53-51-.pdf'),
(138, 'Tạp chí nghiên cứu khoa học số 38', 'Quyết định thay dụng cụ phù hợp và đúng lúc là yêu cầu cấp thiết, nhằm tránh hư hỏng chi \r\ntiết hoặc thay dụng cụ không cần thiết. Giám sát trực tuyến tình trạng của dụng cụ là cần \r\nthiết đối với các máy công cụ hiện đại. ', 'Quyết định thay dụng cụ phù hợp và đúng lúc là yêu cầu cấp thiết, nhằm tránh hư hỏng chi \r\ntiết hoặc thay dụng cụ không cần thiết. Giám sát trực tuyến tình trạng của dụng cụ là cần \r\nthiết đối với các máy công cụ hiện đại. Mài là quá trình, được đặc trưng bởi sử dụng đá mài \r\ncó nhiều lưỡi cắt, chịu mài mòn không đồng nhất, vì vậy mòn đá mài là phức tạp nhất so với \r\ncác loại dụng cụ cắt khác. Bài báo đề cập sự phát triển hệ thống giám sát mòn đá mài trên \r\ncơ sở ANN. Thiết lập được hệ giám sát trực tuyến mòn đá gồm DAQ và DSS. Xây dựng các \r\nquan hệ cơ bản trong quá trình mài, đặc biệt giữa mòn đá và các thông số đầu ra (lực cắt, \r\nrung động, độ nhám bề mặt…) sử dụng chúng trong giám sát mòn đá.\r\n', 0, 1, 15, '', 'disable', 1, 1, '2023-07-16 00:00:00', '2023-07-16 16:57:09', NULL, 'Phạm Vũ Dũng, Đỗ Anh Tuấn', './public/upload/2023-07-16-11-57-09-.pdf'),
(139, 'Lịch sử hình thành', 'Trường Đại học Kinh tế – Kỹ thuật Công nghiệp được thành lập theo Quyết định số 1206/QĐ-TTg ngày 11 tháng 9 năm 2007 của Thủ tướng Chính phủ, trên cơ sở nâng cấp Trường Cao đẳng Kinh tế Kỹ thuật Công nghiệp I,...', 'Trường Đại học Kinh tế – Kỹ thuật Công nghiệp được thành lập theo Quyết định số 1206/QĐ-TTg ngày 11 tháng 9 năm 2007 của Thủ tướng Chính phủ, trên cơ sở nâng cấp Trường Cao đẳng Kinh tế Kỹ thuật Công nghiệp I, tiền thân là Trường Trung cấp Kỹ thuật III, được thành lập năm 1956. Trải qua hơn nửa thế kỷ, tập thể lãnh đạo, cán bộ, giáo viên, công nhân, viên chức và học sinh sinh viên của Nhà trường đã bền bỉ phấn đấu, tập trung trí tuệ và sáng tạo, vượt qua mọi khó khăn thử thách để đưa Nhà trường liên tục phát triển bền vững với những thành tích vẻ vang trong sự nghiệp đào tạo, phát triển nguồn nhân lực cho đất nước.', 0, 1, 81, 'public/post-image/2023-07-16-12-02-55.jpeg', 'disable', 1, 1, '1970-01-01 01:00:00', '2023-07-16 17:01:37', '2023-07-16 17:02:55', 'Trường Đại học Kinh tế – Kỹ thuật Công nghiệp ', ''),
(140, 'Thông báo tuyển sinh Đại học hệ chính quy năm 2023', 'Căn cứ Thông tư số 08/2022/TT-BGDĐT ngày 06 tháng 06 năm 2022 của Bộ trưởng Bộ Giáo dục và Đào tạo về việc ban hành Quy chế tuyển sinh trình độ đại học, tuyển sinh cao đẳng ngành Giáo dục mầm non;\r\n\r\n', 'Căn cứ Thông tư số 08/2022/TT-BGDĐT ngày 06 tháng 06 năm 2022 của Bộ trưởng Bộ Giáo dục và Đào tạo về việc ban hành Quy chế tuyển sinh trình độ đại học, tuyển sinh cao đẳng ngành Giáo dục mầm non;\r\n\r\nCăn cứ Thông tư số 03/2022/TT-BGDĐT ngày 18 tháng 01 năm 2022 của Bộ trưởng Bộ Giáo dục và Đào tạo quy định về việc xác định chỉ tiêu tuyển sinh đại học, thạc sĩ, tiến sĩ và chỉ tiêu tuyển sinh cao đẳng ngành Giáo dục mầm non;', 0, 1, 79, 'public/post-image/2023-07-16-12-07-48.png', 'disable', 1, 1, '1970-01-01 01:00:00', '2023-07-16 17:07:20', '2023-07-16 17:07:48', 'Trường Đại học KT KT CN', ''),
(141, 'Viện Đổi mới sáng tạo mở và Doanh nhân công nghệ ', 'Viện Đổi mới sáng tạo mở và Doanh nhân công nghệ với tầm nhìn là tạo ra một hệ sinh thái đổi mới sáng tạo tầm cỡ quốc tế tại nhiều tỉnh thành và trường đại học trên khắp Việt Nam, tập trung vào .....', 'Viện Đổi mới sáng tạo mở và Doanh nhân công nghệ với tầm nhìn là tạo ra một hệ sinh thái đổi mới sáng tạo tầm cỡ quốc tế tại nhiều tỉnh thành và trường đại học trên khắp Việt Nam, tập trung vào đào tạo thực tiễn nhằm mục đích tạo ra thế hệ doanh nhân công nghệ tài năng tiếp theo với đầy đủ kiến thức, kỹ năng và kinh nghiệm thực tế để đáp ứng những thách thức và nhu cầu luôn thay đổi.', 0, 1, 80, 'public/post-image/2023-07-16-12-10-21.png', 'disable', 1, 1, '1970-01-01 01:00:00', '2023-07-16 17:09:57', '2023-07-16 17:10:38', 'Trường Đại học KT KT CN', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission` enum('user','admin') NOT NULL DEFAULT 'user',
  `verify_token` varchar(191) DEFAULT NULL,
  `is_active` tinyint(5) NOT NULL DEFAULT 0,
  `forgot_token` varchar(191) DEFAULT NULL,
  `forgot_token_expire` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permission`, `verify_token`, `is_active`, `forgot_token`, `forgot_token_expire`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$kUh4xMjKTXeNiy7jSIJO6.LOVBth9hQiPwMi0BgD.ao2uWBDn1OB.', 'admin', 'cf408fb6caedd3c8308a21254b1a3cb4a5c8757f7740354104af7b43dfe7bff6', 1, NULL, NULL, '2023-06-12 16:17:46', '2023-07-11 21:42:03'),
(2, 'louis', 'louis@yahoo.com', '$2y$10$kUh4xMjKTXeNiy7jSIJO6.LOVBth9hQiPwMi0BgD.ao2uWBDn1OB.', 'user', NULL, 1, NULL, NULL, '2021-06-23 23:35:51', '2019-07-05 02:10:50'),
(3, 'kam', 'kamran@gmail.com', '$2y$10$nlZ5dMJ2sv9HrKU4NJslDe0ick10lGSBZNM2i14zKtDGGAEqAdXVS', 'user', NULL, 0, NULL, NULL, '2019-06-06 01:28:40', '2023-06-12 16:13:53'),
(4, 'nova', 'nova@yahoo.com', '$2y$10$CrqnkHtp2dKlyHfYRniXG.B8fWtrHtfavUyGVqc6bdiiF5lgwzi96', 'admin', NULL, 1, NULL, NULL, '2019-10-27 21:56:13', '2019-10-27 22:18:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `websetting`
--

DROP TABLE IF EXISTS `websetting`;
CREATE TABLE IF NOT EXISTS `websetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Đang đổ dữ liệu cho bảng `websetting`
--

INSERT INTO `websetting` (`id`, `title`, `description`, `keywords`, `logo`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'online news', 'online news', 'online news', 'public/setting/logo.png', 'public/setting/icon.jpeg', '2019-06-09 19:54:37', '2022-10-24 16:41:31');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Siêu dữ liệu
--
USE `phpmyadmin`;

--
-- Siêu dữ liệu cho bảng author
--

--
-- Siêu dữ liệu cho bảng banners
--

--
-- Siêu dữ liệu cho bảng categories
--

--
-- Siêu dữ liệu cho bảng comments
--

--
-- Siêu dữ liệu cho bảng menus
--

--
-- Siêu dữ liệu cho bảng posts
--

--
-- Siêu dữ liệu cho bảng users
--

--
-- Siêu dữ liệu cho bảng websetting
--

--
-- Siêu dữ liệu cho cơ sở dữ liệu news-project
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
