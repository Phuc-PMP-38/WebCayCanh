-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2021 lúc 04:30 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgaubong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `avatar`) VALUES
(1, 'Huỳnh Ngọc Tuấn', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `status`) VALUES
(1, 'Gấu Bông\r\n', 1),
(2, 'Móc Khóa Gấu Bông', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `password`, `birthday`, `gender`, `status`) VALUES
(23, 'Admin123', 'admin@gmail.com', '0976972771', 'Sài Gòn', 'e10adc3949ba59abbe56e057f20f883e', '2020-09-19', 1, 1),
(25, 'Huynhngoctuan', 'admin1@gmail.com', '0976972771', 'Sài Gòn', 'e10adc3949ba59abbe56e057f20f883e', '2020-09-19', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `object` varchar(100) NOT NULL,
  `resquest` varchar(500) CHARACTER SET utf8 NOT NULL,
  `createad` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `Email`, `Phone`, `object`, `resquest`, `createad`) VALUES
(5, 'Admin123HuynhNgoc', 'admin@gmail.com', '0976972771', 'khách hàng', 'Hình ảnh đẹp thong tin đầy đủ', '2020-09-19 15:07:46'),
(6, 'Khách Hàng A123456', 'admin@gmail.com', '0976972771', 'khách hàng', 'web chay chưa hoàn thiện', '2020-09-20 16:00:33'),
(7, 'khách hàng B 123456', 'admin123@gmail.com', '0976973776', 'khách hàng', 'tốt ', '2020-09-20 16:03:03'),
(8, 'khách hàng B 123456', 'admin123@gmail.com', '0976973776', 'khách hàng', 'tốt ', '2020-09-20 16:05:13'),
(9, 'Hu?nh Ng?c Tu?n ', 'admin@gmail.com', '0976972771', 'khách hàng ', 'dffrdfyhgjhjkyutyuytghtg', '2021-11-20 15:41:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `request` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `name`, `email`, `phone`, `address`, `created`, `payment_method`, `status`, `request`) VALUES
(80, 23, 'Admin123', 'admin@gmail.com', 'Admin123', 'Sài Gòn Quận 12', '2021-12-05 10:22:05', 'Thanh Toán Khi Nhận Hàng', 0, 'Sản Phẩm Không Bẩn Bảo Quản Đóng Gói Cẩn Thận');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `price`, `quantity`, `id`, `total`) VALUES
(80, 19, 150000, 2, 59, 300000),
(80, 20, 180000, 1, 60, 180000),
(80, 17, 100000, 1, 61, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT 0,
  `sale_price` float DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `image`, `content`, `price`, `sale_price`, `created`, `status`) VALUES
