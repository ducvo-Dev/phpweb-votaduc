-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 20, 2020 lúc 03:24 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `votaduc_ltw`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_category`
--

CREATE TABLE `vtd_category` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `parentid` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `orders` int(11) NOT NULL COMMENT 'Thứ tự',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_category`
--

INSERT INTO `vtd_category` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Hoa Quả Tươi', 'hoa-qua-tuoi', 0, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(2, 'Hoa Quả Xấy', 'hoa-qua-xay', 0, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(3, 'Rau', 'rau', 0, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(4, 'Củ', 'cu', 0, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(5, 'Hoa Quả Nhập Khẩu', 'nhap-khau', 0, 5, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(6, 'Các Loại Hạt', 'cac-loai-hat', 0, 6, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:41:28', 1, '2020-08-19 14:41:28', 1, 1),
(7, 'Bơ', 'qua-bo', 1, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-08-20 00:43:33', 1, 1),
(8, 'Cam', 'qua-cam', 1, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(9, 'Chuối', 'qua-chuoi', 1, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(10, 'Xoài', 'qua-xoai', 1, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(11, 'Nho', 'qua-nho', 1, 5, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(12, 'Táo', 'qua-tao', 1, 6, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(13, 'Dưa', 'qua-dua', 1, 7, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(14, 'Vãi xấy', 'vai-xay', 2, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(15, 'Táo xấy', 'tao-xay', 2, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(16, 'Chuối xấy', 'chuoi-xay', 2, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(17, 'Cam xấy', 'cam-xay', 2, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(18, 'Xoài xấy', 'xoai-xay', 2, 5, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(22, 'Rau thủy canh', 'thuy-canh', 3, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(23, 'Rau ăn thân lá', 'than-la', 3, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(24, 'Rau ăn thân củ', 'than-cu', 3, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(25, 'Rau ăn hoa quả', 'hoa-qua', 3, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(26, 'Củ khoai', 'cu-khoai', 4, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 13:36:56', 1, '2020-08-19 13:36:56', 1, 1),
(27, 'Củ cà rốt', 'ca-rot', 4, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 13:37:03', 1, '2020-08-19 13:37:03', 1, 1),
(28, 'Củ cải', 'cu-cai', 4, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 13:37:08', 1, '2020-08-19 13:37:08', 1, 1),
(29, 'Củ su hào', 'su-hao', 4, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 13:37:12', 1, '2020-08-19 13:37:12', 1, 1),
(33, 'Hoa quả mỹ', 'my', 5, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(34, 'Hoa quả nam phi', 'nam-phi', 5, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(35, 'Hoa quả trung quốc', 'trung-quoc', 5, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(36, 'Hoa quả thái lan', 'thai-lan', 5, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:06:19', 1, '2020-07-03 09:06:19', 1, 1),
(37, 'Hạt cafe', 'ca-fe', 6, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:39:54', 1, '2020-08-19 14:39:54', 1, 1),
(38, 'Hạt điều', 'hat-dieu', 6, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:39:59', 1, '2020-08-19 14:39:59', 1, 1),
(39, 'Hạt cacao', 'ca-cao', 6, 3, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:40:05', 1, '2020-08-19 14:40:05', 1, 1),
(40, 'Hạt tiêu', 'hat-tieu', 6, 4, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:40:12', 1, '2020-08-19 14:40:12', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_contact`
--

CREATE TABLE `vtd_contact` (
  `id` int(11) NOT NULL COMMENT 'Mã liên hệ',
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề',
  `detail` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `replaydetail` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày trả lời',
  `updated_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người trả lời',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_contact`
--

INSERT INTO `vtd_contact` (`id`, `fullname`, `email`, `phone`, `title`, `detail`, `replaydetail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Nguyễn Văn Toàn', 'nguyenvantoan@gmail.com', '0987654321', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(2, 'Lê Thái Sơn', 'lethaison@gmail.com', '0987667986', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(3, 'Trần Ngọc Ái', 'tranngocai@gmail.com', '0987654379', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1),
(4, 'Mai Tiến Sơn', 'maitienson@gmail.com', '0987654367', 'Hỏi về liên kết mua sĩ', 'Hỏi về liên kết mua sĩ', NULL, '2020-06-30 22:31:49', '2020-06-30 22:31:49', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_menu`
--

CREATE TABLE `vtd_menu` (
  `id` int(11) NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kiểu Menu',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã trong bảng',
  `orders` int(11) NOT NULL DEFAULT 0 COMMENT 'Thứ tự',
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vị trí',
  `parentid` int(11) NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày Tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_menu`
--

INSERT INTO `vtd_menu` (`id`, `name`, `link`, `type`, `tableid`, `orders`, `position`, `parentid`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'index.php?option=post&cat=tin-tuc', 'topic', 1, 0, 'mainmenu', 0, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(2, 'Dịch vụ', 'index.php?option=topic&cat=dich-vu', 'topic', 2, 0, 'mainmenu', 0, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(3, 'Hoa Quả Tươi', 'index.php?option=product&cat=hoa-qua-tuoi', 'category', 1, 0, 'mainmenu', 10, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(4, 'Hoa Quả Xấy', 'index.php?option=product&cat=hoa-qua-xay', 'category', 2, 0, 'mainmenu', 10, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(5, 'Rau', 'index.php?option=product&cat=rau', 'category', 3, 0, 'mainmenu', 10, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(6, 'Củ', 'index.php?option=product&cat=cu', 'category', 4, 0, 'mainmenu', 10, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(7, 'Hoa Quả Nhập Khẩu', 'index.php?option=product&cat=nhap-khau', 'category', 5, 0, 'mainmenu', 10, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(8, 'Trang chủ', 'http://localhost:81/votaduc2/', 'page', 1, 0, 'mainmenu', 0, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(9, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 2, 0, 'mainmenu', 0, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(10, 'Sản phẩm', 'index.php?option=product', 'page', 3, 0, 'mainmenu', 0, '2020-06-30 15:36:22', 1, '2020-06-30 15:36:22', 1, 1),
(11, 'Các Loại Hạt', 'index.php?option=product&cat=cac-loai-hat', 'category', 6, 0, 'mainmenu', 10, '2020-08-19 14:37:59', 1, '2020-08-19 14:37:59', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_order`
--

CREATE TABLE `vtd_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Code đơn hàng',
  `userid` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `createdate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `exportdate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày xuất',
  `deliveryaddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email ngươig nhận',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày cập nhật',
  `updated_by` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_order`
--

INSERT INTO `vtd_order` (`id`, `code`, `userid`, `createdate`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `updated_at`, `updated_by`, `status`) VALUES
(1, '20200107121212', 1, '2020-06-30 17:00:00', '2020-07-03 17:00:00', 'HCM', 'Hồ Đình Lợi', '0987654321', 'loi@gmail.com', NULL, 1, 1),
(2, '20200107121216', 1, '2020-06-30 17:00:00', '2020-07-03 17:00:00', 'Bình Dương', 'Hoàng Mai Toàn', '0987654321', 'toan@gmail.com', NULL, 1, 1),
(5, '20200817075043', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', 'daklak', 'Khách hàng', '0987654367', 'khachhang@gmail.com', '2020-08-17 00:50:43', 2, 2),
(20, '20200817124155', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', 'quận9', 'taduc', '0303030303', 'taduc312@gmail.com', '2020-08-17 05:41:55', 2, 2),
(21, '20200817124203', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', 'quận9', 'taduc', '0303030303', 'taduc312@gmail.com', '2020-08-17 05:42:03', 2, 2),
(22, '20200817124325', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', '4', '1', '2', '3', '2020-08-17 05:43:25', 2, 2),
(23, '20200817124921', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', '', 'Khách hàng', '0987654367', 'khachhang@gmail.com', '2020-08-17 05:49:21', 2, 2),
(24, '20200817131014', 2, '2020-08-16 17:00:00', '2020-08-16 17:00:00', '', 'Khách hàng', '0987654367', 'khachhang@gmail.com', '2020-08-17 06:10:14', 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_orderdetail`
--

CREATE TABLE `vtd_orderdetail` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `orderid` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `productid` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `quantity` int(10) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_orderdetail`
--

INSERT INTO `vtd_orderdetail` (`id`, `orderid`, `productid`, `price`, `quantity`, `amount`) VALUES
(10, 20, 91, 259000.00, 2, 518000.00),
(11, 20, 317, 259000.00, 3, 777000.00),
(12, 21, 91, 259000.00, 2, 518000.00),
(13, 21, 317, 259000.00, 3, 777000.00),
(14, 22, 92, 259000.00, 3, 0.00),
(15, 23, 422, 259000.00, 1, 259000.00),
(16, 23, 262, 259000.00, 3, 777000.00),
(17, 24, 92, 259000.00, 1, 259000.00),
(18, 24, 91, 259000.00, 1, 259000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_post`
--

CREATE TABLE `vtd_post` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topid` int(10) UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết bài viết',
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_post`
--

INSERT INTO `vtd_post` (`id`, `topid`, `title`, `slug`, `detail`, `img`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(0, 0, 'Giới thiệu', 'gioi-thieu', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'page', 'Từ khóa SEO', 'Mô tả SEO', '2020-06-30 22:20:53', 1, '2020-06-30 22:20:53', 1, 1),
(2, NULL, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'page', 'Từ khóa SEO', 'Mô tả SEO', '2020-06-30 22:20:53', 1, '2020-06-30 22:20:53', 1, 1),
(3, NULL, 'Chính sách đổi trả', 'chinh-sach-doi-tra', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'page', 'Từ khóa SEO', 'Mô tả SEO', '2020-06-30 22:20:53', 1, '2020-06-30 22:20:53', 1, 1),
(4, NULL, 'Cách thanh toán', 'cach-thanh-toan', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'page', 'Từ khóa SEO', 'Mô tả SEO', '2020-06-30 22:20:53', 1, '2020-06-30 22:20:53', 1, 1),
(7, 1, 'Tin tức 3', 'tin-tuc-3', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-08-20 00:38:51', 1, 2),
(8, 1, 'Tin tức 4', 'tin-tuc-4', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-08-20 00:31:43', 1, 2),
(9, 1, 'Tin tức 5', 'tin-tuc-5', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(10, 1, 'Tin tức 6', 'tin-tuc-6', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(11, 1, 'Tin tức 7', 'tin-tuc-7', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(12, 1, 'Tin tức 8', 'tin-tuc-8', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(13, 1, 'Tin tức 9', 'tin-tuc-9', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(16, 1, 'Tin tức 12', 'tin-tuc-12', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(17, 1, 'Tin tức 13', 'tin-tuc-13', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(18, 1, 'Tin tức 14', 'tin-tuc-14', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(19, 1, 'Tin tức 15', 'tin-tuc-15', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(20, 1, 'Tin tức 16', 'tin-tuc-16', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(21, 2, 'Dịch vụ-7', 'dich-vu-7', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(22, 2, 'Dịch vụ-8', 'dich-vu-8', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1),
(23, 2, 'Dịch vụ-9', 'dich-vu-9', 'Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết Chi tiết bài viết ', 'tin-tuc.jpg', 'post', 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:37', 1, '2020-07-03 09:12:37', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_product`
--

CREATE TABLE `vtd_product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `catid` int(10) UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tên sản phẩm',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `number` smallint(5) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_product`
--

INSERT INTO `vtd_product` (`id`, `catid`, `name`, `slug`, `img`, `detail`, `number`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(9, 1, 'Thời trang nam-9', 'ca-fe-9', 'cf9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:52', 1, '2020-08-19 17:46:16', 1, 1),
(10, 1, 'Thời trang nam-10', 'ca-fe-10', 'cf10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:12:52', 1, '2020-07-03 09:12:52', 1, 1),
(17, 2, 'Thời trang nữ-2', 'thoi-trang-nu-2', 'thoi-trang-nu-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(18, 2, 'Thời trang nữ-3', 'thoi-trang-nu-3', 'thoi-trang-nu-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(19, 2, 'Thời trang nữ-4', 'thoi-trang-nu-4', 'thoi-trang-nu-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(20, 2, 'Thời trang nữ-5', 'thoi-trang-nu-5', 'thoi-trang-nu-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(21, 2, 'Thời trang nữ-6', 'thoi-trang-nu-6', 'thoi-trang-nu-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(22, 2, 'Thời trang nữ-7', 'thoi-trang-nu-7', 'thoi-trang-nu-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(23, 2, 'Thời trang nữ-8', 'thoi-trang-nu-8', 'thoi-trang-nu-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(24, 2, 'Thời trang nữ-9', 'thoi-trang-nu-9', 'thoi-trang-nu-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(25, 2, 'Thời trang nữ-10', 'thoi-trang-nu-10', 'thoi-trang-nu-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(31, 3, 'Thời trang thể thao-1', 'thoi-trang-the-thao-1', 'thoi-trang-the-thao-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(32, 3, 'Thời trang thể thao-2', 'thoi-trang-the-thao-2', 'thoi-trang-the-thao-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(33, 3, 'Thời trang thể thao-3', 'thoi-trang-the-thao-3', 'thoi-trang-the-thao-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(34, 3, 'Thời trang thể thao-4', 'thoi-trang-the-thao-4', 'thoi-trang-the-thao-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(35, 3, 'Thời trang thể thao-5', 'thoi-trang-the-thao-5', 'thoi-trang-the-thao-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(36, 3, 'Thời trang thể thao-6', 'thoi-trang-the-thao-6', 'thoi-trang-the-thao-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(37, 3, 'Thời trang thể thao-7', 'thoi-trang-the-thao-7', 'thoi-trang-the-thao-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(38, 3, 'Thời trang thể thao-8', 'thoi-trang-the-thao-8', 'thoi-trang-the-thao-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(39, 3, 'Thời trang thể thao-9', 'thoi-trang-the-thao-9', 'thoi-trang-the-thao-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(40, 3, 'Thời trang thể thao-10', 'thoi-trang-the-thao-10', 'thoi-trang-the-thao-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(46, 4, 'Thời trang bé trai-1', 'thoi-trang-be-trai-1', 'thoi-trang-be-trai-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(47, 4, 'Thời trang bé trai-2', 'thoi-trang-be-trai-2', 'thoi-trang-be-trai-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(48, 4, 'Thời trang bé trai-3', 'thoi-trang-be-trai-3', 'thoi-trang-be-trai-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(49, 4, 'Thời trang bé trai-4', 'thoi-trang-be-trai-4', 'thoi-trang-be-trai-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(50, 4, 'Thời trang bé trai-5', 'thoi-trang-be-trai-5', 'thoi-trang-be-trai-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(51, 4, 'Thời trang bé trai-6', 'thoi-trang-be-trai-6', 'thoi-trang-be-trai-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(52, 4, 'Thời trang bé trai-7', 'thoi-trang-be-trai-7', 'thoi-trang-be-trai-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(53, 4, 'Thời trang bé trai-8', 'thoi-trang-be-trai-8', 'thoi-trang-be-trai-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(54, 4, 'Thời trang bé trai-9', 'thoi-trang-be-trai-9', 'thoi-trang-be-trai-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(55, 4, 'Thời trang bé trai-10', 'thoi-trang-be-trai-10', 'thoi-trang-be-trai-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(56, 4, 'Thời trang bé trai-11', 'thoi-trang-be-trai-11', 'thoi-trang-be-trai-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(57, 4, 'Thời trang bé trai-12', 'thoi-trang-be-trai-12', 'thoi-trang-be-trai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(58, 4, 'Thời trang bé trai-13', 'thoi-trang-be-trai-13', 'thoi-trang-be-trai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(59, 4, 'Thời trang bé trai-14', 'thoi-trang-be-trai-14', 'thoi-trang-be-trai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(60, 4, 'Thời trang bé trai-15', 'thoi-trang-be-trai-15', 'thoi-trang-be-trai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(61, 5, 'Thời trang bé gái-1', 'thoi-trang-be-gai-1', 'thoi-trang-be-gai-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(62, 5, 'Thời trang bé gái-2', 'thoi-trang-be-gai-2', 'thoi-trang-be-gai-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(63, 5, 'Thời trang bé gái-3', 'thoi-trang-be-gai-3', 'thoi-trang-be-gai-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(64, 5, 'Thời trang bé gái-4', 'thoi-trang-be-gai-4', 'thoi-trang-be-gai-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(65, 5, 'Thời trang bé gái-5', 'thoi-trang-be-gai-5', 'thoi-trang-be-gai-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(66, 5, 'Thời trang bé gái-6', 'thoi-trang-be-gai-6', 'thoi-trang-be-gai-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(67, 5, 'Thời trang bé gái-7', 'thoi-trang-be-gai-7', 'thoi-trang-be-gai-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(68, 5, 'Thời trang bé gái-8', 'thoi-trang-be-gai-8', 'thoi-trang-be-gai-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(69, 5, 'Thời trang bé gái-9', 'thoi-trang-be-gai-9', 'thoi-trang-be-gai-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(70, 5, 'Thời trang bé gái-10', 'thoi-trang-be-gai-10', 'thoi-trang-be-gai-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(71, 5, 'Thời trang bé gái-11', 'thoi-trang-be-gai-11', 'thoi-trang-be-gai-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(72, 5, 'Thời trang bé gái-12', 'thoi-trang-be-gai-12', 'thoi-trang-be-gai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(73, 5, 'Thời trang bé gái-13', 'thoi-trang-be-gai-13', 'thoi-trang-be-gai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(74, 5, 'Thời trang bé gái-14', 'thoi-trang-be-gai-14', 'thoi-trang-be-gai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(75, 5, 'Thời trang bé gái-15', 'thoi-trang-be-gai-15', 'thoi-trang-be-gai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(76, 6, 'Hạt cà phê loai 1', 'ca-fe-1', 'cf1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(77, 6, 'Hạt cà phê loai 2', 'ca-fe-2', 'cf2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(78, 6, 'Hạt cà phê loai 3', 'ca-fe-3', 'cf3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(79, 6, 'Hạt cà phê loai 4', 'ca-fe-4', 'cf4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(80, 6, 'Hạt cà phê loai 5', 'ca-fe-5', 'cf5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(81, 6, 'Hạt cà phê loai 6', 'ca-fe-6', 'cf6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(82, 6, 'Hạt cà phê loai 7', 'ca-fe-7', 'cf7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(83, 6, 'Hạt cà phê loai 8', 'ca-fe-8', 'cf8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(84, 6, 'Hạt cà phê loai 9', 'ca-fe-9', 'cf9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(85, 6, 'Hạt cà phê loai 10', 'ca-fe-10', 'cf10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(86, 6, 'Hạt cà phê loai 11', 'ca-fe-11', 'cf11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(87, 6, 'Hạt cà phê loai 12', 'ca-fe-12', 'cf12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(88, 6, 'Hạt cà phê loai 13', 'ca-fe-13', 'cf13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(89, 6, 'Hạt cà phê loai 14', 'ca-fe-14', 'cf14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(90, 6, 'Hạt cà phê loai 15', 'ca-fe-15', 'cf15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(91, 7, 'Bơ loại 1', 'qua-bo-1', 'bo1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(92, 7, 'Bơ loại 2', 'qua-bo-2', 'bo2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(93, 7, 'Bơ loại 3', 'qua-bo-3', 'bo3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(94, 7, 'Bơ loại 4', 'qua-bo-4', 'bo4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(95, 7, 'Bơ loại 5', 'qua-bo-5', 'bo5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(96, 7, 'Bơ loại 6', 'qua-bo-6', 'bo6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(97, 7, 'Bơ loại 7', 'qua-bo-7', 'bo7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(98, 7, 'Bơ loại 8', 'qua-bo-8', 'bo8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(99, 7, 'Bơ loại 9', 'qua-bo-9', 'bo9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(100, 7, 'Bơ loại 10', 'qua-bo-10', 'bo10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(106, 8, 'Cam loại 1', 'qua-cam-1', 'cam1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(107, 8, 'Cam loại 2', 'qua-cam-2', 'cam2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(108, 8, 'Cam loại 3', 'qua-cam-3', 'cam3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(109, 8, 'Cam loại 4', 'qua-cam-4', 'cam4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(110, 8, 'Cam loại 5', 'qua-cam-5', 'cam5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(111, 8, 'Cam loại 6', 'qua-cam-6', 'cam6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(112, 8, 'Cam loại 7', 'qua-cam-7', 'cam7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(113, 8, 'Cam loại 8', 'qua-cam-8', 'cam8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(114, 8, 'Cam loại 9', 'qua-cam-9', 'cam9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(115, 8, 'Cam loại 10', 'qua-cam-10', 'cam10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(121, 9, 'Chuối loại 1', 'qua-chuoi-1', 'chuoi1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(122, 9, 'Chuối loại 2', 'qua-chuoi-2', 'chuoi2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(123, 9, 'Chuối loại 3', 'qua-chuoi-3', 'chuoi3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(124, 9, 'Chuối loại 4', 'qua-chuoi-4', 'chuoi4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(125, 9, 'Chuối loại 5', 'qua-chuoi-5', 'chuoi5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(126, 9, 'Chuối loại 6', 'qua-chuoi-6', 'chuoi6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(127, 9, 'Chuối loại 7', 'qua-chuoi-7', 'chuoi7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(128, 9, 'Chuối loại 8', 'qua-chuoi-8', 'chuoi8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(129, 9, 'Chuối loại 9', 'qua-chuoi-9', 'chuoi9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(130, 9, 'Chuối loại 10', 'qua-chuoi-10', 'chuoi10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(136, 10, 'Xoài loại 1', 'qua-xoai-1', 'xoai1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(137, 10, 'Xoài loại 2', 'qua-xoai-2', 'xoai2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(138, 10, 'Xoài loại 3', 'qua-xoai-3', 'xoai3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(139, 10, 'Xoài loại 4', 'qua-xoai-4', 'xoai4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(140, 10, 'Xoài loại 5', 'qua-xoai-5', 'xoai5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(141, 10, 'Xoài loại 6', 'qua-xoai-6', 'xoai6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(142, 10, 'Xoài loại 7', 'qua-xoai-7', 'xoai7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(143, 10, 'Xoài loại 8', 'qua-xoai-8', 'xoai8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(144, 10, 'Xoài loại 9', 'qua-xoai-9', 'xoai9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(145, 10, 'Xoài loại 10', 'qua-xoai-10', 'xoai10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(151, 11, 'Nho loại 1', 'qua-nho-1', 'nho1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(152, 11, 'Nho loại 2', 'qua-nho-2', 'nho2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(153, 11, 'Nho loại 3', 'qua-nho-3', 'nho3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(154, 11, 'Nho loại 4', 'qua-nho-4', 'nho4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(155, 11, 'Nho loại 5', 'qua-nho-5', 'nho5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(156, 11, 'Nho loại 6', 'qua-nho-6', 'nho6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(157, 11, 'Nho loại 7', 'qua-nho-7', 'nho7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(158, 11, 'Nho loại 8', 'qua-nho-8', 'nho8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(159, 11, 'Nho loại 9', 'qua-nho-9', 'nho9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(160, 11, 'Nho loại 10', 'qua-nho-10', 'nho10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(166, 12, 'Táo loại 1', 'qua-tao-1', 'tao1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(167, 12, 'Táo loại 2', 'qua-tao-2', 'tao2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(168, 12, 'Táo loại 3', 'qua-tao-3', 'tao3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(169, 12, 'Táo loại 4', 'qua-tao-4', 'tao4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(170, 12, 'Táo loại 5', 'qua-tao-5', 'tao5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(171, 12, 'Táo loại 6', 'qua-tao-6', 'tao6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(172, 12, 'Táo loại 7', 'qua-tao-7', 'tao7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(173, 12, 'Táo loại 8', 'qua-tao-8', 'tao8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(174, 12, 'Táo loại 9', 'qua-tao-9', 'tao9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(175, 12, 'Táo loại 10', 'qua-tao-10', 'tao10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(181, 13, 'Dưa loại 1', 'qua-dua-1', 'dua1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(182, 13, 'Dưa loại 2', 'qua-dua-2', 'dua2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(183, 13, 'Dưa loại 3', 'qua-dua-3', 'dua3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(184, 13, 'Dưa loại 4', 'qua-dua-4', 'dua4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(185, 13, 'Dưa loại 5', 'qua-dua-5', 'dua5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(186, 13, 'Dưa loại 6', 'qua-dua-6', 'dua6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(187, 13, 'Dưa loại 7', 'qua-dua-7', 'dua7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(188, 13, 'Dưa loại 8', 'qua-dua-8', 'dua8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(189, 13, 'Dưa loại 9', 'qua-dua-9', 'dua9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(190, 13, 'Dưa loại 10', 'qua-dua-10', 'dua10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:09', 1, '2020-07-03 09:13:09', 1, 1),
(196, 14, 'Vãi xấy loại 1', 'vai-xay-1', 'vaixay1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(197, 14, 'Vãi xấy loại 2', 'vai-xay-2', 'vaixay2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(198, 14, 'Vãi xấy loại 3', 'vai-xay-3', 'vaixay3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(199, 14, 'Vãi xấy loại 4', 'vai-xay-4', 'vaixay4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(200, 14, 'Vãi xấy loại 5', 'vai-xay-5', 'vaixay5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(201, 14, 'Vãi xấy loại 6', 'vai-xay-6', 'vaixay6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(202, 14, 'Vãi xấy loại 7', 'vai-xay-7', 'vaixay7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(203, 14, 'Vãi xấy loại 8', 'vai-xay-8', 'vaixay8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(204, 14, 'Vãi xấy loại 9', 'vai-xay-9', 'vaixay9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(205, 14, 'Vãi xấy loại 10', 'vai-xay-10', 'vaixay10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(211, 15, 'Táo xấy loại 1', 'tao-xay-1', 'taoxay1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(212, 15, 'Táo xấy loại 2', 'tao-xay-2', 'taoxay2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(213, 15, 'Táo xấy loại 3', 'tao-xay-3', 'taoxay3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(214, 15, 'Táo xấy loại 4', 'tao-xay-4', 'taoxay4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(215, 15, 'Táo xấy loại 5', 'tao-xay-5', 'taoxay5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(216, 15, 'Táo xấy loại 6', 'tao-xay-6', 'taoxay6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(217, 15, 'Táo xấy loại 7', 'tao-xay-7', 'taoxay7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(218, 15, 'Táo xấy loại 8', 'tao-xay-8', 'taoxay8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(219, 15, 'Táo xấy loại 9', 'tao-xay-9', 'taoxay9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(220, 15, 'Táo xấy loại 10', 'tao-xay-10', 'taoxay10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(226, 16, 'Chuối xấy loại 1', 'chuoi-xay-1', 'Chuoixay1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(227, 16, 'Chuối xấy loại 2', 'chuoi-xay-2', 'Chuoixay2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(228, 16, 'Chuối xấy loại 3', 'chuoi-xay-3', 'Chuoixay3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(229, 16, 'Chuối xấy loại 4', 'chuoi-xay-4', 'Chuoixay4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(230, 16, 'Chuối xấy loại 5', 'chuoi-xay-5', 'Chuoixay5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(231, 16, 'Chuối xấy loại 6', 'chuoi-xay-6', 'Chuoixay6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(232, 16, 'Chuối xấy loại 7', 'chuoi-xay-7', 'Chuoixay7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(233, 16, 'Chuối xấy loại 8', 'chuoi-xay-8', 'Chuoixay8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(234, 16, 'Chuối xấy loại 9', 'chuoi-xay-9', 'Chuoixay9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(235, 16, 'Chuối xấy loại 10', 'chuoi-xay-10', 'Chuoixay10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(241, 17, 'Cam xấy loại 1', 'cam-xay-1', 'camxay1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(242, 17, 'Cam xấy loại 2', 'cam-xay-2', 'camxay2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(243, 17, 'Cam xấy loại 3', 'cam-xay-3', 'camxay3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(244, 17, 'Cam xấy loại 4', 'cam-xay-4', 'camxay4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(245, 17, 'Cam xấy loại 5', 'cam-xay-5', 'camxay5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(246, 17, 'Cam xấy loại 6', 'cam-xay-6', 'camxay6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(247, 17, 'Cam xấy loại 7', 'cam-xay-7', 'camxay7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(248, 17, 'Cam xấy loại 8', 'cam-xay-8', 'camxay8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(256, 18, 'Xoài xấy loại 1', 'xoai-xay-1', 'xoaixay1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(257, 18, 'Xoài xấy loại 2', 'xoai-xay-2', 'xoaixay2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(258, 18, 'Xoài xấy loại 3', 'xoai-xay-3', 'xoaixay3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(259, 18, 'Xoài xấy loại 4', 'xoai-xay-4', 'xoaixay4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(260, 18, 'Xoài xấy loại 5', 'xoai-xay-5', 'xoaixay5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(261, 18, 'Xoài xấy loại 6', 'xoai-xay-6', 'xoaixay6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(262, 18, 'Xoài xấy loại 7', 'xoai-xay-7', 'xoaixay7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(263, 18, 'Xoài xấy loại 8', 'xoai-xay-8', 'xoaixay8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(320, 22, 'Rau thủy canh loại 1', 'thuy-canh-1', 'thuycanh1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(321, 22, 'Rau thủy canh loại 2', 'thuy-canh-2', 'thuycanh2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(322, 22, 'Rau thủy canh loại 3', 'thuy-canh-3', 'thuycanh3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(323, 22, 'Rau thủy canh loại 4', 'thuy-canh-4', 'thuycanh4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(324, 22, 'Rau thủy canh loại 5', 'thuy-canh-5', 'thuycanh5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(325, 22, 'Rau thủy canh loại 6', 'thuy-canh-6', 'thuycanh6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(326, 22, 'Rau thủy canh loại 7', 'thuy-canh-7', 'thuycanh7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(327, 22, 'Rau thủy canh loại 8', 'thuy-canh-8', 'thuycanh8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(331, 23, 'Rau ăn thân lá 1', 'than-la-1', 'thanla1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(332, 23, 'Rau ăn thân lá 2', 'than-la-2', 'thanla2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(333, 23, 'Rau ăn thân lá 3', 'than-la-3', 'thanla3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(334, 23, 'Rau ăn thân lá 4', 'than-la-4', 'thanla4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(335, 23, 'Rau ăn thân lá 5', 'than-la-5', 'thanla5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(336, 23, 'Rau ăn thân lá 6', 'than-la-6', 'thanla6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(337, 23, 'Rau ăn thân lá 7', 'than-la-7', 'thanla7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(338, 23, 'Rau ăn thân lá 8', 'than-la-8', 'thanla8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(339, 23, 'Quần áo cầu lông-9', 'ao-ao-cau-long-9', 'ao-ao-cau-long-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(340, 23, 'Quần áo cầu lông-10', 'ao-ao-cau-long-10', 'ao-ao-cau-long-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(341, 23, 'Quần áo cầu lông-11', 'ao-ao-cau-long-11', 'ao-ao-cau-long-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(342, 23, 'Quần áo cầu lông-12', 'ao-ao-cau-long-12', 'ao-ao-cau-long-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(343, 23, 'Quần áo cầu lông-13', 'ao-ao-cau-long-13', 'ao-ao-cau-long-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(344, 23, 'Quần áo cầu lông-14', 'ao-ao-cau-long-14', 'ao-ao-cau-long-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(345, 23, 'Quần áo cầu lông-15', 'ao-ao-cau-long-15', 'ao-ao-cau-long-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(346, 24, 'Rau ăn thân củ 1', 'than-cu-1', 'thancu1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(347, 24, 'Rau ăn thân củ 2', 'than-cu-2', 'thancu2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(348, 24, 'Rau ăn thân củ 3', 'than-cu-3', 'thancu3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(349, 24, 'Rau ăn thân củ 4', 'than-cu-4', 'thancu4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(350, 24, 'Rau ăn thân củ 5', 'than-cu-5', 'thancu5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(351, 24, 'Rau ăn thân củ 6', 'than-cu-6', 'thancu6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(352, 24, 'Rau ăn thân củ 7', 'than-cu-7', 'thancu7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(353, 24, 'Rau ăn thân củ 8', 'than-cu-8', 'thancu8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(354, 24, 'Rau ăn thân củ 9', 'than-cu-9', 'thancu9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(355, 24, 'Rau ăn thân củ 10', 'than-cu-10', 'thancu10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(356, 24, 'Quần áo bóng rổ-11', 'quan-ao-bong-ro-11', 'quan-ao-bong-ro-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-08-19 16:59:58', 1, 2),
(357, 24, 'Quần áo bóng rổ-12', 'quan-ao-bong-ro-12', 'quan-ao-bong-ro-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(358, 24, 'Quần áo bóng rổ-13', 'quan-ao-bong-ro-13', 'quan-ao-bong-ro-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(359, 24, 'Quần áo bóng rổ-14', 'quan-ao-bong-ro-14', 'quan-ao-bong-ro-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(360, 24, 'Quần áo bóng rổ-15', 'quan-ao-bong-ro-15', 'quan-ao-bong-ro-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(361, 25, 'Rau ăn hoa quả 1', 'hoa-qua-1', 'hoaqua1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(362, 25, 'Rau ăn hoa quả 2', 'hoa-qua-2', 'hoaqua2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(363, 25, 'Rau ăn hoa quả 3', 'hoa-qua-3', 'hoaqua3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(364, 25, 'Rau ăn hoa quả 4', 'hoa-qua-4', 'hoaqua4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(365, 25, 'Rau ăn hoa quả 5', 'hoa-qua-5', 'hoaqua5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(366, 25, 'Rau ăn hoa quả 6', 'hoa-qua-6', 'hoaqua6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(367, 25, 'Rau ăn hoa quả 7', 'hoa-qua-7', 'hoaqua7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(368, 25, 'Rau ăn hoa quả 8', 'hoa-qua-8', 'hoaqua8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(369, 25, 'Rau ăn hoa quả 9', 'hoa-qua-9', 'hoaqua9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(370, 25, 'Rau ăn hoa quả 10', 'hoa-qua-10', 'hoaqua10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(371, 25, 'Giày bóng đá-11', 'giay-bong-da-11', 'hoaqua11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(372, 25, 'Giày bóng đá-12', 'giay-bong-da-12', 'hoaqua12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(373, 25, 'Giày bóng đá-13', 'giay-bong-da-13', 'hoaqua13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(374, 25, 'Giày bóng đá-14', 'giay-bong-da-14', 'hoaqua14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(375, 25, 'Giày bóng đá-15', 'giay-bong-da-15', 'hoaqua15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(376, 26, 'Củ khoai loại 1', 'cu-khoai-1', 'khoai1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(377, 26, 'Củ khoai loại 2', 'cu-khoai-2', 'khoai2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(378, 26, 'Củ khoai loại 3', 'cu-khoai-3', 'khoai3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(379, 26, 'Củ khoai loại 4', 'cu-khoai-4', 'khoai4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(380, 26, 'Củ khoai loại 5', 'cu-khoai-5', 'khoai5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(381, 26, 'Củ khoai loại 6', 'cu-khoai-6', 'khoai6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(382, 26, 'Củ khoai loại 7', 'cu-khoai-7', 'khoai7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(383, 26, 'Củ khoai loại 8', 'cu-khoai-8', 'khoai8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(384, 26, 'Củ khoai loại 9', 'cu-khoai-9', 'khoai9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(385, 26, 'Củ khoai loại 10', 'cu-khoai-10', 'khoai10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(386, 26, 'Giày cầu lông-11', 'giay-cau-long-11', 'giay-cau-long-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(387, 26, 'Giày cầu lông-12', 'giay-cau-long-12', 'giay-cau-long-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(388, 26, 'Giày cầu lông-13', 'giay-cau-long-13', 'giay-cau-long-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(389, 26, 'Giày cầu lông-14', 'giay-cau-long-14', 'giay-cau-long-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(390, 26, 'Giày cầu lông-15', 'giay-cau-long-15', 'giay-cau-long-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(391, 27, 'Cà rốt loại 1', 'ca-rot-1', 'carot1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(392, 27, 'Cà rốt loại 2', 'ca-rot-2', 'carot2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(393, 27, 'Cà rốt loại 3', 'ca-rot-3', 'carot3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(394, 27, 'Cà rốt loại 4', 'ca-rot-4', 'carot4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(395, 27, 'Cà rốt loại 5', 'ca-rot-5', 'carot5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(396, 27, 'Cà rốt loại 6', 'ca-rot-6', 'carot6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(397, 27, 'Cà rốt loại 7', 'ca-rot-7', 'carot7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(398, 27, 'Cà rốt loại 8', 'ca-rot-8', 'carot8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(399, 27, 'Cà rốt loại 9', 'ca-rot-9', 'carot9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(400, 27, 'Cà rốt loại 10', 'ca-rot-10', 'carot10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(401, 27, 'Giày bóng rổ-11', 'giay-bong-ro-11', 'giay-bong-ro-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1);
INSERT INTO `vtd_product` (`id`, `catid`, `name`, `slug`, `img`, `detail`, `number`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(402, 27, 'Giày bóng rổ-12', 'giay-bong-ro-12', 'giay-bong-ro-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(403, 27, 'Giày bóng rổ-13', 'giay-bong-ro-13', 'giay-bong-ro-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(404, 27, 'Giày bóng rổ-14', 'giay-bong-ro-14', 'giay-bong-ro-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(405, 27, 'Giày bóng rổ-15', 'giay-bong-ro-15', 'giay-bong-ro-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(406, 28, 'Củ cải loại 1', 'cu-cai-1', 'cucai1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(407, 28, 'Củ cải loại 2', 'cu-cai-2', 'cucai2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(408, 28, 'Củ cải loại 3', 'cu-cai-3', 'cucai3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(409, 28, 'Củ cải loại 4', 'cu-cai-4', 'cucai4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(410, 28, 'Củ cải loại 5', 'cu-cai-5', 'cucai5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(411, 28, 'Củ cải loại 6', 'cu-cai-6', 'cucai6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(412, 28, 'Củ cải loại 7', 'cu-cai-7', 'cucai7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(413, 28, 'Củ cải loại 8', 'cu-cai-8', 'cucai8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(414, 28, 'Củ cải loại 9', 'cu-cai-9', 'cucai9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(415, 28, 'Củ cải loại 10', 'cu-cai-10', 'cucai10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(416, 28, 'Phụ kiện thể thao-11', 'phu-kien-the-thao-11', 'phu-kien-the-thao-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(417, 28, 'Phụ kiện thể thao-12', 'phu-kien-the-thao-12', 'phu-kien-the-thao-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(418, 28, 'Phụ kiện thể thao-13', 'phu-kien-the-thao-13', 'phu-kien-the-thao-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(419, 28, 'Phụ kiện thể thao-14', 'phu-kien-the-thao-14', 'phu-kien-the-thao-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(420, 28, 'Phụ kiện thể thao-15', 'phu-kien-the-thao-15', 'phu-kien-the-thao-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(421, 29, 'Củ khoai loại 1', 'su-hao-1', 'suhao1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(422, 29, 'Củ khoai loại 2', 'su-hao-2', 'suhao2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(423, 29, 'Củ khoai loại 3', 'su-hao-3', 'suhao3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(424, 29, 'Củ khoai loại 4', 'su-hao-4', 'suhao4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(425, 29, 'Củ khoai loại 5', 'su-hao-5', 'suhao5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(426, 29, 'Củ khoai loại 6', 'su-hao-6', 'suhao6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(427, 29, 'Củ khoai loại 7', 'su-hao-7', 'suhao7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(428, 29, 'Củ khoai loại 8', 'su-hao-8', 'suhao8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(429, 29, 'Củ khoai loại 9', 'su-hao-9', 'suhao9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(430, 29, 'Củ khoai loại 10', 'su-hao-10', 'suhao10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(431, 29, 'Áo bé trai-11', 'ao-be-trai-11', 'khoai11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(432, 29, 'Áo bé trai-12', 'ao-be-trai-12', 'ao-be-trai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(433, 29, 'Áo bé trai-13', 'ao-be-trai-13', 'ao-be-trai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(434, 29, 'Áo bé trai-14', 'ao-be-trai-14', 'ao-be-trai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(435, 29, 'Áo bé trai-15', 'ao-be-trai-15', 'ao-be-trai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(436, 30, 'Quần bé trai-1', 'quan-be-trai-1', 'quan-be-trai-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(437, 30, 'Quần bé trai-2', 'quan-be-trai-2', 'quan-be-trai-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(438, 30, 'Quần bé trai-3', 'quan-be-trai-3', 'quan-be-trai-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(439, 30, 'Quần bé trai-4', 'quan-be-trai-4', 'quan-be-trai-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(440, 30, 'Quần bé trai-5', 'quan-be-trai-5', 'quan-be-trai-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(441, 30, 'Quần bé trai-6', 'quan-be-trai-6', 'quan-be-trai-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(442, 30, 'Quần bé trai-7', 'quan-be-trai-7', 'quan-be-trai-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(443, 30, 'Quần bé trai-8', 'quan-be-trai-8', 'quan-be-trai-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(444, 30, 'Quần bé trai-9', 'quan-be-trai-9', 'quan-be-trai-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(445, 30, 'Quần bé trai-10', 'quan-be-trai-10', 'quan-be-trai-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(446, 30, 'Quần bé trai-11', 'quan-be-trai-11', 'quan-be-trai-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(447, 30, 'Quần bé trai-12', 'quan-be-trai-12', 'quan-be-trai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(448, 30, 'Quần bé trai-13', 'quan-be-trai-13', 'quan-be-trai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(449, 30, 'Quần bé trai-14', 'quan-be-trai-14', 'quan-be-trai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(450, 30, 'Quần bé trai-15', 'quan-be-trai-15', 'quan-be-trai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(451, 31, 'Đồ bộ bé trai-1', 'do-bo-be-trai-1', 'do-bo-be-trai-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(452, 31, 'Đồ bộ bé trai-2', 'do-bo-be-trai-2', 'do-bo-be-trai-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(453, 31, 'Đồ bộ bé trai-3', 'do-bo-be-trai-3', 'do-bo-be-trai-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(454, 31, 'Đồ bộ bé trai-4', 'do-bo-be-trai-4', 'do-bo-be-trai-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(455, 31, 'Đồ bộ bé trai-5', 'do-bo-be-trai-5', 'do-bo-be-trai-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(456, 31, 'Đồ bộ bé trai-6', 'do-bo-be-trai-6', 'do-bo-be-trai-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(457, 31, 'Đồ bộ bé trai-7', 'do-bo-be-trai-7', 'do-bo-be-trai-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(458, 31, 'Đồ bộ bé trai-8', 'do-bo-be-trai-8', 'do-bo-be-trai-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(459, 31, 'Đồ bộ bé trai-9', 'do-bo-be-trai-9', 'do-bo-be-trai-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(460, 31, 'Đồ bộ bé trai-10', 'do-bo-be-trai-10', 'do-bo-be-trai-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(461, 31, 'Đồ bộ bé trai-11', 'do-bo-be-trai-11', 'do-bo-be-trai-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(462, 31, 'Đồ bộ bé trai-12', 'do-bo-be-trai-12', 'do-bo-be-trai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(463, 31, 'Đồ bộ bé trai-13', 'do-bo-be-trai-13', 'do-bo-be-trai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(464, 31, 'Đồ bộ bé trai-14', 'do-bo-be-trai-14', 'do-bo-be-trai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(465, 31, 'Đồ bộ bé trai-15', 'do-bo-be-trai-15', 'do-bo-be-trai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(466, 32, 'Giày dep bé trai-1', 'giay-dep-be-trai-1', 'giay-dep-be-trai-1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(467, 32, 'Giày dep bé trai-2', 'giay-dep-be-trai-2', 'giay-dep-be-trai-2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(468, 32, 'Giày dep bé trai-3', 'giay-dep-be-trai-3', 'giay-dep-be-trai-3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(469, 32, 'Giày dep bé trai-4', 'giay-dep-be-trai-4', 'giay-dep-be-trai-4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(470, 32, 'Giày dep bé trai-5', 'giay-dep-be-trai-5', 'giay-dep-be-trai-5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(471, 32, 'Giày dep bé trai-6', 'giay-dep-be-trai-6', 'giay-dep-be-trai-6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(472, 32, 'Giày dep bé trai-7', 'giay-dep-be-trai-7', 'giay-dep-be-trai-7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(473, 32, 'Giày dep bé trai-8', 'giay-dep-be-trai-8', 'giay-dep-be-trai-8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(474, 32, 'Giày dep bé trai-9', 'giay-dep-be-trai-9', 'giay-dep-be-trai-9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(475, 32, 'Giày dep bé trai-10', 'giay-dep-be-trai-10', 'giay-dep-be-trai-10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(476, 32, 'Giày dep bé trai-11', 'giay-dep-be-trai-11', 'giay-dep-be-trai-11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(477, 32, 'Giày dep bé trai-12', 'giay-dep-be-trai-12', 'giay-dep-be-trai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(478, 32, 'Giày dep bé trai-13', 'giay-dep-be-trai-13', 'giay-dep-be-trai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(479, 32, 'Giày dep bé trai-14', 'giay-dep-be-trai-14', 'giay-dep-be-trai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(480, 32, 'Giày dep bé trai-15', 'giay-dep-be-trai-15', 'giay-dep-be-trai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(481, 33, 'Quả mỹ loại 1', 'my-1', 'my1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(482, 33, 'Quả mỹ loại 2', 'my-2', 'my2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(483, 33, 'Quả mỹ loại 3', 'my-3', 'my3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(484, 33, 'Quả mỹ loại 4', 'my-4', 'my4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(485, 33, 'Quả mỹ loại 5', 'my-5', 'my5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(486, 33, 'Quả mỹ loại 6', 'my-6', 'my6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(487, 33, 'Quả mỹ loại 7', 'my-7', 'my7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(488, 33, 'Quả mỹ loại 8', 'my-8', 'my8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(489, 33, 'Quả mỹ loại 9', 'my-9', 'my9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(490, 33, 'Quả mỹ loại 10', 'my-10', 'my10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(491, 33, 'Quả mỹ loại 11', 'ao-be-gai-11', 'my11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(492, 33, 'Áo bé gái-12', 'ao-be-gai-12', 'ao-be-gai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(493, 33, 'Áo bé gái-13', 'ao-be-gai-13', 'ao-be-gai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(494, 33, 'Áo bé gái-14', 'ao-be-gai-14', 'ao-be-gai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(495, 33, 'Áo bé gái-15', 'ao-be-gai-15', 'ao-be-gai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(496, 34, 'Quả nam phi loại 1', 'nam-phi-1', 'namphi1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(497, 34, 'Quả nam phi loại 2', 'nam-phi-2', 'namphi2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(498, 34, 'Quả nam phi loại 3', 'nam-phi-3', 'namphi3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(499, 34, 'Quả nam phi loại 4', 'nam-phi-4', 'namphi4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(500, 34, 'Quả nam phi loại 5', 'nam-phi-5', 'namphi5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(501, 34, 'Quả nam phi loại 6', 'nam-phi-6', 'namphi6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(502, 34, 'Quả nam phi loại 7', 'nam-phi-7', 'namphi7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(503, 34, 'Quả nam phi loại 8', 'nam-phi-8', 'namphi8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(504, 34, 'Quả nam phi loại 9', 'nam-phi-9', 'namphi9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(505, 34, 'Quả nam phi loại 10', 'nam-phi-10', 'namphi10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(506, 34, 'Quần bé gái-11', 'quan-be-gai-11', 'namphi11.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(507, 34, 'Quần bé gái-12', 'quan-be-gai-12', 'namphi12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(508, 34, 'Quần bé gái-13', 'quan-be-gai-13', 'namphi13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(509, 34, 'Quần bé gái-14', 'quan-be-gai-14', 'quan-be-gai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(510, 34, 'Quần bé gái-15', 'quan-be-gai-15', 'quan-be-gai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(511, 35, 'Quả trung quốc loại 1', 'trung-quoc-1', 'tq1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(512, 35, 'Quả trung quốc loại 1', 'trung-quoc-1', 'tq1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(513, 35, 'Quả trung quốc loại 2', 'trung-quoc-2', 'tq2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(514, 35, 'Quả trung quốc loại 3', 'trung-quoc-3', 'tq3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(515, 35, 'Quả trung quốc loại 4', 'trung-quoc-4', 'tq4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(516, 35, 'Quả trung quốc loại 5', 'trung-quoc-5', 'tq5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(517, 35, 'Quả trung quốc loại 6', 'trung-quoc-6', 'tq6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(518, 35, 'Quả trung quốc loại 7', 'trung-quoc-7', 'tq7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(519, 35, 'Quả trung quốc loại 8', 'trung-quoc-8', 'tq8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(520, 35, 'Quả trung quốc loại 9', 'trung-quoc-9', 'tq9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(521, 35, 'Quả trung quốc loại 10', 'trung-quoc-10', 'tq10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(522, 35, 'Đồ bộ bé gái-12', 'do-bo-be-gai-12', 'do-bo-be-gai-12.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(523, 35, 'Đồ bộ bé gái-13', 'do-bo-be-gai-13', 'do-bo-be-gai-13.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(524, 35, 'Đồ bộ bé gái-14', 'do-bo-be-gai-14', 'do-bo-be-gai-14.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(525, 35, 'Đồ bộ bé gái-15', 'do-bo-be-gai-15', 'do-bo-be-gai-15.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(526, 36, 'Quả thái lan 1', 'thai-lan-1', 'tl1.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(527, 36, 'Quả thái lan loại 2', 'thai-lan-2', 'tl2.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(528, 36, 'Quả thái lan loại 3', 'thai-lan-3', 'tl3.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(529, 36, 'Quả thái lan loại 4', 'thai-lan-4', 'tl4.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(530, 36, 'Quả thái lan loại 5', 'thai-lan-5', 'tl5.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(531, 36, 'Quả thái lan loại 6', 'thai-lan-6', 'tl6.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(532, 36, 'Quả thái lan loại 7', 'thai-lan-7', 'tl7.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(533, 36, 'Quả thái lan loại 8', 'thai-lan-8', 'tl8.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(534, 36, 'Quả thái lan loại 9', 'thai-lan-9', 'tl9.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(535, 36, 'Quả thái lan loại 10', 'thai-lan-10', 'tl10.jpg', 'Chi tiết sản phẩm', 1, 259000.00, 259000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:13:10', 1, '2020-07-03 09:13:10', 1, 1),
(536, 50, 'Hạt cà phê loai 1', 'ca-fe-1', 'cf1.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:44:15', 1, '2020-08-19 14:44:15', 1, 1),
(537, 50, 'Hạt cà phê loai 2', 'ca-fe-2', 'cf2.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:44:21', 1, '2020-08-19 14:44:21', 1, 1),
(538, 50, 'Hạt cà phê loai 3', 'ca-fe-3', 'cf3.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:44:47', 1, '2020-08-19 14:44:47', 1, 1),
(539, 50, 'Hạt cà phê loai 4', 'ca-fe-4', 'cf4.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:10', 1, '2020-08-19 14:45:10', 1, 1),
(540, 50, 'Hạt cà phê loai 5', 'ca-fe-5', 'cf5.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:16', 1, '2020-08-19 14:45:16', 1, 1),
(541, 50, 'Hạt điều loại 1', 'hat-dieu-1', 'dieu1.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:28', 1, '2020-08-19 14:45:28', 1, 1),
(542, 50, 'Hạt điều loại 2', 'hat-dieu-2', 'dieu2.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:35', 1, '2020-08-19 14:45:35', 1, 1),
(543, 50, 'Hạt điều loại 3', 'hat-dieu-3', 'dieu3.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:38', 1, '2020-08-19 14:45:38', 1, 1),
(544, 50, 'Hạt cacao loại 1', 'ca-cao-1', 'cc1.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:42', 1, '2020-08-19 14:45:42', 1, 1),
(545, 50, 'Hạt cacao loại 2', 'ca-cao-2', 'cc2.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:45', 1, '2020-08-19 14:45:45', 1, 1),
(546, 50, 'Hạt cacao loại 3', 'ca-cao-3', 'cc3.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:49', 1, '2020-08-19 14:45:49', 1, 1),
(547, 50, 'Hạt cacao loại 4', 'ca-cao-4', 'cc4.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:54', 1, '2020-08-19 14:45:54', 1, 1),
(548, 50, 'Hạt tiêu loại 1', 'hat-tieu-1', 'tieu1.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:45:59', 1, '2020-08-19 14:45:59', 1, 1),
(549, 50, 'Hạt tiêu loại 2', 'hat-tieu-2', 'tieu2.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:46:04', 1, '2020-08-20 00:16:22', 1, 1),
(550, 40, 'Hạt tiêu loại 33', 'hat-tieu-loai-33', 'hat-tieu-loai-33.jpg', 'Chi tiết sản phẩm', 1, 120000.00, 120000.000, 'Từ khóa SEO', 'Mô tả SEO', '2020-08-19 14:46:07', 1, '2020-08-20 00:17:29', 1, 1),
(556, 1, 'sản phẩm mới thêm', 'san-pham-moi-them', 'san-pham-moi-them.jpg', 'sản phẩm mới thêm', 1, 100000.00, 100000.000, 'sản phẩm mới thêm', 'sản phẩm mới thêm', '2020-08-20 00:21:19', 1, '2020-08-20 01:02:14', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_slider`
--

CREATE TABLE `vtd_slider` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vị trí',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `orders` int(10) UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_slider`
--

INSERT INTO `vtd_slider` (`id`, `name`, `link`, `position`, `img`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slider1.jpg', 1, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slider2.jpg', 1, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slider3.jpg', 1, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1),
(4, 'Khuyễn mãi Covid', 'http://domain.com/index.php?option=page&cat=khuyen-mai-covid', 'slideshow', 'slider4.jpg', 1, '2020-07-01 00:12:13', 1, '2020-07-01 00:12:13', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_topic`
--

CREATE TABLE `vtd_topic` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề',
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `orders` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sắp xếp',
  `metakey` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_topic`
--

INSERT INTO `vtd_topic` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, 1, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2020-07-03 09:14:39', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 0, 2, 'Từ khóa SEO', 'Mô tả SEO', '2020-07-03 09:14:39', 1, '2020-08-17 14:46:13', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vtd_user`
--

CREATE TABLE `vtd_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email',
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quyền truy cập',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vtd_user`
--

INSERT INTO `vtd_user` (`id`, `fullname`, `username`, `password`, `email`, `gender`, `phone`, `img`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`, `address`) VALUES
(1, 'Quản trị', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@gmail.com', 1, '0987654367', 'admin.jpg', 1, '2020-07-01 00:16:03', 1, '2020-07-01 00:16:03', 1, 1, ''),
(2, 'Khách hàng', 'khachhang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'khachhang@gmail.com', 1, '0987654367', 'khachhang.jpg', 0, '2020-07-01 00:16:03', 1, '2020-07-01 00:16:03', 1, 1, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vtd_category`
--
ALTER TABLE `vtd_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_contact`
--
ALTER TABLE `vtd_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_menu`
--
ALTER TABLE `vtd_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_order`
--
ALTER TABLE `vtd_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_orderdetail`
--
ALTER TABLE `vtd_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_post`
--
ALTER TABLE `vtd_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_product`
--
ALTER TABLE `vtd_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_slider`
--
ALTER TABLE `vtd_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_topic`
--
ALTER TABLE `vtd_topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vtd_user`
--
ALTER TABLE `vtd_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vtd_category`
--
ALTER TABLE `vtd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `vtd_contact`
--
ALTER TABLE `vtd_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vtd_menu`
--
ALTER TABLE `vtd_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vtd_order`
--
ALTER TABLE `vtd_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `vtd_orderdetail`
--
ALTER TABLE `vtd_orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `vtd_post`
--
ALTER TABLE `vtd_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `vtd_product`
--
ALTER TABLE `vtd_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT cho bảng `vtd_slider`
--
ALTER TABLE `vtd_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vtd_topic`
--
ALTER TABLE `vtd_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vtd_user`
--
ALTER TABLE `vtd_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
