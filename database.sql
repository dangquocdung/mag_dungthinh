-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 09:02 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_mag`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'v6EWeYHloK39NaNB9i3TW3CR4DOfiVXz', 1, '2017-12-01 20:38:39', '2017-12-01 20:38:39', '2017-12-01 20:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `audit_history`
--

CREATE TABLE IF NOT EXISTS `audit_history` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_history`
--

INSERT INTO `audit_history` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(14, 1, 'backup', '{"name":"test","description":"test"}', 'backup', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '127.0.0.1', 1, 0, '', 'info', '2018-07-17 01:58:38', '2018-07-17 01:58:38'),
(15, 1, 'backup', '{"name":"test","description":"test"}', 'backup', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '127.0.0.1', 1, 0, '', 'info', '2018-07-17 01:59:55', '2018-07-17 01:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `user_id`, `icon`, `featured`, `order`, `is_default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Khám phá', 0, 'Chuyên mục khám phá', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:26:20', '2017-12-12 18:26:34', NULL),
(2, 'Lạ & Cool', 0, 'Chuyên mục lạ và cool', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:27:12', '2017-12-12 18:27:12', NULL),
(3, 'Thể thao khác', 0, 'Chuyên mục thể thao khác', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:27:30', '2017-12-12 18:27:30', NULL),
(4, 'Video', 0, 'Chuyên mục video', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:27:59', '2017-12-12 18:28:04', NULL),
(5, 'Bóng đá', 0, 'Chuyên mục bóng đá', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:28:24', '2017-12-12 18:28:24', NULL),
(6, 'Discovery', 0, 'Discovery description', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:31:08', '2017-12-12 18:31:08', NULL),
(7, 'Hot & Cool', 0, 'Hot and cool category', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:31:44', '2017-12-12 18:31:44', NULL),
(8, 'Other sports', 0, 'Other sports category', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:32:03', '2017-12-12 18:32:03', NULL),
(9, 'Video', 0, 'Video category', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:32:17', '2017-12-12 18:32:17', NULL),
(10, 'Football', 0, 'Football category', 1, 1, NULL, 1, 0, 0, '2017-12-12 18:32:35', '2017-12-12 18:32:35', NULL),
(11, 'Thời trang', 0, 'Chuyên mục thời trang', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:12:29', '2017-12-14 18:12:29', NULL),
(12, 'Thể thao', 0, 'Chuyên mục thể thao', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:12:43', '2017-12-14 18:12:43', NULL),
(13, 'Đời sống', 0, 'Chuyên mục đời sống', 1, 1, NULL, 1, 0, 0, '2017-12-14 18:12:58', '2017-12-15 18:20:32', NULL),
(14, 'Làm đẹp', 0, 'Chuyên mục làm đẹp', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:13:15', '2017-12-14 18:13:15', NULL),
(15, 'Trạm yêu', 0, 'Chuyên mục Trạm yêu', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:13:48', '2017-12-14 18:13:48', NULL),
(16, 'Hậu Trường', 0, 'Chuyên mục hậu trường', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:14:09', '2017-12-14 18:14:09', NULL),
(17, 'Kinh tế', 0, 'Chuyên mục kinh tế', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:14:39', '2017-12-14 18:14:39', NULL),
(18, 'Pháp luật', 0, 'Chuyên mục pháp luật', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:14:54', '2017-12-14 18:14:54', NULL),
(19, 'Kinh doanh', 0, 'Chuyên mục kinh doanh', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:15:18', '2017-12-14 18:15:18', NULL),
(20, 'Giải trí', 0, 'Chuyên mục giải trí', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:15:31', '2017-12-14 18:15:31', NULL),
(21, 'Sport', 0, 'Sport category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:15:47', '2017-12-14 18:15:47', NULL),
(22, 'Fashion', 0, 'Fashion category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:16:38', '2017-12-14 18:16:38', NULL),
(23, 'Life', 0, 'Life category', 1, 1, NULL, 1, 0, 0, '2017-12-14 18:16:52', '2017-12-15 20:22:00', NULL),
(24, 'Beautify', 0, 'Beautify category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:17:41', '2017-12-14 18:17:41', NULL),
(25, 'Love', 0, 'Love category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:17:55', '2017-12-14 18:17:55', NULL),
(26, 'Behind the scenes', 0, 'Behind the scenes category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:18:36', '2017-12-14 18:18:36', NULL),
(27, 'Economy', 0, 'Economy category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:19:45', '2017-12-14 18:19:45', NULL),
(28, 'Law', 0, 'Law category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:20:10', '2017-12-14 18:20:10', NULL),
(29, 'Business', 0, 'Business category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:20:40', '2017-12-14 18:20:40', NULL),
(30, 'Entertainment', 0, 'Entertainment category', 1, 1, NULL, 0, 0, 0, '2017-12-14 18:21:09', '2017-12-14 18:21:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `is_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sang Nguyen', 'sangit7b@gmail.com', '0988606928', 'Ho Chi Minh', 'This is the first contact.', 0, '2017-12-15 23:07:04', '2017-12-15 23:07:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE IF NOT EXISTS `dashboard_widgets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(2, 'widget_analytics_general', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(3, 'widget_analytics_page', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(4, 'widget_analytics_browser', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(5, 'widget_analytics_referrer', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(6, 'widget_audit_logs', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(7, 'widget_request_errors', '2017-12-12 17:33:39', '2017-12-12 17:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE IF NOT EXISTS `dashboard_widget_settings` (
  `id` int(10) unsigned NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 0, 1, '2017-12-14 18:11:58', '2017-12-14 18:11:58'),
(2, NULL, 1, 1, 1, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(3, NULL, 1, 3, 2, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(4, NULL, 1, 4, 3, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(5, NULL, 1, 5, 4, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(6, NULL, 1, 6, 5, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(7, NULL, 1, 7, 6, 1, '2017-12-14 18:11:58', '2017-12-14 18:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `featured`, `order`, `image`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Photography', 'This is description', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2016-10-13 09:49:13', '2017-12-16 09:48:19', NULL),
(2, 'Nature', 'Nature gallery', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2016-10-13 09:56:07', '2017-12-16 16:59:53', NULL),
(3, 'New Day', 'This is demo gallery', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2016-10-13 09:56:44', '2017-12-16 09:48:19', NULL),
(4, 'Morning', 'Hello', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2016-10-13 09:57:30', '2017-12-16 09:48:19', NULL),
(5, 'Happy day', 'Demo', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2016-10-13 09:58:11', '2017-12-16 09:48:19', NULL),
(6, 'Perfect', 'This is perfect description', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2016-10-13 09:58:40', '2017-12-16 09:48:20', NULL),
(7, 'Nhiếp ảnh', 'Bộ sưu tập nhiếp ảnh', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, '2017-12-16 17:02:39', '2017-12-16 17:03:25', NULL),
(8, 'Thiên nhiên', 'Bộ sưu tập ảnh thiên nhiên', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513483-misty-mountains-1280x720.jpg', 1, '2017-12-16 17:03:19', '2017-12-16 17:03:19', NULL),
(9, 'Ngày mới', 'Bộ sưu tập ảnh ngày mới', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, '2017-12-16 17:03:48', '2017-12-16 17:03:48', NULL),
(10, 'Buổi sáng', 'Bộ sưu tập ảnh buổi sáng', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, '2017-12-16 17:04:20', '2017-12-16 17:04:20', NULL),
(11, 'Ngày hạnh phúc', 'Bộ sưu tập ảnh ngày hạnh phúc', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, '2017-12-16 17:04:43', '2017-12-16 17:04:43', NULL),
(12, 'Hoàn hảo', 'Bộ sưu tập ảnh hoàn hảo', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, '2017-12-16 17:05:01', '2017-12-16 17:05:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE IF NOT EXISTS `gallery_meta` (
  `id` int(10) unsigned NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `content_id`, `images`, `reference`, `created_at`, `updated_at`) VALUES
(70, 1, '[{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-3-1513331298468.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/howtostart750x348-1513336577023.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/2copypsov-1513383877882-1.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/cho-va-nhan-1513183414909.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513161216143-1513161216143-1513245588651.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/hop-bao-cong-bo-luat-1513233096066-22-38-1025-1822-crop-1513233126758-1513238795115.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/ap663991123816-1512965310455-158-0-717-1063-crop-1512965540738-1513223645767.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513260327465-1513260327466-1513304033550.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513242715273-1513242715273-1513245181024.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-crop-1513239638970-crop-1513241174547-1513304368398.png","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/flood-moral-story-motivation-676x284-1513073783656.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/image-1513135196294.png","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513237730170-1513237730171-1513305347556.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513149641528-1513149641528-1513211532897.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513153032081-1513153032081-1513234528418.jpeg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-4-1513071198577.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513244376908-crop-1513244386438-1513307989962.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/design-thinking-business-success-1513237770696-crop-1513237787457-1513238383014.png","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513162521415-1513162521415-1513312586786-1513321516974.png","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/keyboard-warrior-600x370-1513155889229-crop-1513155899084-1513215915731.jpg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513305032857.png","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513306925790-1513306925790-1513327991182.jpeg","description":null},{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1512841515091.jpg","description":null}]', 'gallery', '2017-12-16 10:00:24', '2017-12-16 10:12:43'),
(71, 2, '[{"img":"uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:04:54', '2017-12-16 16:59:53'),
(72, 3, '[{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:05', '2017-12-16 10:05:05'),
(73, 4, '[{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:13', '2017-12-16 10:05:13'),
(74, 5, '[{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:21', '2017-12-16 10:05:21'),
(75, 6, '[{"img":"https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:28', '2017-12-16 10:05:28'),
(77, 8, NULL, 'gallery', '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(78, 7, NULL, 'gallery', '2017-12-16 17:03:25', '2017-12-16 17:03:25'),
(79, 9, NULL, 'gallery', '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(80, 10, NULL, 'gallery', '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(81, 11, NULL, 'gallery', '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(82, 12, NULL, 'gallery', '2017-12-16 17:05:01', '2017-12-16 17:05:01'),
(85, 79, NULL, 'post', '2017-12-16 17:56:46', '2017-12-16 17:56:46'),
(86, 80, NULL, 'post', '2017-12-16 18:07:16', '2017-12-16 18:07:16'),
(87, 75, NULL, 'post', '2017-12-17 18:37:49', '2017-12-17 18:37:49'),
(88, 81, NULL, 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(89, 82, NULL, 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(90, 9, NULL, 'post', '2017-12-22 08:59:46', '2017-12-22 08:59:46'),
(91, 46, NULL, 'post', '2017-12-22 09:00:06', '2017-12-22 09:00:06'),
(92, 47, NULL, 'post', '2017-12-22 09:00:37', '2017-12-22 09:00:37'),
(93, 48, NULL, 'post', '2017-12-22 09:00:52', '2017-12-22 09:00:52'),
(95, 45, NULL, 'post', '2017-12-22 09:05:36', '2017-12-22 09:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` int(10) unsigned NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE IF NOT EXISTS `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL,
  `lang_meta_content_id` int(10) unsigned NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_content_id`, `lang_meta_code`, `lang_meta_reference`, `lang_meta_origin`) VALUES
(1, 1, 'en_US', 'menu', 'af26278b08b54b8499768c5a294c545f'),
(2, 1, 'vi', 'page', '89f1c16fe53b57fbb38662bdc8054b35'),
(3, 2, 'vi', 'page', '57d459802e1d1ed704d2f9eb26e8f094'),
(4, 3, 'vi', 'page', '4176dae1f9a2ba94e2fca93701677f02'),
(5, 2, 'vi', 'menu', 'af26278b08b54b8499768c5a294c545f'),
(6, 4, 'en_US', 'page', '89f1c16fe53b57fbb38662bdc8054b35'),
(7, 5, 'en_US', 'page', '57d459802e1d1ed704d2f9eb26e8f094'),
(8, 6, 'en_US', 'page', '4176dae1f9a2ba94e2fca93701677f02'),
(9, 1, 'vi', 'category', '89d50e2e0c9e34528bbff817d1bc424a'),
(10, 2, 'vi', 'category', 'a58a6df7edcd17d4b655d9086f6942da'),
(11, 3, 'vi', 'category', 'e040b57b01879c5f8bcb0e57af970739'),
(12, 4, 'vi', 'category', '8c3c93bc12407263a2c29c478c3f2a52'),
(13, 5, 'vi', 'category', 'cb0c8c86fb917b2024778a23b4b50c87'),
(14, 3, 'vi', 'menu', 'a66f0735891990399d5aab4d0527e555'),
(15, 4, 'en_US', 'menu', 'a66f0735891990399d5aab4d0527e555'),
(16, 6, 'en_US', 'category', '89d50e2e0c9e34528bbff817d1bc424a'),
(17, 7, 'en_US', 'category', 'a58a6df7edcd17d4b655d9086f6942da'),
(18, 8, 'en_US', 'category', 'e040b57b01879c5f8bcb0e57af970739'),
(19, 9, 'en_US', 'category', '8c3c93bc12407263a2c29c478c3f2a52'),
(20, 10, 'en_US', 'category', 'cb0c8c86fb917b2024778a23b4b50c87'),
(21, 5, 'vi', 'menu', '78c67558317596877692576fa5639ab0'),
(23, 1, 'vi', 'post', '2192e54c6860819205b79791012246c2'),
(25, 8, 'en_US', 'menu', '78c67558317596877692576fa5639ab0'),
(26, 11, 'vi', 'category', 'a5622f035bb4ba9ac60b24705f63a21a'),
(27, 12, 'vi', 'category', '463b62c73863a4f3b47437a4d7376ba5'),
(28, 13, 'vi', 'category', '6a0d11c0df642885f99d3fff0a2b5c25'),
(29, 14, 'vi', 'category', '87f48a403060e4445b55d0f36d6b3dd9'),
(30, 15, 'vi', 'category', '157b20ba7fefd6573c08b33075c39657'),
(31, 16, 'vi', 'category', '588480b0eb9f362ce4c90e89020e2c0d'),
(32, 17, 'vi', 'category', 'fa4cc4429154287d4d714d4f3eee18ec'),
(33, 18, 'vi', 'category', '49d820489812bf12f109a5cafea20506'),
(34, 19, 'vi', 'category', '936350cae0d39ec934910a3845235202'),
(35, 20, 'vi', 'category', '3d751cf138f0f4989a0e91de37fbb771'),
(36, 21, 'en_US', 'category', '463b62c73863a4f3b47437a4d7376ba5'),
(37, 22, 'en_US', 'category', 'a5622f035bb4ba9ac60b24705f63a21a'),
(38, 23, 'en_US', 'category', '6a0d11c0df642885f99d3fff0a2b5c25'),
(39, 24, 'en_US', 'category', '87f48a403060e4445b55d0f36d6b3dd9'),
(40, 25, 'en_US', 'category', '157b20ba7fefd6573c08b33075c39657'),
(41, 26, 'en_US', 'category', '588480b0eb9f362ce4c90e89020e2c0d'),
(42, 27, 'en_US', 'category', 'fa4cc4429154287d4d714d4f3eee18ec'),
(43, 28, 'en_US', 'category', '49d820489812bf12f109a5cafea20506'),
(44, 29, 'en_US', 'category', '936350cae0d39ec934910a3845235202'),
(45, 30, 'en_US', 'category', '3d751cf138f0f4989a0e91de37fbb771'),
(46, 9, 'vi', 'menu', 'ce4a8c25f475566fac15296daa495ea5'),
(47, 10, 'en_US', 'menu', 'ce4a8c25f475566fac15296daa495ea5'),
(48, 11, 'vi', 'menu', '22d7b9fc84fcd1d66fc640f9d77dade3'),
(49, 12, 'en_US', 'menu', '22d7b9fc84fcd1d66fc640f9d77dade3'),
(50, 2, 'vi', 'post', '98c1d886097307635bae799ec3cef82d'),
(51, 3, 'vi', 'post', 'eb31f2b59ae7fdcdfe784d5ef56b90dd'),
(52, 4, 'vi', 'post', '02b5f9068a6e7aae11f287ed161b5ff3'),
(53, 5, 'vi', 'post', '8b8ca082e87af3d7c536a3759f9e3ab5'),
(54, 6, 'vi', 'post', 'ed391186c3197ab2fbd5b6d84f1135fb'),
(55, 7, 'vi', 'post', '2c1a9dd0888f1c4eddfc1f65b82e5b0b'),
(56, 8, 'vi', 'post', '34e027cb59c2448bab8b3f30c12fcadb'),
(57, 9, 'vi', 'post', '903f6740f9f33dc794ff2034e731251c'),
(58, 10, 'vi', 'post', '9a819e433e05d0d5ee8bbcd9d6ada41e'),
(59, 1, 'vi', 'tag', '0877fa3ad4daf6f46d31047111dd8e8c'),
(60, 2, 'vi', 'tag', 'c8ec87b205d21b5c915a564f52e5b92d'),
(61, 3, 'vi', 'tag', '6bc6e4d8bf9728db2fdb8a69fc14b3a0'),
(62, 11, 'vi', 'post', 'e707582577d795307a9800e444a06fa1'),
(63, 12, 'vi', 'post', '600a86dcb39e37fc5772dffc5dd46d84'),
(64, 13, 'vi', 'post', 'c353ebaac7b6171e90d20c25a101f3ab'),
(65, 14, 'vi', 'post', '29bbf7b0e9dee4f032052d0879c28c98'),
(66, 15, 'vi', 'post', 'f62ba3c4de3aceb988e2f8f1114a6dc3'),
(67, 16, 'vi', 'post', '9a79a551a628b111ac5e8ca4b370e118'),
(68, 17, 'vi', 'post', 'ca078f998bbb6d28f1eedfbe764df088'),
(69, 18, 'vi', 'post', '44c4a6f0cbd205341ddfb51772f99a34'),
(70, 19, 'vi', 'post', '7fbd0f4dee4b1b2e910224e1e2b8cdc9'),
(71, 20, 'vi', 'post', '6ab552038cc8f3cecc3c6cc553d1c241'),
(72, 21, 'vi', 'post', '7a8368843542c867a333a229121ff12e'),
(73, 22, 'vi', 'post', '55cf60eae1d12a3595bff6b030a97133'),
(74, 23, 'vi', 'post', '6981e3480a84ac32d95a1dcf878124aa'),
(75, 24, 'vi', 'post', '2c4f4a275020c585de0dfe667e8ddb6f'),
(76, 25, 'vi', 'post', '4b158015f6369f36a8846f83122c431b'),
(77, 26, 'vi', 'post', '8345faf9a26e15bc984d604b6e7a913f'),
(78, 27, 'vi', 'post', 'f1070c0ed8d2e81b240b45311a3d66db'),
(79, 28, 'vi', 'post', '5d7c839279f190a40a138a2c72d91170'),
(80, 29, 'vi', 'post', '7ae6c700c5238cf6a00b253badf56e88'),
(81, 30, 'vi', 'post', '9e0d3b2ef8ff8820198a995e82b57908'),
(82, 31, 'vi', 'post', '3e2cd85a6ca698c4b4a324cde4299f66'),
(83, 32, 'vi', 'post', '0a276057ac75f2de4aa9f074f640f880'),
(84, 33, 'vi', 'post', '0dc9252288160d6c2e5e8dfb256d8a23'),
(85, 34, 'vi', 'post', '795a5dcee4f2699a80352d864c76c746'),
(86, 35, 'vi', 'post', 'f3bf1c16768d0a45d8839e41fe179379'),
(87, 36, 'vi', 'post', 'd06d105758cd375dab721c4b50046a04'),
(88, 37, 'vi', 'post', 'd67c21a0ac969789903b872876fc9c2e'),
(89, 38, 'vi', 'post', '23276bfa3b34a07b1b7b01d8fe00e7f7'),
(90, 39, 'vi', 'post', '718a903a0d0a08f475518cbced175f8d'),
(91, 40, 'en_US', 'post', '2192e54c6860819205b79791012246c2'),
(92, 41, 'en_US', 'post', '98c1d886097307635bae799ec3cef82d'),
(93, 42, 'en_US', 'post', 'eb31f2b59ae7fdcdfe784d5ef56b90dd'),
(94, 43, 'en_US', 'post', '02b5f9068a6e7aae11f287ed161b5ff3'),
(95, 44, 'en_US', 'post', '8b8ca082e87af3d7c536a3759f9e3ab5'),
(96, 45, 'en_US', 'post', 'ed391186c3197ab2fbd5b6d84f1135fb'),
(97, 46, 'en_US', 'post', '34e027cb59c2448bab8b3f30c12fcadb'),
(98, 47, 'en_US', 'post', '903f6740f9f33dc794ff2034e731251c'),
(99, 48, 'en_US', 'post', '2c1a9dd0888f1c4eddfc1f65b82e5b0b'),
(100, 49, 'en_US', 'post', '9a819e433e05d0d5ee8bbcd9d6ada41e'),
(101, 50, 'en_US', 'post', 'e707582577d795307a9800e444a06fa1'),
(102, 51, 'en_US', 'post', '600a86dcb39e37fc5772dffc5dd46d84'),
(103, 52, 'en_US', 'post', 'c353ebaac7b6171e90d20c25a101f3ab'),
(104, 53, 'en_US', 'post', '29bbf7b0e9dee4f032052d0879c28c98'),
(105, 54, 'en_US', 'post', 'f62ba3c4de3aceb988e2f8f1114a6dc3'),
(106, 55, 'en_US', 'post', '9a79a551a628b111ac5e8ca4b370e118'),
(107, 56, 'en_US', 'post', 'ca078f998bbb6d28f1eedfbe764df088'),
(108, 57, 'en_US', 'post', '44c4a6f0cbd205341ddfb51772f99a34'),
(109, 58, 'en_US', 'post', '7fbd0f4dee4b1b2e910224e1e2b8cdc9'),
(110, 59, 'en_US', 'post', '6ab552038cc8f3cecc3c6cc553d1c241'),
(111, 60, 'en_US', 'post', '7a8368843542c867a333a229121ff12e'),
(112, 61, 'en_US', 'post', '55cf60eae1d12a3595bff6b030a97133'),
(113, 62, 'en_US', 'post', '6981e3480a84ac32d95a1dcf878124aa'),
(114, 63, 'en_US', 'post', '2c4f4a275020c585de0dfe667e8ddb6f'),
(115, 64, 'en_US', 'post', '4b158015f6369f36a8846f83122c431b'),
(116, 65, 'en_US', 'post', '8345faf9a26e15bc984d604b6e7a913f'),
(117, 66, 'en_US', 'post', 'f1070c0ed8d2e81b240b45311a3d66db'),
(118, 67, 'en_US', 'post', '5d7c839279f190a40a138a2c72d91170'),
(119, 68, 'en_US', 'post', '7ae6c700c5238cf6a00b253badf56e88'),
(120, 69, 'en_US', 'post', '9e0d3b2ef8ff8820198a995e82b57908'),
(121, 70, 'en_US', 'post', '3e2cd85a6ca698c4b4a324cde4299f66'),
(122, 71, 'en_US', 'post', '0a276057ac75f2de4aa9f074f640f880'),
(123, 72, 'en_US', 'post', '0dc9252288160d6c2e5e8dfb256d8a23'),
(124, 73, 'en_US', 'post', '795a5dcee4f2699a80352d864c76c746'),
(125, 74, 'en_US', 'post', 'f3bf1c16768d0a45d8839e41fe179379'),
(126, 75, 'en_US', 'post', 'd06d105758cd375dab721c4b50046a04'),
(127, 76, 'en_US', 'post', 'd67c21a0ac969789903b872876fc9c2e'),
(128, 77, 'en_US', 'post', '23276bfa3b34a07b1b7b01d8fe00e7f7'),
(129, 78, 'en_US', 'post', '718a903a0d0a08f475518cbced175f8d'),
(130, 4, 'en_US', 'tag', '1097b52d99bfcad0ffb6cdd21a7c1ce8'),
(131, 5, 'en_US', 'tag', 'cde1586fccc3734b9b7b04a70f66da15'),
(132, 1, 'en_US', 'gallery', 'e98dfe16ddc60df2f7aee2167b542d02'),
(133, 2, 'en_US', 'gallery', 'dd68433ef1ca63b38eb2cc91bec86c9e'),
(134, 3, 'en_US', 'gallery', '39d176fd4188cfb38fb9fea63259c13f'),
(135, 4, 'en_US', 'gallery', '7f5c319e5ea65356d726ea4619525895'),
(136, 5, 'en_US', 'gallery', '055bce612b947833e267944d236283d6'),
(137, 6, 'en_US', 'gallery', '0486ddba747ecf6eb0ec3bbc28b13e9f'),
(138, 7, 'vi', 'gallery', 'e98dfe16ddc60df2f7aee2167b542d02'),
(139, 8, 'vi', 'gallery', 'dd68433ef1ca63b38eb2cc91bec86c9e'),
(140, 9, 'vi', 'gallery', '39d176fd4188cfb38fb9fea63259c13f'),
(141, 10, 'vi', 'gallery', '7f5c319e5ea65356d726ea4619525895'),
(142, 11, 'vi', 'gallery', '055bce612b947833e267944d236283d6'),
(143, 12, 'vi', 'gallery', '0486ddba747ecf6eb0ec3bbc28b13e9f'),
(144, 1, 'vi', 'simple-slider', '371e8eef313b9a4cb5b7d362b8fa0920'),
(145, 79, 'vi', 'post', '1ba624a026d5621e6cb9fb8950e05aee'),
(146, 80, 'vi', 'post', 'ff0416568b119b77502883cb5aaf85d4'),
(149, 81, 'en_US', 'post', 'ff0416568b119b77502883cb5aaf85d4'),
(151, 82, 'en_US', 'post', '1ba624a026d5621e6cb9fb8950e05aee'),
(152, 2, 'en_US', 'simple-slider', '371e8eef313b9a4cb5b7d362b8fa0920');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE IF NOT EXISTS `media_files` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE IF NOT EXISTS `media_folders` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE IF NOT EXISTS `media_settings` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Top Header', 'top-header', 1, '2017-12-12 17:33:59', '2017-12-12 17:33:59', NULL),
(2, 'Menu trên cùng', 'menu-tren-cung', 1, '2017-12-12 18:14:04', '2017-12-12 18:14:04', NULL),
(3, 'Menu dưới cùng', 'menu-duoi-cung', 1, '2017-12-12 18:29:01', '2017-12-12 18:29:01', NULL),
(4, 'Footer menu', 'footer-menu', 1, '2017-12-12 18:29:22', '2017-12-12 18:29:22', NULL),
(5, 'Chuyên mục nổi bật', 'chuyen-muc-noi-bat', 1, '2017-12-13 17:54:17', '2017-12-13 17:54:17', NULL),
(8, 'Featured Categories', 'featured-categories', 1, '2017-12-13 18:28:13', '2017-12-13 18:28:13', NULL),
(9, 'Menu chính', 'menu-chinh', 1, '2017-12-14 18:21:27', '2017-12-14 18:21:27', NULL),
(10, 'Main menu', 'main-menu', 1, '2017-12-14 18:22:51', '2017-12-14 18:22:51', NULL),
(11, 'Menu phụ', 'menu-phu', 1, '2017-12-14 18:32:59', '2017-12-14 18:32:59', NULL),
(12, 'Second menu', 'second-menu', 1, '2017-12-14 18:33:39', '2017-12-14 18:33:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE IF NOT EXISTS `menu_nodes` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `related_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `related_id`, `type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 0, 3, 'page', '', '', 0, 'Giới thiệu', 'menu-item', '_self', 0, '2017-12-12 18:14:11', '2017-12-12 18:24:48', NULL),
(2, 2, 0, 1, 'page', '', '', 1, 'Liên hệ', 'menu-item', '_self', 0, '2017-12-12 18:14:11', '2017-12-12 18:24:48', NULL),
(3, 2, 0, 2, 'page', '', '', 2, 'Về chúng tôi', 'menu-item', '_self', 0, '2017-12-12 18:14:11', '2017-12-12 18:24:48', NULL),
(4, 1, 0, 5, 'page', '', '', 0, 'About us', 'menu-item', '_self', 0, '2017-12-12 18:23:16', '2017-12-12 18:24:32', NULL),
(5, 1, 0, 4, 'page', '', '', 1, 'Contact', 'menu-item', '_self', 0, '2017-12-12 18:23:16', '2017-12-12 18:24:32', NULL),
(6, 1, 0, 6, 'page', '', '', 2, 'Introduction', 'menu-item', '_self', 0, '2017-12-12 18:23:16', '2017-12-12 18:24:32', NULL),
(7, 3, 0, 5, 'category', '', '', 4, 'Bóng đá', '', '_self', 0, '2017-12-12 18:29:14', '2017-12-12 18:34:06', NULL),
(8, 3, 0, 1, 'category', '', '', 0, 'Khám phá', '', '_self', 0, '2017-12-12 18:29:14', '2017-12-12 18:34:06', NULL),
(9, 3, 0, 2, 'category', '', '', 1, 'Lạ & Cool', '', '_self', 0, '2017-12-12 18:29:14', '2017-12-12 18:34:06', NULL),
(10, 3, 0, 3, 'category', '', '', 2, 'Thể thao khác', '', '_self', 0, '2017-12-12 18:29:14', '2017-12-12 18:34:06', NULL),
(11, 3, 0, 4, 'category', '', '', 3, 'Video', '', '_self', 0, '2017-12-12 18:29:14', '2017-12-12 18:34:06', NULL),
(12, 4, 0, 6, 'category', '', '', 0, 'Discovery', '', '_self', 0, '2017-12-12 18:33:18', '2017-12-12 18:33:36', NULL),
(13, 4, 0, 10, 'category', '', '', 4, 'Football', '', '_self', 0, '2017-12-12 18:33:18', '2017-12-12 18:33:58', NULL),
(14, 4, 0, 7, 'category', '', '', 1, 'Hot & Cool', '', '_self', 0, '2017-12-12 18:33:18', '2017-12-12 18:33:58', NULL),
(15, 4, 0, 8, 'category', '', '', 2, 'Other sports', '', '_self', 0, '2017-12-12 18:33:18', '2017-12-12 18:33:58', NULL),
(17, 4, 0, 9, 'category', '', '', 3, 'Video', '', '_self', 0, '2017-12-12 18:33:36', '2017-12-12 18:33:58', NULL),
(18, 5, 0, 5, 'category', NULL, NULL, 0, 'Bóng đá', NULL, '_self', 0, '2017-12-13 17:54:44', '2017-12-13 17:54:44', NULL),
(19, 5, 0, 1, 'category', NULL, NULL, 1, 'Khám phá', NULL, '_self', 0, '2017-12-13 17:54:44', '2017-12-13 17:54:44', NULL),
(20, 5, 0, 2, 'category', NULL, NULL, 2, 'Lạ & Cool', NULL, '_self', 0, '2017-12-13 17:54:44', '2017-12-13 17:54:44', NULL),
(21, 5, 0, 3, 'category', NULL, NULL, 3, 'Thể thao khác', NULL, '_self', 0, '2017-12-13 17:54:44', '2017-12-13 17:54:44', NULL),
(22, 5, 0, 4, 'category', NULL, NULL, 4, 'Video', NULL, '_self', 0, '2017-12-13 17:54:44', '2017-12-13 17:54:44', NULL),
(33, 8, 0, 6, 'category', NULL, NULL, 0, 'Discovery', NULL, '_self', 0, '2017-12-13 18:28:26', '2017-12-13 18:28:26', NULL),
(34, 8, 0, 10, 'category', NULL, NULL, 1, 'Football', NULL, '_self', 0, '2017-12-13 18:28:26', '2017-12-13 18:28:26', NULL),
(35, 8, 0, 7, 'category', NULL, NULL, 2, 'Hot & Cool', NULL, '_self', 0, '2017-12-13 18:28:26', '2017-12-13 18:28:26', NULL),
(36, 8, 0, 8, 'category', NULL, NULL, 3, 'Other sports', NULL, '_self', 0, '2017-12-13 18:28:26', '2017-12-13 18:28:26', NULL),
(37, 8, 0, 9, 'category', NULL, NULL, 4, 'Video', NULL, '_self', 0, '2017-12-13 18:28:26', '2017-12-13 18:28:26', NULL),
(38, 9, 0, 19, 'category', '', '', 0, 'Kinh doanh', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(39, 9, 0, 17, 'category', '', '', 1, 'Kinh tế', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(40, 9, 0, 13, 'category', '', '', 2, 'Đời sống', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(41, 9, 0, 20, 'category', '', '', 3, 'Giải trí', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(42, 9, 0, 5, 'category', '', '', 4, 'Bóng đá', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(43, 9, 0, 16, 'category', '', '', 5, 'Hậu Trường', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(44, 9, 0, 1, 'category', '', '', 6, 'Khám phá', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(45, 9, 0, 2, 'category', '', '', 7, 'Lạ & Cool', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:25', NULL),
(47, 9, 0, 18, 'category', '', '', 8, 'Pháp luật', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:36', NULL),
(48, 9, 0, 12, 'category', '', '', 9, 'Thể thao', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:36', NULL),
(50, 9, 0, 11, 'category', '', '', 10, 'Thời trang', '', '_self', 0, '2017-12-14 18:22:35', '2017-12-14 18:29:36', NULL),
(53, 10, 0, 29, 'category', '', '', 0, 'Business', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:30:42', NULL),
(54, 10, 0, 27, 'category', '', '', 1, 'Economy', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:30:42', NULL),
(55, 10, 0, 28, 'category', '', '', 2, 'Law', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:30:42', NULL),
(57, 10, 0, 26, 'category', '', '', 3, 'Behind the scenes', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(58, 10, 0, 6, 'category', '', '', 4, 'Discovery', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(59, 10, 0, 30, 'category', '', '', 5, 'Entertainment', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(60, 10, 0, 10, 'category', '', '', 6, 'Football', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(61, 10, 0, 22, 'category', '', '', 7, 'Fashion', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(62, 10, 0, 7, 'category', '', '', 8, 'Hot & Cool', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(63, 10, 0, 23, 'category', '', '', 9, 'Life', '', '_self', 1, '2017-12-14 18:23:49', '2017-12-14 18:32:19', NULL),
(65, 10, 0, 21, 'category', '', '', 10, 'Sport', '', '_self', 0, '2017-12-14 18:23:49', '2017-12-14 18:31:42', NULL),
(68, 10, 63, 24, 'category', NULL, NULL, 0, 'Beautify', NULL, '_self', 0, '2017-12-14 18:32:19', '2017-12-14 18:32:19', NULL),
(69, 11, 0, 14, 'category', NULL, NULL, 0, 'Làm đẹp', NULL, '_self', 0, '2017-12-14 18:33:29', '2017-12-14 18:33:29', NULL),
(70, 11, 0, 3, 'category', NULL, NULL, 1, 'Thể thao khác', NULL, '_self', 0, '2017-12-14 18:33:29', '2017-12-14 18:33:29', NULL),
(71, 11, 0, 15, 'category', NULL, NULL, 2, 'Trạm yêu', NULL, '_self', 0, '2017-12-14 18:33:29', '2017-12-14 18:33:29', NULL),
(72, 12, 0, 24, 'category', NULL, NULL, 0, 'Beautify', NULL, '_self', 0, '2017-12-14 18:33:55', '2017-12-14 18:33:55', NULL),
(73, 12, 0, 25, 'category', NULL, NULL, 1, 'Love', NULL, '_self', 0, '2017-12-14 18:33:55', '2017-12-14 18:33:55', NULL),
(74, 12, 0, 8, 'category', NULL, NULL, 2, 'Other sports', NULL, '_self', 0, '2017-12-14 18:33:55', '2017-12-14 18:33:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE IF NOT EXISTS `meta_boxes` (
  `id` int(10) unsigned NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `content_id`, `meta_key`, `meta_value`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:10:14', '2017-12-12 18:10:14'),
(2, 2, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:12:49', '2017-12-12 18:12:49'),
(3, 3, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:13:36', '2017-12-12 18:13:36'),
(4, 4, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:15:57', '2017-12-12 18:15:57'),
(5, 5, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:18:14', '2017-12-12 18:18:14'),
(6, 6, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2017-12-12 18:19:48', '2017-12-12 18:19:48'),
(7, 1, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:26:20', '2017-12-12 18:26:20'),
(8, 2, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:27:12', '2017-12-12 18:27:12'),
(9, 3, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:27:30', '2017-12-12 18:27:30'),
(10, 4, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:28:00', '2017-12-12 18:28:00'),
(11, 5, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:28:24', '2017-12-12 18:28:24'),
(12, 6, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:31:08', '2017-12-12 18:31:08'),
(13, 7, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:31:44', '2017-12-12 18:31:44'),
(14, 8, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:32:03', '2017-12-12 18:32:03'),
(15, 9, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:32:17', '2017-12-12 18:32:17'),
(16, 10, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-12 18:32:35', '2017-12-12 18:32:35'),
(17, 1, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-13 18:02:26', '2017-12-13 18:02:26'),
(18, 11, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:12:29', '2017-12-14 18:12:29'),
(19, 12, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:12:43', '2017-12-14 18:12:43'),
(20, 13, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:12:58', '2017-12-14 18:12:58'),
(21, 14, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:13:15', '2017-12-14 18:13:15'),
(22, 15, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:13:48', '2017-12-14 18:13:48'),
(23, 16, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:14:09', '2017-12-14 18:14:09'),
(24, 17, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:14:39', '2017-12-14 18:14:39'),
(25, 18, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:14:54', '2017-12-14 18:14:54'),
(26, 19, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:15:18', '2017-12-14 18:15:18'),
(27, 20, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:15:31', '2017-12-14 18:15:31'),
(28, 21, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:15:48', '2017-12-14 18:15:48'),
(29, 22, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:16:38', '2017-12-14 18:16:38'),
(30, 23, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:16:52', '2017-12-14 18:16:52'),
(31, 24, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:17:41', '2017-12-14 18:17:41'),
(32, 25, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:17:55', '2017-12-14 18:17:55'),
(33, 26, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:18:36', '2017-12-14 18:18:36'),
(34, 27, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:19:45', '2017-12-14 18:19:45'),
(35, 28, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:20:10', '2017-12-14 18:20:10'),
(36, 29, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:20:40', '2017-12-14 18:20:40'),
(37, 30, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'category', '2017-12-14 18:21:09', '2017-12-14 18:21:09'),
(38, 2, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 08:55:08', '2017-12-15 08:55:08'),
(39, 3, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 08:56:38', '2017-12-15 08:56:38'),
(40, 4, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:02:02', '2017-12-15 09:02:02'),
(41, 5, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:03:39', '2017-12-15 09:03:39'),
(42, 6, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:22:36', '2017-12-15 09:22:36'),
(43, 6, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/fpGO2eFpN44"]', 'post', '2017-12-15 09:38:55', '2017-12-15 09:38:55'),
(44, 7, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/fpGO2eFpN44"]', 'post', '2017-12-15 09:42:29', '2017-12-15 09:42:29'),
(45, 7, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:42:29', '2017-12-15 09:42:29'),
(46, 8, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/fpGO2eFpN44"]', 'post', '2017-12-15 09:44:10', '2017-12-15 09:44:10'),
(47, 8, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:44:10', '2017-12-15 09:44:10'),
(48, 9, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/XY77nTAuiK0"]', 'post', '2017-12-15 09:45:34', '2017-12-22 08:59:46'),
(49, 9, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 09:45:34', '2017-12-15 09:45:34'),
(50, 10, 'video_link', '[null]', 'post', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(51, 10, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(52, 1, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(53, 2, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(54, 3, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(55, 11, 'video_link', '[null]', 'post', '2017-12-15 17:48:59', '2017-12-15 17:48:59'),
(56, 11, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:48:59', '2017-12-15 17:48:59'),
(57, 12, 'video_link', '[null]', 'post', '2017-12-15 17:50:05', '2017-12-15 17:50:05'),
(58, 12, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:50:05', '2017-12-15 17:50:05'),
(59, 13, 'video_link', '[null]', 'post', '2017-12-15 17:51:00', '2017-12-15 17:51:00'),
(60, 13, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:51:00', '2017-12-15 17:51:00'),
(61, 14, 'video_link', '[null]', 'post', '2017-12-15 17:52:32', '2017-12-15 17:52:32'),
(62, 14, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:52:32', '2017-12-15 17:52:32'),
(63, 15, 'video_link', '[null]', 'post', '2017-12-15 17:55:22', '2017-12-15 17:55:22'),
(64, 15, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:55:22', '2017-12-15 17:55:22'),
(65, 16, 'video_link', '[null]', 'post', '2017-12-15 17:56:27', '2017-12-15 17:56:27'),
(66, 16, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:56:27', '2017-12-15 17:56:27'),
(67, 17, 'video_link', '[null]', 'post', '2017-12-15 17:57:25', '2017-12-15 17:57:25'),
(68, 17, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:57:25', '2017-12-15 17:57:25'),
(69, 18, 'video_link', '[null]', 'post', '2017-12-15 17:58:24', '2017-12-15 17:58:24'),
(70, 18, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:58:24', '2017-12-15 17:58:24'),
(71, 19, 'video_link', '[null]', 'post', '2017-12-15 17:59:23', '2017-12-15 17:59:23'),
(72, 19, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 17:59:23', '2017-12-15 17:59:23'),
(73, 20, 'video_link', '[null]', 'post', '2017-12-15 18:00:51', '2017-12-15 18:00:51'),
(74, 20, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:00:51', '2017-12-15 18:00:51'),
(75, 21, 'video_link', '[null]', 'post', '2017-12-15 18:02:05', '2017-12-15 18:02:05'),
(76, 21, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:02:05', '2017-12-15 18:02:05'),
(77, 22, 'video_link', '[null]', 'post', '2017-12-15 18:03:27', '2017-12-15 18:03:27'),
(78, 22, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:03:27', '2017-12-15 18:03:27'),
(79, 23, 'video_link', '[null]', 'post', '2017-12-15 18:06:16', '2017-12-15 18:06:16'),
(80, 23, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:06:16', '2017-12-15 18:06:16'),
(81, 24, 'video_link', '[null]', 'post', '2017-12-15 18:07:36', '2017-12-15 18:07:36'),
(82, 24, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:07:36', '2017-12-15 18:07:36'),
(83, 25, 'video_link', '[null]', 'post', '2017-12-15 18:08:31', '2017-12-15 18:08:31'),
(84, 25, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:08:31', '2017-12-15 18:08:31'),
(85, 26, 'video_link', '[null]', 'post', '2017-12-15 18:11:26', '2017-12-15 18:11:26'),
(86, 26, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:11:26', '2017-12-15 18:11:26'),
(87, 27, 'video_link', '[null]', 'post', '2017-12-15 18:12:24', '2017-12-15 18:12:24'),
(88, 27, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:12:24', '2017-12-15 18:12:24'),
(89, 28, 'video_link', '[null]', 'post', '2017-12-15 18:13:09', '2017-12-15 18:13:09'),
(90, 28, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:13:10', '2017-12-15 18:13:10'),
(91, 29, 'video_link', '[null]', 'post', '2017-12-15 18:14:26', '2017-12-15 18:14:26'),
(92, 29, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:14:26', '2017-12-15 18:14:26'),
(93, 30, 'video_link', '[null]', 'post', '2017-12-15 18:15:21', '2017-12-15 18:15:21'),
(94, 30, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:15:21', '2017-12-15 18:15:21'),
(95, 31, 'video_link', '[null]', 'post', '2017-12-15 18:16:22', '2017-12-15 18:16:22'),
(96, 31, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:16:22', '2017-12-15 18:16:22'),
(97, 32, 'video_link', '[null]', 'post', '2017-12-15 18:17:08', '2017-12-15 18:17:08'),
(98, 32, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:17:08', '2017-12-15 18:17:08'),
(99, 33, 'video_link', '[null]', 'post', '2017-12-15 18:18:03', '2017-12-15 18:18:03'),
(100, 33, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:18:03', '2017-12-15 18:18:03'),
(101, 34, 'video_link', '[null]', 'post', '2017-12-15 18:19:00', '2017-12-15 18:19:00'),
(102, 34, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:19:00', '2017-12-15 18:19:00'),
(103, 35, 'video_link', '[null]', 'post', '2017-12-15 18:20:12', '2017-12-15 18:20:12'),
(104, 35, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:20:12', '2017-12-15 18:20:12'),
(105, 36, 'video_link', '[null]', 'post', '2017-12-15 18:21:34', '2017-12-15 18:21:34'),
(106, 36, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:21:34', '2017-12-15 18:21:34'),
(107, 37, 'video_link', '[null]', 'post', '2017-12-15 18:22:27', '2017-12-15 18:22:27'),
(108, 37, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:22:27', '2017-12-15 18:22:27'),
(109, 38, 'video_link', '[null]', 'post', '2017-12-15 18:23:29', '2017-12-15 18:23:29'),
(110, 38, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:23:29', '2017-12-15 18:23:29'),
(111, 39, 'video_link', '[null]', 'post', '2017-12-15 18:24:19', '2017-12-15 18:24:19'),
(112, 39, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 18:24:19', '2017-12-15 18:24:19'),
(113, 40, 'video_link', '[null]', 'post', '2017-12-15 19:14:35', '2017-12-15 19:14:35'),
(114, 40, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:14:35', '2017-12-15 19:14:35'),
(115, 41, 'video_link', '[null]', 'post', '2017-12-15 19:16:11', '2017-12-15 19:16:11'),
(116, 41, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:16:11', '2017-12-15 19:16:11'),
(117, 42, 'video_link', '[null]', 'post', '2017-12-15 19:21:49', '2017-12-15 19:21:49'),
(118, 42, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:21:49', '2017-12-15 19:21:49'),
(119, 43, 'video_link', '[null]', 'post', '2017-12-15 19:23:12', '2017-12-15 19:23:12'),
(120, 43, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:23:12', '2017-12-15 19:23:12'),
(121, 44, 'video_link', '[null]', 'post', '2017-12-15 19:24:24', '2017-12-15 19:24:24'),
(122, 44, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:24:24', '2017-12-15 19:24:24'),
(123, 45, 'video_link', '["https:\\/\\/www.youtube.com\\/watch?v=JrdfCVff2KE"]', 'post', '2017-12-15 19:31:57', '2017-12-22 09:05:36'),
(124, 45, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:31:57', '2017-12-15 19:31:57'),
(125, 46, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/JrdfCVff2KE"]', 'post', '2017-12-15 19:38:45', '2017-12-22 09:00:06'),
(126, 46, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:38:45', '2017-12-15 19:38:45'),
(127, 47, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/JrdfCVff2KE"]', 'post', '2017-12-15 19:41:12', '2017-12-22 09:00:37'),
(128, 47, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:41:12', '2017-12-15 19:41:12'),
(129, 48, 'video_link', '["https:\\/\\/www.youtube.com\\/embed\\/JrdfCVff2KE"]', 'post', '2017-12-15 19:43:20', '2017-12-22 09:00:52'),
(130, 48, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:43:20', '2017-12-15 19:43:20'),
(131, 49, 'video_link', '[null]', 'post', '2017-12-15 19:47:36', '2017-12-15 19:47:36'),
(132, 49, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:47:36', '2017-12-15 19:47:36'),
(133, 50, 'video_link', '[null]', 'post', '2017-12-15 19:48:29', '2017-12-15 19:48:29'),
(134, 50, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:48:29', '2017-12-15 19:48:29'),
(135, 51, 'video_link', '[null]', 'post', '2017-12-15 19:49:55', '2017-12-15 19:49:55'),
(136, 51, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:49:55', '2017-12-15 19:49:55'),
(137, 52, 'video_link', '[null]', 'post', '2017-12-15 19:50:54', '2017-12-15 19:50:54'),
(138, 52, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:50:54', '2017-12-15 19:50:54'),
(139, 53, 'video_link', '[null]', 'post', '2017-12-15 19:53:37', '2017-12-15 19:53:37'),
(140, 53, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:53:37', '2017-12-15 19:53:37'),
(141, 54, 'video_link', '[null]', 'post', '2017-12-15 19:54:52', '2017-12-15 19:54:52'),
(142, 54, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:54:52', '2017-12-15 19:54:52'),
(143, 55, 'video_link', '[null]', 'post', '2017-12-15 19:56:19', '2017-12-15 19:56:19'),
(144, 55, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:56:19', '2017-12-15 19:56:19'),
(145, 56, 'video_link', '[null]', 'post', '2017-12-15 19:57:04', '2017-12-15 19:57:04'),
(146, 56, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:57:04', '2017-12-15 19:57:04'),
(147, 57, 'video_link', '[null]', 'post', '2017-12-15 19:57:41', '2017-12-15 19:57:41'),
(148, 57, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:57:41', '2017-12-15 19:57:41'),
(149, 58, 'video_link', '[null]', 'post', '2017-12-15 19:58:18', '2017-12-15 19:58:18'),
(150, 58, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:58:18', '2017-12-15 19:58:18'),
(151, 59, 'video_link', '[null]', 'post', '2017-12-15 19:59:28', '2017-12-15 19:59:28'),
(152, 59, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 19:59:28', '2017-12-15 19:59:28'),
(153, 60, 'video_link', '[null]', 'post', '2017-12-15 20:02:49', '2017-12-15 20:02:49'),
(154, 60, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:02:49', '2017-12-15 20:02:49'),
(155, 61, 'video_link', '[null]', 'post', '2017-12-15 20:04:42', '2017-12-15 20:04:42'),
(156, 61, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:04:43', '2017-12-15 20:04:43'),
(157, 62, 'video_link', '[null]', 'post', '2017-12-15 20:07:22', '2017-12-15 20:07:22'),
(158, 62, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:07:22', '2017-12-15 20:07:22'),
(159, 63, 'video_link', '[null]', 'post', '2017-12-15 20:08:12', '2017-12-15 20:08:12'),
(160, 63, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:08:12', '2017-12-15 20:08:12'),
(161, 64, 'video_link', '[null]', 'post', '2017-12-15 20:12:05', '2017-12-15 20:12:05'),
(162, 64, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:12:05', '2017-12-15 20:12:05'),
(163, 65, 'video_link', '[null]', 'post', '2017-12-15 20:13:58', '2017-12-15 20:13:58'),
(164, 65, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:13:58', '2017-12-15 20:13:58'),
(165, 66, 'video_link', '[null]', 'post', '2017-12-15 20:15:24', '2017-12-15 20:15:24'),
(166, 66, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:15:24', '2017-12-15 20:15:24'),
(167, 67, 'video_link', '[null]', 'post', '2017-12-15 20:16:04', '2017-12-15 20:16:04'),
(168, 67, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:16:04', '2017-12-15 20:16:04'),
(169, 68, 'video_link', '[null]', 'post', '2017-12-15 20:17:31', '2017-12-15 20:17:31'),
(170, 68, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:17:31', '2017-12-15 20:17:31'),
(171, 69, 'video_link', '[null]', 'post', '2017-12-15 20:18:28', '2017-12-15 20:18:28'),
(172, 69, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:18:28', '2017-12-15 20:18:28'),
(173, 70, 'video_link', '[null]', 'post', '2017-12-15 20:19:12', '2017-12-15 20:19:12'),
(174, 70, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:19:12', '2017-12-15 20:19:12'),
(175, 71, 'video_link', '[null]', 'post', '2017-12-15 20:19:52', '2017-12-15 20:19:52'),
(176, 71, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:19:52', '2017-12-15 20:19:52'),
(177, 72, 'video_link', '[null]', 'post', '2017-12-15 20:20:33', '2017-12-15 20:20:33'),
(178, 72, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:20:33', '2017-12-15 20:20:33'),
(179, 73, 'video_link', '[null]', 'post', '2017-12-15 20:21:12', '2017-12-15 20:21:12'),
(180, 73, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:21:12', '2017-12-15 20:21:12'),
(181, 74, 'video_link', '[null]', 'post', '2017-12-15 20:23:19', '2017-12-15 20:23:19'),
(182, 74, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:23:19', '2017-12-15 20:23:19'),
(183, 75, 'video_link', '[null]', 'post', '2017-12-15 20:24:18', '2017-12-15 20:24:18'),
(184, 75, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:24:18', '2017-12-15 20:24:18'),
(185, 76, 'video_link', '[null]', 'post', '2017-12-15 20:24:52', '2017-12-15 20:24:52'),
(186, 76, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:24:52', '2017-12-15 20:24:52'),
(187, 77, 'video_link', '[null]', 'post', '2017-12-15 20:25:38', '2017-12-15 20:25:38'),
(188, 77, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:25:38', '2017-12-15 20:25:38'),
(189, 78, 'video_link', '[null]', 'post', '2017-12-15 20:26:27', '2017-12-15 20:26:27'),
(190, 78, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-15 20:26:27', '2017-12-15 20:26:27'),
(191, 4, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(192, 5, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(193, 79, 'video_link', '[null]', 'post', '2017-12-16 17:53:53', '2017-12-16 17:53:53'),
(194, 79, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-16 17:53:53', '2017-12-16 17:53:53'),
(195, 80, 'video_link', '[null]', 'post', '2017-12-16 17:56:23', '2017-12-16 17:56:23'),
(196, 80, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-16 17:56:23', '2017-12-16 17:56:23'),
(197, 81, 'video_link', '[null]', 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(198, 81, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(199, 82, 'video_link', '[null]', 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(200, 82, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_10_230148_create_acl_tables', 1),
(5, '2016_06_14_230857_create_menus_table', 1),
(6, '2016_06_28_221418_create_pages_table', 1),
(7, '2016_10_05_074239_create_setting_table', 1),
(8, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(9, '2016_12_16_084601_create_widgets_table', 1),
(10, '2017_05_09_070343_create_media_tables', 1),
(12, '2015_06_18_033822_create_blog_table', 2),
(14, '2016_10_13_150201_create_galleries_table', 4),
(16, '2016_10_03_032336_create_languages_table', 6),
(17, '2015_06_29_025744_create_audit_history', 7),
(19, '2015_08_15_122343_create_notes_table', 9),
(20, '2016_05_28_112028_create_system_request_logs_table', 10),
(21, '2016_10_07_193005_create_translations_table', 11),
(23, '2017_11_03_070450_create_slug_table', 12),
(24, '2017_11_16_160440_remove_slug_fields', 12),
(25, '2017_11_17_011800_remove_slug_column_table_page', 12),
(26, '2017_11_20_010816_remove_column_slug_in_galleries_table', 12),
(27, '2017_07_11_140018_create_simple_slider_table', 13),
(28, '2016_06_17_091537_create_contacts_table', 14),
(29, '2017_12_21_041602_update_menu_nodes_type', 15),
(30, '2017_12_21_041904_update_menu_nodes_type_for_blog', 16),
(31, '2018_01_24_002113_allow_column_password_null', 17),
(32, '2018_03_01_003229_remove_features_data', 18),
(33, '2018_03_01_004130_remove_invites_table', 18),
(34, '2018_03_14_081936_remove_table_plugins', 18),
(35, '2018_03_14_095112_remove_permissions_tables', 18),
(36, '2016_06_01_000001_create_oauth_auth_codes_table', 19),
(37, '2016_06_01_000002_create_oauth_access_tokens_table', 19),
(38, '2016_06_01_000003_create_oauth_refresh_tokens_table', 19),
(39, '2016_06_01_000004_create_oauth_clients_table', 19),
(40, '2016_06_01_000005_create_oauth_personal_access_clients_table', 19),
(41, '2018_04_07_004221_add_id_to_table_audit_history', 20),
(42, '2018_04_09_030647_restructure_tables_for_simple_sliders_plugin', 20),
(43, '2018_03_26_114237_create_table_configurations_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'HuCFGz7sjcqMVIgaGZMnDTlzVZJhnedWgecCT4KV', 'http://localhost', 1, 0, 0, '2018-03-20 20:51:59', '2018-03-20 20:51:59'),
(2, NULL, 'Laravel Password Grant Client', 'Ku95ztrwl0JCST2Ey8OadCpklT1zitQQobtv7cyD', 'http://localhost', 0, 1, 0, '2018-03-20 20:51:59', '2018-03-20 20:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 20:51:59', '2018-03-20 20:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `parent_id`, `featured`, `description`, `created_at`, `updated_at`, `icon`, `order`, `deleted_at`) VALUES
(1, 'Liên hệ', '<p>TP.HCM</p>\r\n\r\n<p>Tầng 3, T&ograve;a Nh&agrave; Thanh Ni&ecirc;n 345/134 Trần Hưng Đạo, Phường Cầu Kho, Q.1, TPHCM</p>\r\n\r\n<p>(028) 3920 4564 (4 lines) - (08) 3620 4672</p>\r\n\r\n<p>(028) 3920 8507</p>\r\n\r\n<p>info@aba.com.vn&nbsp;&nbsp;</p>\r\n\r\n<p>[contact-form][/contact-form]</p>', 1, 1, NULL, 'default', 0, 0, 'Liên hệ với chúng tôi', '2017-12-12 18:10:14', '2017-12-16 09:56:34', NULL, 0, NULL),
(2, 'Về chúng tôi', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, NULL, 'default', 0, 0, 'Thông tin giới thiệu về chúng tôi', '2017-12-12 18:12:49', '2017-12-12 18:20:23', NULL, 0, NULL),
(3, 'Giới thiệu', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, NULL, 'default', 0, 0, 'Giới thiệu thông tin về công ty', '2017-12-12 18:13:36', '2017-12-12 18:20:47', NULL, 0, NULL),
(4, 'Contact', '<p>Block 3, Thanh Nien building 345/134 Tran Hung Dao, Cau Kho Ward, District 1, Ho Chi Minh&nbsp;</p>\r\n\r\n<p>(028) 3920 4564 (4 lines) - (08) 3620 4672</p>\r\n\r\n<p>(028) 3920 8507</p>\r\n\r\n<p>info@aba.com.vn&nbsp;&nbsp;</p>\r\n\r\n<p>[contact-form][/contact-form]</p>', 1, 1, NULL, 'default', 0, 0, 'Contact us', '2017-12-12 18:15:57', '2017-12-15 23:06:27', NULL, 0, NULL),
(5, 'About us', '<p>&nbsp;</p>\r\n\r\n<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, NULL, 'default', 0, 0, 'About us description', '2017-12-12 18:18:14', '2017-12-12 18:19:09', NULL, 0, NULL),
(6, 'Introduction', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, NULL, 'default', 0, 0, 'Instruction description', '2017-12-12 18:19:48', '2017-12-12 18:19:48', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nghi phạm khai sát hại dã man nam thanh niên rồi vứt xuống sông để đánh lạc hướng công an', 'Người ta né tránh nhắc đến Chúa Kito khi nói đến mốc lịch sử bằng cách nói Trước công nguyên và sau công nguyên. Nhưng nguyên tiếng anh: Before Chirst, After Chirst – trước Chúa Kito, sau Chúa Kito – người ta sợ lịch sử của Kito giáo', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p style="text-align: center;"><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" style="width: 600px; height: 400px;" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/5.jpg', 1, NULL, '2017-12-13 18:02:26', '2017-12-15 22:18:39', NULL),
(2, 'Giá mai vàng tăng 30-40% so với năm trước', 'Giá mai vàng tăng 30-40% so với năm trước', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/maivang-1513330039630.jpg', 0, NULL, '2017-12-15 08:55:08', '2017-12-15 08:57:14', NULL),
(3, 'Xuất khẩu cá ngừ sang EU sẽ tăng 35% so năm 2016', 'Theo VASEP, từ đầu năm đến giữa tháng 11, XK cá ngừ sang EU đã đạt 123,2 triệu USD, tăng 31,8% so cùng kỳ 2016.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/anh-cndd-1-1513331207815.JPG', 0, NULL, '2017-12-15 08:56:38', '2017-12-15 08:57:21', NULL),
(4, 'Tăng hàng chục phần trăm chỉ trong thời gian ngắn, cổ phiếu hàng không đã đến thời “cất cánh”', 'Trong 9 tháng đầu năm 2017, sản lượng vận tải hành khách đạt 47,1 triệu lượt, vận tải hàng hóa đạt 833 nghìn tấn, tăng tương ứng 20,3% và 34% so với cùng kỳ 2016', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/airline-1513269064189.jpg', 1, NULL, '2017-12-15 09:02:02', '2017-12-15 09:51:15', NULL),
(5, 'Vân Đồn ''quay cuồng'' trong cơn sốt đất: Chủ tịch tỉnh Quảng Ninh đưa ra cảnh báo cho nhà đầu tư', 'Trước tình trạng sốt đất tại Vân Đồn ngày càng diễn ra mạnh mẽ, UBND tỉnh Quảng Ninh đã phải liên tục ra các chỉ đạo cấp bách để quản lý đất đai trên địa bàn huyện Vân Đồn', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/9aloly-1513328247406.jpg', 2, NULL, '2017-12-15 09:03:39', '2017-12-16 08:51:57', NULL),
(6, 'PNJ, VCS, VJC tiếp tục phá đỉnh, thị trường “đỏ vỏ xanh lòng” trong ngày review ETFs', 'Đóng cửa phiên giao dịch, chỉ số VnIndex giảm nhẹ 0,69 điểm (0,07%) xuống 935,16 điểm; Hnx-Index tăng 0,15 điểm (0,13%) lên 111,61 điểm; Upcom-Index tăng 0,3 điểm (0,56%)', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/bull-bear-1463022336507-1513307271081.jpg', 0, 'video', '2017-12-15 09:22:36', '2017-12-15 09:38:55', NULL),
(7, 'Không chỉ Sabeco, hàng loạt doanh nghiệp lớn nhất nhì trong nhiều lĩnh vực tiềm năng đã thuộc quyền kiểm soát của người Thái', 'Đầu tư mạnh mẽ vào Việt Nam trong 5 năm trở lại đây, các doanh nghiệp Thái Lan đã nắm trong tay những doanh nghiệp hàng đầu tại rất nhiều lĩnh vực có tiềm năng tăng trưởng cao trong tương lai như bán lẻ, nông nghiệp', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/bangkok-thailand-tour-package-for-3-days-and-2-nights-1513319289889.jpg', 0, 'video', '2017-12-15 09:42:29', '2017-12-15 18:10:13', NULL),
(8, 'MT Gas dùng hơn 21 tỷ đồng thặng dư vốn cổ phần để xóa nợ lũy kế', 'Sau khi dùng thặng dư vốn cổ phần để giảm trừ lỗ lũy kế, MT Gas vẫn còn lỗ lũy kế hơn 25 tỷ đồng tính đến 31/10/2017.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/q-1513240612690.png', 0, 'video', '2017-12-15 09:44:10', '2017-12-15 18:10:02', NULL),
(9, 'Đây là số tiền bạn có nếu đầu tư 1.000 USD vào bitcoin từ năm 2013', 'Chỉ sau vài năm, bạn sẽ "gặt hái" được mức lợi nhuận khổng lồ. Tuy nhiên, bên cạnh những câu chuyện thành công rực rỡ của thế giới bitcoin, rủi ro của thị trường', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/104891350-rtr3kh141910x1000-1513307430794.jpg', 0, 'video', '2017-12-15 09:45:34', '2017-12-22 08:59:46', NULL),
(10, 'Cơn "lốc" nhà đầu tư Thái', 'Nhà đầu tư Thái đã, đang đầu tư mạnh vào Việt Nam và sẽ không bỏ qua cơ hội tham gia đấu giá mua cổ phần các doanh nghiệp nhà nước trong thời gian sắp tới.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-0-1513383421929.jpg', 0, NULL, '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Tháp gió xuất khẩu vào Australia bị kết luận bán phá giá biên độ 8%', 'Bộ Công Thương cho biết, Ủy ban Chống bán phá giá Australia (ADC) thuộc Bộ Công nghiệp, Đổi mới và Khoa học Australia đã công bố Bản dữ liệu trọng yếu (SEF) trong vụ việc điều', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/thap-gio-1513330173503.jpg', 0, NULL, '2017-12-15 17:48:59', '2017-12-15 17:48:59', NULL),
(12, '"Phát sốt" với ngôi nhà mini chỉ 9m2 siêu tiện nghi', 'Với diện tích chỉ 9,29m2 nhưng ngôi nhà ống siêu nhỏ này có đầy đủ không gian chức năng đủ cho 1-2 người sinh sống thoải mái.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/a7-1513309579034.jpeg', 0, NULL, '2017-12-15 17:50:05', '2017-12-15 17:50:05', NULL),
(13, 'Hà Nội sẽ ‘cắt giảm’ gần 8.000 biên chế như thế nào?', 'Đây được xem lần sắp xếp tổ chức bộ máy và tinh giản biên chế lớn nhất từ trước đến nay, với việc trong năm 2018, Hà Nội sẽ tinh giảm hơn 7.400 biên chế công chức, viên chức', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/sieubanxslf-1513344943127.jpg', 0, NULL, '2017-12-15 17:51:00', '2017-12-15 17:51:00', NULL),
(14, 'Chùm ảnh: Những chủ biệt thự ở phố nhà giàu Sài Gòn đầu tư cả chục triệu đồng trang trí Noel', 'Hai khu phố nhà giàu ở Sài Gòn đã chuẩn bị đón Noel bằng những ánh sáng lung linh nhiều màu sắc. Mặc dù nằm ở nơi ít người qua lại, nhưng để căn biệt thự của mình được rực rỡ ánh sáng', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1512903434174-1512903434174-1513218036140.jpg', 0, NULL, '2017-12-15 17:52:32', '2017-12-15 17:54:05', NULL),
(15, 'Không muốn cuộc đời bị hủy hoại, đây là 8 việc ai cũng nên xử lý càng sớm càng tốt', 'Khi bạn cảm thấy bạn đang lãng phí cuộc đời, sinh mệnh, đó đã là một tín hiệu rất rõ ràng, rằng bạn nên điều chỉnh lại phương hướng, hành động của bản thân.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513234481857-1513234481857-1513235080107-1513321733011.png', 0, NULL, '2017-12-15 17:55:22', '2017-12-15 17:55:22', NULL),
(16, '7 điều nhỏ nhặt giản đơn giúp cuộc sống thoải mái hơn', 'Hầu hết tất cả mọi người đều muốn được hạnh phúc và thật may mắn, chúng ta có thể tự mang lại cho mình niềm hạnh phúc một cách thật giản đơn mà có thể từ lâu chúng ta đã quên.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/53be6633586c2cd9b574b1fdc650f9fe63acaf0c-1513155444116-crop-1513155447709-1513211052336.jpg', 0, NULL, '2017-12-15 17:56:27', '2017-12-15 17:56:27', NULL),
(17, 'Liệu bạn đã hành động đúng nơi công sở? Hãy kiểm tra 11 dấu hiệu sau', 'Ở công sở hiện nay, mọi người thường quá tải với những yêu cầu và trách nhiệm. Những người làm tốt việc ưu tiên hóa sẽ thành công. Các sếp không thích việc bạn kêu ca về rắc rối, thay vào đó, họ muốn nghe bạn đề xuất cách giải quyết nó.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1512841515091.jpg', 0, NULL, '2017-12-15 17:57:25', '2017-12-15 17:57:25', NULL),
(18, '30 tuổi đã thích sướng và an nhàn: Ngưng cố gắng, đời bạn sẽ giống như một thanh sắt gỉ', 'Nếu bạn muốn một điều gì đó, đùng chỉ suy nghĩ hay mơ về nó. Hãy đứng dậy với lòng đầy quyết tâm và hành động. Khi bạn khao khát một điều gì đó, cả vũ trụ sẽ hợp sức để giúp bạn thành công. Đừng nghỉ ngơi nữa.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513306925790-1513306925790-1513327991182.jpeg', 0, NULL, '2017-12-15 17:58:24', '2017-12-15 17:58:24', NULL),
(19, 'Không có thời gian tới phòng gym? Đây chính là 5 cách giúp bạn đốt cháy mỡ thừa hoàn hảo', 'Khi nhắc đến việc giảm cân đốt mỡ, nhiều người thường nghĩ ngay tới việc tham gia các phòng gym, aerobic hay yoga. Tuy nhiên, đó không phải nơi duy nhất có thể giúp chúng ta tiêu thụ calo, đơn giản hơn, hãy thay đổi 5 thói quen', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513305032857.png', 0, NULL, '2017-12-15 17:59:23', '2017-12-15 17:59:23', NULL),
(20, 'Đừng bao giờ phí thời gian cãi nhau với người khác trên Facebook, đây là lý do vì sao', 'Chúng ta suy nghĩ khác nhau và có cách thức tiếp cận các nguồn thông tin khác nhau, thế nên lần tới có ai đó gây hấn với bạn trên Facebook, hãy cứ lờ họ đi đừng phí thời gian của mình.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/keyboard-warrior-600x370-1513155889229-crop-1513155899084-1513215915731.jpg', 0, NULL, '2017-12-15 18:00:51', '2017-12-15 18:00:51', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'Lạt-ma Zopa Rinpoche: Giống như đầu tư 100 đô la rồi nhận triệu đô, đây là điều ai cũng tự “đầu tư” được mỗi ngày', 'Trong Thất chi nguyện (bảy pháp gia hành) xuất phát từ tác phẩm Bồ Tát Hạnh của ngài Tịch Thiên, thì chi phần thứ tư là Hoan hỷ.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513162521415-1513162521415-1513312586786-1513321516974.png', 0, NULL, '2017-12-15 18:02:05', '2017-12-15 18:02:05', NULL),
(22, '6 rắc rối mà chỉ những người cực thông minh mới mắc phải', 'Đừng tưởng những người thông minh miễn nhiễm với mọi rắc rối trên đời, những thứ họ gặp phải đôi khi chẳng hề phức tạp chút nào như chúng ta vẫn hay nghĩ.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/design-thinking-business-success-1513237770696-crop-1513237787457-1513238383014.png', 0, NULL, '2017-12-15 18:03:27', '2017-12-15 18:03:27', NULL),
(23, 'CEO Clingme: Sai lầm lớn nhất của startup Việt khi gọi vốn đầu tư là lúc nào cũng nhắm đến tiền', '“Tiền là vấn đề quyết định nhưng đừng bao giờ đặt nó lên đầu tiên”, anh Trần Hải Quang khẳng định.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513244376908-crop-1513244386438-1513307989962.jpg', 0, NULL, '2017-12-15 18:06:16', '2017-12-15 18:06:16', NULL),
(24, 'Có gì tại khách sạn đắt đỏ bậc nhất Dubai?', 'Dubai đã nổi tiếng là một trong những thành phố du lịch sang trọng và đắt đỏ nhất thế giới, vậy thì khách sạn đắt nhất nơi đây hẳn phải vô cùng đặc biệt.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-4-1513071198577.jpg', 0, NULL, '2017-12-15 18:07:36', '2017-12-15 18:07:36', NULL),
(25, '34 tuổi mắc ung thư gan giai đoạn cuối, nguyên nhân gây bệnh ai cũng nên đề phòng', 'Người trẻ mắc bệnh hiểm nghèo không hiếm, nhưng nguyên nhân gây ung thư gan của bệnh nhân này là bài học lớn cho tất cả chúng ta. Bệnh có thể bắt đầu từ một thái độ sống.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513153032081-1513153032081-1513234528418.jpeg', 0, NULL, '2017-12-15 18:08:31', '2017-12-15 18:08:31', NULL),
(26, 'Tìm ra đáp án cho câu hỏi uống bao nhiêu cà phê/ngày là đủ và thời điểm tốt nhất để uống', 'Có vẻ như những lợi ích tuyệt vời của cà phê đã khiến nhiều người uống một cách tùy tiện. Thật ra, uống cái gì nhiều quá cũng có hại và cà phê cũng không phải là ngoại lệ.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513149641528-1513149641528-1513211532897.jpg', 0, NULL, '2017-12-15 18:11:26', '2017-12-15 18:11:26', NULL),
(27, 'Smartphone có thể ngầm "đầu độc" bộ não con người ra sao?', 'So với chiếc điện thoại "cục gạch", Smartphone có khiến bạn thông minh lên không? Đáng buồn là nghiên cứu này đang chỉ ra điều ngược lại.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513237730170-1513237730171-1513305347556.jpg', 0, NULL, '2017-12-15 18:12:24', '2017-12-15 18:12:24', NULL),
(28, 'Đầu bếp hàng đầu chỉ ra những sai lầm lớn nhất khi thưởng thức ẩm thực Nhật Bản', 'Ẩm thực Nhật Bản là niềm đam mê bất tận của nhiều người. Tuy nhiên, việc thưởng thức các món ăn Nhật Bản đúng cách và tinh tế thì không phải ai cũng biết.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/image-1513135196294.png', 0, NULL, '2017-12-15 18:13:09', '2017-12-15 18:13:09', NULL),
(29, 'Chuyện Nhà sư và Chúa trời: Ai cũng cần đọc để biết nắm bắt cơ hội', 'Cơ hội luôn đến một cách bất chợt trong cuộc sống, vì vậy hãy học cách nắm bắt để không phải hối tiếc.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/flood-moral-story-motivation-676x284-1513073783656.jpg', 0, NULL, '2017-12-15 18:14:26', '2017-12-15 18:14:26', NULL),
(30, 'Cuộc sống sang chảnh của Hoàng tử Brunei - vận động viên cưỡi ngựa đẹp trai từng dậy sóng SEA Games 29', 'Hoàng tử Abdul Mateen năm nay 26 tuổi thường xuyên khoe những bức ảnh hào nhoáng khám phá thế giới trên tài khoản Instagram của mình với hơn 730.000 lượt follow.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-crop-1513239638970-crop-1513241174547-1513304368398.png', 0, NULL, '2017-12-15 18:15:21', '2017-12-15 18:15:21', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(31, 'Những người ăn theo chế độ này ít có nguy cơ bị mất trí nhớ và sa sút trí tuệ', 'Chế độ ăn Địa Trung Hải giàu rau tươi, các loạt hạt, dầu cá giúp cải thiện sức khỏe não bộ, giảm nguy cơ mất trí lên tới 35%.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513242715273-1513242715273-1513245181024.jpg', 0, NULL, '2017-12-15 18:16:22', '2017-12-15 18:16:22', NULL),
(32, 'Những bức ảnh ấn tượng nhất năm 2017 được tờ Reuters bình chọn', 'Chỉ còn vài ngày nữa là kết thúc năm 2017, một năm diễn ra không ít sự kiện có ảnh hưởng lớn đến cuộc sống của người dân trên khắp thế giới. Tờ Reuters mới đây đã đăng tải những bức ảnh ấn tượng nhất trong suốt 12 tháng vừa qua.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513260327465-1513260327466-1513304033550.jpg', 0, NULL, '2017-12-15 18:17:08', '2017-12-15 18:17:08', NULL),
(33, 'Đây là 11 dự doán của tương lai của Elon Musk, tất cả sẽ đều khiến bạn ngỡ ngàng', 'Trong năm mới và những năm sắp tới, Musk sẽ tặng cho nhân loại thêm thứ gì nữa?', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/ap663991123816-1512965310455-158-0-717-1063-crop-1512965540738-1513223645767.jpg', 0, NULL, '2017-12-15 18:18:03', '2017-12-15 18:18:03', NULL),
(34, 'Nợ vay ODA lên tới 600 nghìn tỷ: Sẽ giải trình với Quốc hội', 'Hiện tại Chính phủ đang giao Bộ Kế hoạch và Đầu tư để giải trình với Quốc hội về việc nợ vay ODA đã ký kết lên tới 600 nghìn tỷ đồng', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/hop-bao-cong-bo-luat-1513233096066-22-38-1025-1822-crop-1513233126758-1513238795115.jpg', 1, NULL, '2017-12-15 18:19:00', '2017-12-16 08:38:55', NULL),
(35, 'Đề phòng biến chứng nguy hiểm ở mắt nếu chủ quan khi trị bệnh viêm xoang', 'Nếu không chữa trị đúng cách và dứt điểm, viêm xoang có thể gây ra những biến chứng nguy hiểm ở mắt.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513161216143-1513161216143-1513245588651.jpg', 0, NULL, '2017-12-15 18:20:12', '2017-12-15 18:20:12', NULL),
(36, 'Thế giới Di động "thưởng" nghìn tỷ để giữ lòng trung thành của nhân viên, nhưng với họ, tiền không phải là tất cả', 'Để nhân viên hết mình máu lửa với công việc, trước hết người lãnh đạo phải cho họ hết tất cả những gì có thể cho, một cách thành thật, chân chính và tất nhiên vẫn hợp lý', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/cho-va-nhan-1513183414909.jpg', 0, NULL, '2017-12-15 18:21:34', '2017-12-15 18:21:34', NULL),
(37, '“Trâu cày” Bitcoin ồ ạt đổ bộ Sài Gòn', 'Theo Cục Hải quan TPHCM, tính đến cuối tháng 10/2017, Chi cục Hải quan chuyển phát nhanh đã tiếp nhận 98 tờ khai nhập khẩu gần 1.500 bộ máy xử lý dữ liệu tự động giải mã Bitcoin và Litecoin.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/2copypsov-1513383877882-1.jpg', 0, NULL, '2017-12-15 18:22:27', '2017-12-15 18:22:27', NULL),
(38, 'Steve Jobs: Làm startup không phải là xây dựng công ty để kiếm tiền', 'Một trong những điều khiến Apple trở nên thành công vang dội như ngày hôm nay đó chính là niềm đam mê cháy bỏng của những người tham gia với giá trị cốt lõi của nó.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/howtostart750x348-1513336577023.jpg', 0, NULL, '2017-12-15 18:23:29', '2017-12-15 18:23:29', NULL),
(39, 'Số đông vẫn lựa chọn gửi tiết kiệm', 'Hiện lãi suất tiết kiệm từ mức hơn 5% đến 8%/năm tùy kỳ hạn ngắn, dài vẫn được nhiều người lựa chọn với mức sinh lời khá tốt mà lại tương đối an toàn trong bối cảnh hiện nay.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-3-1513331298468.jpg', 0, NULL, '2017-12-15 18:24:19', '2017-12-15 18:24:19', NULL),
(40, 'Found in Translation: Local Publisher Brings Alive the Story of a Somali Olympian and Refugee for Macedonian Readers', 'The graphic novel "An Olympic Dream" -- a biography of a runner who perished while trying to cross the Mediterranean Sea as a refugee -- was published in Macedonia', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/5.jpg', 1, NULL, '2017-12-15 19:14:35', '2017-12-15 20:33:25', NULL),
(41, 'In Egypt, Both Sexual Harassment and Child Marriages Continue to Plague the Country', '"Sexual harassment is a major problem in Egypt. Studies show that large majorities of women have been subjected to it [...] And the problem is deeply rooted."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/maivang-1513330039630.jpg', 0, NULL, '2017-12-15 19:16:11', '2017-12-15 19:16:11', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(42, 'Twitter Japan is Not a Safe Space for Minority Users', '"Of respondents who reported they found it unpleasant when coming across discriminatory articles online (as described above), 19.8% said they would refrain from using the Internet."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/anh-cndd-1-1513331207815.JPG', 1, NULL, '2017-12-15 19:21:49', '2017-12-21 09:18:32', NULL),
(43, 'A Legislator in Taiwan Risks a Recall for Supporting Same-Sex Marriage', 'Some in the Presbyterian Church in Taiwan are campaigning to recall a legislator because he supports same-sex marriage, generating a furious debate and calls for reform.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/airline-1513269064189.jpg', 1, NULL, '2017-12-15 19:23:12', '2017-12-15 20:34:43', NULL),
(44, 'Concerns over United States President Trump''s Latest Controversial Foreign Policies Loom Large in Africa', '"This is not a very diplomatic strategy. Then again, it is coming from a man whose vision and politics are limited by his lack of awareness about the outside world."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 1, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/9aloly-1513328247406.jpg', 4, NULL, '2017-12-15 19:24:24', '2018-04-09 18:26:09', NULL),
(45, 'UNESCO Protects Balkan Grandma March Day Custom As Cultural Heritage', 'Cultural heritage activists in South-eastern Europe celebrate UNESCO''s recognition of the Balkan Grandma March Day custom of wearing red and white wool ornaments.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/bull-bear-1463022336507-1513307271081.jpg', 1, 'video', '2017-12-15 19:31:57', '2017-12-22 09:07:34', NULL),
(46, 'Petition to Free the Eritrean Man Unjustly Arrested in Italy for Mistaken Identity', 'The Italian authorities appear to have gotten the wrong man; will they acknowledge it? The hunt for the mastermind of Mediterranean human trafficking takes a strange turn.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/bangkok-thailand-tour-package-for-3-days-and-2-nights-1513319289889.jpg', 0, 'video', '2017-12-15 19:38:45', '2017-12-22 09:00:06', NULL),
(47, 'Refugees in Lebanon Are Still Being Scapegoated in the Media and in Academia', '"How can one claim that these people are here to receive aid from international organizations, when many are, in fact, not receiving any?"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/q-1513240612690.png', 0, 'video', '2017-12-15 19:41:11', '2017-12-22 09:00:36', NULL),
(48, 'A ‘Detainee of All Eras'': The Prominent Case of Egyptian Activist Alaa Abdelfattah', '"His trial is an attempt to silence criticism of a judiciary that has itself become a source of human rights violations."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/104891350-rtr3kh141910x1000-1513307430794.jpg', 0, 'video', '2017-12-15 19:43:20', '2017-12-22 09:00:52', NULL),
(49, 'The Ahwazis of Iran Face Death Sentences after False Accusations of Opposing the Government', 'An Iranian court sentenced two Ahwazi Arab men to death and gave six others three to 25 years for the crimes of alleged membership in non-existent opposition groups.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-0-1513383421929.jpg', 1, NULL, '2017-12-15 19:47:36', '2017-12-21 18:41:40', NULL),
(50, '‘Recalcitrant’ Activist Charged by Singapore Police for Organizing ‘Illegal Assemblies’', '"We do not understand why the State is pursuing the seven charges against Jolovan Wham for events which were all peaceful and non-violent."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/thap-gio-1513330173503.jpg', 0, NULL, '2017-12-15 19:48:29', '2017-12-15 19:48:29', NULL),
(51, 'Right To Information Requests in Sri Lanka Reveals Process for Blocking Websites', 'Information released by the Telecom Regulatory Commission revealed that from 2015 onward 13 websites had been blocked, including a number of websites publishing political news, and a few pornographic sites.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/a7-1513309579034.jpeg', 0, NULL, '2017-12-15 19:49:55', '2017-12-15 19:49:55', NULL),
(52, 'The Cat in the… Pot? Cuddly Felines Nap in Japanese Cookware', 'Cats sleeping in clay cooking pots are all the rage in Japan right now. Apparently, they are so popular that stores have started selling pots made exclusively for cats.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/sieubanxslf-1513344943127.jpg', 0, NULL, '2017-12-15 19:50:54', '2017-12-15 19:50:54', NULL),
(53, 'Indonesian President Jokowi Leads Citizens in Condemning Donald Trump''s Jerusalem Declaration', '"Trump is dragging the USA and the world to the frontline of religious extremism."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1512903434174-1512903434174-1513218036140.jpg', 0, NULL, '2017-12-15 19:53:37', '2017-12-15 19:53:37', NULL),
(54, 'A Local Newspaper''s Full-Page Feature on Nuclear Radiation Survival Stirs Panic in China', '"The whole page feature on nuclear radiation precaution is believed to be a reaction to the risk of warfare in the Korean peninsula."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513234481857-1513234481857-1513235080107-1513321733011.png', 0, NULL, '2017-12-15 19:54:52', '2017-12-15 19:54:52', NULL),
(55, 'The Fall of Chinese Internet Czar Lu Wei', 'If Lu Wei''s censorship measures were viewed as selective, Chinese netizens will now find themselves facing a more "comprehensive" online content control system.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/53be6633586c2cd9b574b1fdc650f9fe63acaf0c-1513155444116-crop-1513155447709-1513211052336.jpg', 0, NULL, '2017-12-15 19:56:19', '2017-12-15 19:56:19', NULL),
(56, 'Syrian and Lebanese: On the Conflict of Identities', '"Being half-Lebanese, half-Syrian is like being a child whose parents are separated and both hate you because each half of you reminds them of the other...."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1512841515091.jpg', 0, NULL, '2017-12-15 19:57:04', '2017-12-15 19:57:04', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(57, 'Transgender Woman''s Murder in Trinidad & Tobago Highlights Ostracism Faced by LGBTQ Community', '"This wonderful human being, who cared so much for others, died for no reason .. other than perhaps, being different."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513306925790-1513306925790-1513327991182.jpeg', 0, NULL, '2017-12-15 19:57:41', '2017-12-15 19:57:41', NULL),
(58, 'Victoria Becomes the First Australian State to Pass Voluntary Assisted Dying Legislation', 'As Victoria becomes the first Australian state to legalise euthanasia, the country remains divided over what is being called a new, progressive trend in Australian politics.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513305032857.png', 0, NULL, '2017-12-15 19:58:18', '2017-12-15 19:58:18', NULL),
(59, 'Victoria Becomes the First Australian State to Pass Voluntary Assisted Dying Legislation', 'As Victoria becomes the first Australian state to legalise euthanasia, the country remains divided over what is being called a new, progressive trend in Australian politics.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/keyboard-warrior-600x370-1513155889229-crop-1513155899084-1513215915731.jpg', 0, NULL, '2017-12-15 19:59:28', '2017-12-15 19:59:28', NULL),
(60, 'Palestinians Aren''t Surprised by US Jerusalem Move As World Already ‘Ignores Their Existence’', '"A nation built on ethnic cleansing, colonialism and white supremacy has always supported colonialism and ethnic cleansing in Palestine."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513162521415-1513162521415-1513312586786-1513321516974.png', 0, NULL, '2017-12-15 20:02:49', '2017-12-15 20:02:49', NULL),
(61, 'Painting a New Story: Sohrai Art in Jharkhand', '"What is special about the art form is that it is only made by women and passed on by women."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/design-thinking-business-success-1513237770696-crop-1513237787457-1513238383014.png', 0, NULL, '2017-12-15 20:04:42', '2017-12-15 20:04:42', NULL),
(62, 'The Conviction of Another Dancehall Star Fails to Shock Crime-Weary Jamaicans', 'Following the incarceration of Vybz Kartel, Ninja Man is the second major dancehall artist in recent times to be convicted of murder in crime-weary Jamaica.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-1513244376908-crop-1513244386438-1513307989962.jpg', 0, NULL, '2017-12-15 20:07:22', '2017-12-15 20:07:22', NULL),
(63, 'Harsh Prison Terms for Video Journalist and Blogger as Vietnam Cracks Down on Free Expression', '“Repressing citizen journalists is not only a violation of human rights but also a major impediment to Vietnam’s aspirations to become a tech and innovation hub.”', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-4-1513071198577.jpg', 0, NULL, '2017-12-15 20:08:12', '2017-12-15 20:08:12', NULL),
(64, 'What Future for the ‘Wikipedia Seagull’ on Kazakhstan''s Brand New Banknotes?', 'A seagull appearing on the 500 tenge note was claimed by a Swiss photographer, but officials have not acknowledged copyright infringement.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513153032081-1513153032081-1513234528418.jpeg', 0, NULL, '2017-12-15 20:12:05', '2017-12-15 20:12:05', NULL),
(65, 'Jailed Bahraini Rights Defender Nabeel Rajab Faces Additional Fifteen Years in Prison', 'Rajab is in prison for his human rights-related activities and for freely expressing his opinions.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513149641528-1513149641528-1513211532897.jpg', 0, NULL, '2017-12-15 20:13:58', '2017-12-15 20:13:58', NULL),
(66, 'Ashraf Ghani Gets Thumbs Down After ‘Anti-Women’ Headscarf Gaffe', 'After an outcry, Afghanistan''s president apologised for the remark.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513237730170-1513237730171-1513305347556.jpg', 0, NULL, '2017-12-15 20:15:24', '2017-12-15 20:15:24', NULL),
(67, 'The Health of Thousands of Filipino Children Could Be at Risk, Thanks to Sanofi’s Dengue Vaccine', '"Why just now...How about the thousands of children who were already given the vaccine?"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/image-1513135196294.png', 1, NULL, '2017-12-15 20:16:04', '2018-03-13 20:07:07', NULL),
(68, 'Kyrgyz Children''s Author Remakes Old Fables, Drives New Narratives', '“There are no fairytale weddings in my stories and no handsome prince. None of my characters are especially waiting for him, either.”', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/flood-moral-story-motivation-676x284-1513073783656.jpg', 0, NULL, '2017-12-15 20:17:31', '2017-12-15 20:17:31', NULL),
(69, 'Animal Carcasses, Tires, and Medical Waste: A New Report Highlights Health Risks of Lebanon''s Trash Crisis', '"When they burn we can’t breathe […] We’ve had to go to the hospital because of this."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/1-crop-1513239638970-crop-1513241174547-1513304368398.png', 0, NULL, '2017-12-15 20:18:28', '2017-12-15 20:18:28', NULL),
(70, 'Russian Atomic Regulator''s Foray into Meme-Making Fails to Quench Rumors of Nuclear Leaks', '"No one is chastising Ruthemium, or even Ruthenium-106. They’re chastising Rosatom for contradictory information and for jokes like this instead of a serious investigation into the accident."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513242715273-1513242715273-1513245181024.jpg', 0, NULL, '2017-12-15 20:19:12', '2017-12-15 20:19:12', NULL),
(71, 'In China, Skepticism Surrounding Police Investigation of Kindergarten Child Abuse Is Censored', '"In a matter of a few minutes, thousands of questions popped up...Then in a matter of a few seconds, all the comments vanished and the comment function was closed."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513260327465-1513260327466-1513304033550.jpg', 0, NULL, '2017-12-15 20:19:52', '2017-12-15 20:19:52', NULL);
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(72, 'Russians Are Unimpressed With the 2018 Presidential Election Logo (and Have Ideas for Improvement)', 'So far, the logo challenge has been the most exciting part of the campaign where Putin is expected to run and win even by his most vocal opponents.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/ap663991123816-1512965310455-158-0-717-1063-crop-1512965540738-1513223645767.jpg', 0, NULL, '2017-12-15 20:20:33', '2017-12-15 20:20:33', NULL),
(73, 'Weaving Objects of Loss and Memory With Hayv Kahraman', 'Kahraman’s new work is a masterful exploration of the issues of identity, personal struggle, and human consciousness.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/hop-bao-cong-bo-luat-1513233096066-22-38-1025-1822-crop-1513233126758-1513238795115.jpg', 1, NULL, '2017-12-15 20:21:12', '2018-03-13 19:46:41', NULL),
(74, 'This Brazilian Doctor Says Science Has Evolved, but Stigma Against HIV Remains', '"The voices of people living with HIV are neglected by the media, which often portrays them as victims, or examples not to be followed, under the auspices of promoting prevention"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo1513161216143-1513161216143-1513245588651.jpg', 0, NULL, '2017-12-15 20:23:19', '2017-12-15 20:23:19', NULL),
(75, 'Scrutiny and Doubt Over Rape Victim''s Testimony Sparks Outrage in Spain', '"Not content with raping us, men also have to tell us how to behave before, during and after the rape."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/cho-va-nhan-1513183414909.jpg', 1, NULL, '2017-12-15 20:24:18', '2017-12-17 18:37:49', NULL),
(76, 'After Authorities Evict Beijing''s ‘Low-End’ Residents, Chinese Ask: Where Is the Humanity?', 'Just as rural migrant workers were forced out of their dwellings into the streets, Beijing’s temperature fell to below 0 degrees Celsius at night.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/2copypsov-1513383877882-1.jpg', 0, NULL, '2017-12-15 20:24:52', '2017-12-15 20:24:52', NULL),
(77, 'Found in Translation: Local Publisher Brings Alive the Story of a Somali Olympian and Refugee for Macedonian Readers', 'The graphic novel "An Olympic Dream" -- a biography of a runner who perished while trying to cross the Mediterranean Sea as a refugee -- was published in Macedonia in', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/howtostart750x348-1513336577023.jpg', 0, NULL, '2017-12-15 20:25:38', '2017-12-15 20:25:38', NULL),
(78, 'In Egypt, Both Sexual Harassment and Child Marriages Continue to Plague the Country', '"Sexual harassment is a major problem in Egypt. Studies show that large majorities of women have been subjected to it [...] And the problem is deeply rooted."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/photo-3-1513331298468.jpg', 2, NULL, '2017-12-15 20:26:27', '2017-12-21 18:41:45', NULL),
(79, 'Đây là top 10 công nghệ y tế đột phá nhất năm 2017, mở ra tương lai mới cho loài người', '"100 sáng kiến đột phá nhất năm 2017" là danh sách thường niên thứ 30 của Popular Science, liệt kê những công nghệ đổi mới nhất trong nhiều lĩnh vực như tự động hóa, kỹ thuật, giải trí, bảo mật', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider.jpg', 1, NULL, '2017-12-16 17:53:53', '2017-12-16 17:56:46', NULL),
(80, 'Tôi đã tìm ra cách làm việc hiệu quả nhìn từ phương pháp sạc pin điện thoại như thế nào?', 'Đôi khi, các thiết bị công nghệ lại có thể đem đến cho chúng ta những bài học quý giá cho cuộc sống "thật" hàng ngày.', '<p>Người ta n&eacute; tr&aacute;nh nhắc đến Ch&uacute;a Kito khi n&oacute;i đến mốc lịch sử bằng c&aacute;ch n&oacute;i Trước c&ocirc;ng nguy&ecirc;n v&agrave; sau c&ocirc;ng nguy&ecirc;n. Nhưng nguy&ecirc;n tiếng anh: Before Chirst, After Chirst &ndash; trước Ch&uacute;a Kito, sau Ch&uacute;a Kito &ndash; người ta sợ lịch sử của Kito gi&aacute;o. Đ&oacute; l&agrave; lời chia sẻ của cha đặc tr&aacute;ch Gioan trong Th&aacute;nh lễ thường k&igrave; Cộng đo&agrave;n sinh vi&ecirc;n C&ocirc;ng gi&aacute;o y dược v&agrave;o l&uacute;c 19h15&rsquo;, ng&agrave;y 11.05.2017 tại đền th&aacute;nh Gierado, Gi&aacute;o xứ Th&aacute;i H&agrave;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Khởi đầu b&agrave;i giảng của m&igrave;nh cha n&oacute;i đến một trong những kh&oacute; khăn lớn nhất Gi&aacute;o Hội n&oacute;i chung v&agrave; người t&iacute;n hữu n&oacute;i ri&ecirc;ng đ&oacute; ch&iacute;nh l&agrave; niềm tin v&agrave;o Thi&ecirc;n Ch&uacute;a. Ch&iacute;nh khủng hoảng niềm tin g&acirc;y n&ecirc;n chiến tranh, g&acirc;y n&ecirc;n th&ugrave; hận v&agrave; chết ch&oacute;c. L&ograve;ng tin kh&ocirc;ng chỉ ảnh hưởng l&ecirc;n c&aacute; nh&acirc;n m&agrave; th&ocirc;i nhưng l&ecirc;n to&agrave;n thế giới. H&ocirc;m nay, Ch&uacute;a cho ch&uacute;ng ta thấy l&ograve;ng tin l&agrave; khởi đầu, l&agrave; mấu chốt để con người đứng vững giữa trăm chiều thử th&aacute;ch.</p>\r\n\r\n<p>Hai b&agrave;i đọc h&ocirc;m nay đều đi từ lịch sử, Ch&uacute;a Giesu ti&ecirc;n b&aacute;o kẻ sẽ nộp thầy. Ng&agrave;i chọn Giuda kh&ocirc;ng phải chọn nhầm, nhưng Ng&agrave;i n&oacute;i r&otilde; trong b&agrave;i Tin Mừng rằng lời kinh th&aacute;nh phải được ứng nghiệm: &ldquo;Kẻ giơ tay chấm chung một đĩa với con lại giơ g&oacute;t đạp con&rdquo;. Trong b&agrave;i đọc một, Phaolo n&oacute;i về Đavit để ứng nghiệm lời Kinh th&aacute;nh đ&atilde; n&oacute;i, để anh chị em Do th&aacute;i nhận ra được lời ti&ecirc;n b&aacute;o qua lịch sử l&agrave; ch&uacute;a Giesu.</p>\r\n\r\n<p>Để c&oacute; được l&ograve;ng tin nơi con người, Ch&uacute;a Giesu đ&atilde; khai m&agrave;o trong một chương tr&igrave;nh lịch sử d&agrave;i tập. Lịch sử Cựu ước loan b&aacute;o đ&uacute;ng với những g&igrave; đ&atilde; xảy ra với Ch&uacute;a Giesu Kito. Một triết gia người Ph&aacute;p n&oacute;i rằng: &ldquo;Kito gi&aacute;o c&oacute; một nền tảng đức tin vững chắc đ&oacute; l&agrave; lịch sử, nhưng Kito gi&aacute;o qu&ecirc;n đi điểm quan trọng n&agrave;y v&agrave; ng&agrave;y nay đi nặng về ph&iacute;a thần học&rdquo;.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Cha nhắc lại: Kito Gi&aacute;o cắm rễ s&acirc;u, trải d&agrave;i v&agrave; được ứng nghiệm trong lịch sử th&aacute;nh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nh&igrave;n lại lịch sử, c&aacute;c ng&agrave;y lễ x&atilde; hội, ng&agrave;y nghỉ&hellip; đều li&ecirc;n quan đến Kito gi&aacute;o v&agrave; xuất ph&aacute;t từ Kito gi&aacute;o.</p>\r\n\r\n<p>Cha n&oacute;i đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm l&agrave; một biến cố lịch sử c&oacute; thời gian, kh&ocirc;ng gian, nh&acirc;n vật v&agrave; sứ điệp cụ thể kh&ocirc;ng phải con người tự dụng n&ecirc;n hay hoang tưởng.</p>\r\n\r\n<p>Niềm tin của mỗi ch&uacute;ng ta phải dựa v&agrave;o lịch sử chứ kh&ocirc;ng phải mơ hồ. Khi nh&igrave;n lại qu&aacute; khứ ta biết rằng l&ograve;ng tin đ&oacute; đ&atilde; được Thi&ecirc;n Ch&uacute;a khai m&agrave;o từ rất sớm. C&aacute;c th&aacute;nh T&ocirc;ng đồ đ&atilde; đứng tr&ecirc;n b&igrave;nh diện lịch sự để minh chứng niềm tin của con người v&agrave;o Giave Thi&ecirc;n Ch&uacute;a.</p>\r\n\r\n<p>Nhiều người thời nay biết lịch sử nhưng kh&ocirc;ng biết Ch&uacute;a Kito l&agrave; ai v&igrave; họ n&eacute; tr&aacute;nh Ch&uacute;a Giesu. Ch&uacute;a Giesu đi v&agrave;o lịch sử để tỏ cho con người c&ugrave;ng đ&iacute;ch của sự sống l&agrave; g&igrave; v&agrave; Thi&ecirc;n Ch&uacute;a l&agrave; ai c&ugrave;ng những lời ti&ecirc;n b&aacute;o để củng cố l&ograve;ng tin cho con người.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider2.jpg', 1, NULL, '2017-12-16 17:56:23', '2017-12-16 18:07:16', NULL),
(81, 'The Hypocrisy of the Philippines National Police Human Rights Mobile App', '"The ‘Know Your Rights’ app is a perfect example of hypocrisy because the only application that is known to the PNP is the application of torture..."', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider2.jpg', 2, NULL, '2017-12-18 18:43:36', '2018-01-25 07:45:40', NULL),
(82, 'Initiatives for Environmental Activism Take Off in Cuba', 'The Center for Education and Promotion for Sustainable Development is a commitment to participatory environmental management and political ecology in Cuba.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt="" src="http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg" type="image" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 1, 1, 0, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider.jpg', 2, NULL, '2017-12-18 18:44:57', '2018-01-25 07:48:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE IF NOT EXISTS `post_category` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 1, '2017-12-15 08:57:08', '2017-12-15 08:57:08', NULL),
(6, 1, 2, '2017-12-15 08:57:14', '2017-12-15 08:57:14', NULL),
(7, 17, 3, '2017-12-15 08:57:21', '2017-12-15 08:57:21', NULL),
(8, 19, 4, '2017-12-15 09:02:02', '2017-12-15 09:02:02', NULL),
(9, 20, 5, '2017-12-15 09:03:39', '2017-12-15 09:03:39', NULL),
(15, 11, 6, '2017-12-15 09:38:55', '2017-12-15 09:38:55', NULL),
(20, 1, 10, '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(21, 1, 11, '2017-12-15 17:48:59', '2017-12-15 17:48:59', NULL),
(22, 1, 12, '2017-12-15 17:50:05', '2017-12-15 17:50:05', NULL),
(23, 1, 13, '2017-12-15 17:51:00', '2017-12-15 17:51:00', NULL),
(26, 2, 14, '2017-12-15 17:54:05', '2017-12-15 17:54:05', NULL),
(27, 2, 15, '2017-12-15 17:55:22', '2017-12-15 17:55:22', NULL),
(28, 2, 16, '2017-12-15 17:56:27', '2017-12-15 17:56:27', NULL),
(29, 2, 17, '2017-12-15 17:57:25', '2017-12-15 17:57:25', NULL),
(30, 2, 18, '2017-12-15 17:58:24', '2017-12-15 17:58:24', NULL),
(31, 2, 19, '2017-12-15 17:59:23', '2017-12-15 17:59:23', NULL),
(32, 3, 20, '2017-12-15 18:00:51', '2017-12-15 18:00:51', NULL),
(33, 3, 21, '2017-12-15 18:02:05', '2017-12-15 18:02:05', NULL),
(34, 3, 22, '2017-12-15 18:03:27', '2017-12-15 18:03:27', NULL),
(35, 3, 23, '2017-12-15 18:06:16', '2017-12-15 18:06:16', NULL),
(36, 3, 24, '2017-12-15 18:07:36', '2017-12-15 18:07:36', NULL),
(37, 3, 25, '2017-12-15 18:08:31', '2017-12-15 18:08:31', NULL),
(40, 4, 8, '2017-12-15 18:10:02', '2017-12-15 18:10:02', NULL),
(41, 13, 8, '2017-12-15 18:10:02', '2017-12-15 18:10:02', NULL),
(42, 4, 7, '2017-12-15 18:10:13', '2017-12-15 18:10:13', NULL),
(43, 9, 7, '2017-12-15 18:10:13', '2017-12-15 18:10:13', NULL),
(44, 4, 26, '2017-12-15 18:11:26', '2017-12-15 18:11:26', NULL),
(45, 4, 27, '2017-12-15 18:12:24', '2017-12-15 18:12:24', NULL),
(46, 4, 28, '2017-12-15 18:13:10', '2017-12-15 18:13:10', NULL),
(47, 5, 29, '2017-12-15 18:14:26', '2017-12-15 18:14:26', NULL),
(48, 5, 30, '2017-12-15 18:15:21', '2017-12-15 18:15:21', NULL),
(49, 5, 31, '2017-12-15 18:16:22', '2017-12-15 18:16:22', NULL),
(50, 5, 32, '2017-12-15 18:17:08', '2017-12-15 18:17:08', NULL),
(51, 5, 33, '2017-12-15 18:18:04', '2017-12-15 18:18:04', NULL),
(52, 5, 34, '2017-12-15 18:19:00', '2017-12-15 18:19:00', NULL),
(53, 13, 35, '2017-12-15 18:20:12', '2017-12-15 18:20:12', NULL),
(54, 13, 36, '2017-12-15 18:21:34', '2017-12-15 18:21:34', NULL),
(55, 13, 37, '2017-12-15 18:22:27', '2017-12-15 18:22:27', NULL),
(56, 13, 38, '2017-12-15 18:23:29', '2017-12-15 18:23:29', NULL),
(57, 13, 39, '2017-12-15 18:24:19', '2017-12-15 18:24:19', NULL),
(62, 29, 42, '2017-12-15 19:22:02', '2017-12-15 19:22:02', NULL),
(63, 29, 43, '2017-12-15 19:23:12', '2017-12-15 19:23:12', NULL),
(64, 30, 44, '2017-12-15 19:24:24', '2017-12-15 19:24:24', NULL),
(75, 6, 49, '2017-12-15 19:47:36', '2017-12-15 19:47:36', NULL),
(76, 6, 50, '2017-12-15 19:48:29', '2017-12-15 19:48:29', NULL),
(77, 6, 51, '2017-12-15 19:49:55', '2017-12-15 19:49:55', NULL),
(78, 6, 52, '2017-12-15 19:50:54', '2017-12-15 19:50:54', NULL),
(79, 7, 53, '2017-12-15 19:53:37', '2017-12-15 19:53:37', NULL),
(80, 7, 54, '2017-12-15 19:54:52', '2017-12-15 19:54:52', NULL),
(81, 7, 55, '2017-12-15 19:56:19', '2017-12-15 19:56:19', NULL),
(82, 7, 56, '2017-12-15 19:57:04', '2017-12-15 19:57:04', NULL),
(83, 7, 57, '2017-12-15 19:57:41', '2017-12-15 19:57:41', NULL),
(84, 7, 58, '2017-12-15 19:58:18', '2017-12-15 19:58:18', NULL),
(85, 8, 59, '2017-12-15 19:59:28', '2017-12-15 19:59:28', NULL),
(86, 8, 60, '2017-12-15 20:02:49', '2017-12-15 20:02:49', NULL),
(87, 8, 61, '2017-12-15 20:04:43', '2017-12-15 20:04:43', NULL),
(88, 8, 62, '2017-12-15 20:07:22', '2017-12-15 20:07:22', NULL),
(89, 8, 63, '2017-12-15 20:08:12', '2017-12-15 20:08:12', NULL),
(95, 8, 64, '2017-12-15 20:12:05', '2017-12-15 20:12:05', NULL),
(96, 9, 65, '2017-12-15 20:13:58', '2017-12-15 20:13:58', NULL),
(97, 9, 66, '2017-12-15 20:15:24', '2017-12-15 20:15:24', NULL),
(98, 9, 67, '2017-12-15 20:16:04', '2017-12-15 20:16:04', NULL),
(99, 10, 68, '2017-12-15 20:17:31', '2017-12-15 20:17:31', NULL),
(100, 10, 69, '2017-12-15 20:18:28', '2017-12-15 20:18:28', NULL),
(101, 10, 70, '2017-12-15 20:19:12', '2017-12-15 20:19:12', NULL),
(102, 10, 71, '2017-12-15 20:19:52', '2017-12-15 20:19:52', NULL),
(103, 10, 72, '2017-12-15 20:20:33', '2017-12-15 20:20:33', NULL),
(104, 10, 73, '2017-12-15 20:21:12', '2017-12-15 20:21:12', NULL),
(105, 23, 74, '2017-12-15 20:23:19', '2017-12-15 20:23:19', NULL),
(107, 23, 76, '2017-12-15 20:24:52', '2017-12-15 20:24:52', NULL),
(108, 23, 77, '2017-12-15 20:25:38', '2017-12-15 20:25:38', NULL),
(109, 23, 78, '2017-12-15 20:26:27', '2017-12-15 20:26:27', NULL),
(110, 6, 41, '2017-12-15 20:27:47', '2017-12-15 20:27:47', NULL),
(111, 23, 41, '2017-12-15 20:27:47', '2017-12-15 20:27:47', NULL),
(112, 6, 40, '2017-12-15 22:18:36', '2017-12-15 22:18:36', NULL),
(115, 17, 79, '2017-12-16 17:56:46', '2017-12-16 17:56:46', NULL),
(116, 13, 80, '2017-12-16 18:07:16', '2017-12-16 18:07:16', NULL),
(117, 23, 75, '2017-12-17 18:37:49', '2017-12-17 18:37:49', NULL),
(118, 23, 81, '2017-12-18 18:43:36', '2017-12-18 18:43:36', NULL),
(119, 21, 82, '2017-12-18 18:44:57', '2017-12-18 18:44:57', NULL),
(120, 4, 9, '2017-12-22 08:59:46', '2017-12-22 08:59:46', NULL),
(121, 14, 9, '2017-12-22 08:59:46', '2017-12-22 08:59:46', NULL),
(122, 9, 46, '2017-12-22 09:00:06', '2017-12-22 09:00:06', NULL),
(123, 4, 47, '2017-12-22 09:00:37', '2017-12-22 09:00:37', NULL),
(124, 24, 47, '2017-12-22 09:00:37', '2017-12-22 09:00:37', NULL),
(125, 4, 48, '2017-12-22 09:00:53', '2017-12-22 09:00:53', NULL),
(126, 9, 48, '2017-12-22 09:00:53', '2017-12-22 09:00:53', NULL),
(129, 9, 45, '2017-12-22 09:05:36', '2017-12-22 09:05:36', NULL),
(130, 22, 45, '2017-12-22 09:05:36', '2017-12-22 09:05:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10, '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(2, 2, 10, '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(3, 3, 10, '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(4, 4, 40, '2017-12-15 22:18:36', '2017-12-15 22:18:36', NULL),
(5, 5, 40, '2017-12-15 22:18:36', '2017-12-15 22:18:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE IF NOT EXISTS `request_logs` (
  `id` int(10) unsigned NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(5, 404, 'http://lara-mag.local/images/favicon.png', 4, NULL, NULL, '2018-07-17 01:58:33', '2018-07-17 01:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE IF NOT EXISTS `revisions` (
  `id` int(10) unsigned NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', NULL, 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/5.jpg', '2017-12-13 18:04:53', '2017-12-13 18:04:53'),
(2, 'Botble\\Blog\\Models\\Post', 1, 1, 'featured', '0', '1', '2017-12-15 08:57:08', '2017-12-15 08:57:08'),
(3, 'Botble\\Blog\\Models\\Post', 2, 1, 'featured', '0', '1', '2017-12-15 08:57:14', '2017-12-15 08:57:14'),
(4, 'Botble\\Blog\\Models\\Post', 3, 1, 'featured', '0', '1', '2017-12-15 08:57:21', '2017-12-15 08:57:21'),
(5, 'Botble\\Blog\\Models\\Post', 7, 1, 'format_type', NULL, 'video', '2017-12-15 09:42:42', '2017-12-15 09:42:42'),
(6, 'Botble\\Blog\\Models\\Post', 14, 1, 'description', 'Hai khu phố nhà giàu ở Sài Gòn đã chuẩn bị đón Noel bằng những ánh sáng lung linh nhiều màu sắc. Mặc dù nằm ở nơi ít người qua lại, nhưng để căn biệt thự của mình được rực rỡ ánh sáng, nhiều chủ nhà đã đầu tư gần cả trăm triệu', 'Hai khu phố nhà giàu ở Sài Gòn đã chuẩn bị đón Noel bằng những ánh sáng lung linh nhiều màu sắc. Mặc dù nằm ở nơi ít người qua lại, nhưng để căn biệt thự của mình được rực rỡ ánh sáng', '2017-12-15 17:53:45', '2017-12-15 17:53:45'),
(7, 'Botble\\Blog\\Models\\Post', 40, 1, 'featured', '0', '1', '2017-12-15 19:14:50', '2017-12-15 19:14:50'),
(8, 'Botble\\Blog\\Models\\Post', 42, 1, 'featured', '0', '1', '2017-12-15 19:22:02', '2017-12-15 19:22:02'),
(9, 'Botble\\Blog\\Models\\Post', 48, 1, 'image', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/q-1513240612690.png', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/104891350-rtr3kh141910x1000-1513307430794.jpg', '2017-12-15 19:44:14', '2017-12-15 19:44:14'),
(10, 'Botble\\Blog\\Models\\Post', 79, 1, 'image', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/sliders/slider.jpg', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider.jpg', '2017-12-16 17:56:46', '2017-12-16 17:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'administrator', 'Administrator', '{"analytics.general":true,"analytics.page":true,"analytics.browser":true,"analytics.referrer":true,"categories.list":true,"categories.create":true,"categories.edit":true,"categories.delete":true,"dashboard.index":true,"facebook.settings":true,"galleries.list":true,"galleries.create":true,"galleries.edit":true,"galleries.delete":true,"logs.list":true,"logs.delete":true,"media.index":true,"files.list":true,"files.create":true,"files.edit":true,"files.trash":true,"files.delete":true,"folders.list":true,"folders.create":true,"folders.edit":true,"folders.trash":true,"folders.delete":true,"menus.list":true,"menus.create":true,"menus.edit":true,"menus.delete":true,"pages.list":true,"pages.create":true,"pages.edit":true,"pages.delete":true,"plugins.list":true,"posts.list":true,"posts.create":true,"posts.edit":true,"posts.delete":true,"roles.list":true,"roles.create":true,"roles.edit":true,"roles.delete":true,"settings.options":true,"simple-slider.list":true,"simple-slider.create":true,"simple-slider.edit":true,"simple-slider.delete":true,"tags.list":true,"tags.create":true,"tags.edit":true,"tags.delete":true,"translations.list":true,"translations.create":true,"translations.edit":true,"translations.delete":true,"users.list":true,"users.create":true,"users.edit":true,"users.delete":true,"widgets.list":true}', 'The highest role in the system', 1, 1, 1, '2017-12-16 23:34:15', '2018-03-14 21:49:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE IF NOT EXISTS `role_users` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'social_utilities_enable', '1', NULL, NULL),
(2, 'social_utilities_facebook_url', 'botble.technologies', NULL, NULL),
(22, 'theme', 'lara-mag', NULL, NULL),
(42, 'rich_editor', 'ckeditor', NULL, NULL),
(43, 'site_title', 'Lara Mag', NULL, NULL),
(44, 'admin_email', 'minhsang2603@gmail.com', NULL, NULL),
(45, 'show_admin_bar', '1', NULL, NULL),
(46, 'enable_change_admin_theme', '1', NULL, NULL),
(47, 'enable_multi_language_in_admin', '1', NULL, NULL),
(61, 'enable_captcha', '0', NULL, NULL),
(62, 'cache_time', '10', NULL, NULL),
(63, 'cache_time_site_map', '3600', NULL, NULL),
(64, 'enable_cache', '0', NULL, NULL),
(65, 'language_hide_default', '1', NULL, NULL),
(66, 'language_display', 'all', NULL, NULL),
(67, 'language_switcher_display', 'dropdown', NULL, NULL),
(68, 'language_hide_languages', '[]', NULL, NULL),
(69, 'facebook_enable', '1', NULL, NULL),
(71, 'facebook_add_script', '1', NULL, NULL),
(72, 'facebook_use_comments', '1', NULL, NULL),
(73, 'facebook_show_chat_box', '1', NULL, NULL),
(74, 'facebook_chat_title', 'Chat via messenger', NULL, NULL),
(75, 'facebook_chat_width', '300', NULL, NULL),
(76, 'facebook_chat_height', '400', NULL, NULL),
(77, 'facebook_chat_small_header', 'true', NULL, NULL),
(78, 'facebook_chat_adapt_container_width', 'true', NULL, NULL),
(79, 'facebook_chat_hide_cover', 'false', NULL, NULL),
(80, 'facebook_chat_show_facepile', 'true', NULL, NULL),
(81, 'facebook_chat_show_posts', 'true', NULL, NULL),
(85, 'theme-lara-mag-copyright', '© 2017 Botble Technologies. All right reserved. Designed by HuyDev', NULL, NULL),
(100, 'theme-lara-mag-banner-ads', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/ads/728x90.jpg', NULL, NULL),
(101, 'theme-lara-mag-banner-link', '#', NULL, NULL),
(103, 'theme-lara-mag-banner-new-tab', '1', NULL, NULL),
(108, 'facebook_access_token', 'EAAY5ksLpSd0BAHd7BaImrDljQZC3N2akqeHPbcLj8EY3KnKfAtfbOFhCkjloaOZCIsADylcBWmC31RZAvaJotpGt8cQWZCdxnZBbFQRWNt5QHH6JXi4je4cgRpEdRp1gShTLgHhyyGVuhoHxz0BeToHb98MMLzZBma3cO9UA8tEQZDZD', NULL, NULL),
(110, 'facebook_token_expire_date', '1518917892', NULL, NULL),
(111, 'facebook_page_id', '1006245246061685', NULL, NULL),
(113, 'admin_logo', '/vendor/core/images/logo_white.png', NULL, NULL),
(114, 'admin_title', 'Botble Technologies', NULL, NULL),
(127, 'google_analytics', 'UA-42586526-15', NULL, NULL),
(128, 'analytics_view_id', '125311257', NULL, NULL),
(129, 'analytics_service_account_credentials', '{\r\n  "type": "service_account",\r\n  "project_id": "botble-cms",\r\n  "private_key_id": "f40c1c44478ec4161e141731f2289639b0292500",\r\n  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCm5eDiIW363mtW\\na/omcDTBkMvJLGwrkslsza0mod3Z1OhBmTEPNKYXznlcguzWqg/i8mJJ+pxjt4AT\\nHyunwjTnw8bDjcawH9jH7jbNTPx1ZNlRjXL8e19k/TG09LfJ4jnX0ZbHNZGZCU3l\\nzNKD0pynhR/X+R634YzYN2P9aIG+7Fd8YmswLmvRub2QUC28m3wmJzsKP3hyAzYy\\nixP2ebAfyB0/H4SmODEliznqRD/WDWwqpUDaiMYhX0I+xF8bvzdot+4BmTZ+KCLj\\n+9kE+MHxLWNXjER+n8wCDjQSTQjyQHY0NVanNS7g6qJLZNo99q3BF52zoZVdD5Ee\\nloOjjQBXAgMBAAECggEAG3sIb1N/z2nmFKHM251oImMcGvDUkswlnGO1WgIXDHIR\\nGBQITu+lVZAqzX/FTYdM/FpassGwFH83eG6Oep3wpiTHSpXCnGdyA2GG5oEBpLbJ\\nTbNTtpz91RwXnisZRAWa7p1VDVIVujQc/nSeSRRZtP+ngaFEXJSn40YjkasuiegO\\nXETgRlF3fSlVZmPd3kGy1Bq9MAfp2iylbM/pwrKCKJk9ZQUmIciTU1eQ6mqxI3/x\\nEyarQ74Vc6RQ/wZxMbAJcLPHYWJgdZvSr8VUvvOeCgDGP8jyjP2/f2CnEZBPNpoO\\nknISU/s4y7pBwu+FTVz82Ac+XokGznHTNsap7JaPUQKBgQDT7UqxxkjoSfTqvaTF\\nxX7mD7jkOwt4X+IitNWUYy1s1QVPOCMl7CxM+xyDd99auJV8HuhBfJESz8KSXnen\\nv3ICCGVmAIHcAoNoopPJvzwXTu95eC6oV2pJmtc1s9a7eeSxBvjjc2WAjPdSppPV\\nfzb9sX5ZqQHQNWh43nlRfnnM6QKBgQDJm039nTFcwFRunxy0CyUBj0PR2ENaJZIU\\nnnB5IcBAFjpM0rXKAYIshjid9vJMJEBjLHWCQ2+8k9RsCuucYkZBJjfpXI0Mn3WO\\n7B7D/bpFS8xFq0m4w98rBtKh/BJoim3qID5+34I6p0osxAel5sNuXskbSjGRBfNN\\neL6wTN8bPwKBgHlknzidv/1u/5/G6a9vpXTa5Km3OKbHJZ2DwCOze72vd88c9OUw\\nF2AxJvAXphUtTlM+0QNR+zevUmDNQ/UOsJuBe7Ol7ry7o9I37jfOFvmy+XG26eL7\\nz6JB06yrSwEwnVLaD48Z9rZgCPuK93t/11wSY7GwIZ3GOgWiShPoQpShAoGAGXid\\nqeUqT2WdRTylC7o8uq23C9Qe7kzA4AoEe8lf2Lj2NK6KeTMnlyh+DrccdbI+0EjV\\nr9eFTnX+6IeYrPFdnu2NMtaWm3mqCJycZnawCgFBlavGbKmSkIUUJ5MJYFvc9y+L\\ntcvXUEHChVVfAf7dwhwHnIMLMB9oVeljbjLIHVECgYEAulBNrt+dIFnXNYrPhvY1\\nJ+Hx444lPIO7XnVrN7Q8d+stBk4CtbU3nPYkIiaV8uucgE5ZSxVG5Fef2clSbjOk\\n3wmltVSXSs21s40Ti8XKzvgg1QUrNLIQbHA3xoa5qFiFtxwV+m+IUZKvZmNj1y3l\\nbHAjWQ4Sj+EM1MXMrrEGZP0=\\n-----END PRIVATE KEY-----\\n",\r\n  "client_email": "botble-cms@botble-cms.iam.gserviceaccount.com",\r\n  "client_id": "113101231196374159892",\r\n  "auth_uri": "https://accounts.google.com/o/oauth2/auth",\r\n  "token_uri": "https://accounts.google.com/o/oauth2/token",\r\n  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",\r\n  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/botble-cms%40botble-cms.iam.gserviceaccount.com"\r\n}', NULL, NULL),
(130, 'activated_plugins', '["translation","note","gallery","captcha","audit-log","analytics","blog","facebook","log-viewer","simple-slider","language","request-log","contact","backup"]', NULL, NULL),
(131, 'show_on_front', NULL, NULL, NULL),
(132, 'time_zone', 'UTC', NULL, NULL),
(133, 'optimize_page_speed_enable', '0', NULL, NULL),
(134, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(135, 'default_admin_theme', 'default', NULL, NULL),
(136, 'seo_title', NULL, NULL, NULL),
(137, 'seo_description', NULL, NULL, NULL),
(138, 'google_site_verification', NULL, NULL, NULL),
(139, 'cache_admin_menu_enable', '1', NULL, NULL),
(140, 'captcha_site_key', NULL, NULL, NULL),
(141, 'captcha_secret', NULL, NULL, NULL),
(142, 'simple_slider_using_assets', '1', NULL, NULL),
(143, 'backup_mysql_execute_path', '/Applications/AMPPS/mysql/bin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE IF NOT EXISTS `simple_sliders` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sliders trang chủ', 'home-slider', 'Sliders hiển thị trên trang chủ', 1, '2018-04-09 18:18:56', '2018-04-10 20:13:13'),
(2, 'Homepage sliders', 'home-slider', 'Sliders are shown on homepage', 1, '2018-04-10 20:13:39', '2018-04-10 20:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE IF NOT EXISTS `simple_slider_items` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `simple_slider_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `title`, `image`, `link`, `description`, `simple_slider_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Đây là top 10 công nghệ y tế đột phá nhất năm 2017, mở ra tương lai mới cho loài người', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider.jpg', 'https://lara-mag.botble.com/day-la-top-10-cong-nghe-y-te-dot-pha-nhat-nam-2017-mo-ra-tuong-lai-moi-cho-loai-nguoi', '"100 sáng kiến đột phá nhất năm 2017" là danh sách thường niên thứ 30 của Popular Science, liệt kê những công nghệ đổi mới nhất trong nhiều lĩnh vực như tự động hóa, kỹ thuật, giải trí, bảo mật… Danh sách năm nay bắt đầu với mảng y tế và chăm sóc sức khỏe.', 1, 0, '2017-12-16 17:44:31', '2017-12-16 17:57:35'),
(2, 'Tôi đã tìm ra cách làm việc hiệu quả nhìn từ phương pháp sạc pin điện thoại như thế nào?', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider2.jpg', 'https://lara-mag.botble.com/toi-da-tim-ra-cach-lam-viec-hieu-qua-nhin-tu-phuong-phap-sac-pin-dien-thoai-nhu-the-nao', 'Đôi khi, các thiết bị công nghệ lại có thể đem đến cho chúng ta những bài học quý giá cho cuộc sống "thật" hàng ngày.', 1, 0, '2017-12-16 17:57:23', '2017-12-16 17:57:23'),
(3, 'The Hypocrisy of the Philippines National Police Human Rights Mobile App', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider2.jpg', 'https://lara-mag.botble.com/the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', '"The ‘Know Your Rights’ app is a perfect example of hypocrisy because the only application that is known to the PNP is the application of torture..."', 2, 0, '2017-12-18 18:43:32', '2017-12-18 18:43:32'),
(4, 'Initiatives for Environmental Activism Take Off in Cuba', 'https://s3-ap-southeast-1.amazonaws.com/botble/lara-mag/news/slider.jpg', 'https://lara-mag.botble.com/initiatives-for-environmental-activism-take-off-in-cuba', 'The Center for Education and Promotion for Sustainable Development is a commitment to participatory environmental management and political ecology in Cuba.', 2, 0, '2017-12-18 18:44:33', '2017-12-18 18:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE IF NOT EXISTS `slugs` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1513128272', 1, 'menu', '2017-12-12 17:33:59', '2017-12-12 18:24:32', NULL),
(2, 'lien-he', 1, 'page', '2017-12-12 18:10:14', '2017-12-16 09:56:34', NULL),
(3, 've-chung-toi', 2, 'page', '2017-12-12 18:12:49', '2017-12-12 18:12:49', NULL),
(4, 'gioi-thieu', 3, 'page', '2017-12-12 18:13:36', '2017-12-12 18:13:36', NULL),
(5, '1513128288', 2, 'menu', '2017-12-12 18:14:04', '2017-12-12 18:24:48', NULL),
(6, 'contact', 4, 'page', '2017-12-12 18:15:57', '2017-12-12 18:15:57', NULL),
(7, 'about-us', 5, 'page', '2017-12-12 18:18:14', '2017-12-12 18:18:14', NULL),
(8, 'introduction', 6, 'page', '2017-12-12 18:19:48', '2017-12-12 18:19:48', NULL),
(9, 'kham-pha', 1, 'category', '2017-12-12 18:26:20', '2017-12-12 18:26:20', NULL),
(10, 'la-cool', 2, 'category', '2017-12-12 18:27:12', '2017-12-12 18:27:12', NULL),
(11, 'the-thao-khac', 3, 'category', '2017-12-12 18:27:30', '2017-12-12 18:27:30', NULL),
(12, 'chuyen-muc-video', 4, 'category', '2017-12-12 18:28:00', '2017-12-12 18:28:00', NULL),
(13, 'bong-da', 5, 'category', '2017-12-12 18:28:24', '2017-12-12 18:28:24', NULL),
(14, '1513128846', 3, 'menu', '2017-12-12 18:29:01', '2017-12-12 18:34:06', NULL),
(15, '1513128838', 4, 'menu', '2017-12-12 18:29:22', '2017-12-12 18:33:58', NULL),
(16, 'discovery', 6, 'category', '2017-12-12 18:31:08', '2017-12-12 18:31:08', NULL),
(17, 'hot-cool', 7, 'category', '2017-12-12 18:31:44', '2017-12-12 18:31:44', NULL),
(18, 'other-sports', 8, 'category', '2017-12-12 18:32:03', '2017-12-12 18:32:03', NULL),
(19, 'video', 9, 'category', '2017-12-12 18:32:17', '2017-12-12 18:32:17', NULL),
(20, 'football', 10, 'category', '2017-12-12 18:32:35', '2017-12-12 18:32:35', NULL),
(21, '1513212884', 5, 'menu', '2017-12-13 17:54:17', '2017-12-13 17:54:44', NULL),
(23, 'nghi-pham-khai-sat-hai-da-man-nam-thanh-nien-roi-vut-xuong-song-de-danh-lac-huong-cong-an', 1, 'post', '2017-12-13 18:02:26', '2017-12-13 18:02:26', NULL),
(25, '1513214906', 8, 'menu', '2017-12-13 18:28:13', '2017-12-13 18:28:26', NULL),
(26, 'thoi-trang', 11, 'category', '2017-12-14 18:12:29', '2017-12-14 18:12:29', NULL),
(27, 'the-thao', 12, 'category', '2017-12-14 18:12:43', '2017-12-14 18:12:43', NULL),
(28, 'doi-song', 13, 'category', '2017-12-14 18:12:58', '2017-12-14 18:12:58', NULL),
(29, 'lam-dep', 14, 'category', '2017-12-14 18:13:15', '2017-12-14 18:13:15', NULL),
(30, 'tram-yeu', 15, 'category', '2017-12-14 18:13:48', '2017-12-14 18:13:48', NULL),
(31, 'hau-truong', 16, 'category', '2017-12-14 18:14:09', '2017-12-14 18:14:09', NULL),
(32, 'kinh-te', 17, 'category', '2017-12-14 18:14:39', '2017-12-14 18:14:39', NULL),
(33, 'phap-luat', 18, 'category', '2017-12-14 18:14:54', '2017-12-14 18:14:54', NULL),
(34, 'kinh-doanh', 19, 'category', '2017-12-14 18:15:18', '2017-12-14 18:15:18', NULL),
(35, 'giai-tri', 20, 'category', '2017-12-14 18:15:31', '2017-12-14 18:15:31', NULL),
(36, 'sport', 21, 'category', '2017-12-14 18:15:48', '2017-12-14 18:15:48', NULL),
(37, 'fashion', 22, 'category', '2017-12-14 18:16:38', '2017-12-14 18:16:38', NULL),
(38, 'life', 23, 'category', '2017-12-14 18:16:52', '2017-12-14 18:16:52', NULL),
(39, 'beautify', 24, 'category', '2017-12-14 18:17:41', '2017-12-14 18:17:41', NULL),
(40, 'love', 25, 'category', '2017-12-14 18:17:55', '2017-12-14 18:17:55', NULL),
(41, 'behind-the-scenes', 26, 'category', '2017-12-14 18:18:36', '2017-12-14 18:18:36', NULL),
(42, 'economy', 27, 'category', '2017-12-14 18:19:45', '2017-12-14 18:19:45', NULL),
(43, 'law', 28, 'category', '2017-12-14 18:20:10', '2017-12-14 18:20:10', NULL),
(44, 'business', 29, 'category', '2017-12-14 18:20:40', '2017-12-14 18:20:40', NULL),
(45, 'entertainment', 30, 'category', '2017-12-14 18:21:09', '2017-12-14 18:21:09', NULL),
(46, '1513301392', 9, 'menu', '2017-12-14 18:21:27', '2017-12-14 18:29:52', NULL),
(47, '1513301539', 10, 'menu', '2017-12-14 18:22:51', '2017-12-14 18:32:19', NULL),
(48, '1513301609', 11, 'menu', '2017-12-14 18:32:59', '2017-12-14 18:33:29', NULL),
(49, '1513301635', 12, 'menu', '2017-12-14 18:33:39', '2017-12-14 18:33:55', NULL),
(50, 'gia-mai-vang-tang-30-40-so-voi-nam-truoc', 2, 'post', '2017-12-15 08:55:08', '2017-12-15 08:55:08', NULL),
(51, 'xuat-khau-ca-ngu-sang-eu-se-tang-35-so-nam-2016', 3, 'post', '2017-12-15 08:56:38', '2017-12-15 08:56:38', NULL),
(52, 'tang-hang-chuc-phan-tram-chi-trong-thoi-gian-ngan-co-phieu-hang-khong-da-den-thoi-cat-canh', 4, 'post', '2017-12-15 09:02:02', '2017-12-15 09:02:02', NULL),
(53, 'van-don-quay-cuong-trong-con-sot-dat-chu-tich-tinh-quang-ninh-dua-ra-canh-bao-cho-nha-dau-tu', 5, 'post', '2017-12-15 09:03:39', '2017-12-15 09:03:39', NULL),
(54, 'pnj-vcs-vjc-tiep-tuc-pha-dinh-thi-truong-do-vo-xanh-long-trong-ngay-review-etfs', 6, 'post', '2017-12-15 09:22:36', '2017-12-15 09:22:36', NULL),
(55, 'khong-chi-sabeco-hang-loat-doanh-nghiep-lon-nhat-nhi-trong-nhieu-linh-vuc-tiem-nang-da-thuoc-quyen-kiem-soat-cua-nguoi-thai', 7, 'post', '2017-12-15 09:42:29', '2017-12-15 09:42:29', NULL),
(56, 'mt-gas-dung-hon-21-ty-dong-thang-du-von-co-phan-de-xoa-no-luy-ke', 8, 'post', '2017-12-15 09:44:10', '2017-12-15 09:44:10', NULL),
(57, 'day-la-so-tien-ban-co-neu-dau-tu-1000-usd-vao-bitcoin-tu-nam-2013', 9, 'post', '2017-12-15 09:45:34', '2017-12-15 09:45:34', NULL),
(58, 'con-loc-nha-dau-tu-thai', 10, 'post', '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(59, 'con-loc-nha-dau-tu-thai-1', 1, 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(60, 'con-loc-nha-dau-tu-thai-2', 2, 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(61, 'con-loc-nha-dau-tu-thai-3', 3, 'tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40', NULL),
(62, 'thap-gio-xuat-khau-vao-australia-bi-ket-luan-ban-pha-gia-bien-do-8', 11, 'post', '2017-12-15 17:48:59', '2017-12-15 17:48:59', NULL),
(63, 'phat-sot-voi-ngoi-nha-mini-chi-9m2-sieu-tien-nghi', 12, 'post', '2017-12-15 17:50:05', '2017-12-15 17:50:05', NULL),
(64, 'ha-noi-se-cat-giam-gan-8000-bien-che-nhu-the-nao', 13, 'post', '2017-12-15 17:51:00', '2017-12-15 17:51:00', NULL),
(65, 'chum-anh-nhung-chu-biet-thu-o-pho-nha-giau-sai-gon-dau-tu-ca-chuc-trieu-dong-trang-tri-noel', 14, 'post', '2017-12-15 17:52:32', '2017-12-15 17:52:32', NULL),
(66, 'khong-muon-cuoc-doi-bi-huy-hoai-day-la-8-viec-ai-cung-nen-xu-ly-cang-som-cang-tot', 15, 'post', '2017-12-15 17:55:22', '2017-12-15 17:55:22', NULL),
(67, '7-dieu-nho-nhat-gian-don-giup-cuoc-song-thoai-mai-hon', 16, 'post', '2017-12-15 17:56:27', '2017-12-15 17:56:27', NULL),
(68, 'lieu-ban-da-hanh-dong-dung-noi-cong-so-hay-kiem-tra-11-dau-hieu-sau', 17, 'post', '2017-12-15 17:57:25', '2017-12-15 17:57:25', NULL),
(69, '30-tuoi-da-thich-suong-va-an-nhan-ngung-co-gang-doi-ban-se-giong-nhu-mot-thanh-sat-gi', 18, 'post', '2017-12-15 17:58:24', '2017-12-15 17:58:24', NULL),
(70, 'khong-co-thoi-gian-toi-phong-gym-day-chinh-la-5-cach-giup-ban-dot-chay-mo-thua-hoan-hao', 19, 'post', '2017-12-15 17:59:23', '2017-12-15 17:59:23', NULL),
(71, 'dung-bao-gio-phi-thoi-gian-cai-nhau-voi-nguoi-khac-tren-facebook-day-la-ly-do-vi-sao', 20, 'post', '2017-12-15 18:00:51', '2017-12-15 18:00:51', NULL),
(72, 'lat-ma-zopa-rinpoche-giong-nhu-dau-tu-100-do-la-roi-nhan-trieu-do-day-la-dieu-ai-cung-tu-dau-tu-duoc-moi-ngay', 21, 'post', '2017-12-15 18:02:05', '2017-12-15 18:02:05', NULL),
(73, '6-rac-roi-ma-chi-nhung-nguoi-cuc-thong-minh-moi-mac-phai', 22, 'post', '2017-12-15 18:03:27', '2017-12-15 18:03:27', NULL),
(74, 'ceo-clingme-sai-lam-lon-nhat-cua-startup-viet-khi-goi-von-dau-tu-la-luc-nao-cung-nham-den-tien', 23, 'post', '2017-12-15 18:06:16', '2017-12-15 18:06:16', NULL),
(75, 'co-gi-tai-khach-san-dat-do-bac-nhat-dubai', 24, 'post', '2017-12-15 18:07:36', '2017-12-15 18:07:36', NULL),
(76, '34-tuoi-mac-ung-thu-gan-giai-doan-cuoi-nguyen-nhan-gay-benh-ai-cung-nen-de-phong', 25, 'post', '2017-12-15 18:08:31', '2017-12-15 18:08:31', NULL),
(77, 'tim-ra-dap-an-cho-cau-hoi-uong-bao-nhieu-ca-phengay-la-du-va-thoi-diem-tot-nhat-de-uong', 26, 'post', '2017-12-15 18:11:26', '2017-12-15 18:11:26', NULL),
(78, 'smartphone-co-the-ngam-dau-doc-bo-nao-con-nguoi-ra-sao', 27, 'post', '2017-12-15 18:12:24', '2017-12-15 18:12:24', NULL),
(79, 'dau-bep-hang-dau-chi-ra-nhung-sai-lam-lon-nhat-khi-thuong-thuc-am-thuc-nhat-ban', 28, 'post', '2017-12-15 18:13:10', '2017-12-15 18:13:10', NULL),
(80, 'chuyen-nha-su-va-chua-troi-ai-cung-can-doc-de-biet-nam-bat-co-hoi', 29, 'post', '2017-12-15 18:14:26', '2017-12-15 18:14:26', NULL),
(81, 'cuoc-song-sang-chanh-cua-hoang-tu-brunei-van-dong-vien-cuoi-ngua-dep-trai-tung-day-song-sea-games-29', 30, 'post', '2017-12-15 18:15:21', '2017-12-15 18:15:21', NULL),
(82, 'nhung-nguoi-an-theo-che-do-nay-it-co-nguy-co-bi-mat-tri-nho-va-sa-sut-tri-tue', 31, 'post', '2017-12-15 18:16:22', '2017-12-15 18:16:22', NULL),
(83, 'nhung-buc-anh-an-tuong-nhat-nam-2017-duoc-to-reuters-binh-chon', 32, 'post', '2017-12-15 18:17:08', '2017-12-15 18:17:08', NULL),
(84, 'day-la-11-du-doan-cua-tuong-lai-cua-elon-musk-tat-ca-se-deu-khien-ban-ngo-ngang', 33, 'post', '2017-12-15 18:18:03', '2017-12-15 18:18:03', NULL),
(85, 'no-vay-oda-len-toi-600-nghin-ty-se-giai-trinh-voi-quoc-hoi', 34, 'post', '2017-12-15 18:19:00', '2017-12-15 18:19:00', NULL),
(86, 'de-phong-bien-chung-nguy-hiem-o-mat-neu-chu-quan-khi-tri-benh-viem-xoang', 35, 'post', '2017-12-15 18:20:12', '2017-12-15 18:20:12', NULL),
(87, 'the-gioi-di-dong-thuong-nghin-ty-de-giu-long-trung-thanh-cua-nhan-vien-nhung-voi-ho-tien-khong-phai-la-tat-ca', 36, 'post', '2017-12-15 18:21:34', '2017-12-15 18:21:34', NULL),
(88, 'trau-cay-bitcoin-o-at-do-bo-sai-gon', 37, 'post', '2017-12-15 18:22:27', '2017-12-15 18:22:27', NULL),
(89, 'steve-jobs-lam-startup-khong-phai-la-xay-dung-cong-ty-de-kiem-tien', 38, 'post', '2017-12-15 18:23:29', '2017-12-15 18:23:29', NULL),
(90, 'so-dong-van-lua-chon-gui-tiet-kiem', 39, 'post', '2017-12-15 18:24:19', '2017-12-15 18:24:19', NULL),
(91, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'post', '2017-12-15 19:14:35', '2017-12-15 19:14:35', NULL),
(92, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'post', '2017-12-15 19:16:11', '2017-12-15 19:16:11', NULL),
(93, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'post', '2017-12-15 19:21:49', '2017-12-15 19:21:49', NULL),
(94, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'post', '2017-12-15 19:23:12', '2017-12-15 19:23:12', NULL),
(95, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'post', '2017-12-15 19:24:24', '2017-12-15 19:24:24', NULL),
(96, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'post', '2017-12-15 19:31:57', '2017-12-15 19:31:57', NULL),
(97, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'post', '2017-12-15 19:38:45', '2017-12-15 19:38:45', NULL),
(98, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'post', '2017-12-15 19:41:12', '2017-12-15 19:41:12', NULL),
(99, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'post', '2017-12-15 19:43:20', '2017-12-15 19:43:20', NULL),
(100, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'post', '2017-12-15 19:47:36', '2017-12-15 19:47:36', NULL),
(101, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'post', '2017-12-15 19:48:29', '2017-12-15 19:48:29', NULL),
(102, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'post', '2017-12-15 19:49:55', '2017-12-15 19:49:55', NULL),
(103, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'post', '2017-12-15 19:50:54', '2017-12-15 19:50:54', NULL),
(104, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'post', '2017-12-15 19:53:37', '2017-12-15 19:53:37', NULL),
(105, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'post', '2017-12-15 19:54:52', '2017-12-15 19:54:52', NULL),
(106, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'post', '2017-12-15 19:56:19', '2017-12-15 19:56:19', NULL),
(107, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'post', '2017-12-15 19:57:04', '2017-12-15 19:57:04', NULL),
(108, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'post', '2017-12-15 19:57:41', '2017-12-15 19:57:41', NULL),
(109, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'post', '2017-12-15 19:58:18', '2017-12-15 19:58:18', NULL),
(110, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation-1', 59, 'post', '2017-12-15 19:59:28', '2017-12-15 19:59:28', NULL),
(111, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'post', '2017-12-15 20:02:49', '2017-12-15 20:02:49', NULL),
(112, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'post', '2017-12-15 20:04:43', '2017-12-15 20:04:43', NULL),
(113, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'post', '2017-12-15 20:07:22', '2017-12-15 20:07:22', NULL),
(114, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'post', '2017-12-15 20:08:12', '2017-12-15 20:08:12', NULL),
(115, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'post', '2017-12-15 20:12:05', '2017-12-15 20:12:05', NULL),
(116, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'post', '2017-12-15 20:13:58', '2017-12-15 20:13:58', NULL),
(117, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'post', '2017-12-15 20:15:24', '2017-12-15 20:15:24', NULL),
(118, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'post', '2017-12-15 20:16:04', '2017-12-15 20:16:04', NULL),
(119, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'post', '2017-12-15 20:17:31', '2017-12-15 20:17:31', NULL),
(120, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'post', '2017-12-15 20:18:28', '2017-12-15 20:18:28', NULL),
(121, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'post', '2017-12-15 20:19:12', '2017-12-15 20:19:12', NULL),
(122, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'post', '2017-12-15 20:19:52', '2017-12-15 20:19:52', NULL),
(123, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'post', '2017-12-15 20:20:33', '2017-12-15 20:20:33', NULL),
(124, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'post', '2017-12-15 20:21:12', '2017-12-15 20:21:12', NULL),
(125, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'post', '2017-12-15 20:23:19', '2017-12-15 20:23:19', NULL),
(126, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'post', '2017-12-15 20:24:18', '2017-12-15 20:24:18', NULL),
(127, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'post', '2017-12-15 20:24:52', '2017-12-15 20:24:52', NULL),
(128, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers-1', 77, 'post', '2017-12-15 20:25:38', '2017-12-15 20:25:38', NULL),
(129, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country-1', 78, 'post', '2017-12-15 20:26:27', '2017-12-15 20:26:27', NULL),
(130, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers-2', 4, 'tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36', NULL),
(131, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers-3', 5, 'tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36', NULL),
(132, 'photography', 1, 'gallery', '2017-12-16 10:00:24', '2017-12-16 10:00:24', NULL),
(133, 'selfie', 2, 'gallery', '2017-12-16 10:04:54', '2017-12-16 10:04:54', NULL),
(134, 'new-day', 3, 'gallery', '2017-12-16 10:05:05', '2017-12-16 10:05:05', NULL),
(135, 'morning', 4, 'gallery', '2017-12-16 10:05:13', '2017-12-16 10:05:13', NULL),
(136, 'happy-day', 5, 'gallery', '2017-12-16 10:05:21', '2017-12-16 10:05:21', NULL),
(137, 'perfect', 6, 'gallery', '2017-12-16 10:05:28', '2017-12-16 10:05:28', NULL),
(138, 'nhiep-anh', 7, 'gallery', '2017-12-16 17:02:39', '2017-12-16 17:02:39', NULL),
(139, 'thien-nhien', 8, 'gallery', '2017-12-16 17:03:19', '2017-12-16 17:03:19', NULL),
(140, 'ngay-moi', 9, 'gallery', '2017-12-16 17:03:48', '2017-12-16 17:03:48', NULL),
(141, 'buoi-sang', 10, 'gallery', '2017-12-16 17:04:20', '2017-12-16 17:04:20', NULL),
(142, 'ngay-hanh-phuc', 11, 'gallery', '2017-12-16 17:04:43', '2017-12-16 17:04:43', NULL),
(143, 'hoan-hao', 12, 'gallery', '2017-12-16 17:05:01', '2017-12-16 17:05:01', NULL),
(144, 'day-la-top-10-cong-nghe-y-te-dot-pha-nhat-nam-2017-mo-ra-tuong-lai-moi-cho-loai-nguoi', 79, 'post', '2017-12-16 17:53:53', '2017-12-16 17:53:53', NULL),
(145, 'toi-da-tim-ra-cach-lam-viec-hieu-qua-nhin-tu-phuong-phap-sac-pin-dien-thoai-nhu-the-nao', 80, 'post', '2017-12-16 17:56:23', '2017-12-16 17:56:23', NULL),
(146, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36', NULL),
(147, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_configurations`
--

CREATE TABLE IF NOT EXISTS `table_configurations` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activated_columns` text COLLATE utf8mb4_unicode_ci,
  `request_filters` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `user_id`, `description`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'đầu tư', 1, '', 0, 1, '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(2, 'cơn lốc', 1, '', 0, 1, '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(3, 'thái lan', 1, '', 0, 1, '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(4, 'alive', 1, '', 0, 1, '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(5, 'story', 1, '', 0, 1, '2017-12-15 22:18:36', '2017-12-15 22:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(5, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(7, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(9, 1, 'en', 'passwords', 'user', 'We can''t find a user with that e-mail address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(27, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(28, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(29, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(30, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(31, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(32, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(33, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(34, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(35, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(36, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(37, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(38, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(39, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(40, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(41, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(42, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(43, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(44, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(45, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(46, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(47, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(48, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(49, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(50, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(51, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(52, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(53, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(54, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(55, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(56, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(57, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(58, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(59, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(60, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(61, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(62, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(63, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(64, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(65, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(66, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(67, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(68, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(69, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(70, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(71, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(72, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(73, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(74, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(75, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(76, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(77, 1, 'en', 'core.acl/api', 'api_clients', 'API Clients', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(78, 1, 'en', 'core.acl/api', 'create_new_client', 'Create new client', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(79, 1, 'en', 'core.acl/api', 'create_new_client_success', 'Create new client successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(80, 1, 'en', 'core.acl/api', 'edit_client', 'Edit client ":name"', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(81, 1, 'en', 'core.acl/api', 'edit_client_success', 'Updated client successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(82, 1, 'en', 'core.acl/api', 'delete_success', 'Deleted client successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(83, 1, 'en', 'core.acl/api', 'confirm_delete_title', 'Confirm delete client ":name"', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(84, 1, 'en', 'core.acl/api', 'confirm_delete_description', 'Do you really want to delete client ":name"?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(85, 1, 'en', 'core.acl/api', 'cancel_delete', 'No', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(86, 1, 'en', 'core.acl/api', 'continue_delete', 'Yes, let''s delete it!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(87, 1, 'en', 'core.acl/api', 'name', 'Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(88, 1, 'en', 'core.acl/api', 'cancel', 'Cancel', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(89, 1, 'en', 'core.acl/api', 'save', 'Save', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(90, 1, 'en', 'core.acl/api', 'edit', 'Edit', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(91, 1, 'en', 'core.acl/api', 'delete', 'Delete', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(92, 1, 'en', 'core.acl/api', 'client_id', 'Client ID', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(93, 1, 'en', 'core.acl/api', 'secret', 'Secret', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(94, 1, 'en', 'core.acl/auth', 'login.username', 'Username', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(95, 1, 'en', 'core.acl/auth', 'login.email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(96, 1, 'en', 'core.acl/auth', 'login.password', 'Password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(97, 1, 'en', 'core.acl/auth', 'login.title', 'User Login', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(98, 1, 'en', 'core.acl/auth', 'login.remember', 'Remember me?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(99, 1, 'en', 'core.acl/auth', 'login.login', 'Sign in', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(100, 1, 'en', 'core.acl/auth', 'login.placeholder.username', 'Please enter your username', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(101, 1, 'en', 'core.acl/auth', 'login.placeholder.email', 'Please enter your email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(102, 1, 'en', 'core.acl/auth', 'login.success', 'Login successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(103, 1, 'en', 'core.acl/auth', 'login.fail', 'Wrong username or password.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(104, 1, 'en', 'core.acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(105, 1, 'en', 'core.acl/auth', 'login.banned', 'This account is banned.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(106, 1, 'en', 'core.acl/auth', 'login.logout_success', 'Logout successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(107, 1, 'en', 'core.acl/auth', 'login.dont_have_account', 'You don''t have account on this system, please contact administrator for more information!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(108, 1, 'en', 'core.acl/auth', 'forgot_password.title', 'Lost password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(109, 1, 'en', 'core.acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(110, 1, 'en', 'core.acl/auth', 'forgot_password.submit', 'Submit', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(111, 1, 'en', 'core.acl/auth', 'reset.new_password', 'New password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(112, 1, 'en', 'core.acl/auth', 'reset.repassword', 'Confirm new password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(113, 1, 'en', 'core.acl/auth', 'reset.email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(114, 1, 'en', 'core.acl/auth', 'reset.title', 'Reset your password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(115, 1, 'en', 'core.acl/auth', 'reset.update', 'Update', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(116, 1, 'en', 'core.acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(117, 1, 'en', 'core.acl/auth', 'reset.user_not_found', 'This username is not exist.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(118, 1, 'en', 'core.acl/auth', 'reset.success', 'Reset password successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(119, 1, 'en', 'core.acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(120, 1, 'en', 'core.acl/auth', 'reset.reset.title', 'Email reset password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(121, 1, 'en', 'core.acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(122, 1, 'en', 'core.acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(123, 1, 'en', 'core.acl/auth', 'reset.new-password', 'New password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(124, 1, 'en', 'core.acl/auth', 'email.reminder.title', 'Email reset password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(125, 1, 'en', 'core.acl/auth', 'repassword', 'Password confirm', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(126, 1, 'en', 'core.acl/auth', 'failed', 'Failed', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(127, 1, 'en', 'core.acl/auth', 'throttle', 'Throttle', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(128, 1, 'en', 'core.acl/auth', 'not_member', 'Not a member yet?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(129, 1, 'en', 'core.acl/auth', 'register_now', 'Register now', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(130, 1, 'en', 'core.acl/auth', 'lost_your_password', 'Lost your password?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(131, 1, 'en', 'core.acl/auth', 'login_title', 'Login to system', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(132, 1, 'en', 'core.acl/auth', 'login_via_social', 'Login with social networks', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(133, 1, 'en', 'core.acl/auth', 'back_to_login', 'Back to login page', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(134, 1, 'en', 'core.acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(135, 1, 'en', 'core.acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(136, 1, 'en', 'core.acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(137, 1, 'en', 'core.acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(138, 1, 'en', 'core.acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(139, 1, 'en', 'core.acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(140, 1, 'en', 'core.acl/permissions', 'notices.create_success', 'The new role was successfully created', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(141, 1, 'en', 'core.acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(142, 1, 'en', 'core.acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(143, 1, 'en', 'core.acl/permissions', 'notices.not_found', 'Role not found', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(144, 1, 'en', 'core.acl/permissions', 'list', 'List Permissions', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(145, 1, 'en', 'core.acl/permissions', 'name', 'Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(146, 1, 'en', 'core.acl/permissions', 'current_role', 'Current Role', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(147, 1, 'en', 'core.acl/permissions', 'no_role_assigned', 'No role assigned', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(148, 1, 'en', 'core.acl/permissions', 'role_assigned', 'Assigned Role', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(149, 1, 'en', 'core.acl/permissions', 'create_role', 'Create New Role', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(150, 1, 'en', 'core.acl/permissions', 'role_name', 'Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(151, 1, 'en', 'core.acl/permissions', 'role_description', 'Description', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(152, 1, 'en', 'core.acl/permissions', 'permission_flags', 'Permission Flags', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(153, 1, 'en', 'core.acl/permissions', 'cancel', 'Cancel', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(154, 1, 'en', 'core.acl/permissions', 'reset', 'Reset', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(155, 1, 'en', 'core.acl/permissions', 'save', 'Save', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(156, 1, 'en', 'core.acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(157, 1, 'en', 'core.acl/permissions', 'details', 'Details', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(158, 1, 'en', 'core.acl/permissions', 'duplicate', 'Duplicate', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(159, 1, 'en', 'core.acl/permissions', 'all', 'All Permissions', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(160, 1, 'en', 'core.acl/permissions', 'list_role', 'List Roles', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(161, 1, 'en', 'core.acl/permissions', 'created_on', 'Created On', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(162, 1, 'en', 'core.acl/permissions', 'created_by', 'Created By', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(163, 1, 'en', 'core.acl/permissions', 'actions', 'Actions', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(164, 1, 'en', 'core.acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(165, 1, 'en', 'core.acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(166, 1, 'en', 'core.acl/permissions', 'delete_global_role', 'Can not delete global role', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(167, 1, 'en', 'core.acl/permissions', 'delete_success', 'Delete role successfully', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(168, 1, 'en', 'core.acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(169, 1, 'en', 'core.acl/permissions', 'not_found', 'No role found!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(170, 1, 'en', 'core.acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(171, 1, 'en', 'core.acl/permissions', 'modified_success', 'Modified successfully', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(172, 1, 'en', 'core.acl/permissions', 'create_success', 'Create successfully', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(173, 1, 'en', 'core.acl/permissions', 'duplicated_success', 'Duplicated successfully', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(174, 1, 'en', 'core.acl/permissions', 'options', 'Options', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(175, 1, 'en', 'core.acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(176, 1, 'en', 'core.acl/permissions', 'roles', 'Roles', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(177, 1, 'en', 'core.acl/permissions', 'role_permission', 'Roles and Permissions', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(178, 1, 'en', 'core.acl/permissions', 'user_management', 'User Management', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(179, 1, 'en', 'core.acl/permissions', 'super_user_management', 'Super User Management', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(180, 1, 'en', 'core.acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(181, 1, 'en', 'core.acl/reminders', 'user', 'We can''t find a user with that e-mail address.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(182, 1, 'en', 'core.acl/reminders', 'token', 'This password reset token is invalid.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(183, 1, 'en', 'core.acl/reminders', 'sent', 'Password reminder sent!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(184, 1, 'en', 'core.acl/reminders', 'reset', 'Password has been reset!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(185, 1, 'en', 'core.acl/users', 'delete_user_logged_in', 'Can''t delete this user. This user is logged on!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(186, 1, 'en', 'core.acl/users', 'no_select', 'Please select at least one record to take this action!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(187, 1, 'en', 'core.acl/users', 'lock_user_logged_in', 'Can''t lock this user. This user is logged on!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(188, 1, 'en', 'core.acl/users', 'update_success', 'Update status successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(189, 1, 'en', 'core.acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(190, 1, 'en', 'core.acl/users', 'not_found', 'User not found', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(191, 1, 'en', 'core.acl/users', 'email_exist', 'That email address already belongs to an existing account', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(192, 1, 'en', 'core.acl/users', 'username_exist', 'That username address already belongs to an existing account', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(193, 1, 'en', 'core.acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(194, 1, 'en', 'core.acl/users', 'password_update_success', 'Password successfully changed', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(195, 1, 'en', 'core.acl/users', 'current_password_not_valid', 'Current password is not valid', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(196, 1, 'en', 'core.acl/users', 'user_exist_in', 'User is already a member', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(197, 1, 'en', 'core.acl/users', 'email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(198, 1, 'en', 'core.acl/users', 'role', 'Role', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(199, 1, 'en', 'core.acl/users', 'username', 'Username', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(200, 1, 'en', 'core.acl/users', 'last_name', 'Last Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(201, 1, 'en', 'core.acl/users', 'first_name', 'First Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(202, 1, 'en', 'core.acl/users', 'message', 'Message', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(203, 1, 'en', 'core.acl/users', 'cancel_btn', 'Cancel', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(204, 1, 'en', 'core.acl/users', 'change_password', 'Change password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(205, 1, 'en', 'core.acl/users', 'current_password', 'Current password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(206, 1, 'en', 'core.acl/users', 'new_password', 'New Password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(207, 1, 'en', 'core.acl/users', 'confirm_new_password', 'Confirm New Password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(208, 1, 'en', 'core.acl/users', 'password', 'Password', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(209, 1, 'en', 'core.acl/users', 'save', 'Save', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(210, 1, 'en', 'core.acl/users', 'cannot_delete', 'User could not be deleted', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(211, 1, 'en', 'core.acl/users', 'deleted', 'User deleted', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(212, 1, 'en', 'core.acl/users', 'list', 'List Users', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(213, 1, 'en', 'core.acl/users', 'last_login', 'Last Login', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(214, 1, 'en', 'core.acl/users', 'error_update_profile_image', 'Error when update profile image', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(215, 1, 'en', 'core.acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=":link">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(216, 1, 'en', 'core.acl/users', 'change_profile_image', 'Change Profile Image', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(217, 1, 'en', 'core.acl/users', 'new_image', 'New Image', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(218, 1, 'en', 'core.acl/users', 'loading', 'Loading', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(219, 1, 'en', 'core.acl/users', 'close', 'Close', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(220, 1, 'en', 'core.acl/users', 'update', 'Update', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(221, 1, 'en', 'core.acl/users', 'read_image_failed', 'Failed to read the image file', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(222, 1, 'en', 'core.acl/users', 'users', 'Users', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(223, 1, 'en', 'core.acl/users', 'update_avatar_success', 'Update profile image successfully!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(224, 1, 'en', 'core.acl/users', 'info.title', 'User profile', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(225, 1, 'en', 'core.acl/users', 'info.first_name', 'First Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(226, 1, 'en', 'core.acl/users', 'info.last_name', 'Last Name', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(227, 1, 'en', 'core.acl/users', 'info.email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(228, 1, 'en', 'core.acl/users', 'info.second_email', 'Secondary Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(229, 1, 'en', 'core.acl/users', 'info.address', 'Address', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(230, 1, 'en', 'core.acl/users', 'info.second_address', 'Secondary Address', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(231, 1, 'en', 'core.acl/users', 'info.birth_day', 'Date of birth', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(232, 1, 'en', 'core.acl/users', 'info.job', 'Job Position', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(233, 1, 'en', 'core.acl/users', 'info.mobile_number', 'Mobile Number', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(234, 1, 'en', 'core.acl/users', 'info.second_mobile_number', 'Secondary Phone', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(235, 1, 'en', 'core.acl/users', 'info.interes', 'Interests', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(236, 1, 'en', 'core.acl/users', 'info.about', 'About', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(237, 1, 'en', 'core.acl/users', 'gender.title', 'Gender', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(238, 1, 'en', 'core.acl/users', 'gender.male', 'Male', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(239, 1, 'en', 'core.acl/users', 'gender.female', 'Female', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(240, 1, 'vi', 'core.acl/api', 'api_clients', 'API Clients', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(241, 1, 'vi', 'core.acl/api', 'create_new_client', 'Tạo client mới', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(242, 1, 'vi', 'core.acl/api', 'create_new_client_success', 'Tạo client mới thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(243, 1, 'vi', 'core.acl/api', 'edit_client', 'Sửa client ":name"', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(244, 1, 'vi', 'core.acl/api', 'edit_client_success', 'Cập nhật client thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(245, 1, 'vi', 'core.acl/api', 'delete_success', 'Xoá client thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(246, 1, 'vi', 'core.acl/api', 'confirm_delete_title', 'Xoá client ":name"', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(247, 1, 'vi', 'core.acl/api', 'confirm_delete_description', 'Bạn có chắc chắn muốn xoá client ":name"?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(248, 1, 'vi', 'core.acl/api', 'cancel_delete', 'Không', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(249, 1, 'vi', 'core.acl/api', 'continue_delete', 'Có, tiếp tục xoá!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(250, 1, 'vi', 'core.acl/api', 'name', 'Tên', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(251, 1, 'vi', 'core.acl/api', 'cancel', 'Huỷ bỏ', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(252, 1, 'vi', 'core.acl/api', 'save', 'Lưu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(253, 1, 'vi', 'core.acl/api', 'edit', 'Sửa', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(254, 1, 'vi', 'core.acl/api', 'delete', 'Xoá', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(255, 1, 'vi', 'core.acl/api', 'client_id', 'Client ID', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(256, 1, 'vi', 'core.acl/api', 'secret', 'Chuỗi bí mật', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(257, 1, 'vi', 'core.acl/auth', 'login.username', 'Tên truy cập', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(258, 1, 'vi', 'core.acl/auth', 'login.password', 'Mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(259, 1, 'vi', 'core.acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(260, 1, 'vi', 'core.acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(261, 1, 'vi', 'core.acl/auth', 'login.login', 'Đăng nhập', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(262, 1, 'vi', 'core.acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(263, 1, 'vi', 'core.acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(264, 1, 'vi', 'core.acl/auth', 'login.success', 'Đăng nhập thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(265, 1, 'vi', 'core.acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(266, 1, 'vi', 'core.acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(267, 1, 'vi', 'core.acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(268, 1, 'vi', 'core.acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(269, 1, 'vi', 'core.acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(270, 1, 'vi', 'core.acl/auth', 'login.email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(271, 1, 'vi', 'core.acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(272, 1, 'vi', 'core.acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(273, 1, 'vi', 'core.acl/auth', 'forgot_password.submit', 'Hoàn tất', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(274, 1, 'vi', 'core.acl/auth', 'reset.new_password', 'Mật khẩu mới', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(275, 1, 'vi', 'core.acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(276, 1, 'vi', 'core.acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(277, 1, 'vi', 'core.acl/auth', 'reset.update', 'Cập nhật', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(278, 1, 'vi', 'core.acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(279, 1, 'vi', 'core.acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(280, 1, 'vi', 'core.acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(281, 1, 'vi', 'core.acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(282, 1, 'vi', 'core.acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(283, 1, 'vi', 'core.acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(284, 1, 'vi', 'core.acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(285, 1, 'vi', 'core.acl/auth', 'reset.new-password', 'Mật khẩu mới', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(286, 1, 'vi', 'core.acl/auth', 'reset.email', 'Email', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(287, 1, 'vi', 'core.acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(288, 1, 'vi', 'core.acl/auth', 'failed', 'Không thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(289, 1, 'vi', 'core.acl/auth', 'repassword', 'Xác nhận mật khẩu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(290, 1, 'vi', 'core.acl/auth', 'throttle', 'Throttle', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(291, 1, 'vi', 'core.acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(292, 1, 'vi', 'core.acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(293, 1, 'vi', 'core.acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(294, 1, 'vi', 'core.acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(295, 1, 'vi', 'core.acl/auth', 'not_member', 'Chưa là thành viên?', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(296, 1, 'vi', 'core.acl/auth', 'register_now', 'Đăng ký ngay', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(297, 1, 'vi', 'core.acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(298, 1, 'vi', 'core.acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(299, 1, 'vi', 'core.acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(300, 1, 'vi', 'core.acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(301, 1, 'vi', 'core.acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(302, 1, 'vi', 'core.acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(303, 1, 'vi', 'core.acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(304, 1, 'vi', 'core.acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(305, 1, 'vi', 'core.acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(306, 1, 'vi', 'core.acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(307, 1, 'vi', 'core.acl/permissions', 'list', 'Danh sách phân quyền', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(308, 1, 'vi', 'core.acl/permissions', 'name', 'Tên', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(309, 1, 'vi', 'core.acl/permissions', 'current_role', 'Quyền hiện tại', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(310, 1, 'vi', 'core.acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(311, 1, 'vi', 'core.acl/permissions', 'role_assigned', 'Quyền đã được gán', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(312, 1, 'vi', 'core.acl/permissions', 'create_role', 'Tạo quyền mới', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(313, 1, 'vi', 'core.acl/permissions', 'role_name', 'Tên', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(314, 1, 'vi', 'core.acl/permissions', 'role_description', 'Mô tả', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(315, 1, 'vi', 'core.acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(316, 1, 'vi', 'core.acl/permissions', 'cancel', 'Hủy bỏ', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(317, 1, 'vi', 'core.acl/permissions', 'reset', 'Làm lại', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(318, 1, 'vi', 'core.acl/permissions', 'save', 'Lưu', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(319, 1, 'vi', 'core.acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút "Nhân bản" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(320, 1, 'vi', 'core.acl/permissions', 'details', 'Chi tiết', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(321, 1, 'vi', 'core.acl/permissions', 'duplicate', 'Nhân bản', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(322, 1, 'vi', 'core.acl/permissions', 'all', 'Tất cả phân quyền', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(323, 1, 'vi', 'core.acl/permissions', 'list_role', 'Danh sách quyền', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(324, 1, 'vi', 'core.acl/permissions', 'created_on', 'Ngày tạo', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(325, 1, 'vi', 'core.acl/permissions', 'created_by', 'Được tạo bởi', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(326, 1, 'vi', 'core.acl/permissions', 'actions', 'Tác vụ', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(327, 1, 'vi', 'core.acl/permissions', 'create_success', 'Tạo thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(328, 1, 'vi', 'core.acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(329, 1, 'vi', 'core.acl/permissions', 'delete_success', 'Xóa quyền thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(330, 1, 'vi', 'core.acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(331, 1, 'vi', 'core.acl/permissions', 'modified_success', 'Sửa thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(332, 1, 'vi', 'core.acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(333, 1, 'vi', 'core.acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(334, 1, 'vi', 'core.acl/permissions', 'options', 'Tùy chọn', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(335, 1, 'vi', 'core.acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(336, 1, 'vi', 'core.acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(337, 1, 'vi', 'core.acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(338, 1, 'vi', 'core.acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(339, 1, 'vi', 'core.acl/permissions', 'roles', 'Quyền', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(340, 1, 'vi', 'core.acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(341, 1, 'vi', 'core.acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(342, 1, 'vi', 'core.acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(343, 1, 'vi', 'core.acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(344, 1, 'vi', 'core.acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(345, 1, 'vi', 'core.acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(346, 1, 'vi', 'core.acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(347, 1, 'vi', 'core.acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(348, 1, 'vi', 'core.acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(349, 1, 'vi', 'core.acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(350, 1, 'vi', 'core.acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(351, 1, 'vi', 'core.acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(352, 1, 'vi', 'core.acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(353, 1, 'vi', 'core.acl/users', 'not_found', 'Không tìm thấy người dùng', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(354, 1, 'vi', 'core.acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(355, 1, 'vi', 'core.acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(356, 1, 'vi', 'core.acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(357, 1, 'vi', 'core.acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-07-16 03:35:11', '2018-07-16 03:35:11'),
(358, 1, 'vi', 'core.acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(359, 1, 'vi', 'core.acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(360, 1, 'vi', 'core.acl/users', 'email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(361, 1, 'vi', 'core.acl/users', 'username', 'Tên đăng nhập', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(362, 1, 'vi', 'core.acl/users', 'role', 'Phân quyền', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(363, 1, 'vi', 'core.acl/users', 'first_name', 'Họ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(364, 1, 'vi', 'core.acl/users', 'last_name', 'Tên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(365, 1, 'vi', 'core.acl/users', 'message', 'Thông điệp', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(366, 1, 'vi', 'core.acl/users', 'cancel_btn', 'Hủy bỏ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(367, 1, 'vi', 'core.acl/users', 'password', 'Mật khẩu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(368, 1, 'vi', 'core.acl/users', 'new_password', 'Mật khẩu mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(369, 1, 'vi', 'core.acl/users', 'save', 'Lưu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(370, 1, 'vi', 'core.acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(371, 1, 'vi', 'core.acl/users', 'deleted', 'Xóa thành viên thành công', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(372, 1, 'vi', 'core.acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(373, 1, 'vi', 'core.acl/users', 'list', 'Danh sách thành viên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(374, 1, 'vi', 'core.acl/users', 'last_login', 'Lần cuối đăng nhập', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(375, 1, 'vi', 'core.acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(376, 1, 'vi', 'core.acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=":link">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(377, 1, 'vi', 'core.acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(378, 1, 'vi', 'core.acl/users', 'new_image', 'Ảnh mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(379, 1, 'vi', 'core.acl/users', 'loading', 'Đang tải', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(380, 1, 'vi', 'core.acl/users', 'close', 'Đóng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(381, 1, 'vi', 'core.acl/users', 'update', 'Cập nhật', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(382, 1, 'vi', 'core.acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(383, 1, 'vi', 'core.acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(384, 1, 'vi', 'core.acl/users', 'users', 'Thành viên', '2018-07-16 03:35:12', '2018-07-16 03:35:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(385, 1, 'vi', 'core.acl/users', 'info.title', 'Thông tin người dùng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(386, 1, 'vi', 'core.acl/users', 'info.first_name', 'Họ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(387, 1, 'vi', 'core.acl/users', 'info.last_name', 'Tên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(388, 1, 'vi', 'core.acl/users', 'info.email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(389, 1, 'vi', 'core.acl/users', 'info.second_email', 'Email dự phòng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(390, 1, 'vi', 'core.acl/users', 'info.address', 'Địa chỉ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(391, 1, 'vi', 'core.acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(392, 1, 'vi', 'core.acl/users', 'info.birth_day', 'Ngày sinh', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(393, 1, 'vi', 'core.acl/users', 'info.job', 'Nghề nghiệp', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(394, 1, 'vi', 'core.acl/users', 'info.mobile_number', 'Số điện thoại di động', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(395, 1, 'vi', 'core.acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(396, 1, 'vi', 'core.acl/users', 'info.interes', 'Sở thích', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(397, 1, 'vi', 'core.acl/users', 'info.about', 'Giới thiệu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(398, 1, 'vi', 'core.acl/users', 'gender.title', 'Giới tính', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(399, 1, 'vi', 'core.acl/users', 'gender.male', 'nam', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(400, 1, 'vi', 'core.acl/users', 'gender.female', 'nữ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(401, 1, 'vi', 'core.acl/users', 'change_password', 'Thay đổi mật khẩu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(402, 1, 'vi', 'core.acl/users', 'current_password', 'Mật khẩu hiện tại', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(403, 1, 'CN', 'core.acl/zh/auth', 'login.username', '用户名', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(404, 1, 'CN', 'core.acl/zh/auth', 'login.email', '电子邮件', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(405, 1, 'CN', 'core.acl/zh/auth', 'login.password', '密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(406, 1, 'CN', 'core.acl/zh/auth', 'login.title', '用户登录', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(407, 1, 'CN', 'core.acl/zh/auth', 'login.remember', '记住我?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(408, 1, 'CN', 'core.acl/zh/auth', 'login.login', '登录', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(409, 1, 'CN', 'core.acl/zh/auth', 'login.placeholder.username', '请输入用户名', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(410, 1, 'CN', 'core.acl/zh/auth', 'login.placeholder.email', '请输入Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(411, 1, 'CN', 'core.acl/zh/auth', 'login.success', '登录成功!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(412, 1, 'CN', 'core.acl/zh/auth', 'login.fail', '错误的用户名或密码.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(413, 1, 'CN', 'core.acl/zh/auth', 'login.not_active', '您的账户已激活!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(414, 1, 'CN', 'core.acl/zh/auth', 'login.banned', '此账户已被禁用.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(415, 1, 'CN', 'core.acl/zh/auth', 'login.logout_success', '成功退出!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(416, 1, 'CN', 'core.acl/zh/auth', 'login.dont_have_account', '您在此系统无账户，请联系管理员!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(417, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.title', '忘记密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(418, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.message', '<p>是否忘记密码?</p><p>请输入您的Email账户，系统会发送邮件让您重设密码.</p>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(419, 1, 'CN', 'core.acl/zh/auth', 'forgot_password.submit', '提交', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(420, 1, 'CN', 'core.acl/zh/auth', 'reset.new_password', '新密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(421, 1, 'CN', 'core.acl/zh/auth', 'reset.repassword', '确认新密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(422, 1, 'CN', 'core.acl/zh/auth', 'reset.email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(423, 1, 'CN', 'core.acl/zh/auth', 'reset.title', '重设密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(424, 1, 'CN', 'core.acl/zh/auth', 'reset.update', '更新', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(425, 1, 'CN', 'core.acl/zh/auth', 'reset.wrong_token', '此链接不存在或已过期，请再次尝试重设密码.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(426, 1, 'CN', 'core.acl/zh/auth', 'reset.user_not_found', '用户名不存在.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(427, 1, 'CN', 'core.acl/zh/auth', 'reset.success', '密码重设成功!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(428, 1, 'CN', 'core.acl/zh/auth', 'reset.fail', '重设密码链接已过期!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(429, 1, 'CN', 'core.acl/zh/auth', 'reset.reset.title', 'Email重设密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(430, 1, 'CN', 'core.acl/zh/auth', 'reset.send.success', 'Email已经发送，请检查邮件完成重设密码.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(431, 1, 'CN', 'core.acl/zh/auth', 'reset.send.fail', '无法发送Email，请稍候重试.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(432, 1, 'CN', 'core.acl/zh/auth', 'reset.new-password', '密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(433, 1, 'CN', 'core.acl/zh/auth', 'email.reminder.title', 'Email重设密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(434, 1, 'CN', 'core.acl/zh/auth', 'repassword', '密码确认', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(435, 1, 'CN', 'core.acl/zh/auth', 'failed', '失败', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(436, 1, 'CN', 'core.acl/zh/auth', 'throttle', 'Throttle', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(437, 1, 'CN', 'core.acl/zh/auth', 'not_member', '还不是会员?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(438, 1, 'CN', 'core.acl/zh/auth', 'register_now', '现在注册', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(439, 1, 'CN', 'core.acl/zh/auth', 'lost_your_password', '忘记密码?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(440, 1, 'CN', 'core.acl/zh/auth', 'login_title', '系统登录', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(441, 1, 'CN', 'core.acl/zh/auth', 'login_via_social', '使用社交账户登录', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(442, 1, 'CN', 'core.acl/zh/auth', 'back_to_login', '回到登录界面', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(443, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_in_use', '无法删除此角色，仍在使用中!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(444, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_delete_belong_user', '此角色无法删除，仍有用户与之关联!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(445, 1, 'CN', 'core.acl/zh/permissions', 'notices.role_edit_belong_user', '无法修改此角色，仍有用户与之关联!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(446, 1, 'CN', 'core.acl/zh/permissions', 'notices.delete_global_role', '无法删除全局角色!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(447, 1, 'CN', 'core.acl/zh/permissions', 'notices.delete_success', '所选角色已删除!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(448, 1, 'CN', 'core.acl/zh/permissions', 'notices.modified_success', '所选角色已更新!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(449, 1, 'CN', 'core.acl/zh/permissions', 'notices.create_success', '新角色创建成功', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(450, 1, 'CN', 'core.acl/zh/permissions', 'notices.duplicated_success', '所选角色复制成功', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(451, 1, 'CN', 'core.acl/zh/permissions', 'notices.no_select', '请至少选择一个角色操作!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(452, 1, 'CN', 'core.acl/zh/permissions', 'notices.not_found', '角色未找到', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(453, 1, 'CN', 'core.acl/zh/permissions', 'list', '权限列表', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(454, 1, 'CN', 'core.acl/zh/permissions', 'name', '名称', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(455, 1, 'CN', 'core.acl/zh/permissions', 'current_role', '当前角色', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(456, 1, 'CN', 'core.acl/zh/permissions', 'no_role_assigned', '未分配角色', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(457, 1, 'CN', 'core.acl/zh/permissions', 'role_assigned', '角色已分配', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(458, 1, 'CN', 'core.acl/zh/permissions', 'create_role', '创建新角色', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(459, 1, 'CN', 'core.acl/zh/permissions', 'role_name', '名称', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(460, 1, 'CN', 'core.acl/zh/permissions', 'role_description', '描述', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(461, 1, 'CN', 'core.acl/zh/permissions', 'permission_flags', '权限标记', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(462, 1, 'CN', 'core.acl/zh/permissions', 'cancel', '取消', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(463, 1, 'CN', 'core.acl/zh/permissions', 'reset', '重设', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(464, 1, 'CN', 'core.acl/zh/permissions', 'save', '保存', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(465, 1, 'CN', 'core.acl/zh/permissions', 'global_role_msg', '全局权限无法修改，您可以复制此权限的副本进行修改.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(466, 1, 'CN', 'core.acl/zh/permissions', 'details', '详情', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(467, 1, 'CN', 'core.acl/zh/permissions', 'duplicate', '复制', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(468, 1, 'CN', 'core.acl/zh/permissions', 'all', '所有权限', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(469, 1, 'CN', 'core.acl/zh/permissions', 'list_role', '权限列表', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(470, 1, 'CN', 'core.acl/zh/permissions', 'created_on', '创建时间', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(471, 1, 'CN', 'core.acl/zh/permissions', 'created_by', '创建人', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(472, 1, 'CN', 'core.acl/zh/permissions', 'actions', '操作', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(473, 1, 'CN', 'core.acl/zh/permissions', 'role_in_use', '无法删除此角色，仍在使用中!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(474, 1, 'CN', 'core.acl/zh/permissions', 'role_delete_belong_user', '此角色无法删除，仍有用户与之关联!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(475, 1, 'CN', 'core.acl/zh/permissions', 'delete_global_role', '无法删除全局角色!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(476, 1, 'CN', 'core.acl/zh/permissions', 'delete_success', '所选角色已删除!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(477, 1, 'CN', 'core.acl/zh/permissions', 'no_select', '请至少选择一个角色操作!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(478, 1, 'CN', 'core.acl/zh/permissions', 'not_found', '角色未找到!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(479, 1, 'CN', 'core.acl/zh/permissions', 'role_edit_belong_user', '无法修改此角色，仍有用户与之关联!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(480, 1, 'CN', 'core.acl/zh/permissions', 'modified_success', '所选角色已更新!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(481, 1, 'CN', 'core.acl/zh/permissions', 'create_success', '新角色创建成功', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(482, 1, 'CN', 'core.acl/zh/permissions', 'duplicated_success', '所选角色复制成功', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(483, 1, 'CN', 'core.acl/zh/permissions', 'options', '选项', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(484, 1, 'CN', 'core.acl/zh/permissions', 'access_denied_message', '无操作权限', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(485, 1, 'CN', 'core.acl/zh/permissions', 'roles', '角色组', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(486, 1, 'CN', 'core.acl/zh/permissions', 'role_permission', '角色组及权限', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(487, 1, 'CN', 'core.acl/zh/permissions', 'user_management', '用户管理', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(488, 1, 'CN', 'core.acl/zh/permissions', 'super_user_management', '超级用户管理', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(489, 1, 'CN', 'core.acl/zh/reminders', 'password', '密码至少需要6个字符，且输入一致！', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(490, 1, 'CN', 'core.acl/zh/reminders', 'user', '无法找到此Email相关的用户.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(491, 1, 'CN', 'core.acl/zh/reminders', 'token', '密码重设令牌失效', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(492, 1, 'CN', 'core.acl/zh/reminders', 'sent', '密码提醒已发送!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(493, 1, 'CN', 'core.acl/zh/reminders', 'reset', '密码已重设!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(494, 1, 'CN', 'core.acl/zh/users', 'delete_user_logged_in', '已登录用户无法删除!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(495, 1, 'CN', 'core.acl/zh/users', 'no_select', '请至少选择一条数据操作!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(496, 1, 'CN', 'core.acl/zh/users', 'lock_user_logged_in', '已登录用户无法锁定!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(497, 1, 'CN', 'core.acl/zh/users', 'update_success', '状态已更新!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(498, 1, 'CN', 'core.acl/zh/users', 'save_setting_failed', '设置保存时出错', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(499, 1, 'CN', 'core.acl/zh/users', 'not_found', '无此用户', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(500, 1, 'CN', 'core.acl/zh/users', 'email_exist', 'Email地址与用户关联', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(501, 1, 'CN', 'core.acl/zh/users', 'username_exist', '用户名已存在', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(502, 1, 'CN', 'core.acl/zh/users', 'update_profile_success', '您的个人信息已保存', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(503, 1, 'CN', 'core.acl/zh/users', 'password_update_success', '密码已更换', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(504, 1, 'CN', 'core.acl/zh/users', 'current_password_not_valid', '当前密码不可用', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(505, 1, 'CN', 'core.acl/zh/users', 'user_exist_in', '用户已存在', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(506, 1, 'CN', 'core.acl/zh/users', 'email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(507, 1, 'CN', 'core.acl/zh/users', 'role', '角色', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(508, 1, 'CN', 'core.acl/zh/users', 'username', '用户名', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(509, 1, 'CN', 'core.acl/zh/users', 'last_name', '名', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(510, 1, 'CN', 'core.acl/zh/users', 'first_name', '姓', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(511, 1, 'CN', 'core.acl/zh/users', 'message', '信息', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(512, 1, 'CN', 'core.acl/zh/users', 'cancel_btn', '取消', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(513, 1, 'CN', 'core.acl/zh/users', 'change_password', '更改密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(514, 1, 'CN', 'core.acl/zh/users', 'current_password', '当前密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(515, 1, 'CN', 'core.acl/zh/users', 'new_password', '新密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(516, 1, 'CN', 'core.acl/zh/users', 'confirm_new_password', '确认新密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(517, 1, 'CN', 'core.acl/zh/users', 'password', '密码', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(518, 1, 'CN', 'core.acl/zh/users', 'save', '保存', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(519, 1, 'CN', 'core.acl/zh/users', 'cannot_delete', '用户无法删除', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(520, 1, 'CN', 'core.acl/zh/users', 'deleted', '用户已删除', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(521, 1, 'CN', 'core.acl/zh/users', 'list', '用户列表', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(522, 1, 'CN', 'core.acl/zh/users', 'last_login', '上次登录', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(523, 1, 'CN', 'core.acl/zh/users', 'error_update_profile_image', '更新头像出错', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(524, 1, 'CN', 'core.acl/zh/users', 'email_reminder_template', '<h3>:name 您好</h3><p>系统已收到恢复密码的请求, 请点击链接.</p><p><a href=":link">现在重设密码</a></p><p>如果不是您本人要求，请忽略此邮件。</p><p>此邮件60分钟内有效.</p>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(525, 1, 'CN', 'core.acl/zh/users', 'change_profile_image', '更改头像', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(526, 1, 'CN', 'core.acl/zh/users', 'new_image', '新图像', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(527, 1, 'CN', 'core.acl/zh/users', 'loading', '载入', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(528, 1, 'CN', 'core.acl/zh/users', 'close', '关闭', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(529, 1, 'CN', 'core.acl/zh/users', 'update', '更新', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(530, 1, 'CN', 'core.acl/zh/users', 'read_image_failed', '读取图像出错', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(531, 1, 'CN', 'core.acl/zh/users', 'users', '用户', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(532, 1, 'CN', 'core.acl/zh/users', 'update_avatar_success', '成功更新头像!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(533, 1, 'CN', 'core.acl/zh/users', 'info.title', '用户信息', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(534, 1, 'CN', 'core.acl/zh/users', 'info.first_name', '姓', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(535, 1, 'CN', 'core.acl/zh/users', 'info.last_name', '名', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(536, 1, 'CN', 'core.acl/zh/users', 'info.email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(537, 1, 'CN', 'core.acl/zh/users', 'info.second_email', '备用Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(538, 1, 'CN', 'core.acl/zh/users', 'info.address', '地址', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(539, 1, 'CN', 'core.acl/zh/users', 'info.second_address', '备用地址', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(540, 1, 'CN', 'core.acl/zh/users', 'info.birth_day', '生日', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(541, 1, 'CN', 'core.acl/zh/users', 'info.job', '职位', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(542, 1, 'CN', 'core.acl/zh/users', 'info.mobile_number', '手机', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(543, 1, 'CN', 'core.acl/zh/users', 'info.second_mobile_number', '备用手机', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(544, 1, 'CN', 'core.acl/zh/users', 'info.interes', '爱好', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(545, 1, 'CN', 'core.acl/zh/users', 'info.about', '关于我...', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(546, 1, 'CN', 'core.acl/zh/users', 'gender.title', '性别', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(547, 1, 'CN', 'core.acl/zh/users', 'gender.male', '男', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(548, 1, 'CN', 'core.acl/zh/users', 'gender.female', '女', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(549, 1, 'en', 'core.base/cache', 'cache_management', 'Cache management', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(550, 1, 'en', 'core.base/cache', 'cache_commands', 'Clear cache commands', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(551, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(552, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don''t see the changes after updating data.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(553, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(554, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(555, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(556, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(557, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(558, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(559, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(560, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(561, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(562, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(563, 1, 'en', 'core.base/cache', 'commands.clear_log.title', 'Clear log', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(564, 1, 'en', 'core.base/cache', 'commands.clear_log.description', 'Clear system log files', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(565, 1, 'en', 'core.base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(566, 1, 'en', 'core.base/errors', '401_title', 'Permission Denied', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(567, 1, 'en', 'core.base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(568, 1, 'en', 'core.base/errors', '404_title', 'Page could not be found', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(569, 1, 'en', 'core.base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(570, 1, 'en', 'core.base/errors', '500_title', 'Page could not be loaded', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(571, 1, 'en', 'core.base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(572, 1, 'en', 'core.base/errors', 'reasons', 'This may have occurred because of several reasons', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(573, 1, 'en', 'core.base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the dashboard by <a href="http://lara-mag.local/admin">clicking here</a>.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(574, 1, 'en', 'core.base/forms', 'choose_image', 'Choose image', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(575, 1, 'en', 'core.base/forms', 'actions', 'Actions', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(576, 1, 'en', 'core.base/forms', 'save', 'Save', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(577, 1, 'en', 'core.base/forms', 'save_and_continue', 'Save & Edit', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(578, 1, 'en', 'core.base/forms', 'image', 'Image', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(579, 1, 'en', 'core.base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(580, 1, 'en', 'core.base/forms', 'create', 'Create', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(581, 1, 'en', 'core.base/forms', 'edit', 'Edit', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(582, 1, 'en', 'core.base/forms', 'permalink', 'Permalink', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(583, 1, 'en', 'core.base/forms', 'ok', 'OK', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(584, 1, 'en', 'core.base/forms', 'cancel', 'Cancel', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(585, 1, 'en', 'core.base/forms', 'character_remain', 'character(s) remain', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(586, 1, 'en', 'core.base/forms', 'template', 'Template', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(587, 1, 'en', 'core.base/forms', 'choose_file', 'Choose file', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(588, 1, 'en', 'core.base/forms', 'file', 'File', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(589, 1, 'en', 'core.base/forms', 'content', 'Content', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(590, 1, 'en', 'core.base/forms', 'description', 'Description', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(591, 1, 'en', 'core.base/forms', 'name', 'Name', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(592, 1, 'en', 'core.base/forms', 'slug', 'Slug', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(593, 1, 'en', 'core.base/forms', 'title', 'Title', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(594, 1, 'en', 'core.base/forms', 'value', 'Value', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(595, 1, 'en', 'core.base/forms', 'name_placeholder', 'Name', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(596, 1, 'en', 'core.base/forms', 'alias_placeholder', 'Alias', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(597, 1, 'en', 'core.base/forms', 'description_placeholder', 'Short description', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(598, 1, 'en', 'core.base/forms', 'parent', 'Parent', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(599, 1, 'en', 'core.base/forms', 'icon', 'Icon', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(600, 1, 'en', 'core.base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(601, 1, 'en', 'core.base/forms', 'order_by', 'Order by', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(602, 1, 'en', 'core.base/forms', 'order_by_placeholder', 'Order by', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(603, 1, 'en', 'core.base/forms', 'featured', 'Is featured?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(604, 1, 'en', 'core.base/forms', 'is_default', 'Is default?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(605, 1, 'en', 'core.base/forms', 'update', 'Update', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(606, 1, 'en', 'core.base/forms', 'publish', 'Publish', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(607, 1, 'en', 'core.base/forms', 'remove_image', 'Remove image', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(608, 1, 'en', 'core.base/forms', 'remove_file', 'Remove file', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(609, 1, 'en', 'core.base/forms', 'order', 'Order', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(610, 1, 'en', 'core.base/forms', 'alias', 'Alias', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(611, 1, 'en', 'core.base/forms', 'basic_information', 'Basic information', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(612, 1, 'en', 'core.base/forms', 'short_code', 'Shortcode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(613, 1, 'en', 'core.base/forms', 'add_short_code', 'Add a shortcode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(614, 1, 'en', 'core.base/forms', 'add', 'Add', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(615, 1, 'en', 'core.base/forms', 'link', 'Link', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(616, 1, 'en', 'core.base/forms', 'show_hide_editor', 'Show/Hide Editor', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(617, 1, 'en', 'core.base/layouts', 'platform_admin', 'Platform Administration', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(618, 1, 'en', 'core.base/layouts', 'dashboard', 'Dashboard', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(619, 1, 'en', 'core.base/layouts', 'appearance', 'Appearance', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(620, 1, 'en', 'core.base/layouts', 'menu', 'Menu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(621, 1, 'en', 'core.base/layouts', 'widgets', 'Widgets', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(622, 1, 'en', 'core.base/layouts', 'theme_options', 'Theme options', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(623, 1, 'en', 'core.base/layouts', 'plugins', 'Plugins', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(624, 1, 'en', 'core.base/layouts', 'settings', 'Settings', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(625, 1, 'en', 'core.base/layouts', 'setting_general', 'General', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(626, 1, 'en', 'core.base/layouts', 'setting_email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(627, 1, 'en', 'core.base/layouts', 'system_information', 'System information', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(628, 1, 'en', 'core.base/layouts', 'theme', 'Theme', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(629, 1, 'en', 'core.base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(630, 1, 'en', 'core.base/layouts', 'profile', 'Profile', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(631, 1, 'en', 'core.base/layouts', 'logout', 'Logout', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(632, 1, 'en', 'core.base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(633, 1, 'en', 'core.base/layouts', 'home', 'Home', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(634, 1, 'en', 'core.base/layouts', 'search', 'Search', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(635, 1, 'en', 'core.base/layouts', 'add_new', 'Add new', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(636, 1, 'en', 'core.base/layouts', 'n_a', 'N/A', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(637, 1, 'en', 'core.base/layouts', 'page_loaded_time', 'Page loaded in', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(638, 1, 'en', 'core.base/layouts', 'view_website', 'View website', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(639, 1, 'en', 'core.base/mail', 'send-fail', 'Send email failed', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(640, 1, 'en', 'core.base/mail', 'happy_birthday', 'Happy birthday!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(641, 1, 'en', 'core.base/notices', 'create_success_message', 'Created successfully', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(642, 1, 'en', 'core.base/notices', 'update_success_message', 'Updated successfully', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(643, 1, 'en', 'core.base/notices', 'delete_success_message', 'Deleted successfully', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(644, 1, 'en', 'core.base/notices', 'success_header', 'Success!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(645, 1, 'en', 'core.base/notices', 'error_header', 'Error!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(646, 1, 'en', 'core.base/notices', 'cannot_delete', 'Can not delete this record!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(647, 1, 'en', 'core.base/notices', 'no_select', 'Please select at least one record to perform this action!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(648, 1, 'en', 'core.base/notices', 'processing_request', 'We are processing your request.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(649, 1, 'en', 'core.base/notices', 'error', 'Error!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(650, 1, 'en', 'core.base/notices', 'success', 'Success!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(651, 1, 'en', 'core.base/notices', 'info', 'Info!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(652, 1, 'en', 'core.base/system', 'no_select', 'Please select at least one record to take this action!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(653, 1, 'en', 'core.base/system', 'cannot_find_user', 'Unable to find specified user', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(654, 1, 'en', 'core.base/system', 'supper_revoked', 'Super user access revoked', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(655, 1, 'en', 'core.base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(656, 1, 'en', 'core.base/system', 'cant_remove_supper', 'You don''t has permission to remove this super user', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(657, 1, 'en', 'core.base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(658, 1, 'en', 'core.base/system', 'supper_granted', 'Super user access granted', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(659, 1, 'en', 'core.base/system', 'delete_log_success', 'Delete log file successfully!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(660, 1, 'en', 'core.base/system', 'get_member_success', 'Member list retrieved successfully', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(661, 1, 'en', 'core.base/system', 'error_occur', 'The following errors occurred', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(662, 1, 'en', 'core.base/system', 'user_management', 'User Management', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(663, 1, 'en', 'core.base/system', 'user_management_description', 'Manage users.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(664, 1, 'en', 'core.base/system', 'role_and_permission', 'Roles and Permissions', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(665, 1, 'en', 'core.base/system', 'role_and_permission_description', 'Manage the available roles.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(666, 1, 'en', 'core.base/system', 'user.list_super', 'List Super Users', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(667, 1, 'en', 'core.base/system', 'user.email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(668, 1, 'en', 'core.base/system', 'user.last_login', 'Last Login', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(669, 1, 'en', 'core.base/system', 'user.username', 'Username', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(670, 1, 'en', 'core.base/system', 'user.add_user', 'Add Super User', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(671, 1, 'en', 'core.base/system', 'user.cancel', 'Cancel', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(672, 1, 'en', 'core.base/system', 'user.create', 'Create', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(673, 1, 'en', 'core.base/system', 'options.features', 'Feature Access Control', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(674, 1, 'en', 'core.base/system', 'options.feature_description', 'Manage the available.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(675, 1, 'en', 'core.base/system', 'options.manage_super', 'Super User Management', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(676, 1, 'en', 'core.base/system', 'options.manage_super_description', 'Add/remove super users.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(677, 1, 'en', 'core.base/system', 'options.info', 'System information', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(678, 1, 'en', 'core.base/system', 'options.info_description', 'All information about current system configuration.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(679, 1, 'en', 'core.base/system', 'info.title', 'System information', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(680, 1, 'en', 'core.base/system', 'info.cache', 'Cache', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(681, 1, 'en', 'core.base/system', 'info.locale', 'Active locale', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(682, 1, 'en', 'core.base/system', 'info.environment', 'Environment', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(683, 1, 'en', 'core.base/system', 'enabled', 'Enabled', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(684, 1, 'en', 'core.base/system', 'deactivated', 'Deactivated', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(685, 1, 'en', 'core.base/system', 'activated', 'Activated', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(686, 1, 'en', 'core.base/system', 'activate', 'Activate', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(687, 1, 'en', 'core.base/system', 'deactivate', 'Deactivate', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(688, 1, 'en', 'core.base/system', 'author', 'By', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(689, 1, 'en', 'core.base/system', 'update_plugin_status_success', 'Update plugin successfully', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(690, 1, 'en', 'core.base/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(691, 1, 'en', 'core.base/system', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(692, 1, 'en', 'core.base/system', 'version', 'Version', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(693, 1, 'en', 'core.base/system', 'report_description', 'Please share this information for troubleshooting', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(694, 1, 'en', 'core.base/system', 'get_system_report', 'Get System Report', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(695, 1, 'en', 'core.base/system', 'system_environment', 'System Environment', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(696, 1, 'en', 'core.base/system', 'framework_version', 'Framework Version', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(697, 1, 'en', 'core.base/system', 'timezone', 'Timezone', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(698, 1, 'en', 'core.base/system', 'debug_mode', 'Debug Mode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(699, 1, 'en', 'core.base/system', 'storage_dir_writable', 'Storage Dir Writable', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(700, 1, 'en', 'core.base/system', 'cache_dir_writable', 'Cache Dir Writable', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(701, 1, 'en', 'core.base/system', 'app_size', 'App Size', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(702, 1, 'en', 'core.base/system', 'server_environment', 'Server Environment', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(703, 1, 'en', 'core.base/system', 'php_version', 'PHP Version', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(704, 1, 'en', 'core.base/system', 'server_software', 'Server Software', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(705, 1, 'en', 'core.base/system', 'server_os', 'Server OS', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(706, 1, 'en', 'core.base/system', 'database', 'Database', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(707, 1, 'en', 'core.base/system', 'ssl_installed', 'SSL Installed', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(708, 1, 'en', 'core.base/system', 'cache_driver', 'Cache Driver', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(709, 1, 'en', 'core.base/system', 'session_driver', 'Session Driver', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(710, 1, 'en', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(711, 1, 'en', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(712, 1, 'en', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(713, 1, 'en', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(714, 1, 'en', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(715, 1, 'en', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(716, 1, 'en', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(717, 1, 'en', 'core.base/system', 'extra_stats', 'Extra Stats', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(718, 1, 'en', 'core.base/system', 'installed_packages', 'Installed Packages and their version numbers', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(719, 1, 'en', 'core.base/system', 'extra_information', 'Extra Information', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(720, 1, 'en', 'core.base/system', 'copy_report', 'Copy Report', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(721, 1, 'en', 'core.base/system', 'package_name', 'Package Name', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(722, 1, 'en', 'core.base/system', 'dependency_name', 'Dependency Name', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(723, 1, 'en', 'core.base/system', 'plugins', 'Plugins', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(724, 1, 'en', 'core.base/system', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(725, 1, 'en', 'core.base/tables', 'filter_enabled', 'Advanced search filters enabled.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(726, 1, 'en', 'core.base/tables', 'id', 'ID', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(727, 1, 'en', 'core.base/tables', 'name', 'Name', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(728, 1, 'en', 'core.base/tables', 'slug', 'Slug', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(729, 1, 'en', 'core.base/tables', 'title', 'Title', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(730, 1, 'en', 'core.base/tables', 'order_by', 'Order By', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(731, 1, 'en', 'core.base/tables', 'order', 'Order', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(732, 1, 'en', 'core.base/tables', 'status', 'Status', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(733, 1, 'en', 'core.base/tables', 'created_at', 'Created At', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(734, 1, 'en', 'core.base/tables', 'updated_at', 'Updated At', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(735, 1, 'en', 'core.base/tables', 'description', 'Description', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(736, 1, 'en', 'core.base/tables', 'operations', 'Operations', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(737, 1, 'en', 'core.base/tables', 'loading_data', 'Loading data from server', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(738, 1, 'en', 'core.base/tables', 'url', 'URL', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(739, 1, 'en', 'core.base/tables', 'author', 'Author', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(740, 1, 'en', 'core.base/tables', 'notes', 'Notes', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(741, 1, 'en', 'core.base/tables', 'column', 'Column', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(742, 1, 'en', 'core.base/tables', 'origin', 'Origin', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(743, 1, 'en', 'core.base/tables', 'after_change', 'After changes', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(744, 1, 'en', 'core.base/tables', 'views', 'Views', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(745, 1, 'en', 'core.base/tables', 'browser', 'Browser', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(746, 1, 'en', 'core.base/tables', 'session', 'Session', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(747, 1, 'en', 'core.base/tables', 'activated', 'activated', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(748, 1, 'en', 'core.base/tables', 'deactivated', 'deactivated', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(749, 1, 'en', 'core.base/tables', 'is_featured', 'Is featured', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(750, 1, 'en', 'core.base/tables', 'edit', 'Edit', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(751, 1, 'en', 'core.base/tables', 'delete', 'Delete', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(752, 1, 'en', 'core.base/tables', 'restore', 'Restore', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(753, 1, 'en', 'core.base/tables', 'activate', 'Activate', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(754, 1, 'en', 'core.base/tables', 'deactivate', 'Deactivate', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(755, 1, 'en', 'core.base/tables', 'filter', 'Type to filter...', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(756, 1, 'en', 'core.base/tables', 'excel', 'Excel', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(757, 1, 'en', 'core.base/tables', 'export', 'Export', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(758, 1, 'en', 'core.base/tables', 'csv', 'CSV', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(759, 1, 'en', 'core.base/tables', 'pdf', 'PDF', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(760, 1, 'en', 'core.base/tables', 'print', 'Print', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(761, 1, 'en', 'core.base/tables', 'reset', 'Reset', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(762, 1, 'en', 'core.base/tables', 'reload', 'Reload', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(763, 1, 'en', 'core.base/tables', 'display', 'Display', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(764, 1, 'en', 'core.base/tables', 'all', 'All', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(765, 1, 'en', 'core.base/tables', 'add_new', 'Add New', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(766, 1, 'en', 'core.base/tables', 'action', 'Actions', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(767, 1, 'en', 'core.base/tables', 'delete_entry', 'Delete Entry', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(768, 1, 'en', 'core.base/tables', 'view', 'View Detail', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(769, 1, 'en', 'core.base/tables', 'save', 'Save', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(770, 1, 'en', 'core.base/tables', 'show_from', 'Show from', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(771, 1, 'en', 'core.base/tables', 'to', 'to', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(772, 1, 'en', 'core.base/tables', 'in', 'in', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(773, 1, 'en', 'core.base/tables', 'records', 'records', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(774, 1, 'en', 'core.base/tables', 'no_data', 'No data to display', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(775, 1, 'en', 'core.base/tables', 'no_record', 'No record', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(776, 1, 'en', 'core.base/tables', 'filtered_from', 'filtered from', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(777, 1, 'en', 'core.base/tables', 'loading', 'Loading data from server', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(778, 1, 'en', 'core.base/tables', 'confirm_delete', 'Confirm delete', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(779, 1, 'en', 'core.base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(780, 1, 'en', 'core.base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(781, 1, 'en', 'core.base/tables', 'cancel', 'Cancel', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(782, 1, 'en', 'core.base/tables', 'template', 'Template', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(783, 1, 'en', 'core.base/tables', 'email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(784, 1, 'en', 'core.base/tables', 'last_login', 'Last login', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(785, 1, 'en', 'core.base/tables', 'shortcode', 'Shortcode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(786, 1, 'en', 'core.base/tables', 'image', 'Image', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(787, 1, 'en', 'core.base/tables', 'bulk_changes', 'Bulk changes', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(788, 1, 'en', 'core.base/tables', 'submit', 'Submit', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(789, 1, 'en', 'core.base/tabs', 'detail', 'Detail', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(790, 1, 'en', 'core.base/tabs', 'file', 'Files', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(791, 1, 'en', 'core.base/tabs', 'record_note', 'Record Note', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(792, 1, 'en', 'core.base/tabs', 'revision', 'Revision History', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(793, 1, 'vi', 'core.base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(794, 1, 'vi', 'core.base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(795, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(796, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(797, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(798, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(799, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(800, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(801, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(802, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(803, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(804, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(805, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(806, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(807, 1, 'vi', 'core.base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2018-07-16 03:35:12', '2018-07-16 03:35:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(808, 1, 'vi', 'core.base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(809, 1, 'vi', 'core.base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(810, 1, 'vi', 'core.base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(811, 1, 'vi', 'core.base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(812, 1, 'vi', 'core.base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(813, 1, 'vi', 'core.base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(814, 1, 'vi', 'core.base/errors', '500_title', 'Không thể tải trang', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(815, 1, 'vi', 'core.base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(816, 1, 'vi', 'core.base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(817, 1, 'vi', 'core.base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href="http://cms.local/admin"> nhấn vào đây </a>.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(818, 1, 'vi', 'core.base/forms', 'choose_image', 'Chọn ảnh', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(819, 1, 'vi', 'core.base/forms', 'actions', 'Tác vụ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(820, 1, 'vi', 'core.base/forms', 'save', 'Lưu', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(821, 1, 'vi', 'core.base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(822, 1, 'vi', 'core.base/forms', 'image', 'Hình ảnh', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(823, 1, 'vi', 'core.base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(824, 1, 'vi', 'core.base/forms', 'create', 'Tạo mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(825, 1, 'vi', 'core.base/forms', 'edit', 'Sửa', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(826, 1, 'vi', 'core.base/forms', 'permalink', 'Đường dẫn', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(827, 1, 'vi', 'core.base/forms', 'ok', 'OK', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(828, 1, 'vi', 'core.base/forms', 'cancel', 'Hủy bỏ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(829, 1, 'vi', 'core.base/forms', 'character_remain', 'kí tự còn lại', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(830, 1, 'vi', 'core.base/forms', 'template', 'Template', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(831, 1, 'vi', 'core.base/forms', 'choose_file', 'Chọn tập tin', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(832, 1, 'vi', 'core.base/forms', 'file', 'Tập tin', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(833, 1, 'vi', 'core.base/forms', 'content', 'Nội dung', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(834, 1, 'vi', 'core.base/forms', 'description', 'Mô tả', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(835, 1, 'vi', 'core.base/forms', 'name', 'Tên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(836, 1, 'vi', 'core.base/forms', 'name_placeholder', 'Nhập tên', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(837, 1, 'vi', 'core.base/forms', 'description_placeholder', 'Mô tả ngắn', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(838, 1, 'vi', 'core.base/forms', 'parent', 'Cha', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(839, 1, 'vi', 'core.base/forms', 'icon', 'Biểu tượng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(840, 1, 'vi', 'core.base/forms', 'order_by', 'Sắp xếp', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(841, 1, 'vi', 'core.base/forms', 'order_by_placeholder', 'Sắp xếp', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(842, 1, 'vi', 'core.base/forms', 'slug', 'Slug', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(843, 1, 'vi', 'core.base/forms', 'featured', 'Nổi bật?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(844, 1, 'vi', 'core.base/forms', 'is_default', 'Mặc định?', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(845, 1, 'vi', 'core.base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(846, 1, 'vi', 'core.base/forms', 'update', 'Cập nhật', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(847, 1, 'vi', 'core.base/forms', 'publish', 'Xuất bản', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(848, 1, 'vi', 'core.base/forms', 'remove_image', 'Xoá ảnh', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(849, 1, 'vi', 'core.base/forms', 'add', 'Thêm', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(850, 1, 'vi', 'core.base/forms', 'add_short_code', 'Thêm shortcode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(851, 1, 'vi', 'core.base/forms', 'alias', 'Mã thay thế', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(852, 1, 'vi', 'core.base/forms', 'alias_placeholder', 'Mã thay thế', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(853, 1, 'vi', 'core.base/forms', 'basic_information', 'Thông tin cơ bản', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(854, 1, 'vi', 'core.base/forms', 'link', 'Liên kết', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(855, 1, 'vi', 'core.base/forms', 'order', 'Thứ tự', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(856, 1, 'vi', 'core.base/forms', 'short_code', 'Shortcode', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(857, 1, 'vi', 'core.base/forms', 'title', 'Tiêu đề', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(858, 1, 'vi', 'core.base/forms', 'value', 'Giá trị', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(859, 1, 'vi', 'core.base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(860, 1, 'vi', 'core.base/layouts', 'platform_admin', 'Quản trị hệ thống', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(861, 1, 'vi', 'core.base/layouts', 'dashboard', 'Bảng điều khiển', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(862, 1, 'vi', 'core.base/layouts', 'appearance', 'Hiển thị', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(863, 1, 'vi', 'core.base/layouts', 'menu', 'Trình đơn', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(864, 1, 'vi', 'core.base/layouts', 'widgets', 'Tiện ích', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(865, 1, 'vi', 'core.base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(866, 1, 'vi', 'core.base/layouts', 'plugins', 'Tiện ích mở rộng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(867, 1, 'vi', 'core.base/layouts', 'settings', 'Cài đặt', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(868, 1, 'vi', 'core.base/layouts', 'setting_general', 'Cơ bản', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(869, 1, 'vi', 'core.base/layouts', 'system_information', 'Thông tin hệ thống', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(870, 1, 'vi', 'core.base/layouts', 'theme', 'Giao diện', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(871, 1, 'vi', 'core.base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(872, 1, 'vi', 'core.base/layouts', 'profile', 'Thông tin cá nhân', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(873, 1, 'vi', 'core.base/layouts', 'logout', 'Đăng xuất', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(874, 1, 'vi', 'core.base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(875, 1, 'vi', 'core.base/layouts', 'home', 'Trang chủ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(876, 1, 'vi', 'core.base/layouts', 'search', 'Tìm kiếm', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(877, 1, 'vi', 'core.base/layouts', 'add_new', 'Thêm mới', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(878, 1, 'vi', 'core.base/layouts', 'n_a', 'N/A', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(879, 1, 'vi', 'core.base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(880, 1, 'vi', 'core.base/layouts', 'view_website', 'Xem trang ngoài', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(881, 1, 'vi', 'core.base/layouts', 'setting_email', 'Email', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(882, 1, 'vi', 'core.base/mail', 'send-fail', 'Gửi email không thành công', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(883, 1, 'vi', 'core.base/mail', 'happy_birthday', 'Chúc mừng sinh nhật!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(884, 1, 'vi', 'core.base/notices', 'create_success_message', 'Tạo thành công', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(885, 1, 'vi', 'core.base/notices', 'update_success_message', 'Cập nhật thành công', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(886, 1, 'vi', 'core.base/notices', 'delete_success_message', 'Xóa thành công', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(887, 1, 'vi', 'core.base/notices', 'success_header', 'Thành công!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(888, 1, 'vi', 'core.base/notices', 'error_header', 'Lỗi!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(889, 1, 'vi', 'core.base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(890, 1, 'vi', 'core.base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(891, 1, 'vi', 'core.base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(892, 1, 'vi', 'core.base/notices', 'error', 'Lỗi!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(893, 1, 'vi', 'core.base/notices', 'success', 'Thành công!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(894, 1, 'vi', 'core.base/notices', 'info', 'Thông tin!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(895, 1, 'vi', 'core.base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(896, 1, 'vi', 'core.base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(897, 1, 'vi', 'core.base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(898, 1, 'vi', 'core.base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(899, 1, 'vi', 'core.base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(900, 1, 'vi', 'core.base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(901, 1, 'vi', 'core.base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(902, 1, 'vi', 'core.base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2018-07-16 03:35:12', '2018-07-16 03:35:12'),
(903, 1, 'vi', 'core.base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(904, 1, 'vi', 'core.base/system', 'error_occur', 'Có lỗi dưới đây', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(905, 1, 'vi', 'core.base/system', 'role_and_permission', 'Phân quyền hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(906, 1, 'vi', 'core.base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(907, 1, 'vi', 'core.base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(908, 1, 'vi', 'core.base/system', 'user.username', 'Tên đăng nhập', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(909, 1, 'vi', 'core.base/system', 'user.email', 'Email', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(910, 1, 'vi', 'core.base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(911, 1, 'vi', 'core.base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(912, 1, 'vi', 'core.base/system', 'user.cancel', 'Hủy bỏ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(913, 1, 'vi', 'core.base/system', 'user.create', 'Thêm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(914, 1, 'vi', 'core.base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(915, 1, 'vi', 'core.base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(916, 1, 'vi', 'core.base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(917, 1, 'vi', 'core.base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(918, 1, 'vi', 'core.base/system', 'options.info', 'Thông tin hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(919, 1, 'vi', 'core.base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(920, 1, 'vi', 'core.base/system', 'info.title', 'Thông tin hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(921, 1, 'vi', 'core.base/system', 'info.cache', 'Bộ nhớ đệm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(922, 1, 'vi', 'core.base/system', 'info.environment', 'Môi trường', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(923, 1, 'vi', 'core.base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(924, 1, 'vi', 'core.base/system', 'activate', 'Kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(925, 1, 'vi', 'core.base/system', 'author', 'Tác giả', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(926, 1, 'vi', 'core.base/system', 'deactivate', 'Hủy kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(927, 1, 'vi', 'core.base/system', 'deactivated', 'Đã vô hiệu', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(928, 1, 'vi', 'core.base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(929, 1, 'vi', 'core.base/system', 'enabled', 'Kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(930, 1, 'vi', 'core.base/system', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(931, 1, 'vi', 'core.base/system', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(932, 1, 'vi', 'core.base/system', 'user_management', 'Quản lý thành viên', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(933, 1, 'vi', 'core.base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(934, 1, 'vi', 'core.base/system', 'version', 'Phiên bản', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(935, 1, 'vi', 'core.base/system', 'activated', 'Đã kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(936, 1, 'vi', 'core.base/system', 'app_size', 'Kích thước ứng dụng', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(937, 1, 'vi', 'core.base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(938, 1, 'vi', 'core.base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(939, 1, 'vi', 'core.base/system', 'copy_report', 'Sao chép báo cáo', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(940, 1, 'vi', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(941, 1, 'vi', 'core.base/system', 'database', 'Hệ thống dữ liệu', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(942, 1, 'vi', 'core.base/system', 'debug_mode', 'Chế độ sửa lỗi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(943, 1, 'vi', 'core.base/system', 'dependency_name', 'Tên gói', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(944, 1, 'vi', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(945, 1, 'vi', 'core.base/system', 'extra_information', 'Thông tin mở rộng', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(946, 1, 'vi', 'core.base/system', 'extra_stats', 'Thống kê thêm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(947, 1, 'vi', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(948, 1, 'vi', 'core.base/system', 'framework_version', 'Phiên bản framework', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(949, 1, 'vi', 'core.base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(950, 1, 'vi', 'core.base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(951, 1, 'vi', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(952, 1, 'vi', 'core.base/system', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(953, 1, 'vi', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(954, 1, 'vi', 'core.base/system', 'package_name', 'Tên gói', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(955, 1, 'vi', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(956, 1, 'vi', 'core.base/system', 'php_version', 'Phiên bản PHP', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(957, 1, 'vi', 'core.base/system', 'plugins', 'Tiện ích mở rộng', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(958, 1, 'vi', 'core.base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(959, 1, 'vi', 'core.base/system', 'server_environment', 'Môi trường máy chủ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(960, 1, 'vi', 'core.base/system', 'server_os', 'Hệ điều hành của máy chủ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(961, 1, 'vi', 'core.base/system', 'server_software', 'Phần mềm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(962, 1, 'vi', 'core.base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(963, 1, 'vi', 'core.base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(964, 1, 'vi', 'core.base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(965, 1, 'vi', 'core.base/system', 'system_environment', 'Môi trường hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(966, 1, 'vi', 'core.base/system', 'timezone', 'Múi giờ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(967, 1, 'vi', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(968, 1, 'vi', 'core.base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(969, 1, 'vi', 'core.base/tables', 'id', 'ID', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(970, 1, 'vi', 'core.base/tables', 'name', 'Tên', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(971, 1, 'vi', 'core.base/tables', 'order_by', 'Thứ tự', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(972, 1, 'vi', 'core.base/tables', 'status', 'Trạng thái', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(973, 1, 'vi', 'core.base/tables', 'created_at', 'Ngày tạo', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(974, 1, 'vi', 'core.base/tables', 'updated_at', 'Ngày cập nhật', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(975, 1, 'vi', 'core.base/tables', 'operations', 'Tác vụ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(976, 1, 'vi', 'core.base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(977, 1, 'vi', 'core.base/tables', 'url', 'URL', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(978, 1, 'vi', 'core.base/tables', 'author', 'Người tạo', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(979, 1, 'vi', 'core.base/tables', 'column', 'Cột', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(980, 1, 'vi', 'core.base/tables', 'origin', 'Bản cũ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(981, 1, 'vi', 'core.base/tables', 'after_change', 'Sau khi thay đổi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(982, 1, 'vi', 'core.base/tables', 'notes', 'Ghi chú', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(983, 1, 'vi', 'core.base/tables', 'activated', 'kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(984, 1, 'vi', 'core.base/tables', 'browser', 'Trình duyệt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(985, 1, 'vi', 'core.base/tables', 'deactivated', 'hủy kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(986, 1, 'vi', 'core.base/tables', 'description', 'Mô tả', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(987, 1, 'vi', 'core.base/tables', 'session', 'Phiên', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(988, 1, 'vi', 'core.base/tables', 'views', 'Lượt xem', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(989, 1, 'vi', 'core.base/tables', 'restore', 'Khôi phục', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(990, 1, 'vi', 'core.base/tables', 'edit', 'Sửa', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(991, 1, 'vi', 'core.base/tables', 'delete', 'Xóa', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(992, 1, 'vi', 'core.base/tables', 'action', 'Hành động', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(993, 1, 'vi', 'core.base/tables', 'activate', 'Kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(994, 1, 'vi', 'core.base/tables', 'add_new', 'Thêm mới', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(995, 1, 'vi', 'core.base/tables', 'all', 'Tất cả', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(996, 1, 'vi', 'core.base/tables', 'cancel', 'Hủy bỏ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(997, 1, 'vi', 'core.base/tables', 'confirm_delete', 'Xác nhận xóa', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(998, 1, 'vi', 'core.base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(999, 1, 'vi', 'core.base/tables', 'csv', 'CSV', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1000, 1, 'vi', 'core.base/tables', 'deactivate', 'Hủy kích hoạt', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1001, 1, 'vi', 'core.base/tables', 'delete_entry', 'Xóa bản ghi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1002, 1, 'vi', 'core.base/tables', 'display', 'Hiển thị', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1003, 1, 'vi', 'core.base/tables', 'excel', 'Excel', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1004, 1, 'vi', 'core.base/tables', 'export', 'Xuất bản', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1005, 1, 'vi', 'core.base/tables', 'filter', 'Nhập từ khóa...', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1006, 1, 'vi', 'core.base/tables', 'filtered_from', 'được lọc từ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1007, 1, 'vi', 'core.base/tables', 'in', 'trong tổng số', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1008, 1, 'vi', 'core.base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1009, 1, 'vi', 'core.base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1010, 1, 'vi', 'core.base/tables', 'no_record', 'Không có dữ liệu', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1011, 1, 'vi', 'core.base/tables', 'pdf', 'PDF', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1012, 1, 'vi', 'core.base/tables', 'print', 'In', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1013, 1, 'vi', 'core.base/tables', 'records', 'bản ghi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1014, 1, 'vi', 'core.base/tables', 'reload', 'Tải lại', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1015, 1, 'vi', 'core.base/tables', 'reset', 'Làm mới', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1016, 1, 'vi', 'core.base/tables', 'save', 'Lưu', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1017, 1, 'vi', 'core.base/tables', 'show_from', 'Hiển thị từ', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1018, 1, 'vi', 'core.base/tables', 'template', 'Giao diện', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1019, 1, 'vi', 'core.base/tables', 'to', 'đến', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1020, 1, 'vi', 'core.base/tables', 'view', 'Xem chi tiết', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1021, 1, 'vi', 'core.base/tables', 'email', 'Email', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1022, 1, 'vi', 'core.base/tables', 'image', 'Hình ảnh', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1023, 1, 'vi', 'core.base/tables', 'is_featured', 'Nổi bật', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1024, 1, 'vi', 'core.base/tables', 'last_login', 'Lần cuối đăng nhập', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1025, 1, 'vi', 'core.base/tables', 'order', 'Thứ tự', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1026, 1, 'vi', 'core.base/tables', 'shortcode', 'Shortcode', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1027, 1, 'vi', 'core.base/tables', 'slug', 'Slug', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1028, 1, 'vi', 'core.base/tables', 'title', 'Tiêu đề', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1029, 1, 'vi', 'core.base/tabs', 'detail', 'Chi tiết', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1030, 1, 'vi', 'core.base/tabs', 'file', 'Tập tin', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1031, 1, 'vi', 'core.base/tabs', 'record_note', 'Ghi chú', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1032, 1, 'vi', 'core.base/tabs', 'revision', 'Lịch sử thay đổi', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1033, 1, 'CN', 'core.base/zh/cache', 'cache_management', '缓存管理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1034, 1, 'CN', 'core.base/zh/cache', 'cache_commands', '清理缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1035, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.title', '清理所有内容缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1036, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.description', '清理内容数据库缓存，静态数据缓存...当您更新数据后前台无法显示时请运行此命令。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1037, 1, 'CN', 'core.base/zh/cache', 'commands.clear_cms_cache.success_msg', '缓存已清理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1038, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.title', '清理视图缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1039, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.description', '清理编译视图缓存。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1040, 1, 'CN', 'core.base/zh/cache', 'commands.refresh_compiled_views.success_msg', '视图缓存已更新', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1041, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.title', '清理配置缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1042, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.description', '当您在生产环境中更新数据后，可能需要刷新配置缓存。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1043, 1, 'CN', 'core.base/zh/cache', 'commands.clear_config_cache.success_msg', '配置缓存已更新。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1044, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.title', '清理路由缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1045, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.description', '清理路由缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1046, 1, 'CN', 'core.base/zh/cache', 'commands.clear_route_cache.success_msg', '路由缓存已更新', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1047, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.title', '清理log', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1048, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.description', '清理系统log文件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1049, 1, 'CN', 'core.base/zh/cache', 'commands.clear_log.success_msg', '系统log文件已清理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1050, 1, 'CN', 'core.base/zh/errors', '401_title', '无此权限', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1051, 1, 'CN', 'core.base/zh/errors', '401_msg', '<li>您未取得授权阅读所选内容。</li>\n	                <li>您的账户类型错误。</li>\n	                <li>您无权限读取相关资源。</li>\n	                <li>您的订阅已过期。</li>', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1052, 1, 'CN', 'core.base/zh/errors', '404_title', '无法找到此页面', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1053, 1, 'CN', 'core.base/zh/errors', '404_msg', '<li>页面不存在。</li>\n	                <li>链接不存在。</li>\n	                <li>页面已移动至新地址。</li>\n	                <li>页面出错。</li>\n	                <li>您无权限读取相关资源。</li>', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1054, 1, 'CN', 'core.base/zh/errors', '500_title', '页面无法载入', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1055, 1, 'CN', 'core.base/zh/errors', '500_msg', '<li>页面不存在。</li>\n	                <li>链接不存在。</li>\n	                <li>页面已移动至新地址。</li>\n	                <li>页面出错。</li>\n	                <li>您无权限读取相关资源。</li>', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1056, 1, 'CN', 'core.base/zh/errors', 'reasons', '可能包含下列一个或多个原因', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1057, 1, 'CN', 'core.base/zh/errors', 'try_again', '请几分钟后重试，或重新登录后台<a href="http://botbal.demo.lauway.com/admin">点击</a>.', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1058, 1, 'CN', 'core.base/zh/forms', 'choose_image', '选择图片', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1059, 1, 'CN', 'core.base/zh/forms', 'actions', '操作', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1060, 1, 'CN', 'core.base/zh/forms', 'save', '保存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1061, 1, 'CN', 'core.base/zh/forms', 'save_and_continue', '保存并退出', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1062, 1, 'CN', 'core.base/zh/forms', 'image', '图片', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1063, 1, 'CN', 'core.base/zh/forms', 'image_placeholder', '输入图片目录或点击上传按钮', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1064, 1, 'CN', 'core.base/zh/forms', 'create', '新建', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1065, 1, 'CN', 'core.base/zh/forms', 'edit', '编辑', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1066, 1, 'CN', 'core.base/zh/forms', 'permalink', '永久链接', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1067, 1, 'CN', 'core.base/zh/forms', 'ok', '确定', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1068, 1, 'CN', 'core.base/zh/forms', 'cancel', '取消', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1069, 1, 'CN', 'core.base/zh/forms', 'character_remain', '剩余字符数', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1070, 1, 'CN', 'core.base/zh/forms', 'template', '模板', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1071, 1, 'CN', 'core.base/zh/forms', 'choose_file', '选择文件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1072, 1, 'CN', 'core.base/zh/forms', 'file', '文件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1073, 1, 'CN', 'core.base/zh/forms', 'content', '内容', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1074, 1, 'CN', 'core.base/zh/forms', 'description', '描述', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1075, 1, 'CN', 'core.base/zh/forms', 'name', '名称', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1076, 1, 'CN', 'core.base/zh/forms', 'slug', 'Slug', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1077, 1, 'CN', 'core.base/zh/forms', 'title', '名称', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1078, 1, 'CN', 'core.base/zh/forms', 'value', '值', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1079, 1, 'CN', 'core.base/zh/forms', 'name_placeholder', '名称', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1080, 1, 'CN', 'core.base/zh/forms', 'alias_placeholder', '别名', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1081, 1, 'CN', 'core.base/zh/forms', 'description_placeholder', '描述', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1082, 1, 'CN', 'core.base/zh/forms', 'parent', '父项', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1083, 1, 'CN', 'core.base/zh/forms', 'icon', '图标', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1084, 1, 'CN', 'core.base/zh/forms', 'icon_placeholder', '如: fa fa-home', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1085, 1, 'CN', 'core.base/zh/forms', 'order_by', '排序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1086, 1, 'CN', 'core.base/zh/forms', 'order_by_placeholder', '排序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1087, 1, 'CN', 'core.base/zh/forms', 'featured', '精选?', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1088, 1, 'CN', 'core.base/zh/forms', 'is_default', '默认?', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1089, 1, 'CN', 'core.base/zh/forms', 'update', '更新', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1090, 1, 'CN', 'core.base/zh/forms', 'publish', '发布', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1091, 1, 'CN', 'core.base/zh/forms', 'remove_image', '移除图像', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1092, 1, 'CN', 'core.base/zh/forms', 'order', '顺序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1093, 1, 'CN', 'core.base/zh/forms', 'alias', '别名', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1094, 1, 'CN', 'core.base/zh/forms', 'basic_information', '基本信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1095, 1, 'CN', 'core.base/zh/forms', 'short_code', '短码', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1096, 1, 'CN', 'core.base/zh/forms', 'add_short_code', '增加短码', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1097, 1, 'CN', 'core.base/zh/forms', 'add', '新增', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1098, 1, 'CN', 'core.base/zh/forms', 'link', '链接', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1099, 1, 'CN', 'core.base/zh/layouts', 'platform_admin', '后台管理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1100, 1, 'CN', 'core.base/zh/layouts', 'dashboard', '仪表盘', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1101, 1, 'CN', 'core.base/zh/layouts', 'appearance', '显示', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1102, 1, 'CN', 'core.base/zh/layouts', 'menu', '菜单', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1103, 1, 'CN', 'core.base/zh/layouts', 'widgets', '小工具', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1104, 1, 'CN', 'core.base/zh/layouts', 'theme_options', '模板配置', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1105, 1, 'CN', 'core.base/zh/layouts', 'plugins', '插件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1106, 1, 'CN', 'core.base/zh/layouts', 'settings', '设置', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1107, 1, 'CN', 'core.base/zh/layouts', 'setting_general', '通用', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1108, 1, 'CN', 'core.base/zh/layouts', 'setting_email', '电子邮件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1109, 1, 'CN', 'core.base/zh/layouts', 'system_information', '系统信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1110, 1, 'CN', 'core.base/zh/layouts', 'theme', '模板', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1111, 1, 'CN', 'core.base/zh/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1112, 1, 'CN', 'core.base/zh/layouts', 'profile', '个人信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1113, 1, 'CN', 'core.base/zh/layouts', 'logout', '退出', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1114, 1, 'CN', 'core.base/zh/layouts', 'no_search_result', '无匹配结果，请使用其他关键字', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1115, 1, 'CN', 'core.base/zh/layouts', 'home', '主页', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1116, 1, 'CN', 'core.base/zh/layouts', 'search', '查找', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1117, 1, 'CN', 'core.base/zh/layouts', 'add_new', '新增', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1118, 1, 'CN', 'core.base/zh/layouts', 'n_a', 'N/A', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1119, 1, 'CN', 'core.base/zh/layouts', 'page_loaded_time', '页面载入时间', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1120, 1, 'CN', 'core.base/zh/layouts', 'view_website', '查看网站', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1121, 1, 'CN', 'core.base/zh/mail', 'send-fail', '邮件发送失败', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1122, 1, 'CN', 'core.base/zh/mail', 'happy_birthday', '生日快乐🎂!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1123, 1, 'CN', 'core.base/zh/notices', 'create_success_message', '创建成功', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1124, 1, 'CN', 'core.base/zh/notices', 'update_success_message', '更新成功', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1125, 1, 'CN', 'core.base/zh/notices', 'delete_success_message', '删除成功', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1126, 1, 'CN', 'core.base/zh/notices', 'success_header', '成功!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1127, 1, 'CN', 'core.base/zh/notices', 'error_header', '错误!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1128, 1, 'CN', 'core.base/zh/notices', 'cannot_delete', '无法删除此记录!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1129, 1, 'CN', 'core.base/zh/notices', 'no_select', '请选择至少一条记录执行此操作!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1130, 1, 'CN', 'core.base/zh/notices', 'processing_request', '我们正在处理您的请求！', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1131, 1, 'CN', 'core.base/zh/notices', 'error', '错误!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1132, 1, 'CN', 'core.base/zh/notices', 'success', '成功!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1133, 1, 'CN', 'core.base/zh/notices', 'info', '信息!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1134, 1, 'CN', 'core.base/zh/system', 'no_select', '请至少选择一条记录进行此操作!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1135, 1, 'CN', 'core.base/zh/system', 'cannot_find_user', '无法找到指定的用户', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1136, 1, 'CN', 'core.base/zh/system', 'supper_revoked', '超级用户访问被取消', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1137, 1, 'CN', 'core.base/zh/system', 'cannot_revoke_yourself', '无法自行撤销超级用户访问权限!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1138, 1, 'CN', 'core.base/zh/system', 'cant_remove_supper', '你没有权限删除这个超级用户', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1139, 1, 'CN', 'core.base/zh/system', 'cant_find_user_with_email', '无法找到指定电子邮件地址的用户', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1140, 1, 'CN', 'core.base/zh/system', 'supper_granted', '授予超级用户访问权限', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1141, 1, 'CN', 'core.base/zh/system', 'delete_log_success', '删除日志文件成功!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1142, 1, 'CN', 'core.base/zh/system', 'get_member_success', '用户列表成功获取', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1143, 1, 'CN', 'core.base/zh/system', 'error_occur', '发生了以下错误', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1144, 1, 'CN', 'core.base/zh/system', 'user_management', '用户管理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1145, 1, 'CN', 'core.base/zh/system', 'user_management_description', '管理用户.', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1146, 1, 'CN', 'core.base/zh/system', 'role_and_permission', '角色和权限', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1147, 1, 'CN', 'core.base/zh/system', 'role_and_permission_description', '管理可用角色.', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1148, 1, 'CN', 'core.base/zh/system', 'user.list_super', '列出超级用户', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1149, 1, 'CN', 'core.base/zh/system', 'user.email', '电子邮件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1150, 1, 'CN', 'core.base/zh/system', 'user.last_login', '上次登录', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1151, 1, 'CN', 'core.base/zh/system', 'user.username', '用户名', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1152, 1, 'CN', 'core.base/zh/system', 'user.add_user', '添加超级用户', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1153, 1, 'CN', 'core.base/zh/system', 'user.cancel', '取消', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1154, 1, 'CN', 'core.base/zh/system', 'user.create', '创建', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1155, 1, 'CN', 'core.base/zh/system', 'options.features', '功能访问控制', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1156, 1, 'CN', 'core.base/zh/system', 'options.feature_description', '可用性管理。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1157, 1, 'CN', 'core.base/zh/system', 'options.manage_super', '超级用户管理', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1158, 1, 'CN', 'core.base/zh/system', 'options.manage_super_description', '添加/删除超级用户。', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1159, 1, 'CN', 'core.base/zh/system', 'options.info', '系统信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1160, 1, 'CN', 'core.base/zh/system', 'options.info_description', '关于当前系统配置的所有信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1161, 1, 'CN', 'core.base/zh/system', 'info.title', '系统信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1162, 1, 'CN', 'core.base/zh/system', 'info.cache', '缓存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1163, 1, 'CN', 'core.base/zh/system', 'info.locale', '区域', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1164, 1, 'CN', 'core.base/zh/system', 'info.environment', '环境', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1165, 1, 'CN', 'core.base/zh/system', 'enabled', '已启用', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1166, 1, 'CN', 'core.base/zh/system', 'deactivated', '已禁用', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1167, 1, 'CN', 'core.base/zh/system', 'activated', '已激活', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1168, 1, 'CN', 'core.base/zh/system', 'activate', '激活', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1169, 1, 'CN', 'core.base/zh/system', 'deactivate', '禁用', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1170, 1, 'CN', 'core.base/zh/system', 'author', '作者', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1171, 1, 'CN', 'core.base/zh/system', 'update_plugin_status_success', '插件更新成功', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1172, 1, 'CN', 'core.base/zh/system', 'disabled_in_demo_mode', '您无法在演示模式下执行此操作!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1173, 1, 'CN', 'core.base/zh/system', 'invalid_plugin', '这个插件不是一个有效的插件，请再次检查！', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1174, 1, 'CN', 'core.base/zh/system', 'version', '版本', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1175, 1, 'CN', 'core.base/zh/system', 'report_description', '请分享此信息进行故障排除', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1176, 1, 'CN', 'core.base/zh/system', 'get_system_report', '获取系统报告', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1177, 1, 'CN', 'core.base/zh/system', 'system_environment', '系统环境', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1178, 1, 'CN', 'core.base/zh/system', 'framework_version', '框架版本', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1179, 1, 'CN', 'core.base/zh/system', 'timezone', '时区', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1180, 1, 'CN', 'core.base/zh/system', 'debug_mode', '调试模式', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1181, 1, 'CN', 'core.base/zh/system', 'storage_dir_writable', '存储目录可写', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1182, 1, 'CN', 'core.base/zh/system', 'cache_dir_writable', '缓存目录可写', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1183, 1, 'CN', 'core.base/zh/system', 'app_size', '程序大小', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1184, 1, 'CN', 'core.base/zh/system', 'server_environment', '服务器环境', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1185, 1, 'CN', 'core.base/zh/system', 'php_version', 'PHP版本', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1186, 1, 'CN', 'core.base/zh/system', 'server_software', '服务器软件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1187, 1, 'CN', 'core.base/zh/system', 'server_os', '服务器操作系统', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1188, 1, 'CN', 'core.base/zh/system', 'database', '数据库', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1189, 1, 'CN', 'core.base/zh/system', 'ssl_installed', '已安装SSL', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1190, 1, 'CN', 'core.base/zh/system', 'cache_driver', '缓存驱动程序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1191, 1, 'CN', 'core.base/zh/system', 'session_driver', '会话驱动程序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1192, 1, 'CN', 'core.base/zh/system', 'mbstring_ext', 'Mbstring扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1193, 1, 'CN', 'core.base/zh/system', 'openssl_ext', 'OpenSSL扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1194, 1, 'CN', 'core.base/zh/system', 'pdo_ext', 'PDO扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1195, 1, 'CN', 'core.base/zh/system', 'curl_ext', 'CURL扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1196, 1, 'CN', 'core.base/zh/system', 'exif_ext', 'Exif扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1197, 1, 'CN', 'core.base/zh/system', 'file_info_ext', 'File info扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1198, 1, 'CN', 'core.base/zh/system', 'tokenizer_ext', 'Tokenizer扩展', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1199, 1, 'CN', 'core.base/zh/system', 'extra_stats', '其他状态', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1200, 1, 'CN', 'core.base/zh/system', 'installed_packages', '安装的软件包及其版本号', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1201, 1, 'CN', 'core.base/zh/system', 'extra_information', '额外信息', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1202, 1, 'CN', 'core.base/zh/system', 'copy_report', '复制报告', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1203, 1, 'CN', 'core.base/zh/system', 'package_name', '包名', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1204, 1, 'CN', 'core.base/zh/system', 'dependency_name', '依赖包', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1205, 1, 'CN', 'core.base/zh/system', 'plugins', '插件', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1206, 1, 'CN', 'core.base/zh/system', 'missing_required_plugins', '请在激活此插件前激活插件: :plugins!', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1207, 1, 'CN', 'core.base/zh/tables', 'filter_enabled', '高级筛选', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1208, 1, 'CN', 'core.base/zh/tables', 'id', 'ID', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1209, 1, 'CN', 'core.base/zh/tables', 'name', '名称', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1210, 1, 'CN', 'core.base/zh/tables', 'slug', 'Slug', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1211, 1, 'CN', 'core.base/zh/tables', 'title', '标题', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1212, 1, 'CN', 'core.base/zh/tables', 'order_by', '排序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1213, 1, 'CN', 'core.base/zh/tables', 'order', '排序', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1214, 1, 'CN', 'core.base/zh/tables', 'status', '状态', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1215, 1, 'CN', 'core.base/zh/tables', 'created_at', '创建时间', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1216, 1, 'CN', 'core.base/zh/tables', 'updated_at', '更新时间', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1217, 1, 'CN', 'core.base/zh/tables', 'description', '描述', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1218, 1, 'CN', 'core.base/zh/tables', 'operations', '操作', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1219, 1, 'CN', 'core.base/zh/tables', 'loading_data', '从服务器载入数据', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1220, 1, 'CN', 'core.base/zh/tables', 'url', 'URL', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1221, 1, 'CN', 'core.base/zh/tables', 'author', '作者', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1222, 1, 'CN', 'core.base/zh/tables', 'notes', '备注', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1223, 1, 'CN', 'core.base/zh/tables', 'column', '列', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1224, 1, 'CN', 'core.base/zh/tables', 'origin', '来源', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1225, 1, 'CN', 'core.base/zh/tables', 'after_change', '更改后', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1226, 1, 'CN', 'core.base/zh/tables', 'views', '视图', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1227, 1, 'CN', 'core.base/zh/tables', 'browser', '浏览', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1228, 1, 'CN', 'core.base/zh/tables', 'session', '会话', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1229, 1, 'CN', 'core.base/zh/tables', 'activated', '已激活', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1230, 1, 'CN', 'core.base/zh/tables', 'deactivated', '已禁用', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1231, 1, 'CN', 'core.base/zh/tables', 'is_featured', '精选', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1232, 1, 'CN', 'core.base/zh/tables', 'edit', '编辑', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1233, 1, 'CN', 'core.base/zh/tables', 'delete', '删除', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1234, 1, 'CN', 'core.base/zh/tables', 'restore', '恢复', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1235, 1, 'CN', 'core.base/zh/tables', 'activate', '激活', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1236, 1, 'CN', 'core.base/zh/tables', 'deactivate', '禁用', '2018-07-16 03:35:13', '2018-07-16 03:35:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1237, 1, 'CN', 'core.base/zh/tables', 'filter', '输入字符筛选...', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1238, 1, 'CN', 'core.base/zh/tables', 'excel', 'Excel', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1239, 1, 'CN', 'core.base/zh/tables', 'export', '导出', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1240, 1, 'CN', 'core.base/zh/tables', 'csv', 'CSV', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1241, 1, 'CN', 'core.base/zh/tables', 'pdf', 'PDF', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1242, 1, 'CN', 'core.base/zh/tables', 'print', '打印', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1243, 1, 'CN', 'core.base/zh/tables', 'reset', '重设', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1244, 1, 'CN', 'core.base/zh/tables', 'reload', '重载', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1245, 1, 'CN', 'core.base/zh/tables', 'display', '显示', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1246, 1, 'CN', 'core.base/zh/tables', 'all', '全部', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1247, 1, 'CN', 'core.base/zh/tables', 'add_new', '新增', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1248, 1, 'CN', 'core.base/zh/tables', 'action', '操作', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1249, 1, 'CN', 'core.base/zh/tables', 'delete_entry', '删除', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1250, 1, 'CN', 'core.base/zh/tables', 'view', '查看详情', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1251, 1, 'CN', 'core.base/zh/tables', 'save', '保存', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1252, 1, 'CN', 'core.base/zh/tables', 'show_from', '显示', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1253, 1, 'CN', 'core.base/zh/tables', 'to', '到', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1254, 1, 'CN', 'core.base/zh/tables', 'in', '共', '2018-07-16 03:35:13', '2018-07-16 03:35:13'),
(1255, 1, 'CN', 'core.base/zh/tables', 'records', '记录', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1256, 1, 'CN', 'core.base/zh/tables', 'no_data', '无数据', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1257, 1, 'CN', 'core.base/zh/tables', 'no_record', '无记录', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1258, 1, 'CN', 'core.base/zh/tables', 'filtered_from', '筛选', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1259, 1, 'CN', 'core.base/zh/tables', 'loading', '从服务器载入数据', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1260, 1, 'CN', 'core.base/zh/tables', 'confirm_delete', '确认删除', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1261, 1, 'CN', 'core.base/zh/tables', 'confirm_delete_msg', '是否确定删除此记录?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1262, 1, 'CN', 'core.base/zh/tables', 'cancel', '取消', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1263, 1, 'CN', 'core.base/zh/tables', 'template', '模板', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1264, 1, 'CN', 'core.base/zh/tables', 'email', 'Email', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1265, 1, 'CN', 'core.base/zh/tables', 'last_login', '上次登录', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1266, 1, 'CN', 'core.base/zh/tables', 'shortcode', '代码', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1267, 1, 'CN', 'core.base/zh/tables', 'image', '图片', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1268, 1, 'CN', 'core.base/zh/tabs', 'detail', '详情', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1269, 1, 'CN', 'core.base/zh/tabs', 'file', '文件', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1270, 1, 'CN', 'core.base/zh/tabs', 'record_note', '备注', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1271, 1, 'CN', 'core.base/zh/tabs', 'revision', '版本历史', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1272, 1, 'en', 'core.dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1273, 1, 'en', 'core.dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1274, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1275, 1, 'en', 'core.dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1276, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1277, 1, 'en', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1278, 1, 'en', 'core.dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1279, 1, 'en', 'core.dashboard/dashboard', 'hide', 'Hide', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1280, 1, 'en', 'core.dashboard/dashboard', 'reload', 'Reload', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1281, 1, 'en', 'core.dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1282, 1, 'en', 'core.dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1283, 1, 'en', 'core.dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1284, 1, 'en', 'core.dashboard/dashboard', 'fullscreen', 'Full screen', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1285, 1, 'en', 'core.dashboard/dashboard', 'title', 'Dashboard', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1286, 1, 'vi', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1287, 1, 'vi', 'core.dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1288, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1289, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1290, 1, 'vi', 'core.dashboard/dashboard', 'hide', 'Ẩn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1291, 1, 'vi', 'core.dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1292, 1, 'vi', 'core.dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1293, 1, 'vi', 'core.dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1294, 1, 'vi', 'core.dashboard/dashboard', 'reload', 'Làm mới', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1295, 1, 'vi', 'core.dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1296, 1, 'vi', 'core.dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1297, 1, 'vi', 'core.dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1298, 1, 'vi', 'core.dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1299, 1, 'vi', 'core.dashboard/dashboard', 'title', 'Trang quản trị', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1300, 1, 'CN', 'core.dashboard/zh/dashboard', 'update_position_success', '更新小部件位置成功！', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1301, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide_success', '更新小部件成功', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1302, 1, 'CN', 'core.dashboard/zh/dashboard', 'confirm_hide', '你确定吗？', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1303, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide_message', '你真的想隐藏这个小部件吗？它会在仪表板上消失！', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1304, 1, 'CN', 'core.dashboard/zh/dashboard', 'confirm_hide_btn', '是的，隐藏这个小部件', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1305, 1, 'CN', 'core.dashboard/zh/dashboard', 'cancel_hide_btn', '取消', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1306, 1, 'CN', 'core.dashboard/zh/dashboard', 'collapse_expand', '折叠/展开', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1307, 1, 'CN', 'core.dashboard/zh/dashboard', 'hide', '隐藏', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1308, 1, 'CN', 'core.dashboard/zh/dashboard', 'reload', '重新加载', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1309, 1, 'CN', 'core.dashboard/zh/dashboard', 'save_setting_success', '保存小部件设置成功！', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1310, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_not_exists', '小部件不存在!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1311, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_posts_recent', '最近新闻', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1312, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_page', '最常访问页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1313, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_browser', '浏览器排名', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1314, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_referrer', '推荐人排名', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1315, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_analytics_general', '站点分析', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1316, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_audit_logs', '管理日志', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1317, 1, 'CN', 'core.dashboard/zh/dashboard', 'widget_request_errors', '请求错误', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1318, 1, 'CN', 'core.dashboard/zh/dashboard', 'manage_widgets', '管理小工具', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1319, 1, 'CN', 'core.dashboard/zh/dashboard', 'fullscreen', '全屏', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1320, 1, 'CN', 'core.dashboard/zh/dashboard', 'title', '仪表盘', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1321, 1, 'en', 'core.menu/menu', 'name', 'Menu', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1322, 1, 'en', 'core.menu/menu', 'key_name', 'Menu name (key: :key)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1323, 1, 'en', 'core.menu/menu', 'basic_info', 'Basic information', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1324, 1, 'en', 'core.menu/menu', 'add_to_menu', 'Add to menu', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1325, 1, 'en', 'core.menu/menu', 'custom_link', 'Custom link', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1326, 1, 'en', 'core.menu/menu', 'add_link', 'Add link', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1327, 1, 'en', 'core.menu/menu', 'structure', 'Menu structure', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1328, 1, 'en', 'core.menu/menu', 'remove', 'Remove', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1329, 1, 'en', 'core.menu/menu', 'cancel', 'Cancel', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1330, 1, 'en', 'core.menu/menu', 'title', 'Title', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1331, 1, 'en', 'core.menu/menu', 'icon', 'Icon', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1332, 1, 'en', 'core.menu/menu', 'url', 'URL', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1333, 1, 'en', 'core.menu/menu', 'target', 'Target', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1334, 1, 'en', 'core.menu/menu', 'css_class', 'CSS class', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1335, 1, 'en', 'core.menu/menu', 'self_open_link', 'Open link directly', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1336, 1, 'en', 'core.menu/menu', 'blank_open_link', 'Open link in new tab', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1337, 1, 'en', 'core.menu/menu', 'create', 'Create menu', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1338, 1, 'en', 'core.menu/menu', 'edit', 'Edit menu', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1339, 1, 'vi', 'core.menu/menu', 'name', 'Menu', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1340, 1, 'vi', 'core.menu/menu', 'cancel', 'Hủy bỏ', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1341, 1, 'vi', 'core.menu/menu', 'add_link', 'Thêm liên kết', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1342, 1, 'vi', 'core.menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1343, 1, 'vi', 'core.menu/menu', 'basic_info', 'Thông tin cơ bản', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1344, 1, 'vi', 'core.menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1345, 1, 'vi', 'core.menu/menu', 'css_class', 'CSS class', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1346, 1, 'vi', 'core.menu/menu', 'custom_link', 'Liên kết tùy chọn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1347, 1, 'vi', 'core.menu/menu', 'icon', 'Biểu tượng', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1348, 1, 'vi', 'core.menu/menu', 'key_name', 'Tên menu (key::key)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1349, 1, 'vi', 'core.menu/menu', 'remove', 'Xóa', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1350, 1, 'vi', 'core.menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1351, 1, 'vi', 'core.menu/menu', 'structure', 'Cấu trúc trình đơn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1352, 1, 'vi', 'core.menu/menu', 'target', 'Target', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1353, 1, 'vi', 'core.menu/menu', 'title', 'Tiêu đề', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1354, 1, 'vi', 'core.menu/menu', 'url', 'URL', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1355, 1, 'vi', 'core.menu/menu', 'create', 'Tạo trình đơn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1356, 1, 'vi', 'core.menu/menu', 'edit', 'Sửa trình đơn', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1357, 1, 'CN', 'core.menu/zh/menu', 'name', '菜单', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1358, 1, 'CN', 'core.menu/zh/menu', 'key_name', '菜单名称 (主键: :key)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1359, 1, 'CN', 'core.menu/zh/menu', 'basic_info', '基本信息', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1360, 1, 'CN', 'core.menu/zh/menu', 'add_to_menu', '加入菜单', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1361, 1, 'CN', 'core.menu/zh/menu', 'custom_link', '自定义链接', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1362, 1, 'CN', 'core.menu/zh/menu', 'add_link', '新增链接', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1363, 1, 'CN', 'core.menu/zh/menu', 'structure', '菜单结构', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1364, 1, 'CN', 'core.menu/zh/menu', 'remove', '删除', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1365, 1, 'CN', 'core.menu/zh/menu', 'cancel', '取消', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1366, 1, 'CN', 'core.menu/zh/menu', 'title', '标题', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1367, 1, 'CN', 'core.menu/zh/menu', 'icon', '图标', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1368, 1, 'CN', 'core.menu/zh/menu', 'url', '超链接', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1369, 1, 'CN', 'core.menu/zh/menu', 'target', '目的窗口', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1370, 1, 'CN', 'core.menu/zh/menu', 'css_class', 'CSS类', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1371, 1, 'CN', 'core.menu/zh/menu', 'self_open_link', '直接打开链接', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1372, 1, 'CN', 'core.menu/zh/menu', 'blank_open_link', '在新的标签页打开', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1373, 1, 'CN', 'core.menu/zh/menu', 'create', '创建菜单', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1374, 1, 'CN', 'core.menu/zh/menu', 'edit', '编辑菜单', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1375, 1, 'en', 'core.page/pages', 'model', 'Page', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1376, 1, 'en', 'core.page/pages', 'models', 'Pages', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1377, 1, 'en', 'core.page/pages', 'list', 'List Pages', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1378, 1, 'en', 'core.page/pages', 'create', 'Create new page', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1379, 1, 'en', 'core.page/pages', 'edit', 'Edit page', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1380, 1, 'en', 'core.page/pages', 'form.name', 'Name', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1381, 1, 'en', 'core.page/pages', 'form.name_placeholder', 'Page''s name (Maximum 120 characters)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1382, 1, 'en', 'core.page/pages', 'form.content', 'Content', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1383, 1, 'en', 'core.page/pages', 'form.note', 'Note content', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1384, 1, 'en', 'core.page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1385, 1, 'en', 'core.page/pages', 'notices.update_success_message', 'Update successfully', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1386, 1, 'en', 'core.page/pages', 'cannot_delete', 'Page could not be deleted', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1387, 1, 'en', 'core.page/pages', 'deleted', 'Page deleted', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1388, 1, 'en', 'core.page/pages', 'pages', 'Pages', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1389, 1, 'en', 'core.page/pages', 'menu', 'Pages', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1390, 1, 'en', 'core.page/pages', 'menu_name', 'Pages', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1391, 1, 'en', 'core.page/pages', 'edit_this_page', 'Edit this page', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1392, 1, 'vi', 'core.page/pages', 'model', 'Trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1393, 1, 'vi', 'core.page/pages', 'models', 'Trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1394, 1, 'vi', 'core.page/pages', 'list', 'Danh sách trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1395, 1, 'vi', 'core.page/pages', 'create', 'Thêm trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1396, 1, 'vi', 'core.page/pages', 'edit', 'Sửa trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1397, 1, 'vi', 'core.page/pages', 'form.name', 'Tiêu đề trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1398, 1, 'vi', 'core.page/pages', 'form.note', 'Nội dung ghi chú', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1399, 1, 'vi', 'core.page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1400, 1, 'vi', 'core.page/pages', 'form.content', 'Nội dung', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1401, 1, 'vi', 'core.page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1402, 1, 'vi', 'core.page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1403, 1, 'vi', 'core.page/pages', 'deleted', 'Xóa trang thành công', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1404, 1, 'vi', 'core.page/pages', 'cannot_delete', 'Không thể xóa trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1405, 1, 'vi', 'core.page/pages', 'menu', 'Trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1406, 1, 'vi', 'core.page/pages', 'menu_name', 'Trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1407, 1, 'vi', 'core.page/pages', 'edit_this_page', 'Sửa trang này', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1408, 1, 'vi', 'core.page/pages', 'pages', 'Trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1409, 1, 'CN', 'core.page/zh/pages', 'model', '页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1410, 1, 'CN', 'core.page/zh/pages', 'models', '页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1411, 1, 'CN', 'core.page/zh/pages', 'list', '页面列表', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1412, 1, 'CN', 'core.page/zh/pages', 'create', '新建页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1413, 1, 'CN', 'core.page/zh/pages', 'edit', '编辑页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1414, 1, 'CN', 'core.page/zh/pages', 'form.name', '名称', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1415, 1, 'CN', 'core.page/zh/pages', 'form.name_placeholder', '页面名称 (最多120字符)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1416, 1, 'CN', 'core.page/zh/pages', 'form.content', '内容', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1417, 1, 'CN', 'core.page/zh/pages', 'form.note', '备注内容', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1418, 1, 'CN', 'core.page/zh/pages', 'notices.no_select', '请至少选择一项纪录!', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1419, 1, 'CN', 'core.page/zh/pages', 'notices.update_success_message', '更新成功', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1420, 1, 'CN', 'core.page/zh/pages', 'cannot_delete', '页面无法删除', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1421, 1, 'CN', 'core.page/zh/pages', 'deleted', '页面已删除', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1422, 1, 'CN', 'core.page/zh/pages', 'pages', '页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1423, 1, 'CN', 'core.page/zh/pages', 'menu', '页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1424, 1, 'CN', 'core.page/zh/pages', 'menu_name', '页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1425, 1, 'CN', 'core.page/zh/pages', 'edit_this_page', '编辑此页面', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1426, 1, 'en', 'core.setting/setting', 'title', 'Settings', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1427, 1, 'en', 'core.setting/setting', 'email_setting_title', 'Email settings', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1428, 1, 'en', 'core.setting/setting', 'general.theme', 'Theme', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1429, 1, 'en', 'core.setting/setting', 'general.description', 'Setting site information', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1430, 1, 'en', 'core.setting/setting', 'general.title', 'General', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1431, 1, 'en', 'core.setting/setting', 'general.general_block', 'General Information', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1432, 1, 'en', 'core.setting/setting', 'general.rich_editor', 'Rich Editor', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1433, 1, 'en', 'core.setting/setting', 'general.site_title', 'Site title', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1434, 1, 'en', 'core.setting/setting', 'general.admin_email', 'Admin Email', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1435, 1, 'en', 'core.setting/setting', 'general.seo_block', 'SEO Configuration', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1436, 1, 'en', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1437, 1, 'en', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1438, 1, 'en', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1439, 1, 'en', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1440, 1, 'en', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1441, 1, 'en', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1442, 1, 'en', 'core.setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1443, 1, 'en', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1444, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1445, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1446, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (maximum 60 characters, separate by "," character)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1447, 1, 'en', 'core.setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1448, 1, 'en', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1449, 1, 'en', 'core.setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1450, 1, 'en', 'core.setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1451, 1, 'en', 'core.setting/setting', 'general.optimize_page_speed', 'Optimize page speed (minify HTML output, inline CSS, remove comments ..)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1452, 1, 'en', 'core.setting/setting', 'general.time_zone', 'Timezone', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1453, 1, 'en', 'core.setting/setting', 'general.default_admin_theme', 'Default admin theme', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1454, 1, 'en', 'core.setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1455, 1, 'en', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1456, 1, 'en', 'core.setting/setting', 'general.enable', 'Enable', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1457, 1, 'en', 'core.setting/setting', 'general.disable', 'Disable', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1458, 1, 'en', 'core.setting/setting', 'general.enable_cache', 'Enable cache?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1459, 1, 'en', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1460, 1, 'en', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1461, 1, 'en', 'core.setting/setting', 'general.admin_logo', 'Admin logo', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1462, 1, 'en', 'core.setting/setting', 'general.admin_title', 'Admin title', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1463, 1, 'en', 'core.setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1464, 1, 'en', 'core.setting/setting', 'general.cache_block', 'Cache', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1465, 1, 'en', 'core.setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1466, 1, 'en', 'core.setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, admin bar, language', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1467, 1, 'en', 'core.setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1468, 1, 'en', 'core.setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1469, 1, 'en', 'core.setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1470, 1, 'en', 'core.setting/setting', 'general.yes', 'Yes', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1471, 1, 'en', 'core.setting/setting', 'general.no', 'No', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1472, 1, 'en', 'core.setting/setting', 'general.show_on_front', 'Your homepage displays', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1473, 1, 'en', 'core.setting/setting', 'general.select', '— Select —', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1474, 1, 'en', 'core.setting/setting', 'email.subject', 'Subject', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1475, 1, 'en', 'core.setting/setting', 'email.content', 'Content', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1476, 1, 'en', 'core.setting/setting', 'email.title', 'Setting for email template', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1477, 1, 'en', 'core.setting/setting', 'email.description', 'Email template using HTML & system variables.', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1478, 1, 'en', 'core.setting/setting', 'email.reset_to_default', 'Reset to default', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1479, 1, 'en', 'core.setting/setting', 'email.back', 'Back to settings', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1480, 1, 'en', 'core.setting/setting', 'email.reset_success', 'Reset back to default successfully', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1481, 1, 'en', 'core.setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1482, 1, 'en', 'core.setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1483, 1, 'en', 'core.setting/setting', 'email.continue', 'Continue', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1484, 1, 'en', 'core.setting/setting', 'email.sender_name', 'Sender name', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1485, 1, 'en', 'core.setting/setting', 'email.sender_name_placeholder', 'Name', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1486, 1, 'en', 'core.setting/setting', 'email.sender_email', 'Sender email', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1487, 1, 'en', 'core.setting/setting', 'email.driver', 'Driver', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1488, 1, 'en', 'core.setting/setting', 'email.port', 'Port', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1489, 1, 'en', 'core.setting/setting', 'email.port_placeholder', 'Ex: 587', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1490, 1, 'en', 'core.setting/setting', 'email.host', 'Host', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1491, 1, 'en', 'core.setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1492, 1, 'en', 'core.setting/setting', 'email.username', 'Username', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1493, 1, 'en', 'core.setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1494, 1, 'en', 'core.setting/setting', 'email.password', 'Password', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1495, 1, 'en', 'core.setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1496, 1, 'en', 'core.setting/setting', 'email.encryption', 'Encryption', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1497, 1, 'en', 'core.setting/setting', 'email.mail_gun_domain', 'Domain', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1498, 1, 'en', 'core.setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1499, 1, 'en', 'core.setting/setting', 'email.mail_gun_secret', 'Secret', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1500, 1, 'en', 'core.setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1501, 1, 'en', 'core.setting/setting', 'email.template_title', 'Email templates', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1502, 1, 'en', 'core.setting/setting', 'email.template_description', 'Base templates for all emails', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1503, 1, 'en', 'core.setting/setting', 'email.template_header', 'Email template header', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1504, 1, 'en', 'core.setting/setting', 'email.template_header_description', 'Template for header of emails', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1505, 1, 'en', 'core.setting/setting', 'email.template_footer', 'Email template footer', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1506, 1, 'en', 'core.setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1507, 1, 'en', 'core.setting/setting', 'media.title', 'Media', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1508, 1, 'en', 'core.setting/setting', 'media.driver', 'Driver', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1509, 1, 'en', 'core.setting/setting', 'media.description', 'Settings for media', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1510, 1, 'en', 'core.setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1511, 1, 'en', 'core.setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1512, 1, 'en', 'core.setting/setting', 'media.aws_default_region', 'AWS Default Region', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1513, 1, 'en', 'core.setting/setting', 'media.aws_bucket', 'AWS Bucket', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1514, 1, 'en', 'core.setting/setting', 'media.aws_url', 'AWS URL', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1515, 1, 'en', 'core.setting/setting', 'field_type_not_exists', 'This field type does not exist', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1516, 1, 'en', 'core.setting/setting', 'save_settings', 'Save settings', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1517, 1, 'en', 'core.setting/setting', 'template', 'Template', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1518, 1, 'en', 'core.setting/setting', 'description', 'Description', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1519, 1, 'en', 'core.setting/setting', 'enable', 'Enable', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1520, 1, 'vi', 'core.setting/setting', 'title', 'Cài đặt', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1521, 1, 'vi', 'core.setting/setting', 'general.theme', 'Giao diện', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1522, 1, 'vi', 'core.setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1523, 1, 'vi', 'core.setting/setting', 'general.title', 'Thông tin chung', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1524, 1, 'vi', 'core.setting/setting', 'general.general_block', 'Thông tin chung', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1525, 1, 'vi', 'core.setting/setting', 'general.site_title', 'Tên trang', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1526, 1, 'vi', 'core.setting/setting', 'general.admin_email', 'Email quản trị viên', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1527, 1, 'vi', 'core.setting/setting', 'general.seo_block', 'Cấu hình SEO', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1528, 1, 'vi', 'core.setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1529, 1, 'vi', 'core.setting/setting', 'general.seo_description', 'Mô tả SEO', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1530, 1, 'vi', 'core.setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1531, 1, 'vi', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1532, 1, 'vi', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1533, 1, 'vi', 'core.setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1534, 1, 'vi', 'core.setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1535, 1, 'vi', 'core.setting/setting', 'general.show_admin_bar', 'Hiển thị thanh quản trị (Khi quản trị viên đã đăng nhập, thanh quản trị luôn hiển thị trên website)?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1536, 1, 'vi', 'core.setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1537, 1, 'vi', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1538, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1539, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1540, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1541, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1542, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1543, 1, 'vi', 'core.setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1544, 1, 'vi', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1545, 1, 'vi', 'core.setting/setting', 'general.enable', 'Bật', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1546, 1, 'vi', 'core.setting/setting', 'general.disable', 'Tắt', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1547, 1, 'vi', 'core.setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1548, 1, 'vi', 'core.setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1549, 1, 'vi', 'core.setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1550, 1, 'vi', 'core.setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1551, 1, 'vi', 'core.setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1552, 1, 'vi', 'core.setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2018-07-16 03:35:14', '2018-07-16 03:35:14'),
(1553, 1, 'vi', 'core.setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1554, 1, 'vi', 'core.setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1555, 1, 'vi', 'core.setting/setting', 'general.yes', 'Bật', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1556, 1, 'vi', 'core.setting/setting', 'general.no', 'Tắt', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1557, 1, 'vi', 'core.setting/setting', 'email.subject', 'Tiêu đề', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1558, 1, 'vi', 'core.setting/setting', 'email.content', 'Nội dung', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1559, 1, 'vi', 'core.setting/setting', 'email.title', 'Cấu hình email template', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1560, 1, 'vi', 'core.setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1561, 1, 'vi', 'core.setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1562, 1, 'vi', 'core.setting/setting', 'email.back', 'Trở lại trang cài đặt', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1563, 1, 'vi', 'core.setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1564, 1, 'vi', 'core.setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1565, 1, 'vi', 'core.setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1566, 1, 'vi', 'core.setting/setting', 'email.continue', 'Tiếp tục', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1567, 1, 'vi', 'core.setting/setting', 'email.sender_name', 'Tên người gửi', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1568, 1, 'vi', 'core.setting/setting', 'email.sender_name_placeholder', 'Tên', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1569, 1, 'vi', 'core.setting/setting', 'email.sender_email', 'Email của người gửi', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1570, 1, 'vi', 'core.setting/setting', 'email.driver', 'Loại', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1571, 1, 'vi', 'core.setting/setting', 'email.port', 'Cổng', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1572, 1, 'vi', 'core.setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1573, 1, 'vi', 'core.setting/setting', 'email.host', 'Máy chủ', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1574, 1, 'vi', 'core.setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1575, 1, 'vi', 'core.setting/setting', 'email.username', 'Tên đăng nhập', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1576, 1, 'vi', 'core.setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1577, 1, 'vi', 'core.setting/setting', 'email.password', 'Mật khẩu', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1578, 1, 'vi', 'core.setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1579, 1, 'vi', 'core.setting/setting', 'email.encryption', 'Mã hoá', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1580, 1, 'vi', 'core.setting/setting', 'email.mail_gun_domain', 'Tên miền', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1581, 1, 'vi', 'core.setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1582, 1, 'vi', 'core.setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1583, 1, 'vi', 'core.setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1584, 1, 'vi', 'core.setting/setting', 'email.template_title', 'Mẫu giao diện email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1585, 1, 'vi', 'core.setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1586, 1, 'vi', 'core.setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1587, 1, 'vi', 'core.setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1588, 1, 'vi', 'core.setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1589, 1, 'vi', 'core.setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1590, 1, 'vi', 'core.setting/setting', 'save_settings', 'Lưu cài đặt', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1591, 1, 'vi', 'core.setting/setting', 'template', 'Mẫu', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1592, 1, 'vi', 'core.setting/setting', 'description', 'Mô tả', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1593, 1, 'vi', 'core.setting/setting', 'enable', 'Bật', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1594, 1, 'CN', 'core.setting/zh/setting', 'title', '设置', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1595, 1, 'CN', 'core.setting/zh/setting', 'general.theme', '主题', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1596, 1, 'CN', 'core.setting/zh/setting', 'general.description', '设置网站信息', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1597, 1, 'CN', 'core.setting/zh/setting', 'general.title', '通用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1598, 1, 'CN', 'core.setting/zh/setting', 'general.general_block', '通用信息', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1599, 1, 'CN', 'core.setting/zh/setting', 'general.rich_editor', '富文本编辑器', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1600, 1, 'CN', 'core.setting/zh/setting', 'general.site_title', '网站标题', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1601, 1, 'CN', 'core.setting/zh/setting', 'general.copyright', '版权', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1602, 1, 'CN', 'core.setting/zh/setting', 'general.admin_email', '管理员邮件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1603, 1, 'CN', 'core.setting/zh/setting', 'general.seo_block', 'SEO配置', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1604, 1, 'CN', 'core.setting/zh/setting', 'general.seo_title', 'SEO标题', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1605, 1, 'CN', 'core.setting/zh/setting', 'general.seo_description', 'SEO描述', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1606, 1, 'CN', 'core.setting/zh/setting', 'general.seo_keywords', 'SEO关键字', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1607, 1, 'CN', 'core.setting/zh/setting', 'general.webmaster_tools_block', 'Google管理员工具', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1608, 1, 'CN', 'core.setting/zh/setting', 'general.google_site_verification', 'Google网站验证', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1609, 1, 'CN', 'core.setting/zh/setting', 'general.enable_captcha', '启用人机验证?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1610, 1, 'CN', 'core.setting/zh/setting', 'general.contact_block', '联系信息', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1611, 1, 'CN', 'core.setting/zh/setting', 'general.address', '地址', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1612, 1, 'CN', 'core.setting/zh/setting', 'general.email', 'Email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1613, 1, 'CN', 'core.setting/zh/setting', 'general.email_support', 'Email支持', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1614, 1, 'CN', 'core.setting/zh/setting', 'general.phone', '电话', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1615, 1, 'CN', 'core.setting/zh/setting', 'general.hotline', '热线', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1616, 1, 'CN', 'core.setting/zh/setting', 'general.google_plus', 'Google Plus', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1617, 1, 'CN', 'core.setting/zh/setting', 'general.facebook', 'Facebook', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1618, 1, 'CN', 'core.setting/zh/setting', 'general.twitter', 'Twitter', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1619, 1, 'CN', 'core.setting/zh/setting', 'general.show_admin_bar', '显示管理栏（当管理员登录时，仍然在网站上显示管理栏）？', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1620, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.site_title', '网站标题（最多120个字符）', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1621, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.copyright', '版权', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1622, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.email', 'Email', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1623, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.admin_email', '管理员邮件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1624, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.email_support', '电子邮件支持', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1625, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.phone', '联系电话', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1626, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.address', '联系地址', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1627, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.hotline', '热线', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1628, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_title', 'SEO标题（最多120个字符）', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1629, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_description', 'SEO说明（最多120个字符）', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1630, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.seo_keywords', 'SEO关键字（最多60个字符，用“，”字符分隔）', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1631, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.google_analytics', 'Google分析', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1632, 1, 'CN', 'core.setting/zh/setting', 'general.placeholder.google_site_verification', 'Google网站验证', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1633, 1, 'CN', 'core.setting/zh/setting', 'general.enable_change_admin_theme', '启用更改管理后台主题？', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1634, 1, 'CN', 'core.setting/zh/setting', 'general.enable_multi_language_in_admin', '在管理后台启用多语言？', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1635, 1, 'CN', 'core.setting/zh/setting', 'general.enable', '启用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1636, 1, 'CN', 'core.setting/zh/setting', 'general.disable', '禁用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1637, 1, 'CN', 'core.setting/zh/setting', 'general.enable_cache', '启用缓存？', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1638, 1, 'CN', 'core.setting/zh/setting', 'general.cache_time', '缓存时间', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1639, 1, 'CN', 'core.setting/zh/setting', 'general.cache_time_site_map', '站点地图缓存时间', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1640, 1, 'CN', 'core.setting/zh/setting', 'general.admin_logo', '管理后台徽标', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1641, 1, 'CN', 'core.setting/zh/setting', 'general.admin_title', '管理后台标题', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1642, 1, 'CN', 'core.setting/zh/setting', 'general.admin_title_placeholder', '标题显示到浏览器的标签', '2018-07-16 03:35:15', '2018-07-16 03:35:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1643, 1, 'CN', 'core.setting/zh/setting', 'email.title', '电子邮件通用设定', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1644, 1, 'CN', 'core.setting/zh/setting', 'email.description', '电子邮件配置默认值', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1645, 1, 'CN', 'core.setting/zh/setting', 'email.variable_title', '电子邮件模板可用变量', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1646, 1, 'en', 'core.table/general', 'operations', 'Operations', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1647, 1, 'en', 'core.table/general', 'loading_data', 'Loading data from server', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1648, 1, 'en', 'core.table/general', 'display', 'Display', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1649, 1, 'en', 'core.table/general', 'all', 'All', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1650, 1, 'en', 'core.table/general', 'edit_entry', 'Edit Entry', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1651, 1, 'en', 'core.table/general', 'delete_entry', 'Delete Entry', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1652, 1, 'en', 'core.table/general', 'show_from', 'Showing from', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1653, 1, 'en', 'core.table/general', 'to', 'to', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1654, 1, 'en', 'core.table/general', 'in', 'in', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1655, 1, 'en', 'core.table/general', 'records', 'records', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1656, 1, 'en', 'core.table/general', 'no_data', 'No data to display', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1657, 1, 'en', 'core.table/general', 'no_record', 'No record', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1658, 1, 'en', 'core.table/general', 'loading', 'Loading data from server', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1659, 1, 'en', 'core.table/general', 'confirm_delete', 'Confirm delete', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1660, 1, 'en', 'core.table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1661, 1, 'en', 'core.table/general', 'cancel', 'Cancel', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1662, 1, 'en', 'core.table/general', 'drag_drop_column_header', 'Drag and Drop the header of a column in or out of the table or move it''s position within a table', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1663, 1, 'en', 'core.table/general', 'configuration_name', 'Name', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1664, 1, 'en', 'core.table/general', 'configuration_name_description', 'Configuration name', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1665, 1, 'en', 'core.table/general', 'save', 'Save', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1666, 1, 'en', 'core.table/general', 'save_as_new', 'Save as new', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1667, 1, 'en', 'core.table/general', 'delete', 'Delete', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1668, 1, 'en', 'core.table/general', 'close', 'Close', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1669, 1, 'en', 'core.table/general', 'is_equal_to', 'Is equal to', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1670, 1, 'en', 'core.table/general', 'greater_than', 'Greater than', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1671, 1, 'en', 'core.table/general', 'less_than', 'Less than', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1672, 1, 'en', 'core.table/general', 'value', 'Value', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1673, 1, 'en', 'core.table/general', 'select_field', 'Select field', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1674, 1, 'en', 'core.table/general', 'reset', 'Reset', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1675, 1, 'en', 'core.table/general', 'add_additional_filter', 'Add additional filter', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1676, 1, 'en', 'core.table/general', 'apply', 'Apply', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1677, 1, 'en', 'core.table/general', 'filters', 'Filter(s)', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1678, 1, 'en', 'core.table/general', 'bulk_change', 'Bulk changes', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1679, 1, 'en', 'core.table/general', 'select_option', 'Select option', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1680, 1, 'en', 'core.table/general', 'table_options', 'Table Options', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1681, 1, 'en', 'core.table/general', 'select_saved_option', 'Select saved option', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1682, 1, 'en', 'core.table/general', 'bulk_actions', 'Bulk Actions', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1683, 1, 'CN', 'core.table/zh/general', 'operations', '操作', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1684, 1, 'CN', 'core.table/zh/general', 'loading_data', '从服务器加载数据', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1685, 1, 'CN', 'core.table/zh/general', 'display', '显示', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1686, 1, 'CN', 'core.table/zh/general', 'all', '全部', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1687, 1, 'CN', 'core.table/zh/general', 'edit_entry', '编辑', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1688, 1, 'CN', 'core.table/zh/general', 'delete_entry', '删除', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1689, 1, 'CN', 'core.table/zh/general', 'show_from', '正在显示', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1690, 1, 'CN', 'core.table/zh/general', 'to', '到', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1691, 1, 'CN', 'core.table/zh/general', 'in', '进', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1692, 1, 'CN', 'core.table/zh/general', 'records', '记录', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1693, 1, 'CN', 'core.table/zh/general', 'no_data', '没有要显示的数据', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1694, 1, 'CN', 'core.table/zh/general', 'no_record', '无记录', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1695, 1, 'CN', 'core.table/zh/general', 'loading', '从服务器加载数据', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1696, 1, 'CN', 'core.table/zh/general', 'confirm_delete', '确认删除', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1697, 1, 'CN', 'core.table/zh/general', 'confirm_delete_msg', '你真的想删除这个记录吗？', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1698, 1, 'CN', 'core.table/zh/general', 'cancel', '取消', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1699, 1, 'CN', 'core.table/zh/general', 'drag_drop_column_header', '将列的标题拖入或拖出表格或将其移动到表格中', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1700, 1, 'CN', 'core.table/zh/general', 'configuration_name', '名称', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1701, 1, 'CN', 'core.table/zh/general', 'configuration_name_description', '配置名称', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1702, 1, 'CN', 'core.table/zh/general', 'save', '保存', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1703, 1, 'CN', 'core.table/zh/general', 'save_as_new', '另存为新', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1704, 1, 'CN', 'core.table/zh/general', 'delete', '删除', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1705, 1, 'CN', 'core.table/zh/general', 'close', '关闭', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1706, 1, 'CN', 'core.table/zh/general', 'is_equal_to', '等于', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1707, 1, 'CN', 'core.table/zh/general', 'greater_than', '大于', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1708, 1, 'CN', 'core.table/zh/general', 'less_than', '小于', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1709, 1, 'CN', 'core.table/zh/general', 'value', '数值', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1710, 1, 'CN', 'core.table/zh/general', 'select_field', '选择字段', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1711, 1, 'CN', 'core.table/zh/general', 'reset', '重置', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1712, 1, 'CN', 'core.table/zh/general', 'add_additional_filter', '新增额外的筛选', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1713, 1, 'CN', 'core.table/zh/general', 'apply', '应用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1714, 1, 'CN', 'core.table/zh/general', 'filters', '筛选', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1715, 1, 'CN', 'core.table/zh/general', 'bulk_change', '批量更改', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1716, 1, 'CN', 'core.table/zh/general', 'select_option', '选择选项', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1717, 1, 'CN', 'core.table/zh/general', 'table_options', '表格选项', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1718, 1, 'CN', 'core.table/zh/general', 'select_saved_option', '选择保存的选项', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1719, 1, 'CN', 'core.table/zh/general', 'bulk_actions', '批量操作', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1720, 1, 'en', 'core.theme/theme', 'theme', 'Theme', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1721, 1, 'en', 'core.theme/theme', 'author', 'Author', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1722, 1, 'en', 'core.theme/theme', 'version', 'Version', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1723, 1, 'en', 'core.theme/theme', 'description', 'Description', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1724, 1, 'en', 'core.theme/theme', 'active_success', 'Active theme successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1725, 1, 'en', 'core.theme/theme', 'active', 'Active', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1726, 1, 'en', 'core.theme/theme', 'activated', 'Activated', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1727, 1, 'en', 'core.theme/theme', 'theme_options', 'Theme options', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1728, 1, 'CN', 'core.theme/zh/theme', 'theme', '模板', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1729, 1, 'CN', 'core.theme/zh/theme', 'author', '作者', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1730, 1, 'CN', 'core.theme/zh/theme', 'version', '版本', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1731, 1, 'CN', 'core.theme/zh/theme', 'description', '描述', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1732, 1, 'CN', 'core.theme/zh/theme', 'active_success', '成功启用模板!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1733, 1, 'CN', 'core.theme/zh/theme', 'active', '启用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1734, 1, 'CN', 'core.theme/zh/theme', 'activated', '已启用', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1735, 1, 'CN', 'core.theme/zh/theme', 'theme_options', '模板配置', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1736, 1, 'en', 'core.widget/global', 'name', 'Widgets', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1737, 1, 'en', 'core.widget/global', 'create', 'New widget', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1738, 1, 'en', 'core.widget/global', 'edit', 'Edit widget', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1739, 1, 'en', 'core.widget/global', 'delete', 'Delete', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1740, 1, 'en', 'core.widget/global', 'available', 'Available Widgets', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1741, 1, 'en', 'core.widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1742, 1, 'en', 'core.widget/global', 'number_tag_display', 'Number tags will be display', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1743, 1, 'en', 'core.widget/global', 'number_post_display', 'Number posts will be display', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1744, 1, 'en', 'core.widget/global', 'select_menu', 'Select Menu', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1745, 1, 'en', 'core.widget/global', 'widget_text', 'Text', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1746, 1, 'en', 'core.widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1747, 1, 'en', 'core.widget/global', 'widget_recent_post', 'Recent Posts', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1748, 1, 'en', 'core.widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1749, 1, 'en', 'core.widget/global', 'widget_custom_menu', 'Custom Menu', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1750, 1, 'en', 'core.widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1751, 1, 'en', 'core.widget/global', 'widget_tag', 'Tags', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1752, 1, 'en', 'core.widget/global', 'widget_tag_description', 'Popular tags', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1753, 1, 'en', 'core.widget/global', 'save_success', 'Save widget successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1754, 1, 'en', 'core.widget/global', 'delete_success', 'Delete widget successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1755, 1, 'vi', 'core.widget/global', 'name', 'Widgets', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1756, 1, 'vi', 'core.widget/global', 'create', 'New widget', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1757, 1, 'vi', 'core.widget/global', 'edit', 'Edit widget', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1758, 1, 'vi', 'core.widget/global', 'available', 'Tiện ích có sẵn', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1759, 1, 'vi', 'core.widget/global', 'delete', 'Xóa', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1760, 1, 'vi', 'core.widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1761, 1, 'vi', 'core.widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1762, 1, 'vi', 'core.widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1763, 1, 'vi', 'core.widget/global', 'select_menu', 'Lựa chọn trình đơn', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1764, 1, 'vi', 'core.widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1765, 1, 'vi', 'core.widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1766, 1, 'vi', 'core.widget/global', 'widget_recent_post', 'Bài viết gần đây', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1767, 1, 'vi', 'core.widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1768, 1, 'vi', 'core.widget/global', 'widget_tag', 'Thẻ', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1769, 1, 'vi', 'core.widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1770, 1, 'vi', 'core.widget/global', 'widget_text', 'Văn bản', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1771, 1, 'vi', 'core.widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1772, 1, 'vi', 'core.widget/global', 'delete_success', 'Xoá tiện ích thành công', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1773, 1, 'vi', 'core.widget/global', 'save_success', 'Lưu tiện ích thành công!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1774, 1, 'CN', 'core.widget/zh/global', 'name', '小部件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1775, 1, 'CN', 'core.widget/zh/global', 'create', '新建小部件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1776, 1, 'CN', 'core.widget/zh/global', 'edit', '编辑小部件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1777, 1, 'CN', 'core.widget/zh/global', 'delete', '删除', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1778, 1, 'CN', 'core.widget/zh/global', 'available', '可用小部件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1779, 1, 'CN', 'core.widget/zh/global', 'instruction', '要激活一个小部件，将其拖到侧边栏或单击它。 要停用小部件并删除其设置，请将其拖回。', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1780, 1, 'CN', 'core.widget/zh/global', 'number_tag_display', '将显示数字标签', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1781, 1, 'CN', 'core.widget/zh/global', 'number_post_display', '将显示号码信息', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1782, 1, 'CN', 'core.widget/zh/global', 'select_menu', '选择菜单', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1783, 1, 'CN', 'core.widget/zh/global', 'widget_text', '文字', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1784, 1, 'CN', 'core.widget/zh/global', 'widget_text_description', '任意文字或HTML。', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1785, 1, 'CN', 'core.widget/zh/global', 'widget_recent_post', '最近新闻', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1786, 1, 'CN', 'core.widget/zh/global', 'widget_recent_post_description', '最近新闻部件', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1787, 1, 'CN', 'core.widget/zh/global', 'widget_custom_menu', '自定义菜单', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1788, 1, 'CN', 'core.widget/zh/global', 'widget_custom_menu_description', '添加一个自定义菜单到你的小部件区域。', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1789, 1, 'CN', 'core.widget/zh/global', 'widget_tag', '标签', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1790, 1, 'CN', 'core.widget/zh/global', 'widget_tag_description', '热门标签', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1791, 1, 'CN', 'core.widget/zh/global', 'save_success', '保存小部件成功！', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1792, 1, 'CN', 'core.widget/zh/global', 'delete_success', '删除小部件成功！', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1793, 1, 'en', 'media/media', 'filter', 'Filter', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1794, 1, 'en', 'media/media', 'everything', 'Everything', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1795, 1, 'en', 'media/media', 'image', 'Image', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1796, 1, 'en', 'media/media', 'video', 'Video', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1797, 1, 'en', 'media/media', 'document', 'Document', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1798, 1, 'en', 'media/media', 'view_in', 'View in', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1799, 1, 'en', 'media/media', 'all_media', 'All media', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1800, 1, 'en', 'media/media', 'trash', 'Trash', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1801, 1, 'en', 'media/media', 'recent', 'Recent', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1802, 1, 'en', 'media/media', 'favorites', 'Favorites', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1803, 1, 'en', 'media/media', 'upload', 'Upload', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1804, 1, 'en', 'media/media', 'add_from', 'Add from', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1805, 1, 'en', 'media/media', 'youtube', 'Youtube', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1806, 1, 'en', 'media/media', 'vimeo', 'Vimeo', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1807, 1, 'en', 'media/media', 'vine', 'Vine', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1808, 1, 'en', 'media/media', 'daily_motion', 'Dailymotion', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1809, 1, 'en', 'media/media', 'create_folder', 'Create folder', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1810, 1, 'en', 'media/media', 'refresh', 'Refresh', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1811, 1, 'en', 'media/media', 'empty_trash', 'Empty trash', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1812, 1, 'en', 'media/media', 'search_file_and_folder', 'Search file and folder', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1813, 1, 'en', 'media/media', 'sort', 'Sort', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1814, 1, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1815, 1, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1816, 1, 'en', 'media/media', 'created_date_asc', 'Created date - ASC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1817, 1, 'en', 'media/media', 'created_date_desc', 'Created_date - DESC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1818, 1, 'en', 'media/media', 'uploaded_date_asc', 'Uploaed date - ASC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1819, 1, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1820, 1, 'en', 'media/media', 'size_asc', 'Size - ASC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1821, 1, 'en', 'media/media', 'size_desc', 'Size - DESC', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1822, 1, 'en', 'media/media', 'actions', 'Actions', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1823, 1, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1824, 1, 'en', 'media/media', 'insert', 'Insert', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1825, 1, 'en', 'media/media', 'coming_soon', 'Coming soon', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1826, 1, 'en', 'media/media', 'add_from_youtube', 'Add from youtube', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1827, 1, 'en', 'media/media', 'playlist', 'Playlist', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1828, 1, 'en', 'media/media', 'add_url', 'Add URL', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1829, 1, 'en', 'media/media', 'folder_name', 'Folder name', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1830, 1, 'en', 'media/media', 'create', 'Create', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1831, 1, 'en', 'media/media', 'rename', 'Rename', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1832, 1, 'en', 'media/media', 'close', 'Close', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1833, 1, 'en', 'media/media', 'save_changes', 'Save changes', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1834, 1, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1835, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1836, 1, 'en', 'media/media', 'confirm', 'Confirm', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1837, 1, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1838, 1, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1839, 1, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1840, 1, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1841, 1, 'en', 'media/media', 'up_level', 'Up one level', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1842, 1, 'en', 'media/media', 'upload_progress', 'Upload progress', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1843, 1, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1844, 1, 'en', 'media/media', 'gallery', 'Media gallery', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1845, 1, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1846, 1, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1847, 1, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1848, 1, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1849, 1, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1850, 1, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1851, 1, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1852, 1, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1853, 1, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1854, 1, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1855, 1, 'en', 'media/media', 'empty_trash_success', 'Empty trash successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1856, 1, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1857, 1, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1858, 1, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1859, 1, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1860, 1, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1861, 1, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1862, 1, 'en', 'media/media', 'add_success', 'Add item successfully!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1863, 1, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1864, 1, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2018-07-16 03:35:15', '2018-07-16 03:35:15'),
(1865, 1, 'en', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1866, 1, 'en', 'media/media', 'menu_name', 'Media', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1867, 1, 'en', 'media/media', 'add', 'Add media', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1868, 1, 'en', 'media/media', 'javascript.name', 'Name', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1869, 1, 'en', 'media/media', 'javascript.url', 'Url', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1870, 1, 'en', 'media/media', 'javascript.full_url', 'Full url', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1871, 1, 'en', 'media/media', 'javascript.size', 'Size', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1872, 1, 'en', 'media/media', 'javascript.mime_type', 'Type', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1873, 1, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1874, 1, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1875, 1, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1876, 1, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1877, 1, 'en', 'media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1878, 1, 'en', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1879, 1, 'en', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1880, 1, 'en', 'media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1881, 1, 'en', 'media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1882, 1, 'en', 'media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1883, 1, 'en', 'media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1884, 1, 'en', 'media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1885, 1, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1886, 1, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1887, 1, 'en', 'media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1888, 1, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1889, 1, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1890, 1, 'en', 'media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1891, 1, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1892, 1, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1893, 1, 'en', 'media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1894, 1, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1895, 1, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1896, 1, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1897, 1, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1898, 1, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1899, 1, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1900, 1, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1901, 1, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1902, 1, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1903, 1, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1904, 1, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1905, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1906, 1, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1907, 1, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1908, 1, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1909, 1, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1910, 1, 'vi', 'media/media', 'filter', 'Lọc', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1911, 1, 'vi', 'media/media', 'everything', 'Tất cả', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1912, 1, 'vi', 'media/media', 'image', 'Hình ảnh', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1913, 1, 'vi', 'media/media', 'video', 'Phim', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1914, 1, 'vi', 'media/media', 'document', 'Tài liệu', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1915, 1, 'vi', 'media/media', 'view_in', 'Chế độ xem', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1916, 1, 'vi', 'media/media', 'all_media', 'Tất cả tập tin', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1917, 1, 'vi', 'media/media', 'trash', 'Thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1918, 1, 'vi', 'media/media', 'recent', 'Gần đây', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1919, 1, 'vi', 'media/media', 'favorites', 'Được gắn dấu sao', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1920, 1, 'vi', 'media/media', 'upload', 'Tải lên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1921, 1, 'vi', 'media/media', 'add_from', 'Thêm từ', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1922, 1, 'vi', 'media/media', 'youtube', 'Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1923, 1, 'vi', 'media/media', 'vimeo', 'Vimeo', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1924, 1, 'vi', 'media/media', 'vine', 'Vine', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1925, 1, 'vi', 'media/media', 'daily_motion', 'Dailymotion', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1926, 1, 'vi', 'media/media', 'create_folder', 'Tạo thư mục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1927, 1, 'vi', 'media/media', 'refresh', 'Làm mới', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1928, 1, 'vi', 'media/media', 'empty_trash', 'Dọn thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1929, 1, 'vi', 'media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1930, 1, 'vi', 'media/media', 'sort', 'Sắp xếp', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1931, 1, 'vi', 'media/media', 'file_name_asc', 'Tên tập tin - ASC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1932, 1, 'vi', 'media/media', 'file_name_desc', 'Tên tập tin - DESC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1933, 1, 'vi', 'media/media', 'created_date_asc', 'Ngày tạo - ASC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1934, 1, 'vi', 'media/media', 'created_date_desc', 'Ngày tạo - DESC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1935, 1, 'vi', 'media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1936, 1, 'vi', 'media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1937, 1, 'vi', 'media/media', 'size_asc', 'Kích thước - ASC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1938, 1, 'vi', 'media/media', 'size_desc', 'Kích thước - DESC', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1939, 1, 'vi', 'media/media', 'actions', 'Hành động', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1940, 1, 'vi', 'media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1941, 1, 'vi', 'media/media', 'insert', 'Chèn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1942, 1, 'vi', 'media/media', 'coming_soon', 'Đang phát triển', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1943, 1, 'vi', 'media/media', 'add_from_youtube', 'Thêm từ youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1944, 1, 'vi', 'media/media', 'playlist', 'Playlist', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1945, 1, 'vi', 'media/media', 'add_url', 'Thêm đường dẫn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1946, 1, 'vi', 'media/media', 'folder_name', 'Tên thư mục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1947, 1, 'vi', 'media/media', 'create', 'Tạo', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1948, 1, 'vi', 'media/media', 'rename', 'Đổi tên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1949, 1, 'vi', 'media/media', 'close', 'Đóng', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1950, 1, 'vi', 'media/media', 'save_changes', 'Lưu thay đổi', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1951, 1, 'vi', 'media/media', 'move_to_trash', 'Đưa vào thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1952, 1, 'vi', 'media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1953, 1, 'vi', 'media/media', 'confirm', 'Xác nhận', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1954, 1, 'vi', 'media/media', 'confirm_delete', 'Xóa tập tin', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1955, 1, 'vi', 'media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1956, 1, 'vi', 'media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1957, 1, 'vi', 'media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1958, 1, 'vi', 'media/media', 'up_level', 'Quay lại một cấp', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1959, 1, 'vi', 'media/media', 'upload_progress', 'Tiến trình tải lên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1960, 1, 'vi', 'media/media', 'name_reserved', 'Tên này không được phép đặt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1961, 1, 'vi', 'media/media', 'folder_created', 'Tạo thư mục thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1962, 1, 'vi', 'media/media', 'gallery', 'Thư viện tập tin', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1963, 1, 'vi', 'media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1964, 1, 'vi', 'media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1965, 1, 'vi', 'media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1966, 1, 'vi', 'media/media', 'restore_success', 'Khôi phục thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1967, 1, 'vi', 'media/media', 'copy_success', 'Sao chép thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1968, 1, 'vi', 'media/media', 'delete_success', 'Xóa thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1969, 1, 'vi', 'media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1970, 1, 'vi', 'media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1971, 1, 'vi', 'media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1972, 1, 'vi', 'media/media', 'rename_success', 'Đổi tên thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1973, 1, 'vi', 'media/media', 'invalid_action', 'Hành động không hợp lệ!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1974, 1, 'vi', 'media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1975, 1, 'vi', 'media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1976, 1, 'vi', 'media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1977, 1, 'vi', 'media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1978, 1, 'vi', 'media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1979, 1, 'vi', 'media/media', 'add_success', 'Thêm thành công!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1980, 1, 'vi', 'media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1981, 1, 'vi', 'media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1982, 1, 'vi', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1983, 1, 'vi', 'media/media', 'menu_name', 'Quản lý tập tin', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1984, 1, 'vi', 'media/media', 'add', 'Thêm tập tin', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1985, 1, 'vi', 'media/media', 'javascript.name', 'Tên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1986, 1, 'vi', 'media/media', 'javascript.url', 'Đường dẫn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1987, 1, 'vi', 'media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1988, 1, 'vi', 'media/media', 'javascript.size', 'Kích thước', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1989, 1, 'vi', 'media/media', 'javascript.mime_type', 'Loại', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1990, 1, 'vi', 'media/media', 'javascript.created_at', 'Được tải lên lúc', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1991, 1, 'vi', 'media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1992, 1, 'vi', 'media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1993, 1, 'vi', 'media/media', 'javascript.visit_link', 'Mở liên kết', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1994, 1, 'vi', 'media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1995, 1, 'vi', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1996, 1, 'vi', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1997, 1, 'vi', 'media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1998, 1, 'vi', 'media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(1999, 1, 'vi', 'media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2000, 1, 'vi', 'media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2001, 1, 'vi', 'media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2002, 1, 'vi', 'media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2003, 1, 'vi', 'media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2004, 1, 'vi', 'media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2005, 1, 'vi', 'media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2006, 1, 'vi', 'media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2007, 1, 'vi', 'media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2008, 1, 'vi', 'media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2009, 1, 'vi', 'media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2010, 1, 'vi', 'media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2011, 1, 'vi', 'media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2012, 1, 'vi', 'media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2013, 1, 'vi', 'media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2014, 1, 'vi', 'media/media', 'javascript.message.error_header', 'Lỗi', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2015, 1, 'vi', 'media/media', 'javascript.message.success_header', 'Thành công', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2016, 1, 'vi', 'media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2017, 1, 'vi', 'media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2018, 1, 'vi', 'media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2019, 1, 'vi', 'media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2020, 1, 'vi', 'media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2021, 1, 'vi', 'media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2022, 1, 'vi', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2023, 1, 'vi', 'media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2024, 1, 'vi', 'media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2025, 1, 'vi', 'media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2026, 1, 'vi', 'media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2027, 1, 'vi', 'media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2028, 1, 'CN', 'media/zh/media', 'filter', '筛选', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2029, 1, 'CN', 'media/zh/media', 'everything', '所有', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2030, 1, 'CN', 'media/zh/media', 'image', '图片', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2031, 1, 'CN', 'media/zh/media', 'video', '视频', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2032, 1, 'CN', 'media/zh/media', 'document', '文档', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2033, 1, 'CN', 'media/zh/media', 'view_in', '查看', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2034, 1, 'CN', 'media/zh/media', 'all_media', '所有媒体', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2035, 1, 'CN', 'media/zh/media', 'trash', '回收站', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2036, 1, 'CN', 'media/zh/media', 'recent', '当前', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2037, 1, 'CN', 'media/zh/media', 'favorites', '收藏夹', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2038, 1, 'CN', 'media/zh/media', 'upload', '上传', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2039, 1, 'CN', 'media/zh/media', 'add_from', '添加', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2040, 1, 'CN', 'media/zh/media', 'youtube', 'Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2041, 1, 'CN', 'media/zh/media', 'vimeo', 'Vimeo', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2042, 1, 'CN', 'media/zh/media', 'vine', 'Vine', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2043, 1, 'CN', 'media/zh/media', 'daily_motion', '日常活动', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2044, 1, 'CN', 'media/zh/media', 'create_folder', '创建文件夹', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2045, 1, 'CN', 'media/zh/media', 'refresh', '刷新', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2046, 1, 'CN', 'media/zh/media', 'empty_trash', '清空回收站', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2047, 1, 'CN', 'media/zh/media', 'search_file_and_folder', '搜索文件及文件夹', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2048, 1, 'CN', 'media/zh/media', 'sort', '排序', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2049, 1, 'CN', 'media/zh/media', 'file_name_asc', '文件名从小到大', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2050, 1, 'CN', 'media/zh/media', 'file_name_desc', '文件名从大到小', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2051, 1, 'CN', 'media/zh/media', 'created_date_asc', '创建日期从小到大', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2052, 1, 'CN', 'media/zh/media', 'created_date_desc', '创建日期从大到小', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2053, 1, 'CN', 'media/zh/media', 'uploaded_date_asc', '上传日期从小到大', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2054, 1, 'CN', 'media/zh/media', 'uploaded_date_desc', '上传日期从大到小', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2055, 1, 'CN', 'media/zh/media', 'size_asc', '体积从小到大', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2056, 1, 'CN', 'media/zh/media', 'size_desc', '体积从大到小', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2057, 1, 'CN', 'media/zh/media', 'actions', '操作', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2058, 1, 'CN', 'media/zh/media', 'nothing_is_selected', '未选择条目', '2018-07-16 03:35:16', '2018-07-16 03:35:16');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2059, 1, 'CN', 'media/zh/media', 'insert', '插入', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2060, 1, 'CN', 'media/zh/media', 'coming_soon', '即将推出', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2061, 1, 'CN', 'media/zh/media', 'add_from_youtube', '从Youtube添加', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2062, 1, 'CN', 'media/zh/media', 'playlist', '播放列表', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2063, 1, 'CN', 'media/zh/media', 'add_url', '添加网址', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2064, 1, 'CN', 'media/zh/media', 'folder_name', '文件夹名称', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2065, 1, 'CN', 'media/zh/media', 'create', '创建', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2066, 1, 'CN', 'media/zh/media', 'rename', '重命名', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2067, 1, 'CN', 'media/zh/media', 'close', '关闭', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2068, 1, 'CN', 'media/zh/media', 'save_changes', '保存修改', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2069, 1, 'CN', 'media/zh/media', 'move_to_trash', '移至回收站', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2070, 1, 'CN', 'media/zh/media', 'confirm_trash', '你确定要将这些项目移动到回收站吗?', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2071, 1, 'CN', 'media/zh/media', 'confirm', '确认', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2072, 1, 'CN', 'media/zh/media', 'confirm_delete', '删除项目', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2073, 1, 'CN', 'media/zh/media', 'confirm_delete_description', '您的请求无法恢复。你确定要删除这些项目吗?', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2074, 1, 'CN', 'media/zh/media', 'empty_trash_title', '清空回收站', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2075, 1, 'CN', 'media/zh/media', 'empty_trash_description', '您的请求无法恢复。你确定要删除这些项目吗??', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2076, 1, 'CN', 'media/zh/media', 'up_level', '上一层', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2077, 1, 'CN', 'media/zh/media', 'upload_progress', '上传进度', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2078, 1, 'CN', 'media/zh/media', 'folder_created', '文件夹创建成功!', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2079, 1, 'CN', 'media/zh/media', 'gallery', '媒体库', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2080, 1, 'CN', 'media/zh/media', 'trash_error', '删除选定项目时出错', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2081, 1, 'CN', 'media/zh/media', 'trash_success', '将选定的项目移至回收站成功！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2082, 1, 'CN', 'media/zh/media', 'restore_error', '恢复所选项目时出错', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2083, 1, 'CN', 'media/zh/media', 'restore_success', '成功恢复选定的项目！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2084, 1, 'CN', 'media/zh/media', 'copy_success', '成功复制选定的项目！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2085, 1, 'CN', 'media/zh/media', 'delete_success', '成功删除选定的项目！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2086, 1, 'CN', 'media/zh/media', 'favorite_success', '选择的项目成功加入收藏夹！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2087, 1, 'CN', 'media/zh/media', 'remove_favorite_success', '成功删除收藏夹中的所选项目！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2088, 1, 'CN', 'media/zh/media', 'rename_error', '重命名项目时出错,', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2089, 1, 'CN', 'media/zh/media', 'rename_success', '重命名所选项目成功！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2090, 1, 'CN', 'media/zh/media', 'empty_trash_success', '清空回收站成功！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2091, 1, 'CN', 'media/zh/media', 'invalid_action', '无效的操作！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2092, 1, 'CN', 'media/zh/media', 'file_not_exists', '文件不存在！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2093, 1, 'CN', 'media/zh/media', 'download_file_error', '下载文件时出错！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2094, 1, 'CN', 'media/zh/media', 'missing_zip_archive_extension', '请启用ZipArchive扩展来下载文件！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2095, 1, 'CN', 'media/zh/media', 'can_not_download_file', '无法下载此文件！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2096, 1, 'CN', 'media/zh/media', 'invalid_request', '请求无效！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2097, 1, 'CN', 'media/zh/media', 'add_success', '添加项目成功！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2098, 1, 'CN', 'media/zh/media', 'file_too_big', '文件太大。最大文件上传是:size字节', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2099, 1, 'CN', 'media/zh/media', 'can_not_detect_file_type', '文件类型不允许或不能检测文件类型！', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2100, 1, 'CN', 'media/zh/media', 'upload_failed', '文件没有完全上传。服务器允许最大上传文件大小为：:size。请检查您的文件大小或尝试重新上传，以防万一网络错误', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2101, 1, 'CN', 'media/zh/media', 'menu_name', '媒体', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2102, 1, 'CN', 'media/zh/media', 'add', '添加媒体', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2103, 1, 'CN', 'media/zh/media', 'javascript.name', '名称', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2104, 1, 'CN', 'media/zh/media', 'javascript.url', 'Url', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2105, 1, 'CN', 'media/zh/media', 'javascript.full_url', '完整网址', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2106, 1, 'CN', 'media/zh/media', 'javascript.size', '大小', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2107, 1, 'CN', 'media/zh/media', 'javascript.mime_type', '类型', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2108, 1, 'CN', 'media/zh/media', 'javascript.created_at', '上传于', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2109, 1, 'CN', 'media/zh/media', 'javascript.updated_at', '修改于', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2110, 1, 'CN', 'media/zh/media', 'javascript.nothing_selected', '未选择条目', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2111, 1, 'CN', 'media/zh/media', 'javascript.visit_link', '打开链接', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2112, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.original_msg', '请输入Youtube URL', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2113, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.no_api_key_msg', '请指定Youtube API密钥', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2114, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.invalid_url_msg', '你的链接不属于Youtube', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2115, 1, 'CN', 'media/zh/media', 'javascript.add_from.youtube.error_msg', '发生了一些错误...', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2116, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2117, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.title', '在此放置文件和文件夹', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2118, 1, 'CN', 'media/zh/media', 'javascript.no_item.all_media.message', '或者使用上面的上传按钮', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2119, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2120, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.title', '目前回收站中没有任何文件', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2121, 1, 'CN', 'media/zh/media', 'javascript.no_item.trash.message', '删除文件将它们自动移动到回收站。从回收站删除文件将永久删除它们', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2122, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2123, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.title', '你还没有添加任何东西到你的收藏夹', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2124, 1, 'CN', 'media/zh/media', 'javascript.no_item.favorites.message', '将文件添加到收藏夹以便稍后轻松找到它们', '2018-07-16 03:35:16', '2018-07-16 03:35:16'),
(2125, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2126, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.title', '你还没有打开任何文档', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2127, 1, 'CN', 'media/zh/media', 'javascript.no_item.recent.message', '你打开的所有最近的文件都会出现在这里', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2128, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2129, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.title', '没有项目', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2130, 1, 'CN', 'media/zh/media', 'javascript.no_item.default.message', '这个目录没有项目', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2131, 1, 'CN', 'media/zh/media', 'javascript.clipboard.success', '这些文件链接已被复制到剪贴板', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2132, 1, 'CN', 'media/zh/media', 'javascript.message.error_header', '错误', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2133, 1, 'CN', 'media/zh/media', 'javascript.message.success_header', '成功', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2134, 1, 'CN', 'media/zh/media', 'javascript.download.error', '没有选择文件或无法下载这些文件', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2135, 1, 'CN', 'media/zh/media', 'javascript.actions_list.basic.preview', '预览', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2136, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.copy_link', '复制链接', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2137, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.rename', '重命名', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2138, 1, 'CN', 'media/zh/media', 'javascript.actions_list.file.make_copy', '制作副本', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2139, 1, 'CN', 'media/zh/media', 'javascript.actions_list.user.favorite', '加入收藏', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2140, 1, 'CN', 'media/zh/media', 'javascript.actions_list.user.remove_favorite', '删除收藏', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2141, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.download', '下载', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2142, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.trash', '移至回收站', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2143, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.delete', '永久删除', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2144, 1, 'CN', 'media/zh/media', 'javascript.actions_list.other.restore', '恢复', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2145, 1, 'en', 'plugins.analytics/analytics', 'sessions', 'Sessions', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2146, 1, 'en', 'plugins.analytics/analytics', 'visitors', 'Visitors', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2147, 1, 'en', 'plugins.analytics/analytics', 'pageviews', 'Pageviews', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2148, 1, 'en', 'plugins.analytics/analytics', 'bounce_rate', 'Bounce Rate', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2149, 1, 'en', 'plugins.analytics/analytics', 'page_session', 'Pages/Session', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2150, 1, 'en', 'plugins.analytics/analytics', 'avg_duration', 'Avg. Duration', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2151, 1, 'en', 'plugins.analytics/analytics', 'percent_new_session', 'Percent new session', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2152, 1, 'en', 'plugins.analytics/analytics', 'new_users', 'New visitors', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2153, 1, 'en', 'plugins.analytics/analytics', 'visits', 'visits', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2154, 1, 'en', 'plugins.analytics/analytics', 'views', 'views', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2155, 1, 'en', 'plugins.analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2156, 1, 'en', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2157, 1, 'en', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2158, 1, 'en', 'plugins.analytics/analytics', 'wrong_configuration', 'To view analytics you''ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2159, 1, 'en', 'plugins.analytics/analytics', 'settings.title', 'Google Analytics', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2160, 1, 'en', 'plugins.analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2161, 1, 'en', 'plugins.analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2162, 1, 'en', 'plugins.analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2163, 1, 'en', 'plugins.analytics/analytics', 'settings.view_id', 'View ID', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2164, 1, 'en', 'plugins.analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2165, 1, 'en', 'plugins.analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2166, 1, 'en', 'plugins.analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2167, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2168, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2169, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2170, 1, 'en', 'plugins.analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2171, 1, 'vi', 'plugins.analytics/analytics', 'avg_duration', 'Trung bình', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2172, 1, 'vi', 'plugins.analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2173, 1, 'vi', 'plugins.analytics/analytics', 'page_session', 'Trang/Phiên', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2174, 1, 'vi', 'plugins.analytics/analytics', 'pageviews', 'Lượt xem', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2175, 1, 'vi', 'plugins.analytics/analytics', 'sessions', 'Phiên', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2176, 1, 'vi', 'plugins.analytics/analytics', 'views', 'lượt xem', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2177, 1, 'vi', 'plugins.analytics/analytics', 'visitors', 'Người truy cập', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2178, 1, 'vi', 'plugins.analytics/analytics', 'visits', 'lượt ghé thăm', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2179, 1, 'vi', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2180, 1, 'vi', 'plugins.analytics/analytics', 'new_users', 'Lượt khách mới', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2181, 1, 'vi', 'plugins.analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2182, 1, 'vi', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2183, 1, 'vi', 'plugins.analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2184, 1, 'vi', 'plugins.analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2185, 1, 'vi', 'plugins.analytics/analytics', 'settings.title', 'Google Analytics', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2186, 1, 'vi', 'plugins.analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2187, 1, 'vi', 'plugins.analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2188, 1, 'vi', 'plugins.analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2189, 1, 'vi', 'plugins.analytics/analytics', 'settings.view_id', 'View ID', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2190, 1, 'vi', 'plugins.analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2191, 1, 'vi', 'plugins.analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2192, 1, 'vi', 'plugins.analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2193, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2194, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2195, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2196, 1, 'vi', 'plugins.analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2197, 1, 'CN', 'plugins.analytics/zh/analytics', 'sessions', '会话', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2198, 1, 'CN', 'plugins.analytics/zh/analytics', 'visitors', '访客', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2199, 1, 'CN', 'plugins.analytics/zh/analytics', 'pageviews', '浏览量', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2200, 1, 'CN', 'plugins.analytics/zh/analytics', 'bounce_rate', '弹出率', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2201, 1, 'CN', 'plugins.analytics/zh/analytics', 'page_session', '网页/会话', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2202, 1, 'CN', 'plugins.analytics/zh/analytics', 'avg_duration', '平均持续时间', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2203, 1, 'CN', 'plugins.analytics/zh/analytics', 'percent_new_session', '新会话百分比', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2204, 1, 'CN', 'plugins.analytics/zh/analytics', 'new_users', '新访客', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2205, 1, 'CN', 'plugins.analytics/zh/analytics', 'visits', '访问', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2206, 1, 'CN', 'plugins.analytics/zh/analytics', 'views', '查看', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2207, 1, 'CN', 'plugins.analytics/zh/analytics', 'view_id_not_specified', '您必须提供有效的视图ID。请查看文档：: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2208, 1, 'CN', 'plugins.analytics/zh/analytics', 'credential_is_not_valid', 'Google分析凭据无效。请查看文档: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2209, 1, 'CN', 'plugins.analytics/zh/analytics', 'start_date_can_not_before_end_date', '开始日期 :start_date 不能在结束日期 :end_date之后', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2210, 1, 'CN', 'plugins.analytics/zh/analytics', 'wrong_configuration', '要查看分析，您需要获取Google分析客户端ID并将其添加到您的设置中。 <br />你还需要JSON证书数据。 <br />请查看文档：: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2211, 1, 'en', 'plugins.audit-log/history', 'name', 'Activities Logs', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2212, 1, 'en', 'plugins.audit-log/history', 'created', 'created', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2213, 1, 'en', 'plugins.audit-log/history', 'updated', 'updated', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2214, 1, 'en', 'plugins.audit-log/history', 'deleted', 'deleted', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2215, 1, 'en', 'plugins.audit-log/history', 'logged in', 'logged in', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2216, 1, 'en', 'plugins.audit-log/history', 'logged out', 'logged out', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2217, 1, 'en', 'plugins.audit-log/history', 'changed password', 'changed password', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2218, 1, 'en', 'plugins.audit-log/history', 'updated profile', 'updated profile', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2219, 1, 'en', 'plugins.audit-log/history', 'attached', 'attached', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2220, 1, 'en', 'plugins.audit-log/history', 'shared', 'shared', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2221, 1, 'en', 'plugins.audit-log/history', 'to the system', 'to the system', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2222, 1, 'en', 'plugins.audit-log/history', 'of the system', 'of the system', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2223, 1, 'en', 'plugins.audit-log/history', 'menu', 'menu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2224, 1, 'en', 'plugins.audit-log/history', 'post', 'post', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2225, 1, 'en', 'plugins.audit-log/history', 'page', 'page', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2226, 1, 'en', 'plugins.audit-log/history', 'category', 'category', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2227, 1, 'en', 'plugins.audit-log/history', 'tag', 'tag', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2228, 1, 'en', 'plugins.audit-log/history', 'user', 'user', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2229, 1, 'en', 'plugins.audit-log/history', 'contact', 'contact', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2230, 1, 'en', 'plugins.audit-log/history', 'backup', 'backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2231, 1, 'en', 'plugins.audit-log/history', 'custom-field', 'custom field', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2232, 1, 'en', 'plugins.audit-log/history', 'widget_audit_logs', 'Activities Logs', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2233, 1, 'vi', 'plugins.audit-log/history', 'name', 'Lịch sử hoạt động', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2234, 1, 'vi', 'plugins.audit-log/history', 'created', ' đã tạo', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2235, 1, 'vi', 'plugins.audit-log/history', 'updated', ' đã cập nhật', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2236, 1, 'vi', 'plugins.audit-log/history', 'deleted', ' đã xóa', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2237, 1, 'vi', 'plugins.audit-log/history', 'attached', 'đính kèm', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2238, 1, 'vi', 'plugins.audit-log/history', 'backup', 'sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2239, 1, 'vi', 'plugins.audit-log/history', 'category', 'danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2240, 1, 'vi', 'plugins.audit-log/history', 'changed password', 'thay đổi mật khẩu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2241, 1, 'vi', 'plugins.audit-log/history', 'contact', 'liên hệ', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2242, 1, 'vi', 'plugins.audit-log/history', 'custom-field', 'khung mở rộng', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2243, 1, 'vi', 'plugins.audit-log/history', 'logged in', 'đăng nhập', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2244, 1, 'vi', 'plugins.audit-log/history', 'logged out', 'đăng xuất', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2245, 1, 'vi', 'plugins.audit-log/history', 'menu', 'trình đơn', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2246, 1, 'vi', 'plugins.audit-log/history', 'of the system', 'khỏi hệ thống', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2247, 1, 'vi', 'plugins.audit-log/history', 'page', 'trang', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2248, 1, 'vi', 'plugins.audit-log/history', 'post', 'bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2249, 1, 'vi', 'plugins.audit-log/history', 'shared', 'đã chia sẻ', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2250, 1, 'vi', 'plugins.audit-log/history', 'tag', 'thẻ', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2251, 1, 'vi', 'plugins.audit-log/history', 'to the system', 'vào hệ thống', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2252, 1, 'vi', 'plugins.audit-log/history', 'updated profile', 'cập nhật tài khoản', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2253, 1, 'vi', 'plugins.audit-log/history', 'user', 'thành viên', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2254, 1, 'vi', 'plugins.audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2255, 1, 'CN', 'plugins.audit-log/zh/history', 'name', '历史记录', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2256, 1, 'CN', 'plugins.audit-log/zh/history', 'created', '创建', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2257, 1, 'CN', 'plugins.audit-log/zh/history', 'updated', '更新', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2258, 1, 'CN', 'plugins.audit-log/zh/history', 'deleted', '已删除', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2259, 1, 'CN', 'plugins.audit-log/zh/history', 'logged in', '登录', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2260, 1, 'CN', 'plugins.audit-log/zh/history', 'logged out', '退出', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2261, 1, 'CN', 'plugins.audit-log/zh/history', 'changed password', '更改密码', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2262, 1, 'CN', 'plugins.audit-log/zh/history', 'updated profile', '更新个人资料', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2263, 1, 'CN', 'plugins.audit-log/zh/history', 'attached', '附加', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2264, 1, 'CN', 'plugins.audit-log/zh/history', 'shared', '分享', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2265, 1, 'CN', 'plugins.audit-log/zh/history', 'to the system', '系统', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2266, 1, 'CN', 'plugins.audit-log/zh/history', 'of the system', '系统', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2267, 1, 'CN', 'plugins.audit-log/zh/history', 'menu', '菜单', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2268, 1, 'CN', 'plugins.audit-log/zh/history', 'post', '发布', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2269, 1, 'CN', 'plugins.audit-log/zh/history', 'page', '页面', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2270, 1, 'CN', 'plugins.audit-log/zh/history', 'category', '类别', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2271, 1, 'CN', 'plugins.audit-log/zh/history', 'tag', '标签', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2272, 1, 'CN', 'plugins.audit-log/zh/history', 'user', '用户', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2273, 1, 'CN', 'plugins.audit-log/zh/history', 'contact', '联系人', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2274, 1, 'CN', 'plugins.audit-log/zh/history', 'backup', '备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2275, 1, 'CN', 'plugins.audit-log/zh/history', 'custom-field', '自定义字段', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2276, 1, 'en', 'plugins.backup/backup', 'name', 'Backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2277, 1, 'en', 'plugins.backup/backup', 'backup_description', 'Backup database and uploads folder.', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2278, 1, 'en', 'plugins.backup/backup', 'create_backup_success', 'Created backup successfully!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2279, 1, 'en', 'plugins.backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2280, 1, 'en', 'plugins.backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2281, 1, 'en', 'plugins.backup/backup', 'generate_btn', 'Generate backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2282, 1, 'en', 'plugins.backup/backup', 'create', 'Create backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2283, 1, 'en', 'plugins.backup/backup', 'restore', 'Restore backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2284, 1, 'en', 'plugins.backup/backup', 'create_btn', 'Create', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2285, 1, 'en', 'plugins.backup/backup', 'restore_btn', 'Restore', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2286, 1, 'en', 'plugins.backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2287, 1, 'en', 'plugins.backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2288, 1, 'en', 'plugins.backup/backup', 'download_database', 'Download backup of database', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2289, 1, 'en', 'plugins.backup/backup', 'restore_tooltip', 'Restore this backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2290, 1, 'en', 'plugins.backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=":link">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2291, 1, 'en', 'plugins.backup/backup', 'menu_name', 'Backups', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2292, 1, 'en', 'plugins.backup/backup', 'settings.title', 'Backup', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2293, 1, 'en', 'plugins.backup/backup', 'settings.description', 'Settings for backup function', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2294, 1, 'en', 'plugins.backup/backup', 'settings.backup_mysql_execute_path', 'MySQL execute path', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2295, 1, 'en', 'plugins.backup/backup', 'settings.backup_mysql_execute_path_placeholder', 'Default: /usr/mysql/bin. Ignore it if you don''t sure about it', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2296, 1, 'vi', 'plugins.backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2297, 1, 'vi', 'plugins.backup/backup', 'create', 'Tạo bản sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2298, 1, 'vi', 'plugins.backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2299, 1, 'vi', 'plugins.backup/backup', 'create_btn', 'Tạo', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2300, 1, 'vi', 'plugins.backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2301, 1, 'vi', 'plugins.backup/backup', 'generate_btn', 'Tạo sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2302, 1, 'vi', 'plugins.backup/backup', 'name', 'Sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2303, 1, 'vi', 'plugins.backup/backup', 'restore', 'Khôi phục bản sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2304, 1, 'vi', 'plugins.backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2305, 1, 'vi', 'plugins.backup/backup', 'restore_btn', 'Khôi phục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2306, 1, 'vi', 'plugins.backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2307, 1, 'vi', 'plugins.backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2308, 1, 'vi', 'plugins.backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2309, 1, 'vi', 'plugins.backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2310, 1, 'vi', 'plugins.backup/backup', 'menu_name', 'Sao lưu', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2311, 1, 'vi', 'plugins.backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=":link">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2312, 1, 'CN', 'plugins.backup/zh/backup', 'name', '备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2313, 1, 'CN', 'plugins.backup/zh/backup', 'backup_description', '备份数据库并上传文件夹。', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2314, 1, 'CN', 'plugins.backup/zh/backup', 'create_backup_success', '创建备份成功！', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2315, 1, 'CN', 'plugins.backup/zh/backup', 'delete_backup_success', '删除备份成功！', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2316, 1, 'CN', 'plugins.backup/zh/backup', 'restore_backup_success', '成功恢复备份！', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2317, 1, 'CN', 'plugins.backup/zh/backup', 'generate_btn', '生成备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2318, 1, 'CN', 'plugins.backup/zh/backup', 'create', '创建备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2319, 1, 'CN', 'plugins.backup/zh/backup', 'restore', '恢复备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2320, 1, 'CN', 'plugins.backup/zh/backup', 'create_btn', '创建', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2321, 1, 'CN', 'plugins.backup/zh/backup', 'restore_btn', '恢复', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2322, 1, 'CN', 'plugins.backup/zh/backup', 'restore_confirm_msg', '您确认需要恢复这个版本吗？', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2323, 1, 'CN', 'plugins.backup/zh/backup', 'download_uploads_folder', '下载上传文件夹的备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2324, 1, 'CN', 'plugins.backup/zh/backup', 'download_database', '下载数据库的备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2325, 1, 'CN', 'plugins.backup/zh/backup', 'restore_tooltip', '恢复此备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2326, 1, 'CN', 'plugins.backup/zh/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=":link">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2327, 1, 'CN', 'plugins.backup/zh/backup', 'menu_name', '备份', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2328, 1, 'en', 'plugins.blog/base', 'menu_name', 'Blog', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2329, 1, 'en', 'plugins.blog/categories', 'model', 'Category', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2330, 1, 'en', 'plugins.blog/categories', 'models', 'Categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2331, 1, 'en', 'plugins.blog/categories', 'create', 'Create new category', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2332, 1, 'en', 'plugins.blog/categories', 'edit', 'Edit category', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2333, 1, 'en', 'plugins.blog/categories', 'list', 'List categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2334, 1, 'en', 'plugins.blog/categories', 'menu', 'Categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2335, 1, 'en', 'plugins.blog/categories', 'edit_this_category', 'Edit this category', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2336, 1, 'en', 'plugins.blog/categories', 'menu_name', 'Categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2337, 1, 'en', 'plugins.blog/posts', 'model', 'Post', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2338, 1, 'en', 'plugins.blog/posts', 'models', 'Posts', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2339, 1, 'en', 'plugins.blog/posts', 'list', 'List Posts', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2340, 1, 'en', 'plugins.blog/posts', 'create', 'Create new post', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2341, 1, 'en', 'plugins.blog/posts', 'edit', 'Edit post', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2342, 1, 'en', 'plugins.blog/posts', 'form.name', 'Name', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2343, 1, 'en', 'plugins.blog/posts', 'form.name_placeholder', 'Post''s name (Maximum :c characters)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2344, 1, 'en', 'plugins.blog/posts', 'form.description', 'Description', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2345, 1, 'en', 'plugins.blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2346, 1, 'en', 'plugins.blog/posts', 'form.categories', 'Categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2347, 1, 'en', 'plugins.blog/posts', 'form.tags', 'Tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2348, 1, 'en', 'plugins.blog/posts', 'form.tags_placeholder', 'Tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2349, 1, 'en', 'plugins.blog/posts', 'form.content', 'Content', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2350, 1, 'en', 'plugins.blog/posts', 'form.featured', 'Is featured?', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2351, 1, 'en', 'plugins.blog/posts', 'form.note', 'Note content', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2352, 1, 'en', 'plugins.blog/posts', 'form.format_type', 'Format', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2353, 1, 'en', 'plugins.blog/posts', 'cannot_delete', 'Post could not be deleted', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2354, 1, 'en', 'plugins.blog/posts', 'post_deleted', 'Post deleted', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2355, 1, 'en', 'plugins.blog/posts', 'posts', 'Posts', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2356, 1, 'en', 'plugins.blog/posts', 'edit_this_post', 'Edit this post', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2357, 1, 'en', 'plugins.blog/posts', 'no_new_post_now', 'There is no new post now!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2358, 1, 'en', 'plugins.blog/posts', 'menu_name', 'Posts', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2359, 1, 'en', 'plugins.blog/posts', 'widget_posts_recent', 'Recent Posts', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2360, 1, 'en', 'plugins.blog/tags', 'model', 'Tag', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2361, 1, 'en', 'plugins.blog/tags', 'models', 'Tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2362, 1, 'en', 'plugins.blog/tags', 'form.name', 'Name', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2363, 1, 'en', 'plugins.blog/tags', 'form.name_placeholder', 'Tag''s name (Maximum 120 characters)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2364, 1, 'en', 'plugins.blog/tags', 'form.description', 'Description', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2365, 1, 'en', 'plugins.blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2366, 1, 'en', 'plugins.blog/tags', 'form.categories', 'Categories', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2367, 1, 'en', 'plugins.blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2368, 1, 'en', 'plugins.blog/tags', 'create', 'Create new tag', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2369, 1, 'en', 'plugins.blog/tags', 'edit', 'Edit tag', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2370, 1, 'en', 'plugins.blog/tags', 'list', 'List tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2371, 1, 'en', 'plugins.blog/tags', 'cannot_delete', 'Tag could not be deleted', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2372, 1, 'en', 'plugins.blog/tags', 'deleted', 'Tag deleted', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2373, 1, 'en', 'plugins.blog/tags', 'menu', 'Tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2374, 1, 'en', 'plugins.blog/tags', 'edit_this_tag', 'Edit this tag', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2375, 1, 'en', 'plugins.blog/tags', 'menu_name', 'Tags', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2376, 1, 'vi', 'plugins.blog/base', 'menu_name', 'Blog', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2377, 1, 'vi', 'plugins.blog/categories', 'model', 'Danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2378, 1, 'vi', 'plugins.blog/categories', 'models', 'Danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2379, 1, 'vi', 'plugins.blog/categories', 'list', 'Danh sách danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2380, 1, 'vi', 'plugins.blog/categories', 'create', 'Thêm danh mục mới', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2381, 1, 'vi', 'plugins.blog/categories', 'edit', 'Sửa danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2382, 1, 'vi', 'plugins.blog/categories', 'menu_name', 'Danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2383, 1, 'vi', 'plugins.blog/categories', 'edit_this_category', 'Sửa danh mục này', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2384, 1, 'vi', 'plugins.blog/categories', 'menu', 'Danh mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2385, 1, 'vi', 'plugins.blog/posts', 'model', 'Bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2386, 1, 'vi', 'plugins.blog/posts', 'models', 'Bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2387, 1, 'vi', 'plugins.blog/posts', 'list', 'Danh sách bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2388, 1, 'vi', 'plugins.blog/posts', 'create', 'Thêm bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2389, 1, 'vi', 'plugins.blog/posts', 'edit', 'Sửa bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2390, 1, 'vi', 'plugins.blog/posts', 'form.name', 'Tên', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2391, 1, 'vi', 'plugins.blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2392, 1, 'vi', 'plugins.blog/posts', 'form.description', 'Mô tả', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2393, 1, 'vi', 'plugins.blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2394, 1, 'vi', 'plugins.blog/posts', 'form.categories', 'Chuyên mục', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2395, 1, 'vi', 'plugins.blog/posts', 'form.tags', 'Từ khóa', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2396, 1, 'vi', 'plugins.blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2397, 1, 'vi', 'plugins.blog/posts', 'form.content', 'Nội dung', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2398, 1, 'vi', 'plugins.blog/posts', 'form.featured', 'Bài viết nổi bật?', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2399, 1, 'vi', 'plugins.blog/posts', 'form.note', 'Nội dung ghi chú', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2400, 1, 'vi', 'plugins.blog/posts', 'form.format_type', 'Định dạng', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2401, 1, 'vi', 'plugins.blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2402, 1, 'vi', 'plugins.blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2403, 1, 'vi', 'plugins.blog/posts', 'menu_name', 'Bài viết', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2404, 1, 'vi', 'plugins.blog/posts', 'edit_this_post', 'Sửa bài viết này', '2018-07-16 03:35:17', '2018-07-16 03:35:17'),
(2405, 1, 'vi', 'plugins.blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2406, 1, 'vi', 'plugins.blog/posts', 'posts', 'Bài viết', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2407, 1, 'vi', 'plugins.blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2408, 1, 'vi', 'plugins.blog/tags', 'model', 'Thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2409, 1, 'vi', 'plugins.blog/tags', 'models', 'Thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2410, 1, 'vi', 'plugins.blog/tags', 'list', 'Danh sách thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2411, 1, 'vi', 'plugins.blog/tags', 'create', 'Thêm thẻ mới', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2412, 1, 'vi', 'plugins.blog/tags', 'edit', 'Sửa thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2413, 1, 'vi', 'plugins.blog/tags', 'form.name', 'Tên', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2414, 1, 'vi', 'plugins.blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2415, 1, 'vi', 'plugins.blog/tags', 'form.description', 'Mô tả', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2416, 1, 'vi', 'plugins.blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2417, 1, 'vi', 'plugins.blog/tags', 'form.categories', 'Chuyên mục', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2418, 1, 'vi', 'plugins.blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2419, 1, 'vi', 'plugins.blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2420, 1, 'vi', 'plugins.blog/tags', 'deleted', 'Xóa thẻ thành công', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2421, 1, 'vi', 'plugins.blog/tags', 'menu_name', 'Thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2422, 1, 'vi', 'plugins.blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2423, 1, 'vi', 'plugins.blog/tags', 'menu', 'Thẻ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2424, 1, 'CN', 'plugins.blog/zh/base', 'menu_name', '新闻', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2425, 1, 'CN', 'plugins.blog/zh/categories', 'model', '栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2426, 1, 'CN', 'plugins.blog/zh/categories', 'models', '栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2427, 1, 'CN', 'plugins.blog/zh/categories', 'create', '创建新栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2428, 1, 'CN', 'plugins.blog/zh/categories', 'edit', '编辑栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2429, 1, 'CN', 'plugins.blog/zh/categories', 'list', '栏目列表', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2430, 1, 'CN', 'plugins.blog/zh/categories', 'menu', '栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2431, 1, 'CN', 'plugins.blog/zh/categories', 'edit_this_category', '编辑此栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2432, 1, 'CN', 'plugins.blog/zh/categories', 'menu_name', '栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2433, 1, 'CN', 'plugins.blog/zh/posts', 'model', '文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2434, 1, 'CN', 'plugins.blog/zh/posts', 'models', '文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2435, 1, 'CN', 'plugins.blog/zh/posts', 'list', '文章列表', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2436, 1, 'CN', 'plugins.blog/zh/posts', 'create', '创建新文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2437, 1, 'CN', 'plugins.blog/zh/posts', 'edit', '文章编辑', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2438, 1, 'CN', 'plugins.blog/zh/posts', 'form.name', '名称', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2439, 1, 'CN', 'plugins.blog/zh/posts', 'form.name_placeholder', '文章名称 (最多:c字符)', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2440, 1, 'CN', 'plugins.blog/zh/posts', 'form.description', '描述', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2441, 1, 'CN', 'plugins.blog/zh/posts', 'form.description_placeholder', '文章简短描述（最多:c字符）', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2442, 1, 'CN', 'plugins.blog/zh/posts', 'form.categories', '栏目', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2443, 1, 'CN', 'plugins.blog/zh/posts', 'form.tags', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2444, 1, 'CN', 'plugins.blog/zh/posts', 'form.tags_placeholder', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2445, 1, 'CN', 'plugins.blog/zh/posts', 'form.content', '内容', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2446, 1, 'CN', 'plugins.blog/zh/posts', 'form.featured', '精选?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2447, 1, 'CN', 'plugins.blog/zh/posts', 'form.note', '备注内容', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2448, 1, 'CN', 'plugins.blog/zh/posts', 'form.format_type', '格式', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2449, 1, 'CN', 'plugins.blog/zh/posts', 'cannot_delete', '文章无法删除', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2450, 1, 'CN', 'plugins.blog/zh/posts', 'post_deleted', '文章已删除', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2451, 1, 'CN', 'plugins.blog/zh/posts', 'posts', '文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2452, 1, 'CN', 'plugins.blog/zh/posts', 'edit_this_post', '编辑文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2453, 1, 'CN', 'plugins.blog/zh/posts', 'no_new_post_now', '没有新文章!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2454, 1, 'CN', 'plugins.blog/zh/posts', 'menu_name', '文章', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2455, 1, 'CN', 'plugins.blog/zh/tags', 'model', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2456, 1, 'CN', 'plugins.blog/zh/tags', 'models', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2457, 1, 'CN', 'plugins.blog/zh/tags', 'form.name', '名称', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2458, 1, 'CN', 'plugins.blog/zh/tags', 'form.name_placeholder', '标签名称 (最多120字符)', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2459, 1, 'CN', 'plugins.blog/zh/tags', 'form.description', '描述', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2460, 1, 'CN', 'plugins.blog/zh/tags', 'form.description_placeholder', '标签简短描述（最多400字符）', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2461, 1, 'CN', 'plugins.blog/zh/tags', 'form.categories', '类别', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2462, 1, 'CN', 'plugins.blog/zh/tags', 'notices.no_select', '请至少选择一个标签操作!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2463, 1, 'CN', 'plugins.blog/zh/tags', 'create', '创建新标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2464, 1, 'CN', 'plugins.blog/zh/tags', 'edit', '修改', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2465, 1, 'CN', 'plugins.blog/zh/tags', 'list', '列表', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2466, 1, 'CN', 'plugins.blog/zh/tags', 'cannot_delete', '无法删除标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2467, 1, 'CN', 'plugins.blog/zh/tags', 'deleted', '标签已删除', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2468, 1, 'CN', 'plugins.blog/zh/tags', 'menu', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2469, 1, 'CN', 'plugins.blog/zh/tags', 'edit_this_tag', '编辑此标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2470, 1, 'CN', 'plugins.blog/zh/tags', 'menu_name', '标签', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2471, 1, 'en', 'plugins.captcha/captcha', 'settings.title', 'Captcha', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2472, 1, 'en', 'plugins.captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2473, 1, 'en', 'plugins.captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2474, 1, 'en', 'plugins.captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2475, 1, 'en', 'plugins.captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2476, 1, 'en', 'plugins.contact/contact', 'menu', 'Contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2477, 1, 'en', 'plugins.contact/contact', 'model', 'Contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2478, 1, 'en', 'plugins.contact/contact', 'models', 'Contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2479, 1, 'en', 'plugins.contact/contact', 'list', 'List contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2480, 1, 'en', 'plugins.contact/contact', 'edit', 'View contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2481, 1, 'en', 'plugins.contact/contact', 'tables.phone', 'Phone', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2482, 1, 'en', 'plugins.contact/contact', 'tables.email', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2483, 1, 'en', 'plugins.contact/contact', 'tables.fullname', 'Fullname', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2484, 1, 'en', 'plugins.contact/contact', 'tables.address', 'Address', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2485, 1, 'en', 'plugins.contact/contact', 'tables.subject', 'Subject', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2486, 1, 'en', 'plugins.contact/contact', 'tables.content', 'Content', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2487, 1, 'en', 'plugins.contact/contact', 'form.is_read', 'Read?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2488, 1, 'en', 'plugins.contact/contact', 'form.status', 'Status', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2489, 1, 'en', 'plugins.contact/contact', 'notices.no_select', 'Please select at least one contact to take this action!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2490, 1, 'en', 'plugins.contact/contact', 'notices.update_success_message', 'Update successfully', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2491, 1, 'en', 'plugins.contact/contact', 'cannot_delete', 'Contact could not be deleted', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2492, 1, 'en', 'plugins.contact/contact', 'deleted', 'Contact deleted', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2493, 1, 'en', 'plugins.contact/contact', 'contact_information', 'Contact information', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2494, 1, 'en', 'plugins.contact/contact', 'email.header', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2495, 1, 'en', 'plugins.contact/contact', 'email.title', 'New contact from your site', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2496, 1, 'en', 'plugins.contact/contact', 'email.success', 'Send message successfully!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2497, 1, 'en', 'plugins.contact/contact', 'email.failed', 'Can''t send message on this time, please try again later!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2498, 1, 'en', 'plugins.contact/contact', 'name.required', 'Name is required', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2499, 1, 'en', 'plugins.contact/contact', 'email.required', 'Email is required', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2500, 1, 'en', 'plugins.contact/contact', 'email.email', 'The email address is not valid', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2501, 1, 'en', 'plugins.contact/contact', 'content.required', 'Content is required', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2502, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before send message.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2503, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2504, 1, 'en', 'plugins.contact/contact', 'contact_sent_from', 'This contact information sent from', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2505, 1, 'en', 'plugins.contact/contact', 'sender', 'Sender', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2506, 1, 'en', 'plugins.contact/contact', 'sender_email', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2507, 1, 'en', 'plugins.contact/contact', 'sender_address', 'Address', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2508, 1, 'en', 'plugins.contact/contact', 'sender_phone', 'Phone', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2509, 1, 'en', 'plugins.contact/contact', 'message_content', 'Message content', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2510, 1, 'en', 'plugins.contact/contact', 'sent_from', 'Email sent from', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2511, 1, 'en', 'plugins.contact/contact', 'form_name', 'Name', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2512, 1, 'en', 'plugins.contact/contact', 'form_email', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2513, 1, 'en', 'plugins.contact/contact', 'form_address', 'Address', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2514, 1, 'en', 'plugins.contact/contact', 'form_subject', 'Subject', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2515, 1, 'en', 'plugins.contact/contact', 'form_phone', 'Phone', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2516, 1, 'en', 'plugins.contact/contact', 'form_message', 'Message', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2517, 1, 'en', 'plugins.contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2518, 1, 'en', 'plugins.contact/contact', 'required_field', 'The field with (<span style="color: red">*</span>) is required.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2519, 1, 'en', 'plugins.contact/contact', 'send_btn', 'Send message', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2520, 1, 'en', 'plugins.contact/contact', 'mark_as_read', 'Mark as read', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2521, 1, 'en', 'plugins.contact/contact', 'mark_as_unread', 'Mark as unread', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2522, 1, 'en', 'plugins.contact/contact', 'new_msg_notice', 'You have <span class="bold">:count</span> New Messages', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2523, 1, 'en', 'plugins.contact/contact', 'view_all', 'View all', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2524, 1, 'en', 'plugins.contact/contact', 'read', 'Read', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2525, 1, 'en', 'plugins.contact/contact', 'unread', 'UnRead', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2526, 1, 'en', 'plugins.contact/contact', 'phone', 'Phone', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2527, 1, 'en', 'plugins.contact/contact', 'address', 'Address', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2528, 1, 'en', 'plugins.contact/contact', 'message', 'Message', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2529, 1, 'en', 'plugins.contact/contact', 'settings.email.title', 'Contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2530, 1, 'en', 'plugins.contact/contact', 'settings.email.description', 'Contact email configuration', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2531, 1, 'en', 'plugins.contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2532, 1, 'en', 'plugins.contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2533, 1, 'vi', 'plugins.contact/contact', 'menu', 'Liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2534, 1, 'vi', 'plugins.contact/contact', 'model', 'Liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2535, 1, 'vi', 'plugins.contact/contact', 'models', 'Liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2536, 1, 'vi', 'plugins.contact/contact', 'list', 'Danh sách liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2537, 1, 'vi', 'plugins.contact/contact', 'edit', 'Xem liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2538, 1, 'vi', 'plugins.contact/contact', 'tables.phone', 'Điện thoại', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2539, 1, 'vi', 'plugins.contact/contact', 'tables.email', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2540, 1, 'vi', 'plugins.contact/contact', 'tables.fullname', 'Họ tên', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2541, 1, 'vi', 'plugins.contact/contact', 'tables.address', 'Địa chỉ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2542, 1, 'vi', 'plugins.contact/contact', 'tables.content', 'Nội dung', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2543, 1, 'vi', 'plugins.contact/contact', 'form.is_read', 'Đã xem?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2544, 1, 'vi', 'plugins.contact/contact', 'form.status', 'Trạng thái', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2545, 1, 'vi', 'plugins.contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2546, 1, 'vi', 'plugins.contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2547, 1, 'vi', 'plugins.contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2548, 1, 'vi', 'plugins.contact/contact', 'deleted', 'Liên hệ đã được xóa', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2549, 1, 'vi', 'plugins.contact/contact', 'contact_information', 'Thông tin liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2550, 1, 'vi', 'plugins.contact/contact', 'email.title', 'Thông tin liên hệ mới', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2551, 1, 'vi', 'plugins.contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2552, 1, 'vi', 'plugins.contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2553, 1, 'vi', 'plugins.contact/contact', 'email.required', 'Email không được để trống', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2554, 1, 'vi', 'plugins.contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2555, 1, 'vi', 'plugins.contact/contact', 'email.header', 'Email', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2556, 1, 'vi', 'plugins.contact/contact', 'name.required', 'Họ tên không được để trống', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2557, 1, 'vi', 'plugins.contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2558, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2559, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2560, 1, 'vi', 'plugins.contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2561, 1, 'vi', 'plugins.contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2562, 1, 'vi', 'plugins.contact/contact', 'form_address', 'Địa chỉ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2563, 1, 'vi', 'plugins.contact/contact', 'form_email', 'Thư điện tử', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2564, 1, 'vi', 'plugins.contact/contact', 'form_message', 'Thông điệp', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2565, 1, 'vi', 'plugins.contact/contact', 'form_name', 'Họ tên', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2566, 1, 'vi', 'plugins.contact/contact', 'form_phone', 'Số điện thoại', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2567, 1, 'vi', 'plugins.contact/contact', 'message_content', 'Nội dung thông điệp', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2568, 1, 'vi', 'plugins.contact/contact', 'required_field', 'Những trường có dấu (<span style="color: red">*</span>) là bắt buộc.', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2569, 1, 'vi', 'plugins.contact/contact', 'send_btn', 'Gửi tin nhắn', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2570, 1, 'vi', 'plugins.contact/contact', 'sender', 'Người gửi', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2571, 1, 'vi', 'plugins.contact/contact', 'sender_address', 'Địa chỉ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2572, 1, 'vi', 'plugins.contact/contact', 'sender_email', 'Thư điện tử', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2573, 1, 'vi', 'plugins.contact/contact', 'sender_phone', 'Số điện thoại', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2574, 1, 'vi', 'plugins.contact/contact', 'sent_from', 'Thư được gửi từ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2575, 1, 'vi', 'plugins.contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2576, 1, 'vi', 'plugins.contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2577, 1, 'vi', 'plugins.contact/contact', 'address', 'Địa chỉ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2578, 1, 'vi', 'plugins.contact/contact', 'message', 'Liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2579, 1, 'vi', 'plugins.contact/contact', 'new_msg_notice', 'Bạn có <span class="bold">:count</span> tin nhắn mới', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2580, 1, 'vi', 'plugins.contact/contact', 'phone', 'Điện thoại', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2581, 1, 'vi', 'plugins.contact/contact', 'read', 'Đã đọc', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2582, 1, 'vi', 'plugins.contact/contact', 'unread', 'Chưa đọc', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2583, 1, 'vi', 'plugins.contact/contact', 'view_all', 'Xem tất cả', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2584, 1, 'vi', 'plugins.contact/contact', 'settings.email.title', 'Liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2585, 1, 'vi', 'plugins.contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2586, 1, 'vi', 'plugins.contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2587, 1, 'vi', 'plugins.contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2588, 1, 'CN', 'plugins.contact/zh/contact', 'menu', '联系人', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2589, 1, 'CN', 'plugins.contact/zh/contact', 'model', '联系', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2590, 1, 'CN', 'plugins.contact/zh/contact', 'models', '联系', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2591, 1, 'CN', 'plugins.contact/zh/contact', 'list', '联系人列表', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2592, 1, 'CN', 'plugins.contact/zh/contact', 'edit', '查看联系人', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2593, 1, 'CN', 'plugins.contact/zh/contact', 'tables.phone', '电话', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2594, 1, 'CN', 'plugins.contact/zh/contact', 'tables.email', '电子邮件', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2595, 1, 'CN', 'plugins.contact/zh/contact', 'tables.fullname', '全名', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2596, 1, 'CN', 'plugins.contact/zh/contact', 'tables.address', '地址', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2597, 1, 'CN', 'plugins.contact/zh/contact', 'tables.content', '内容', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2598, 1, 'CN', 'plugins.contact/zh/contact', 'form.is_read', '已阅读?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2599, 1, 'CN', 'plugins.contact/zh/contact', 'form.status', '状态', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2600, 1, 'CN', 'plugins.contact/zh/contact', 'notices.no_select', '请至少选择一个联系人进行此操作！', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2601, 1, 'CN', 'plugins.contact/zh/contact', 'notices.update_success_message', '更新成功', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2602, 1, 'CN', 'plugins.contact/zh/contact', 'cannot_delete', '联系人无法删除', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2603, 1, 'CN', 'plugins.contact/zh/contact', 'deleted', '联系人已删除', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2604, 1, 'CN', 'plugins.contact/zh/contact', 'contact_information', '联系信息', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2605, 1, 'CN', 'plugins.contact/zh/contact', 'email.header', '电子邮件', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2606, 1, 'CN', 'plugins.contact/zh/contact', 'email.title', '您网站有新联系人', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2607, 1, 'CN', 'plugins.contact/zh/contact', 'email.success', '发送信息成功！', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2608, 1, 'CN', 'plugins.contact/zh/contact', 'email.failed', '此时不能发送消息，请稍后再试!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2609, 1, 'CN', 'plugins.contact/zh/contact', 'email.required', '需要电子邮件', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2610, 1, 'CN', 'plugins.contact/zh/contact', 'email.email', '电子邮件地址无效', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2611, 1, 'CN', 'plugins.contact/zh/contact', 'name.required', '姓名是必需的', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2612, 1, 'CN', 'plugins.contact/zh/contact', 'content.required', '内容是必需的', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2613, 1, 'CN', 'plugins.contact/zh/contact', 'g-recaptcha-response.required', '请在发送消息之前确认您不是机器人。', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2614, 1, 'CN', 'plugins.contact/zh/contact', 'g-recaptcha-response.captcha', '你还没有确认是否是机器人。', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2615, 1, 'CN', 'plugins.contact/zh/contact', 'contact_sent_from', '此联系人信息发送', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2616, 1, 'CN', 'plugins.contact/zh/contact', 'sender', '发件人', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2617, 1, 'CN', 'plugins.contact/zh/contact', 'sender_email', '电子邮件', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2618, 1, 'CN', 'plugins.contact/zh/contact', 'sender_address', '地址', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2619, 1, 'CN', 'plugins.contact/zh/contact', 'sender_phone', '电话', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2620, 1, 'CN', 'plugins.contact/zh/contact', 'message_content', '留言内容', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2621, 1, 'CN', 'plugins.contact/zh/contact', 'sent_from', '电子邮件发送者', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2622, 1, 'CN', 'plugins.contact/zh/contact', 'form_name', '名称', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2623, 1, 'CN', 'plugins.contact/zh/contact', 'form_email', '电子邮件', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2624, 1, 'CN', 'plugins.contact/zh/contact', 'form_address', '地址', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2625, 1, 'CN', 'plugins.contact/zh/contact', 'form_phone', '电话', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2626, 1, 'CN', 'plugins.contact/zh/contact', 'form_message', '留言', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2627, 1, 'CN', 'plugins.contact/zh/contact', 'confirm_not_robot', '请确认你不是机器人', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2628, 1, 'CN', 'plugins.contact/zh/contact', 'required_field', '标记为(<span style="color: red">*</span>) 的字段是必须的。', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2629, 1, 'CN', 'plugins.contact/zh/contact', 'send_btn', '发送信息', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2630, 1, 'CN', 'plugins.contact/zh/contact', 'mark_as_read', '标记为已读', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2631, 1, 'CN', 'plugins.contact/zh/contact', 'mark_as_unread', '标记为未读', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2632, 1, 'CN', 'plugins.contact/zh/contact', 'new_msg_notice', '你有<span class="bold">:count条</span> 新信息', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2633, 1, 'CN', 'plugins.contact/zh/contact', 'view_all', '查看全部', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2634, 1, 'CN', 'plugins.contact/zh/contact', 'read', '已读', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2635, 1, 'CN', 'plugins.contact/zh/contact', 'unread', '未读', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2636, 1, 'CN', 'plugins.contact/zh/contact', 'phone', '电话', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2637, 1, 'CN', 'plugins.contact/zh/contact', 'address', '地址', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2638, 1, 'CN', 'plugins.contact/zh/contact', 'message', '消息', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2639, 1, 'en', 'plugins.facebook/facebook', 'name', 'Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2640, 1, 'en', 'plugins.facebook/facebook', 'facebook_box_title', 'Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2641, 1, 'en', 'plugins.facebook/facebook', 'settings.page_title', 'Facebook settings', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2642, 1, 'en', 'plugins.facebook/facebook', 'settings.title', 'General settings', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2643, 1, 'en', 'plugins.facebook/facebook', 'settings.description', 'Setting for Facebook comment, chat box...', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2644, 1, 'en', 'plugins.facebook/facebook', 'settings.fan_page_id', 'Fan page ID', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2645, 1, 'en', 'plugins.facebook/facebook', 'settings.enable', 'Enable', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2646, 1, 'en', 'plugins.facebook/facebook', 'settings.yes', 'Yes', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2647, 1, 'en', 'plugins.facebook/facebook', 'settings.no', 'No', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2648, 1, 'en', 'plugins.facebook/facebook', 'settings.access_token', 'Access Token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2649, 1, 'en', 'plugins.facebook/facebook', 'settings.add_fb_script', 'Add Facebook script to footer of page', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2650, 1, 'en', 'plugins.facebook/facebook', 'settings.use_fb_comment', 'Use Facebook Comment', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2651, 1, 'en', 'plugins.facebook/facebook', 'settings.show_chat_box', 'Show chat box', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2652, 1, 'en', 'plugins.facebook/facebook', 'settings.minimized_chat_box', 'Minimized chat box?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2653, 1, 'en', 'plugins.facebook/facebook', 'settings.expire_notice', 'Access token will be expired on :date', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2654, 1, 'en', 'plugins.facebook/facebook', 'settings.remove_access_token', 'Remove access token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2655, 1, 'en', 'plugins.facebook/facebook', 'settings.get_access_token', 'Get access token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2656, 1, 'en', 'plugins.facebook/facebook', 'settings.select_page', 'Select page', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2657, 1, 'en', 'plugins.facebook/facebook', 'settings.get_fan_page_id_helper', 'You can get fan page ID using this site :link', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2658, 1, 'en', 'plugins.facebook/facebook', 'settings.chat_box_helper', 'To show chat box on that website, please go to :fan-page-id and add :domain to whitelist domains!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2659, 1, 'en', 'plugins.facebook/facebook', 'settings.auto_post_to_fan_page', 'Auto post to fan page', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2660, 1, 'vi', 'plugins.facebook/facebook', 'name', 'Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2661, 1, 'vi', 'plugins.facebook/facebook', 'facebook_box_title', 'Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2662, 1, 'vi', 'plugins.facebook/facebook', 'settings.page_title', 'Cài đặt Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2663, 1, 'vi', 'plugins.facebook/facebook', 'settings.title', 'Cài đặt cơ bản', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2664, 1, 'vi', 'plugins.facebook/facebook', 'settings.description', 'Thiết lập các thông số cơ bản cho Facebook...', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2665, 1, 'vi', 'plugins.facebook/facebook', 'settings.fan_page_id', 'ID của Fanpage', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2666, 1, 'vi', 'plugins.facebook/facebook', 'settings.enable', 'Kích hoạt', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2667, 1, 'vi', 'plugins.facebook/facebook', 'settings.yes', 'Bật', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2668, 1, 'vi', 'plugins.facebook/facebook', 'settings.no', 'Tắt', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2669, 1, 'vi', 'plugins.facebook/facebook', 'settings.access_token', 'Access Token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2670, 1, 'vi', 'plugins.facebook/facebook', 'settings.add_fb_script', 'Thêm mã Facebook vào chân trang', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2671, 1, 'vi', 'plugins.facebook/facebook', 'settings.use_fb_comment', 'Sử dụng bình luận Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2672, 1, 'vi', 'plugins.facebook/facebook', 'settings.show_chat_box', 'Sử dụng hộp thoại trò chuyện Facebook', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2673, 1, 'vi', 'plugins.facebook/facebook', 'settings.minimized_chat_box', 'Thu nhỏ hộp thoại trò chuyện?', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2674, 1, 'vi', 'plugins.facebook/facebook', 'settings.expire_notice', 'Access token sẽ hết hạn vào ngày :date', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2675, 1, 'vi', 'plugins.facebook/facebook', 'settings.remove_access_token', 'Xoá access token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2676, 1, 'vi', 'plugins.facebook/facebook', 'settings.get_access_token', 'Lấy access token', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2677, 1, 'vi', 'plugins.facebook/facebook', 'settings.select_page', 'Chọn trang', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2678, 1, 'vi', 'plugins.facebook/facebook', 'settings.get_fan_page_id_helper', 'Bạn có thể lấy ID của Fanpage thông qua website này :link', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2679, 1, 'vi', 'plugins.facebook/facebook', 'settings.chat_box_helper', 'Để hiển thị hộp thoại trò chuyện lên trang của bạn, hãy truy cập :fan-page-id và thêm :domain vào danh sách tên miền được phép sử dụng!', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2680, 1, 'vi', 'plugins.facebook/facebook', 'settings.auto_post_to_fan_page', 'Tự động đăng bài lên Fanpage', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2681, 1, 'en', 'plugins.gallery/gallery', 'create', 'Create new gallery', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2682, 1, 'en', 'plugins.gallery/gallery', 'edit', 'Edit gallery', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2683, 1, 'en', 'plugins.gallery/gallery', 'list', 'List galleries', '2018-07-16 03:35:18', '2018-07-16 03:35:18'),
(2684, 1, 'en', 'plugins.gallery/gallery', 'galleries', 'Galleries', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2685, 1, 'en', 'plugins.gallery/gallery', 'item', 'Gallery item', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2686, 1, 'en', 'plugins.gallery/gallery', 'select_image', 'Select images', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2687, 1, 'en', 'plugins.gallery/gallery', 'reset', 'Reset gallery', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2688, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description', 'Update photo''s description', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2689, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Photo''s description...', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2690, 1, 'en', 'plugins.gallery/gallery', 'delete_photo', 'Delete this photo', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2691, 1, 'en', 'plugins.gallery/gallery', 'gallery_box', 'Gallery images', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2692, 1, 'en', 'plugins.gallery/gallery', 'by', 'By', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2693, 1, 'en', 'plugins.gallery/gallery', 'menu_name', 'Galleries', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2694, 1, 'en', 'plugins.gallery/gallery', 'gallery_images', 'Gallery images', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2695, 1, 'en', 'plugins.gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2696, 1, 'vi', 'plugins.gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2697, 1, 'vi', 'plugins.gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2698, 1, 'vi', 'plugins.gallery/gallery', 'list', 'Thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2699, 1, 'vi', 'plugins.gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2700, 1, 'vi', 'plugins.gallery/gallery', 'galleries', 'Thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2701, 1, 'vi', 'plugins.gallery/gallery', 'item', 'Ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2702, 1, 'vi', 'plugins.gallery/gallery', 'reset', 'Làm mới thư viện', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2703, 1, 'vi', 'plugins.gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2704, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2705, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2706, 1, 'vi', 'plugins.gallery/gallery', 'by', 'Bởi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2707, 1, 'vi', 'plugins.gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2708, 1, 'vi', 'plugins.gallery/gallery', 'menu_name', 'Thư viện ảnh', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2709, 1, 'CN', 'plugins.gallery/zh/gallery', 'create', '创建新图库', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2710, 1, 'CN', 'plugins.gallery/zh/gallery', 'edit', '编辑图库', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2711, 1, 'CN', 'plugins.gallery/zh/gallery', 'list', '图库列表', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2712, 1, 'CN', 'plugins.gallery/zh/gallery', 'galleries', '图库', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2713, 1, 'CN', 'plugins.gallery/zh/gallery', 'item', '图库项目', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2714, 1, 'CN', 'plugins.gallery/zh/gallery', 'select_image', '选择图片', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2715, 1, 'CN', 'plugins.gallery/zh/gallery', 'reset', '重置图库', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2716, 1, 'CN', 'plugins.gallery/zh/gallery', 'update_photo_description', '更新图片描述', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2717, 1, 'CN', 'plugins.gallery/zh/gallery', 'update_photo_description_placeholder', '图片描述...', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2718, 1, 'CN', 'plugins.gallery/zh/gallery', 'delete_photo', '删除此图片', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2719, 1, 'CN', 'plugins.gallery/zh/gallery', 'gallery_box', '图库示例图片', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2720, 1, 'CN', 'plugins.gallery/zh/gallery', 'by', '拍摄者', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2721, 1, 'CN', 'plugins.gallery/zh/gallery', 'menu_name', '相册', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2722, 1, 'en', 'plugins.language/language', 'menu', 'Language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2723, 1, 'en', 'plugins.language/language', 'name', 'Languages', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2724, 1, 'en', 'plugins.language/language', 'choose_language', 'Choose a language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2725, 1, 'en', 'plugins.language/language', 'select_language', 'Select language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2726, 1, 'en', 'plugins.language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2727, 1, 'en', 'plugins.language/language', 'full_name', 'Full name', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2728, 1, 'en', 'plugins.language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2729, 1, 'en', 'plugins.language/language', 'locale', 'Locale', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2730, 1, 'en', 'plugins.language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>). You will need to create <code>/resources/lang/en</code> directory if it''s not exists for this language.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2731, 1, 'en', 'plugins.language/language', 'language_code', 'Language code', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2732, 1, 'en', 'plugins.language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2733, 1, 'en', 'plugins.language/language', 'text_direction', 'Text direction', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2734, 1, 'en', 'plugins.language/language', 'text_direction_helper', 'Choose the text direction for the language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2735, 1, 'en', 'plugins.language/language', 'left_to_right', 'Left to right', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2736, 1, 'en', 'plugins.language/language', 'right_to_left', 'Right to left', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2737, 1, 'en', 'plugins.language/language', 'flag', 'Flag', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2738, 1, 'en', 'plugins.language/language', 'flag_helper', 'Choose a flag for the language.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2739, 1, 'en', 'plugins.language/language', 'order', 'Order', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2740, 1, 'en', 'plugins.language/language', 'order_helper', 'Position of the language in the language switcher', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2741, 1, 'en', 'plugins.language/language', 'add_new_language', 'Add new language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2742, 1, 'en', 'plugins.language/language', 'code', 'Code', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2743, 1, 'en', 'plugins.language/language', 'default_language', 'Default language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2744, 1, 'en', 'plugins.language/language', 'actions', 'Actions', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2745, 1, 'en', 'plugins.language/language', 'translations', 'Translations', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2746, 1, 'en', 'plugins.language/language', 'edit', 'Edit', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2747, 1, 'en', 'plugins.language/language', 'edit_tooltip', 'Edit this language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2748, 1, 'en', 'plugins.language/language', 'delete', 'Delete', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2749, 1, 'en', 'plugins.language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2750, 1, 'en', 'plugins.language/language', 'choose_default_language', 'Choose :language as default language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2751, 1, 'en', 'plugins.language/language', 'current_language', 'Current record''s language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2752, 1, 'en', 'plugins.language/language', 'edit_related', 'Edit related language for this record', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2753, 1, 'en', 'plugins.language/language', 'add_language_for_item', 'Add other language version for this record', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2754, 1, 'en', 'plugins.language/language', 'settings', 'Settings', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2755, 1, 'en', 'plugins.language/language', 'language_hide_default', 'Hide default language from URL?', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2756, 1, 'en', 'plugins.language/language', 'language_display_flag_only', 'Flag only', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2757, 1, 'en', 'plugins.language/language', 'language_display_name_only', 'Name only', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2758, 1, 'en', 'plugins.language/language', 'language_display_all', 'Display all flag and name', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2759, 1, 'en', 'plugins.language/language', 'language_display', 'Language display', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2760, 1, 'en', 'plugins.language/language', 'switcher_display', 'Switcher language display', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2761, 1, 'en', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2762, 1, 'en', 'plugins.language/language', 'language_switcher_display_list', 'List', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2763, 1, 'en', 'plugins.language/language', 'current_language_edit_notification', 'You are editing "<strrong class="current_language_text">:language</strrong>" version', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2764, 1, 'en', 'plugins.language/language', 'confirm-change-language', 'Confirm change language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2765, 1, 'en', 'plugins.language/language', 'confirm-change-language-message', 'Do you really want to change language to "<strrong class="change_to_language_text"></strrong>" ? This action will be override "<strrong class="change_to_language_text"></strrong>" version if it''s existed!', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2766, 1, 'en', 'plugins.language/language', 'confirm-change-language-btn', 'Confirm change', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2767, 1, 'en', 'plugins.language/language', 'hide_languages', 'Hide languages', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2768, 1, 'en', 'plugins.language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2769, 1, 'en', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2770, 1, 'en', 'plugins.language/language', 'show_all', 'Show all', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2771, 1, 'en', 'plugins.language/language', 'change_language', 'Language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2772, 1, 'en', 'plugins.language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2773, 1, 'vi', 'plugins.language/language', 'name', 'Ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2774, 1, 'vi', 'plugins.language/language', 'choose_language', 'Chọn một ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2775, 1, 'vi', 'plugins.language/language', 'select_language', 'Chọn ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2776, 1, 'vi', 'plugins.language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2777, 1, 'vi', 'plugins.language/language', 'full_name', 'Tên đầy đủ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2778, 1, 'vi', 'plugins.language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2779, 1, 'vi', 'plugins.language/language', 'locale', 'Locale', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2780, 1, 'vi', 'plugins.language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2781, 1, 'vi', 'plugins.language/language', 'language_code', 'Mã ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2782, 1, 'vi', 'plugins.language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2783, 1, 'vi', 'plugins.language/language', 'text_direction', 'Hướng viết chữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2784, 1, 'vi', 'plugins.language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2785, 1, 'vi', 'plugins.language/language', 'left_to_right', 'Trái qua phải', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2786, 1, 'vi', 'plugins.language/language', 'right_to_left', 'Phải qua trái', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2787, 1, 'vi', 'plugins.language/language', 'flag', 'Cờ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2788, 1, 'vi', 'plugins.language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2789, 1, 'vi', 'plugins.language/language', 'order', 'Sắp xếp', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2790, 1, 'vi', 'plugins.language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2791, 1, 'vi', 'plugins.language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2792, 1, 'vi', 'plugins.language/language', 'code', 'Mã', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2793, 1, 'vi', 'plugins.language/language', 'default_language', 'Ngôn ngữ mặc định', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2794, 1, 'vi', 'plugins.language/language', 'actions', 'Hành động', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2795, 1, 'vi', 'plugins.language/language', 'translations', 'Dịch', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2796, 1, 'vi', 'plugins.language/language', 'edit', 'Sửa', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2797, 1, 'vi', 'plugins.language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2798, 1, 'vi', 'plugins.language/language', 'delete', 'Xóa', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2799, 1, 'vi', 'plugins.language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2800, 1, 'vi', 'plugins.language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2801, 1, 'vi', 'plugins.language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2802, 1, 'vi', 'plugins.language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2803, 1, 'vi', 'plugins.language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2804, 1, 'vi', 'plugins.language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2805, 1, 'vi', 'plugins.language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2806, 1, 'vi', 'plugins.language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng "<strrong class="change_to_language_text"></strrong>" ? Điều này sẽ ghi đè bản ghi tiếng "<strrong class="change_to_language_text"></strrong>" nếu nó đã tồn tại!', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2807, 1, 'vi', 'plugins.language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng "<strrong class="current_language_text">:language</strrong>"', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2808, 1, 'vi', 'plugins.language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2809, 1, 'vi', 'plugins.language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2810, 1, 'vi', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2811, 1, 'vi', 'plugins.language/language', 'language_display', 'Hiển thị ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2812, 1, 'vi', 'plugins.language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2813, 1, 'vi', 'plugins.language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2814, 1, 'vi', 'plugins.language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2815, 1, 'vi', 'plugins.language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2816, 1, 'vi', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2817, 1, 'vi', 'plugins.language/language', 'language_switcher_display_list', 'Danh sách', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2818, 1, 'vi', 'plugins.language/language', 'settings', 'Cài đặt', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2819, 1, 'vi', 'plugins.language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2820, 1, 'vi', 'plugins.language/language', 'menu', 'Ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2821, 1, 'vi', 'plugins.language/language', 'change_language', 'Ngôn ngữ', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2822, 1, 'vi', 'plugins.language/language', 'show_all', 'Hiển thị tất cả', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2823, 1, 'CN', 'plugins.language/zh/language', 'menu', '语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2824, 1, 'CN', 'plugins.language/zh/language', 'name', '语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2825, 1, 'CN', 'plugins.language/zh/language', 'choose_language', '选择一种语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2826, 1, 'CN', 'plugins.language/zh/language', 'select_language', '选择语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2827, 1, 'CN', 'plugins.language/zh/language', 'choose_language_helper', '您可以在列表中选择一种语言或直接在下面编辑它。', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2828, 1, 'CN', 'plugins.language/zh/language', 'full_name', '语言名称', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2829, 1, 'CN', 'plugins.language/zh/language', 'full_name_helper', '语言是如何显示在您的网站上的（例如：中文）。', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2830, 1, 'CN', 'plugins.language/zh/language', 'locale', '语言环境', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2831, 1, 'CN', 'plugins.language/zh/language', 'locale_helper', '该语言的Laravel语言环境 (如: <code>en</code>)。如该语言不存在，您将需要创建 <code>/resources/lang/en</code>目录。', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2832, 1, 'CN', 'plugins.language/zh/language', 'language_code', '语言代码', '2018-07-16 03:35:19', '2018-07-16 03:35:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2833, 1, 'CN', 'plugins.language/zh/language', 'language_code_helper', '语言代码 - 最好是2个字母，ISO 639-1（例如：en）', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2834, 1, 'CN', 'plugins.language/zh/language', 'text_direction', '文字方向', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2835, 1, 'CN', 'plugins.language/zh/language', 'text_direction_helper', '请选择此语言的文字方向', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2836, 1, 'CN', 'plugins.language/zh/language', 'left_to_right', '从左到右', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2837, 1, 'CN', 'plugins.language/zh/language', 'right_to_left', '从右至左', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2838, 1, 'CN', 'plugins.language/zh/language', 'flag', '标记', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2839, 1, 'CN', 'plugins.language/zh/language', 'flag_helper', '为语言选择一个标记。', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2840, 1, 'CN', 'plugins.language/zh/language', 'order', '排序', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2841, 1, 'CN', 'plugins.language/zh/language', 'order_helper', '语言切换器中的语言位置', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2842, 1, 'CN', 'plugins.language/zh/language', 'add_new_language', '添加新语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2843, 1, 'CN', 'plugins.language/zh/language', 'code', '代码', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2844, 1, 'CN', 'plugins.language/zh/language', 'default_language', '默认语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2845, 1, 'CN', 'plugins.language/zh/language', 'actions', '操作', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2846, 1, 'CN', 'plugins.language/zh/language', 'translations', '译文', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2847, 1, 'CN', 'plugins.language/zh/language', 'edit', '编辑', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2848, 1, 'CN', 'plugins.language/zh/language', 'edit_tooltip', '编辑此语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2849, 1, 'CN', 'plugins.language/zh/language', 'delete', '删除', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2850, 1, 'CN', 'plugins.language/zh/language', 'delete_tooltip', '删除此语言及其所有相关数据', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2851, 1, 'CN', 'plugins.language/zh/language', 'choose_default_language', '选择:language作为默认语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2852, 1, 'CN', 'plugins.language/zh/language', 'current_language', '当前记录的语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2853, 1, 'CN', 'plugins.language/zh/language', 'edit_related', '修改此记录的语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2854, 1, 'CN', 'plugins.language/zh/language', 'add_language_for_item', '为此记录添加其他语言版本', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2855, 1, 'CN', 'plugins.language/zh/language', 'settings', '设置', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2856, 1, 'CN', 'plugins.language/zh/language', 'language_hide_default', '隐藏默认语言？', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2857, 1, 'CN', 'plugins.language/zh/language', 'language_display_flag_only', '仅标记', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2858, 1, 'CN', 'plugins.language/zh/language', 'language_display_name_only', '仅名称', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2859, 1, 'CN', 'plugins.language/zh/language', 'language_display_all', '显示标记及名称', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2860, 1, 'CN', 'plugins.language/zh/language', 'language_display', '语言显示', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2861, 1, 'CN', 'plugins.language/zh/language', 'switcher_display', '切换语言显示', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2862, 1, 'CN', 'plugins.language/zh/language', 'language_switcher_display_dropdown', '下拉', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2863, 1, 'CN', 'plugins.language/zh/language', 'language_switcher_display_list', '列表', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2864, 1, 'CN', 'plugins.language/zh/language', 'current_language_edit_notification', '您正在编辑"<strrong class="current_language_text">:language</strrong>"语言版本', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2865, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language', '确认更改语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2866, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language-message', '您是否确认将语言改成 "<strrong class="change_to_language_text"></strrong>" ? 如"<strrong class="change_to_language_text"></strrong>"已存在，此操作将会覆盖!', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2867, 1, 'CN', 'plugins.language/zh/language', 'confirm-change-language-btn', '确认更改', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2868, 1, 'CN', 'plugins.language/zh/language', 'hide_languages', '隐藏语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2869, 1, 'CN', 'plugins.language/zh/language', 'hide_languages_description', '您可以从访问者和搜索引擎完全隐藏特定语言的内容，但仍然可以自己查看。这允许检查正在进行的翻译。', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2870, 1, 'CN', 'plugins.language/zh/language', 'hide_languages_helper_display_hidden', '{0} 当前显示所有语言.|{1} :language对访客隐藏.|[2, Inf] :language对当前访问者隐藏', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2871, 1, 'CN', 'plugins.language/zh/language', 'show_all', '全部显示', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2872, 1, 'CN', 'plugins.language/zh/language', 'change_language', '语言', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2873, 1, 'en', 'plugins.log-viewer/general', 'all', 'All', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2874, 1, 'en', 'plugins.log-viewer/general', 'date', 'Date', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2875, 1, 'en', 'plugins.log-viewer/general', 'name', 'System logs', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2876, 1, 'en', 'plugins.log-viewer/levels', 'all', 'All', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2877, 1, 'en', 'plugins.log-viewer/levels', 'emergency', 'Emergency', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2878, 1, 'en', 'plugins.log-viewer/levels', 'alert', 'Alert', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2879, 1, 'en', 'plugins.log-viewer/levels', 'critical', 'Critical', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2880, 1, 'en', 'plugins.log-viewer/levels', 'error', 'Error', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2881, 1, 'en', 'plugins.log-viewer/levels', 'warning', 'Warning', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2882, 1, 'en', 'plugins.log-viewer/levels', 'notice', 'Notice', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2883, 1, 'en', 'plugins.log-viewer/levels', 'info', 'Info', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2884, 1, 'en', 'plugins.log-viewer/levels', 'debug', 'Debug', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2885, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs', 'System Logs', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2886, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2887, 1, 'en', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2888, 1, 'en', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2889, 1, 'en', 'plugins.log-viewer/log-viewer', 'levels', 'Levels', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2890, 1, 'en', 'plugins.log-viewer/log-viewer', 'no_error', 'There is no error now.', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2891, 1, 'en', 'plugins.log-viewer/log-viewer', 'entries', 'entries', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2892, 1, 'en', 'plugins.log-viewer/log-viewer', 'actions', 'Actions', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2893, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2894, 1, 'en', 'plugins.log-viewer/log-viewer', 'loading', 'Loading...', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2895, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_button', 'Delete file', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2896, 1, 'en', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class="label label-danger">DELETE</span> this log file <span class="label label-primary"><span class="log_date">:date</span></span> ?', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2897, 1, 'en', 'plugins.log-viewer/log-viewer', 'download', 'Download', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2898, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete', 'Delete', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2899, 1, 'en', 'plugins.log-viewer/log-viewer', 'file_path', 'File path', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2900, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_entries', 'Log entries', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2901, 1, 'en', 'plugins.log-viewer/log-viewer', 'size', 'Size', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2902, 1, 'en', 'plugins.log-viewer/log-viewer', 'page', 'Page', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2903, 1, 'en', 'plugins.log-viewer/log-viewer', 'of', 'of', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2904, 1, 'en', 'plugins.log-viewer/log-viewer', 'env', 'Env', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2905, 1, 'en', 'plugins.log-viewer/log-viewer', 'level', 'Level', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2906, 1, 'en', 'plugins.log-viewer/log-viewer', 'time', 'Time', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2907, 1, 'en', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2908, 1, 'en', 'plugins.log-viewer/log-viewer', 'stack', 'Stack', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2909, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_info', 'Log info', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2910, 1, 'en', 'plugins.log-viewer/log-viewer', 'menu_name', 'System logs', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2911, 1, 'vi', 'plugins.log-viewer/general', 'all', 'Tất cả', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2912, 1, 'vi', 'plugins.log-viewer/general', 'date', 'Ngày', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2913, 1, 'vi', 'plugins.log-viewer/general', 'name', 'Lỗi hệ thống', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2914, 1, 'vi', 'plugins.log-viewer/levels', 'all', 'Tất cả', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2915, 1, 'vi', 'plugins.log-viewer/levels', 'emergency', 'Khẩn cấp', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2916, 1, 'vi', 'plugins.log-viewer/levels', 'alert', 'Báo động', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2917, 1, 'vi', 'plugins.log-viewer/levels', 'critical', 'Nguy kịch', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2918, 1, 'vi', 'plugins.log-viewer/levels', 'error', 'Lỗi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2919, 1, 'vi', 'plugins.log-viewer/levels', 'warning', 'Cảnh báo', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2920, 1, 'vi', 'plugins.log-viewer/levels', 'notice', 'Chú ý', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2921, 1, 'vi', 'plugins.log-viewer/levels', 'info', 'Thông tin', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2922, 1, 'vi', 'plugins.log-viewer/levels', 'debug', 'Gỡ lỗi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2923, 1, 'vi', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2924, 1, 'vi', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2925, 1, 'vi', 'plugins.log-viewer/log-viewer', 'actions', 'Hành động', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2926, 1, 'vi', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class="label label-danger">XÓA</span> tập tin này <span class="label label-primary"><span class="log_date">:date</span></span> ?', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2927, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete', 'Xóa', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2928, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2929, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2930, 1, 'vi', 'plugins.log-viewer/log-viewer', 'download', 'Tải xuống', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2931, 1, 'vi', 'plugins.log-viewer/log-viewer', 'entries', 'bản ghi', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2932, 1, 'vi', 'plugins.log-viewer/log-viewer', 'env', 'Môi trường', '2018-07-16 03:35:19', '2018-07-16 03:35:19'),
(2933, 1, 'vi', 'plugins.log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2934, 1, 'vi', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2935, 1, 'vi', 'plugins.log-viewer/log-viewer', 'level', 'Cấp độ', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2936, 1, 'vi', 'plugins.log-viewer/log-viewer', 'levels', 'Cấp độ', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2937, 1, 'vi', 'plugins.log-viewer/log-viewer', 'loading', 'Đang tải...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2938, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2939, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2940, 1, 'vi', 'plugins.log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2941, 1, 'vi', 'plugins.log-viewer/log-viewer', 'of', 'trong tổng số', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2942, 1, 'vi', 'plugins.log-viewer/log-viewer', 'page', 'Trang', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2943, 1, 'vi', 'plugins.log-viewer/log-viewer', 'size', 'Kích thước', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2944, 1, 'vi', 'plugins.log-viewer/log-viewer', 'stack', 'Chi tiết', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2945, 1, 'vi', 'plugins.log-viewer/log-viewer', 'time', 'Thời gian', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2946, 1, 'vi', 'plugins.log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2947, 1, 'vi', 'plugins.log-viewer/log-viewer', 'system_logs', 'Lịch sử lỗi hệ thống', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2948, 1, 'vi', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'Xem lịch sử lỗi hệ thống', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2949, 1, 'CN', 'plugins.log-viewer/zh/general', 'all', '全部', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2950, 1, 'CN', 'plugins.log-viewer/zh/general', 'date', '日期', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2951, 1, 'CN', 'plugins.log-viewer/zh/general', 'name', '系统日志', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2952, 1, 'CN', 'plugins.log-viewer/zh/levels', 'all', '全部', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2953, 1, 'CN', 'plugins.log-viewer/zh/levels', 'emergency', '紧急', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2954, 1, 'CN', 'plugins.log-viewer/zh/levels', 'alert', '警报', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2955, 1, 'CN', 'plugins.log-viewer/zh/levels', 'critical', '关键', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2956, 1, 'CN', 'plugins.log-viewer/zh/levels', 'error', '错误', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2957, 1, 'CN', 'plugins.log-viewer/zh/levels', 'warning', '警告', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2958, 1, 'CN', 'plugins.log-viewer/zh/levels', 'notice', '通知', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2959, 1, 'CN', 'plugins.log-viewer/zh/levels', 'info', '信息', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2960, 1, 'CN', 'plugins.log-viewer/zh/levels', 'debug', '调试', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2961, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'system_logs', '系统日志', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2962, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'system_logs_description', '查看系统错误日志', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2963, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'name', '日志查看', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2964, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'list', '日志列表', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2965, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'levels', '等级', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2966, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'no_error', '当前无错误', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2967, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'entries', '全部', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2968, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'actions', '操作', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2969, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete_log_file', '删除日志文件', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2970, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'loading', '正在加载...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2971, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete_button', '删除文件', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2972, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'confirm_delete_msg', '您是否确定 <span class="label label-danger">删除</span> 此日志文件 <span class="label label-primary"><span class="log_date">:date</span></span> ?', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2973, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'download', '下载', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2974, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'delete', '删除', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2975, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'file_path', '文件目录', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2976, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'log_entries', '日志条目', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2977, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'size', '大小', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2978, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'page', '页面', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2979, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'of', '的', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2980, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'env', '环境', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2981, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'level', '等级', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2982, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'time', '时间', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2983, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'header', '表头', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2984, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'stack', '堆栈', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2985, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'log_info', '日志信息', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2986, 1, 'CN', 'plugins.log-viewer/zh/log-viewer', 'menu_name', '系统日志', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2987, 1, 'en', 'plugins.request-log/request-log', 'name', 'Request Logs', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2988, 1, 'en', 'plugins.request-log/request-log', 'status_code', 'Status Code', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2989, 1, 'en', 'plugins.request-log/request-log', 'no_request_error', 'No request error now!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2990, 1, 'en', 'plugins.request-log/request-log', 'widget_request_errors', 'Request Errors', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2991, 1, 'vi', 'plugins.request-log/request-log', 'name', 'Lịch sử lỗi', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2992, 1, 'vi', 'plugins.request-log/request-log', 'status_code', 'Mã lỗi', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2993, 1, 'vi', 'plugins.request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2994, 1, 'vi', 'plugins.request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2995, 1, 'CN', 'plugins.request-log/zh/request-log', 'name', '请求日志', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2996, 1, 'CN', 'plugins.request-log/zh/request-log', 'status_code', '状态码', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2997, 1, 'CN', 'plugins.request-log/zh/request-log', 'no_request_error', '当前无请求错误!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2998, 1, 'en', 'plugins.social-login/social-login', 'settings.title', 'Social Login settings', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(2999, 1, 'en', 'plugins.social-login/social-login', 'settings.description', 'Configure social login options', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3000, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3001, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3002, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.app_id', 'App ID', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3003, 1, 'en', 'plugins.social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3004, 1, 'en', 'plugins.social-login/social-login', 'settings.google.title', 'Google login settings', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3005, 1, 'en', 'plugins.social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3006, 1, 'en', 'plugins.social-login/social-login', 'settings.google.app_id', 'App ID', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3007, 1, 'en', 'plugins.social-login/social-login', 'settings.google.app_secret', 'App Secret', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3008, 1, 'en', 'plugins.social-login/social-login', 'settings.github.title', 'Github login settings', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3009, 1, 'en', 'plugins.social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3010, 1, 'en', 'plugins.social-login/social-login', 'settings.github.app_id', 'App ID', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3011, 1, 'en', 'plugins.social-login/social-login', 'settings.github.app_secret', 'App Secret', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3012, 1, 'en', 'plugins.social-login/social-login', 'settings.enable', 'Enable?', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3013, 1, 'en', 'plugins.social-login/social-login', 'menu', 'Social Login', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3014, 1, 'en', 'plugins.translation/translation', 'translations', 'Translations', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3015, 1, 'en', 'plugins.translation/translation', 'translations_description', 'Translate all words in system.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3016, 1, 'en', 'plugins.translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the app/lang file, using ''php artisan translation:export'' command or publish button.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3017, 1, 'en', 'plugins.translation/translation', 'import_done', 'Done importing, processed <strong class="counter">N</strong> items! Reload this page to refresh the groups!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3018, 1, 'en', 'plugins.translation/translation', 'translation_manager', 'Translations Manager', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3019, 1, 'en', 'plugins.translation/translation', 'done_searching', 'Done searching for translations, found <strong class="counter">N</strong> items!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3020, 1, 'en', 'plugins.translation/translation', 'done_publishing', 'Done publishing the translations for group', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3021, 1, 'en', 'plugins.translation/translation', 'append_translation', 'Append new translations', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3022, 1, 'en', 'plugins.translation/translation', 'replace_translation', 'Replace existing translations', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3023, 1, 'en', 'plugins.translation/translation', 'loading', 'Loading...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3024, 1, 'en', 'plugins.translation/translation', 'import_group', 'Import group', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3025, 1, 'en', 'plugins.translation/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3026, 1, 'en', 'plugins.translation/translation', 'searching', 'Searching...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3027, 1, 'en', 'plugins.translation/translation', 'find_translation_files', 'Find translations in files', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3028, 1, 'en', 'plugins.translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group ":group"? This will overwrite existing language files.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3029, 1, 'en', 'plugins.translation/translation', 'publishing', 'Publishing..', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3030, 1, 'en', 'plugins.translation/translation', 'publish_translations', 'Publish translations', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3031, 1, 'en', 'plugins.translation/translation', 'back', 'Back', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3032, 1, 'en', 'plugins.translation/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3033, 1, 'en', 'plugins.translation/translation', 'add_key_button', 'Add keys', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3034, 1, 'en', 'plugins.translation/translation', 'total', 'Total', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3035, 1, 'en', 'plugins.translation/translation', 'changed', 'changed', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3036, 1, 'en', 'plugins.translation/translation', 'key', 'Key', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3037, 1, 'en', 'plugins.translation/translation', 'edit_title', 'Enter translation', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3038, 1, 'en', 'plugins.translation/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3039, 1, 'en', 'plugins.translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3040, 1, 'en', 'plugins.translation/translation', 'choose_a_group', 'Choose a group', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3041, 1, 'en', 'plugins.translation/translation', 'menu_name', 'Translations', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3042, 1, 'vi', 'plugins.translation/translation', 'add_key_button', 'Thêm khóa', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3043, 1, 'vi', 'plugins.translation/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3044, 1, 'vi', 'plugins.translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3045, 1, 'vi', 'plugins.translation/translation', 'back', 'Quay lại', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3046, 1, 'vi', 'plugins.translation/translation', 'changed', 'thay đổi', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3047, 1, 'vi', 'plugins.translation/translation', 'choose_a_group', 'Chọn một nhóm', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3048, 1, 'vi', 'plugins.translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3049, 1, 'vi', 'plugins.translation/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3050, 1, 'vi', 'plugins.translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm ":group"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3051, 1, 'vi', 'plugins.translation/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3052, 1, 'vi', 'plugins.translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3053, 1, 'vi', 'plugins.translation/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class="counter">N</strong> bản ghi!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3054, 1, 'vi', 'plugins.translation/translation', 'edit_title', 'Nhập nội dung dịch', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3055, 1, 'vi', 'plugins.translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh ''php artisan translations:export'' hoặc sử dụng nút xuất bản', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3056, 1, 'vi', 'plugins.translation/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3057, 1, 'vi', 'plugins.translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class="counter">N</strong> bản ghi!  ', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3058, 1, 'vi', 'plugins.translation/translation', 'import_group', 'Nhập nhóm', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3059, 1, 'vi', 'plugins.translation/translation', 'key', 'Khóa', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3060, 1, 'vi', 'plugins.translation/translation', 'loading', 'Đang tải...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3061, 1, 'vi', 'plugins.translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3062, 1, 'vi', 'plugins.translation/translation', 'publishing', 'Đang xuất bản...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3063, 1, 'vi', 'plugins.translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3064, 1, 'vi', 'plugins.translation/translation', 'searching', 'Đang tìm kiếm...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3065, 1, 'vi', 'plugins.translation/translation', 'total', 'Tổng cộng', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3066, 1, 'vi', 'plugins.translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3067, 1, 'vi', 'plugins.translation/translation', 'translations', 'Dịch thuật', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3068, 1, 'vi', 'plugins.translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3069, 1, 'vi', 'plugins.translation/translation', 'menu_name', 'Dịch thuật', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3070, 1, 'CN', 'plugins.translation/zh/translation', 'translations', '翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3071, 1, 'CN', 'plugins.translation/zh/translation', 'translations_description', '翻译系统中的所有文字。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3072, 1, 'CN', 'plugins.translation/zh/translation', 'export_warning', '请注意, 在使用 ''php artisan translation:export'' 命令或发布按钮将翻译导回 app/lang 目录之前，翻译是不可见的。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3073, 1, 'CN', 'plugins.translation/zh/translation', 'import_done', '完成导入，已处理<strong class="counter">N</strong> 条数据! 请重新加载此页面刷新!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3074, 1, 'CN', 'plugins.translation/zh/translation', 'translation_manager', '翻译管理中心', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3075, 1, 'CN', 'plugins.translation/zh/translation', 'done_searching', '完成搜索翻译, 发现 <strong class="counter">N</strong> 条数据!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3076, 1, 'CN', 'plugins.translation/zh/translation', 'done_publishing', '完成翻译文件发布', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3077, 1, 'CN', 'plugins.translation/zh/translation', 'append_translation', '追加新翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3078, 1, 'CN', 'plugins.translation/zh/translation', 'replace_translation', '替换现有翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3079, 1, 'CN', 'plugins.translation/zh/translation', 'loading', '正在加载...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3080, 1, 'CN', 'plugins.translation/zh/translation', 'import_group', '导入', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3081, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_scan_translation', '你确定要扫描你的应用程序文件夹吗？所有找到的翻译将被添加到数据库中。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3082, 1, 'CN', 'plugins.translation/zh/translation', 'searching', '正在搜索...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3083, 1, 'CN', 'plugins.translation/zh/translation', 'find_translation_files', '在文件中查找翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3084, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_publish_group', '你确定要发布翻译 ":group"吗? 这将覆盖现有的语言文件。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3085, 1, 'CN', 'plugins.translation/zh/translation', 'publishing', '正在发布...', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3086, 1, 'CN', 'plugins.translation/zh/translation', 'publish_translations', '发布翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3087, 1, 'CN', 'plugins.translation/zh/translation', 'back', '返回', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3088, 1, 'CN', 'plugins.translation/zh/translation', 'add_key_description', '每行添加1个键值，不需要译文组前缀', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3089, 1, 'CN', 'plugins.translation/zh/translation', 'add_key_button', '添加键值', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3090, 1, 'CN', 'plugins.translation/zh/translation', 'total', '总计', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3091, 1, 'CN', 'plugins.translation/zh/translation', 'changed', '更改', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3092, 1, 'CN', 'plugins.translation/zh/translation', 'key', '键值', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3093, 1, 'CN', 'plugins.translation/zh/translation', 'edit_title', '输入翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3094, 1, 'CN', 'plugins.translation/zh/translation', 'confirm_delete_key', '你确定要删除:key的翻译吗?', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3095, 1, 'CN', 'plugins.translation/zh/translation', 'choose_group_msg', '选择一组译文，如果没有可见的译文组，请确保您已经运行了迁移操作并导入了翻译。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3096, 1, 'CN', 'plugins.translation/zh/translation', 'choose_a_group', '选择一组译文', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3097, 1, 'CN', 'plugins.translation/zh/translation', 'menu_name', '翻译', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3098, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3099, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3100, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3101, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3102, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3103, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3104, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3105, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3106, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3107, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3108, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3109, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3110, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3111, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3112, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3113, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3114, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3115, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3116, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3117, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3118, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3119, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3120, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3121, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3122, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3123, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3124, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3125, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3126, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3127, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3128, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3129, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3130, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3131, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3132, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3133, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3134, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3135, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3136, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3137, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3138, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3139, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3140, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3141, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3142, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3143, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3144, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3145, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3146, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3147, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3148, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3149, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3150, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3151, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3152, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3153, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3154, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3155, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3156, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3157, 1, 'vi', 'validation', 'uploaded', 'Không thể tải lên, hãy thử lại.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3158, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3159, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3160, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3161, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3162, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3163, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3164, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3165, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3166, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3167, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3168, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3169, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3170, 1, 'zh-CN', 'auth', 'failed', '用户名或密码错误。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3171, 1, 'zh-CN', 'auth', 'throttle', '您的尝试登录次数过多，请 :seconds 秒后再试。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3172, 1, 'zh-CN', 'pagination', 'previous', '&laquo; 上一页', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3173, 1, 'zh-CN', 'pagination', 'next', '下一页 &raquo;', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3174, 1, 'zh-CN', 'passwords', 'password', '密码至少是六位字符并且匹配。', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3175, 1, 'zh-CN', 'passwords', 'reset', '密码重置成功！', '2018-07-16 03:35:20', '2018-07-16 03:35:20'),
(3176, 1, 'zh-CN', 'passwords', 'sent', '密码重置邮件已发送！', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3177, 1, 'zh-CN', 'passwords', 'token', '密码重置令牌无效。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3178, 1, 'zh-CN', 'passwords', 'user', '找不到该邮箱对应的用户。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3179, 1, 'zh-CN', 'validation', 'accepted', ':attribute 必须接受。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3180, 1, 'zh-CN', 'validation', 'active_url', ':attribute 不是一个有效的网址。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3181, 1, 'zh-CN', 'validation', 'after', ':attribute 必须要晚于 :date。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3182, 1, 'zh-CN', 'validation', 'after_or_equal', ':attribute 必须要等于 :date 或更晚。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3183, 1, 'zh-CN', 'validation', 'alpha', ':attribute 只能由字母组成。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3184, 1, 'zh-CN', 'validation', 'alpha_dash', ':attribute 只能由字母、数字和斜杠组成。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3185, 1, 'zh-CN', 'validation', 'alpha_num', ':attribute 只能由字母和数字组成。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3186, 1, 'zh-CN', 'validation', 'array', ':attribute 必须是一个数组。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3187, 1, 'zh-CN', 'validation', 'before', ':attribute 必须要早于 :date。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3188, 1, 'zh-CN', 'validation', 'before_or_equal', ':attribute 必须要等于 :date 或更早。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3189, 1, 'zh-CN', 'validation', 'between.numeric', ':attribute 必须介于 :min - :max 之间。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3190, 1, 'zh-CN', 'validation', 'between.file', ':attribute 必须介于 :min - :max KB 之间。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3191, 1, 'zh-CN', 'validation', 'between.string', ':attribute 必须介于 :min - :max 个字符之间。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3192, 1, 'zh-CN', 'validation', 'between.array', ':attribute 必须只有 :min - :max 个单元。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3193, 1, 'zh-CN', 'validation', 'boolean', ':attribute 必须为布尔值。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3194, 1, 'zh-CN', 'validation', 'confirmed', ':attribute 两次输入不一致。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3195, 1, 'zh-CN', 'validation', 'date', ':attribute 不是一个有效的日期。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3196, 1, 'zh-CN', 'validation', 'date_format', ':attribute 的格式必须为 :format。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3197, 1, 'zh-CN', 'validation', 'different', ':attribute 和 :other 必须不同。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3198, 1, 'zh-CN', 'validation', 'digits', ':attribute 必须是 :digits 位的数字。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3199, 1, 'zh-CN', 'validation', 'digits_between', ':attribute 必须是介于 :min 和 :max 位的数字。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3200, 1, 'zh-CN', 'validation', 'dimensions', ':attribute 图片尺寸不正确。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3201, 1, 'zh-CN', 'validation', 'distinct', ':attribute 已经存在。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3202, 1, 'zh-CN', 'validation', 'email', ':attribute 不是一个合法的邮箱。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3203, 1, 'zh-CN', 'validation', 'exists', ':attribute 不存在。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3204, 1, 'zh-CN', 'validation', 'file', ':attribute 必须是文件。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3205, 1, 'zh-CN', 'validation', 'filled', ':attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3206, 1, 'zh-CN', 'validation', 'gt.numeric', ':attribute 必须大于 :value。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3207, 1, 'zh-CN', 'validation', 'gt.file', ':attribute 必须大于 :value KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3208, 1, 'zh-CN', 'validation', 'gt.string', ':attribute 必须多于 :value 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3209, 1, 'zh-CN', 'validation', 'gt.array', ':attribute 必须多于 :value 个元素。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3210, 1, 'zh-CN', 'validation', 'gte.numeric', ':attribute 必须大于或等于 :value。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3211, 1, 'zh-CN', 'validation', 'gte.file', ':attribute 必须大于或等于 :value KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3212, 1, 'zh-CN', 'validation', 'gte.string', ':attribute 必须多于或等于 :value 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3213, 1, 'zh-CN', 'validation', 'gte.array', ':attribute 必须多于或等于 :value 个元素。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3214, 1, 'zh-CN', 'validation', 'image', ':attribute 必须是图片。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3215, 1, 'zh-CN', 'validation', 'in', '已选的属性 :attribute 非法。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3216, 1, 'zh-CN', 'validation', 'in_array', ':attribute 没有在 :other 中。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3217, 1, 'zh-CN', 'validation', 'integer', ':attribute 必须是整数。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3218, 1, 'zh-CN', 'validation', 'ip', ':attribute 必须是有效的 IP 地址。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3219, 1, 'zh-CN', 'validation', 'ipv4', ':attribute 必须是有效的 IPv4 地址。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3220, 1, 'zh-CN', 'validation', 'ipv6', ':attribute 必须是有效的 IPv6 地址。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3221, 1, 'zh-CN', 'validation', 'json', ':attribute 必须是正确的 JSON 格式。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3222, 1, 'zh-CN', 'validation', 'lt.numeric', ':attribute 必须小于 :value。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3223, 1, 'zh-CN', 'validation', 'lt.file', ':attribute 必须小于 :value KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3224, 1, 'zh-CN', 'validation', 'lt.string', ':attribute 必须少于 :value 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3225, 1, 'zh-CN', 'validation', 'lt.array', ':attribute 必须少于 :value 个元素。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3226, 1, 'zh-CN', 'validation', 'lte.numeric', ':attribute 必须小于或等于 :value。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3227, 1, 'zh-CN', 'validation', 'lte.file', ':attribute 必须小于或等于 :value KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3228, 1, 'zh-CN', 'validation', 'lte.string', ':attribute 必须少于或等于 :value 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3229, 1, 'zh-CN', 'validation', 'lte.array', ':attribute 必须少于或等于 :value 个元素。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3230, 1, 'zh-CN', 'validation', 'max.numeric', ':attribute 不能大于 :max。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3231, 1, 'zh-CN', 'validation', 'max.file', ':attribute 不能大于 :max KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3232, 1, 'zh-CN', 'validation', 'max.string', ':attribute 不能大于 :max 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3233, 1, 'zh-CN', 'validation', 'max.array', ':attribute 最多只有 :max 个单元。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3234, 1, 'zh-CN', 'validation', 'mimes', ':attribute 必须是一个 :values 类型的文件。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3235, 1, 'zh-CN', 'validation', 'mimetypes', ':attribute 必须是一个 :values 类型的文件。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3236, 1, 'zh-CN', 'validation', 'min.numeric', ':attribute 必须大于等于 :min。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3237, 1, 'zh-CN', 'validation', 'min.file', ':attribute 大小不能小于 :min KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3238, 1, 'zh-CN', 'validation', 'min.string', ':attribute 至少为 :min 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3239, 1, 'zh-CN', 'validation', 'min.array', ':attribute 至少有 :min 个单元。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3240, 1, 'zh-CN', 'validation', 'not_in', '已选的属性 :attribute 非法。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3241, 1, 'zh-CN', 'validation', 'not_regex', ':attribute 的格式错误。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3242, 1, 'zh-CN', 'validation', 'numeric', ':attribute 必须是一个数字。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3243, 1, 'zh-CN', 'validation', 'present', ':attribute 必须存在。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3244, 1, 'zh-CN', 'validation', 'regex', ':attribute 格式不正确。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3245, 1, 'zh-CN', 'validation', 'required', ':attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3246, 1, 'zh-CN', 'validation', 'required_if', '当 :other 为 :value 时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3247, 1, 'zh-CN', 'validation', 'required_unless', '当 :other 不为 :value 时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3248, 1, 'zh-CN', 'validation', 'required_with', '当 :values 存在时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3249, 1, 'zh-CN', 'validation', 'required_with_all', '当 :values 存在时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3250, 1, 'zh-CN', 'validation', 'required_without', '当 :values 不存在时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3251, 1, 'zh-CN', 'validation', 'required_without_all', '当 :values 都不存在时 :attribute 不能为空。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3252, 1, 'zh-CN', 'validation', 'same', ':attribute 和 :other 必须相同。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3253, 1, 'zh-CN', 'validation', 'size.numeric', ':attribute 大小必须为 :size。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3254, 1, 'zh-CN', 'validation', 'size.file', ':attribute 大小必须为 :size KB。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3255, 1, 'zh-CN', 'validation', 'size.string', ':attribute 必须是 :size 个字符。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3256, 1, 'zh-CN', 'validation', 'size.array', ':attribute 必须为 :size 个单元。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3257, 1, 'zh-CN', 'validation', 'string', ':attribute 必须是一个字符串。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3258, 1, 'zh-CN', 'validation', 'timezone', ':attribute 必须是一个合法的时区值。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3259, 1, 'zh-CN', 'validation', 'unique', ':attribute 已经存在。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3260, 1, 'zh-CN', 'validation', 'uploaded', ':attribute 上传失败。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3261, 1, 'zh-CN', 'validation', 'url', ':attribute 格式不正确。', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3262, 1, 'zh-CN', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3263, 1, 'zh-CN', 'validation', 'attributes.name', '名称', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3264, 1, 'zh-CN', 'validation', 'attributes.username', '用户名', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3265, 1, 'zh-CN', 'validation', 'attributes.email', '邮箱', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3266, 1, 'zh-CN', 'validation', 'attributes.first_name', '名', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3267, 1, 'zh-CN', 'validation', 'attributes.last_name', '姓', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3268, 1, 'zh-CN', 'validation', 'attributes.password', '密码', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3269, 1, 'zh-CN', 'validation', 'attributes.password_confirmation', '确认密码', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3270, 1, 'zh-CN', 'validation', 'attributes.city', '城市', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3271, 1, 'zh-CN', 'validation', 'attributes.country', '国家', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3272, 1, 'zh-CN', 'validation', 'attributes.address', '地址', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3273, 1, 'zh-CN', 'validation', 'attributes.phone', '电话', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3274, 1, 'zh-CN', 'validation', 'attributes.mobile', '手机', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3275, 1, 'zh-CN', 'validation', 'attributes.age', '年龄', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3276, 1, 'zh-CN', 'validation', 'attributes.sex', '性别', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3277, 1, 'zh-CN', 'validation', 'attributes.gender', '性别', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3278, 1, 'zh-CN', 'validation', 'attributes.day', '天', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3279, 1, 'zh-CN', 'validation', 'attributes.month', '月', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3280, 1, 'zh-CN', 'validation', 'attributes.year', '年', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3281, 1, 'zh-CN', 'validation', 'attributes.hour', '时', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3282, 1, 'zh-CN', 'validation', 'attributes.minute', '分', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3283, 1, 'zh-CN', 'validation', 'attributes.second', '秒', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3284, 1, 'zh-CN', 'validation', 'attributes.title', '标题', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3285, 1, 'zh-CN', 'validation', 'attributes.content', '内容', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3286, 1, 'zh-CN', 'validation', 'attributes.description', '描述', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3287, 1, 'zh-CN', 'validation', 'attributes.excerpt', '摘要', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3288, 1, 'zh-CN', 'validation', 'attributes.date', '日期', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3289, 1, 'zh-CN', 'validation', 'attributes.time', '时间', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3290, 1, 'zh-CN', 'validation', 'attributes.available', '可用的', '2018-07-16 03:35:21', '2018-07-16 03:35:21'),
(3291, 1, 'zh-CN', 'validation', 'attributes.size', '大小', '2018-07-16 03:35:21', '2018-07-16 03:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_position` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `completed_profile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `dob`, `address`, `secondary_address`, `job_position`, `phone`, `secondary_phone`, `secondary_email`, `gender`, `website`, `skype`, `facebook`, `twitter`, `google_plus`, `youtube`, `github`, `interest`, `about`, `profile_image`, `super_user`, `manage_supers`, `completed_profile`) VALUES
(1, 'minhsang2603@gmail.com', '$2y$10$A.uOgqPJthpIKaaUQ3QaueO19/dtXbntkRuNCRM4DA1D0wN33Jsd6', '2FzGYeZWNu6hWHo95t6jWNs8OpbgNH80hHIQoKc26so7ctxiOaOb8RxNZlkl', '2017-11-15 06:57:09', '2018-07-17 01:50:27', '{"superuser":true,"manage_supers":true}', '2018-07-17 01:50:27', 'Sang', 'Nguyen', 'botble', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/vendor/core/images/default-avatar.jpg', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'vi', 1, '2017-12-12 17:33:45', '2017-12-18 18:41:20'),
(2, 'admin-locale', 'en', 1, '2017-12-12 18:28:41', '2018-05-25 19:30:47'),
(3, 'admin-theme', 'default', 1, '2018-03-07 03:54:49', '2018-03-13 20:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(10) unsigned NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(18, 'TextWidget', 'footer_sidebar', 'lara-mag', 0, '{"id":"TextWidget","name":"About us","content":"Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\\r\\n\\r\\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu."}', '2017-12-13 18:29:38', '2017-12-13 18:29:38'),
(19, 'RecentPostsWidget', 'footer_sidebar', 'lara-mag', 1, '{"id":"RecentPostsWidget","name":"Recent posts","number_display":"5"}', '2017-12-13 18:29:38', '2017-12-13 18:29:38'),
(20, 'CustomMenuWidget', 'footer_sidebar', 'lara-mag', 2, '{"id":"CustomMenuWidget","name":"Featured Categories","menu_id":"featured-categories"}', '2017-12-13 18:29:38', '2017-12-13 18:29:38'),
(21, 'FacebookWidget', 'footer_sidebar', 'lara-mag', 3, '{"id":"FacebookWidget","name":"Fanpage Facebook","facebook_name":"Botble Technologies","facebook_url":"https:\\/\\/www.facebook.com\\/botble.technologies\\/"}', '2017-12-13 18:29:38', '2017-12-13 18:29:38'),
(89, 'RecentPostsWidget', 'primary_sidebar', 'lara-mag', 0, '{"id":"RecentPostsWidget","name":"Recent posts","number_display":"5"}', '2018-06-23 18:26:24', '2018-06-23 18:26:24'),
(90, 'AdsWidget', 'primary_sidebar', 'lara-mag', 1, '{"id":"AdsWidget","image_link":"#","image_new_tab":"1","image_url":"https:\\/\\/s3-ap-southeast-1.amazonaws.com\\/botble\\/lara-mag\\/ads\\/300x250.jpg"}', '2018-06-23 18:26:24', '2018-06-23 18:26:24'),
(91, 'PopularPostsWidget', 'primary_sidebar', 'lara-mag', 2, '{"id":"PopularPostsWidget","name":"Popular Posts","number_display":"5"}', '2018-06-23 18:26:24', '2018-06-23 18:26:24'),
(92, 'VideoPostsWidget', 'primary_sidebar', 'lara-mag', 3, '{"id":"VideoPostsWidget","name":"Video Posts","number_display":"4"}', '2018-06-23 18:26:24', '2018-06-23 18:26:24'),
(93, 'AdsWidget', 'primary_sidebar', 'lara-mag', 4, '{"id":"AdsWidget","image_link":"#","image_new_tab":"0","image_url":"https:\\/\\/s3-ap-southeast-1.amazonaws.com\\/botble\\/lara-mag\\/ads\\/300x250.jpg"}', '2018-06-23 18:26:24', '2018-06-23 18:26:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_history`
--
ALTER TABLE `audit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`content_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`lang_meta_content_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`related_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`content_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_type_index` (`revisionable_type`),
  ADD KEY `revisions_revisionable_id_index` (`revisionable_id`),
  ADD KEY `revisions_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_configurations`
--
ALTER TABLE `table_configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_configurations_created_by_index` (`created_by`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`user_id`),
  ADD KEY `tags_parent_id_index` (`parent_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `audit_history`
--
ALTER TABLE `audit_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `table_configurations`
--
ALTER TABLE `table_configurations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3292;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