(1, 1, 'Gấu Bông Cặp Đôi Cô Dâu Chú Rể', 'Gau Bong Cap Doi Co Dau Chu Re.jpg', 'Gấu Bông Cặp Đôi Cô Dâu Chú Rể Dễ Thương, Xinh Xắn. Bộ Đồ Cưới Của Cô Dâu Chú Rể Được May Với Đường Chỉ Chắc Chắn Và Trơn Tru, Giấu Kín Tạo Nên Sự Đáng Yêu Và Sang Trọng.\r\n \r\n❤ Sản Phẩm Không Thể Thiếu Cho Các Dịp Cưới Của Các Bạn Nam Và Nữ, Tân Lan Và Tân Nương Được Trang Trí Chỗ Ngồi Bên Trong Cho Xe Hơi Tạo Nên Vẻ Đẹp Tuyệt Vời Và Sang Chảnh Cho Đám Cưới Của Các Bạn.\r\n\r\n❤ Gấu Bông Được May Bằng Vải Bông Tuyết Mịn Nhồi Gòn Nhân Tạo Đầy Đặn, Không Mất Dáng, Không Xù, Không Rụng Lông Và An Toàn Cho Người Sử Dụng.\r\n\r\n❤ Là Món Quà Ý Nghĩa Cho Những Người Thân Yêu, Thích Hợp Trang Trí Phòng, Nhà Mọi Phong Cáchcho Các Dịp Đám Cưới.\r\n- Kích Thước: Cao 25 Cm.\r\n- Màu Sắc: Đỏ; Hồng.', 500000, 350000, '2021-12-03 17:22:40', 1),
(2, 1, 'Gấu Bông Chó Bull Có Chuông', 'Gau Bong Cho Bull Co Chuong.jpg\r\n', 'Con Gái Luôn Thích Những Thứ Nhìn Dễ Thương, Nên Họ Thường Ưa Ôm Các Con Thú Bông, Khi Vui Thì Ôm Gấu Bông Mà Hôn Chùn Chụt, Khi Khóc Cũng Ôm Gấu Bông Mà Chia Sẻ, Khi Ngủ Cũng Ôm Gấu Bông Đi Ngủ Cùng. Gấu Bông Thật Sự Như Một Người Bạn Lớn Đối Với Các Bạn Nữ. Vì Thế Đây Là Món Quà Luôn Nằm Trong Top Được Quan Tâm Và Ưa Thích Nhất Đó.\r\nMột Chú Gấu Bông Chó Bull Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay Qua để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.\r\n- Gấu Bông Chó Bull Có Chuông Là Một Trong Những Sản Phẩm Thú Nhồi Bông Được Ưa Chuộng Và Yêu Thích Bởi Hình Ảnh Chú Chó Bull Siêu Đáng Yêu, Siêu Cute.Sản Phẩm Được Làm Từ 100% Bông PP, Loại Bông Sạch Đảm Bảo An Toàn Sức Khỏe Và Thân Thiện Với Môi Trường. \r\nBề Mặt Vỏ Ngoài Được Làm Bằng Nhung Hàn Quốc Mang Lại Sự Mềm Mại Và Thích Thú.\r\n- Sử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\n- Vải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\n- Mẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng.\r\n- Kích Thước: Cao 30cm.', 300000, 250000, '2021-12-04 17:29:49', 1),
(3, 1, 'Gấu Bông Heo Tik tok ', 'Gau Bong Heo Tik tok Cosplay Ky Lan Unicorn.jpg', 'Một Chú Gấu Bông Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay Qua để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.Gấu Bông Heo Tik Tok Cosplay Kỳ Lân Unicron Cao 50cm Là Một Trong Những Sản Phẩm Thú Nhồi Bông Được Ưa Chuộng Và Yêu Thích Bởi Hình Ảnh Chú Gấu Siêu Đáng Yêu, Siêu Cute Và Siêu Hot.Sản Phẩm Được Làm Từ 100% Bông PP, Loại Bông Sạch Đảm Bảo An Toàn Sức Khỏe Và Thân Thiện Với Môi Trường.Bề Mặt Vỏ Ngoài Được Làm Bằng Nhung Hàn Quốc Mang Lại Sự Mềm Mại Và Thích Thú.\r\n* Ưu Điểm Của Sản Phẩm Thú Nhồi Bông\r\n- Sử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\n- Vải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\n- Mẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng. \r\n- Kích Thước: 40cm.', 300000, 150000, '2021-12-04 17:39:20', 1),
(4, 1, 'Gấu Bông Heo Trái Cây', 'Gau Bong Heo Trai Cay.jpg', 'Gấu Bông Heo Trái Cây Cao 20 Cm,Con Gái Luôn Thích Những Thứ Nhìn Dễ Thương, Nên Họ Thường Ưa Ôm Các Con Thú Bông, Khi Vui Thì Ôm Gấu Bông Mà Hôn Chùn Chụt, Khi Khóc Cũng Ôm Gấu Bông Mà Chia Sẻ, Khi Ngủ Cũng Ôm Gấu Bông Đi Ngủ Cùng. Gấu Bông Thật Sự Như Một Người Bạn Lớn Đối Với Các Bạn Nữ. Vì Thế Đây Là Món Quà Luôn Nằm Trong Top Được Quan Tâm Và Ưa Thích Nhất Đó.Một Chú Gấu Bông Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay Qua để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.Gấu Bông Heo Trái Cây Là Một Trong Những Sản Phẩm Thú Nhồi Bông Được Ưa Chuộng Và Yêu Thích Bởi Hình Ảnh Chú Heo Với Bộ Trang Phục Là Hình Ảnh Trái Cây Siêu Đáng Yêu, Siêu Cute Và Siêu Hot.\r\nSản Phẩm Được Làm Từ 100% Bông PP, Loại Bông Sạch Đảm Bảo An Toàn Sức Khỏe Và Thân Thiện Với Môi Trường.Bề Mặt Vỏ Ngoài Được Làm Bằng Nhung Hàn Quốc Mang Lại Sự Mềm Mại Và Thích Thú.\r\n* Ưu Điểm Của Sản Phẩm Thú Nhồi Bông\r\n- Sử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\n- Vải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\n- Mẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng.\r\n- Cao 20cm.', 500000, 300000, '2021-12-04 17:49:39', 1),
(5, 1, 'Gấu Bông Khỉ Con YOYO', 'Gau Bong Khi Con YOYO.jpg', 'Thú Nhồi Bông Khỉ Con YOYO,Con Gái Luôn Thích Những Thứ Nhìn Dễ Thương, Nên Họ Thường Ưa Ôm Các Con Thú Bông, Khi Vui Thì Ôm Gấu Bông Mà Hôn Chùn Chụt, Khi Khóc Cũng Ôm Gấu Bông Mà Chia Sẻ, Khi Ngủ Cũng Ôm Gấu Bông Đi Ngủ Cùng. Gấu Bông Thật Sự Như Một Người Bạn Lớn Đối Với Các Bạn Nữ. Vì Thế Đây Là Món Quà Luôn Nằm Trong Top Được Quan Tâm Và Ưa Thích Nhất Đó.Một Chú Gấu Bông Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay Qua để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.\r\n* Ưu Điểm Của Sản Phẩm Thú Nhồi Bông:\r\nSử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\nVải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\nMẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng.\r\nCHIỀU CAO: 17 CM', 500000, 450000, '2021-12-04 17:49:39', 1),
(6, 1, 'Gấu Bông Lông Xù Mặc Áo Len', 'Gau Bong Long Xu Mac Ao Len.jpg', 'Gấu Bông Lông Xù Mặc Áo Len Con Gái Luôn Thích Những Thứ Nhìn Dễ Thương, Nên Họ Thường Ưa Ôm Các Con Thú Bông, Khi Vui Thì Ôm Gấu Bông Mà Hôn Chùn Chụt, Khi Khóc Cũng Ôm Gấu Bông Mà Chia Sẻ, Khi Ngủ Cũng Ôm Gấu Bông Đi Ngủ Cùng. Gấu Bông Thật Sự Như Một Người Bạn Lớn Đối Với Các Bạn Nữ. Vì Thế Đây Là Món Quà Luôn Nằm Trong Top Được Quan Tâm Và Ưa Thích Nhất Đó.Một Chú Gấu Bông Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay qua để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.\r\nƯu Điểm Của Sản Phẩm Thú Nhồi Bông\r\nSử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\n- Vải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\n- Mẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng.\r\n- NHIỀU MÀU, NHIỀU KÍCH CỠ   \r\n- CHIỀU CAO: 38 CM', 600000, 550000, '2021-12-04 17:58:05', 1),
(7, 1, 'Gấu Bông Mèo Hoàng Thượng', 'Gau Bong Meo Hoang Thuong.jpg', 'Gấu Bông Mèo Hoàng Thượng Cao Mèo Bông Hoàng Thượng Được May Từ Chất Liệu Miniso Mềm Mịn, Bên Trong Được Nhồi Bông Bi Tinh Khiết 100% Đảm Bảo An Toàn Cho Người Sử Dụng, Đặc Biệt Là Em Bé. Khuôn Mặt Lạnh Lùng Cùng Chất Hài Vô Đối Tạo Nên Nét Đặc Trưng Của Chú Mèo Không Thể Nào Lầm Tưởng Được. Là Quà Tặng Chắc Hẳn Bạn Sẽ Ghi Được Điểm Tuyệt Đối Với Người Nhận.Màu Sắc Chủ Đạo Là Màu Trắng Và Đen Được Thiết Kế Như Chú Mèo Thật , Khuôn Mặt Đầy Vẻ Lạnh Lùng Nhưng Ngược Lại Rất Đáng Yêu Và Hóm Hỉnh .Trên Đầu Được Đội Chiếc Vương Niệm Màu Đỏ Nổi Bật, Cá Tính Như Một Hoàng Thượng Giá Đáo.Chú Mèo Bông Hoàng Thượng Được Thiết Kế Và May Dưới Chất Liệu Vải Miniso Mềm Mịn Được Nhập Khẩu, Chất Liệu Đang Được Yêu Thích Nhất Hiện Nay. Một Trong Những Chất Liệu Cao Cấp Khi Sản Xuất Thú Nhồi Bông Hiện Nay. Người Sử Dụng Cảm Nhận Được Sự Mềm Mại Êm Ái Khi Sử Dụng. Đặc Biệt Hơn Khi Bạn Sử Dụng Thời Gian Dài Sẽ Không Bị Ảnh Hưởng Đến Chất Liệu Vải Như Bị Xù Lông , Rụng Lông .... ', 700000, 500000, '2021-12-04 17:58:05', 1),
(8, 1, 'Gấu Bông Ngựa Pony Oenpe ', 'Gau Bong Ngua Pony Oenpe De Thuuong.jpg', 'Gấu Bông Ngựa Pony Oenpe Dễ Thương 28cm Gấu Bông Ngựa Pony Oenpe Dễ Thương Được Thiết Kế Với Kiểu Dáng Độc Đáo Với Thân Hình Đáng Yêu Cùng Đôi Mắt Vô Cùng Dễ Thương, Tinh Nghịch. Sản Phẩm Có Nhiều Màu Sắc Mang Lại Nét Tinh Tế, Trong Sáng Và Cũng Rất Đáng Yêu Dễ Thương, Rất Phù Hợp Với Các Bạn Nữ.Hình Ảnh Của Chú ngựa Pony Oenpe Được Nổi Bật Hơn Với Đôi Mắt To Tròn Trên Khuôn Mặt Của Chú Sẽ Làm Cho Bạn Yêu Thích, Chỉ Muốn Chơi Đùa Cùng Chú Cả Ngày.Sản Phẩm Được Làm Từ Chất Liệu Bông Tốt, Loại Bông Sạch Đảm Bảo An Toàn Sức Khỏe Và Thân Thiện Với Môi Trường.Gấu Bông Ngựa Pony Oenpe Thích Hợp Làm Quà Tặng Sinh Nhật Quà Cho Bạn Gái, Cho Trẻ Nhỏ… Với Sản Phẩm Này Tại Winwinshop88 Bạn Sẽ Không Phải Gặp Khó Khăn Nhiều Khi Lựa Chọn Quà Dành Tặng Cho Bạn Bè, Hay Những Người Thân Yêu Nữa. Sản Phẩm Cũng Dùng Để Trang Trí Cho Căn Phòng Của Bạn Trở Nên Sinh Động Và Đáng Yêu Hơn.Gấu Bông Ngựa Pony Oenpe Đáng Yêu Chắc Chắn Sẽ Làm Cho Các Bạn Gái Vô Cùng Thích Thú. Nếu Bạn Đang Phân Vân Không Biết Lựa Chọn Món Quà Gì Để Tặng Cho Bạn Gái Hay Em Gái Thân Yêu Thì Gấu Bông Ngựa Pony Oenpe Là Một Gợi Ý Rất Thực Tế Và Lý Tưởng.Màu Sắc: Nhiều Màu ,Kích Thước: Cao 28cm.', 300000, 150000, '2021-12-04 18:02:26', 1),
(9, 1, 'Gấu Bông Pikachu', 'Gau Bong Pikachu.jpg', 'Gấu Bông Pikachu Cao 25cm Pikachu Là Nhân Vật Chính Và Linh Vật Chính Thức Của Loạt Anime Pokémon. Nhân Vật Này Rất Dễ Nhận Ra Bởi Thân Hình Màu Vàng Với Đôi Tai Dài Và Những Sọc Đen Sau Lưng Cạnh Cái Đuôi Hình Tia Chớp. Khuôn Mặt Pikachu Lúc Nào Cũng Rạng Rỡ Với Nụ Cười Tươi Và Đôi Mắt To Tròn Trông Cực Kỳ Đáng Yêu.Được Thiết Kế Với Lớp Lông Nhung Cao Cấp Mềm Mịn, Bông Nhồi Là Gòn Trắng 100% Độ Đàn Hồi Cao, Không Rụng Lông Và Nhồi Hoàn Toàn Bằng Gòn Sạch Đảm Bảo An Toàn Cho Sức Khỏe, Nên Bạn Có Thể Thoải Mái Giặt Bằng Tay Hay Cho Bé Pikachu Vào Máy Giặt Nhé.Gấu Bông Pikachu Với Hình Dáng Dễ Thương Và Khuôn Mặt Siêu Cute Chắc Chắn Sẽ Khiến Trẻ Nhỏ Yêu Thích. Hãy Dành Tặng Cho Các Bé Chú Gấu Bông Pikachu Cực Cute Này Nhé Kích Thước: Cao 25cm.', 600000, 300000, '2021-12-04 18:02:26', 1),
(10, 1, 'Gấu Bông Pokemon Pippi', 'Gau Bong Pokemon Pippi.jpg', 'Gấu Bông Pokemon Pippi 15cm Với Tông Màu Hồng Dịu Dàng Thì Gấu Pippi Đã Thu Hút Sự Chú Ý Của Người Nhìn Cùng Vẻ Mặt Tươi Vui, Hai Má Ửng Hồng Khiến Người Ta Không Thể Rời Mắt.Pippi Mập Với Thân Hình Mập Mạp, Tham Ăn Và Nhất Là Hay Bày Trò Tinh Quái Nhưng Lại Được Lòng Rất Nhiều Bạn Trẻ.Đằng Sau Là Đôi Cánh Trông Rất Giống Cánh Bướm Và Cái Đuôi Dài Uốn Cong Rất Ngộ Nghĩnh, Đáng Yêu.Được Thiết Kế Với Lớp Lông Nhung Cao Cấp Mềm Mịn, Bông Nhồi Là Gòn Trắng 100% Độ Đàn Hồi Cao, Không Rụng Lông Và Nhồi Hoàn Toàn Bằng Gòn Sạch Đảm Bảo An Toàn Cho Sức Khỏe, Nên Bạn Có Thể Thoải Mái Giặt Bằng Tay Hay Cho Bé Gấu Bông Pokemon Pippi Vào Máy Giặt Nhé.Gấu Bông Pokemon Pippi Sẽ Là Món Quà Làm Thân Tuyệt Vời Với Trẻ Nhỏ, Chúng Sẽ Là Người Bạn Thân Thiết Có Thể Chơi Cùng Bé, Ngủ Cùng Bé, Tâm Sự Cùng Bé Và Cùng Bé Phát Triển Những Kỹ Năng Trong Cuộc Sống Tốt Hơn.\r\nChiều Cao: 15cm.', 700000, 350000, '2021-12-04 18:05:19', 1),
(11, 1, 'Gấu Bông Pokemon Rùa Kini Squitrle', 'Gau Bong Pokemon Rua Kini Squitrle.jpg', 'Gấu Bông Pokemon Rùa Kini Squitrle Gấu Bông Pokemon Rùa Kini Squitrle 30cm TNB235 Được Thiết Kế Với Lớp Lông Nhung Cao Cấp Mềm Mịn, Bông Nhồi Là Gòn Trắng 100% Độ Đàn Hồi Cao, Không Rụng Lông Và Nhồi Hoàn Toàn Bằng Gòn Sạch Đảm Bảo An Toàn Cho Sức Khỏe.Gấu Bông Pokemon Rùa Kini Squitrle 30cm TNB235 Không Mất Dáng, Không Xù, Không Rụng Lông Và An Toàn Cho Người Sử Dụng.Gấu Bông Pokemon Rùa Kini Squitrle 30cm TNB235 Sẽ Là Món Quà Làm Thân Tuyệt Vời Với Trẻ Nhỏ, Chúng Sẽ Là Người Bạn Thân Thiết Có Thể Chơi Cùng Bé, Ngủ Cùng Bé, Tâm Sự Cùng Bé Và Cùng Bé Phát Triển Những Kỹ Năng Trong Cuộc Sống Tốt Hơn.\r\nKích Thước: 30cm.', 300000, 150000, '2021-12-04 18:10:30', 1),
(12, 1, 'Gấu Bông Tốt Nghiệp', 'Gau Bong Tot Nghiep.jpg', 'Gấu Bông Tốt Nghiệp 25cm Gấu Bông Tốt Nghiệp TNB214 Là Món Quà Tặng Tốt Nghiệp Đặc Biệt Dành Cho Những Ai Sắp Tốt Nghiệp Tiến Sĩ, Thạc Sĩ, Đại Học, Cao Đẳng, Trung Cấp...Dành Tặng Cho Học Sinh, Người Thân Của Mình Một Chú Gấu Cử Nhân Trong Dịp Lễ Tốt Nghiệp Còn Là Dành Tặng Cho Họ Một Thứ Để Khơi Nguồn Kỷ Niệm. Chắc Hẳn, Nhìn Thấy Nó, Những Ký Ức Nơi Học Đường Đầy Sôi Động Hay Phút Giây Nhận Bằng Khó Quên, Những Kỷ Niệm Vui Buồn Bạn Và Tôi Hay Tình Cảm Mến Yêu Đầy Tự Hào Về Ngôi Trường Mình Đã Học Sẽ Hiện Về Đầy Lưu Luyến.Khoảnh Khắc Tốt Nghiệp Là Khi Bạn Đứng Lên Nhận Bằng, Đó Hẳn Là Một Thời Khắc Thiêng Liêng Và Xúc Động Bởi Nó Đánh Dấu Một Mốc, Một Hướng Rẽ Mới Trong Cụôc Sống Của Mỗi Người. Bạn Rất Muốn Chúc Phúc Cho Người Bạn Của Mình, Chính Vì Vậy Đây Là Món Quà Không Thể Thiếu Trong Những Ngày Trọng Đại Như Thế Này.Những Chú Gấu Con Với Bộ Lông Nâu Nhạt Dễ Thương, Nét Mặt Hân Hoan Khoác Trên Mình Bộ Áo Cử Nhân Đặc Trưng, Chiếc Mũ Tốt Nghiệp Trên Đầu Và Tay Cầm Tấm Bằng Sẽ Là Món Quà Độc Đáo, Rất Ý Nghĩa, Hơn Nữa Giá Cả Lại Rất Sinh Viên, Đảm Bảo Sẽ Mang Tới Sự Bất Ngờ Cũng Như Niềm Vui Cho Người Bạn Muốn Tặng Hay Là Một Món Quà Kỷ Niệm Cho Tập Thể Lớp Thân Yêu.Con Gái Luôn Thích Những Thứ Nhìn Dễ Thương, Nên Họ Thường Ưa Ôm Các Con Thú Bông, Khi Vui Thì Ôm Gấu Bông Mà Hôn Chùn Chụt, Khi Khóc Cũng Ôm Gấu Bông Mà Chia Sẻ, Khi Ngủ Cũng Ôm Gấu Bông Đi Ngủ Cùng. Gấu Bông Thật Sự Như Một Người Bạn Lớn Đối Với Các Bạn Nữ. Vì Thế Đây Là Món Quà Luôn Nằm Trong Top Được Quan Tâm Và Ưa Thích Nhất Đó.Một Chú Gấu Bông Hứa Hẹn Sẽ Là Một Món Quà Đáng Iu Và Lãng Mạn Dành Tặng Cho Nhau Trong Những Sự Kiện Quan Trọng Đó, Nếu Bạn Thích Gấu Bông Và Muốn Tìm Kiếm Một Sản Phẩm Vừa Đẹp Từ Bên Ngoài Cho Đến Tốt Tận Bên Trong Thì Sao Không Ghé Ngay Qua Winwinshop88 Để Lựa Chọn Ngay Cho Mình Chú Gấu Ưng Ý Nhất Nào.\r\nƯu Điểm Của Sản Phẩm Thú Nhồi Bông:\r\n- Sử Dụng Gòn Tơ Nhập Khẩu Nên Sản Phẩm Sẽ Luôn Mềm Mại Mà Không Bị Xẹp.\r\n- Vải May Gấu Ít Bám Bụi, Màu Sắc Tươi Sáng, Êm Ái.\r\n- Mẫu Mã Đa Dạng, Phù Hợp Với Nhiều Đối Tượng Khách Hàng.\r\n', 500000, 400000, '2021-12-04 18:10:30', 1),
(13, 2, 'Móc Khóa Gấu Bông Hamster', 'Moc Khoa Gau Bong Hamster.jpg', 'Móc Khóa Gấu Bông Hamster Móc Khóa Gấu Bông Hamster Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.Màu: XÁM, VÀNG, HỒNG NHẠT, XANH NƯỚC BIỂN\r\nChiều Cao: 9 Cm.', 100000, 500000, '2021-12-04 19:59:03', 1),
(14, 2, 'Móc Khóa Gấu Bông Heo', 'Moc Khoa Gau Bong Heo Peppa Pig.jpg', 'Móc Khóa Gấu Bông Heo Peppa Pig Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.\r\nMàu: ĐỎ, CAM, XANH DƯƠNG, XANH NGỌC\r\nChiều Cao: 13 Cm.', 200000, 150000, '2021-12-04 20:04:21', 1),
(15, 2, 'Móc Khóa Gấu Bông Heo Trái Cây', 'Moc Khoa Gau Bong Heo Trai Cay.jpg', 'Móc Khóa Gấu Bông Heo Trái Cây Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ.Móc Khoá Đa Năng Sử Dụng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.  - Màu: Đỏ, Cam, Vàng, Hồng, Tím, Xanh Lá\r\nChiều Dài: 10.5 Cm', 300000, 200000, '2021-12-04 20:04:21', 1),
(16, 2, 'Móc Khóa Gấu Bông Mèo Neko Atsum', 'Moc Khoa Gau Bong Meo Neko Atsum.jpg', 'Móc Khóa Gấu Bông Mèo Neko Atsume Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.  - Màu: Xám Trắng\r\nChiều Cao: 8 Cm.', 100000, 50000, '2021-12-04 20:04:54', 1),
(17, 2, 'Móc Khóa Gấu Bông Mèo Thần Tài', 'Moc Khoa Gau Bong Meo Than Tai.jpg', ' Móc Khóa Gấu Bông Mèo Thần Tài Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.\r\nMàu: 4 Mẫu Như Trong Hình\r\nKích Thước (Cao X Dài): 6 X 9 (Cm).', 200000, 100000, '2021-12-04 20:09:59', 1),
(18, 2, 'Móc Khóa Gấu Bông Mèo Totoro', 'Moc Khoa Gau Bong Meo Totoro.jpg', 'Móc Khóa Gấu Bông Mèo Totoro Xinh Xắn Và Đáng Yêu Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...Chất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.Những Ai Là Fan Hâm Mộ Chú Mèo Totoro Này Thì Hãy Nhanh Tay Sở Hữu Móc Khóa Gấu Bông Này Nhé. Nhanh Tay Lên Số Lượng Có Hạn...\r\nMàu: Nhiều Màu\r\nChiều Cao: 9 Cm.', 200000, 1500000, '2021-12-04 20:09:59', 1),
(19, 2, 'Móc Khóa Gấu Bông Sóc Dễ Thương', 'Moc Khoa Gau Bong Soc De Thuuong.jpg', 'Móc Khóa Gấu Bông Sóc Dễ Thương Là Sản Phẩm Móc Khóa Xinh Xắn Và Dễ Thương Được Làm Từ Chất Liệu Vải Bông Mịn, Móc Khóa Tròn Bằng Inox Không Gỉ. Dùng Làm Móc Khóa Xe, Móc Trang Trí Trên Túi Xách, Balo, Cặp Táp,...\r\nChất Liệu An Toàn: Bông Xoắn 3 Chiều Không Bị Xẹp, Lông Mềm Mịn, Không Rụng Lông Và An Toàn Cho Người Dùng.\r\nMàu: Nhiều Màu Sắc.\r\nChiều Cao: 10cm.', 200000, 150000, '2021-12-04 20:12:32', 1),
(20, 2, 'Móc Khóa Heo Bông Cô Dâu Chú Rể', 'Moc Khoa Gau Bong Co Dau Chu.jpg', 'Móc Khóa Heo Bông Cô Dâu Chú Rể Heo Bông Cặp Đôi Cô Dâu Chú Rể Dễ Thương, Xinh Xắn. Bộ Phụ Kiện Cưới Của Cô Dâu Chú Rể Được May Với Đường Chỉ Chắc Chắn Và Tinh Tế Tạo Nên Sự Đáng Yêu Và Sang Trọng.Sản Phẩm Không Thể Thiếu Cho Các Các Bạn Nam Và Nữ Đang Yêu Nhau Hoặc Tân Lan Và Tân Nương.Heo Bông Được May Bằng Vải Bông Tuyết Mịn Nhồi Gòn Nhân Tạo Đầy Đặn, Không Mất Dáng, Không Xù, Không Rụng Lông Và An Toàn Cho Người Sử Dụng.Đây Sẽ Là Món Quà Ý Nghĩa Cho Các Cặp Đôi, Những Bạn Đang Yêu Nhau. \r\nKích Thước: Cao 8 Cm.', 300000, 180000, '2021-12-04 20:12:32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_img`
--

CREATE TABLE `pro_img` (
  `id` int(11) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `pro_img`
--

INSERT INTO `pro_img` (`id`, `link`, `pro_id`) VALUES
(1, 'Gau Bong Cap Doi Co Dau Chu Re.jpg', 1),
(2, 'Gau Bong Cho Bull Co Chuong.jpg', 2),
(3, 'Gau Bong Heo Tik tok Cosplay Ky Lan Unicorn.jpg', 3),
(4, 'Gau Bong Heo Trai Cay.jpg', 4),
(5, 'Gau Bong Khi Con YOYO.jpg', 5),
(6, 'Gau Bong Long Xu Mac Ao Len.jpg', 6),
(7, 'Gau Bong Meo Hoang Thuong.jpg', 7),
(8, 'Gau Bong Ngua Pony Oenpe De Thuuong.jpg', 8),
(9, 'Gau Bong Pikachu.jpg', 9),
(10, 'Gau Bong Pokemon Pippi.jpg', 10),
(11, 'Gau Bong Pokemon Rua Kini Squitrle.jpg', 11),
(12, 'Gau Bong Tot Nghiep.jpg', 12),
(13, 'Moc Khoa Gau Bong Hamster.jpg', 13),
(14, 'Moc Khoa Gau Bong Heo Peppa Pig.jpg', 14),
(15, 'Moc Khoa Gau Bong Heo Trai Cay.jpg', 15),
(16, 'Moc Khoa Gau Bong Meo Neko Atsum.jpg', 16),
(17, 'Moc Khoa Gau Bong Meo Than Tai.jpg', 17),
(18, 'Moc Khoa Gau Bong Meo Totoro.jpg', 18),
(19, 'Moc Khoa Gau Bong Soc De Thuuong.jpg', 19),
(20, 'Moc Khoa Gau Bong Co Dau Chu.jpg', 20);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_customer` (`customer_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order_detail_orders` (`order_id`),
  ADD KEY `FK_order_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_category` (`category_id`);

--
-- Chỉ mục cho bảng `pro_img`
--
ALTER TABLE `pro_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pro_img_product` (`pro_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `pro_img`
--
ALTER TABLE `pro_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_order_detail_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_order_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `pro_img`
--
ALTER TABLE `pro_img`
  ADD CONSTRAINT `FK_pro_img_product` FOREIGN KEY (`pro_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
