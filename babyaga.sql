-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 07:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babyaga`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `order_id`, `user_id`, `name`, `email`, `company`, `phone`, `division_id`, `district_id`, `address`, `order_note`, `created_at`, `updated_at`) VALUES
(7, 8, 20, 'Md.Al', 'rupam272@gmail.com', 'Rupam', '01626359787', 1, 10, 'Rahman Villa, 112/A,', 'kafi', '2022-07-28 00:56:25', NULL),
(8, 9, 21, 'nahid', 'zeronuxy@mailinator.com', 'BocatoPro', '911893y83y8y3', 6, 47, 'Shekertek', 'Friends', '2022-07-28 01:08:13', NULL),
(9, 10, 23, 'Inga', 'gapamucivo@mailinator.com', 'Bailey and Byers Traders', '+1 (359) 592-9069', 6, 47, '50 Second Drive', 'Voluptates fuga Com', '2022-08-07 23:52:27', NULL),
(10, 11, 24, 'Nayda', 'gydu@mailinator.com', 'Sutton and Byrd Inc', '+1 (189) 214-9139', 1, 2, '61 Milton Avenue', 'Et quia quas consect', '2022-08-15 09:54:50', NULL),
(11, 12, 25, 'Orli', 'vecis@mailinator.com', 'Wolf May Inc', '+1 (653) 739-2997', 6, 52, '89 Cowley Road', 'Aut voluptate perspi', '2022-08-20 09:21:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(48, 24, 1, 9, 5, 3, '2022-09-20 10:42:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `added_by`, `category_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Accessories', 1, '1.jpg', NULL, '2022-06-04 17:56:30', '2022-06-04 17:56:32'),
(2, 'Fashion', 1, '2.jpg', NULL, '2022-06-04 17:56:53', '2022-06-04 17:56:55'),
(3, 'Home & Lifestyle', 1, '3.jpg', NULL, '2022-06-04 17:57:47', '2022-06-04 17:57:48'),
(4, 'Watches, Bags, Jewellery', 1, '4.jpg', NULL, '2022-06-04 17:58:55', '2022-06-04 17:58:58'),
(5, 'TV & Home Appliances', 1, '5.jpg', NULL, '2022-06-04 17:59:40', '2022-06-04 17:59:44'),
(7, 'Rhiannon Pacheco', 1, 'default.png', NULL, '2022-08-07 22:54:39', NULL),
(11, 'Rafael Wise', 1, '11.jpg', NULL, '2022-08-07 23:02:35', '2022-08-07 23:02:37'),
(12, 'Shade Card', 1, '12.jpg', NULL, '2022-08-20 09:13:34', '2022-08-20 09:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `created_at`, `updated_at`) VALUES
(6, 'Red', '#FF0000', '2022-06-11 14:02:38', NULL),
(7, 'Black', '#000000', '2022-06-11 14:02:57', NULL),
(8, 'Blue', '#0000FF', '2022-06-11 14:04:10', NULL),
(9, 'NA', '#FF0000', '2022-06-14 07:40:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `validity` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `type`, `amount`, `min`, `max`, `status`, `validity`, `created_at`, `updated_at`) VALUES
(1, 'BD20', 1, 15, 500, 5000, 1, '2024-06-24', '2022-06-14 07:08:55', '2022-09-20 10:43:32'),
(2, 'Kafi50', 2, 100, 500, 5000, 1, '2022-06-24', '2022-06-14 07:23:04', '2022-09-20 10:43:36'),
(3, 'NewU10', 1, 20, 500, 100000, 1, '2022-07-31', '2022-07-28 01:07:05', '2022-07-28 01:07:09'),
(4, 'Kafi500', 2, 500, 500, 100000000, 1, '2022-09-29', '2022-09-20 10:45:24', '2022-09-20 10:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `customer_email_verifies`
--

CREATE TABLE `customer_email_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_email_verifies`
--

INSERT INTO `customer_email_verifies` (`id`, `customer_id`, `token`, `created_at`, `updated_at`) VALUES
(10, 28, '62dced2ca76e0', '2022-07-24 00:56:44', '2022-07-24 00:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `customer_logins`
--

CREATE TABLE `customer_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_logins`
--

INSERT INTO `customer_logins` (`id`, `name`, `password`, `email`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'dapac', '$2y$10$8MfB9zmuQhNf9RZm.LIyN.4NMNa/nQqafT/NjafYIs27N57xXZd4G', 'witiw@mailinator.com', '2022-07-28', '2022-07-28 00:28:18', '2022-07-28 00:28:47'),
(23, 'cososugug', '$2y$10$21VzGLw9oJhpPYIawPhtYO5grlaHbUNugqgtyZdbTsdNcV6tci7Ga', 'ludavi@mailinator.com', '2022-08-08', '2022-08-07 22:53:37', '2022-08-07 23:04:48'),
(24, 'Al Kafi Rupam', '$2y$10$NittcChf.pVycndGBULfhewlEc4vd.Uru33Yj8KGkzqqBFmaJFM3m', 'rupam272@gmail.com', NULL, '2022-08-14 00:10:36', '2022-08-14 00:10:36'),
(25, 'Al Kafi', '$2y$10$VOjjSDgRgwdMPOkMqVMy7.RYUZ7Tpz/ZTeM0oNA3Lgul..VyIeyf.', 'kafirupam@gmail.com', NULL, '2022-08-20 09:19:41', '2022-08-20 09:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `customer_pass_resets`
--

CREATE TABLE `customer_pass_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `division_id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd'),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd'),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd'),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd'),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd'),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd'),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd'),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd'),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd'),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd'),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd'),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd'),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd'),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd'),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd'),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd'),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd'),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd'),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd'),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd'),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd'),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd'),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd'),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd'),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd'),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd'),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd'),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd'),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd'),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd'),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd'),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd'),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd'),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd'),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd'),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd'),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd'),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd'),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd'),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd'),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd'),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd'),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd'),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd'),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd'),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd'),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd'),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd'),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd'),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd'),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd'),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd'),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd'),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd'),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd'),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd'),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd'),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd'),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd'),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd'),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd'),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd'),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd'),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `color_id`, `size_id`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 9, 6, 2, 2, '2022-06-11 14:05:01', '2022-06-23 12:53:12'),
(2, 9, 7, 3, 1, '2022-06-11 14:05:14', '2022-06-17 12:07:22'),
(3, 9, 8, 3, 4, '2022-06-11 14:05:25', '2022-06-25 13:13:28'),
(4, 10, 6, 3, 1, '2022-06-11 14:06:04', '2022-06-25 10:31:16'),
(5, 2, 9, 5, 2, '2022-06-14 07:40:38', '2022-06-25 10:32:40'),
(6, 3, 7, 2, 3, '2022-06-15 11:27:12', '2022-07-28 00:56:25'),
(7, 3, 8, 1, 43, '2022-06-15 11:27:26', '2022-07-28 01:08:14'),
(8, 12, 7, 5, 97, '2022-08-07 23:24:32', '2022-08-07 23:52:27'),
(9, 12, 8, 5, 50, '2022-08-07 23:24:45', NULL),
(10, 13, 7, 5, 100, '2022-08-07 23:30:59', NULL),
(11, 1, 9, 5, 98, '2022-08-14 12:10:01', '2022-08-15 09:54:50'),
(12, 14, 6, 5, 48, '2022-08-20 09:18:00', '2022-08-20 09:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_05_28_195825_create_categories_table', 2),
(18, '2022_05_31_051102_create_subcategories_table', 2),
(26, '2022_06_02_125212_create_products_table', 3),
(27, '2022_06_02_173711_create_thumbnils_table', 3),
(28, '2022_06_03_173105_create_colors_table', 3),
(29, '2022_06_03_180135_create_sizes_table', 3),
(34, '2022_06_04_211405_create_inventories_table', 4),
(35, '2022_06_09_174622_create_customer_logins_table', 4),
(37, '2022_06_10_163614_create_carts_table', 5),
(39, '2022_06_12_120743_create_coupons_table', 6),
(40, '2022_06_15_194513_create_orders_table', 7),
(42, '2022_06_15_201016_create_billing_details_table', 8),
(46, '2022_06_15_203202_create_order_product_details_table', 9),
(47, '2022_06_26_122133_create_customer_pass_resets_table', 10),
(48, '2022_07_01_170715_create_customer_email_verifies_table', 11),
(49, '2022_07_26_104203_create_permission_tables', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `charge` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `sub_total`, `discount`, `charge`, `total`, `created_at`, `updated_at`) VALUES
(8, 20, 3610, 0, 130, 3610, '2022-07-28 00:56:25', NULL),
(9, 21, 9025, 1805, 70, 7220, '2022-07-28 01:08:13', NULL),
(10, 23, 62700, 0, 70, 62700, '2022-08-07 23:52:27', NULL),
(11, 24, 157500, 0, 70, 157500, '2022-08-15 09:54:50', NULL),
(12, 25, 1026, 0, 130, 1026, '2022-08-20 09:21:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_product_details`
--

CREATE TABLE `order_product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product_details`
--

INSERT INTO `order_product_details` (`id`, `order_id`, `user_id`, `product_id`, `color_id`, `size_id`, `price`, `quantity`, `review`, `star`, `created_at`, `updated_at`) VALUES
(6, 8, 20, 3, 7, 2, 1805, 2, 'This watch Is Very good quality>>>>>', 5, '2022-07-28 00:56:25', '2022-07-28 00:59:27'),
(7, 9, 21, 3, 8, 1, 1805, 5, NULL, NULL, '2022-07-28 01:08:14', NULL),
(8, 10, 23, 12, 7, 5, 20900, 3, NULL, NULL, '2022-08-07 23:52:27', NULL),
(9, 11, 24, 1, 9, 5, 78750, 2, NULL, NULL, '2022-08-15 09:54:50', NULL),
(10, 12, 25, 14, 6, 5, 513, 2, NULL, NULL, '2022-08-20 09:21:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Detele Category', 'web', '2022-07-26 04:52:16', '2022-07-26 04:52:16'),
(2, 'Detele Subcategory', 'web', '2022-07-26 05:07:17', '2022-07-26 05:07:17'),
(3, 'Detele Product', 'web', '2022-07-26 05:08:34', '2022-07-26 05:08:34'),
(4, 'Detele Cupon', 'web', '2022-07-26 05:08:45', '2022-07-26 05:08:45'),
(5, 'Category Edit', 'web', '2022-07-26 09:27:49', '2022-07-26 09:27:49'),
(6, 'Subcategory Edit', 'web', '2022-07-26 09:28:04', '2022-07-26 09:28:04'),
(7, 'Add Category', 'web', '2022-07-26 09:28:31', '2022-07-26 09:28:31'),
(8, 'Add Subcategory', 'web', '2022-07-26 09:28:44', '2022-07-26 09:28:44'),
(9, 'Add Product', 'web', '2022-07-26 09:28:53', '2022-07-26 09:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `after_discount` int(11) DEFAULT NULL,
  `short_desp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `price`, `discount`, `after_discount`, `short_desp`, `long_desp`, `sku`, `slug`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'HP Pavilion 15-eg1043TX Core i5 11th Gen MX450 2GB Graphics 15.6\" FHD Laptop', 87500, 10, 78750, 'MPN: 552K3PA Model: Pavilion 15-eg1043TX Processor: Intel Core i5-1155G7 (8M Cache, 2.50 GHz up to 4.50 GHz) Memory: 8 GB DDR4-320', 'HP Pavilion 15-eg1043TX Core i5 11th Gen MX450 2GB Graphics 15.6\" FHD Laptop\r\nThe HP Pavilion 15-eg1043TX laptop is powered by the Intel Core i5-1155G7 (8M Cache, 2.50 GHz up to 4.50 GHz) and it comes with 8 GB DDR4-3200 MHz RAM. This laptop comes with a 512 GB PCIe NVMe M.2 SSD for storing all your valuable data. Pavilion 15-eg1043TX is integrated with NVIDIA GeForce MX450 2 GB GDDR5 dedicated Graphics. The laptop has a 15.6\" diagonal, FHD (1920 x 1080), IPS, micro-edge, anti-glare, 250 nits, 45% NTSC Display. It features Audio by B&O; Dual speakers; HP Audio Boost and has an HP Wide Vision 720p HD camera with integrated dual array digital microphones. The laptop runs on Windows 11 Home operating system and the whole system is powered by a 3-cell, 41 Wh Li-ion battery. It comes with a 65 W Smart AC power adapter. It is equipped with Realtek Wi-Fi 6 (1x2) and Bluetooth 5.2 combo (Supporting Gigabit data rate) for wireless connectivity. The laptop is designed with 1 SuperSpeed USB Type-C 10Gbps signaling rate (USB Power Delivery, DisplayPort 1.4, HP Sleep and Charge); 2 SuperSpeed USB Type-A 5Gbps signaling rate; 1 HDMI 2.0; 1 AC smart pin; 1 headphone/microphone combo. HP Pavilion 15-eg1043TX comes with 3 years International Limited Warranty (Terms & Conditions Apply As Per HP).', 'HP P-FeckO324', 'hp-pavilion-15-eg1043tx-core-i5-11th-gen-mx450-2gb-graphics-15.6\"-fhd-laptop-47112', '1.jpg', NULL, '2022-06-04 18:24:02'),
(2, 1, 1, 'Asus Vivobook E510MA Celeron N4020 15.6\" HD Laptop', 37500, 10, 33750, 'MPN: BR635W Model: Vivobook E510MA Processor: Intel Celeron N4020 (4M Cache, 1.10 GHz up to 2.80 GHz)', 'Asus Vivobook E510MA Laptop comes with Intel Celeron Processor N4020 (4M Cache, 1.10 GHz up to 2.80 GHz), 15.6-inch, HD (1366X768) LED 16:9, Anti-glare display, LED Backlit, NTSC: 45%, 4GB DDR4 Onboard RAM, 256GB PCIEG3 SSD, Integrated Intel UHD Graphics and Windows 10 Operating System. This laptop features a 2-Cell 37 Wh lithium-polymer battery, Illuminated Keyboard, and VGA webcam. Here, Wi-Fi 5 (802.11ac) and Bluetooth 4.1 Network & Wireless Connectivity. This laptop also has 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 2x USB 2.0 Type-A, 1x HDMI 1.4, 1x 3.5mm Combo Audio Jack Ports, Connectors & Slots. The new Asus Vivobook E510MA Celeron N4020 15.6\" HD Laptop has 02 years International Limited Warranty (Battery 1 year).', 'Asus-CbrCm547', 'asus-vivobook-e510ma-celeron-n4020-15.6\"-hd-laptop-42054', '2.jpg', NULL, '2022-06-04 18:25:56'),
(3, 4, 10, 'MEGIR 2015 Chronograph Leather Watch for Men - Black', 1900, 5, 1805, 'Dial Window Material Type: Hardlex Case Shape: Round Band Length: 22cm Clasp Type: Buckle Water Resistance Depth: 3bar', 'Dial Window Material Type: Hardlex\r\nCase Shape: Round\r\nBand Length: 22cm\r\nClasp Type: Buckle\r\nWater Resistance Depth: 3bar', 'MEGI-1HZ1l764', 'megir-2015-chronograph-leather-watch-for-men---black-86649', '3.jpg', NULL, '2022-06-04 18:27:58'),
(9, 2, 6, 'Polo T-shirt', 500, 5, 475, 'Thgis polo T-shirt', 'Thgis polo T-shirt', 'Polo-lrseG358', 'polo-t-shirt-21217', '9.jpg', NULL, '2022-06-08 01:36:35'),
(12, 1, 2, 'Redmi Note 11- 8GB-128GB - Li-Ion 5000 mAh Battery', 22000, 5, 20900, 'Prices are subject to change upon direction on 5% VAT from Government NO RETURN applicable if the seal is broken 6.43\'\'', '<h2>Redmi Note 11- 8GB/128GB - Li-Ion 5000 mAh Battery</h2><p><br></p><table class=\"table table-bordered\"><tbody><tr><td><ul><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.7f16mx1Pmx1PYn\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\">Prices are subject to change upon direction on 5% VAT from Government</font></li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.7f16mx1Pmx1PYn\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">NO RETURN applicable if the seal is broken</li><li class=\"\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">6.43\'\' FHD+ AMOLED Display</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.7f16mx1Pmx1PYn\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">Storage Capacity: 128GB</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.7f16mx1Pmx1PYn\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\"><font style=\"background-color: rgb(255, 255, 255);\" color=\"#0000ff\"><br></font></li></ul></td><td><ul class=\"\" style=\"list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><li class=\"\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">Massive 5000mAh Battery 33W Pro Fast Charging</li><li class=\"\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">RAM Memory: 8GB</li><li class=\"\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">50MP AI Quad Camera,8MP Ultra-Wide Camera, 2MPMacro Camera,2MPDepth Camera</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.7f16mx1Pmx1PYn\" style=\"margin: 0px; padding-left: 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; word-break: break-word; break-inside: avoid;\">13MP Front Camera</li><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding-bottom: 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"></div></ul></td></tr></tbody></table><p><br></p>', 'Redm-mS15z154', 'redmi-note-11--8gb-128gb---li-ion-5000-mah-battery-30317', '12.jpeg', NULL, '2022-08-07 23:24:10'),
(13, 7, 2, 'Ivory West', 983, 90, 98, 'Aperiam aperiam null', NULL, 'Ivor-7uoKQ295', 'ivory-west-9070', '13.webp', NULL, '2022-08-07 23:29:56');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `price`, `discount`, `after_discount`, `short_desp`, `long_desp`, `sku`, `slug`, `product_image`, `created_at`, `updated_at`) VALUES
(14, 12, 15, 'Tile fix', 540, 5, 513, 'Art deco inspired design Plush, soft velvet upholstery Gold-finished metal legs Various, trendy colorways', '<h2>Tile Fixe</h2><p>This is SSHade Card<img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEBLAEsAAD/4QBdRXhpZgAASUkqAAgAAAABAA4BAgA7AAAAGgAAAAAAAABDZW1lbnQgaW4gYmFncywgM0QgcmVuZGVyaW5nLCBpc29sYXRlZCBvbiB3aGl0ZSBiYWNrZ3JvdW5kLv/hBVpodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iPgoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOklwdGM0eG1wQ29yZT0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcENvcmUvMS4wL3htbG5zLyIgICB4bWxuczpHZXR0eUltYWdlc0dJRlQ9Imh0dHA6Ly94bXAuZ2V0dHlpbWFnZXMuY29tL2dpZnQvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIiAgeG1sbnM6aXB0Y0V4dD0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcEV4dC8yMDA4LTAyLTI5LyIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgcGhvdG9zaG9wOkNyZWRpdD0iR2V0dHkgSW1hZ2VzL2lTdG9ja3Bob3RvIiBHZXR0eUltYWdlc0dJRlQ6QXNzZXRJRD0iOTg3NDA5MzcyIiB4bXBSaWdodHM6V2ViU3RhdGVtZW50PSJodHRwczovL3d3dy5pc3RvY2twaG90by5jb20vbGVnYWwvbGljZW5zZS1hZ3JlZW1lbnQ/dXRtX21lZGl1bT1vcmdhbmljJmFtcDt1dG1fc291cmNlPWdvb2dsZSZhbXA7dXRtX2NhbXBhaWduPWlwdGN1cmwiID4KPGRjOmNyZWF0b3I+PHJkZjpTZXE+PHJkZjpsaT51cmZpbmd1c3M8L3JkZjpsaT48L3JkZjpTZXE+PC9kYzpjcmVhdG9yPjxkYzpkZXNjcmlwdGlvbj48cmRmOkFsdD48cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPkNlbWVudCBpbiBiYWdzLCAzRCByZW5kZXJpbmcsIGlzb2xhdGVkIG9uIHdoaXRlIGJhY2tncm91bmQuPC9yZGY6bGk+PC9yZGY6QWx0PjwvZGM6ZGVzY3JpcHRpb24+CjxwbHVzOkxpY2Vuc29yPjxyZGY6U2VxPjxyZGY6bGkgcmRmOnBhcnNlVHlwZT0nUmVzb3VyY2UnPjxwbHVzOkxpY2Vuc29yVVJMPmh0dHBzOi8vd3d3LmlzdG9ja3Bob3RvLmNvbS9waG90by9saWNlbnNlLWdtOTg3NDA5MzcyLT91dG1fbWVkaXVtPW9yZ2FuaWMmYW1wO3V0bV9zb3VyY2U9Z29vZ2xlJmFtcDt1dG1fY2FtcGFpZ249aXB0Y3VybDwvcGx1czpMaWNlbnNvclVSTD48L3JkZjpsaT48L3JkZjpTZXE+PC9wbHVzOkxpY2Vuc29yPgoJCTwvcmRmOkRlc2NyaXB0aW9uPgoJPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KPD94cGFja2V0IGVuZD0idyI/Pgr/7QCIUGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAGscAlAACXVyZmluZ3VzcxwCeAA7Q2VtZW50IGluIGJhZ3MsIDNEIHJlbmRlcmluZywgaXNvbGF0ZWQgb24gd2hpdGUgYmFja2dyb3VuZC4cAm4AGEdldHR5IEltYWdlcy9pU3RvY2twaG90bwD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wAARCAMABAADASIAAhEBAxEB/8QAHAABAAIDAQEBAAAAAAAAAAAAAAMEAQIFBgcI/8QASxAAAQQBAgQEAwQHBAgFAwUBAQACAxEEEiEFEzFBBiJRYRRxgSMykaEHM0JSscHRFXLh8BYkNENic4KSVLLC0vElU6IINURjk3T/xAAbAQEAAwEBAQEAAAAAAAAAAAAAAgMEAQUGB//EADcRAAICAQMCBAMHAwUBAAMAAAABAhEDBBIhMUEFEyJRYXHwFDKBkaGxwSNC0QYVUuHxMyRykv/aAAwDAQACEQMRAD8A/ZaIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIonzP1ubHC6TSaJDgN+vf5rMMheXBzCxzeoJtASIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAItZXtjZqdfoAOpKjdLIxuuSGmdyHWW/NATItXvaxhe5wDRvZUYlkefs4HV+886f8AH8kBMiiMkzesGof8D7/jS2ilZJYaTY6tIoj6IDdERAEREAREQBERAEREARYkcGMc93RosqF00rQS7GeGjcnU3+qAnRYaQ5ocOhFrKAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIo3ykScuNmt1Wd6AHugJEUbJSZOXIzQ6rG9gj2SWVrCG7ueejWiygJEUQfORfJa32c/f8gVjnuZ+thcwfvDzD8kBMiw0hzQ5pBB6ELKAIiIAiIgCIiAIiIAiKOWQscGtYXuIJoEDb6/NASIomTOMgZJE6MuurIN/gpUAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAERDsLKAIoWyyPbrjhtnYl1F3yUkUjZGahY7EHqCgNkUPP1GoY3SV1I2H4n+SyXzgXyWH2Em/5hASoomTtLgxwdG89Gu7/AC7FSoAiIgCIiAIoRiwjcB4PqHu/qsEyQbvcZIu7j1b8/UICdFpLI2Nms7+gHcrQRySbzPLR+4w1XzPUoCZFCMWEdA8H1D3f1WDzINy4yR97+83+qA2g/WT/APM/9IWIf9pn/wCn+CzB+sn/AOZ/6QoxI2OedzvVoAHUmugQFlFCyN7/ADTOcCejWuI0/h1KjDQ6XTCX00+Z5e4gew33KAtIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgI8gO0te1uosdqr1H+StHZDC0iO3vPRtH8/Rb5JLYSQaNgfiQtJ4xHC+RrpNTRYuRx/mgMQx6pA127YQGj+9XX+C3klcJOXHHrfVmzQA+aww8vJex2wk8zT6mqI/ILMkb+ZzYnAOqi13Rw/kgMGSZht8Hl9WO1V9KCRBz5TM4ED7rB7eqCcNNTMdEfU7t/H+qSeedjCXaSwnZxG9j0+aAS27IZHqcGlhd5TXQj+q1ox5MbQ95Dg69Tr6UpGQsbJzBrLqqy8nb6n2WZImSFrnarb0IcR/BAbooJGCMNcwvvU0bvJ2JHqVlz3yvLIjpaDTn1e/oEBMih+GiO7zI8+peU+Ha0fZPfGf7xI/AoCZFFFI7WYpQA8CwR0cPUJLI4v5UQBfVkno0ICVFD8O136x8kh93EfkE+HY39W+Rh9Q4n8jsgM5n+yTf3D/BbZH6iT+6f4KCd7/h54pANQjJBHQj+SnyP1En90/wQCD9Sz+6P4LdV2yOLGRQ0X6RZPRorv/RbPjjjYXySSUOp5jt/oEBMihxmv3e7U1p+61ziT9bUyAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAoC8QzPLwQx9EOroaqip1C4a8gscXBoYCKcR3PogNJJQ5wkaCWRAuLqq9ugUuPHoZbt5HbvPv/AEUb4/O6EOdpfG67cTvsO/zUkEnMjBIpw2cPQ90BoyaWQa4oQWH7pc+r96ooZpQ0tMDhJ+z3afqjGzQNDGASxjYC6cB6ehW8czHnSCQ4dWuFFAZhZy4w27Pc+pUULOawvc+QHU4bOIGxIWYWCVhe8vvU4bPI6EjsVLFG2JmhgIFk7knqb7oDTFcSx4JJ0vLQT6BSqL4eO3EaxqNmpHDf8VqHCF8gJdoa1pFkk2b9fogJ0UIZLL5pXOY3sxpr8T/RPhYf3Xf97v6oCZFCY5IvNE4vH7jjf4H+qkjka+PWDt3vsgNkUDTJONTXGOI9CPvO9/YLJxYTuQ8n1L3f1QEyid/tbP8Alu/i1YMUke8LyR+482D9eoWGPEmRE8AgGN3X5tQGZf8AaoP+r+CmUE5DcmEkgAB1k/JGl851W5kXajRd7+wQE6KtM1jXCOPmOkPQc11Aep36KxGC1gDnaiBuUBlERAEREAREQBERAEREAREQBERAEREAREQBERAFrK3XE9l1qaQtkQEDchjWgSWx42LaP5eq0pzyGOBaJXF7h30gAV9dvzW8EYkhZI50mpws1I4fzWjXFojmcba0uY4nsL6/kEBNK8RMaAwkk6Wtb3WuvIABMDD6gSb/AMFtNHzA0tdpc0209d1rzZGfrojX7zNx+HVAYt072gNcxjfM7UKJPYLbKcWxiiRb2t29yAsTSB0LXRusOc0WD2JAKyceMkXzDRBFyO6jf1QEeQzlRGRsklgjq8kdVZWsrGyMLHglp60aWhhYBeqT/wD0d/VASoq7ZXmKJrQHSuYCb6D3K2+HDh9rI95/vFo/AIDBxYgCY7jf+807/wCK3gcZIQXgat2uHawaK0OVERUZMj+zWjf/AAW8DTHCA8jVu5x7WTZQFfFt05jPSCwL9ya/L+KmmLnytga4tBGp5HWvQf57KHF8s5kPSeyD8ia/I/kppg5kzZ2tLhWl4HWux/z6oDHwsI3aCx37wcbWWwuc4Omfr0/dFUL9fmsfFwdGuLnfugEn8E50jKdNHpYe4N6fn/VAbQfrJ/8Amf8ApCyIYxO6areRVk9PksY/6yf/AJn/AKWqMzvZkyawDC2tx1bt1+SA2c508j4mEsaw089CfYf1UzGtY0NaAGjoAo5oy4iWMhsgGx7Eeh9ltDKJAdi1zdnNPUFAboiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgIsv9T/1N/8AMEzP9lk/ulMv9T/1N/8AMEzP9lk/ulAbyMbI3S8WFHpnj+44St9H7H8UMkkjiIdIa3q5w2J9B/VPiWsFTgxEeo2+hQG0crZCWFpa8DdjhvX81DJDGyRjHMDonmg0/sn29lnWJ8iJ0VlrLJfWx2qh6/4LfJ3MTR1Mg/LdAaMhiizW8tgbcbrrvu1ZymMkyYGSNDm+Y0fot37ZcZPdjgPnYP8AJa5JDJYpXbMbYcfSx1/JAazQwwQvljiYHtaaIHdS+XHxz10xts+ppaSvjyIJI4pWOcW7UbW/lyMc9dMja9xaAjZjiRgdkW9ztyL2HsAjmfDua6OxGXBrmXY3NWPRGZDY2huR9m8bEkbH3BRz/iHNbFZYHBzn1tsboeqA2zPLEJR1jcHfTv8AkmGPsA89ZPOT8/8ACgmZ5ohEOshDfp3/ACtZwz9gGdDH5CPl/hRQEcbBkgySElhJDGXtXqfVb8jlkGB2j1ad2n6LSN4xgY5QWsBOl9bV6H0WwnEhAxxr9Xfsj6oDWaIR4cxsuc5h1OPU7Kw9ocwtPQiiq08urGmje3RIGHbsduoPdWJiWxPcOoaSEBoBFi4xoEMYLPclYjYZHCaWr6taOjf6lYxpXOa1kwAk0g7dHD1CwQcY6mi4O4/c9x7fwQFhEBBFg2CiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAoh/tbv+WP4lSqIf7W7/lj+JQA/7W3/AJZ/iFmSEOdra4sf+83v8/VaTPbHkBzjsIz/ABCa8gAPdGC09WD7zf6oDPMmj/WRh7f3o/6f/K2c2LIjBux1a4dR8lr8VANi/S790gg/gmI1wbI8tLQ95cGnqBQ/pf1QEcUMMheJomOkYaca6+hW+CA3H0gUA94A/wCorMO+RM4dBTfqB/is4m0bm9w91/8AcSgIYMeGQyvkja53MduQtuXG3IjiYwNaAXkAdT0H8UiljhfIyV4YS8uGo1YPotnOb8RFKHAtcCyx0vqP4IDOQ5xeyFji0vslw7Adf4hPhYOpYS794uN/imQ1weyZjS4ssFo6kHrX4BY+Lx+hko/u0b/BAZgLmvfC8l2kAtcepBvr+ChnH+tcjo2Ygn6Xf4gBTQBznvmc0t1UGtPUAev4qGc/60J/2YaB+t3+AIQFjIeWRjRWtxDW36lafCxHd4Mjv3nE3/gt8ljnxgsrW0hzb9QtPioRs9xjd+64UUAMDyOW6ZxivofvEel+iyQG5UYAAAjdQHzasc2UgvbCdAPQ7OI9aRr2yZMbmmxy3fxagN5oY5XMc8XoNgXt9VieUh7YYwOY8EgnoAO/v8lrkySsliEQDrvU09wB2WxEeRECCa6gjYtP9UBtFG2MGrLju5x6krdRRSOD+VLQf2PZw9R/RSoAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAiw/9lj/uhMUXBR/ed/Eph/7LH/dCihkdyxFGAXlzib6NGo7lAScp8f6h4Df3Hbj6eiy2anBkzDG47A3bSfY/1WOa+M1M012e0WPr6KPIljyIXRQnmOdsK6N9yeyA2yY2ta6ZrRsLe3s4f1Wk2PAxkckcTWnmMogf8QVidwZC9x3AafqopW6cSMO/YLCfoQgM54vFeD0NA/iFkYmMDfIZ+CzmNLsZ4aCTsaHejaMyYHkBszLPa9/wQGMQAsdJW73H8AaA/Jatb8Q97nl3La4ta0GrrqT9VtieVrou7HH8CbH8Vq13w73teHctzi5rgLAvqD9UBt8VCehcT6Bh/osEST7OaY4u4P3ne3sFJLKGEDS5xPQNCzG8SN1CxvW6AxLG2Rmk7dwR2K0Eske0zCR++wWD9OoUyICH4qH95x9gw/0WCZJvKGuij7k/ePy9FOiAgY5sL5A5r6c620wnagO3yWYPNLK+jpdVWCO3upkQEADsd1NBdCewFln+C0mexxEkfMbI3oeU6iPQ7dFaUEmXDHIWOJsegv0/qEBMwlzASKJG4WVhjg9oc3osoAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgI8kF0JAF7g/gQo55GyQvjYJNThQuNw/kp3uDGlx6BaxSNkugQQaIPUIDTRLESYvOz9wncfI/yT4mMffbIw+jmH+I2UyICH4ljto2vkPs0gfiVmKN2syykF5FADo0ei2lkbGBquz0AFkrQ5GmtUMov/AIb/AIdEBtPGXtBaae020+61+IDRUzHxn5Ej8QpWkOaHDoRYWJHhjdTr6gbICB0rJZouVbi12/lPSj/gtyx8Ty+Iamk25l1v6j+iz8RH5Nz5hY/GlKgIfiYhs7Ww+hYU+Ia79Ux8h9mkD8SplCcht/dfputVbWgMxRu1mWUgvIoAdGj0CSRvD+bFWqqc09HBSogIfiWN/WNkjPoWk/mNk+JjOzGyPPoGH+J2UyICtLFLJFI59aiwhrAdhY/MraWZjo3saJLLSB9m7+inRARGIPgY11hzQKI6grDZnMGmZrtQ7tYSD77KZYkcGML3dALKArwkNm0xB/Ld+yWEaT7WOnsrKgjy4XuDQTd1096/ip0AREQBERAEREAREQBERAEREAREQBERAEREAREQBQvdy8gvcHaSwAU0nufRTKOWZsZohxoWaHQICNzRPMCNbQGnfSWkGx6rYPmj2kYXj99g/iP6KYGxYRAQ/FQ93OHsWH+iGSSTywsc0H9twqvkO6mUTp26y1jXvI66RsPr0QG8TGxsDG3t3PU+6je18UjpI262u+80db9Qssna5+gse0/8TaUqAh+KhGxLmn0LD/RawtbKJgQeW51t2I7D+akdMxsojN6jX5//AAVmKVkhIbe3+f5IDQPli8srXPb2e0X+I/onxUH7zv8AsP8ARTLWR4jbqdf0QEZkkk8sLC0H9twr8At442sj0AWO991iOUPcW6XNIF04KRAQN5kHlDTJEOlfeb7e4Wfioe7nA+hYf6KZEBCZnybQxu3/AG3igPp1K108mRjyXuGlwc6iSSSPT5KwiAg1CXIjc0Opt3bSP4rMjHMeZYRZP3mfvf4qZEBXlkhkZpc2UdwRG6wfUbLfGc90fn3INXRF+9FJ544SA+9+n41/MLMMzJgSwnb1FICRERAEREAREQBERAEREAREQBERAEREAREQBERAEREBXgkbHCyN4k1NFGo3H+SxFFI1gfG7S4kktd0Is/gpY5mPeGgOFixY6qRAQ8/SPtY3sPsNQ/EJ8TEdm63H0DCplh7msaXOIAHUlAQhr5nB0jdDAbDO5Pqf6KZ7WvYWOFgiiojkeXVyZi310/y6/kpI3tkbbbFGiCEBE2R8Q0zNc4Do9ou/mB3WmRPFJA9jC4uc06RoPXt2Vo7C1CMiMs1C+oFVub6IDL2OJbLGQ2QDcHoR6FY+IDR9qx8Z/ukj8QpWOD2B7TYIsLKAhnaNUF7kP6/QqkGgQxgNG8TC3ciiSB2PRXp43vcx7HNBYbAcDV/QquMN4bpD2EUBvq2ANgDdARhjjLygRqDnA9dOwBur67jusc54Zo308sSUCfQeW+tWVMMSS75jQbJ1AHVZr39ggw3WCXMBa3QAASCPQgndARTR8kHWGOPLc5unUBYF7i9wkAfOWtLgTpJ89kAWQABfspW4kgDhcVOaWmw42PTc7fRVpo5YnaQWEAmg8lvXuHX+SA3aHa4WMOhznODnaieh7Wfn+SiimGprnOhjaT98TC2+hvVurOLE6RjdekaG0HMFC7va/Shv3WzcN2rqwD1aDt8gTQQFVsj5TG5wjc8nzsLqJ32rfpXorsePDLEx77edNX0vp/RR/BuDm6TGQ0229V9b3o7q3EwRxhgJNdz3QGWNDGhregWURAEREAREQBERAEREAREQBERAEREAREQBERAEREBrMAYngixpK5+PDzRcYYCI2ai+zZ0jpvtsuhK0vjcwGrCquxJHVZi2AaAA4bemx3+qArnWT01B8YdHZJLTXS736GvopcMc17HtNg+fUbstvy963o/Rbzx8qECxqc4EurZtV0A/gpcPcSPoW553Hp2/JAQ5J+3cCTWprT7NIJ/M0FECwyNZHFFE53lFFzSfY+WldnhEm4IDqo2LBHoQoGYsjTYexhHcAk/Lcmh8kBXkmMjGOAYGlxa1rngAAbdCRZtaslJfCNUZqQBzA/UB5hR2OytHDpgDHN62bsb+oINhbNxCGDzN1AgihsKN/MoCo1v2f3Y/tWtPQ+XzAUN/r81mYOiOgVqB03vbifu3v0O4P8lYOG7QAHM6VVGhuDtvfULGU5zZHUacIy0E3ZO1Hp23QEmGzd0jTTCaaBe4G19VpIxrsgtoC5utd+Wd1aiAbG1rRQAAA9FWfjSOcakaAXatW+oGq9a6ICsb0GQNb5I9Thbt9z0326dVuGP1Eh1jW5gcSdQIB3u66jpSkOG8tILmAadNDVRHod/crb4aUO1h8eqy6qOmz1PX3QEUZflOYSR5gT5rIABrpe5UZJY+NrDpeXlrnWT3A2s9N1OMItYGtc3Y2Ab2+RBtYlxZOWN2HQCW6AQR+fsgNAzVEycgaHOAq3aqJrrfX2Wj3Oax5tmkS6GtL9IHXfc77DpfqtWc0TgkwkB2okarP/Rex+nurfwrnRAnSHndwPS7J7bgi+qAqNnLRpD2C3gOayQE6O5oE0pMXzS07l6S6tTDsRR2I/qpm4ZoEuaHA6gBZF+9myswYhY/U4sAsE6b3q66k0N+iAlZiwsfqa03d9fe1MiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCqcQDNUZe0kU+661pKtqGeJ75GvY5oLQa1AmvdAVeS8MjpzWGQUCwm2mrHU79FCHOcI6Aa5500LonY779NO/wBCrTMNwNFzAKryg3XtZofRaZB+0kY0BttDKo2Re/bbYmvmgJscFuM+RgoOBLBv07de6rAs/aY2QNDdAcDVEXqoA9Te66QAAodFVlxSa0FtDoHWCPkQbr2QFZs2hpfG1lB2hoDjTXH2IC0kkLZX3yiGvouMoDvc3q2PtStjDJaGPe0x3ZY1tC/4rBxHmS9TDvdkHf3IuifogKzSZXPj1Mfre0CUbmvNRBB9v4rZrDINTWMBjjvS0EavM7br7firLsTzDS4VtZdd2L3FfMrMcDoXmSw4BpAABsiyf5oCoDqe9jQHAfdG9eb7tb+lk/LsrssYbhSMcdXkPX5KDF3ljbsQzUdr2JO3UdhsreRGZYnMBq+qAqOaOY40N5WtPvbW+ih8zYmu6a2Bzacb6gUTe/Ueis/DS8zma49Vg1R02Nrq/RajDcABqYRp00Q7YWDQ39ggNC6SB2gFoLn8uwDW4BBon3WCy4eea0aqIt2urrrfX2+ildhvd5XPaRq1at9V1XqhxJOZqDo7u7IPX1q6v3pAQNc4yPjBoczQ1tmup3O99Aszs5LZbALmhpBaSBRNdL2KZMEsepwMfnsusHSTd+tj1tMRsjyWuEZDnAnSS6gPVxJvtsgI53PZI9pMT3NAsukFk1f7w0rL5i/WBLG9orluc62kd9xtY6bqy/DJd5SwtqvNfT0NGj9Ufhu30uadVEl1g2PSiKQDGiZLGWyNogg6buth3+lqzDEyIEMFA+61xoeSyrF0AAOgAFAKVAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQHOMbX5BYGgOMrqJugKbew69lrKHRnei1j9L2i6IrVY32NXsrDsWQgjVHWrVuDZPrd7fRbMh5LC9wDiAaa0Gt+p7klAVYwXSOZs5zXBgu6Bu9t+mnf6hWcvU1sYb5i0OLQRduA2/qtcIXIyyHBkdAgEUe/UelfgrUsYkbRJBBsEdQUBzpHQsZfLYRWrmuLtR97AKzJK9rZYzpBY0PdclBxOw3NfyU3wj9d/Zdb6H8aurW3whOpzpA+QiiXN2cPcIClzCA5uuJhIFBrx5t9xQJUkPmfFLojFctukA1uBv17dlZixCDby36WSfqSfwWG4jmgU5oLdNbHeul7oCq1hjx2PpvnZqbVjTW5AF+l18lNiNMr2uBqhqLhdm/u9/Tc/MLeRnJhijJADXg3vQAPQdT0UuFfKc4jdziT/AC/KkBOiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIsEgdVDJk40X6yeNnzcuNpdRTfQnRUH8V4e3rksP902o/wC28C6Ej3H2YVS9TiXWS/NFiw5H/azpouQ/j+GOjJj/ANNKP+34CwuZBI8exCg9bgX96JrTZn/aztouB/pHBdfDvB9CVj/SNnbGf9So/wC4ab/miX2PP/xPQIvPnj0pbbMP8XrX+3cssvkxM/vWovxLTr+79Gd+x5vY9Ei8pJx7iOguY3H9BsVA/jnGNtmUf3WKmXi+nj7/AJFkfDsz9vzPZIvBT8a42L+3oD0Yov7b4qX/AO1O99lnl4/p4utsvyX+S9eEZn3R9CReCPHeJseKynke7Apf9IeIAkCZvtqYpLx3TP3IPwrP8D3CLxLPEfFRvWPIB7f4rP8ApdltkDX4rCCfQhWLxrSd21+DOf7XqOyX5ntUXmIfFkPTJxXx/Iroxcf4ZIBeRy7/AHhS24tZgyr0zRmnpM8PvRZ1kVWHOwp/1OXC/wCTwrIIPQrQnfQoaa6mURF04EREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAERRyyMjZqke1o9SaRgkRcHiHinguHbHZjZZB+xF5yuDm+PDR+D4bM5vZ7hf5BedqPFtHp3U8iv2XP7G3D4dqs3MYOvy/c94sEgdSAvleR4t43INcjZIWnoACP4BUjxjOmk+0dJKf3SCV5mT/U2nj92Lf6How/0/nf3pJfqfVZ+I4GP+tzIGfN4VZ/iDhbemSH/AN1hK+XHiknN5ZgjfJ+4RVH5C1ZHF2xHRNDihx9QWrJL/UsnzGKS/Fl6/wBP0uW3+R9Ad4n4belvMefZq1PiSMny4cn/AFOAXz3G4ow5H2mG2GK/1vQfmrMvFcQdJR7kbhZn/qPN1dL6+JN+CQTqm/r4Htn+JgGavhR//p/gq58UTPI0QxsB9Ta8rw/iGLlSsZG+Akfs11V/VbyRBZ9tl2PjWpyq4z4+RF+G4cbqUeTrv43nyfdnY35NVTI4xlXT8yQH0Ch5schNRScyuhK3YIDCDI+Zrj2HRJazPk6ZGcjgxQ/sIWZrpJPtJppSe2sraVw0eaI79HH1UoONHuw691h0kTyHEae3RVNTr1StlqpP0ogY5ugs2J9TuknOaW3RbVkWVKYtJJieDe3SlnTTNDten6fkorG2qZLciGSXmR1EGD2q1CI5mMvzsv8A4FcZFp18s7+pKjyRbDrmf+CjPF/d3JRkrpFYOax+iQk7bWpWuY9g+xJb3FrEMdRlz7PYdd1JGITfm3Hbp+S5jhJEpNGhAcQI3gD3NKeGNgYGyueXdhdgLBGvqxlD0G6ikLGWddDvvVK7bs5IP1cG50E8sSm/qtbaJgwB59b6JBoI1B7wevqtcuV7ntbtKet+qi3xuOpc0Hyc3y66IO9n+Shdiu5h0sbV3ZcLP5qzDFBGwvkeLd1aB0Wk9cwfeLT3Ki47lcjsZU6ibPwXBvlyWsvs41+aiOHJCNbzH87tbuM7Yd9wemoAhYjjjvzUwEXt2XXjjLpGn8zqlNdWRGOK95aJHUMWnJfW5bJXQm1PyWF2thEtd2hWnw4xj8wkicRsQeqR07l2/X6QeVROWMbXbuewA9b7LBxsvrD9q31Ydvw6qxyHAAF1kffW0WOSdLAQ7sqlg+H5MteTvZSyt42jKAeem46fioZIXaxJg8SzcNw/ZZM8MP06LoSCSyycfaAem6wZYQzeKvUjp+Sux6jPidKX59SMowmuVZWHHvGOC4Ox8rGzoR2lbrP4ildh/SRlYWmPjPBCL/bxZdX4tcBX4qMRwvjEZhjMpuiX9VWliMbeVIy2H98bL08fieSCW5/X4mWegwZeipnrOGePfDGewVxFuK922jJHLN/XZejx8mDJjEkE0crD3Y4EL47mcGw8mYzaNBN7PBfG/wDmFzZ8TjfCpIsnAdyTq/8A48x3/wA/5C9XD4g5ctWedl8LUejo+9ovj/C/H/GcDRDmyR5xB0va9lPZ+HUr02J+krgxyBj5sM+KT0fQe38lshq8Uu9fMxT0WaHa/ke6RcvhnHeEcTIGDxDHmcf2Wv3/AAXUWhST5RlaadMIiLpwIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIuRxPj3DcC2vmEkjf92zcqrLmx4Y7ptJfEnDHPI6grZ11hxAFk0F4jM8XZUgIxMdsbexduV4bxTx3xllycnheFzzdPlyZgIx8mA2V5M/HtM57MXL9+i/N/xbPQj4Vm27p8fq/wAkfXM3jvDMQESZTHOHZm68pxT9JnCMeZ0GKDPMBeiP7Rw+YZen6r5rleF+OcYiH9t+InkaTWLjM5UV+/chcjO8AeIsnDMA45jxxjpjxQmOM/Ouv1tVx8ThkdSyqPyT/drn8l8yz7DKC4xt/N/4f8np+Lfpe4vNnGDDixsaP0vmSn/oZdfUrzXFf0m8QkYWvETpb/WZL/4Rgkqpw79HfHjJ8LxDiuJh4ZbT/hGnXJ8+hP1JWnibgGd4dl5Phfw/PO3RZzwwSzPPt+59AuyyaLUT8uU9z/8A2dfj/hJnFHU4YuajtXyV/XzaOlwzxjxyYXFweObV0klbyGfi47rqcN8ZzR5Ax+KQxvm7RYUcjz/+QAXz/hnAvEWdA52T4YzMzMfvrypiyJn8CT830tcvw4/g1x8e4w/EdJ5xgYQ5khHp6D6kpLw/Qybgkr+HV/k3+yOfa9Ulud/j/wBpfuz6TxD9IfC8AN+K4dlsJNaPIXj6XYXU8M+KOGcffK7EE8DYhb+bHVD59F8n4RDBmvlg4Vw7FxOWLEmbIJH/ADJPkH4Lo5ePgB7WZvHsviJFHlYx5cY/6zt+AUcvgmCa2xjT/N/lyvzkdh4lkTtu1+X69f0PqgzuBZWSWRz4ORMNiAQTa1HDs92R8RCccMvZoir8183xIM5kZk4bwjEwMdnTJzPPZPe3mvwC6ePxL4WVuRl+I+JZU8bd48N5DPlZIH5LFL/T2OcqjP8A9/D+TXDxqeOPMf8AFfj/AAfRjh5rt5MfFAruSa/JYPDsiZ1HMEII6MZ1+q85D4o8RTxhuBwgvhaa5uZJsfmdgu7B4u4bFjj+08nAhnH3o4pHyhv1qvzKryeCuC6X+r/TknDxRPpx+H+Szw3w7j4shmY4F3ZxdZVw4r29ImHT3A6qni+KODZTQ6LimGfQPdpv8VbZn2SYpAQR1azZZZaXHplTi4/XxL1qMmd7t1m+tmN53vfv7LDs5ks4boIB9VEwSS2dUkgHYs2U8Ub9YbyY2u9SOiit1quh1qK5l1NHSsjc59jT6UsmYyVTD6VQU8uC0uL9dtvr2tQPw8iCS6NdnNYpvHlT6cHIyxy78m1MjZqEvXsdt1CXSSSVrJ3sUNisfGQk/aa/Idy6Mi1ZZkwFgeIflvSnsTXsFa7WatjOj7UV8xVo+KMfeH4HZJJXygnmvBI2rYKJr3sDRI4ajufdScYvsEpEp0DSGWG9b6hRCOMu1sYCe9d1jIymRDU4bA9VJBM0+YRqW2LdHaklZpC5rKbo3P1WrxC9pc+IdVNrZzNiKJqyksXNGx+Z7I8Vqkd3K7ZDphjYBsSdtigneIqhhArqVs2EiQh5A7hSQjlstzg929kdguLC+3B1yXfkqHOkLdD4ASP2qtIJboBh3PkNK1JHE4F+jvsWmr+ir5RYdLL5fYEilVPFOPLZKLi+EiQOkDSwwg+tHogDJYw0PFV0dsVFBJ8PqYae7qbqwrcfLlGuNhDTvqB2P0VmOG7iyMm48mI4Xsp8RdE7ub6p8Q6IgPZ5e+1i/VQvdyrovdr21gqnLLPGfMznwlvn9lKcvLqkIw3dS7JDE+csjmEE/o77j/kVG7nQS6HHQT67tJ+artzcaQHGc1xiryaDuz3tZx53QPODlNBBFxuPR/yVe6MuYnalHhlqfOLhpcwAMNFQQRQFxDDUT9xt0WMutQYNwWXR7KIuDRqb9wGi0hVyblL1clkYpR9PBNDrD5GMeBp6AreSTnxjmksDdwbHmrsqWTN8RLzGDlMIqmnddDGwW5mCGzHRI3dgsfipYsbk3GC/wzmRqKUpHJfNIHGNtlvd/RTs5c32MsLHxFtH0Kr5EM0Eh0F0hBo6wKI9lMyRjKAkf7bKGnnPHJuXQuntkuDg8c4T/Z95cI5+OwaCTrL2Dc777sXBLMd0UcUeHIZmE6zHIXnRtuy/vs9ivbc0kXIwBvQf4hcqThk5Gvh8TNIeZIXyEExn5ei9ZSWRWYJJwZ5mLEdLcsUeaRARJHLCzWD/AHDYseo6hek4H428UcOhZJA5/E8E6XNEoLtu4urH8vTutY+C62O5uQYWyC3si3AlP+8YexUWTwzLwqbjzfFOnrmU/lA+j9v2x7Va7DI8fKZDJjjkVSifV/C/i/hXHYmhj/hsqvPjy7OB/mvSr4CzhuQG/Fw8uPMjbQIIAl/46IID/wAivccB8R8S4Zgf6/KzMhj++AftGt9R8vTf5r1NPr1PiZ5Wo0LjzD8j6Mi5/CuLYHFIWyYmQx9i9N7hdBegmnyjz2mnTCIi6cCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIsOIAsmggMouHxTxJwnBaWyZHNkH+7i8zl5Hj36SG4bHaYRAa8kZeDO/5MWTJrsMHTlz8DXi0OfIrUaXu+D6JkTRwsL5pGxtHcmlwuI+K8GAlmMDkye3RfLcvxwOIZBZDFlZE5osbK0gEd6Av/Ptuq+H4g4nLX/0tzHSnyMMbySLrpQr5mgvNza7U5XtwJR+L5f+D0MXh+GC3ZZX8Ee5zeL8S4iS10phi/dbsufyXN7H3tcTH8T5ocMdmBG+Ya9bGB4odifQe569gVXPjnlhsn9miaEzMYJGT1rJ/cYRrPyq/ZeTl8PyZfVlm2z0MefHjVQjS+R3ZIZrGxDfdTx4oFmWyAL6rkYfjPAmlkbl4GXiyRj/AIJbf2j8hNv/AODqp/D3HhxrHysyRkeIzHmMbmknW2v37AAPytY/9mjG5XZf9q3UkX3wMe+2igtjiPoDm33Gy14Xl4s7C5s/MZZGz73HyVsyMkl+zFEde9qH+3xSuuSx5JdEQswtFEvOx3+SklxXvh+x0e4JtMgOBD9ND1tZjyYo3Fh6jeu648EI2nGiDlN+pGjMT7IaybPYDqqeVwfhmZJqzOGNyJDsHubuPqun8UwV29bUrJGm7efTopwgsbTxumVzbkqmrPI8c8GcIzhjsixvhTESWiJgF/P1XEn/AEf5uFkR5XB8mPnB1kyt/gF9PZH5NcZAHcd1FO7U8bEV0XoY9dqsKpTtez5/7Mc9Lgyv7vPufN8TwbxbivF3ZnHs8sazYA+cn5C9lTyMnh8BkxuCYbI5YjpdkS+eQV3APRfWo442xHYanG1Q4h4f4TntL5cSMzHrIPK/8QvRweISlL+uvT2S4r8O5jy6NKP9J0/dnzfLOZgYTsnJ8Q63SC240g5xO3cdAuTgcV1EtZwnEflk2wlhfv7M6BfSM/w14ew8Z+flQuLYWfdMhXlOL8bhh4cYuC4WLw4E/rGAcw/XqvUw5IZ03jjx+S/Tn9zDlhLC1vl/L/UqT+HOP8RvM4jEzEhG/MkAYGD5BdjhHHeA+H8BuMziORxGW7foZQHysqPwl4g8SyEMEfxkHSphtXrrK6niTF8GzuD+ImHByat/wztyfSllzzjOf2fNyvaP89y/FCUY+di6+7+qJcfx7weV3LLJoW+7LC9TwPiOBngOxcmCYkeu/wBQvnePxXwljD4bh3AH5rq/WZL15rLyc6PM+Jx9eOGHWwRuPkHou/7XjmrgnH2v/BF6+ceJU/kfdnhrZTdNadraVa4fIWDQJmPF2bXj/AXFv7a4NrzHuZPG/luI6O96XYbNj48+gH7R37PYLyJKWDJU+D0oxWbHaLXHeYzIiJEfKNupvdcziMTpOXJG8RvG4HQFTZM5ljjjjfTbO53HzUG5x287oTY1DdVZqnJ+xqwx2RS9iAcUpxifBRZ3abBKlbI+X7V5eWvOwIohbgQxsBLGScsAnagFUllMvWiH10B6qlqUV6nZcq7Kiw4MhlqQMJJpgG5CteaMW3dc7DiuUvkNOqwHnc0pTLNTQ0kg9Vbjut1cHHXSy0/Jjia3U/Ydq6LYuY4tpu43BUAbDISZNGqtzW6jhkxopyxhpvUl53Nq6pX04K7iXqsa3WXVQr0Uby0NOoeU79FrbZRuTuyrulWELRIftnksGzz3HoFZLDL2ILJGy7HLjtLXCZjCL8qjyx8VERHDoAfsbuvVRwcoUwVV3Y3J+ZVjm6mfZtLwDX3ipeQ5RpkfMSdoijxnxxCRztYOw2WzI5MZp5PNe3XsCbI39FY5heDC8n1BA79f5LGHI2HIILDIx/mN+qnHSJdCDzvuaBzJIiyVgs7kEKEwjRIAxgaQKKkyIm6NYfraK+pvoFhhHw7nBtaDe/zXZ6b3Oxz+xzzwuDWJeY8uDANtr+q1yYp9DWfrK88eqjSvs0Nc6mHTsWEdCksLZJQddBm9Hqs70EK44+RP7S+5SE3xMhuIMlAos9RShyImuIcxnlG25/irWRE2DKOTG4Ekb6D06LRkUVaA0A1uwnqoy0i5UiSzuuEYZjPY+OXF8/b7yvfDwwxjW87Hbfoq2F9jPJG/WPyUuQ9xMccjrBBOvur8WmxwTZXLPNm8zYtNst7gO9mwubm44kJLHvBrYXQ91f8AsnvbUu0e5ChllicG/d0g9PZdyaaEjizSRy+ZKJWwv5nLA+4P87raAyDmNjD+tkD0V0yQyHSYy6LtY3C0xjFGWuMoJrQPNX4rkNMlSTOSzvuQMke1klMJMg7noFXzCx73OYzcgAeS9+/dXp+U7mMa3QRvrO/+QuXkRPiFhwMV/f1fio5MUo/FCOTcZxopcrJbEx8bD1JI/ksZcr8bJbBK41pqwNiq0D3wytyWv+46+nZOKvfKW63jU8Bxvt6BVbVsvuTU3u+B0GZ+HGxuZHDJFmAUeXY3Xr/D3jHHdGWZ81hm3MPqvlspdjMmlfrAMmg6B7WaK5XFeJ5GNEXu50EUn3AxnUnv8lZj1GTHK0VZMUMqqR+g8PxPwLMyWYsHEoHTSGmM1buPsu0vyVw7Ke3xPgz5U2g4+XFKTfSngjZfrVe3otRLPFuSPI1WBYZJJhERbDKEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAERavc2Nhe4gNG5JQGy5fGuO8L4Qz/XspjHHpGN3n6LzHiPxkeecPhbg0dDkO6fRePzZ/wDWgTKJpn7l8h3+a8bWeKxxprErfv2/7Pa0fg8stSyul7d/+j2eZ41fKw/2fi6R2fNt+S89xHiPEuIE/E5x0d2XQH0C54kbG8ukeQ0D5WtceVmVGKI0k2GDv814OfV6jUR9cuPZHvYtFp9O/RFX7vktwBkUtVrPYkVagnwmS62/DMiEj9bizyF59SRut5JoYav7R97eiiEsmXkthYaIGt5Pb0VUMUkv4LnKLds6MUUccrRIS93euysuwoc7Xznzue0fZlri0s+Xa/dVceDlEDmDqQdPVXhkyNNFhoigXrdhhGD9mY81zMYWHBg4bcbCjqNnXz2XnuST1KpTxxyzjXEyQMNtcY7I+SvF7pg1jTvVEHYLJbHHtvpBq+7imRubuxjSgqo48PhrhU88czMI4wiBbHy5HxAAmzswgbqvx3w3HxXH/s6PJkgwAwf6tCAxgeH6w+wL6j1XpnCWS2toD86U2NjR/tsJA2N91OMZutr/ABKZbKbaPn48JcSOTBk5eTHnRY7+cahZEeYN9dgWR7WPcldCOTjLIZJczNbHPJWiWWP7CIdgwD776Xu3QsMXJMYr9xQ5GKXRtbszSfIB/notcYXHbNWZZS5uLo8hjcQzOZM3MYCxhAY+I6CBW5fZoH0F2uphcQ4fMZGXJFIxgJGSzQQLq91JNwoQQR5Jhfl5pksCI8uOMnvX8+qryeHp2NnmldBkSv8ANy9G35nc+5tW/ZsJX9pyrj6/ydtuLigNl0B99291ljHl4IGho2obLz+HgzcMw48mTiEmHixu/VDvZ6d+qt4/G8mXKcxuBI+J9BjGuHMA7l/YD5m1VPSw/tXBNZ2/vHYfHMK3AruhjZXmeQR37FQ8O4zgZYPJkJIkMZ5grzjsPVW8zIx+URyt6r0WeemS6P8AMlGTk0kiEPjI3Iv233ViKWARnYn+aosFNADQD1o9lFot5vQ8++6q9UOqLXjUu5Pk/DTh8D4Q+M7EH0XiPEngzKl1f2VOxkZJ+ylH817mEFzwCC2x3VqLEZFEZJRf/Dav02oz4n6HwZ9RhwzVTXP6nxnKm8XQQOwJ5Z4ooxp2AaCP74XJxsGaZ4klZM9h7x7n6r7nJDHJF9zbppO6ptx4Y2kcmNo9aq1vh4ksSpY0n8On7GWXhryPmf5ngeB+Fs/MIc1jGR9dcop9r0ON4Qg3dPkvk7PjYNAP1XohIIjp/c9CpRPCQZdYsCzS49dqcq60WR0GDHz1+Zz8eLFwcT4bFxhDFZoAKvHjSGLVINcj+p/kpsmV8p1Fo79ugQS0wwvcSCabfqvNyaXzXc3Zvhm2KooqymWGR1O1ge6txz3p5usNBBAvY/P8VGxhYdTKojQbCSaGRuDpY3D3cp4tHHHbIZNQ5JItOgYWtAkLw8k2drB6KlOObHyZGRhwH2Z12fmtYslgqON7L7AGgB3tWnu3Li0SfsEjsFpWLG+aKXOXuUGRuhBYMmQaPPYFd+lKd485yBy2gj96ifZbSDG5jakjjaTude4WceZkp1ijF0YACSpRxpcEd98lTM1/ZyxEwuYOgN2fcKth408uZPlZeg82gI/3PcfNdJ73h5qCYtvzyawfwUM+qPIL422dxQNfQpsp2HKycy5EbCx7hpApgO5IVjU7W1krzpPQgbA+ioyZTgQJXW7sAzotWZzTBoEdNuutLqpHGy4NLJKh8tb9LCssyHhgpgeI9ndb+i4vxoMlPfUYNbbWs/GBnYFvpfRcUvY6z0AymeVxY+66UjpHVrZE9hA39NlwzlxNf3Y0ja97+izz6kD2OFM7WrFOiNHX5z/vaptwL8hP4IH299MfRFAaOnuuUzMeAdUsZB6UVFJntiADpmADvr6lReRJcnVd8HYEo5huye21rEsjCW04C/8Ah/quLLxBj4xLFoYB2/mqsmc6SRjh5PSzt81XLUQXDZJRk+x6GTIZrkYGse1g0nyXft6KhmVs81d6BvW65uPxR4EtMFA7C/VUJ+JOlLYqMhebAA3Coy6rGlyyccc/Y7b8lzwS9xIYez9ZP12UuPnAx/DPAoE1515+XKcyJtxsY7odtytPi4/1T2BklWRuav0Va1Ub6knilR3H57AwO1MoP20E1fy7qMzTmAvD4Yx11yyFh+gXH+MbHE6JgBj+9fewqIyHDIE2ovcRtt9wH191yWqiqT7hYmz0BybAlL3vk9ZTov8AAbfgt5MjGkxrkyCxrOj2Q3v3C4mRNH94vnfIDvoeKVQZphyHW3Rdfd/bHpYU/PUepHy2z0MudknG5URZJW9yQ9vTeiPmLWmXn68Br5sSF8ooUAQ8D3N7riZPFXnHkllmE3LBNXVegVbD4lMMaHNLzpnFsZIzWI9t/cBWuSfy6EFFnVOTqbzsZkk8QPnrYsPuFSfxFhlLDJigE+fmzPZv72yvzXnxl44yPiW8SZDEX+RkrNtfepB29iutjyY80sn2THyAgGOF4sgj74Hf6KhQd0WtqrJ5JAWVyM46LLI4XsljBPV+xsrjHKwJpZI589sNEkiYGN7O1UQp+LiN8csvwGcGl9PBxqLCO4K40uTkxnXjZmcYr+xZXM+lHt7LjqLCVoi8R4nwXC5Zo3skaGXHINi8evv0X64xH83Fhl/fY1/4hfkXiEWXmYGRjYkP20gP2LGE6z6sH7B9uhX6c4Xxjl8Gwm8siRuPGH69qNC16ugyRjuvhcHna2DltrnqekReTy+P5p8uNFr+W1KtPxLi8rNnNDvTX/RbJaqEfdmOOnmz2bnsZ95zR8yquRxLBgaXS5UbQPdfOuJ53EmROfNMIx3JH9V5/wCIflSubNk6W9nl9rFk8US+7BmmGhv70kfQ+KePOCYj9EUr533XlaaXl+I/pJzZbbgY7GX90ndcWDhEPLP2/MJ6vAVyLhWHjQGXSXkdSR0XlZvGM8m1Hijdj0OBV3GT4k8QywRyHKMEponyEhTYfjnjGCzRMfiiN7NDZU8kNlhAx7mBO+1Ks7AjEMjQwVpp+gb1791578RyqW5Tf52bFoo/dcF+x6aD9JOQ1wbkcM29WOtd3E8d8LmdG13l197XzhnD8iJg5csL4OpaTavN4b/u8Yljh5xY2K2YvFtVKXpkn80v4oql4bpknu4+T/ez67hcQxcxtwStcfTuri+M1xKHJjlx8x+LJdHuw/ML0GH4o4rw+/7S0PiFedrTY+Y/mvb0/iUcn31TPKy+Hyi/Q7PoyL5xw79KXD5eKRcNysDJZkSv0saxl7evyX0OGRkrA9hsLdiz48v3HZkyYZ4vvIkREVxUEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREARF5bx54xwPCuCHy6ZsuUfYQXWr3PoFDJkjji5SdIlCEpy2xVs73Es/E4bhyZedkR48EYtz3uoBfJfGn6T8GeY4eLJy8UHQ+R3c/LuvnHi/jnHvF+ayTiWYZI2PJhxohUTK/j81FBwgmPm8oWOge3qV87rvFVk9EHS/U9zRaHy3vmrZ1cjxNEZ9GM0zknd77BrsAtMbjsz8g5EkDy4Hlh4qvoo4+FFmho2v9u9/crscP4axsms9AKYANgvHxyxzltTR7DnOrbNJ+IGaB0T2vFjsQfzWWZMrI9HKmY0AHyC6Hp1XSng2DL6irUuNDzZzGf1UfWx1Xp444o10M2TJOXU14blYpY05OUwX05kL2V9V2sbgmHxCp/wC2WMbp88GO8P1n1JVeONkkgY9rBfQV2XRZwzEl/WQxg1QoLQtnWrKW5ulZiODFhjGLhMjY4GtThv8AMqxBjvieC575D06bLTG4f8HKZhkzvj7Rvk1gfiujgRSHGMsrrdqOgg7EKqOFTlbLXl2RpFaWR7B9iGCx94DotImya2lwO+5taya44hO5hgduet0AtMdjNHOZmvfrFj5KE8TcjqyccHWiZrNjqtjqZKLNbXvuqUU0UMQvK3Da36ErU5cWNGSchlHqR1v3KvhFUUSbsviWWSQvG3pYW/MDH3I/V7lVGG2tdzNj5rvqsuezbR+Ck3KKsVFstiSzbGEm1CJKfpdkDVdhpXOkz4mksshp6pBFzhzJWNA/ZBFlR8y3SJrGkifOwsrOjjje5rMZ5uYV5yPQeip5kGLhuZHEJcLEDa0jaIn/AI+5XXikAAbHt8ipyYnMpx9q7LVCTSM08dts4M8mHwzh4zcuPmkfc1Mq/aOMdFzMXxBm5GY2GTAmknn87IgwMETPUk7/AJL0mZgxzytyWaBkMaQw9QPelT4ZwqDh8MjpCJMic6ppD1efmf4Kc8kWuhXjxSUuHRbEdS63vJNdEjOPTnNYR6qnkcQZFKY2EXXkBHX6qMzQzMEvLeDV33/JZ1jT7Gp5DpYs8gOtu4aQKq1PmSPc7nSPEbCL3Ow7LkRz/DFxqy/qfufJZmypJHC4gWgV1r6WkcKqiEprdZ1WOZpGiTmA9wVTzZSJd3uEbN9AGxKpSzOZ56DDf+d1CM1xeX8okn/O6s8tLgh5hbfkxkFrK1MFF3c+ypy5zYri0BkbxtZVGfKDS5xexgJsgbkfRUMibm3EMcTbdJLFfQb/AJrjRBz4O5JlsAt81k7lgNKCXIySSx2I8B5P2j/IPxK5EGfn8wtGiCNg0fYsDL+vVbxfDxjVJJzJfVx1lSVMrcmWo5Mgh0XxLI3Dy0zz/ioMmF2trxK98Y6keQX79VpzntppdGG9tYW2VlxcsODjQ3MY7e9KMq28nU3ZYxouU0SBmiN+1jz6/wAVO/KY9nw9QGT/APuJG307+y48fEwYyH3p6vI6fgVXycyLmtiOOQx5t8zxZUFkxxjaZJqUnR3Y8p+h3JcWAbSAsoj5Woo+JxPnLImnV+39puPmuM7JaIHMx8nNksXRj8nyCrR8Re6Mc2R8MYftsN/XX6qmeqjHoSWJvqeplyWHEPNeGRgiiCTX0VQ8Qjcz7GaF9b6wbA+a4nE8hz2aJJ44xotksW+vfsq02Tkt+1k0RyAWyUM8j/UGu/zUJ6x2kkdjh72duXNeJWy64NJ6HX5yfktMzIqi2MgG7Mb7B9T7LgMmfLG0wvY4iwwPYfJfWis81ssYZk4b5pAa8+TQ+nosz1U2i9YV2R0p8nksDtToBflL7P5LB4mxo+zmreiDRP0XCzcvmP0SWwA1Yk1kfXutDlOAiZHLrLNgHsB2+azSzStpS4Lo41XQ9JLnzPcBEXkHuW7/AOCyMyQCOFk2iW9gT/m15o5nMoOdosUSDsVE+Rz2NjjH2d73J1+Sg8z55sksZ7B+Xb3iN0cjiPuA/nfZVJM9kc8l3ZH3AdvQbkLljL5OMDph01bBr6/4LmQZnOyJZpZjvY2eK+isnkbRyED0LOIRiJzRkXJRjoCyB6hQDJlcWuY+zW5D9/ovO5efjRTNc+bRIduYBYr0JW75WCIOEUMnMHk5byQd++6oUm+C3ZR05+PsgkLIr03+sedvcKCTL1SmQa3uPm2Yf/gLkANLzJO5jywCmbW/2+S2yZedBDqewODqPL7hU1kkvUyzbFdDrfHvBFDL9dYNCvnZUsfEHN2EwAHRn7d9fVeRyZWxz8vFZDpuyDMdvmOyuDOgdjN1RskAujp697vp6qyDab5EsfCO6zMbHLoY17JX72Rf1W0GRMDzXW/X6Rnr7rz0uTFHhumimygzvYHT0+XursfFGciJ0keU9sjLZJHICK92KceqsrlDjg7E0kkLwxmvsfv3ZVOTLkdPHFFsXj9WP5X0NrnSZfNglnxn5Em1hjCxjAPc/wAVxs3ijBLE/nPZJG7YBlxP9iRupy7pCMD1mZJyZ42GLX2LOYA/5rx8OVl8/h2NHgTZ0Qy5I54xlnlvF36iq2VyXMezN51RjIMfk5Mh0Af57LzZbH8Pw1sOdkMcMkmY3s8Wb26heniToyzVPk9FwTiOPDBkYr+EwwGLJfqBL9u49QVieVuSY3snkgdroSxvErGdiwjYi9jsV57DzfEedn5X9jxTZTTnfqo4OYSz0NDoa6r6/wCA/wBGeXLBNlcdifhRZMxldjffkPp66NlKMGp7myvJOMYbaPOcGdxHPy3YjcPIzo46D5YZ3k7VvT96/ML3XB/0d0GzcS4rOBr5gZjPon2eV6zG4DDiR/AYmOMLFDBYZ1f8z3XS4di4/IERb9w0N+iipLdSV/MqlkbV3RBhYPDsGPRi43LHchlk/M9/xVf4nLOZ8PygIjsyjRK7UeNFHT+rvfcLcNxw50jWaHeo2K7NZppcqJXBwi+eSgIsyBgbFjeUne3V/IrYicxlgyDAPWOG/wA1cMrLoyzfjskEkMQPLa3futONSVKL/PkqlsfLOPLwGHKafiszJnB67AD8gpIuE4eFEIYYeWw/7wm1flix3ScwxjmDoQudl52TjP0aWaf3DsCq88ptVl6E8SxJ3BclfMxocLJimmlkED/24/VSzuxIGF0MuqOT7wJu1Wz+MWBE9hgBqqGxVDJz4eU5zouY1h6s2ePYhYVhjFy2Lh/DobPNk0r+vr5mubJjYzzLjSzb9AJFzoc4nIc1nln+4Qd9YPdMiZk2OZA4iLtSoY+MeLZbfhucx0HnMpFAD16WVQ9HzaSRes8mqk7OjiZbJJ3NLTd9LpdBnxMdvqSNw6cthO6oYeBn5nGG4sWQMeQ/rpGAFjwOh36FT8T8FcZOQyRvEG50Dnkfabkf9N0fyUcejTfpOzyxTqR1sPjHD48bn8QYGTUS48wE7fXbovO8V8SDisrm8A4YZq8r5clpG/oP8Vcg8P4OA+LIihEOUPvhl0+xuNBVfPy7lga1kccRBLwBQJvYkV1XtYtPNKmzFPLBNuKPGcUxvEjOMQY0VwSiMziOOhJQ6+fr9F9W/QLlY8uNxOKDOnyQXRylkrrMbiCCPyXjMzPEue7KeGc6KDRGarr7r1P/AOn3hxjzPEPFttGTJExgG2mgSRX1Ct0mPZnSM+ryKeJs+uIiL2jxwiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgOfx3iUHCeFZHEMggRwsv5n0X5/45NNxrOn4nxGbVM7zbkeRnYD2Xt/05caaH43A2POgOEuRXufL/NfPn5LAzneRglnq3sugwbbL43x/WSnlWCD4XX5n0vhGkUcfmy6v9ibCxsNkUcsbtet4jBA7rpsZjCPL5rTWMRrNdSfRUsCRmO/DyMq9L5nynb8NlcjmiyMaTGoifLy7eK6BeVgwxlTvnv8AwerKKXRcEua/BgliD7GwJAF6L6WunK3GxWNdLIyMn7g9Vzc2WaQTsL4QHz8rl6PPt0XZg4Zjzvnycn7YFmll/sABehixre9qKMjiktzIX43MDXseCDvt3UrInbt36/ipeBxMHD4u/VXA15eyI9SbNK6MYyfJmnJxbopPBheJC0vobBX8aV8kDd6J6qtk0ZnCS+WDt62r8EQixxq7DqmOEZze3oRlkkkrNJZqa2Evtx2pdR+QyPGDGDYMXFjDBkazvIRRJcphrdduoDYWrMfmY7UXZGU4yqy7lyRz4LmvdRftQXIgf/qToNQMcR5e3UhZO4FPsjYj0XLx5ZcfihYXfZGzX1V/nuvUuWQa9XDJ52xDLJ/Vxgg12K3j4g+ITvfCyaMUAo8mJ5nkaCAHs6Wudl5bf7Lmmx6eGCjex2WnClt3NFOSTTpM78nFY5A2N7dBPQUqeRncqQSUZiLsM7KlwPLa7AEuTX2Q16u19lBwpzsp+VzWjeQvY9i44uSbJ+ZVI6gzcaW3mxIzcRlu5K1xOI/EAfaguv7l0qWRi/E4+mR+iZl6T6rl4+PmRztvlzlhu39WLtKNEfMk7PZ4+RyI9V7+nS1Y/tJp20b+y8wzKyH2JoZmSdiwgg/QrcTPjfJqIp42fdbrrW50iSy7ep6Kfilv+HxYHyOrqTsq3FciTRA2QiMWA4jsuNjSyRygxy2ffuqXEcrJy8t0Uzo2RsdY0efdIwd8nJZfSdDIy2cwvMxLQ81Y2A9lZwMhsh8z3sJGzH7j8VwMfGf1EsxHU6I9jfsSuiw2w0DD2rX/AJCs20VKbfU6cuS6yx7TMDsDqAA+aw/JZyz5RYFDWbXNZks0VdUd3vFAf1WpyvJUbDL1NkfmFNKyLmTz5rhGIpH0OoDNgVQlmik/W8wt9pKCjyMqo9Wt+odiwVfzXLyJ3zP1a42DRVDZVzyRh1ZyKcuh0cjNhhi0RsYe1gWQq/Pt/NZsD1vdUoiY2SPjfddT3KifK2XoC2tyTsVjnqn1RdHEXJ8p5fzTkvkAG3M6LaCaXXrL2co9j0VFguemvHKIv1WIpNFQ9Wh3lJWf7RN9S1Y0dTmuvQ12x9eiy+HY1IBGG/rAb+g9VzZct8QHOZcDwbHQqKLKGSxr5fJ+4wbBgVX2iMntbtlnkyUd6XBcjLmSGzJyj2I3P1UolYbaMkWO5FD6rlyZcs2TGxj6aH18ljiD3jEc01ttrHdULMkpbV0Lnp3uipPqWpJJTqeMk0fQ7WqHxTi8smghkN7E7UVWw59Eb43MNDcEdbpYx5HGcPPLjjk3BO9+wVMsrml2bNEdOoylfKRbycl8TAxzPLt5B0pSwZLDA4RN+y/c11RVLNL8iMshnsx0KVeAVjBszQZI7tl6Pz7rm6cZ8vglLHjeNOubLB4jMfsTNJyx1AN0tY8hso5rW62UWML9vxVI5EPM+wI1jto3UXMYHm2SAHchj1GCXLbs7NztRiqLwkYJLqiw/n7LTJyBofoI5l/cNBcq3sk+zvSDe5/mmRMQCx7wD0Iqgo4e/BdqY/d9y18bG2BzpKp5oCq7/wCd0lzoIjUTGDe/OdrXLkyZtbWY2RGLNHXQpeyfxCDhOWIuNeCsWXhsYDebyPI8evMs1/1181pw6d5bp0ZMs1jSbR5fI4pcurSx/bXdsJUw4mDjufohLgz7gYCvpPCvC/6MfFUTv7GzJOFZhbvCZPuf9D15XxX+h7xPwoST8JfHxbHHnqE1If8Ao/pavnos0FaVr4FePU4Jva3T+J4iTieTlTiKNrGR1fTYWN9vVbS5UghbFPKS0b8xnUhcnMws/hWRJDxDhudhzXWiWExl/wCO61Mz9EjYseTSw3R3ePVZo466noSSrg68nEGF7PNTR0Gm7UD8vVE6DUWxvPXqfotPDfAuN+I5fhuD8Ny8iRn+8ZGeWL9X9B9Svpnh79CeU5gyPEvFBjtIFw40mt/yLzt+AKvhpsk/uoz5M+LFxJnyjPz8a3U15cxgj5gO5+agZlObHqLyzYGngm1+isf9G36P4i0v4JPPIP25Jn7++xC6MXgnwTCNUXhjCO3WXf8Ajav/ANty9UUf7piXZn5ekzntY2LnThtXXUH2XocI8YyseOPAx8uaty9kJP8AJfpPHxfD+DGORwfh0ZHQRws/jSgl4/w/FkLJYo4TYADGF9/hsFbHw+UVcmUz8TU+IxPhON4O8ZcXLcgcHzYzuQ8VGPwNK/h/ok8Z5W2S7FxB/wAc9g/9Atfb2cVyJhrxcYSRA0aIB/BYh4k+WQxzRmH++a39NipfY/iU/bsi4o+ecP8A0KQhkcvFuLSTaBXLhjA/Mr1Ph79HHgzhcekcFZMQdWvJfzDfy6fkuvkuy3ycoMhLSaHmJ2+drT7aKTzwvjivZ4s/1Vixyg/ZFMsrny3ydDHZwzDHKxY4YIf3I2aAFYfKZABhZDA4djvaggExYXMbsRtzBspRjZQi+yYzbdp0fzSOLl8/kVOS/wDSLMz8yOMN+HcHHv1ChxMgyyOdMGbDsKKuQOmEYfK/7nURiwVXkyGyyFz4XjRvYoEhTrG2m5X8xzzSK54hE4a3uJeD0Fgq5AfiL+Gl1nvblrLwfFy2CR2qSKTs953/ADVLDMOHmyQ4sOiH7tMFb/NWpqDuS4I1vXp6l2eSKJ5ZJJokYLoAlQ/FiRg5ePlP81Xy6/ioMb+zY8/LmLnvmZQDH2Son5MMAF5Eml8laCDY/FXb4LlEFik+DqQR5Mh/UvHpZFqvxEMMYZKJ3tG5DK/mFZ4cHuYDG9z9qsnZczNycw8Qkmkx5BHGdN6NqCrzZqhaLMeFuRDHw+OfHm1Qvfj79Tv/AA2Vf/R8iCJ7n6I/Ukl5Hpa6kHEMmaaGKKHmQ5D9J20EA9F08HMhax2BlTwQTxbEONAfIqhKM+C974cnk8Lg8PIkyTDocH8sRg7vHruuyMFkuMXhzjGWaPs3mMMr1UH2EWbkyz5X2YkuPlvsP7+i5TeO1lyzQwsfHGaEcjvv/wCfdU1zyrLui6npcDB/0f4OWnLE08tOe95pcHjXinMxOMwtlbIxshFDsfqubxDxHxbLjlhlfGGdWAbAb9KXnZZsjik8mTmSODmdAT0rutKlS2xRRTfMup7bxBxDGbPCWMj1yv3Afvv3XnOMDhcMrmZOS+aQsPLMZoDv1XJyMlmRxGNrHm47G/8AFa5jYpsdvNIPKNa+uxWhvgpr4G3DxE/Lc+W3xk2B6gDqvtH6KODu4P4VDZBUmVM/II9AaA/IBfE/B8GTxHxnhcBjaHxuk+0cP/tg2T+H8V+mWMaxgY0UAKAWrT403vMeonxtNkRFsMgREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAWksjY6uyT0AFkrdQvc1mUHP2Dm6WuPQG+n12/BAbNlBfoc1zHHoHDqt3vaxpc9waB3KiyHNc9kbaL9Qdt+yB1P8vqsQN5rue/fc6Aew9fmUBsJtX3IZXD1qv40sHIY0/aNfH7ubt+I2WXTjWWsjfIRsdIFD6lY+JYP1jXxGrpw6/hsgJgQRYNhFDisLWFxaGajYYP2Qh5kkr2tl0BpA2aDe1oCZFFCXiR8b3atIBuq63/RSoAiIgCIsONNJQHwLxRPNxDxZxPKazXpmLPw2H8Fjg+I4NmlmomTYAtvZaCOebieW97CG84uI9dypuM5OTwzgmRxKDGM8rKIj7Vta/OpOeXUtx6t/ufWwahiV9Ei7HHzJGMLLF2Lb0V6CGG2HlMdI51jQ2yHLyvC/GUEnh+Ti8mGdUUnKkjYfXuvT8J4vhO4jw9hBjkyGl7W1fVpXpaLw7NCUt8e9fkZsutxuK2yM5/DmOzWTfDSRvA2c5pGp3QLSPiXwuB/Z0zCMskxsFdV6bizWA44L26hMKaTv90qHNxYnSfEuiYZGdDW4WjUYZYlvh1GHMp8T5KmJitx8SOPURWxPotSAMkAdxsVYdG+QNdK6ozZcPZVssNbkQyizv2WLLPulwWLnqafDOn4hqdu1gv5ldIxMbjudqrstLbDHrLSXP8A5qDM1GMW6h1AU8NY1bVtkJvc6NJI2B7WkC3mh6qTLEo8rNgGdSto8UU2U9QLtaZZcMdz5Xn2r0KvjcIvjqQfqojw8Z7Z9ctXXl91S45jyF4dDWzw4EfmugZ6ZC3q4gArMQbIxwa0lt7FSxuLWyPcSTu2cniY1cOdlwsIOjv3JXH4jG2WJsOIwsmfMzGdR7VZK7nENfPhg0PDQ/mPrsAFWxNHNE9sY0R8x/zeaC9uEU4dDBNvd1POcYk/szhU75GyMhiZ52DvSeE8svka1+upGBw39uiveJcV/EYp8SFpoyMhkv02JpR+G8J0zzk6AyIEthf6gbLP5Ul0LPMV0dh/3PMARfQrE7WPja0RDe6B6hY43J8NgTzl+hoZvXW+is4BaYI2XrcGb2pRh2Z2UuSgceRobJFIdPWirTG69LZI2GOt79VbIYQGBt9/koKIe5o39Qu7HB8C9xCyJkcttFAbdVzZJHNzJq1jf9gWurJE4xElxYfRcbII+LlY1w6A31XJe4RJHKWSHmTQsv7j3vNqcFhxyS3maOgr/NqnLJC2DlmUxkft0FocibSdEjDIwdj1H8kTS4ZF8mcnKlB3O/Qa9x+HQKqcmJ8rWjmAX0jFLSWRzPvN262xc74/7XQA8n16LDqc/lyXJpw4JZE9qL84JeadrBF10VMPiM7WGMX6nssZeVpgc9ls2/e/NVsCcSCRsjCQK36UsWTLBy2p9S+GGWxyfY6LxO9umHGfM1ncU0f8XXqqOS+XllvLka8gDQ4UQV38PLx3cPhjjkDnsZUgLrIPc/XquJxxjuJZ0ceHJqDwxhcNwTvZ96H8FzNwvSSxRXG4q4MPNtsjrkYdo2WSszcO4gZg+KCTl31Dm3+Fr0XDYYOHYxYzHa1jN3Pd1PufUqKHikMmSXmDIc0GxpYKH53+SoWCDilLqzT58oybXT67HH4jJJi44a9pY4jpI0hzlW4dKPhAHO0nfY72vScbzcKbD205JlNMY4fd9SQelLicqOKAvoB8bPLsuZsL820+xzFmi8O1ruUXlwyddEBTvjnyoiwOYB1onqvRHgMZjEhne1w3JDQQR+C5LY7dE8PbpoOdR6KuWJ4l6nwya1CyNOK5RzcTHdHkHH1W77/opn4fMeXhhBHWtgFdyNLpZLiI/f8AksT6ORqkfrbW1v6LihFLjoReWblu7s57IX4hBFae5BtbZJjI0yRsfvZ0dfqtZ+I8Ohfolkh09wDrVWTivD4z1nouojRR6K6GlzSVxi6+RXLUQ3eqXJDJjQveTG6Tf98oYQ0adrrsrtwyxtmhmDm10Oy83mcVfHOWRxDbe+vdSwaGeWTjBcosy6/y0nOXUvjTZdRI7irI+igyogQZpLZGd99yVBiZ2XNku1gi2UQG0uFm5+Y+eRjXmgSB8lpj4dOU3juqKHrYRgslXZ0m4ua9jpocJ8tbDS2jf8V9h8G5kuTwjHZnRFsrom8xjxYK+X+AWyHAmdKXOcJnd+3l3X0DgM8b2kuF00Ns9drU8mm+zd7Z2Go+0K6o6HGPAnAOISGXHEnD5gbBhOwPsO30pc0eE/0g8P1M4H4veYezHTG//wAw8/mvTY+S9h1FrjW3X3VrEzHnYsovNbLmPLI7PFGjxM8P6XMY/aZsmbW+zYpfyJYqM/jb9IXBv9v4bDJXXnYMkf5s5gX005U+OzRG7qOi2ZPcuuS3EC3i+6vWaRS8CPN+F/0wYD8drONYZxBdGXHcJYh8yzp9QF9H4RxngvHcOPKw8iDKjeNiwgr5/wAV8OcB4s9s2dw6OOfRfOiPKlH1C47PDPEvC98Q4BM/Ij+9IC3zvH/GB1+Y3+a049VxyZcml9j67kYOHLvpew+oJVM4UeOdbZmPF3T2X/8AC8dwPxjncSgaR9mf95FVkf1HuvUDLikOLjbzTztL2vewGq7EBXPKlyjN5T7k0rWPxyyRkPJAugKH4Li5cnBow4F2K+YCzHVvr5Bdc8NmmjdzHwgE+YC+i50nhdjMnUcmQxncMhYIgPm/clVK5c0TTiuLKj8PIyAcrHbySOh5ejb62VJHoeGuc/nzXRJGw+i7OHwj4FzpS9+kiiy/82uTxDHlGb/qmMSB1JoBV5U6ui3G1J1Z1cDIhiHKEIJP3gArMeVDUmjHPk3ePRea/tPGxJxzJTNKBZ0CwxcbJ4nNJmTSRySfDyPDiLID9khN7aYeJWe6zOJuJjx8RkjJJK3exTcR4j8G+GCaWFkldC/qF4mPimYQ1hIZECCz19VT+NbrlD8jmSd9+l+q0LoVuCPVcQz5ckysiyGMo+WrpcjL4wzFjk+Lk5ljYs6jZcY5/JyRzKLpBTAfZc3Me/LkdqsRsNdVmyxSNGN+x6HD8R5/w8hEMkkBfRMnUDuRSsjjBwM8hriYBHzCHi1w8SZ8mIYYgA2qIJ6qMRSlkxlYJiaAvoBf+C63tikgk3JnrMDjODHO6Y47I9tb3i+/avVZPFIc7Jjklx+TFFvH9pRHuvONGiIvydDNtYBfsPdUcvLezP8AhmzRtiOMZGirAIIF/mrordHgrk9r5PW5vFopjriyGRSj7prYfJcHNzXSskI4hNNO8BhA+e9lc4ZmAZXQ5GQdUADyGC9eygfxzCh+Hixcad7p5nh4DDrY8De1TPHkfVFkckPc7QynBzWtuPQNj+0FLlsLsZ8+QzMIds97iPMffuPqvMcN4/Di5WE5kGUcfIz5IpHyyD7J4BJB9rogL0HEvFWPDhh5bGRyuZpDi7mNJoBtdSatShp9y5IT1G024tm8xohaNEUbNLGtFV6m1zcU5GRG50OJLJfRwFAe9nZXuEYseY7mZGpzI2ttjjs51d/l/NXuJ8TxcJrdZJc77rGiyVxQpcknK3wcSbEz2Rl7sOUHoDYd/Alc6ePK1ajM1kRHQfepd+PjuE6QmZ8kLejQ9oo/UE19VzuNZEOXlO5bGGqa99bu/wAB/Vdl920+TkeHTRzMfFdHUxew69q9O6mMbuS4Gj5t1ZwcYZnEBjmV7AIy8V02I/qnG+HnChY/4h7g99EEDfYnt8lKEW4tkJNbkj1n6B+HNm8RcT4u5g+xgbjsNdybP8Avsy8L+hPA+E8FsyXffzJnzH5dB/Be6Xr4E1jVnlZ2nkdBERWlQREQBERAYe4MaXONACyoTksHWOYAdSYzSznf7HN/cK2y/wDZZf7jv4ICQGxY6FFrF+qZ/dC2QBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAUU+pz2RA0HAkmgelevzUqif/tUX9138kBoxhgkY0OBDyQRpA7E9vkt8Q/YNYdizyEfJJv1sH98/wDlKSREv5kbtD6o7WD8wgNG64C4aC+MuLrb1Fm9x3+iljkjlHlcHV1HcLTnOZ+ujLf+Jvmb/ULZ8ccwDwd68r2nf8UBr9pJK9rZCwNIGwBva1tDGYy8l5eXGySB6Uoo2F0j2Pe9sgoksNBw7Fb44c18rC9zw1wrUemwQGXxOMpkZK5lgAgAHpf9VqDIzIZG6QvDwTuAKqv6o5rpMl45sjQ1raDTXqtJotIaA+Rz3nQCXdAetfQICTmSSkiGg0Gi924+g7oYXnc5M1+2n+i2lcIYfK26prWjbfoAtRFKRb8h4d/wgAD/AD7oAefFvfOZ6VTh/I/kpGva+PW02D0WkL3h7opSC5osOH7Q/qoZ3GGRzGGud932dYBP5goD5NBhzScQy2xNY2Jsrm8x3Tr2HddSThEcuJLG/IlOuMjagNx8lc4s2HheVmMIprTYA6m9/wAd1Rxp58i3PndGSKDWAUPxG6+Llhx4J0+tn0SySyR46HzKLw26LwzxXHwJHSapY36JKB7g0QrPh/my+JfD07jpLYHMIcK3Y57T+S7OPJkNk4rwzUwTGLUx5Ffdd3HrSpcPxp43cFlBMkokyGPcdiSRa+tivVa6N/vE8F8L5L+T03itrnmaYvIMExksegtTM4nnZnDsKXFnDQH6ZnluprvYepV7jDcaYOhlh02AS9vV1jcFU+IOx8LwxLpbobC8Oaxo3II6D8FY4qcVuXBxScG9rLvFc4YkbTkykscAAaaC4nt0XK4vx7FwOKNwMnDna6NzC1/YtNLgcey5p3cIz5zqidAdLALDCD/H3W3j6Xm8RwsmN/2cmLHKz5rLPQ6fK1uj7/oXLVZoJ0z2XGc7DxpI4JZxG6c+Rnf5qdwhyzG+CRk0bBuvIeIG87imJnyD/wDjRkfzXQg/+m8dj5byYjQPuCssfDISxWn6nyaHrZrJyuFweoYwNg0lt/0VbIYx3LYe+y834t8TZ/Dc2THxGMEcexeRdnrX5qz4e8Rw8VMUM2iPIAuuz1nekywxb64ovWpxyybL5O5PFG1gdsyvT1WsEbmg6769lnIaeVJ+S2YHcizua/FZtOk8vQ1TfpPLeI8h3x+Q1tl0cDG12t5/wXPz8r4uWPGYzkxnLjZbx98Riz/BXMyP4jPmMzqa/KYGBnV4YL3SCF5ZGZ9D5AJZh7WSAF7HqapHn3G7ZQ4VnuMUL5wXufzZraP2LICziZ+RguaCysXHxQ8xvG+t79rVrL4f8NiTR4zRGRhMjjrsSVrm80HIjNSRkwRaDuPddbpnF0N+O5EM8GRCWmQPfHE9gd0srrcPxuZZ39ivKZcc39oco2PieKV5Du9gZ/gvb4kMkUQexzaVUm5ST9i2HCYgheXnyDpuVpKx0duYzXYVg6y/7Ovqo5JsgktMTgdX0XW+Ce2mU+ID/Vy+u1FeWeAc+Rzt/WtyF6vOlYYuXL1I6ryYMTnyzAk0bt49P4qMq4K+UYIe3y6nEnzWQFGHNA1MBY/uau1FzGyQExxHST1L7B+Xoq73vYwt0MkF9OlKrciW0Zc0zKDHMDb69B+Co5Z0SNIdex6K5LG8gue8Dp1FhcvPjItsbwS8EWvN1raVm/RVu5ZIdE2JINVyae65+JDmslqM6L6kldWIvhx42A+boT6Lbl6pNTSA73Xn5MKlUnwzTHPsuMVaZYwPD0OfjNyp8p4kc5wP3a2NdwsNY3hvGWMdI8xQPDQ5/o5vU/8Acu34ebEOEtY91u1vr/uK4XGWD+1MuNzS8lwo+2lq0yhGEVJIzeZPI3GT4PXZEPxfD5I70k0W7dSN/wCS8/NizYTSZsd9DfU3dv49vqoMXjT+G4jmyDnwsbYBNOaPYq/ieKGZjmMxyY3HqyQU6v5/RbcGB6lXHsZMuVYHUjn5LS/HMxYGvDL/ALwXWk4RhjHY2XPlDSLOzbP0pQHB+MkLow1rzuQI7a4/LsfdeY8SZ+ZHNkXnTU1gcwtAF+Xp0U8OhazPHk+ZyeqTxqcD3bcvGbkNx43OeXd6oLzmRw95zHwY8kjdIoOcGjb8F1OEMa/Jie0FumImh2Xi8/jOaMp5iypHu3Grax+S1LR4Xl2SVpK+fmUfacvl7ouuSxwiTKk4tNjTTSyRwlzWaduZ+z91Ws7BnypHxT5PIiBrlQ0HA+5Kz+jKEz5ednZLnmRgDGud6k27+I/NY8T8Wx8F4jxormkOpz5Ds0ew9UhgxRztxh0SOyyzlhScupvw7whwybmvM+Q1wAPmogH8FweM8Pbw7S/J0mG9QyAN3OPcjsVb4P4m4u57pYWtdDdSMMexHzA2XcyDi8SwKfFrgnZWk/un+a1YtznJv8vYz5FFRikeW4PKG407nRmSNwuNrbBA91U4b4emyA1+XIYGE6jGyi76noF3fB2H5uIzyN0/DFzGj1duL/AfmqvHuL/2dDHFA28iUHc7ho9VVp41myS+K/Yuzy/pY4lnA8NYVS6MnKadFB2oOB/JeI8Q8Iy+FRSScwzwOdZe0U5vzH812sHjvEcaPKe/iEcjmmg14Gk7dqH8F5/xRx7K4hAIYrgi21i7Mh7i/T+KYnF5skq9kSyJrFjXzZ6D9Hxvhs4obyusGybpu2y9DwjPcxsgjc6mkN0gbdSf5rxv6PspkXAskuvW6dwbXc01fRf0bcG52E/OeXPe6Q6GHoKHX52Cs+pxue5v4GrT5FFRS+P7nsuC4WRlYcc+TeM54sRgAkD3v+CZUTMWQRxyyTTO8zmgNoD1OyyeIyxRHGhNzN8rnVYZ/j7KtCWCSMuBPmDiT1Ll5WbNDC0mj0MWOeRXZaMkrnhznFrYxdeq3gljlfypGkbdz1WuuQ76hR6hRvY4nUKLjuP8Fx5o8EljZ0Psee7lvOvopMaWaGSNunY/Slz49fL80u4Jv5K1BNYHMie+th6BWqSfQrcX3OZ4q8JTZ73cQ4NOMLMPVg/Vzj0I/ouD4Q8VM/0pwuD8SjHD8rEeWSY10CT1IPcfmvomBI+N8YDgWk18l5Pxr4LwfEQa+J5x+JsPMZNCKLD1u1pxuk0+hmywTo+gyx4sWXWIdDr1kg7G1ZfxTAxS9+Xk0wVRIv8AgF8r4Rl8ewy7H46GzZQFRzMFCcDYP9j6hSZvHJ4eIR81sPLkdpje/cB/YkLTj90ZMkFVSPeZ/HsfJMumORkURoyl9LgZfE35TeTjFgBNGjuvK4/FX8XxpsbOyg/KiyQyRg2G5HYdqtR8UkdjfGRRPhxREY5DIN7YTRV21tkFJJcIuxPhyeI50c4EM0T2bB96weh9lLLlQ4cbX5IqOUULF7hed47jRf2rkuD3zT/2dzIRdDWwmia6ldLimU5/AsKdrjIS+Ntga9F9T89z+Kq2xtNdyzfKmQccyGOyeHyQmQ1Ow62DYA+qhZlauIzZJjHLeyMst12NZF/NQNh4icaGJuDMeYYzewLNB6EH2UmPwrPc/wCF1wCNkJiBeSTsbBWmox4souT5ozmT5cskIaYHu5kjdmdKv+lLkZnE8+bEg+GmkmjkIjqFgHLfoJfV+9K9/Z8vxpfFxEcrnCVjAzpsQRfuSpH8MjkwPgxJPCecZeZF5CN/X8lllkx3zRoUJ1wQcAmyf9ICzPZNDK+CmMElxvFCx6B4o/itMiWGXinnluY5suPIwydtB0AC+i7WJwhkDxkw6ybAJe8kVXX5qtxXhofkYkuFjsOUZ2PmkBo6Af8AFIuLd9A4ySpnnzlQaw+Qx5U0uLjh8RdVSMfW4+otd/GlaBg+cM5WNkRP0M3eXkUB+C9fj4PDb5seHAyTXbnlg39Ul0tnD2MYADQNe6vUl3RVsd9fqzzROTBjyHGw5DJPjR/aaNwR16rnwcO4lDkw5IgmeefJKRK8B5DxVkr2km0ZLH6QOvRcqebmyNa6P7EDf3UcmR1wjsMavlnnn8ByOJcCn4flPZiGbObPFIx+pzNUjT/Cx9V3M3wlBj5D8/BzJoJG4vLe1sbS17Wjattit3OEMsW2jVKzQD6agu3xZ7nYWS0PbGOU7zO+XVVwnwyycEmipwj7OOfHFiQuD236UBZ/D81R4xwzKyskTQFrnNZpMbjRcLJFH6qu97ostjmSEOYba4dQuoOJ6JGvnhJc9v34/wCY/pahvg402ScZKVpHF+CigcWZbnMk/cLKKYsDMnPdGHPYxwLg7bVsR2PzXqo4Ys/HGkxzRu6gm6P8iuFn4BwMwSY8ztLrY11/cPWvlt+SRxpU10DyN8Fvh/DI8LL57Z3uLmlpDgK3r0HsscdwW5uO1rpZImxu1DTVnYjv81WwZsl/FvhzM6WIRuJ1V1sJx12Q6fBxseV0bpspsVt9DavTSVdiiV3Z9l8NYj+F+GOHwslc4MiYNJA71/VdiSU6+XE3U+rNnZvzULcdkOONUkj2xtBpzttlPjsLIgXffd5nn3XqpUqPLbt2a8qV338h4P8AwAAfzTlzs3ZNr9pAN/qFrGJJ28wyOjY7drW1depKyDJDI1r3l7Hmg4gWD/RdOEkMgkBFFrm7OaeoWJZS1wYxuuQ9r2HuVpk1G5k/TSQ13uD/AI/zWcQXFzT96TzE/wAB+CAcqVw8+Q5p9GAAfnacuZo8k5d7SAG/wpas5mR5xIY4ujdNW73tbaZ4z5Xc1vo7Yj6oCPJk14k7XNLXtYbH8x7KbL/2WX+47+ChyI3Nw53yO1Pcw2ew9grErOZE9l1qaRaAjMumONjBqkc0U3+Z9kLJQ23ZBFDemikijZjREufZrzvd3WA12QQ6QFsQ3aw9Xe5/ogM4znu1OLi5n7JIAJ/wUyIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAKJ/+1Rf3XfyUqhlIbkRFxAGl25+iAzN+th/vn/yla/EdXNjc6MGi4f07ha5OmYxsa8bk3R6eUrZs3KAZM0R1sHAeT/D6oCVj2PbqY4OB7gqLH0/ETCP7m1101b3/JbcnHk8/Ljdf7VA2jpYogI2gEjoxg3/AA7IA7/bGV15Zv8AEV/NIf1849wfyCQMcC6SStbuw7DsFiW4pucGlzSKfQ3FdD/FAGEDLkbe5Y0/mUydnQvPRsm/1BH81ktgyGg+WQDoQen1WgiaJXQ19k+Ppfe9/wCIQG+UCYw5oLixwdQ711/Jbsex7A9jgWnuComymLyZBquknY/P0K2MOPIdZijde96QbQGsZEuUZW7sY3QD2Jvf8KUWdvkwuvaLzO9gSB/I/gp3TMb9nGA942DG9vn6JFFTHcynOf8Af9Pl8kB4v9I+I6R7JI+rwD8y0g1+S81htLmMkEleY6h3A917vxdCf7J+0NtheHNkPSuhB9PmvORR4uTDrfFFJdiy0G/qvm/EtMnn3M9fR5X5dHhOEY3EovEmVJO108YeWam701x/oppBNBMzF0H7KYyBwHTykfzXs4hiB7ZHPDJY/KI4xv19FvG5snE4nGJjSXu17bN8pXp49cvLjxbrn5mR6VuT5ODx7ismDw7B4s7H5uOXtinAFlovr9QrsAweN8My2QSNlgkiLo3s6ij1C6fEYsXIa7DkEb4nvGpg3Gkg9lz+AcFxeA5E78ESOhlvXCX2Gj1aoQ8Sh0nwdejk+Ynj8+KfB4PDgTNbI+GV7WEdHNfRBH5pxeNmV4f4ROXFkkcckNe4f0XquJ8OZmERNkjfHfMa8OFggHce+68x4gGUeFDAMLXNjmMhmaLokVf4r0IrdTi75/Rr/syu42pLt+x0eI8Tx8bhXCXZmGyeOWEgk9RWy5XF+ONfm86GICJkLKB9f80tzE/M8FwSkcx2BI8SCt69f4KhxeKOTCw3jlxyiB4kroXg7fkVHDGKfTlNr+TuVya+FI6PimNvx+VJkNeI5JI5GGutsCreI5IcDxREcVgjMRZIQPQ0f5r2kefwzJ4diYfEOWHT40bxrGxsdivE+O8HXxmWaJ2wgYWG/RVYcm5xg12f49P8FubHtTmnfKPorHRTY5APUbLWAf6t360qOFL9nFV/qwfyXQxnkRaK6vXi4OcqPYn9w4wxmR5JeAw/60Q/2OhaYmMw48kbX63DFsPJ910C6MmVkoDDz37/AL5DFy8sPx4MqSFokHIiZo6Hra9xJcUeXJ9SHinJk+Ipx1MMDX/XsqcjX65i5w5j84WGbjYdLV/LHMnmkYwnRlRMeAPZUXw83JioPhH9ovJZXU11VU+eUTja6lLAjfJPiTC5AOIS7k7g0Ra9syTYMo7Lh8LxeYcGaZjA7nSnyNobr0MkTYx3+qg4uLLYO0Vi7z7dLW8RuI80Ag9+4WQzWKDFHkc2EF0jSweqr+ZYcTj0nmLO3Q33XnclrYYmMEhjaeg7Lpcd+1LdRJIN1fZcvikjJom30I8p6Af4qPuyDfKRTkjZIac0s6a91qDc5Y8Fjga2WDHzKfG8FzBRD1o8ec7H5hZky1LgZB0vIdOa/moJNd6OVCSe99VsGN1nY2fU9FsY26A59b9SWLDqE5NGjHwagukYWGImu/RY1sjOmSEgj1ctouaRI0UKN7LBktg5nkPr/h3WV/EtR6PgBhHDmcsPYOY/pvXmK5PFXB3FMhjJNcj3taxhbRJ0tXT4By2cHiLw0DW/cOvfUVzcnJZjeIcicaZAKFEbtGlu4Pqr5/cVlUV63RrJiz4b2nOxbjf+0DbT7X6rz3GXMZxSUsZ5NW1feuh0X0LF4jg5ONpZJqc40YyaJ+h6rg5kGDDxWZ4woGOBBDwwNI2Hdej4ZBRyun2Meuk5Y1fudXwzJJog5ztM3KBeD3dW68H4skcfEGYwNa+IOeWbdRuu5J4k4fizhsc2tzti9u7WfXuVwOPlwznafKwtprj+6Qt8n/8Ak18DLGP9D8T6BwWduS+PktHmj1DfcbL5fmZIjfMHNBkN/wDTuvV+DOIPdjRY/wCpkjGgSP8AK2Qdt/VdSfwvFkzOnyoceORx1Ehlkn1K5LJjjlcnLsdjCcsail3Od+iubmYWfEbDxMHAn0Ir+RXC8dQTY3EosiWEmN1A16i9vw/mujwNknAs15jdzXtdoc4n74uiK+nVepgzsHicZZrjc/o6KQb/AId15y8RissnHm/wNz0UnjinwfM3ccdBC7GbikPlGmo224lew4BgZMfC8ZhGmmU69iwnchdt2Hw/Gc6aLFxoC37zw0N/NcXj3iCHknEwqcS3S+QfdA9B6n3XJ+IRx3KMabJR0TyUm7o28PyQSP4jjx0GPkLwe7hZGr+H4ry3jrgOXJkxZUb2/C6OW8k7tN2PxtWIsx2I5mTDXMb94HoR3C7uLxjBzGBrZmRvIp8T9j/j9Fn0+sy06fLNebSQ4tcI+dw8LjhdqyJGSDs0BU+N8AbC6J00U+Ox/wBo3f7x9PY+y+nPwsCN5njxseNw31csAhea8VcewxiSYsLY8uR4p37TGe5PcqbyZrcpTZOGLC6ioI5vg/GxYeDSsYNWqd1k/Jq+w+BMiPFghwnw8sCNpa7s5zhdfPdfGvCMjG8Oex8jG/bmwXV2avtb42OnfFE1jmhrGsIH/CuyyT2Jvk7kxQUtsVR1OJ4Qfqnxm6Xf7xv7/wDiqEN8sOa6/wCSt8HzmudyMh4Dm2I5D+17H3/ipMmCPWZ8eSMSDqNTfP8A4rFqsayJSiTwZHjbjI1xg4RF7mdBZCzJHGGB4bRrbfotC9ukBhDSG/ioix8nm013N9lhbbVM1qk7KzsgxyxtLQdrr1VrGyebO5rBsN927BYnjZKxvNi0aP2vX2U/DoGODnCr91zH5ilSZbOeJ4+VydGAtki1MsbDboptXKPOawPkqrPRg+XdYjjLIxW56bLEoqAM+HfZq5B3XuQXB483yeR4/wCFnZXi3C8RxcUzSMbXzsd8h5ZBFVXRV+IYPx0c8OqhVs9j2K9Nlyyu5gjoA7b7V9FRkhjigJmfZJ26q+Eq5T6GecV0Z5HhXCsiGTFzJiBPb35Q7GySPwXXn4Yzik8nNe8tlj5T4hsK+a6OJjcxjgBzIyBb1nEBxpLlNN/fHSlY8rkueCtYlH4kWBwbBhYzlwiSRh5euQ6yR81PLFDE3lRsDD+wGDZn+SFKJJjpEUYALe56LaOJwLXyvYG73oNklZ3njxbL1ia6IrENGTCA8cwsIsPVXi7JAyNglDI32w23e+66BxMblgjWZRZJJqx6BUuIB808bhCwFg2BN0VF6pKL7nfJdrscmDGYQ3lOMkj37BnTQPRXIMHIyZCwNLImG7Pb5rrR4M/La9hEEQvX+wqJz8aIcpkZ0kWXEf5tVR1FyqibwUupblx2HGiijdHpe+9YVOLB5U4fJMNPsLUkRfKIZYtYj/bAG3yViSLyf6u4cuvJ7KcpymcjGMSbA5PLjMsT3tfuS41f0VlkuENURgNgWN/89lzWF0cscekggbaz19VYOO8ztDpagotIGxIU3mlVkVjj0MYD3ZDJz8N0fW46+6xPDjOJaxl8sXrrqVHJJNjPdDG79rcm7ATEj+wdc1RyvGhhIJVSz7/TJkni28o504e6dlx6nsewAdvvBd3imNIOF5L5NLaiP3nddlRbBFFyxqLTzWud6feFfwV3jE0E+PkMbKwjlO2Dx1pdx49lsjkluo4+PimVp5Lea4bvANAe3zKrZOSI5ntcxrZQ4NY14rSPkujw7LbixjHljLYgSRI1v/mH811Y4MPLha98cGQR3oOpQeByVWS83a7aPO8NmlHFIWx6hsddd20ev1pWvEDp4cB7Xt3c9mgnreofytdDKjxMCAPBggF1Rpt/1XG4nkZPFJGiGORsTHeUNhtx96NUtsP6cEmZ5euRBwU8viLHP8pdG4AX1Njqr2dKBxnguqjWfGXH6rlyRT4oiyHVzIXa3tLwbaTRFBdvhUmJncTx5Y3tkZrjtjhuPMKsLZiT2pGXLw2z7hktL8eRg6lpA/BZBbNBYsB7f4hQmJsJjdECPOA7cnY2P6LbfHcfKXQk3sLLT/ReoeWZxJA6IMO0jBpc30KxORJLHC02Q4PdX7IG6204+QNVRyVtexpC6DHGkaWXuGtG5+gQGnEG68flDq9wA/G/4ArfEN40Z76QD8x1WI2vfJzpBpoUxvp7n3WCHQPc9rS6NxtwHVp9QgGG4NjEDjT4xpI9R2K3kmaxwYLc89GjqsfYZAuo5K9Rdf0T7DHb0ZHfoKv+qAjyZGSYMxaejCCDsR81PM/lxPfV6Wk0qmS10kU0ujQOWWjbzO+amyZIzjSgPaSWGhfsgMxSMyYiHMo1T2O7LDHOhcI5CSw7Mef4FDEXMZJGdMjWij6+x9lkSxSMLZNLT0cxx6ICZFXhk0SCIvD2n7rgbI9j/VWEAREQBERAEREAREQBERAEREAREQBERAEREAREQBaymMN+1LAP+JbKDLscpwJBEjRt6E7oCVjI27sa0X3AWyoQuljhYA95YDpDy0aTvXTrXutRlTaNTjpcHFrmmqBAv+R/BAXHY2O426GMn+6Ft9jAz9iNv0CixnyPedRcQAL1ACjQNbKAP1y6y4tNEkgWQLoAfhugLjJon1okY6/Ry3VDWA7U7m6BRLnxEEAG6uuixLmODrJeLaHANA6Hp16n2QFuWLHcQZI4yT3IC2jZDGS2NrGnuAAFRfK6QuEmqhCS0sAFg1vR6H/FGmbWPvc/mG+lfdbf5fmgOid+qifj427nQxe5LQqoyJC9rQ806jZAsXf8KN/JWI9UuKS/VThbSdjSAkhdCRULoyB2aQt1z4pJXBjy9xNRtJ221Ab/AIrbnzgEmQ7Bx1OYNJAO9Ab/ANfZAWMmJmRA+GQWx7S0r5NlYAhzJMeRjA+F5ie6vwK+ojKfESZdVDq1wF7gkVXyK8j4xwiMt3ECJAJm8qVzGgsa5vQ11ND5dFi12FZIW10Neky7JV7nL4djxxBwjAa2+wV6o9XLaAS/fdceXGkGU+E5EzGwgOfJQtxNUAPewN1dxGNik5hln1RxlxDw0l2/Yjb/AOV5eHDGDao9Cc75stfDMZMcqmxvqqAUxLY4ucD0FlcvKyXHIjD3SnUwO0RgUB6knufRS63Pa+B2tzXQ80aG05w9KPQqz7LjqqIPI76kXDXQOZJPK1hJddkDouk6PGdGRCyINd96m9VyuHtgfCYmPd9wtNinNJsEbe1K/jnzOsjqTsK2Nf0UceDbGkzsp27aN+VCGSM5bNMmxFLhcR8LYeT915ZEerPT5LuyEh9Md+S3eRy9HdTh5uJPY+Tk4wyUpo8H+kRowYOHvhbTYmcoWPQbKv4ki+L4Jw6eJ5Y5+Npv1rsV7HxBw+DjHDn4M4IJ3Y8dj6rxGTwnj2Pj/AZDedBGCI3x73f8Ft0OZOKhN8r9THqsTUm4rhnqvDkgm4XiZBdeuBg/ku1r0EP0gilwPDWLNieHMSHJY6OUAgj62F3Y6lijcd15sUoZml7/AMnoxbljRyPs5Z5WyuAInexnf77FFnyMGDlMbFThDFIT0vdb8Ridj8XkewA8wxfjZCgpropnPYXu+FIIPW2PXrQdowyVM2zZZo2ZMRawRnJikBG2xA2UGPE9mQeVNQZmkkE9QR0U3EWOEcv2jydEEjwB29lTzA2bJmdG0x//AFCPoOmyj8zvyOjgO0y4Mc3mcZJwAOmy7z2vku/w9V5bh8mX8ZjhhqMTzgE7kld34rP1AMAPtoUZzt8luOLS4+uhOL5mjTpCrcZ+yw3PPavwKs400z5BzBuBvYqlzPEkx+FGuq19/Xsq2uGTs8/kMEuSNZGkAgrjcUe2xy3gb9PRdB4lfku6Pb6dN1QzYhJqa91+4PRVvmHBHhSKLHvDzZZ636ra4XdYWB/d4/jS25TGVbNQHUX1WTqNiNoEdd9iszu6ZcvgbmN4Zq3eA3qBagcx/LqRtAdwsxyObJqjeA7pbG/xWJZGSPLpGPcT1eDVLNnaSTLIJ3RU5bI3mQWb6hYexjnnSwjtfopDHEaaJgQOm9FaRScsnyPeBtRWCckzTFNG8ZhbUbHMEgb5hta35hLQ3S1ziO7VJiyRycOyGZU0kcMUrHMbG3U4k3sPmoZBiHHdOw5gjY8CZjg3mAHYEEbEWji2lRxSV8mkzZZ8KWNga1+gkNDe68hmQuiyw2cmSZvU/Re4ijhi4lJCMiYxxxl5fpaDQF38jYpQwxwZWUxjWt1SyhtkDWBf8aWrR6mWlvi7KdTgWdKnVHnOFYsbshoyWFrG+bovWSS4szGuMRvV0I1KSLOy3l0eBG5kEezWRxAgDte25NKDKdkZmZA2XE+HJZoFNLWBrbJNfXoo6rJl1E9/SuxPT44Yo7TEzi1zXNka3/p6quQ14Jc5h09RamHKnY6HEblNkLCWiVo0vodNvun5qHNmxzwzAe50+k8wmtN1q3/Oq9lkeD/kzSp+yInPph2j0n1H5qDUzTT2g99wrmYMfI49PjukyGlziG1p3fRJG/Y7V7rnRRQuwZMiR2Qxxk5cbRppxq9/l3XPKUehap31IsgxAaraCelqu4lzxpcXFX+FSTw5dRy6dTH231ppI/NVoxiz42TmZGRO2SJzXPLdJ16ienvamo2kyd06KkpZrIJFjqVSyImOrcH/AIVeyTw2HHjyjPkOhlsNa1reZbT5rPSun4qhknHjy52yZbY8aKMTOmIolhAI29TdKSjJ9CSa7lKbQ22kAtaudmN1NJb5fmrA4t4cyfiXszsonHhdM+KmOc5o7gjb6H1XDy+LYEeJDPlNzXnIBfFFEGhwZdBzidt/QK+Omyy7D7Thx9WQTaGztcKduF+muC8s4kctAO0Dyt+S/L+fjHK/s+PAyJXSZpc5ry0AMYLux1sfyK/UPhkNnxcePHknDuU0tMrAGutvp1b9VZPTzhVlEtXjzfdvgzHHJGC5waWuJ6qYiB0YcGxEHobFKSV7bY+d8zY5HfejaC1gBqjt1UWPFcIPkAeTqaRYpxaen/SseeFJbmWY5W3tRNO1sY5raLbq2qQyVHuRqNWpGRtfd0TZc5vzKiMbXyhwfYZZPZYpUi5W1RBxSV/wBDWm3mh+Kn4K6YYpx5GHrYB6rXK0/DukkojYgfUK2ws5Uc0TrDPRQjFqblfYvc/6O2ur6nTYXUGsaWGqHdSywvpo1BjtyfPuFUjkJoEDQCCKUzHcwuL3Dpdr6HFLhHiTjzZBK13Ldeh17g3uqEkTKD5fTpau5eggcsH9y73ULNBZpkbzHdaKz5r38FmOtvJRMjZHiOGxFVBtVfupGO140dR3QND+a3x2ZFODXCMMGmwBY/xUmNGwMigjs02y89TXqq43LqSaSdkMML4Dql37kd1tO+J8DLaWvvbWVcfG5sgIfrPUAKORkUhdrILgb3HQo4KqCb6lVmQ6C6rfaqtaMxZebHLkB3L1kk+wH9VieN4DnsBJB8vsq2XHkcvTDKbZQLPn1KhF/wBrJNNcmmRkuyJ2wAmOLexfv6KVmEZsuKJrr7qjG6OLmWw82r96V3hedzI7hZ9pZAJO34/ir8UkuCqab5J5ZoYhLFCCeXNRsEDf/wCFtE/GaHP0nl3e/qufw9xny8vEy7hFgX6jdZnLtbYYmPfFH9yjf4nuuzy7eTkYbmby5XPfygwADvfQKwMvHhx3PfXMeNh/NRRY792lo3PTYLORiQxMj5024HQDYLPDJkbbiXThFKmQZL5m8tnnfORZNdj/AILQlrC0QvJ3u+4PyXYjEZkFRCmCrJu6VXMgxOb8VNcbYzqL2Dr6KcMTbXuyM5pJ+yIsquQfIeY+y7VtuFzuF49TPynhhZu1h0jZXm50WY3JqQh0dkOP7IPp7dVLoGROGzOyHh0bJHcsN8lNHUnqfZaZR9W2V2jOpLbcejNAGlheW+U0qrmjVTGMc0mvM3taky5YxHJju1Foj5kZjocxte/Q9dvZV4Mac4sOQ500bw94F1VXuR3rsq8yfRE8ckTRubjZhIijbudyNrUM88eS++aLPS39QpJmtZE+dsYL4pGsiDtxqdvqI9gNlLPPxGNkeVFjz5Ol1lr4rAHYggbLVgitiKMsnuOdC1shAk0gOBDyTsvPYWQ3H8UY8EzC0c5lau+67ediMj4YOIsfkOgY/lvjib5g8Dfr0aFz84MnyuEcTIyGxty2MJDQJGv1DSD2LfcLZC3SZmyUrP0xDFjRhrmMiaSNiAN1OuU1xLSXmTTpOiq/fF/n+SmfkTxt87qeDTgQKG17f57L2Dxy2+CF5t8THH1LViL4ZjtEZia70bVrTGfI97tRcWgb6gBRoGtlB9pzDE15IEjtIPs0ED8SgL6KjzpvK4PeWlrXXpb5dXr6/RPiJm255O2r9kaSW9QO/Y7+yAtyQwyG3xMcfcJHDFH9yNjfkFW58kr/ALLVRBIDaurqyT9Vrz5hy6drLyRRaG1Rqj77/kgLy05UV3y2X/dCqiWZwY4PeGPcAHlg0nf06i+y0OXIGEkuDQ/SHULJ/gPmgOgtXtjI1Pa013IVJmW/SKNhzxGC4fdJ+XUJFK+Z7oXGQE2C14ANb77fRAWo/h7Bj5d9qpSqpFhaJQ/mXRJ6b/evqraAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAoMsOcI9LXOAeHENAvb5qdEBQayahFy5BGDYYQK63Wq+n0SWJrXBrmOl8pdIGg7kHUPzvb3V9RyQRSO1PYCfVAYxW6YG7gk+Yn1J3KrzwOaTpaXN3rSAavqCD1F7q6AAAAKARAc1mM4MkDYCOY0tc4gNr5ALaSCZpABm2aG2w2CB0PUUV0EQFA4z2xk1IS5rm/e1uF1XUrdjJhkNe5hsu1GgKogA9/ZXEQHPexrpHUx1F+hr6NAO3d/Dr7q7KHcpwYN6oLAghD9YjGr1UiA57Y5mhobHJoGjVbRflrpv3pDHMY9BZJp0ua2mi/N679l0EQHNnhmm1a2PDnaaIAoUD7+6i4hhuysabDmjeYpvvtYB1PUh17X8l10Rq+GFxyfLOPRZvCuITHJhndjTNprwAD5QOm/3hV6Vw5/EGMzHneZJpDy9Ae6PQLJHlAs2e59KX2fNxcbNx3Y2XCyaJ48zXCwV4HxH+ing/ESZMLMzcKXtchlYPkHf1XnZtLPrjN+HUx6TPER+KoBTObkwvaNILbLSB02sUVH/AKU4QyHmWWdrS0CNxkMjgb6mz+QW/HP0F+IsgH4DxVig9uZjEfwK+a+MP0DfpSw8aTKZ4w4Hi4kQt88uQ+NrB6mwsy0+p+Rp8/T11PqOB4nwXyx6srWWM0F7xpMm9+p6Lu4/EMea3RSg/Ir8IcY4T4ki45Ljw+MJeIsjPmycV8gjJ9iav5rueH+MeL+BPD8Tj3FCR/8AdmLx+BU/JnHrJMj5sX0iz9t/HWQSBSx8Y3XpP4r8x8H/AEv+MMbS3PwsXNaO+8ZP8l6jD/TlwraLiWBlwOft5KkC4nNPoS9LXU+5yZldd1hmew+by2vkWL+lnwtljTHxiOMXX2rHjf8ABdOLxt4fyqEPG+HPd6c8D+Ki8j7okkvc+jDIikj+70PZ3Ra4eW1kmjX3sXta8XB4kxjpdFmwP+UgK6GPxeHJZ95h9CD0WZxg3a4ZYnLo+Ueh4pI2V0RHkJ+zeR2B6H8aUMF81vML6edD+1B+xH/f/FUY85ksZY93UUtoQ98fLGRs8+e+/r/I/NehiyKuTLODvgtRY4kirWRJIx8J19TIzoVFkO+zmmDuSTHHMQ8dCDRWZI5GyGZmzmOEoEfd/Q/iEjsRGGVj3jQYyXi7D+h+iutNldNE/DGvGTI6NwPIy72FUJBd+69Gx7Y/OKBG5B9V5JkzxzRHeqSFhfVUHxGiPnW67Yx+Y8PvYiwb9VCbpIsx82jqvmhk1PAFEdB6rzvEQ+SRz5GgR9gV0iHkDSCPmoMiImCTazV2oSe5E2qPGZMrWSuZuA/p2XPleJGFr26N61gLrcbgALZh23NLmZOzNiPTZUyToLrwQmOaImorb2Me6h12B5AaOw9Fk6n03mPefQCgPVav0bta9pWaci6KMPlcSQdgP3FXkDg/Q51gVoobKfmAgEbk9hvShe520bt2337LHqblAvxfeIyNUn3g8jusCWn7mj06LMpsu7dxWygnexrCA6x7rNHC+5duLLJoY8KSB7JzJPKDbGj7OroizutZsmJuPJDGZXmQt5kj2BuwNgAWe6pSSXKL327LVz/Lbtt1fS6JEO9s6kr5WcLgJge2V55Ze5pGqNpJaPbr9QFXY8iRsrLZI1wc0+4VMZDQTcl36klauy4x/vQuTlzaJwj2OtkfAzPdMfiIXONvaxocL76Te31Upz4myYwhidGMdr2aC7ctNd/Xv815vL49w/GYebkxtHu9cLN8c8OjJGMJMg/8A2UXkyS4iiaxRX3me7knYI3FmXnymqYHyFoafVxDt/ouXnZ+JHgwRGVwkiLwab5SHG+tr57m+J+N51sxIORGe53K5snCuK8So5U08nt2/BSWnyPmbSX5nXkhH7qbPdca8Y8JZxR7sPIdLM92tjGsL36hvQDbvoub4v8AHOLiZzcbHwcpuhvM06KaXPNuIJ6jt9CuJheCskua6KCRrh0IFFdzG8B5cpaZ43XVW9xKuWPTRTtt2V79Q2mkkcXhvjxzcp0kuHO1ukhtAOuwQe4pU2eIc6bhmZjNmkjfI5vKLMcEUwnTdnve/ovcQfo+cOrNvYLt4X6OmdTGb+SksumhxGIcNRLmU6PkeZJmZnCsLFdn5wmhc4yVGADrILqo9q29VclxYJcslzcvJx5sZuPO14pw0gaXN367Xuvs0HgKFoBGKSPVdSLwbiMZvjgC/wBxS+2pfdVEfsqf35NnwvhPBeG4TMljG50r8iB8PM5IGgO9r3P9FYZ4cfmcNxvicfMYYQYY5oYxIHNBsBzbtpF7L7tH4Sxw9vLhB7OoLdnAIY3O5LXxOO5DXlmr8FW9c+6JrRwX3T4jncHy+Hz8Ldh4crfhY3F0cn3qcT1roSLPta+3eHp2/wBmw/6xxF4ETQ1j5S2hX7Tg7f6KI+HoQCJYwHO2LgdyrfBIWCZ2MH+WM186VM9VKTRfHTRjEtwOihfG8PyWSNrmUbZJv8/T1UsGqIglooDVpHb2WOXoYWMYNzf9FsQ4x/aPry0b2pZdS3OKRZhSi2yxGxskWpgpwqzWyRyM5H2bfNe9d1T4RksysbVG+SuYWPD/AFCvPMOOG6zVbBgWWUJQk01z0ZapKStdCrkDnRmLSa7HspOGY0mM+RklPjLB0WMyXThyPDRVbfNRcIyHkiGS7q7PXqVUnWRX1NEVJ4ZV0OvhxF7HNjcR296VmuXHbZQ09CL6qLGk5ZcQ0izRU742GLaVgNVdL38ElsR42aPLKbJmHUS4AAkbrUcv4gPGsgiq91clYJHjlPOw3NdVVzY3YWHJlF7zywXAfvrmVSc0iMJJRbI5CwN0sYGC97W0fKEZdFkRjtYNr5bx/Pyc7JL3TzajsYyaAKngZk4HKxZxJDkHzss7UvSh4RTW6dN/A82fil/dhwfTBrmFF+iMHd+4v2CsgVHphdej1Xn/AAtxR2Th/B5bGvkjdYeP2wpuJ8Uj4WJCXl8gGsRMduQvPnpMkcvl1bPQhqoSxeZdI6GQWyk/I2Lr6rkiOSV5Ie1kXMoi6tcbI8SZjHB7OGgtfuDzOnzXRxsr+0ODzT4+QI8gDTy63Y/39lDNos+KSlKNWMesw5E1F2VeIGQvdcnl+4dr/BdSCHDxTJQL5Y2eSMs6Gu68Rj5eTLxGLluM0sYt7OxPqFdGbmRZEgHMZKBUjH39ot68HzNvdJWYn4pjXROj1Mc0h+IcdEchkDWUddbbrWXKg4ThSNzpNMp3YwGzfvS8s+XMxfh8pnkAN62bggq14s1HPkfzAWyxxvYRtsRdIvCU8yTncWvpB+JvynJRppnc4Jl4mU8uxskGcMOgURutcvibsHJY2bFdI8DX12K8/gD4U4/w0heJ2E3+48dV0+KzNy+DsmlFzYhLJnDuCr4+HYccotNuL4/Erl4hlnFp8SXP4E58Rvm5pjhYx5JFdaHspMfiXO4ZkY0jxzeXYLAfOP6rm8KjZMZYY9GqWH7Pa6pTcEd8M2F8rCHXvfoty0uH1RhDmNNfuZPtGV7XKXErX8GkbZpZXRxW0kt8obq1dF2dUccj+Y/JibExrXt0BxcQKvrsVpxTGZiZ4lFs6SsropeITQywmdrdzd+hFdVj8SVqGWK5Zq0Hpcscn0Kj8Z39ox5RadQLWY8YGohg6kj3s2fdbZuQw5ckUR0MjqJjCdwB+1XuQTa5+TkGSIU12u/K4m1LhYrYQJH+ZzzbnO27Lxnkuz01GizFI1h1TNc+ORoa8MNuBHQj3ClZFG17ciFr55BsA4Bg+Z3NlU9cnNGgdtakia6OVr7I0bgArRpslJorzQt2QQRzYGVk4uYchuNlSufEY+rgTuKsWL/NcLi0MvDuU6XIyJWRZEb9U0hJe0Oa4FrbIG3Xuu9kZWTkxfDSVbB9jfv1/gvP+KOIVw448rS+Vj/s5PT2W2MkZZxP0bFHK/GjdofTmnTsLFkO3F+ynyQHSAvidJTNT2tB6jcfntXut+GO1cNxnHqYWH8lNJBFI7U9gJ9V7CPGGK3TA3eyfMT6k7lVCycSF7Y369ZduBp3AFdfZXwAAABQCLoOeI5gzSGSadLWutovy+m/dHxzOFOjk0W8gAC/NfXf3XQRAc+OLIha0tDtQFWGg2LuiLCxI2VrWPDHtMZLiX15rIPW9un5rooQCKIsIDlxyu1sgLJgxjgdBaBpAPUuvoPz2W4hl5DXM5gDjrppog+4sWK9+yuDHh2GnYdG2aH06KVAc0Y0rqe4SuF+YOcdx6AWQP4rfFhlDgCJNIcCNYrTV9Nzub+SvogCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIqnEc/F4fjmfLnZFH7nr8l4XxR4k4lxBjsPhgfiRv2dJfnr+Soz6iGFeovwaeeZ+k63jLxvg8Cjkhxo/j84N/VMNNZ/fd2+XVfDvGkPiLxxliTxDn3iA3HhRWIR9O/zK92zhmBBFqOieTuSb3UTMGLWNGPZPVgJFLwNTrs2R0uF7HuabR4cat8v3PmB8B8PDA1kLPkFG/wHjjysxmD2X2NmDBGHMdCwuPQDalzn8Ph0Fj8Zlm6L9yVmlLJF2zUlBrhHxXingeExlml4+Wy8pxD9H1SaseJ+kneuq/SjOCwyR/bRkN9jX5Ktk8KxWPa2KF7wegtXQz5UiueLE30Py7keDZYZC8tyAK6aKVJ/ht8I8jC8jq8x3S/UcvDMeXUZccBrNul19VzMjw9w6Z5BieAe79lpjq5J8meWljJcH5mk4HlvNtYYwe5FH8FWZDxvClBws2eCQHYx5JBX6Jz/AAdC9+iNmseoGy4/EPBMcZDBCX31Nqz7d7kPsJ8v4V488f8ADNLDl/GNHbJYH/n1XruGfpozMchnFuA26rvGkP8AAj+at5/g18VaceGG+92uPleCJqvWD8lzz8UuwenyR7nseGfpo8K5DGmabPwXn9ibGJ/NlrvYf6VvCUrho8Q44/vh7P4hfGM3wlkRWOW+vUrmZPhzlD9SAelnqrVsfRlLjNdUfpjhni7gHFZOTi8Z4bkSHoxk7C8/S7Xcj4q2ICHWBGGgAV0+q/HGRwGUE7aAOlbldLgnGvGXCdLeH8Xy4YWf7qY8wH6Gwp7OOJEdzT5ifsXH4mK1amkP7KzJOyaIhhq2dbX5k4L+l7jGHOMfjPCmZDf/ALmMSw/gdv4L6X4W/Sh4c4g+OAcRbBMekOT9mf6FR5j95HbT6M9jxNrn452rybBecOmSK5bGjsvVGVuVj83mxmxsAF5XiDHxTuaXiulV3UJyo6lyUOY0vLXtttmvZSSyfdPLjr0A2VWf9Xq8x3+SiyJfKd6WPJM0RjROZ7eWPoRj7vsue/Oi8zZHgSMJ+qhyc6KJhkc4Bo3NleH4r4jxufJ8M05Dnn9j+qzq58I0JKPLPbjLZKx1u6OXL4rx7huAwnLzoIP+Y8WfovBcYk8TcZx+TjTHFj7RRbX8z1XC4Z4RzvjT8dwySRx7SOI/+VtwaJZOZS/BGTNq3B1GP4voe2yf0g8NMhiwDJlSDpoZX8Vw83xp4kllrF4Pd9Hl9rq8O8L5IoRY2Pij2ZZXocTwTkSAfEzTN+mgV9Fsho1F8RX4/wDRknqm1y/y/wCz55k8V8aSQOe/4eAdTQ3/ADUXCpON5k4hysvIIf8Ats2H1X2rhngjhscX2mOx7r6k2HrpQeFoWMa3EgEjj+wwLR9nhtppFK1Et1ps+ccM/RxxHKIldA833kcvacC/RQHj7ZwYB1oL6/wPEficHx4MyMa2Mon09FcgkjE1BoFDc+vsvlcuonHJUnwfRY4Jw3JHzrG/RngYJDgOY072u6zwjgxMje1jGHqCvXSN5oit/L+ixsyICaqu9+qzzbbdPgtUqSs4EHDIYzRxmfNvQroRcKxy3VKyr7HsulzGRsbRElDVRHQBVJcm/MSCCN9vdQbrq7CbfREb+H4+LJs1hL+gA6BW/gWBltZprqfRa4QZJOGE6PmVtkS0w0S8699HRW47aciEnykRzs0gMjj+0A1XVghaRlkr9BBsffZW1+iusN+R7hq6kfyVTImZzRHHohG5vuSFdskuSO9dDHkijbVefrXZcyfKhk8seskGjX7HzXQmlZr+zdQuhtS5HEZIWy/aNe+M9TtRPpSungbRyGVWRHKyGROex7OTGRb6svPoFSwReXI5r6s10q9lFmZcMmnmPMw6aAdmD5BScGLX8QdpsNoWAOipeJwNSnuR2Y8aUAOI3/aHWlQ8QQn+xso6xbxdEe/RdYO6jQ0h/cdlT4pHzcN2O00H7WeylJ7HGb7NfuUtOcZRXdP9jwnD8nMxsrmQ5T42jemf0XZ/tHIzcjFiyiCOeKNUSqOHwrNm5r4ISQJjGfXZXcDBy4uK4rJIjYkFB49DuvpJfZ5pzVNpfj0PnI+fFqPNP8up6ziepvD5SWa2VvXZVsMRS5Ebo3hhOuvX2XRyA2TFLJCzS/b8VzeG4U2NkveXDpQtfF5IveqXDPssMo+VK3z+52cQUzzV1Af7qaSGUvkcx4ZHtsGdFDG23hwF/RTW5ri3cEj16+i9rTRexI8nO1ubJhEWvOiZhHXYKn4jgmyOD5LY9nBh0m1sGvjIp7yx+57qzKyd7abINBaV3Lw0yCVpo+LcQi+HyGu5hkkrWSey9H42iMsfD+IB7LkhJAr2BXL4xj6GOZFESdZ1EdK/+V7vgruFZXhXCm4jGzlRtDftNha9zxDI8M8eVK6b/VHhaOHmQnjfHC/Rnlv0e8TZBxaGLMZzIpWvDSOtrmeJOKPy+O5WRo0COYhlHt/kL6BFxTwxBkMiwxhwk7XHVn2teB8U4+PF4jy+Y54aZrNDsRYpR0eo8/USk41x3+ZPU4PJwJbr5/gvzy4svBMLJDwMggiTfc7qLw5nwx8QyITcwkFMeN7Houbwrgz+IxzvblxwwweaTWDsPVdXgeFwPFyMfM/tAzSB4pjGUCVbmlF454bcnz2fHdFeKMlkhlpJcd18jkTveclrgBBLHudHUUfzXV4jKI+IS8+QvllYySM9OoUXH44YeN5pbACZH63egv0TJZLLw7HzOXjPLwY9zua9ArYz3SxZPdfxf8FbhUckPZ/zR0MvIvg+PC2ERtY8xP8AWuv9VxZ3uyGC3OJgfy+tnR2HurPCZZJmZuHMwM5jKDK3J7KHCjiHEo2ZDTytHJJ9Ceh9lCfp3V/a7/B/TJx9VX/cq/FfSN4mTSmDGxoiJYnazrNLscOikmZNiyzYoM7OUakBsnoVy8KY4vEGz5Lizl/Zv1nr6q7jCGGeV+KdEZkJZXfuFLJHJlk4J0mrXH18DmOUMcVNq2nTIODn4fjkOJI8CRk2h7yNh6q9xc/C8UdjahyxNpjN9fmqvimJkOeMmJhvIqQb9+634tGzInxMxkfMD4RYJrf1913HO8kZ/wDJV+K+mcnCscof8Xf4P6R1+L588vC8eaeJulrDG6u3/wAqox18IDTrDRtTyfIFJwvLJxsjBYGUxnMGs9TSo42ScmR1PMbekkQF17qnLj8zHPCnyunyLsc9k4ZX0fUlgL4HtJZsOg03tXVWXz86MM2Arr6qF7ny5/L1MDYmVdbFa4ULTLyRFrF1dr59wbVHtKZZjOoaw4bv0fRatI+8G1yx39VmNn2ta/KD59/Tsj3WQwbAEkBc0/EiWV+khzJTLi84DRLj04Edx6fzXj/E7w+QjSbsUAvWTzOjiuIbk2b/AG15niuM+Hi8bJ9IbOeYws6Edx9FvguTHkdo/UvC/wD9txf+U3+Csqvw3/8Absb/AJLP4KwvdR4fcIiLoCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiALwvjPx3Dw2R2BwprcjMB0vkP6uM/zPsqX6WPFWZh4MvCuBtkfkmm5EsXWIHsPf+C+SxyZ7PspoZrFnZm5teZq9fHG9kep6Ol0TyLfJcHueF5c/EZpuK8VyjkGMeRzjsD6AKfIfJlGKWVhjx61EdNfz9l5XhByYsCOHQ8sY8y1Vb9r/AM9l0IpeIujjbNJZeS+te1ei8SeSWR22ezCCxqkjryyAsbpewUbPm2Hp9VfYGRs5sb2k9C8ndcjDD5J4z2A1vIdW3YLsYkc7iX/DPeez9qG6ljgn0ZyTa7GftviyyMHSBZNdTatDkRs1yO+07E9gtJRK8jmRaLNdlFLjUwtMYcTsBVrZHDFO2Z3kdUay8mQ6mTNI6KqMeYPPKxnSWCeZ2HyVx7Gx0BEwf9CkzJZm4nw8fLo9mNpSeOKVnIyk3RzpWupsLHgyvP339OirjGYyQNLOYel11W2FhQycx8hezQa2f3XQxseZ+EzJbkPIY3ZlAlZ1j3u2ad21cHNyRLKzTjMIJNHbc+wVL+z8nl6ZoQw+nVX5X64BMxpY6QnQCKPz9lBhxuuPJyMkva/cVJX8VVkx26ZPHPuVzwgZJ/UsAHclRv4HjSsLW6CfZl0uxFFG0Oe9+xN7vtR4nw45riJnxF/W6AXMcUuDs3weZ4j4acKEccLB1drNrm5fhF80Ye58f3ugZ2X0DGh1iV0ePRFaShfEIHN5IsbdFZsa5srTTPmWR4GxpmDXENQ9AuVl/o6x3E1Nv7BfVJ4pmxh8TNAI6d1rjcPdKWzTP5Y9D3UFLI+jJuMO6PiWZ+jjIu4amb3eDf5Lx3Gf0e5ZlkkyNZ0HyMA0bL9RDhcTHufBtfWiufxHhLJsZzpImSSDcCtyPRaMeTJFGfJjhI/Ofg/xP4t8HzxxQk53Dga+GeSQB7E9F73M8fcBzDDLLNPiSgglj2Gwfn0Xb4r4Ow8rmSRYrw5gt8Q7r55xnwdLxGQ/2XhsEIdUjyNBPyWj05fvcGVqWPpyejyfG3h5/wCqyXzkd44yVwOJ+LcnJeY+G4ZYD/vJ+v4BY8P+D8/Iz/g4MCAQRGnyMeT/ACX0jw9+jpzJAZmV8wqsmKEHzyWQlKa4PlmJwXjnHZg3JlkkB/Y6D8F7jwx+jeK4+cw2TVUvrHCPC2PgXUbDX3V24oIm6ejCNhSxZck09q4Rtx441cuWeO4N4JwYP/47BXWwuzL4a4bIypII5APumt2LvyyxR/Zl+9XstWCME9S0bm1UrTtPknSrpweUHg7EOSXxyloI8wezqpcPwuyKXQZXmLroOwXft5cCTocaIA/grBJ0aibb1WlavUSjW4o+yYE72lIcKwcaBr4YI3lgrfdWdGPDEX48LGDvQWRIwdLfrNH5LEUjGMdVab6k3SjPzMj5bZKMYQXCI5ZubjPZvrLLBVR5EcLYwNUlh0h/krLzpfzXu2/cpDyDFHkBh07l4WeellkSfsT85RdFeOflyubK7v8ANXDqmjLInsGiiff1VDlvyXyPDBvvfsrIPLjsV5PTuuYdG+/QjkzLt1ICZAzf7Npk0jbqFXmLRHyg8CUE3Xfsr+QWzsE8L7dJ95h6D5LmnRHOdcJuSwCfRSlo4JiOdsjgzJKMoikk5ZsEhWjkH4hssb3MsWYyKBtU3yuEkbB5ms7Xspo9HLEk0IfLu2w7qpY8SjwhKd8suZ8s8cDZMfzuvouTLlDL4vDGzWIjCST7jsrIY/l6RDZqwSdwqcbGw8zyAzvG991euXbK3x0Jhl/DRtx5AbZZseiovydbOTGzRG/cX3W2cGxx8yNjzI8aCRuuVmSGTEa+J5aYDXpfqpfARRy+IVjSyiOMEE2WX1Xe8FMc/AdlhklvfZ17leL4xk2/4iR5YexYaK9p4IL/AOxIcuR5osB37rJmpNUb43t5O9HHypdUjw8k/cH80EXOc66DTsB/RbiSEv8AtHBp6ggdVW4rrg4flZLHFgZGdG+5NbBUzW9KC7s4mo3JnDy/E8+Nm5D4oWOha6mACtvW11sTxBh5xiYWSQOe2i4i+vuvGwYsnxOl75BGWA0R1U3C2PPFYGCUaTOCG6uy+gyeHad420q46/gfP49dnU1b7nt+L6o8OTSLIG1KPguW7Nn0ki422bG/VTZMrS0X01ir+avcOENtfoaSdr2XyKTeVbXwfVuajhalHn3LEcfLOpnZa5mgyB8jxZqx1Vhrtcrojs4+ir5ePHcDJBd7dPRe7p/uKjx8vUMLZLdt/JZjLhIGlxquiltkVXGHi6DB0VXJkfHIXx1y73HoqNVJQrcy3FFvoj5xxmZmJmTwB7wWPe3QO2+y7UccOZ+jaaNkh+yeXAelFY8X+Gsrik54lw9lzOFSRevoQV5rGxOJ4fMxcrGzYI39QGHc/RfRY8+LWY4NSSaaf5Hz08WTTZJJxtO1+ZzMc8rLiedgx4N/Vel/SLDFFmwZkcgk+JjBNCuircI8O5WRkRz5bDj4g3PMG7x7Bex4pwqHMx2gMYbB++PubbKjWa/Dh1EJJ3V3Xsy7S6HJlwTTVXVfNHjvCeXjQjOZlyM5UkNAeq42BM8ywNhZrkjk22/kr+b4by4KEc8LiZKsXsO5IXS4ZwfBxjHO+YzT9GUKF+qt+3aaLlkhK3KuPkVrSaie3HONJXz8zHjmLJifHmPjr4hgssNgEev+eyscPfFk+HCwOY+SKTmA1vuulkYOLkxtfmuGRJ92OMdGevzVtmDj4kBhx8ZkZkPX1WOGvSwRglzGv3NctDJ5ZTb4Z5AS5MPHMfJhhkLbDDIGGuqveIOHy/FSMxiWRvcXg9ze9fivWYxih1S5dmToOmw7BQZujKyIXzaHwxBhIr9s9Bsp5fEpbt6j2ojDw9bdrfxOCeCzcQg+Lkjbj9Ij31vCi4dgHGf8NNLGQJLAAJ29F3OKDJlnE0pEcIoMYw97/wA7qGmysadDzV1WxJ+a8/H4lnxx2xf/AF8jbPQYZy3SX/ZW8Q4LcvEG7wYwwx12C1iwocrhbYZZSeWNe/8ABXIpZpJZsdkLBIyMAl/Ue34LnY8bseeXHN2Dr69lW9XlUUoss+zY3JuS6nXxuGcKhxBC8ci/M2Qblnt8lycmPOg4hFDH5HEEX2I9V0hHzg2HWD3J6Bc/NymY/EIGF3MAsVezAe4+q5JylkUpPqdSiotRRYwIWwxSMkfrlPUn0W84bw+ATBjRLKLo9h7LbLycfGZ8Q1lzAjQD1f70uY+XJzJA2Vx1u/zSZMsMXDZ3HiyZOUiWIuMcbydF+avRZkkfEHaTrc99KFj/AIfLLJdLtFDdXpyBpdFW4Jb3Ko0mbzJuuxp1em8mMb7qznBt+dzgBp1tpcXjeSGPhMhL9DwQD7miunKyQx86Nh5b9r6WuHmBkvEIYX6i0vuz2AXrxfKPJl0P1Vw7/YMf/ks/grC5/h+dmVwTCyGVUkDDt8l0F7q6Hh1TCIi6AiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAuZ4i4izhPBMniDqJjZ5B6u6AfiumvH/pQmaOE4eMSPtcpnXvW6o1OXysUp+yLcGPzMkY+54XIhfHhySgl+RO/W999z1tVm8wiOJ7yDuXvrtS6kuPG+U057PUdisR4bSS2iQSB/NfCZtdN5Oh9hDDGMSnwzBfKebIy3S+Yiug7D8F0YuHNEs2w3poJ7BdLDhp7Q9tb7roQ4hOt5dt2CuwzzTSKMkoROJiYbTG6w0OkdZ/l+S7OPjMZDHHZ8iYmKNZLwQFeIrzdlu0jyVukZ80ot0jmTxN16TddVBELfI8tIrYArozsPMbSiLNX0K0vNNcHFCJz2D7fRoN9QVl7dOousR/xKlygyKV0m5cdgk2OZY2dtqpVPUT5VclqxR4fY5mY8F8bBQrcCu66D9EQEYBZbKJHcqEsi+LjiYDtuVJxAcy/NXceyhDUuNtosliTaRU4hjA48hj3czya/QLnYbK4V8PM0GaIGiBtVrpSyOdjCAdFyseVnx8rHuI5lAADtSujmxyi5MqnjnGSSKOXFCXwMjeQa3NK8wlxghjlBII37Ba8RxZoJWsY3UwEWO5TBhdFzminy3YYOoAVuHa7KMqaaLMmfnGM01pGvRoGxH1UZfIY45JMcESsIA7qp4fnlys+dpHleSKH8VbD2ZXH4HY8n2MWxYOinKCm7QjJxirIsTW1glfI8xXRDzZYrn63NO/mAtjO30U3wIk+NhAFEa9x27hcjD1yv5MlxyMNxn1UYwTSsOTTOuwF43c9hZWyhyDLHpe1j3gHp6rrwaJxoO0g6qx8IxsdBvbYLs2okoxvlnnJeGzZOQ2cMfG79og1foqfGfDs+QGMALIpTUxjHb1XtsbHextvrR81Ox7TIGMGgVdlISa5IzjF8dTz3COA43CcKLGxGaBH1JFk+5XW5Qp1AV169Fa5m9uoOG591y5cmLmOia/7TVuw9woNdyxS4roTNm5R0TyNYXdCVUmmGpzmUXhmsALM8jcmAUwgVfn7Uq8DLy5DpNhmn0FLk8e5UzsZtO0bfbPDXS0LNaB8u62iEoZqkNO/YruVubEbXlh5mvqOwUBll5gEugWSWPCjHBFdSTzN8Ery2OT4maUAB+4P8lHBkNkx3PisNfuPl6LL4m8nS/wC39Pkt4JIWeZsdBjKA7E+imsa3dCtzbXUikl0vBINSbX0WDIHwtYYeW2S/qsvLnPMszwxtWyP0WJ5mjlvNeeO2E9N1JfAg6IvI6TUS/T0q9wVLHKwxuY41e3vS0DnOI1sEdbl/Zayams5zGB5ZdLlNEWzYahMOU9tPFLc8yNhaTv6+iiOVGIwZK6WxU8nijx5CQC/pa66iRXPBdlne3H1SN0Qg1sP2z/8ACilk3D8gAmqZ7AqriZck3XZoJIv9s9Ap5HSljjyzN7DoFC7RPoRZMDNYELNGve/dYjD2ymHSOWz/AHna1KznSR/7RHCBvvuQq8ZaCWnnyC71k7fgubebRK+KZjIycWKfSHkySHf2VbLlZFLreHlnRldeitZMtYjn8m3bbem6o5MrgQ80wE9PRRaJJlZ8rxHrlm0WKYAN/quNn5bZIy2mSNum7fmF0MuTXkBzqojp3r1XF4y18OM6LX5jZYVFuu5bFWeW4xka5NczhOI+nM/hS+m+F/s+B4XMZf2INAVuQF8f4497HhpcHm627H1X2Tw/oHDsQOs1Gwj8Flyu6NtVE6+M29Ty0iq/Fczxbnvh4fFCCakfqIPdg/8Aldp+4ayN43G4J3XivGcWZJn6hDJyw0NYQNgF3Qxjk1cU+i/cy66Thp3XVl7D8SF744czFjkb6j0+RVzDx+AT8UbkwO0ZTAXaBYAXlMeYmWL7PmaKFdPp+S7fhfGx3ZORkgTUQGAXue5Xp+IaXFp8EsuO0/ZPh38DzNFqcmbNGE6a+XJ386J08TI2PHnf/AFT8AxpociVkgHLrYjoVplyR4px5nR6NZNt9qpdPheXiZVuhB8ux26r5iKi8nPDPpZTyRwUl6X/AJJcVjpC50e5v8VHm852XAw/v9Se6uwyQiMuDgyjv7qB+PNlStm1sFG/ovZwJRxqmeVkdydmMlsQErg14ddWDsubE58xcwN6mia2XXk16eUWcw12UPK5IA0NY672Cza+NpNFmnlVogxw+GM3PbR1I7qSJzA0d+tkrMBhMr4QwPIHmH7Cu5GJE2AvO3l6BURwtx3JlkppOmc53JmlJd0Z9yh/FU52PM7WCnw30/wViSR7XlkLNDiOp6FQP+I5bAfPN+/dbrsHyScTkSRfEcQlZ9+PQBfZnsq2SYYp2x44YTFvuOhKmyWzYQkxmTmSV7/OI+w91BFic3LD3P0RgCmHaypQirsrcuxcxCwY7ZtFSPksF6mijdI4PjZI8x2SQO/utvihkM5WS5jDGKZoHdZxslzJWwmQlodZA6H0WzhcFHxNX4eZGPiZo9W1ssbD3W2RI/HxObLb8iUkm/2B6D3K1zMzKnkLI3yPDDubtUcnJfE+KJ9HQLNm91RmyKMXTNWlxqc7krSt/kVMyHI5fxG+o/iruPkuij0OaBLQFX0UM8smU/WQwbeYv6UouIlgwmsEjHyl+4Z0YPmsShHA5TXt0NTyz1bhjlxz1/gnjzjG1sMMIb57kfdF5+a42bHM3MimY4Al53Jtd/hOVMeGCKDhvOcDZeff3VLivD55Z2y6Aw6SdF2br0UoTnJKV3fwLcmHDFuLVV8eptjzMMUjdL9R733XNnLBkOkmYDKPQbhbQNmhjaZpbIr2V58NSRuMevzcwi9yPRSzRlOLd9P1OYnjg41H71/Fpr2Mx4/xMvxOQHMDIxUYcKH+fRRc5kTA+IG9rv1W+ZDlxRNcxuiEmzT9vkoZA0FkgJFmzt39lTli2vil/JbiyKMr6Jvn/wDnubY/Nlljm0s1Pvd5pWnuhieLlbVkAdSfdUsjVkFhY0x7k+1KzhhhPxD2Xe4C3abd5rR5mpcXii0+aqvaiACOcEsaRGGXoI2+a85xAN/tjSB5SaobV3Xp55PJkMDRqeNAodDa8zxGCeXi2QAyix9Ajt3tez92NHkvln3/APRTmNy/B2OA/UYHviO/oV6xfMv0GZ0UmJn4DHtcWOZLt032P8F9NXr6eW7GmePmjtyNBERXFQREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAXgf0pFrs3hsRF6NUn+fwXvl8u/ShJM/xMyKFxuPCqvckrzPF8mzSyfyPS8Jhu1UfxOdBNNz8cFza5Zmkva/QLbhz54+IwPmyWTMlY8yNjNiOt1QY3KmbkM+H+2exrI4x6Dcq5hYswGVkx4vJfyyyOMDr6lfEY4ty3fE+ultSafy+vz/Q6j45zh8OibI7mZc9vd7LpCd5zc2QSBgjAZHqNC1yMPLzHS4eS7FOmJmiOMevqrPJmfw2WZ8JMrp9bmeq9jDtrfHueflhzUq/9f+CXD1w8Za92YZ2viOsA7BSTO4hkxSZjH8uJu7W+yo4k+nOmnETYIwRGxp+QtdnizhFwpzQd3ih9VoxtNOirI6nHjl19ewgkMmNHJJtYs2tQWlrdAb6n2CjiL2Y0QIshtUo+adUl1vtsoyypPkhstuiOVzpn+U0WfmrUhDcexsa2XKxDLNlEjSI4jQ+av5Ak5Ysiyeqhjm2nJlso8pEUQYyaUhu56m1ljWvDnSWD0o+irxxsM7f3uvVMp00hexhAqgCUjTVsm1yYbypajYPMxcriuM7HyfjKFRvsrs4UPJe50rvN6jsoOI4zctheBbXij7JC9vPUTpvjoaZmoY0M4H2day+t1xso8mB3F2Ts5polgG5BrQF1JS0cNhwZSebLcZ/4ANyq+FiiTL0S+doIyAO22zAf4r1sOOMYHm5pylNJHEiLuH40k/O5bt+cew2VnwZI6XLL43jSRbL7j1UPjiPm48mDoqTJkDB/M/gp/CEHLzJGMBaAygfZV00iUfv0j00rns+1ZW2z/WlzZ+HmafXG7RLH+bF1RIIpB3tu6r59gtmYDqj6j1UKtX7F8ly17k3B5ficIZB2mi8jxXZWpcqn7mmn1VTH2kM8PfqPVRyytLMnGkbrPVhPa1FxbdnPuqmTP4qWwaYGmY9iRsomcUlDZZHx0B1N9FyJM5zI4oC2z69gqU+T8ROWaXsHc+ymoe5TLJR6CLJm5skZuZoFt7bqESSmTXk49ZHLvlj0/qocfOijxMiITCn0LPULE+W+LSJSeY+uWbUnGjimdGN8EsEjIXGo2aHnuz5pPG37PmZBLasPYosSOGSR5cQ3L0ecAbSfNTPZZk1yMY1hFM9fVd7HSMF9N873yX98dgs/ExzMNw6KvyV1UgjyWRaIat/R/cBa1M97nEBmgbSVsfmlC/YjMtwNijeA0XRB7WsZ8coDSHERvIJYP5KtE173hwaw1sAOpKkl5g8s8wYPx0fJR6nXwJ5WOka6XodvelBBkwicQk9TYvpS0klgB0GWaaWjW1CvVaMy5m1LFh4+oftlmt/5pFc9CEmXWPmzm1BHIQQQQBYVcYucycsyZ4IBQoF4sfRVZMvMzcdzZsub7R2wZsBXyUwxhHE51b0dzsup2RZrFFjSR6JnnIJ+8WClHkRsEuuFkekj77xr0KRktv8A1TiPb2W2WW0ANPL6gHuoS5iSjwyNrJSGyZGuRvQEbBWRK98HJjyDBXYi7Hoqwma+AR6qHWj2UL3xmZsbKfK/zk9K9lziKs7y3RtYkiJLCwsO4e3YqucmZ7+pa0bEAUPopJWgRkHLG4+5fRVHyPIjZJIQ0P8AJY2I72s08qXQujC+pc50bMaVx3kO9Hp1XMkk5j9HLLDv5D3VjJDuVKyZ4j0AbDvuqUjZjG7mE2N2Ed/ZVTzSfFFsMaXJXIZIxrhGeY/cv9K6rkcb0SxjSHvrro9V0xEXweXnMJ2O2yo5HxDWU7JMY/4Bus27jk1Ri2+D594we2GhGHiPvXUr7Rwh7GcNx6aRcLD19l8T8WsyBL5LfrPV+6+ycH0v4fDe/wBmwb9LpSk7SaLmmlTPQRhrRzS2yB+K52f4gjxsmSJmK2ZrRROvqV0I3MdFo6GuoXh57+LOVG9515JHstHh+lx58s/MVpI87xDUTxY47HTbPW47/DufxQ4c8bWZXTQRQ+VhdPDwGcJLo4IRy9ZeCT0BXgowY+Na32f9Z3IdV7r6PHOwRVRJ6WV3xDG8EY41J0+fxRXosizSlNxVrg5+ZE3JN5ZNG+R2rZdDhmDFhQl8BNuGo6uy5uYZsjLOgWyDa/f5q7wcuyMON0spa0CifkV42OlO659z2cqksS549joxiEFrpGB1VSmlyWvvRp1dPRQxF8j7O7aQDHZZe7qvbw840eVNeo3ZJLBFQea/Fcx8krpy9xu3+vb5LfJJkeSHkUdgoWPc3J38x62Fk1srSsvwLq0SiECQuhawSn7gIqvdMjLyY2CNzTK2wDZ6LTJiYHRSSvrrf4KseJNLdDIi9oPY7ALLFuPCLHT5ZflnhDNbmMFDyAEdFy5nwSMlkbLJ5K+zvp81txHnTRiLF5giB2IPRTS4MEOHDgcrmOHmkJPUrW4qCKd27hHLiyGmSXIk5YBAHkZZ+pVLiGSw47WxNNH9s9VdycZ0UB8l+ewOwXP5BdIGzTQAUSa3NKGOdrb7iUa5IeHvyOeMbWJifuAdu66MsMMYNTPnl6AH7jPlXVawYzcWMth0Fr9n0d3/AF9Fcix8abSDk8hv4X8gpxXWzkn0oq4wmJcyBoo3Y7H+q52Yz4bMD2PbJo3kBGwPoV2n40EDY4ObPJzLJMb6/HZRzx8HxoGxQwF5qnve+yqM2JZFV8mnTZ3hnuq10/A4uRmvzLhjaIw8ims7q18MyVjYcVxfINxt+N/mrMbccsc/huJy3ED7R/b5DupGROizDoiMh0U/ruVRHE4tvJy2Xz1Se1YlSRFr4rj4bYMRpLd/OGXsnDoZ8aeJ/O1TPO5ew7D2CngdNYayPktjFdO/qsvl0xibTIXA7vrZaI4Eqk3x7FM9XKacaS9/icfP4VlxcbewkEyi7ugN+iuTxGERMEjC7dpeTQVjxIyXkHKEDyYhqB62O+y8/Bmuz44iGPe0m70la8ag3wZJ5clc/M6efHzOUyLW8M3fZtZf+oZza0/s+wW2PIWYksWmga8/e1FJK/mAA6BH94119lbkguSiM2zZgtzWSN0A+vot5ZHB40dA3YFbsLACXtLdY6qAB3xheGbja1CCcGixvcmRY4cMl9u32kOy5UoefEE7pYAYpQx5Nkdl2MzGdzI522Bs070s8Vhl+Ob9mzUwB4r+a9LEt0TFk9LPTfonlZgcflx2wwQQyjSPL5zfTf5r68viXhsZEee3KlDDTwQdFUe1br7PiysyMeOaM2x7QQvU0zqO08zUxe7cTIiLQZgiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAvl/jEvm8X5LI2ttgYLPsy/5r6gvk/iXnTeL+Ita0tbzANY9mBeJ4/KtMl8f4Z6nhC/rv5GOFwubmc+UkOqgA7ur0xcH7Cj8/VVY2Sckysj8zGUxnuvL+F/F+Zm8e/sfimGyCc6wK6h43o/gvmcGny58UnDpHk9rNnx4pxUu/B7zGuMiztXRXYXWwl3lJ33XiuD+MRm/2hzcNkZxG6tn9Qu1wHxBjcR4fkZmjlxQbO3te3i0ObFCnHp/JgerxZHwy+cNmVqgcd+ur3KqNxMxnEB8XkCTHj2Y1R4HifClyyySGWAEinncfVW+JcSwYcxmHMXsc/ewNt/dSzaLNGklz1JYtdGnT4JZJtb6jB6bn2VOOQ6phR6ivdTPzcJ2QMaKdolGxBHp1UOGYMjKlkgnhmoX5H2sOXDlT9SZox5cbXDJooxDFW1k2oMnKklmaGimdBspmNEmYGaXkaOvooI2vfkauzCRVLibSpdC+NXb6mWNkilfMdLj06LTJcS+JxNOkINLoSR7gdDdlQPx2ST6zvo2+im4PazkZrqyL4gnJc3RbQLKlw2ukG9AHalmWONrq+6T0U0EbY2uH8lLDFuas5OS28HnuJUM6djXvMkbOWyulvP8AQLL+INwMgNkYLmkIcfSONm5/Fc7LkfJxIky0TlSvsdtDNlUnxMg4clf6wTiBgf3Jlfv+RXuRpR20eTJty3fX1RZz43f2cZv100cJcHnfeR9fwXY4Bw/4DHDJSS5gon1XKj5/MMJh5kJymRgD9hkYC7fAOIHLwHZWVTJTrk0D9wHquTW5VRLFxK7DMpgz8bGdFWthOv0pTFuuTTIaMhLFQhm5viuSKQVHHjsN+5Xblax5jcG3R6qh41VLqaY5G25PocrAEkOQ6F9kaqHyVjO0R5YZM2w8dVNJG1uYH6qIO61ETMmORspuSM0D6KMK/E7NdlyjmeIIYYmMbCyiRdhcbH1iQRHcDfcLp+KtbBCzWegFBqo48AHLl1mqokKyCfQy5WtwkxpGMkYYDIJTeuMXSnw8bPkIa7EkfDez5NtA+qyDLGGtGcY49wGMJ3v1TlQvj1PleKGkg72pOSIqL6l3muxiA7l+TZj43gn6pkETxh0wf6x6DufZV2GLHiEQAj7gnqVrjZHO1RRMfzAd9qDPe1WW9C/A5sTztIwbBu+4UL3xi3ySSTRn9gnb5LAmjhY4Ok+I38/YfRa2+eItZCDET0j2r3UkuLI3bo1eYSKY2THj6Aj/AD0WIsfEieCx8zxXfelDkSY8UTpQ46gaEb9xfzUD8mX7kbj07d/ZVv0vkknfQuyGLdsHk1ireOqggk0R6C0yD9wCjXzVeSMB+vmv1PO7PVaT5DmPLI3Fjr39FU80bsl5bqixHN6MEI7A7rLJmyg1IS4fvqhJkP0fZ1p6m1KyRoDXMZZI7qvzeOCWwtl92R9m/T0VbJc8RnW0kV9wdluySgXn7Ty/cHVbS5LIySGfbFtGv93/AIqEpSkquiSSTuivEbPK0v5vp6ey2kbDIS8x/MjqFpI6KIBpkfv1WhnlDDLr1t7ArPaimm7Ltkm1xVh8ujXoxxQ7kWqb5mSMqTmCug7FSDKc+JztA1X26n5Kq9zDP53V7d1TOe6Kce5ohiqTjPsTfEAYzg5vbTuOnyUTJHAhjHP0DcUVvkahAeYzmOr1qt+q5/MqIuDiHX5vkqnOUZ7WXeVF49y4Mz5LwKJfXcX0XMyMsEOeHbMBYCQrOWXa9esEn1XIzX3ex360uwjTblydeW0lHhHnvEMrMmB2wN7V6r6nwZxGJCwNsaASfovjvid/wuNs3frXuvrXApGOx4vOQHgDfp0UoXRdnfRd6PQ4T35GqHuehXncGYxY0nDsiJjTzy8yVv16LvYTHxz62uJbW5PZed4rC/G4nI7RtJb2E7A/53W/wrbLNOM/h+h4/im5Yoyj9WdfNdw/Lz8GfFgMcvPGthb8t/4L0zpJARzGM1enYrwnBHl2bw/yWeYHPB6ghe8e6EvL5QAeyh4vjjicIJvhfyc8Nm8ilJrqzmmWHDklbI863EvLfRdThuLIcRjbeRJ53kdt1zpOHRZOW7Jfq1X5x2IXaa4xxhw16KoBeRjTTba4XQ9fUzi4pRfL6m0MTmyBrXnSegvopJ4dOlus6d+vqpcfIBi0Sw2etgUsSPBY6mMq9j0oFe3jS8tI8tt7mzjZBGiW3gG637FQs1MeX6qJ6q1kysk2P2g6PBClEUGXjnQx7D7O6rFqse9ek0YpuPUhk05UDfIHhm4VzFZyscR0xpeNxSYQgbFJdscDub7LAkjge55e95eqYKKSk11Oyt+kxkulZE5gMdHsGdKWuQDEx0hI1EXey0nnhaTrY/QG3r7FQsLsiHmEUA87v9PZWqK6EenKOFxHJmych0XO17KiyP4cF8gt10FZ4sXjLk0OsbAbqOUcyuXb2jYV6LqpxSXUg7Tb7E8GO/8AXFwoA7dkkyWxvDR0A29AtJJYtAiL3kfuDupGNj1h0tQwjeupKnwmOWhHNMYpnbkvfsPauikx8aHyuymHSNwzoSFZ/tDGjEj4I9Da2L+pVTJm5jG5BD3SEaGDouvF/dI4snFIsyzPlkDmzMxMdnZnp0Rk+GzHD8Vkk0gOkPsgA+wVXGwZpxHJNkaGkdD0CmnGP8McbGmIA/cqgfW111/acV9zPEM1sGP8O1scZH39+/p7qCM5BY2QxeYkEWT+QTGihtpm/VxDs3eR/YBSzzSTPPNYyE+g/YH9VVB7nUicuOh0sfKZLifaRsO1OA3/ABK8/l8Qmwct0EbIY9D9bKjGzD0XZ4RAPgpWPdoDJK0DqR1/iuN4siiGMJh9nIHBgHchXqME+EVyctpDHlul5ksuUeYzfp1JWr3knTuYyKt/f3VJ4dCyOHUX8wWR0NroYjHl8cMkJ1AHyen9VJz55IKPsTwRMJFue9oG1d1BPHKMsy+eyeYyMLp4bHR/q6oD7yzlsIjblGwOZQPcfRd2p0xfVEUsmYcSJrsMMYX63k/59wtXh83EgdIe4M3BK72cebiNdr2NAb/muFl50eLknGEOt2gAkAg37L01WPqzFO5EkcMrJnQxMDJX6HDzH1X0XwXxNur+zJTRIL47/MfzXzN+S48ufHlfzozWgmjR6rvNm+GijysPQyWIiRm9kH+hU8eba7RDJi3Rpn1tFV4ZlNzcCDKa2hKwOr0VpeqnZ5IREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAXzLiQd/pDxE6hXOeaX01fKeL5LovEHEW6Tb8l4HyXhePq8Mfn/DPW8I/+svl/JciO4vpW+y+aFnwv6UhKWffyH0T31jb+K+hY2RMxzHCIkH8l4DxLnsf4wEbcV8csGRG8l48hqt7XneBw8yWSC7xa/Y1+K+hRm+zRz+DRyM4pxLh2+rIhyIzv3HT+C9B4IHN4HmYkFnIljjfoLvQ0t8mHEx/F8fEGNDIZTzAQ3qH9f5qp4R+GxPEOXgukoyNfCDr8hvpS+nqVOXwT/FdTxEluUfi1+fQ7XEMCaHhcBkaI5mTkncHWxQ+IJpm4nDM+7Jj5bz8iqWJLjzZ8mFJM+OeIP8AI/uR2XSMXx/hvLx++O8SMPsdirulNu+f3IPnhKuP2JTksi8dwvd5IpNGj31hVPC8nwPivNxgzQC2SMD3Bv8Akqme+V/DMJ726sjHPJJHXbdn+fZWcmRmNx/D4yG/Z5NSvYex6P8AztZ5LdBw+DX4otT2zUvjf4McGyuLyvyJhlSGU3Kd/wBgey9R4f4iMvEe+fSJYD56HUeq43N4Vw/jcrHzTwuAILCLBBHZUuAZ7HcQOIfJ8QHw39NlXqMePNidRqkq4LcOSeGaTld9eTpnxnw/4wRGCTQTXMv+S7vDsjGzI3ZGLK17H9K/gV8/4Zg42TxjDhzNuZcb2dDr6fxUnAs7+yfEj4dR5Bk5UjCehurVOo0GLa1DqlfzLdPrslrf0fHyPoGRH9lb/vBWMfS+A6bqqWBNG+MseOqzh6A6WNxodQvHwpRyI9iTbjyeXGG/mSAAMaZMh7q6v2VnGhpscgZoj/1ce4XUljaZ5IY31KyR5AI7PG35qgyZ0IkOQA5r44Nz02NH8DS96KXH13PJbr6+BRyImjMiMVgRvyXkdySqbZvhoDlhgY0YMYMYPS3ro5Ovmm2iSe8kA9Nuy5+bE34OVj3tZI/GxxZ6dVW73fXuSpNfXsXeHlsnGM9+inaY4z7itv5r0WM8ctt7HoV5Xw3zZOJ8Te6UFrMmh7L2HJBjB03ssz5mbsb/AKa+b/cilDDqlZv6qLZoc/R5X7uU7IXcrT0tVhI0cwVYG6OLTO2muTzviyXmZkWkEHQocTIZEA57OYANmeqz4nd/r+K9v3Xx0oWSj4PSGdN7J6qcDJNvcZ0smL24+uOUmy2Xp9FIXO5WqTJx7HUM3JUMZfLLzSH6QP239Ftls5eRzmwwyQ93gbhQuiRYkMOgPOh8h+4+QWPwUEmVrYRM2aaLuz7gv2WHzmIaC7Z+8ZApVz9o9r2Psg7li5N9xEuxu5Ra2Fhm7gP6hYlmYyWi0sNduyosLtvtZKBvZW3yNdp5nqfORuVnjklKNJlsoRT5RGXvBOtm3Wq6rDZZZGUyJsd/vqvkP+8IXm69VhkrRGWucA7oSe/yVMm5cFm3ZzXUmyJKkHKpmgVvuqnObHpe7ck/5pamRzpwLr5qvkDfQ+VgI3+arllXLXYs8iSkoyLUUsLXyHq49NlrzmB4Gu/Y9lpBLEINIDy72CgbofkDy2fS1Q5ySVNcmiOHHJu0+C6DLGebE63UbPb6LTHmPK1XZ3taZUlDlR6y70Cix9bImtLDv0K5JuOWkFHdgTpEj365Rr7H8lI8t0OcNh6KEsldJr7jZZ2P6yyFyCatV1JZJRe130IWOaCa1agjtcbBt9pub9FNkQtAaYXjSNz8liNrSLe4/L1XFiaVMjLUepyXcr/EPbK6R10dqUGQ9j3yPBr2UstGMu1Ee47qF8RMZce2/wA1KmRc7+BRnYNYOzh6qhkkMBd1PuujI1pZ9fouHxXLjiJYbJFruHSuTqKssyazarlweT8UAyBzt9xS994Ey3S8EwpS8m4xY9xt/JeC4rM6Z8lNoUV3v0XZTpODiLXvFO9gv0ux/FbM2ncI0+38mfFqFOVrufWMLJcAdO46KhxDxDgSTuxsnDfJFGaEg3/Ja8Oe4mye687pbrls/wC8Iq91HQaWObLPdfFVRVr9TLFCO3v7ntPD0vA3TmbFkHOeejybA6dCulxjmvkxmxkBxltfOeGB8Wfj79JhuPmvo+Y77fFeez1n8Y0zxV6m79y/wfUeY36Uq9vkSZGTJBxOB+k8s2D6H1XSM07pGuDLbVUOy5+expxedI7yRkUO1roRSB7Xu5by4bgtFLBjT5Rry1ti6+BtjufJJrELxGBuSVvLkCVlCtSifK+MABu5++PRWY2tjGl+4A32HRe3j3bUedKrbOVHlYgkMY3keeo7K61hElEksJvfsubypuHcQdUMb4JDcbwKI9iuvJL9kJWBhsWxnqqM69KsnifIkii5jnCulGh1XPlHLfp6ANAAHYLo6ZC3Xt5+xPRUOIxNMsZJ3YLv6qhxS5SLE2+rNzFzI96e0nvuVVnEkjyXPpoGgMZ0U0clAs87Ae57qrJzdmBun2UkqdsN8cHB4iXnJ+8dz1WuNE0v0FxsWbVmQMblyW2yPwUMZ5jyRQHd4XKUXZD7yLPLDCGcoSSAbegW8GI+d55j+XGzd4B7LOssAYOo6lRHJbDFy4mXf3z6n+ik3HgRTfJLLyGhp01FZ69X/wBAocsXJI80NAqh0sqK3zT6SCK82/b6KZ5a6QNAeT1PzXI1Js7JUkJZoQYcZmvTHvJoHUqbGEWtjI6ZrBA0db7qs/HdG8j7t9fms48bmvL43Gg7eioLI26SJ7FV2XnwRRhsZ1+pv1KhyBK0fZxAuJs9lK+RziGufrN+iTycyMRF1bEuIU3FJ8ELbM4E0nmhjMYeRqe4fsLkcflJijj5Nu13Z3L11+HhkWS2NrHPYBT79aVLxG//AF/H5jdAo0B7rsLchL7p5qPmS5EZmuNwP3HjsunhjJkz+fqMbRV2e1KaeVvPihLY3hgo7bfNXMOSGWM86UgxvomMA0FKUXLhEItLk6kGO3lAMmje5/7Y2U3LZKNchIhi2e+u4/ioGZvDYgGQmeO63eF1XmF+PcuQyGCBmpkfT6lWxmmupCUX7HK+JOTxjKxw0NjjA0MApUc3hj5YjkhlOG25ofmtpMnIhiOeKZzX2Nvvn5Jw7iZ4mBh5Q0NA6g1+SvxZllx0yueLbKyvw7BjeJ3ZDuSYx9mYzdqxJm48bsdvxNRRsqR7R7+/sqGW2MQOaMgaRu4nYFeLzeL5eZmP4dgPjeK0vf1AHRSxy7UcnGldn6I/Rlntz/DXlk5jIJ3xB3qP8lerXzX9DPEMbD4bD4eLw+XSZWv/AHz3X0pe3gmpY00eHni4zaYREVxUEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBfKfGLTH4oyYwDevm7e4C+rLxf6Q+HvYYeNY7LMXknr9zs76LzvE8DzYKXbk3eH5lizc9zzTp2GIMa7rt07qmeFw8V5UmY57JYrpzO4Pr+CuiPlPE0OkxvGojuPdbQS5MQHJxmTRjuDRXzGLDPBNTxzpo+iybcsHGaJcjhnD5OHw4uW0SGMfZvAorm5nhLhT5vjYo8iCVlUA/bZdpmW847X/ByBwNWeyvMhe+MHan9QV6TyaiUfRPkxPBhT5iea4v4Z4fxyHnuDoMnpzY9ifn6qx4X8Pf2PFkRvyX5QkZoIeKod12Y8duLGWMluzasyMEbOcHdOqjjnq4Y9t8EZYsMsm6uTx+V4flfmCKHJ+xL7NjcV6qnxvgvGJMBsAhbJHA8vY9nU36L03CZubkl5vzkhq6jdbgWPb0W7Hrs6+8r+upnyaLE/us+d5+Fk5/CoM847zlYzOVOwgg0Oj/fZc7iHKZJi5mMRDIIwSOwkH9eq+pdOjVzszgnDc0nmQNDu5ZsrsOuSdTXH1wV5dA3zB8lLJ4twaTEwsrPw/wBewSsmYy6f3369V5fxZg40mZ/auLL9hkb6/SQL1nFuCw5fBBw7Ha2Pkt+y/wCFeQ4ZknDxMvgnGWmAk8yEvHR4/kVLRzhL1QfK7fAr1UJRW2XR9/ieu4FxBnEOH42Q076dEgHZ4XbiaA0nuF878H57cTjAwxQgyx5D2En+dl72OVzJafVHZedqsPkZq7dj0tLm8/Cn3XUq8Z+0y2AWwSQkXf7bDY/moZBC+Mgv18242XuDrGtn5rp5uKzKw5I+kg80Z9H9iuH5yzT9xtjRXajt+D9vkVvw5NyRmywpiN8MgEheBISHkPG1PGggfULmzwzS45hGOPJiCrPdj+66EsbJICAymgEgk7gk2B9Hilry2y6maLEoOoegkH9QrCtE/h2JkHFeIw15pHslv2IXpNJjOgfdK43B44XcQORG7zT4zD17jY/wXYbq106wQOqpnDbKjVilugbws1MeBIBXZQSRMp4PUhbAP6ig6+63kkjf5JBocFHirJ9GeM8UxsGTjRR7GqVCAFgD+UHkCvZW/FdfFs02Wh9rnaPsddNv0DuiJmbJxJmSDbfsjZN9D5FKdXM2neCe5OywLI+0ex4Ox1v3HyUUpvys3bfSlx1YV0SvDwwMeXks6SVdfmoJJYS+hYcR1Hf6JzWl4aGnb1H81E/WS19U75qE1w0Sg6kjU7Sjzn5LL5nm2hzyO2+wVXJlIu2kmtgsxHTEHyWARS8yCSk0j1c8rxR3PkhOTUgtwB1bq0cwHexIVXlgY7zaeqywBlNjaN1DHDJBtNkc2XHkSddDRkr3yBxd07LaWMyvPLIv3W1AHpRPosxWBp1KXlKqZXLPJy3IRQzBpuTYDspcSDljVW/v3WRIwM0PcGj3Kwc7EYC34gWB0G5V2PTp04q6KcmodNN1ZI9rRJbAQ49VsGkM9R23/NRwZDJ2aonXX3gRSo5vFJYpHNhYwsYa37K7Hp5zm4pclM88YRUm+C9y4nsLDZ79VpLIyKQa3MHzXOxsrMyeIwtL6b1ICg4oIzxN0ryC0Hoe6ktDKU/Lk+1kHrIqG9L4HRZlwuJjjeHg7UzclbZk8OFG1sjqL/ujuFyeCO5nEGujZ0v6LTjB52fNNz2cvoBdkKa0WOORQvsR+1Tlj313D8rMy5dENRtfv8lXyY5hqY6Z/M6devupOH5MMUpfG18xAo7UAqOfMxxd5juT0W3FjUZ1GNL9TLOblG27ZNhyPZOYQ0vbX0C87xGTmZEtNvznf0XYxjyeHz5QBYwDyWvOSTMYPM7r1XMcU80pL4IlkbWKMX8yvkx3FNIdwB1JWf0ZS8ufOxtR2Ik/kocyUScPkjijkeSdzSg8CF2N4lOpj2NkhLST+Kryx3RyN/VF+KTjKCX1Z9i4ZM12lmrtuoWZ2BDxCeDJxw+N8l66ujS5PD+NcN+M+G+MjbMekZNEqhxWUjjE0YcQC+/xWHSYY5MsoytcfI1azK8eOLj7ntcLhvCMqVsmLmaCwg0Df5L0fFIycRzYz9w2Pcr5lgZHLzMeV9CpBf4r6aJmyHUHeV/os3iuCWPbGc3JO6su8LzqTcoxSaroUYszJkxhD0sjtS9MX/ZGaI0etHYLnMZDGwv0MJG1lYBeHCVjxp0UvKgpQVN2ermnHK1tVHTcYckRx6qkHU+qmyYngOcWnSR2XNjDyeaxtE7feV2LmSg/6xQZ2AXuY+UeRPg0jj1xRzHWXDsTYWssLn0xkg0sO4ZtspWSMrzS9SNie6cxj3yMa7VuRY7FV58akkSxyaMY0ccbB5i9gNkvN2oWVJK5zIqI6Am1KHvILNG5PX0UEga0aI3d6f7qlxSRPls0yJHxl2llkb79APVVpnPAL3POmrBJ6LbIlcDyS3c+nYKo/S5mk3pYOnquPrZ1dKOa8NMkrg4m9vmmIafI0NAHQX6rMQ1v89hpPX0WmI7lg+b7Ik/xVc01K30EaapF3MFRtA87tvxUFNje5wp5PsssGuA6yWetdSVESx4NUHdT72p7lF7mKbVIie77N/lNvIFn+Klt0cY0v8z6ojtutOY0MoUd6orYcvmNYG2Rv191VSkuCdtOmS81pBZq3J3NKfHjpgBLw3YV6qqG3XLb9mDvvalxJGhzyKGjfQT1KtgrsjJ0S69AJcNxtuPzWzmXITe56AqDIbI4Olf94Vv6rDJJnj9V9wCzfRclOiUYWWGSPiyY31szrvt81z/EMhk42LeSyNgv2Vmd7xHZYSDtXXZU/OeJy5EjHEPob9wAkMqchLE1E0njY/Ja7T167LqRYjsCU8p72A7a2d/wVXiGU2LH1aIfnW/suZJ4jZFIOY9lCib/AGFLzYb2V+XLbZ3IGY8EnOynSPN2w9R+ChZlMz8yeeZtRR7cu9vqvLy+NsaWZ2Jgs+OledmY8ZkJP8Fa4PwPx1xlkjoOHw8LgmrU/JO5HswKEsd8xCybeGdniudFNjNAlJhiFVXQfPuvL5HH8OGcshe+eYGtEPnN/wAF6fH/AEb1jGTjPFps0iqib5GfgF2ZPDnCuGAOxMaGDQN9uvy91bpobW4kcrUlZ4jh/AePeIYJJcmT4LF6thB8/wAyf6Kxw/hOLwt8mIXMGg7EdCV6/CzIsuKTH/aBI6Lj5MLMbPIDgY3izzN637L01DdFUY5S2t2c3F4q/A4rj8Qx7jdC+6v71H+C/RWPK2aCOUdHsDvxX5hzzNPxCb4dhDYhb77L9K8Ek5nB8N/rAw/kt2itbkefrae1l5FhFvMJlFhEBm0tYRAZRYRAZRYRAZRYWbQBEtEAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAFHLGyWN0cjA9rhRB7hSIgPD8V4DxPh79fCo25eN2iJqRnsPULiM4hHG/kZMJxcrvFKNB+lr6mqudg4edFyszFiyGekjAV5+Xw+E+Y8HoYfEZwVSVnhWSsLPuW3YgAqxlZ0cLAOp7Cl0eJ+DcKZ/N4flT4D+4Z5mH6H+S5c/h/xLhU6N+FxBjfflv/AAO35rK9Hlx9FZsjrcOTq6MYUMm8j+56HsrsTG8t0J6UvOT+KMPEyvg+ISw4mUNjG+YH+BV7A4xiu3ZkRkHuCq1xwy7hrgs4DGQ0wUSDsfVW5Pv7W138VzsfMie8EvYCCehVn+0sYEOLxR67qSQZNIGmM9liOgzoLPdRS5mK+zrZR91EyeFw8krD9V1kl0JaBOzqKq5fDcXOi5eXBHOO2sWrQLd2B/TfqoyXcw09ReOKdolzJUzmxeHeG4z2zRwgSRkFgJ2Cv5ET9zq+il1ukNPbQHoVJqiMYD72UMsPN+82McViXpRWxJC9p89O9D1XO4ljaMhzz92S+nrW4+o3+YXYlbFrbJE/fuPVaSwMmjqTzgkEfPsVLAnjfLOZUsiOBIGuj1SueIzuCw9fU/wf+KiyYZDbS+pCKsHpv1+hr6FdmThFvuJ7aA2jI26/4kLn5eLNi2JACCSPkK7H5fwW1TTMUoOPU1w8ww5mIXujYeYQQdtnj+TwvUvfr8p9F5Mj7QtLhUm19RuQL/79B+T16DCkm5DZIwS3o+J/UHuAVDJ7k8TXQsct/wB4brI8xp7LHr3WWzMd+r2Pdj9ipjHYvcH1VO0v331PE+MqZkBgZt132XGx5GB7qa2x0FrreMJuZxBjdP3LHXdcWKNvmvYkBSXHQzz5kZl1cyy94ktRyPc0BxeX2d9+iy+iwMfZDOm6hduPvV7d1B3Z1JE3Maxhdrr+arGSzubr1CHf9rdavO/cqvK20ShSY2dvpR5PQtQbebusnzftb96WWmi67MHp13WpLtVAo89h2RjD3ffzUWrJLg3YbsdCUjG+lj6IWvUm3bLJm2HlJPsufAUY4pj4/wAM7IlbZYKG/dcDmN3Omj0W/GMvJytMDYZIQw2Rd3+ChixcyZ4AY8A9yF7ml/pYrmzx9V/UyehHo+CVj8PdlPo/0Xn58pssjpZWFjS/ou5FjSS8O+FyJgD0BjFClS/sWIPGqZ76PYUVnxarHGUpyfX9i/JpskoxjFdCbhcjIcTIzACAwaGe64Ek5Nmi9x7r0j+GYYi5YbI8Xe7z/Ja/2fiiqxmX2J3/AIrkdbjjKUqbsk9JOUVHhJFXw4xzceXJLac+wFyMjGzNbR8M872a6L0he0WwABo6AKB8jBuOvzVEdVkU5SS6l70sHBRb6HFYeJMikggxWMEmx3pR/wBlljx8RNfsz+q6c+Q77oaB7qlLJ+292/bdReozNuqVko6bGqvk1yNIx+Q5gMZ/YXEfhYge4/Dt+q6OXK15+/uqMsjB3tVRU0/vF9RfYqT6IxoDdu1ClweI7AuaSCPQrt5csRG+y4HFJoqPnU1A7uPd/o78CcN4lwiHjGc2SXIkJILz9wX2XU8UcKdwF8fwH+tSPA5kc3QM7UV1P0UZDZvCWDoftoI2HuvR5eBwXJzC/LyjFlEeb7Tr9Cs+Oa+01kvavYnni/IuFX8T5/FlcLIAzceTh0m1PJ8l/Pp/BexwuIRCWPS8EGuvf3TM8IfEwasTKhkBNaJBWys/6GQ4/CoWY0pgy42W7e2PPyXPEfKnBSxzb+D7fyQ0DyRm45IV8V3OtjyuEZcHB4UzIzyy2I+1Fc7g+FlYoLMuj6UbFr0PDxCS1jhS8qLUnR6UuFZVje6MUNietrJfLRjjsXua6ruZGIDFrjq/ZcZ7Mlk0jpNXKA6Vu/2PsvbjCkjztyZFEZDOLddmqK1g+zkdoFa33ueoVqAW9ruW0yHez2U4wxeuU6aVGo3cUTx11ZFPlfaFjfPtufQqhPlSMeWx0R3Puutyo4i7lsNj/iG65+ZGyaNz2xsYR1CyvL7lqV9Cg6Uvf90hx6l/dRZLOVian7CvwKyw9TN947ClMeSx5hPnl/aA3orqlfIarg5IjMfn1WDvv8lhjHSRtY6M6QL22XRLxETzGMt5sHuq8mdFzAdW1dQox+LJSXPBRkOXzPJVMJ/BawOAkLHkaj7qPMz8aMtaLIuyANyqMmUXvJxsOd9CgBGSq5y5tE4RVUzrSxOLGlrhpA6DutOU7lnQ6tHdVIxx6eDVjcKyNhuCNA/NW4OEeKpIC+PBDAOmqYLks9vgLGkuWRRc6KTWXEWdiCrRkhkDW6qkJ6nYEqXA8N+IsumZM2KyutvJr8lad4D4h8Q2Sbj0ETdgAzGu/qSpQyXGyuUoRlTZSijyWZDS08y9gOquY+VHzQyZ0bCSQQ/ZdSD9G3DQ8/FeK+MSgffjjeyNh/Bl/mrbf0a+C+e1x4Z8YQLJzJpZv/OSPyVzwZK4VlP27Evf8jzWZx7g2JK5kufiyyfsRxPuQ/IDcqk+TxVxl/J4F4V4kAaAmyWfDxketyUfwBX1Lh+HgcEjDeF8Lgwoh0ZjwMYD+CvzvkyoLZJKyM9wRY+iRxXaad+xTPXT/tSS9z5Rj/oz8Z5/m4rxvB4dH/8AbxYzkSD6mh+S6vDP0O+F8asjik+Vxia9vipLZ/2CgvfQyTQmTXLzowKoA3aoDGmkjMrnta2wCHS7n8lZ5dpbVyUeblm3umRf2fwjhTWR8PwMTHiA/wBzGNlvLkABr6uwDqulFxAnG0wwsJfIyxIN6+qoxZQiwZWZMjA8MBDTRv5rqShOmXQx3FPqWRMwSRyMa3TrJII6+xXM49xB88E+TMwCFmwib2PqteIzFp5/2f3/AK0FyeOZUsuNLFCGOD6DNqq/VaYJxEkjiQZzMWR2X1D6HLZdnvapOkOXltkmlEEIfXqfwU+dkYGCDFG8c+ju/qfkF52LLx3Z8bOdRjOssZ6LaozSSSMzlFtts6XG+JY+JFPhY0WgznzvPUj1X6C8GTNn8KcLlY7UHYse/wBF+TOPzZLMmV8cMhaDrfKTdL9N/ohyfif0ecLfr16Iy2/kVs0qlGTUjDqZRnFOJ6+0ta2lreYja0ta2loDa0ta2loDa0ta2loDa0ta2s2gN7RaWsoDZFqloDZZtYRAZRYWbQBERAEUIyscmucz6lTAgiwbCAIi1e9kY1Pc1o9SaQGyKEZeN/8AeZ+KmBBFggj2QEBM0kjxHI1gY7Tuy72B9fdbQOeXyRyODiytwKuwkH6yf/mf+kLEP+0z/wDT/BATItXyRs+/I1t+ppatnhcabNGT6BwQEiIiAIiIAiIgCIiAIiIAiIgCIiALR7msaXvIDRuSey2Ow3Xg/GmZJxZ4wIZHswwfPoP60+h9vZVZcqxq2W4sUssqRJ4p/SJw7hurG4VE7ieYB0j/AFbfmV8X8ceKv0gcba9kmTJiwH/dY3lFe/qvafCwxcR+BxdAkZvISL+i7LOHwuguSIAdzXVeRPNmzN80j1sWHFi7Wz8r8U4HxeaVxmEz3eptUmQeJMAVjZ2bigdo5HhfqLivDMSPGdL8OyuzFQPh3EyRpkxoyK3oKjz5xdUaHCEuWfmweIvHGN+r8Q8R29X2quX4u8evBB49m19P6L9E5vgjhuSTpxY6C4mT+jfGlJfpA9GMCktUq5iRenT6SPhGHxnx9nZsOJD4i4mx0rqvnEADqT+AK9dJL45w8NzsDxdxOTIY2wJtD2uPpu3b8SvcnwEzByGZeM864zYB6ehH4KTiXDZjjujxoQ3IcOpeCG+49fyV0NZja5RVLSTv0s+beH/0ufpHE8eM10PEHHYB8Ok/MuHQL6ZwH9I3E4gHcWw6kP3vhX7D/uG/4Lj+F/B8+HHlSjGBkL+XddGgA/z/ACCoeL4OI4EzMfGiDHFge6TRqO5IoDp2VqyY2tzRF48ie1M+o4P6S+EkaZJ8uFx/+9CHD/8AGl0I/wBI/hxsrIsnieLjvkvQTJpDq+a/OkXEOMQT1kN5zO4fGGn6EAfzXn/EWNJxHiEmVNbe0bb2a3sE/pS6ElLPDr0P2Zi+IuEZDY5Yc+CRp/aa5pXUxcnHlFwzMff7LSvxf+jvGyMbjExhmlbWOfuuP7zV6vxJ418WeHm4U/D+KS2JCCyQaw7b3TybVpnFqXdNH6vBu+yNDXjS4gr88eEv/wBQtcuHxJw10fYzY7rH4HdfXfDfjzwx4hxC/hnEYMj96O6ePmDuoOLRcsil0OxxDhbCz7EaD0o9Kqv4V+AUPCjmRmWNzvtNpCCNrPX8x+a6cGZhBgYJBfX1Ws8mO9w5O5u3AO3RzdURUFuJ2SGTbIhF+oVgShrAWy+VU4zqFmjv9VPBGL8rqvsUUmSlFHgPF5ceKyuFUH0FzWdHNI/BdPx66KLizWMfb3HzNG5XIbI18WnW1r+tHYrrZnfU0mdpY5zewvddCThTo2vf8VekE/q/8Vysp7jHJbj90r02WRyJdv2D/BI0zkrXQ8yHbB/qLtCXEAlu/sVG2ZgDQXAHQFpLmQB+kyM/FZsilLhF8aXLNyN9rW2uujlEZYz91wd8nKM5LR6BVrCye8mJ9SsCRnUA7+q5PEePcLwfPm5+PCB+/IAuBn/pH8MQXWfzj/8A1ML1OOBsg8qXVntdfp3WwNFfLcv9LOCCRhcNy5q6F9MC4mb+lXjkj6xeHY8IP77i/wDoprSS9iP2iPufcmSC7sI+ZlbkL8/y/pA8YSbiXHjH/BD/AFUL/FnjDIBviUzP7jAP5Ka0tdaI+dfSz9CGaPaio5c2FjDbxv6lfnpnFfEGWdEnFs0k9hIQop8LMm3yczIf7l5KPBXcksra6H3vI47w+HyyZ2PHXrIFys3xv4cxh9txrFYB6SWviH9i806jZKqZ3h/Nd5GQySA9gQEx4oSfMjmTJNLiJ9iy/wBI3hhn3c8yf3GErn5f6S+DtFxQZcnyZS+a4Xh3Mj/WwxsjA23srpwcFaWFwOr2CseHEviRWTK+1Hen/Sawj7Hhs7/77wFzZ/0hcUlP2XD42fN5Kpf2XGx51s8qDEZGRbNvVS2YvY5uy+5JL4s49MNuRGD/AMC52Rx7jkl6syv7gC6b8WERlob17lVxiwgbsvdSXlroiNZH1ZyJc7ictczPnIPvSqzid4LnyyP+ZK7b8Vvrt6KJ+PRLdKsjNIrljk+p9w/QNK7/AECjBfRiMgv62u5jRsyc2MvaSZX2T++bteZ/QNLXhbiOMSABI/r7heuxJcADh7w9sc4mBms0AOyyaWoZsskuX+nDZdqrljxpvhf5on4XxWeHxKGBpEE8xYQT+C95GyTLkfFFKWRtppdW5PoF8+4jjYuLxrCfBJzpJciwbuunovc48z8cuc5zNJ8xYXAEH1Cwa+UJ5ISS4a9vY2aKM4wnFvlP9+SxLiOxXNa+VsrJNtRFEH0UuFG/ImPLgjvo57ug9vcqjPxF2SDQYGxtJYGuDiTXU0vRcOjZDC2KEbMFEHv7rLp8ePJluPRGjLOcIc9SVuI8Cn5MgB38jQB+YK1OBO3cPZKP3XCj+K2glyJ4ROZjGHDZrQNh8yCpXPnojnNcDsHgU4L2FGLPNcpooyRNDOcIz96iD2UDzZdrfG2+znDZdGZ2JCwRudGDVUHAqPB0fCDSGv3ebu78xWbNht0+hdHM0jmTsgjeBjsadRsua781yMzOEeWWiVl1uGgblW55iciaNzxGOcbGyrR4kT5wZQCBe4F2vMyQjztN+NtJNnLi5+TVaQ1gsvGy3ghfHKTreI5Cr0+Q2BjyyGNjS+rK0GfjyykBgLQN3kfyVCxuXcu3pGuOWRB8Bg5nMNEuUcnh+LmtkYzbvfQKwyM5DnHCDrbuXtPT5KRmXMHhssug+/VdUY18TkpOzOHFgYEjLxoHbdGMAVidsOkvx3CPWCQSdrUPJjnLn250p6PP8goteO1wiyC6RrbNtbQ/BWcuNNEejuzp4hmLGteC8UQ9wVqNsuRlNxWzGNtF4I3BAI/qudjSSSCoZm8kiqadwPRXOGx5GPlNkLiCIXdr7tWnDTpOJRmVJuyeTEZFLpfLcbrraht9VHwXIZlZAifPK6LqY3uBAr+SzxbI1uxo3Aa3lw8wrsquA7Hw5nPcxrJGghrtX3kmoQyLaqXcrjFyxu+p38WXAjmlkhFuHUj+a2PE2RsMwEfQkVZsfJcH4vAhqpBVm6cD+aNjkyZxJizGLsX9dQWlZGlwil6eMnbN8rKzW4kri7leewOXt9FB/aWe+NsrHAtLN3MF/wCaWeIObHjl80j9RPLsG7C574XY0gdEwUX1zK7LLPcpcGmMYbeUdnhWXNK8u+KNX5wdiFey8+aOVh1M0ybMvpf9F5rMhIImEz2Rg7aLq/dWpWywQseHwvk0agHi6+Svx5JRjsfYrnijJ7kWcnM1Slsh5WtmkUf4LgvDDkfEZEvM0bGup91czDky40bpWeUUX30CpvM2K88uLXIQCK3AVOaTm6fQtxpRRniLKe9rmnTe5P5Ksxr8jIw4nW9pkp2+1BXtTuIMLMmYCazQsA/gqnFJIOHsjr7TIeCCAdmWr1KuUUyjfDPJcdmxYsud4xxM17+XCGM1ix/BcXDwncOwJQQwmQiSQete3pu/8V6bIxOVy8aVxYT5v8FxTksZxN3xV1dPsfsDdX/b/TSXKM/2T1bmyCMw504xpYHf6yOXV/W19k/Q5xGJ+Lm8HiibDFhlnJHqyqv8l8r4BjPbPl8Skh1tYwxwX3efb5L1X6NMjJ4X40x48qg3iEJZ16HqP4KWn1eWWoi5dOn5kM+nxxwSUevX8j7VaWorS19CeIS2tbWlpaA3tLWlpaA3tbWorS0BLa1e8NYXHoBZWtrD6cwtPQiigMtE72anS6HHcNDQQPn6oyeo3OlppYacq4yzGOW4xPcNtXMAv5+i2jbqmjDnB16pSR0JFAfx/JATA5Em4qFvaxbj/RbmOWvLkPv3aCP4LTJkewMazSHPdpBPQbE/yWuiYAVkuJ92to/kgJOZLG4CVrXNJoPbt+IUxcALJAHuq1Pc8STlgDBsB0v1WuTkQuaxrZoyTIwUHDfzBAWBPE40JYyfQOClVXODWYrnU1tEG+lbhSfEQf8A34/+8ICZLWt/JayZEMZp8rGn0JQBuTA92kPFnYWCL/HqtXxGL7SAVXWMdHfL0Kmexr2Fj2hzT1BUeKSYQHHUWktv1okIA+a42GKnOk+56fNGRRxfaPIc4bl7u39AocMf63O3/wC3s3/qJJ/kpJAJMpsbt2tbrrsTe34IDIyoC6uYPmQQD9ei0mayF7XReV7j9wdHeu381YcA5paQCD2K0ihjjNtG9VZN7eiAxB+sn/5n/pCh5hblzRxjVIdNDsBXUqaD9ZP/AMz/ANIUoABJAFnqgIo2NhY573W47vef87Bat1zuDnWyIfdb0Lvc+3stfv5RZNsBvG3s73+fsrKAIiIAiIgCIiAIiIAiIgCIiAIiIDmeJcn4bg8zwac4aR9V4phbHjOldpBjYTZ/iu5+kHIhigxWS5Ah85c2+jj0r81wJSybCmxYjZkazY+hIH9V52p9U6PR0vphfucTheKYzHxKey6c0D7E9fqu2yX7SWJz7ax9NBVbxBkwg8Pii7Scs1222XNimkmk1my09a9RuqHthwX23ydjjeHzOEhkTbJOo/RZwox8JrHXusvfknCmqySzYV27qTh8jNH2egh42HYKmUYt2kWpswInVQ6EqvPjcvy6bcey6oio6JHAVuquQ+N8o7dvZRlhVWdjM5DsVwa0iv1rf/MF0OLYzncPyNgfsyaA67LM7GGQeYUXtAH/AFBW+JbYWUzY3Gdx8l3HjpM5klbR53FgZiTOEwAbLRJA+471+X9Fjifh3h/EIx8RHrIHkkB3+hV17C29bWjV0UUUEzZfsHOjP7Qbu0/TooxfFUWOPNpnjeI+AYXSF8TGZA9CKd/Q/kuPheE+H4GfJPITG0xFhtpsGxsR9F9bwXySO5U7GxuP3XN6O+nYqlxzAiLo8kN89hrj2o9Pz/iprHsW6JHzHJ7ZHzk8Chmc6LFeXuA1VpI2+q4vGOHDBo5ThGHGh5Sb/BfWOH4vNz9LY/LyXb+u7VT8TcDjyXY0bmgEl25+Skpz22iO2O7az4P4vjxcrg0+PHIXSuLKY1pF04E9lz/CXhPkaOKTFzJOsLAar3J736L7BxTwrjGJwIBJ21KfjHA2wYk8kMQqKMlra2NDYKUc3/I5LGlwjjcL/SjneHaxeJ5cGRC0UGPNSNHzH819F8J/pF8LeIoAyPKi19Cx5og/Ppa/PfEfCs4e+Z4L3yHU5x6klc7hXDMrA4zjSRsIuRsbx+81xoj+f0RaiMmT+ztLhn68BiieBzg6KQ/ZuvcH0KtYrPiA5jH3Ex1Eh27j6L868R4tx3hnBMn4PiEzDEzWxpOoAjfofku7wD9IHiPG4Pih8UErnRNc9xBbqJFnv6lWKKvgrlNuPJ9A8UZWJi5p5r4oGjoOl9undVBNh5mPy2OjmA6tPb6FfBPE36T+NcRy8h54TjNl1nzl79qdYC8txP8ASD42yZdbOJHFIuuTGGkKfLZQ1XJ9643yMaWaLHltoabb10H0vuu1xTieFj4kxlyoYwGH77wOy/I+ZxPxHltIyOLZsoPrKQvqTcB05PN1P1dQTalHEurZCWSXRI9Dh+IOCZJbPNmB+OAKETSTJ8j6e624/wDpU4XwPEDsfh8sjyKhjsN1ew60PdcV3B5WY73QQte9rToYTVnsF4nI4ZPlZj5c23Sg04ObWn2rtSf0saOqOXIzbi/6T/F/Fchz448fG1dNLC7QPQWuHl8T8U8T/wBq4xl0erGP0D8AvQY/DIY9ntFqxHgxA6XRb3SqlnguiL46eT6s8jBwJ0pL5Xkn3N2r2P4dbrBY35r0zMRjJNmE/IK0yOQC9BCreqbLI6SK7HmxwaGNw8nfdWIMCEH9XdLt/AvkOsqX+z5dnCq+SqeoZdHTrsjhHh8LjqDNHqFZjxY+QW0NQ6bLrHBkoUw/Rbjh8xAd/BRWeyfkpHHixY2PuSID3DtlPygw6mRjlrpRYDiepv0UsfC3F5aQQeoIUHmsmsVHIIeWVoYB6BBZGnRfyXdg4W8AOfuD36qVnDiHsD4wR2tRec6sSPMva+Qe/p0QYzh0ZTvZeqPC3a9XJr209VLHwrmjZn4hPtHsFhR5g4LzHs8X7qq/AeCN17T+z+Wz9X+C2ZwsyjUYD9OyfaDqwpHhzgF7Nt/ULb+zPs9212ohe1/sp0ZILN+yzJwh4Oot3Pr2XPPO+UqPDjhV/f8AwWg4Y7l9Pde8ZwhmsU0D1WDwrcjavZReoaZKOGLJ/wBDkDIBxCCTfXRr6Uu5Kxrn7t1FgI6b7dFW8GNg4bnTOk2jMff5r1JweHcTLp8fI0X98s9VdpNV5U5TmnTrn4mPW6Z5VGMGrV8fA5XhyRmVxPEZkXzI7J1jY0Ov8F9H4S/mTyF5NNjaDR7WV5ng3B2YMrpBIJpNiCRsF6LgFjMm1UXFjddD3Kq1WphqNQnDolRLTaeWHA1LqWeJMj+Nhc0eXluDh9QujwjKZPUMh0zN8u/7XuFy+JlzeKQRg3ra7r0qwp4Iy6o5mAtrqFmw5HHO6RfOCliVnbdh+fXBIYnEWRVtP0/oopXvh8mRGQzvIw236+i0gkngYNM2thHR++3z6/xVuKduVCSy22S1zT1B9F6y2yR573RZWiyIoMXQXu16nHZhPVxI6BTQOjnj5rXueDsCqUjpsdzoGEOogguNbHt/FS8OcTiMcX0LeK7E6iqpzuVMlt4tGMziOIyQxOkMZjIB8pO/4LzXFMszcTY7Egc8PAYwuBG9m+qszRVPO5ziPtybO9hZ4LC2TiRmBa9rGOc2wdrI2WKU/OlsNccflR3pmeH8KZAObPZe3cvdtZPp6BbuzMQSg85jndfUV/e6LPFzJI6KJ2vTLbiBt0qh+f5KvHri5egxm+xVcpbZbEiUIOS3MsZMDJiZIqjc7zcxgq/n6hVpoIS083liRhGoA/ePsfdS8MkdLLPHTeUGtc1gHS7v+Cj4k2CLiuGXUXPB27eWyP8APsklHLG6OpyhKrLGPjjHc10jdUo6i9TWf1PurM/F8MippmOcDpcG7ncd66KLOyXNxuSHNjElMJaL2PVUGY7sMs+GDQ0NJpv3T9PVdnl8v0ojGHmcvqdYw4b8ZuSZmQtaNQkv+J7rTh2UTmNlcC5pgcNNVvbei44jL53SuYbjOom6YT60urw+YPyhbGt+xcQWb92qzFm3SSSo5kxVF27IeONHMxwA46nOpvcur7q6HCMCTGaMnI5XNd+yOjf8fdayEGQOI1PBGmhS04pkTYkbeW0vYfv07dv7o9r9VfjjBScymcpOKibcWna6mMl0lpp7vT2Hv/BVo52lhdjwOaC3d5NbKPFgjeRmvcXFxLWsK0kM3PIjj8t0CQq5ybe4shGlRJ8LjcpuSXgygd91Wgc6N5ZGaaO8m+3+fRbl73SFj9w/y/Rc2SV8UBhjHrfuFXkajy0WQTfB0IJIZbZE3WQb3/iEyXFnKmjxmSA+SvT5LivIhLasSDcb9F2uFh4p0j+9gM77LmGbyek7kW3kg4nxDn4XJkY8SX03pYkMMWJE+StLBsOu634nBzcgyySBkfQBQSHHxMbdokaDuCreYybmV2mkkcsTczjgyYWfZM3drZYJ9aVyUTcQjL5YmMmO2toobdwoYM2aclo10TtWxV4mMx645tcnUqvFbslPijzuY7mGTMyX7R7VW5evKiL4nibYi0mSecCvn/8AK9NxXTJkRmQF0e9j0PWyuJBHNg5mHltaQ177Ye4IPX8QqoRlOVxQm0lydfMhyMSCPHNczHomMHcE1+a6eTnR4cWJktAMsD2S8w7kEbqjxPhGRk1Pgh75H0ZpJX0AAOqll4Y08Iim4pngOfJTI4h2W7HheO1JmWU99NH2qCZk0Ec0bra8B4PsVvqXnfBGYzJ8N4rWP18gck/9Gw/Kl2w5fRQluimeFKO1tE+pLUOpNSkRJtSalDqTUgJ7TUodSakBPqS1DqWdSAlwj/qkV/uhQM1CNsrAXOY91j1Fmx/n0W+E7/VIv7oWmK77L/qd/wCYoC0DDkxVs9v5g/yK0DJ4/wBXIJG/uv6/ionMY52sW1/7zTRWedLDvKRJH3dVFvufVAbyy62hpa5j2ua5zT1oEWff6KUZkBcBqcCSALYRufotMpmqIub99nmafdaSvD4YnDoXsP8A+QQFyWVkcZe800dTSiOXARQL/wD/ADd/RaZ5/wBVd8x/EKUFARxa3sZCCWhjAJHDrddApbgxm1bYwfxP9VHhG4NW1uc4n8SsYxD3yTOALi8tHsAar+f1QExfkvGlsIjP7znAgfQdfyW4DMeDcnS0bnuT/Ula68g/7ho+cn+Cy2Jznh8zg8joAKaEBDE10Dmyv2El6/Yk2P40p5o3FzZIyA9t1fQg9it3AOaWuAIPUFRBk0W0bg9nZrzuPqgMczIPlGOGn94vFf1WHCWFvM5nMAFvDtvqPRbczI/8O36yf4IInvcDO4EA2GN6fX1QDGNvmPq8f+VqiqQZU0kZJrTbL2Irt7qXTKx7zGxjg917uqtgPT2W0LHB73vABfWwN1SAwRHkRAgmuoI2LT/IrEUjg/lTUH9j2cPUf0WXRubJzIqBP3mno7/FaStmlZpdDH6giQ2D6jZAWEWGBwYA426tysoAiIgCIiAIiIAiIgCIiAIiIDxHjqV8mZ8MGQTRaBrjkNWN7r3XJw8bkabkZPFVMJ2eFe8QwuyvEuQ8/diaB+Sp4kL2F7DvGT5V5sm3Nv4nqY4pQXyNc9mCTC8sa+UyWygRRrqVDFwbnPaI3FhZZL62K7McbWSeRwJ28lLed0seQWh41SCgKWfJjpl0ZWiLFx343TRM47H0AoWqfD4fhWuirWLe80L27K+yLIa+Vhywf3QB09VWPDHNGpzxqPTelyuE/Y5ZPARlY8eQL0kedlbqvkR8qQxkVI/cd9lawYRHTee87GwTarZcs0krmvhDyR1jNEKc4+lN9TkZc0iGQtbK0ga36mnft5grGcxz8XIA3eWGyO6hngEjGtMmhocHHWPQ2pMh2Q7EljiihuQFrSyWyB+C7jXHJyb5KAxvjcnVOdMbba0NPT3Pv7K1FiZELri0zR1sb0u/ouZLNk4eaXsZpcdpLGx+YV1vFslmM5+Rhta4G2lj6sfI/wBV3E4O/c5PeiwMaZ8seRO0R6GkNYDZJO1la8VDXY8cIfTnEEgddv8AGlC3iTsktETWR6heqR1/kquEJDO98svNe7bV2K46bpFivqy7w+JkGVE4jdzXM1E99j/JTcWxH5Ecfw4D3xkmiasEfxUeYQ2JzA4kM3JHY+jVBw7iGW4kywskjJ6l+k/UKTSXoONtvcc3LwJSCJ4HRsIIaCQfN9Cr8EUWXjglu5GmRh7HuFezZbiBkaGaHar13WxH81xY53CTnwP0P3JJ3DvmFTOEcbotUnNHMy/DD7LIGMmYPukupwHobXPj8HNZlMnnYz7M21gNm/U/JexwOIyzNIOM3QD5ntds75AhSZE8ha4xwRx11e52r8kjhi/UReSf3T5p4x4QRgvxWRjXNVjuG3uf5Lk8EwHu4eIZGu5sA5ZBHVvY/ht9F9GlwWTSukJLy/zFx6lcrM4XGHRyQveyQbDlj/Nrjlt5OqNqj5Rx/wAFTS5cuThhrmyEudG81RPWiq3B/Acsk/M4gxjYh+wHW5317BfYHxaIHSz4zXNZsCw1v8j/AFVPKiyY+HulixGsllNNMj72+Q/quKafJ3lcHxvxB4Ui4VMBrZJFKToBHmHzH8173IwmsxZdLOjHfwVbi/CJsnKc/L1ulrTuOnsPQLuCaeWN0XwDKeCLMu3/AJVyGbqdnDhHl/C+W7RFh5rwS4ARSuHX2Pv7rq8Z8MtzftoGacgDqdmvHoff3U8HBIzC1hJDQKXcwnzwRGJ7Ofo2BL969Dsb+a4ptqpCSUXcT53/AGKQ8t5Z1NNPHcFWsbgreWXaKPbZe9dC3LkD3YnJk6F7ZL1D3FLD8ERkeT6FQlDi0Tjkt8niTwcA6AwkHoQtxwxxIZo+h2XthiMI87DpHdbfARyAtJLx3D+qpcCxTPIDg5ABLPqtzwxz2gQuZXf1XqYsX4Z7W+ctI2N/xUhiaXh2kG+tiiqnFUS3nkhwd4BboBHUlSM4O8vNsH0XsosKGUaWXQBBChxsF0bHMut9mFS8tjzXR5X+yutts9BYU7OD/aNtlOPQDuvUswucDT9Dh0KswYriPOwEjvXddWJy6nHlo8wzhDGxEFui0fwtjogwtO3Qr1nwhP7I39VrJivjYNj16jspPCmRWZnl4saOWO4225h6HZSDBiDLjg812WE3YXpn43LlLtDLO5vuoZcJ73k6gwKqePb1JxyJnnxiOJJEbDGe9KQ4zaNMYBXX1XeZjxBh2J2UHw0bNwwgnrfqqJ5IR6smrfRHClwbGoXt+SilxXeWg8/9K9GISQdegA9AOyqz42mTUwPeKom+iqeePVFsb6HGGDcG4ffqohw91gkgexXdx4bDmsA27ditZImEGx8lR9o7pFyXNWea4jGMVn2bg8SABdjgbwPDHEGiEEMAFE+yq8UxudmwQvdy2mQC/QLrwcFkx+FZ2NjPbJz6De1r2tPngtLFSdNtP9UeXmxTnqJSirSX8GnhLLl5smLKTuLYD+wPS17XgNfES2Q06Gj62V4HgcM2Lxl2NlQ1II92dfkvYY+VNjEuEDZnFotpdpLSL9j6qnXOGPV7k+GrLNEpZNNtfVOjocaNZkDoWMBDTpLjQskLo4eM6tQlJl/aJ6H6dv8APVcqXIOc5sj2MYNBb11da9h6K1jSZULbhlaWDcNd/I//ACqcGWLzbl3LsuOSxpHRx4slkhjMIcCdyHiv6/kujgQGKJ+ogvc+3Vtv7fgFx38VmjOs4zA47jTJ/goZpszJpxmdDC79Y0USf+EleossImKWOcuC3PMTkSvndpYSGtOjqB3/ABta4sw+AkhtreW5xPuSb7/NVw/NhjaWBr8dvYWC1VYmcSmzTkMxtDWjdpbfM+aw59RtkuOpfHF6evQqZmJnSyuqJ7mvdrBa4WPXqpMbJx+GZseNrOqiJnEfdaa3v8Fdk48Y5CX8AytTNr5lAe65+TxfXlSyO4S4F5BEdA3tXUfJZF5cHvTtlyeSa2uPB2MyM5UYMbmNc06mG7HyPsuS3C4m/wA7eHu0NGxDgG/Xv+Sn4fkcTjgqDhj3X91j30GfWldm4hkx47HTSRRuPVsfb60tTjDLzIpU543UTXhuDJBjPa2JzpZCC9wG3s1vsqGRDmycREkWLIY4XNDQ5v3hvqr52QtsjiPEZXEY5cIaIrX/ABVOSXiMjQ52Q1xPlIb5j+KhllBRSXYnjjNyt9z0UnDjlYZtzY2vALHaxY7grlwY2bC9rGRsyBdc1pLWi/mqEcWTAXuZM5zTbjG5xLXOHp6Lp8NyXShplY48r9lkv+HRShLFlaj3OOOXGm74M5OCYGcp7tUrzq8rbaPb3Huq/B5OXxEslbpLYnW5rrAOpqtcRD8ogMIxw7q5pt/1PZct7X8O4nC7He2Rz4jHo1UW0R7H0U8lQyJ1wIXLG1Z0eL5AhmxTjlpzJNQhHYiu/qFa4XIyZjpMkfbgESxkXfy9QuNJlOkyop3RhugHSeZvv9AtnZvNDZI5eXIx3U9/Z3surPFTIvDJxOjmD4TI1GTlwgeU9o/Y+3uq02U2g4SmQP6lm4+ahn4lM4MjbhseXu2bzL1fkqeOWxZL2iN7HXQYXa2j60uZMib9JLHF16i3FI+OEDHkGq+nU17qmX8zLcS3WX72dhSkxsotyXMjEbATT/J3VY3EZXwz257zqr0WecoySsvUWmbhzHylvK+zHn1ndX8TK5mG04+xeCKPY9lzzbI3NOzohfkKmE1iIF4DC7oeilik4SIZFuQk1GWeaV45XZjzuPoq/ETEWN5J5jh1Hqr2XJy2Dl1IO/elyshvN1PbrIJ7BWZGlwuSEeeWWeczElILGsBjD/qontMTC91sEnY7qDXJra/9pgoe6ie85HLjc8kE7k9iuqfFURca5shlyRk82FrGMish7z19KC5uEI8qQSPiPIjhEUIJ6kHc+/8AiuoI8WR4xBrc/XRfdClpgYL+KcTEUeiOKDfbYMYBSu0q6oqzssMlji4e2LJeY4ss02bqwV2VXjLopYoYcBj5G9TfbddXJezO4YYJGARsvlj3u7XOEzBjtww25o/92O/ot+RNqzLB9j0f6L89sknEsbTywZOaxl/Q/wAl7gSL5t4PDMLimHKNnSsfHIO4P/yF7/mLfpneNWedqUlk4LepbalUEizzFoKC1qTUqvMWeYgLWpNSq8xZ5iAtalnUqnMW/MQFvBd/qcX9wKvjF0zjEHaWtc4vN7nzHYf1UcE80UTY2xMcGigTIRf5LDGjSLJa8EkOadxZtAXeXNGfsiJGfuuNEfI/1WpE87TE6LlMOziXAmvalE3IyWCi1kvvekrcZU52EDR7uf8A4IC3ky8uBxH3iNLR6k9FFKeXijvy9J/Ag/yULA4v5krtbx02oN+QUwcgLM7edA5jSLI2Pa+yj50jG6pMd7QOp1AgfmoIzLCNMWl7B0Y40R8j6LMk08sTozAGhzS0nmdL+iAs4z9D3wHaiXN9wT/X+SOZLHI58ID2uNlhNUfUKMsD2NDiQ5u4cOoKy2TJYK0sl970lAXZpHtcxrNPn2BIJF/RaRZcRjDpHtYTuOosdltOWh8DbAOvYfQqk2RvJZokIBiZqp3S3AX7GkBe+Jgr9YPl3/Bbc2Pl8zW3R63sqLdBn0GR2gPcA7UboAGr61ZKjD3F4pxc4wiRvcl1Deu5oFAX/iscGjKAT0B7rZ08Iq3jcWAN1TkezQ840r3gROLzrJ0mtjfYrTHdGA3myFkZvcPIt19z8qpAXmZEDzTZWn6o3IhcQBIN+h7H6qmRrdjiQuMZLvvdxflJ9e34qCOR2oa3TyHfmMIFkd7GqggOo+eFji1zwCOvsq0+Y+OQgMDm1YPY9O/1/JVInkcgGWRj7pjr2dbu4+e3ddPFDTAymgUKrr0QG0Ly+MOIq1uiIAiIgCIiAIiIAiIgCIiAIiIDxPGtQ4tltGwfIL/BVoC7Xr+6AOnqud4qy8jG8SZz4tyJGAB/ToFjC41FkSckipDV+hs9l58uJM9ODW1HUfkO5o5bac/pauPjdcTTTz1e9VZBjxaZXNuQAAKfDlEgJbY9v5KmOSDbhZY06UqN2RgXTjqeeqo5DZjOHRuv9w2uiwWTbtuyMFFri0Cr29FOUE1SIqRWe2aOOi0aru/VV2MGgvlfyyzYBitZhlfLGxtFvQqpKWxSGCRu72b11pVz4ZNdClqlkxJeIOeeS226XN6+bZy54bHz2jnSOkB1AtuqIBv26rs5srZOHyxHTE1oApc90UgyIhNLJE0RMEWlxbdjc7dSuu2kR6OiCPh72xiZubKKNHz3a2zXfq43kTAftaa3+i6DnzRuEDyWc+NrZtyA2QjrQ77Nv5qPPa9vBxFKXMe2nlocaDy66+gr6lR2qmjtspQxGUytjJYB53czdjR6FyNBx2SnGmY+SjpaGOaGH1APVTsblHFlfjtoue1zd7LgAR9aO6ibh42TPpPOcXD7R4eAB/8Aiupbeh22zaBpGNA+d7nyOGssIs2pvsC5kcFinBtEdN+6lZ5uHh5kli1SOB0tB6DygmxQpQMY4vwzzZ2yOkA5klDWC4bbEkj5rTUYFSbfQzkyulxXMY0EMALzR23A/wAVWjbE7JjiLgyPqXELMOO9mPL/AK3JI4taZCHmtWsD+G3yUxgknhaxskumN9te552Yep/6SPpag4xm0ySlKKZZjMZOmNuhoPlaGqCd8ha77oY1/LrSbJq+vy3WJcmbzTh2xNtLyenYfgozmPGK59N/2kA//wCZUnFPg5u7sj5h+Ikj16WNFjY7KOV45sQY5ri91Xp8o+qzlcTma2ImZzTyQ5p1E2dR6+vTup3ZRkyHiqp8kfJaaaRpNbdO1rPPHHuy2ORsp5phGRcoMgi3ZG1tkn3UkbYstrTI5lg3QaqUL8ibCgcXSRte93OkaCC5wOwLh7Lq4jpBjYUU+oNkmdqLyd222ifXbv6KlQjdIs3PucrifDIJoy/TYNBrq2H1VF2Dyy0ubQPlArf8F7Nwd8TFE6WX4jmND496q99ulV3VDPkgx4sueeWRmmc6ntGqmWa3JFCxWx7Bd8pN2ccmkefdj4+glzad3aW0QVDJjmOQuEbztZBaQ4q9l5ZGKyZgyZ+XOHNdpbTgf2QdRJF0o2Z8Ekk8MUuS90VSubMPuueCNj+O2yeXfJzfRiLGbTgaIsgDTR+9p6fmpTgslHfZc5vE82bHwchrYoI5ZtMgPXqqfFc3M/s7NminmjkxpurBu9l+inLGqIKfJ2uR8PBqc9jGgWTeyxHJjO5X20Z5g8lHqudjcNnl4rNkT5DziT4QLGA9DXoscnkY3DJjR5U5jefUHoq/I4LHkO1JGTEBoBA7d1Byb8ghq+9dF0YodbyPXoCFl4bsz7ribHuvO1LmmqNONI5jIWQ6Xhz2EmrU2WXOYHCPuDfTobViS8fI0SssHcH1VrIjZyra40SL8vRZnmmrin0LNifNEGNUjxKWcuTv6FDLHDG58z42AH6Lk+K+Kv4L4fE0TGc2XyR30YV8vj4xxDKnbLmZQku7LyvU0mHNqIbm6Rh1GaGJ7UrZ9Wn47wqLzS5cIbY3vupouMcOyPJFnwye1rwj/Db8vwkeK4mQA4XIYdGzwOu/qvNPmjxYIxMyQSEEsEbu60R0sMtqOR2uCqWplGm4qmfa+UyRl6S/0tR/D+Vpa6t7I0rz/wCjbjLuIYc2Hk6yYN2OJvY9ivLfpE8ZZ7eJy8N4ZNyIoDoL4zu897Xmy8PnkzeX7GpaqMMe/wBz6DkZONjk83JgYfd4BVUcZ4JzK/tTEe7VVGQdV8q8IcLd4o469mdmSQEQl4ewdT/krzfFMf4bic0Mo5jYJi0n1WiPhOJy2b3a/kqevmkpbeGfoKflGIPi3sHpuCvlvGP0n8qWbGxuCVIwlhMs3orf6HOLvObLwh8z3x8syRg9GV6fivCeNcXk+J+LM0sAZOSB33NqvSeHYlnniyq6SZZm1c3ijOHB6ThXjnxPxVs+LwzhkT8x9aDGNo2fX6LxnGeN+JOY45fFcpk+s649dV9F679CUwj8UZcIeakxTQPeiF4/xtFN/pTxNp30ZUgF9Ksn+a34MeGGoliUEkkmZ8s8ksUcjk+rR7n9H+XxHiPhp2VnZMk0rMnlskf1Apeng4zxWHIZFjzGSRm743+lri/oixZJfBToG1znzFzAe9LocXjfjY7ppIXsnurB6K/AsM92NpcPoVajzYbZpvldTs8EyZuIeIzkkM88Fmj8gQvUsOqVnm0uYwkEgu1UCT8ui8j+jvFkAnzJG0COWy/zXssJjnZ8DGECTS8gHo7yleBr3Cer8uPRUj2NCpR02+XV2y/G6EMbpP3iKJFAKVksbA83Q6dCq8LycgQPkllboJnDiSKo7kdjdKSN80mNGZHvaYRcri86mN+9q+exH4LuLDFyRKeSVFiJ0JkG23o7dTTZMTdAMjYg7zNtpc5w9aHb3UMOPJkMdM6WnStJ1Xqq+gHyUuRCxga90jGscG08OqqFabo1RtboYr5M88lUgJ8md0ZiyYhE4kVHYJAHcHotZMk8zUMkUzZx3ofVVZMMtxHTRySC5QLc4G29yKAKjzviYs08nLmY5rwGQsjabb2ABduK9lTqcTpNncU12JjmyAve6R5jBAc9rbu7/osZPEY8fQ6VmuVzNbRy/N1Irb5KhG4yMnjOU6HHdK0csEDTeqxYNLE80kT4eXO9rhECHWXEnU5Yqjt5NFNyJMrjPEuJMDInux2j0aRaj0PiaJHzFwHWxq2WWy5TnSztyHtbkACNxcNQvd1/3aIHpa2fg8rEdczwA0nUHbdF2SlJ8MlDao1RcMwhc+F+5a0XpbXa/wCYU9Y8uKC2Xyj7pB018lSnc+PjFRuffNa1xDqsaB+SpunmGO9zsiVmuDUZQ69J1AW0dnCz0V6Si9sl8CpttdSxK4wFzWSgkHdpFKCDJfCNZfpH3S6tvxUZlHLhqQvjGTyjLKS5+gtaSFaEeU+doMszpuZvESdOm+mnpVd/qs8ca3blwi15HVMtS5zHwOaDpk1abcd1zGvZ8QBM6nt8zQGHU0qxG3Jc/MeANUc1E2S4M1G69O3yCjzzlw8PmEDJJ3P0GMBxJsu3APp02U8mPdy2Rjk28I0HmLnEAmMbuokD5rIYwaC1wcXHUabf8FpxISNyceLGy8mOJrWkGKMOaBXY6hZv2Us88cLMhzGzxsc9gc9pAcx341RN91zyYrq+g85voQRucHN8oeQ4baa6kD197WjMgvn5rw00wkhjtQ6n+ile53M06zK57WyGR2xcCNrHY7LXIaYgHOaXiQb6VW00vkWLkjfKx/mjY8NI7hZfJTw1t1Qs+qclz2B+umg0ApXmNwIB697RNvlnHS4K8+VZDI2WCbNd1LIWa3M0igPvqtK9jJeXE3XJ3PRbGR7PIWtGv12vdTj0uiMn2LkUoOIdf3n7f4qvK12PFqY+tY3HcqGVrrFu0gH0VczPe8tnJLR3Ctc1XK5K9rvh8GBLzJGu1bg3ahyBIAIC0jez67rdkghzRt5b138lrxPIdLK6UPa6+/qUS9Fhv1UQDIxoZANT+Yy/OOxU+Nly4EEjGSa/iyTrDKsdt1VgbjySCLJYTQ/Y2/FXhDDLFHy5Y2QRnyMBq66qzSyrLRDNzCybGkhxuU+Z1l5NBm/dQcThbj8bx8qN9CQEEDsfRQ82E5cWSGGRsTKv3VSfLiOTDjvJBBBr3teu2ed1Onh5TTk/EscNn6hXW7X0SObUwPHQi185xHRYsoeGh40/gvU+H8/4rhcUt2RYP0WvA6biZNRG6kd8SrPNXO5yzzlpsy0dDmpzVz+cnOSzh0eanNXP5yzzUsHQ5q2Eq53OWwl90sFpuZTmh5HmJFAGwRW3v1Uoyot/P9K3/BcwTkQl2otiMztbmmuwrf0Wec/THNG95e2Q8slxtzALIvuLXQdYZUX7/wCSlM9NaWguLtmgd1yonPY52l7w2Zw0ODzZZ94n57gfipnO8zGghttcxp/dJFD/AD7oC78U6iRLFd1912n/ALuinZkANcZC1ul1EjoVxxO8fZBsusbCJrgD8qIP49FO5xjlmjD5LjiBYWgEi/vEdO380B1RkxUfNRAuiKK1ZluJawtqR+nSCD0Iv8ly2Sa43gOmlG2lxqmOv11E/grMEjjLE4yPLxyxu49C0X+JQHQhzInsaS7SSNwQdipGZERdpDxa5sRJxWaHvPNbTvOd39Rfzqj81YxWudTZNVMG7STQcdyPpsPxQHflibJRJc0ju1xBUfwsfZ0gvr5zv81OiAh+Fi6W/T+7rNfgnw0f7Re/01PJr5eimRAQ/DM6mSYkdDzDsq02JIJC6J0rb7sf19iCfzV9EBWxcbS0iW3Ci2nO1E2bJJ9St/ho73dI5v7rnkhTIgIfhmXYdI0egeQFK1oa0NaAANgFlEAREQBERAEREAREQBERAEREAS1hy1QHyjxmW/6UcQikvTJRBHrQpc3gfKfkQn9qN5Brv6LsfpAby/EsrtVaww/kudwVmjJhaGgNe82PaivOm7b/ABPTx8JfgeloSva0noRSr/2nj8Pn5Ur7lefIwd1LALLQH05fPfGkrj4hNOPkYwDdYNFiWXOt3xLtTkePHwfScDiuPksIB0SehKzGHVORMXkrx8cLsHjMnLm1+jD7hhv8yvV4ZZrdzKDQKWnVwWOcPL6Ssp083NS39USxSOkAbfQbfNbMkt7myUZABb1XGmOMlkgD+h7qKQSyV2sb/wDGvPeonBU3ybFBPp0LGQyGVpLaDQ9ri4JAA7IfT5m+5kO61j0cijsCd0+Hu5GSEVRV2PVZEla4ISxRZHnRAPcNOuMu30uone+pUWWwmMB4cGvkLtLjZ3Wrw5k7gZdbbsq4ydnLHOaH/Ndhqsc2+aDxNFSSEaw46gxvnjp1EfIqLLga+e5sieSIFrg1zjYcO6vc2CRhY/YsF/4KpBG+UufJTNyQD3V25NcM4o8ltxYHucx2k1TC11ErnZ8YbCHveS8EOB1W/bpupJI5BkB0bS+Mb7e6vMxGMxzrdrmq7PZWuTycEFHYRcNxrYMiR0gsXWs3XuoONSmP7MMkIe0xsLCAANr7eyt81sUZFn2VPIL5OXQ2YDuexVj4qK6nLtNlUykw05u7B+KqPdK6J8LZZHANvSHHT+CxOXAhxeZI2HSPd66GLHyxqcNcmmvmVy3J8EKS6nP5L95MieaSUu1NBefIPZS4jJIcsu504e0DUQ83Xpa6WXjsZjh+kGQkF63yWc3DMsfJBI2s1ZCqcJFqaJRBzYnPje9jn72xxaT8/Va4+AW47eZJI8vOq3yEgFV+D5b2hzHMDzVbdl0pwfhAYqIre1RyaFTKeRzmuaY/iHhh1NiMtsBHTfqR7UqPiWGOLgr55ZJA41bmGiLduuoS6TEaY/I3p7rzXjCSVnCnR/EPY2SZgDz0G6ti+VZCaqLojyiIs3OPPkfLLgaoxZNBo7ei5eHOcrK4RLkZT3HIxiKLrbqHddqNhPiPNblaNMeFojAPUdyocTE4ZHg8Dkhe8Q6yRYo/L2V9WZ3x9fE5GRwpx4Q15nL5YMuyW/NXMvGjk4pxTEj+6/Cu77qXLkZFh8Xxo5ORok12PROdr4riOMzP9bwizlAbk+trs2l0+uhGCKUGVpHAcqdzxM//AFegyr7b2sy/DtxOJQ8vXDjz82pFDE98fCOHgNE0cGXo1SdQujxCJzMzijZKLeRbCq3Jp/XuSSTVfXQ7WFIzJEU4ALdA6eiSlsU7tbCaOxVLg83O4Hw58dAljDY6FdPRcot2x3tebrE1G17m3DyQPHOk3ogdFaYwSY+xp3cIY4uYDpF0tuU1w2dVb2sEsdW33L77Hj/0kY0snhGSIDXJFMDZHZfICGteR1pfe/GOOZvCec4deTq/BfCstrQ/W1hY1+9FfQeGLbh2/E8bXf8A0s+nfo2H9oeCsjBkO2uSK/SwtMP9GsAxmNz+JPkDBty2gKP9CcvMx+JYp2ILHgE+q8J4j4rxdnE8vHl4rlPMc749Gs1QKzRxZftORY5UupbKePyIOcb7H1/gnAeE8HEgwJvtXso632dl8k8Y8NLeJ5ji0CRk5s+oO/8ANdX9F8+TN4khEj3lrIyXk2Va/SPgZMXiCbIew/CTxgh9bX0P8Foxf09Q4SlbaIZPXhUkqSZ5Hwxhy8S4xBw+HKOI+exzR2FWupx/gfhjgObJh8Rz+IZU9ayI2AA/VcHA4h/YfiDHzgOcIHh1B3UKfxBnZ/ijxB8TBwmZ4IDWRxi9h6lWZVk8226hXPRckMbj5fS5WdfwFxDgI8W4+Nw7hcsMkoeOdLNZqr6fRcX9KuJHjeM82SWSmyaH6B1Oy9x+jvwM/hGaOL8QoZZFQwg3y77k+qi8d+As7xB4nmz35sGPj8sN+4Sdl5sNVghq3JS4qr6mx4MksCTXN9DwH6KMsxeNcVjaAkEjL+i5n6WHvx/GvEYAajJYQPmwX+a+k+G/AGNwXi8HEhxKaaaL7jKAG+y6nGPCHh/iHG/7Sy8IzTSAay95oUABsq8nieCGq81cqq/Usho8ssHlvh3f6HI/QeZf9G2hpDpI5nih819D5Dzj6CzWAb864vCMXD4bxCTGwceOCBgBDI9ha72O81zXuoX070sGas03kTqz0cS8uCg+xvjxv8rGsYD0ACtQY0h1Fsz4pdJB81fitsKEPMkzDbugBXRjDNbTW/SvVQw6fbyyeTLapFaOOZsTeZM+QDc6yXBbMe5scx5AdJIwN++ANIN9K/FXWhhbpHlcCR0Vb4fW7WHVGT+C1RcoSTRQ1GUWmTwvbbLa1m3TqAppYAbLHPjf0JjdWoKtJG6ONpY8EnZXcSTVbHM8x6X0C3R68meXTg1ZyGv82zzWoucbNdFTzMZzJHBmWWQnfTzKCuSYziCJW+bsR0SeIS4/naC0CwCo6hKcKbGP0ytHEniZFbmzN3G4Y4APHoVM2BjsUyxyum6hrNqZ9Fdi4e/Jx/I0R1+a45hl/tCZnKLIYqp4f1PdeU4OCurTRuU1Li+SUwxRuiY2GRkbA4kmQGrNk7BWsfIYBy4Y5XNa67e4NUUYyY2OlDmPjrvvagzNEkTmSgnmbXGaJXVNxakjm1Ph9CxkZWW4shjJYaoyteS6vTUVBHHGzU9mVka3HzuLySXe6xE6OHlsJJoCrNkqRmqaQPijfXsN/ojzSbOLFCK4K7G8uLS98j4ydOjUdH4KN02ZkMMePly8lh0aS80rz8TMMBZFjvPvW4WxwczGibHFjsee4D+66nNcnG4PgqPY7FvIyc6dsrm6WCOQh7R6gd/kVz48h2WzmSS5E0b3AvdK4EuA6ChsB3XayIIsVhlngD5Xjc6zsuZiTMjeYKayIAFgroFZknNraVxjG9xOzJl5btL5IoG7aWOLW/goObHDTmTSguOzI9vx9VPOcNjGtdEH6zsCOqkxOUx5mkhYAwAC+yjFyfQm4pGjI+j5GSefbWTbio8iblv5LxzHA7k/sLOTPJPPymy0exvc/Jb+SJhYNFitj1U1HlpM5fRlRkr3WdXlB7jdRZfMe5zoiaJ9FLJI0PtzvKfbdask+IfHEymbedg7qO3ijl82RxYzYsbX1lleA7fekdE1gMhvbpf5qfiJAY7Q8v5Y2GgBUp5DzA3UQCrkqjtIXbskjn5z362jbaiFW4hIBEIn/e6nZT8stj5ke7j90KMY/MZK9z9BYD1HRdcXKHPU4mk+Cm99xHW02BQAHVQTjks5R3cCbs91IciSN+uFm2rd/wDJVnRvkk+6befxWfcyzajXXNvLGw0OlblSY4mE7dTSOxF9v8lTR5MuLWg04Dc+i05rpGHmfef09VpwL+ominK6gzaAipon3pYNh6qlI1oyI3sb1Is/VdDliLHM2u5JDQZ6D1UDGtc9rHbF5sb+hGy9SfYwwRtja5g18sgLSdAH0XW8HSnHZl4ZcSI5NiVxMLTGyVhv7N9tK63B5G8yZ7W0DS04eZpmbP8AcaPS89G5C5glWeat1mE6nP8AdOeuZzVkSIDptmWwmXOEi3DkB0BL7rcSrniRbiRAXmuIIIllFdKedlIHEW4Fznn9pxs/mqAkUrJHIcLkL6cymuaGs0U5wPe76f52VoSBzSHAEHqCucyRTMcgovMuq5s2n93WaUkbI2tDWgiuhBoj5eipscp43rtnC9G0Xqc57yOmp10t2RtoDU/b7vmPl+Xoq0ZU0ZXQTFpAbpDngODiNW5IIIslTYwcxhDupcTubO5tRsKkCA9CiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIUAtYREARyLVAfOf0nYw/tFk9W7QP4rzuE/kz81jHWCCPlfRe78e4rJXxPf0fGY14HHdok3vWy+vt/isE1U2ejidwR6eKRrX/c3637rynirh8WRx2SQPLJjGxzGVsa2XdwMnmY7Xn9aNngrk+Ly6J+Jnj7kRMb69D/AIrDo5rFqdr73+pdqo78O5FXIkfD4gM0zJOVPCNBAvQaH9Fc4vxSKPiDoHyPDRGx0ddH2FJicfwI+HRZEl8p55d1dELm+IDh5GTiZMDg/HnHL1/uH0WvT5JPLGEo/dtJ/XyMuWCWOUlLrTocD4nk4vF24GW0/aPIeSbonp/JW+Icfy8DikmMGsfEyavcBcDieS2TiOp7uXNGAzX2JG1qTxLpfnx5OoH4iFkm3S6r+SslpoTzKWSP3l+qILPKONqD6P8AQ9Xwzj8OTkCORgjjeToJO5pWIuMYs2bLw+GYGUGhZ2PyXnc3EjjMPJhGmdglYR22C5fGMR/D+Kl0fkIDJYyFCWgwzitjatcE1qskX6uaZ76g0SteR2F+iuBkUbIuZTy/cWvFeL+IzhmJDivLDPGJXkd76KThHG8jGgxYeItebJYS8UQOxXn6fw/K8LyUn8PkzZk1eNZNh64iGFks8jdbienqqORLJs4PIB7KHK4hDiyRwZBI5tuY/tt1VN+XDK9r4smMsef3lhmskILIk6ZqjKMpON8nWx897Doioa6FroF75Mlj9f2ZsPr5LhSzjF0yOFNZuSh4lzYC3DkAu9gtWDVzjHdNWQniTdRLeeb4iMeN32Y3JVmONhDYT0eCfyXLxHnXI4uuTra6eE7luLutCt1rwaiOW5FU8co8FOLDZjgsZeknXZ3U8ZaJW99AU7puZFIwsYzt7qCEitQ7ndbIyj0RQ4vqb8Q0mLVrNgqvILxALHTa/RSZjGiCR485qqUEkkb8ZpYw8w9yoSfUkiLDkY150kjWe/VeinEXw7qB2C8WHyx58jy6w87ey9W/KdyuXK3c7ggKiVF2O3wRSu0YWsDRX7HuuL4xayLw/JJLb42FlMHTqutlytaDbNd/iPdcTxBkH+yJnDaNRiraJzfpZqQP9ITjkDnP4fu8GyfmqeNLzuBcIyHBjHc8xvZ6H2VhzA7icLsUku+FuYjq/bpa5eJi5h4Bw5moMEGbrsdh6K+LrgzyXf5/wW+KYkJyeLQSPe+N8fn0CixU8d8mPn8Be9h0gcuFlbnarK6eYZG8R4kxrS6SSC7r2XMGS4S+H2Hzyl585Ow/xUZRfb64OqSv69yKKNjOH8Til35GdzBQ2ZuupJLjjjoY57HyZGJYBB391C3X8Nxloh5MYk2I/b3VpmPiP4hw+nP5oxvITW4pJW7ORVV9dzbws7/6F9qGMLJHtIYKDF24i2SLmN817BcHw8x0fB3S6i9seVJrvv7r0WHpdjUKoLLqY3aZowOkmQ8t2sea1LHHIGaz8ll8TgdLNr3Wxfy4y2QW7rQK8uWNbzVu9Jh8bZ8OXGm6SM0ny+q+OeI/CHG8XIl0cPflRg1G+Lfb5L7NjSMdJpO3zW05cx+lrevS1r02rlhi3Hky59PHK+T4fwLgXi7Byy7Fw87F5jdMhZ1pXcP9GvF8uczcTzIMcF1vp5fIf8V9gkY4V7ivVRkNAL6+pUp+JZXzFJEI6LGurbOL4f8AD/D+AYIhxWEvP35H7vkpWZ42SgxzQ62eh3Ct5JIA9u6gLzo+9ZI3tYt0pPc3bNaSSpI58vBuFtJlZgYgJ218kWt5Rjhg08sNZsaFBTy6/wBV6jrSgnGjH0gdFlyTnN8lsIxj0EB848hJZv8ARU+ITOMbtDTbzW6twPcG6t76qgS+aUuewFrDfzKpl6Y8FkeWV2QXITJsGevdYn1SMD3u6d1Yk1yyG6o7n2VcklkjC73Kq207LVIp40Y/tCRzndaK7mMRJIBpJqgVwYj/APUw0dCz8F6DDayOIN16nPFm16UMTnCLRV5ii2XddMAY42TdK4yTyai0mulBUgWTP2Pbsp7dHjlm1dbJU/LnF9Bui+5Z1PcCdBO3kA3VqNpLSzR1NKjDI8sqLWb32UjMmUkssh2gi66e67BtO2jjp8ImkiskOkDAzfYqzi5NnRE4Ee5/JVo8ZzYvOXvJG63ZG6OmC2XubHVb0u9GW+xYk8ltk5jD2p3VOdM5gZG9xFV0CgkGPFpMz7d1vUuZmcUlmqLDYNN0TXQKnPLbFtsnjim6OhkZT8WcvleC3TsAep+S4b8vKuXUxup7ySz1HuVkw84g5ExOs0NFsWSMWHU2Nkpd0u7r+q83JllXpfBrhjinclyW2CR7W00NaWGm2aC3j5LW+bGZNTNyL3K5mPmOgz2sfrO2wZ3VjGy8kc3WCYR3LPySMVOnZ2XHBsHYRuVuN5j25hofIKUxYs0jmnXRAZYHX5KMSsM55WJG+QA+d6kw2uL3PkkjjDP2GDYn0tWOKtKHLZWrpuXCNJcWPHaJmun62z7Yg38qVfIzJTjnzSxyC7+2s/hSzHHNPkPnzHvYHmmBhrZVzFixSy5Iuozs+/vv9FDe4Oju1NEbzlmaLmyFkZHQ9R6fJZzI2vLWs1ncC6DFbx+XJA6PI3JFkn1UI5w1Pe1gbdssdSozyO1R2EOOTWOHJyJy0M8jPukjoFniGFkSRhnxBJvsOikklk8sMT38wkF5GwpbRSvhkLtfW/quqT6XwKS5ogYGxQNfHT+1ndaMLrAN+tLSSCV+pxfJZN7+6lifNAdEjBpO1hWYoub5IzaiuDRjXGV3MI2F2hFM1RmjIQNdb0tcmSFtEvFdNyqEmeyXI5bXPfGBtoVkcc26orc49bLUhcICSRTN9Ad1WuT5IBLK37R4BLCaIC0x483JBbiY7yNe97V9VLk4D3yvGTNHffeyLWuOmbRQ8qTIIc7ciLrVNBF0sSOeWb/d60e63+GijYLk19txS0l0EihQCujg49TKnkvoV5ZInZDmt2oAUOg/zarSZLoYuYx5sbUVLlmGMc5xr9/tsufBkYcg+LnmHLD9IZd36BRjhjfCJPI65ZIPs5287dxN17q1yzE/U5+59OxXLGVk5M/Ohxi8h9DmeQfNXonzRRl2VKyaW7FCgz0+q0wiooplK2WHkvjH2TGAHb5Ku86JA4iwTsfRaPfNKWtbYZf3zsFHl6jAO7j9yl3qyPYuZGRyccxQRVzP2z1Kl4FK4idxPcBcjmvLBAXgz9a7BXOBh0MEtusvff5LVg4kZc79J3hIs8xUhKpBItlmIuiRbB6pB6mY5dBaD1uHquwqZqHKJgVICo2KZgQGzVK1YYFMxi6DLAp4wsMap42IDaNqsRsWI2qxG1DhmMKwwJG1Tsauo4GBSsCyxi3DF0HbREQBERAEREAREQBERAEREAREQBERAEREAKwslYQBHItUAWCVlaoDj+LMczcLMrWazEdVe3dfM+Kx8vLbNH1e0/f6BfYpA0gtLbC+eeM+APjZLLgSgA7iKQbA+x/ksmoxyvdE16fJFLazhYeS2OTWTpDxRCuZ+PFm4kuJI245WUf6rxL+IT4j/wDW2HEkF6xIOvy7FdXhXiTGkY37QEH9sdl5Oqx7/XHiSPSwultfRnKZzuFYPEMDMBqw+E136WP4LbhZZl8PnxmPL5YyJ2R1+IC9gWY2TjlmQyOaM9ni1rwzheBgvc/FxmRueNzdri8UWzmNT6/C1/0VPQtS4fpPO4WXjz8InMmKyeWJ9nX10H3WM98ObwfGyMaHliB2kseb26j6dV0uIcD+3dNwyRkMkl8yN48jweoUfA+D5sOBlQ5DmM5sfLAuxfYhao6rA15ylzd1z34fHT3KHgy//NriupLFmwng+HKX0IyYrta8bgxcnDgynTazGKsdwN6VPhnDNeBPgFz2ZDxeh/aQKXhDIsrg0+CHu+KiHNDDuQ8dRS3xvj4O/wAGZnz+K/VFbiGibC4dNNI9jY2Pi1kehsK3x+bGy+DYczb5kA8/rS5EWTJncKy8aV1yxETs9a6Efgp+AQxcT4VkQSTSMkxwH2wdWf4KWOahFp/2t/ryv3OSi5NV3X7F/L18V8N4LI2EyxzFpk7AUuG7hsxwzltkJix36XsBogld7hAxhwzLZDmxv0ASUNiK2Kgw4vieB52PRDtHO367FRx5Kg9vZ/o//Ts4XJbu6/UgHEMibwtlROOt0ZEZPsehVPw9ktxeKw63vJ5Lw9nup/DT2TT5GEG3G+E3Y6kLlcOyudxzH+IdobzA0kCvkoeXjrLiql1/NHd07x5Lvt+R77Gyg+ux16fyXVwA4Yv2n3xsuYIorimY6iX3XsusyNzNTDfqF4ehdp+57GdGudGBco7gFaRObLBoFCT1VsCzE5/mA2r2XOlDoZy0djVr0sbuVMzTVK0XdOuLkubvXZc/Ja50ZAuxsQFf5jPvB3zVKcMEhDXkB60SimitSaOLm6/iYCOhNFeykxh8OGvc+ttvRePyhK9wbr8oP3+69X8TIYCDoArp3KzNIvxvrZk6I2FsfkB236rzfjERQ8Hke8kR2LodV1wZidRea7ArleNMp8PA5XSMEhFVQ3O/ZSX3lQk1tdlCPJYfEsMMkczAcMFgAH5qo2LD/wBFIJxmTfDvze+xu1cMmEfEkWS45HOGD9wfcA9/dcWGJsfhjBgleRIMsEAvFyG+l9t13d0T+upXXD/H+DvS5zY+I8TZNCTGMXXr71S58EUOSzw/Lg6JIo3lx89UL/MqxxAZP9ocUdFEC6TGFsJ227LkyROEXh1oxtDmSWzl9GLjn9fgd2/X4nRjyr/t9jA9kbJttib3V0tY3i/DDHouSChd30VSKUvg4tMxgMgfpAHzV2NjWZmG7WDWMST3G3ZS6q/roR719dS14Slbk4GSJmUefJGWDp6LocLjMfNif0Y8j5rj+CwXcKkl5bBeS8+Q/mV2MJkms+ctBk777LDqeDTg5SLMB309D+dLYtcwHl0WhavYPifPtamjkFbgD1Cw7bdMvvuiJmO+R/2h8t7UtsmNwkbfXte63lc0g+a99go5C3Xq2sD8FyUVFUE75MFsoGknp6Ku8yGVrGO2Askeqk5h0F2oOHQBQmVzK0fiq5LdwduuTBadBLje3VQkt0fdu91vLK0Hd13sq4k0k3uOoRSUeBTfJiUejgCoZA9gLbsA9StJ8hzZN/qq0+U+Szqsna1Tkab6E4p0b5b38h9VTO376jkeyPGGtoY7v81Snm6vs7duxKqy5esUdX1VLUnwi5JFk5DCy2XsVU52t8u2x91zn5DTI3z0B72qXEOLRRB4jfdHcAbqUcE2qostI7GG6KTO0Fw1V2V2LJ4gyQvbFHlxjyeQ0R815nw/nRS8TFbmt13siHGdlEzYkzND7EsR6j1/z6L1dHGobWjHqW07TOhi8axmFvxeBlY97bsvr8l14+IcKkkax+ZCwEX531t6rj4jzIGuxuKMe3UKjlZ/NMgZOSdGXwvCyI70XGaJWx44rrx9fEzeZJ/H6+B6qLIw9cfKfGSBQPM6+ymDWB7tjfrqXk5YsOPAdFJwGcF9ag0/cr/P5qPCxMCbinwWniUMr2ff1nQKFjddcI+7OrI/ZHvAzRAZA95kIrfoq+IMkyOaSaO246KKATRYjcfHkMkmjySSOu6U3D5Z5MOKD7TQG0Xj1UE7o7RBmYLogZC18jr20P8A4qhyseNnJAfCQfquxkaWVeSSWdQRZVF8XNkc6TW8H1Cz51HoXYbRVzZ4RG2SMHXHuTp6qGIumJdJs0bmz1XQbjYEFZL4ZunQP9FzZOI8KntwlfjtPnDZDqseihHAnztJSytOrMZmgM0hhLh0IFn5JCGm45HFkdAgkXfyVj+1OFjCdWVGGjfruq8mXhF7RJmQhzwHjW/cM+S79kguaOLUP3MSlmsPlk0Rs6MA87z/ACWj8iX9gBgZ2Hqrhx8B7zIXsI0ayT2HqoJM/hUTNfxsIadttyfki0qjzX7nXntdSHMyZSARqB6h7xsPktsfh7sjlPlkcIQPvkVZ9gt4s/g4kdNlZbcqYM1sH32RsHY+6hyOM4k0hbHMZJn/AHPIRSmtMm/ulbzJLqdHIdhxsjjia+g6t2Varvc2WLUInvaDY7Lmy8UxjTBDkSSgE/qTt8rWo4zNHjymHBeZGPAEb9tj3Uvs0f8AiR89+50WPIcGR4/2sg7vWMsZMIb9jGymed56hVGcVzOYeXwqQGhcj37D1pRz5fGDkFhwscRPsa5ZDY9DStWJVVIj5lu+TpxQSzHmvzBHGALvqoMnGYKfzjOT0AvZcYS8ayY2mY4+KXmmC7ulSl4honc+TjheGPp4ihoEehKlKDILIvY78uLictomfrkIsBa4gwcW9bmPlH7A6fivOvdHGybXNxHLOYwSxhg/Vi+g9FrFixbOZwg7Gy/ImUfLvqd8yuiO9xXj8cvkOYxnZkUdC/YLlS8RYC5kcORO4HSdDOirvyGNZJbMHCcCAwgaz7n+C0xnTSYkz25OVmuNtoM5Y39FaoIqc2T5mblCBrhjCMk/794FLV+Q+bGP+s0Xixyh6LXJiZHcDsSMNApkkslkrnSZTZpI8DHyXvDBR+HjoD6qxJFbk+hrxAsyTBGceR+vZ/OkqgO9fVaZD5cWCPGbNAwSbhmPHqefddSDheDGANBnoUXyGyVvlhkfLiiiArbYdAq9y6Fmx9SpjS5MRibHjGifPJI/elPJIDPf+QtiXBgaHUCeyjmlcCGtZbh2C45HUmR5EzgQwGzW/spNdRazWqqUMjH7OLmscTZWp0+aWXfQDsnFUc5K8RB5mjuaD/ZdTDOiAUb91yieVAXaRZYAAO3VdCE6Y2j0C16dW2zJqOEkXRKpWyKgxysRlazKXo3qxGqsKuRBDhPGp2BRRNcrcTV04bRhWIwkcasRxrpxiNinjat441YjiXUDWONWI41tHErMcaA0jjViONbMjU8caHDEbFMxq2Y1SsapHDVjVKGLIC3AQF9ERAEREAREQBERAEREAREQBERAEREAREQGHIjkQBy1WSsIDBWFstHIDBVXMxmZEZY7cFWitSFF8nUfP/FHgjDz43eTr6L5Txz9H3E+FPlfwvIkY1/VnZfpN7LVLLwoZgWvYCqpwjJcothklHoz8tYnH/FXh6Qw8QxDlQDo5nUBeu8P/pA4RnERSTfDzfuS7L6jxvwjg5jDcLL+S+c+J/0VRzanwxC/ZeZqfDsWR7o8M34NbOKqXKO/j58cwD4nA/I9VLzSa60vks/hzxf4bkLuHzzPiH+7fuFc4X+kTJw5eTx7Akx+xkAti8bN4bnxu+q+H+D0seqxT+D+J9YgyWCnk2R6hQSM4ccjnRw8uW71s23Xm+HeIuGZ8YlwsuOQexXVjy2SnTqDrrdZY67Lj9CdF0tNGT3NFeLgMcXEY8zEyNFXrjeNiD2VPLwM/g/EPjeEwc+DfmRA7+4+S7QydEbuW0kgE0q2NxUyxCY4z+X0LxvS0YvFcsZXJ3xT+KKn4dGcXtVfweZ8N5Dx4gH+rFkcutsjCLoEd12OD5zG5jsR92HmKTtV3v8ALouzzopIw9jWPa/fWFT4zwPFyZDkM1wzyMGp4717L08Pi8ckpuaqLSX48/X4GGfh8oRiou2meX4dlP4d4hMOUKIfy+nSz1VHNY3C43NHJYMU2pv42uz4n4Fn5WR8ZikTSBgthNGx1IVHxni5T2Y/F3wvBMYbPtuHjut2LVYsuSMk/vKn8+38mTJp8kINNfddo9w+TXHExgAAG266+NMx0YaHklgrdeL8LcSx+IcIjYJRz4AA8d13YMnlP1D7vdeFjk9NmcJHrcZce6J3b7/VU+JsdzGubsDupo5fsyOvp7pOGyYxa7YjcL2Mb9SoyyXpojZpdH5u3VaTyNo1ua22WYi10e9UqeZk6C9rHe1rYzOUZ/K8C6GvovSZE0UbGcyzfcBeRyCXZEdHyawvUT7xBrG7d91nm+S7F3NDlapXiNhZQ++R1+S4Pi0Rf2eXzSz3zA0Fh9V1nlwPYHoLXJ8UOYcfHifQ1zAbLmNcqzuR3FlRmQx3iPIbzAXY+JYjHW67qrj5Gvh/B2GGmvnJNs6bq58LLJn8TfE4Mkfj8on3rZbYHCnxwcIZJkjRgDz0Lso+1kVz9fErs4gxnEONPkkJjLA2NjBehWMaRo4hwNmt/LEZJA6DbZVM2SH+z+JzMw2Fr56FPAtXcTArLxMzWRyIaDD3NKbe0jW5/XuQfE439ncQljxpCDm1TO5tXNb/AO2Drby42Y1fLZQcY4i2GPExhEI+bOA4BlfVbcTyPhRxDNy2iGAR1G+/5Lm5NdQk0zqeHI4ouFwuZdGyN+1rpsmbEdTdyeq5PCtQ4VitY9hAhB19vwR87wQ0vHXr0WDV5YxXPuasUGzpTzAThxZrHUFbjJ1jZu/oOy50jyIB59x2Cw+aGh1BqyPVYn5knwi5KKXU6BkcD9/fuVpIfO7zXttuqU+ZDQbvf8FWl4mwDTGBsVzypXyE+DqmTcUfmop5I30wfM7rlP4nbzTxq9lycjPJncQTY2UlirmzqtnezJY4pI26/pahnzYTIHhzgK3XncjMfJkRurZgolV8rOfq0tcA1c8iPsS5O3kZrGPrX5bVT41tudHuB0915vP4rj47S6XLjYPUlcPM8b+HsQVJxOMkfsRnX/BW48KvhCUklyz2MudqkeNPl2+i52TnvceWGACvLuvnOf8ApR4fEZPhMOedx/aIoLzXEP0k8byHk42HDHe1v3WuOnm+iooeeC7n1WXJk1ljG6BXp3XJ4jnMbIX5EzBW13+S+QZ/iTxPnE8zPkYD2jFLkTw8RyjqnyZ5P77yVZHRPuyMtYuyPvPgnjPDJPFmPBFlsfNICBHrsnZe8zclsPFDyuKvxZ3kVHIPs7pfm39FGHLh+P8AhOTpI+2r8RS/S+QMmTM0iLFy2miceXZ4Fdj81XPEsU0k+xKOV5YttFiQ8RMVx4eLnQ77wmjajghw5oJHywcRxDEddi/xC1x/g2fEfFwZXDQGDRJH0HTddThWNktxzD/bjchrzsydlGvRXJW7+v5RS3XH1/DKpyeUJJsPxGMcAgVKL+drpPg49y4nR8ShfzH2AY9iFHmY/EYojjTcIwMq5AS8D9g9TXf/ABXRimyOQPisL4flPIIuwGeqhkbiv/CeNKXD/kmZxCSGI4whJy2Mo6B0JVzAmyo8dsE+jVo89HuqeJTZDls18x+0etlbdlaI0lt1XraplklfBaoRrkkfJkPlFPAA7X1U7WvlMjSHlvdUJH6Jdmsde5tTY8tSOsab7gqjqy3sa5sGOAGF7pJSPIBtRXlxj5MOPPDI/EyJNY0B+30+a9TLkQiXRNrIG+xXlON/Ani7r4ZlOJ/3kN1/RXwvsVZKI5cHM5hhdwvH3FkA70ppMScHByf7Ih50g3EhFxsHQWq2fjYGLFE+RvFWDIdtIHkvHspuISYGTiYrHQcRJiN31efSyrU6d/X7lLXb6/Y3OVnZMbq4fjxkfZkmQecX0tU8MOZKWM4diTCLbd4r3VnH+GdPFLHw3KsPs2a3HzWpx8XJkynHAkhO73gnevT5n0Vlv6/9IfX1wWsiLIEsE8TMWAsFzBlHye30UD8nKZK6QZeDj9QGVvo9So8Tz4g5PCsgCQFr99yPr22Wj8aLGxI3Q8H1yPZb7J8h9N+646TZL67m54rNJHG08TwmGSTqzcaB2+dqpxOaQZcL28Ukk+IpoqGr6ix+C3x8KfkB7OD4ePJoNa99BUOTk8QZqikdgQfD6CQT9wev4lcvgU/qyb+0xlyhjMnPBB5dRu29LK52Tj83MDcjCzp2xb6zMfPSxw6fMhlL8jiGOIwaMjBe57BXeJzY4j5GTn5VsYGyP/fPoPn3UlJt0iLSq2TTySkxwYXDQ+IMvW9/6s+ipvxswD/acKGPa4+XYWOFGKOSX4dmXM3QQAehJPqrb452sJGJDAHjrK5ThiXVshPJzSOecz4XI0zcSkkuOmRsj/NMSKObHhpmXO069RlJH5LE8rOVKyTPxY5gdpImXoHoFCyQRywPjfl5spZrBeaYO1quqfBPquTf4yISa5DhQdLF632sy5bzKL+Nmc8amMjGhgvputZxBFKXf6pjNYBoP339FTkyn5z2wh+bM1/7ZZy4wOqml3I2+hrl5OTK8sZDiQNgPnlkfzCL9PdTwSwRh2PF8RM0s3eBoGw/mqQysbDLcfnYkNgksYDI/X2U8jGHEBkych5k8gD9gPoouVPkRjfQzhZOVodFCzHxwbLAX63rUQ5b2aZ86SR3cDyBZx4cPHnc7HYxmwBeEfM18mmO69lDzHfpLNirktM+zZGwfcH/AB3uto30TZo91VfJG1gA3d2WrJdFazt/FFyjncvc1hfv2VfNlZHBvvv0C588kYl5sj6N3XalDkZ+OGBkVk7l5KmkyDfBKZHzDSQ8O1/Su664K87gTnIkDIn2NeuSuy70BtbNMvSzHqHykWmq1Cq0THE7NXSw8V5qwtJnJ8Zq6GPHaziYrttl08fEP7q6cIIIVcihVuDF/wCFXIsZdOFOKFWo8dXI8dWI4V2jhUjhU8cKtMiUwjagK7IlOyJShi3Y1DhqyNSsYtmNUgCkcNQFIAsgLcBAagLcBZAWwCAsoiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAw5FkrCAOWq2WqAwVgrJWEBharZFw7ZoVqRa3WKXDpA+NQSQg9Wq6VgtUXFM6pNHFyeGwygh8QPzC85xjwVwjPYWzYjN/Ze6MajfEoOBNZGfCeOfoawTKcnhWRNhT9Q+J9LzeT4b/SJwB+rHfDxWAdj5Hn+S/Sj8cH9lVpcRh6tWTPo8Wb78bNOHWTx/dZ+csfx5k8Ok5PHOGZuCR1Mkds/ELscO8U8MmkORhzsfFL9+Nh6H1C+xcQ4DgZbCzIxI3g+oXh+O/ok8M5zzNDiHEmP+8xzyz+S8vL4LFr+nKvnyenh8Ur78bObh8Y4Y1lRvhPNJ+hVjhnGJCHQ5YYKNbHcfReV4n+irxFw86+D8Y+IYNxHlMv8AMLl5svjPhb74nwGaStjLjfaAj3HVedLw3VYXaV/I3x1ekyKm6v3PokuZjsfpkfHdWL2H4q2ySHNxi00ex7r5bjeNOH5IOJnPZiyA2wPYWEH5FduDiuNkxCfHm5ZBqRkZqx6hY3PJgk1KPBoWnx5Etsj0cXC8LFnkyceFkch2eWbAj5KyT5BTtxsuPDxHRNG0zcyGQeST+RW+JxOKYuY4GMg1v0VMtQ5vlkPsrguFwd/Dy3QyRsJtp62uqyQPJ6aV57HLXMLT932Vxk0oO0pIqrK9PRap41UuUY82FSfB0xpjLtgR0VXJlGovLBQ9lq/OhprDeok9FUzchoiJlaWNvuvollg1aZ5rxtOmUciRxyI/NQLxv9V6SrYOvTsvE5M3MzIdDv8AeAt32O69jIz7APL9HyKpjk3N0W7dq5MSASWS+j7rk8b5vxmCyKZ4uSyPUKeVpA1ivwUb8Vj5Y5tIsd76KccnPQhKNosljLkD3sYZDe53TmsjJBewg7u7qlym/FtePJtVnclTmSLR5KA6BRfudRDxGFmXFHDA2maw950VdK/zAbrT9SqjJIox1UMmUGbgbrjfB1IzmYGLlZMGXkB5kgPkF7A+qjy8XEfG7HmGuI9nkm1Wnz3l+keVc3P4m1l8zIYwfNUZJqrLMcW2d580cJ+yYAABt2pZkym6BJsQvEZvizhWNGWSZjCf+A2VypPHuBF/s+NPN/BRgpS6IlKo9WfRpOIbBwKo5We4y6t/T5r5zk+OeIy23EwBGD++VycjjHiPLeXc8sv9wKx6bLIh5+KJ9Sn4lo3Lh9SuXl8ewoT9tmwsHca185kw+MZZ+2ych/zeVtB4VypT+qeT8lNaF/3SIPWRX3Ynrc7x1waHZuQ+b2jHVcHP/SIS9xxMCR/980FvieBM+WqxH/guvifo04hJV41fNXx0eOPxKpaub9jxOX428QzAtx4YIB60SVx8viPiTMvm8SyAD2j8n8F9mxP0VZB80mhi62J+ivGbXNk/AK6OCMekSh55S6yPzjJwjLnfcz5JD6vcSpI/DkrujD+C/T2N+jjhEX3ota6eP4M4TDWjEZ+Cs2shvR+WYPCWTJ93HefoulieAuIy1WG/8F+oouAYMX3MaMfRTDhsLOkYH0XfLHms/NuJ+jHiclXCGLsYn6KJzXNeAvvfwgH7KwcZvonloj5jPkHDP0Zw4M8eWJDzYjrZXqF6fMjbkYwlfw1+SeWbfEakGy9ocb2XkeI4rGcxz5MiHkF7Q+Hrv6rJqoU4tGvSztSTMYEmIyXkw8UkY0s2jyhZv6rrGad8DeZw/HyXdBJC+iqDC9/DouVPhZxDNVSjRIRSpvZjskjlkw8/F98c2FUnt6FzW5cnWz4uHzBzqzcQkBhLCaA7pmMGZjRYeLxed8j3iNhN7gdSp8LJd8NG2HiUfK3/AFwqiuiBoxMd+TyXzEmnxDY9VOc6juIQhcqL+JrZhiF0vOmjbV1utAJopHExMeL8u1+my1hmDXdo3feJJUeJJJ8VMxwsGTY9jYCxZGm77myKa47FwHGe8OlgFdKI3WmeYYI+ZG9wPSqWMsedrfPC7varsgklyt3s5dfctR8ylTRJQt2mQ5ELstn2jn1oOxFLzkfJx8fljM4liNj7noPbbuvYRl3ML4ovOBvb+i4U+Vxjh+rnZuFIJDYBYAR7KeKN22QytKkUM/CndhYmQePMEbyCOcd3112r8lHnzQQytEfFXsjLwQxjLrbuR+K3PEcuUZTZWYh2HLNWAe6qY8uXz4gWcNMbGAmx1NK1NX/5/gqaf1f+R8XCGCb+259Ou3vDTXyA9Vc/tOHGklhyuIve/IYDGaNgevzKh4hNlvY2DFl4cyUkl4PSu1e6jxsuX4cTOlwH5EdC3iwPVSv6+kcquPr9yESfr8mLLz5I449dXQFbbfipjLw2fM52Q3Pk0AHlxjZ5pZZmvcedk8VxNOvXUQA29FiQ/DYcurivmlqWN+iyGLvK+v8AojV/X/ZFknGkxudjYOcwskoh53f/AJ9VJxOIZHEcjRw3XHK1gMuugR1OypZOViO4fJDNm5eRza88Y0BnyWmJl4+tssOPxJ5jZTGPBoi1xpyOpxRBLHPiySMiwcJkYNs1v/NWsPiWTkvj+KzuF8pjwZABZr0/juqGNixiWQDDLCJgTJNJfk70FI+VkU5gEuDC5/Tlx2fx9UjwqIvl2TvzSZdcOZPJDJIeWyJl7D+HzWnEZX5IlfkY2iqoZE1We+w7KvkzOLBAHZEhZbHmEcsX81z4SX5ALMfCAYNy9/MeAuqT6BpdTpRNmcJeTJjw0LLIYbselnqopxzBJeNI979DyJZqA26beiZvEAyGGnPsbF9BjN+/0XAlz4hmOfG6F5jI3JMhr19FOSp8EYu0dx+SwQBhyYYSwadELNbwo5HGHHAfGcqScFhORIGBg7CvdefzuMsIayEvYAPMLEYf7+q4mZ4ixInzPmnx2EimV5zfruo8VQ5Z63HlfFKXF+PC2g4sx4b29LWMjikMr7eeWGGmAnc/0XzvN8ZY3SJ88xquv8FzcfxJlR7YmHXpspLC5dUPNUe59Hz+PMj8kUb5rH7DOv1UMHGA2ISzsEB7s1rwD8vxFnn7Nhjv0Cnx/DHG8wjnPmP1U/sr+RW9SketzPFmJDf+sM9t7pcmfxmw1yeY8/3VJw79Hk8hHMaV6nhn6OGCtUaujpV3ZVLUvseK/wBIs/JeeXCd+5XT4UJsmQPy2TTe10PyX0nhngDHjr7EfgvT8P8ACOPEBUI/BXLFFdih5W+54fg+K8xtZFictvoBQXpsHg8slOkb9AvY4fAWRgVGupj8Ka39lWJFVnlcPg1V5F18bhbR2XoosFjeysMxgP2VJIjZx4MBo/ZV2LEr9ldFkQH7KkEa6CnHjV2U7IQFOI1sI0BGI1uGKUMWwYgIwxbhikDFsGLtHLNA1bhikDFsGrpw1AW4C2DFsAgMALYBZAW4CAwAs0s0s0gJEREAREQBERAEREAREQBERAEREAREQBERAFhZQoDCIiA1WCt1qgNUpbIgNFilslLlA0WKW9LFIds1IWtKSkpcOkRYtDG1TUsUlAgMaifCD2Vulghc2o7Zz5MVpVTI4bFIDbAV2ixaGNQ8tElkaPEcb8FcE4pGWZnDYJr9WBeE4v8AoZ4USZOFZOXw6TqOTIa/A7L7g+K+yhfjg/sqqeFS4asuhnlF2j82cT/R/wCO+FxuZg52PxGG70SDlv8AxC4GZxHxJws//VuAZ0ZGxliHMY8e9br9WSYgPZc/M4Pj5DCJI2H5hefl8K0+TrGvkehh8Vzw/uv5n5z4D46wMmfk/FGOUHdko7fJe3j4wyXH+zILtrrcfNeg8U/ow4Jxhh5mHGJOzwNwvnPE/wBHHizw6TL4ezHZELOmPM69vQFedm8GlDnC/wAGb8fiePK15sa+KPbBjXBssP2gPo/oo8iTJLzE5zy4dNunzXgeHeLuI8Ca7F4/wrIwHX+sey2fiusPHHCcoBwz4fpVpBTjGmmmcmoOVp2i5nyTM+3kgADDd+gC9THkg47T672V874t4s4acaT/AFqMiqFHsq3Ff0g8Jj4NH8JkPyMqgOXFZP5K/DF30bKcjVc8H0WfMa0Hze6oS8UZQYXtvsvkp8S+LOJjRw3gObIOxeylYxvDX6TuKO1fDMxAe5NrdHFkfYyvNjj3PpUnGYGXqmGwXJzvFfDoPNJlRsA9SuDhfod8W5pviHGZAD1DDS9Bwz9A+Gwh+ZlyTO9Tv/FWrTSapsq+0xXRHn839JWBH5MYPyD/AP1i1ysnx7xvKtmFgcu+719g4Z+iHw9iga4S8+5XocDwNwDFrl4Ef1CnHSxXUqlqpPpwfnL4nxfxA/rJGA9mMViDwb4h4gQ6ZmVNfra/T+NwLh0P6vEjH0VxmHCz7kQCtWGK6IreeT6s/OHDv0XcUkrXjV816LA/RNPtzXMC+4iEDo1SCJT2kN58mwv0V4za5kn4BdvE/R1wiKtTC9e/5fstuX/wptG5s8njeD+Ew/cxGfULoQcEwom+XGjH0Xb5acsLtEbOYzAhZ0iA+ikGK0dgr/LWOWlCyj8OPROSPRXuWsGJdBzzD/wrDoV0DEsOjXKBzTD/AMK0OOumYlqYkoHMOOozj/8ACutylgxBKBxXwey+f+JJJsXjOXGJjivfIHwydj5Oi+rvgBXmPFvhJvGKljfUgZpo9CP8+oKz6rE5w9PU06XKsc/V0PFRY8kz4pc/DhnLwKmx3aDfusYk+JJqjiz83BnB1Hms2/zso+IeG/FHBrOD/rEIH6t43+n/AMhcY+JMnhjHM4xw3IxDZ85ZbPoV526ceJI9FRhJXFnq4s+aeNvwjOHcUikYfIw0QLr+q6XCM5kkUWNHhPxerhW7B9V43hc3hnPHP8jHBnSM6LJNrsDhcMMQ/sziuVGHsDWAv1hl7qXmqSaOeW4tM9WzGGsSSvjeehZ7ei0Mjpc+aBjCNGj67Lh8Ax+Kw5skPEM9mVGd2GqN+67mNC6TiOjC5eqSG3vO9V/8rLTb4NCfFssmTJjaIpIzR6Ajr8ltGGCRvNZpb+4dlrmTTMjLclwYelsVZmqWMfamu4Hdc4TJU6LeTLDFiHlRXvR32+q83mcTZk5c2Nl+GJM0RbskZYj26WutBPyDIHwNaP2NDzR/FcHJ4g9mbkwwfGwQvfzHvYwEX7d1qx5PVa4M+XH6abLeRkaYm439gQBtc0MYNmHuFXk+Ekr4jw+yyNgARV0h+HysP4uHKzdTzoJew9fWlzuJyY7MsyfF5809i2RnyAeqt21XsU707M58cUUpZjeGCI6++Hm/z6qcYUUeMZIcADIFRmN76FKtBl4M2OZZG8SkqyB39FSHJhyZseTHzcgS04yPNAeyjJfXP+TsX9cf4L78aRwZj43DcVkZfu8vF/gmfPmRcxw+Ath063u6Aey4s+Xh4rHSRYBZMZAQJpifmevsuVPxlkBkllbgMG+sveuWrFOj0WbNO90Rj4liscxhJpl7KvzrDHHJzpjJZqOOgBa8Zxfx5weKSV8OZGJTDyvsmb/NeezP0gZE0ZixcPIyiTdvNAqSjKXKRyUox4bPpeTlY0RljlI5mig+abd4uyaC5WbxiLHu+SzQbBhjG3puV8y+L8X8QkJxsfka/wBxlq3j+A/F/Fjqyfi5L9dgro6eVFMs8LO/xfxdw6G/9ZEhG5MshfR+Q2XnMzxxjeYQyZDye0LNAXo+F/oV4pLTpoa+ZXquF/oVEdc0MVq0y7sqlqfZHyPN8YcSzWBkWC8gCma91VZk+J8vaNrowfQL9H8N/RNw+GuY0Fd/C8AcKx6+xZ+CsWGK7FT1Evc/LcHhjxDnkc6acgrscO/RnmzEOlY8/NfqTH8McPhrRjs/BX4uE4jekI/BWqFdCt5LPzrwv9FdVrj/ACXqeGfo1hiq8cfgvtUeDGzpEFMzGaP2Wru0juPmeB4Ghjr7Efgu3h+E4Y6+zC9syD2UghXdqObmebx/D8Lf2Ar8HCYW9guwIlIIl2kcs58WDGzsrLIGDo0K2IluI12jllYRKQRKcRqQRoCuI1uI1YEa2EaAgEa2EanDVsGIcIRGtgxTBi2DF2hZCGrcMUoYshi6cIw1ZDFKAsgIDQMWQFJSzSA0AWwC2pZpAYAWaWUpAEpbIgMoiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIBSwsogMIiIDWkWyIDVYpZpEBqi2RAa0sUtqWUBpSUsogNaWtKSlhco7ZpSxSkSkFkVIWqSlhcFkTo1gxqWlilykdsrmJp7KN+Kx/UBXKWKTajts42bwLh+bGWZOLDM09Q9lryub+ifwNlPL5fDeBZ6lkdfwX0Klilzaju9+58xj/Q34Aik1jw5j2PUk/zXawPBHhrAAGLwXEjA6VGF7IsWpjam1IbmcWDheHCNMeNGz5BTtx2DowD6LpGJaGJKG4pcpZESt8pOWlCysIlnlqxy1nSlCyuI1sI1PpWaShZDy00qXSmldFkWlZ0qTStqSjhDpTSpqWKQ7ZFpTSpaSlwEOlNKmpYpdFkOlNKmpY0rlCyDSsctWNKxpShZX5actWNKxpShZWMaxy1Z0ppShZUMQI3Cp5nCMHKGmbGjf8AMLr6VjSuOKfU6mz5r4h/RN4b4o8zRwvwpzvzMc6CvJZf6L/GXBy48B49HmxUQIsppDx8iF930rUtCplp8cuqLo6nJHoz89iTx1wiQO4t4bnmjYbMmMeZ/Ba8P8e4sHFZIp/iMJxcwESMrbfbdfoUxtPVqp5vCOG5rKy8HHnHpJGCqHoY9Yui9a6f9yPjUvizgjvOOKMnMpsAG12/D+fl5sgdjYcj4iP1jxo/AnqvajwV4ba/XBwyDHd6xDQo8vwfizANGfnQgGxy5AP5LLPQZHK1Rqj4hjqmmeZ4vxjEjAxMmZrJRYuwLC87meIOH45YxmZC0Dc+cL1mX+inw9mzGXPyeK5ZPaTKIH5Ut8f9EngOHrwGOb/nSPk/iVYvD5d2VvxCK6I+bZP6Q+D4pdedG0/tAFeZn/SHFm5LpMSDNynnZgihe4n8Av0JheB/CWDXwvhzhcNdxis/ouxFw7FhFQ40MY9GMAVy0Eapsqevl1SPzRFxjxpmV/Z3g7is1/tvh5Y/OlZ/0d/S7xT9XwrC4cw95p7I+gX6T5LR0CcpXw02OKpIzy1WSXc/Nw/Qx484nIH8V8UQwjuyEFdPD/8A0+YJIdxPjuXlHuF9+5XsnKCsWOK6IreWb6s+ScL/AEI+D8KrxpJiP3yvS4H6PfC2EByuEQbeote25ScpTpELZwcbgXDccVDhQM+TArrMONnSID6LpctOWunCgIG+i2ECv8tZEaAoCFbiFXRGs8tDjKYhW4iVoRrcRoCoIlsIlaEa2Ea6CsIlsIlaEayI0BWEakEanDVuGICARrYRqYMWwYgIRGtgxTBiyGLtHCIMWwYpA1ZpKOGgYs6VuAtqXQR0s0pKWaQEdLaltSzSA1pZpbIgMUlLNLZAa0tqREARZpEApERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBKREBhFlKQGEREApa0tkQGqLZa0gCxSzSIAtVsiA1SlmkpAYpYW61QGKSllKQGtJS2pKQEdJS3RAR0lKSkpAR0lLekpAaUsaVJSUgI9KxpUtJS5QItKaVLS1pKO2R6U0qSkpKFkVJSkpKXBZHS1pS0lIdIqSlLSxSAjpKUlJSAjpKW9JSAjpKUlJSAjpKW9LNICKkpSUlICKkpS0lICGkpSUlJQsh0ppU1LGlKFkOlY0qfSsaUoWQaVjSrGla6UoWV9KaVY0rGlKFlfSmlWNKaUoWV9Kxy1Y0ppShZBpTSp9KaUoWQaVnSp9KaUoEGlbaVNpW2lAQctZ0qbSs6UBCGLOlTaVkMQEIatwxS6VnShwi0rIapdKzS7Qs0DFkMW4C2pKOEYCzSkpKXQaUtqW1LNIDWlmlmllAa0s0spSAxSytqRAapS2RAERZpAYRZRAKREQBERAEREAREQBERAEREAREQBERAERRyyODxHG0F5F2egCAkRRa5GPaJA0tcaDmiqPuFmWUMIaGl7z0aOv+CAkRRD4k9TEz2ou/osF2Q02WMkH/CaP4H+qAmRaxSNkbYsV1BFELZAEREAREQBERAEREASkUc8jmFjWAFzzQs7dL/kgN0UPMmY9glbHTnaRpcTv+CnQGEREAREQGtJS2RAaotkQGqJSIAsUsogMUlLKIAtVsiA1RbIgNUpZpKQGKSlmkpAYpYpbUlIDVFo18stuj0NZ2LgSXLMTy7U17dL29R2+YQGyUo+a+QkQMDgNtbjTf8VnTkVeuK/TQf42gNqSlHzJGfro6H7zDYHz7hTUgNaSltSxSAxS1pb0iA0pKW6UgNKWKUiUuUCOkpSUlJR2yKkpaapnveImx0x2k6iRvQPp7raFznOex4aHMIB0nbpaULM0lKSkpKFkdJSkpa0lCzWkpbUlJQs0pKW9JSULNKWKUlJSULI6SlJSxSULNKWKUlJSULItKaVLSUlCyLSmlS0lJQsi0ppUulKShZFpTSpaWaShZHpWdK3pbUlCyOkpZldy23p1EmgB3K1d8QxutwjcBuWtux8vVKOG1LNI97GxiQnY9K7/ACWB8Q82GMjb/wARs/gP6roM0tqWhbkjoYn/AELf6raOTU7Q5rmP9D/I90BtSUtqSkBilmllKQGKSlmlsgNUWyIDWlsiIAi0mcIoXyEXpFqN7sljHPcyHS0EmnG6/BATojTqaHeotZQCkREAREQBERAEREAREQBERAEREAREQBERAEREAREQBRSa2SiVrS5pGlwHX2P5lSqGZofPGxwtpDiR+CAw5zpnNa1jgwEOc5wrpvQWcQXHzT96TzE+3YfgsGNkU0XLaG6nEGu+xWcY6RyHHzM6e7ex/kgMB80rncrQxjXFtuBJJGx22WdeQz70bZPQsNb+4KGJ7HF0DgLNljuhP8kE4BDZmGMnYE7g/VAbQRljPMdT3G3H3UYjZLNLzG6tJAF9tgsEQunk52k0Rp1HtQU0LYmg8kNAJ30+qA0gaGTyMaKaA0gfiplDLHjl+qUR6q6nrSj+yjyGGMtDNLi+jt2QFpYLmg0XAH5qFrXzjVIXMjPRgNEj1P8ARZMGMCAYYrPq0WUBMihMGjzQHln0/ZP07fRbxSB7CSNLmmnA9igN1guaOpA+qhbqyPNqLIuwGxd732CyYMZtaoot/wB4Ak/igJlDP+vx/wC+f/KUOO1u8JMTv+Hp+HRR8wyPx3EC+Y4GjY+6eiA3yvvQf80fwKnUGYQDCSaAlG/0KDVkHUbbD2HQv/w/j/ECdFVmjga4Rsha6Q9B6e59lPBHy4w0mz8qQG9LFLKIDCLKUgMIiIAiIgCIiAUtaWyIDWkpbIgNaSlsiA1RbIgNUWyIDVFslICtE50LeU9jyG7Nc1tgjt9Vo8SPNuBYZXBgF7hosn69VJFBHLrdIwOOtws/NR6HBr+WP1UoLWj0oWPzKAmleIYbDbAoNaPwAWtZZ31Qj20k/nf8luRHkQ9dTHen+eq0rIj7CZv4O/ofyQGr+dMBE9nLbfnINgj0HzUk9tx5CDRDDX4LV8rXwyaCQ8NPlIojb0Wghw3N8wiNjeyEBn4eDl6uWLq7UmPZgjJNktF/gpKFV2VYRYQFBsQA9wgLFJXuqsMhbEWMGpzpHBgvar6/JSjHa7eY813/ABdPoOiAlDmnoQfqsqEQYzr0xRfNoAI/BYOvH82ovi73uW+99wgJ1qtZpNDRQ1OcaaPUrUQB3mndzHen7I+n9UBuHNJoOBPzWVGIMUkgRRWPRosLVwOPRa8ujJA0uNkfI/yQGcX7+R/zf/SFiH/asj+83/yhbY36zI/5v/pCiEojyJxRc9zmhrR1J0hAWUUbYA7zT0957dh7BRMjjlkBhY1sbTu8D73y9vdAWaSlsiA1pKWyIDWkpbIgNaSlsiA1pKWyIDSkpb0iA0pKW9LFIDWkpb0lIDSkpb0lIDWkpbUlIDWlmlmltSAgnY4hrmUXMdqAPf2/NYdM9zajifrP7zaDfmf6LfK/Un3IH5hR5EMUcEj2MDXNaSCOyAxBGOaQdxCAxvzrc/wW8r5DLyog3UG6i53QDt8+hS+VkHUaZJVH0d0r67LaWIueJGP0PAq6sEehCA0PxTNyIpB6NBafzJWYmOdIZZBR6Nb6D+pTmyR/ro6H7zNx/ULExjkki1FpjIJ67HpSAzOxr542OFtIcSPwWDGyKaLlt06iQa77FbRR44fqiEequo60tpo4XAc4MIB21eqAkRVJ2Y7I9UOgP1NrSd+oUpL5nlkbixjTTnjqT6D+qAlJA6kD5oCCLBtRnHx2i3RsPu/c/iUOPF1jHLPYs2/wKAlpZpRRPcHmKWtYFgjo4LD3PkkMcR0hv33+nsPdATEgdSAgIPQgqH4eAC3sa71c/f8Ainw8BALGhh7Oj2/ggGd/sc39wrbL/wBll/uO/gq+Q5/w2RE8hxbGTqHp7+6sZf8Assv9x38EBtF+qZ/dC2VZr3StbFCaAA1v9PYe6zLFjRM1PjB7DuSf5oCwihxYiy3loZq6MHb/ABUyAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAon/wC1Rf3XfyUqif8A7VF/dd/JAJv1sH98/wDlK2ljZIAHDp0INEfIrTJcGPic40A4k/8AaVgHIcOY0Bu+0bu49z2KAzWRH91wmb6O2d+PRbMeyZjgW+zmuHT2K1GQ3o+OVh9Cwn8xskGp00kxYWNcA1oIomr3/NAaxxtbKYXtD21qYXC6HcfT+a2x2tbLOGtDRqHQf8IWb1ZgA/YYb+pH9FiI1kzN/uu/Kv5IDAYx2XKXMa46W9R80nYz7ONrWtD3gGh1ABNfkj3iHJc54IY5op1WLBP9QsTSscxssbg4RuDj8uh/IlAb5L3NjAYac5waD6X3RuNAG0Y2uvqXCyfmVmdhki8hGoEOaT0sLUZArzxytd3Ggn8x1QGIfspzACSwt1MB7diPl0UWadM7GC/txod9CP5EqaFrnyune3TtpY09QPU/P+ShywZJtbQTyAHbdzYNfgPzQFjJeY4S5oGrYN+ZNBasxoQPMwPcfvOcLJW0rRPAQ1w8wBa736grVs9CpY5GOHWmkg/IhAY+GbRY17mxnqwdPl7BJgGzYwAAAeaH/SU1zvt0cYa0dA/Yu/otXSCSbHIBaQ8ggjcHSUBNLFHKAJGhwBsA+q1yZXRhrWjzPOkOPQfNa5jpWiMRODXOkA3Fg7HZbRvbPG5j20Rs9h7IDaGIRg7lzju5x6krdQNc6FwjkJLDsx5/gVOgCIiAIiIAiIgFJSIgMIsogMIspSAwizSUgMIs0sUgCJSIAiUiAIiICHG+4/8A5jv4rMH35v8Amf8ApCxjfcf/AMx38VGJC2SVkbdUjpNh2HlG59kBI+Eai+NxjeepHQ/MLBlki/XMBb3ezt8x/wDKapoj5wZWerRuPp3R2Q0tIZHI9x6N0EfjfRAbTRiVoLTTxu1w7f4KJ7YpMJ7zEwEsNjSNjW6mhbysdjHEeRoBPbYKKMF2E/YjWHOA+ZJ/mgJv91/0qLGii+Gi+yZ9wfsj0UkRD4GO7OaD+ShgnjZEyOUlj2gNLSD1CA3hAM8rgB5aYBXTa/5/ksPaJ8h0bt42AW394n19lmJwbkPbtUgD2n12o/ySTVFMZWtLmOFPDeorofdAZfjREeVgjcPuuaKIWcd/Nga5wFnZw7WNitXT2Kije556W0gD5kraNrYMcBztmi3O/MlAV8E6pntNnkjltv5n+QCllHNn5BJDA3U4D9q9gPlsVHiNMcxLxpM41V6Gya/A/kpZQ5kwmY0u8ul7R1rsR+aAy7GgLaETW10LRRHyKyyGnh73mRwFAnstTkNryRyud+7oI/j0TmSx0ZmgtPUs/Z+ft7oBjfrMj/m/+kKRsUbZXSho1u2Lu6jxd3z/APM/9IUZmlZkzF3mhaQCAN27dfkgNnE5Er4jbY2bOHd3+H8VYDQBQAACjlYJA2SNwDwPK4dD/gswya7a4aXt+83/AD2QElJSIgCIiAIiIAiJSAIlLNIDCLNJSAwizSUgMIsogMIsogMIsogMJSyiAhyx9j/1N/8AMFnLH+qy/wBw/wAEy/1P/U3/AMwTL/2WX+4f4IDd7GvaWuAIPUFRcqSP9VJbf3X7j6HqmqSVxER0MbtqIuz7eyyJnN2mie0+rQXNP4fzQGY5dT+XIwsfV0dwfkVpJG2OVrg0Fj3U5tbAnoU1GaeMsY4NYS4uc2r2IoX81vkmwxndz219Df8AJAaljG5cRaxrTpd0HyWchrXSwBzQ4aj1H/CUlNZMJ9dTfyv+SZJLTFJpLg13moWQCCEAmbHFC+RsbAWtJFBbMaIYACdmN3Pr6laOkhyI3xNeCXNIW8LubAC4bkU4e/cICOCFr2CWZofI4Xvvp9gj2Nx5GPjGljnBrmjpv0PztIpDC0RStf5dg8NJBH06FDqnkZ5HNjYdRLhRce1D80BnOcI4hN3jcD+Ox/itsQVjMvq4aj8zuVrmASNbB11uF+wG5/l+K2xD9g1p+8zyO+YQEcEbZ2jIlaHl27Qdw0dlucdodqhPKJ66RsfotYnHHbynseWD7jmtJ29DS25r5HaYWEDu97SB9B3QGmTG2PAma0fsEknqT6lWHtD2FrhYIoqrkyOOJNHI3S/QfkfkVYyHFuPI5pohhIP0QGHaMfHOiM6WDZrQtYGaiJ5HBzyPLXRo9v6rGNK/yxzVzCLDh0eP6+yOaYHF7ATGd3NHb3H9EBOiw1wc0OaQQdwQsoAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgChmtsscmlzgAQdIs70plpJIGFoouLugFfzQET/t3saYnhoJJ1CuxH81sOdFsBzmfPzD+qkje2Rge02CLC2QEPxDAPM2Vp9DGf5BDLI/aGJ3954ofh1Uyjkma1xaGue4CyB2+Z6BAZhjEbSLLnE25x6krWZj9YlirWBRB6OHosNnsjVG9t1uaI3NdQVMgIfiGgfaRysP8AcJ/haxGRJkGRodpLNJ1NI6H3+ZUksrY61XuCfoFgSsMvL3vp/P8AmEBoGyQbMbzI+zb3b8vULPxEY6tlB9OW7+imWJHBjC49AgIi+WTaJhYP33j+A/qpIo2xs0t+pPUn1Wscoc7SWOaasWR0+hUiAg0SQkmIa4zuWXRHy/os/EMH3mytPoYyf4KZEBCZZH7RRO/vPFAfTqtHxGMxP80hDy557nYhWUQFaRxmfEGxyN0v1EubW1FSTRlxEkZ0yN6HsfY+ylRAQOlDmFsmPLuKI02ExS/dpD9I+6XCj8ltkzsgj1vuv8lIZ2SuLQHAj1FICVERAEREAREQBERAEREAREQBERAEREAREQBERAEREBXY8xammKQ28m2tsblGRF5fKC6NxdbT7UBuPot+e3maKP3tN7dfT1UqAhEsjNpYif8AiZuPw6/xT4mPoGyk+nLd/RTISALJoICAtkn2e3lxd2k+Z3sfQKdQfEXWiJ7mnodhfys7qSKQSX5XNIF04Uf87ICMCSAkNYZIrsAdW/1C2+Jjuqkv/lu/opVEZ4xquwGgkn5dUBpFDeLGwlzXM+67uPT8lsJZGbSxE/8AEwWPw6hSRvDwSLFGiD2K2QEPxDD91srj6CMj+KxokmcDKNLAbDLu/n/RbyShjg0Nc5xF0CP5lbRvD2Bw6IBLG2Rmk7dwR1B9VGJJY9pYy8fvsF/iFMiAh+JjOwEhPpy3f0WCJJ9nNMcfcX5ne3sFOiArscYZJQY5HBz9Q0tvagP5LbHBMkshaWh5FAjfpSmRAQaXQOtjS6I9Wjq0+3stJn66c2KZsjfuu0fkfZWlXky445TG4Osb7C/T+oQE8ZJYC4USNwsrWNwewOHQrZAEREAREQBERAEREAREQBERAEREAREQBERAEREBHktLoSGizYNfIgqOaQyRPjbFKC5pAtuynkcGMLj0C1ikElgAgt6g/wCCA0MckZLoSCDuWOO30PZPiAP1kcrP+gn+FqZEBDz9X6qKR592lo/NZijdrMspBeRQA6NHoFtLI2MDVZJ6ACyVoJyTRgk61tR/gdkBvNHzGVekg20+hWgmc3aaJwI/aaNQP4bqVjg5gc3oRYR7gxpceiAgfI2Z0fLD7a8HdhAroeo91s+N7XmSGrP3mno739isnIjAaTe/5b1/FSoCH4hoHnjlYf7hP8LQzOdtFE9x9XDSPz3UyiE7SR5HaSaDrFX+NoDMMZaS97tUjup/kPZYkjcH82IgP7g9Hf59VKiAh54A+0jkYf7pcPyTn6h9nFI8/wB0tH5qZEBWmhkkhlc8gyOYQ0Do32/xWZpTJC+MQy25pAtvsrCICN0QfC1j+oAojqD6haNlkYNMsb3EftMFg/0U61keGMc89ALKAgiJE32ccjWO3cHNoA+oVlV4suORwADgSa6bda6/NWEAREQBERAEREAREQBERAeB/wBNOKf+Hw/+x3/uT/TTin/h8P8A7Hf+5eaUmM8xZMUoLQWPDgXCxse6A9RL4n8QRFgl4bEwyGmaoJBqPtvutx4j8SGUxDhLOYBqLfh5Lr1q1hmTiQygmXHbJJk8wH4vmtsNdudvIDYG++/sqOe7GnmwWZL8WOOMyukjgm1toU771nd1EVfp6oC2/wAU8eZkDHfw+FszukZheHH6XaReKuPSxOmi4fBJGz7z2wvIHzOpc7g+djHiDcjLmkiyHzMAc2MFjWWNrLhpHbvQU2A+MfASw8RZHj4rnc1kjgx58xJOmzdtIG19EBbf4p48zHGQ7h8LYT0kMLw0/XVS3d4l8RtexjuFRh0n3AceS3fLfdQtysf4aTImmhY+XHZHqZk66O1VFViqs36bdVV4j5uGjGlysN0jslrhJHNrMlggududNX7fJAdF3iTxIyRkTuFMa996WnHkBdXWhe6gm8X8ZhkMc2Jixvb1a6N4I+mpc8PM/EJsbGymY+LEwxt+1a3WwEdCSBbiL6qnxeSWTJbziw6I2sbplbJ5R0tzTRKA+geFOJ5HFuHSZGQyJj2zFgEYIFAA9yfVdDMA0x/81n8Vwf0df/sk3/8A0u/8rV6DIidJoLS22mxqBItAU44gMdkrWsawuADQDqAJr713fsoiXMjdr3c1xBc0buG4H5j8wrQxH8zUXx3d2Gnr61dX70sT/ZSNbHTSxhDS4E6ienb13QEmGw6nP8oA8vlFWR1P42q4NuHMYH/ecAehdqo360KV3HaGwMaAQA0dVHPjaySwt3NkOG1+orcFAVBKA572xsGga3tbqF13ogDstZXuLgSYXOLA463AmzvVE7D5K03EfpLeY1rTs4Nb1+ZO6SYZJ8paW9BquwPTYix80BVa8O1lro5WmE1Z1hp2tt9//hbth84x7btIfPp3NNaf8+ysvxSWUHNJIIdY2INbbdOiNxnNka7WDR1EkG7oD19kBUsCRoc0NFW5obt5b1fyr5hXYYy3GIeBbhZaBsNuirk65nNoAOlBLKN0Pp6gfQK7K0vjc0GrHVAc+FgMbTQ25QII6ggD+awW6WF9DSQ9zdJId5fU33U/wkltOqMaaoAGjXS9+yfCPojVGbBBBDqAPWt0BBI9+K41p1CvuigbB6j5jqtnRkxTS+UiMkHVep1dfNe30UjsJzgWvcxwdVkg3t9fcrL8R5deth93A2fmLo/VAQyeSWVrdmNoBtkWTpq/qVtNHyXODhG48subTaAojqL36pkwStJl1MLnbOOglp27i+hodFHjtlcXM+z8wA8pLj16kkmhXQe6A1e5w0WYnkxh3ncCRfQUTsPfunO1ANEkZbo282trX+h9R16+qty4hJ8hbXvYIHpYI29ijsM7kOaSRpIINV7UdkBpiMbK1zJGtot6NNg9dwrUUMcRJY2ieq0xYOVuSLqgBdDez191OgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIChkta7Je0tBJdHpvoD5tzS0yI3sLmMLNTdJoNprgTVEKzJjPc55Do6eQTqaSTXTv8AwSHGMfmcQaN029z7kkkoCpqBkIa0FunUGEbUdmj53f4FW5mFmOyMmwXtDttqJ6fJQwHVKxu2kPc8tAPl9O3ufqVee1r2FjhYIooDnBw5ep8LHvdesvBO99NgeiMlNRtsaZWlwcHn7rR0sjZTvxHufdxu9S4Gz86NFbDFcSC+UlzfuEADT/ggKMcm7dT8eLUPvteBRrbvv9Vs5pfjAlrAWMe6i3rv0P8ANWWYZDtywN6eUHp6Cya+i2fiFziNQDSHDYG9+o6oCFzLe+UhmkyFhGnYdgfxq1pjAykNrcmrcN20PNX12/FWJY3R482oNcZLsCwN+/dbYlule8nVsGh1EWO/1u/yQGM8C4jW41f+QqAxj7oAsiPTd7Xd9O23RWsiF0j2uaWbAinAkb/IqIYbwK1tINbkGxXSt+1oCIRuLtA0WNd2CW+Wujb72PwWgncWmPfSGhwGo99NAnrQJVn4R/8A9xoq9wDZvre/ssNwzeolgOnTTWmiKqiCd9ggI5YuUXahG48pzm00gAj1F7pCx0rgwuaSG6reNW1kAAfTdSNxJA1w1R05paQQ42PmTY+irTRyxu0XGQCa1ktO/o4HcH0QGzbMkLGHQXFwc4Ek7E3RPbYqOKUWxz348bT+22QeX03vzfVWcaJ0rQXkDS2muY2gDd7X2Gw91s3DcHfeY0f8INj5Amh9EBVbI+QxucInPJ87HGiTe1H5eiux48MsLHPGu20Se/8Amlp8G4FmkxkMPlsG+t70d1aiYI4wwEmu57oDLGhjQ1vQLKIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiA1l3ieD+6VQx4RKPII2kRssvbqs6R77BX5Wl8bmA1YVV2JI6rMRoBoADhQ9NjuPmgK3nJ2GoPjBZq3LXUdr9Nj+IUuIOa9rm1R8+ojzab2/Gj9FJkR8qCr8znA662bXSgPT0UuHvzHkC3P2I9O35ICHKJ57g77vkaT6NN/xIAURcOYxrYo4nE6W0HNPysNpXZ4RJuCA6q3Fgj0I7hQMxJGmw9jD2LQSR8rJpAV5JS9g2jAa8xhrnCgAN6B6lasfZYNcRIkGqNrg4VYp1Xt/8K27E8vlcLJ1EG6v1FGwVszFIZRcL7UDQ3u/U9EBVc3SXv0xnmB2xb084H+PzSdpgBbuS0gagPM4EUPz2+oVg4jiDbmEm7BBrcgmt76hYyHOZK2iA5rCA5wJ1E1XQdLQG+GzzOf5QB5fKKsjqfxtQ6A7Je3pcj9x/darmO0NgY0AgBo2KruxHkmnsHmLtQB1X+KAgDQWCQNZQYwvFHcnrW+yw4OjbrBB3eGnfVbQdye910U/wj6+9GKAAADqIHS90OI8my6MkkmiDQvrW/uUBHGXZTwTpstLvMNQAsgAD6LWiDC1lMc5zmucCT0cBtfbrspjhEMDWubQs73tfWiDdLEuLJyx5mnlg6NDaI7+vsEBG1gMUU5DND3N8osOonbzXv7qMudyy6465ugNcaaNruidz7fMrEZkE7XHkmnXbQbPybexP8yrYxCYW7tDyLcD0v123B3QFRs2kaQ+MW8B7GPH3PWgdvTZSYu8oDuUWl1ao9rsHykdvqp24hAaS9oc12oAA1fqbNlZgxCx+pxYBYJ03vV11Job9EBIzGha8PDPMO/1tTIiAIiIAiIgCIiAIiIAiIgPNf6F8L/8AEZn/AHt/9qf6F8L/APEZn/e3/wBq9KiA81/oXwv/AMRmf97f/an+hfC//EZn/e3/ANq9KiA81/oXwv8A8Rmf97f/AGp/oXwv/wARmf8Ae3/2r0qIDzX+hfC//EZn/e3/ANqf6F8L/wDEZn/e3/2r0qIDzX+hfC//ABGZ/wB7f/an+hfC/wDxGZ/3t/8AavSogKPBeGY/CcV2Pjvlexzy8mQgmyAOwHoryIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiA/9k=\" style=\"width: 934px;\" data-filename=\"istockphoto-987409372-1024x1024.jpg\"></p>', 'Tile-H5xy0947', 'tile-fix-62848', '14.jpg', NULL, '2022-08-20 09:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'web', '2022-07-26 05:27:52', '2022-07-26 05:27:52'),
(6, 'Modarator', 'web', '2022-07-26 05:38:31', '2022-07-26 05:38:31'),
(7, 'Sub Modarator', 'web', '2022-07-26 10:10:16', '2022-07-26 10:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(7, 6),
(7, 7),
(8, 5),
(8, 6),
(8, 7),
(9, 5),
(9, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2022-06-04 18:20:37', NULL),
(2, 'M', '2022-06-04 18:20:43', NULL),
(3, 'L', '2022-06-04 18:20:48', NULL),
(4, 'XL', '2022-06-04 18:21:01', NULL),
(5, 'NA', '2022-06-04 18:28:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sslorders`
--

CREATE TABLE `sslorders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sslorders`
--

INSERT INTO `sslorders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62b4ac37cff83', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62b4af69ef5bb', 'BDT'),
(3, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62b4b2afe6374', 'BDT'),
(4, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62b4b4102a3d6', 'BDT'),
(5, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4b5c4ee127', 'BDT'),
(6, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4b7147ad7d', 'BDT'),
(7, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4b8745c5d5', 'BDT'),
(8, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4b93361272', 'BDT'),
(9, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4b9cf5812e', 'BDT'),
(10, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4bac88e695', 'BDT'),
(11, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62b4bbf16133d', 'BDT'),
(12, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4bc6179fe0', 'BDT'),
(13, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4c3bfa29fd', 'BDT'),
(14, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b4c5a47bbe7', 'BDT'),
(15, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b71e769b645', 'BDT'),
(16, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62b7215dbc109', 'BDT'),
(17, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', NULL, 'Customer Address', 'Pending', '62b7227c7b788', 'BDT'),
(18, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', NULL, 'Customer Address', 'Pending', '62b7228618136', 'BDT'),
(19, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 3680, 'Customer Address', 'Pending', '62b7228e23a4e', 'BDT'),
(20, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 3680, 'Customer Address', 'Pending', '62b722c905796', 'BDT'),
(21, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 62770, 'Customer Address', 'Pending', '62f0a06cbe737', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `added_by`, `subcategory_name`, `subcategory_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Computer', '1.jpg', NULL, '2022-06-04 18:00:26', '2022-06-04 18:00:26'),
(2, 1, 1, 'Mobile', '2.jpg', NULL, '2022-06-04 18:01:45', '2022-06-04 18:01:48'),
(3, 1, 1, 'Camera', '3.jpg', NULL, '2022-06-04 18:02:35', '2022-06-04 18:02:38'),
(4, 1, 1, 'Laptop', '4.jpg', NULL, '2022-06-04 18:03:24', '2022-06-04 18:03:24'),
(5, 1, 1, 'Tablets', '5.jpg', NULL, '2022-06-04 18:04:01', '2022-06-04 18:04:09'),
(6, 2, 1, 'T-Shirt', '6.jpg', NULL, '2022-06-04 18:05:34', '2022-06-04 18:05:35'),
(7, 2, 1, 'Shirt', '7.jpg', NULL, '2022-06-04 18:07:17', '2022-06-04 18:07:20'),
(8, 2, 1, 'Pant', '8.jpg', NULL, '2022-06-04 18:16:59', '2022-06-04 18:17:02'),
(9, 3, 1, 'Fan', 'default.png', NULL, '2022-06-04 18:17:25', NULL),
(10, 4, 1, 'Watch', '10.jpg', NULL, '2022-06-04 18:18:04', '2022-06-04 18:18:05'),
(15, 12, 1, 'Tile Fix', '15.jpg', NULL, '2022-08-20 09:14:20', '2022-08-20 09:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnils`
--

CREATE TABLE `thumbnils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `thumbnil_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thumbnils`
--

INSERT INTO `thumbnils` (`id`, `product_id`, `thumbnil_name`, `created_at`, `updated_at`) VALUES
(1, 1, '1-1.jpg', '2022-06-04 18:24:03', NULL),
(2, 1, '1-2.jpg', '2022-06-04 18:24:03', NULL),
(3, 1, '1-3.jpg', '2022-06-04 18:24:03', NULL),
(4, 1, '1-4.jpg', '2022-06-04 18:24:03', NULL),
(5, 2, '2-1.jpg', '2022-06-04 18:25:56', NULL),
(6, 2, '2-2.jpg', '2022-06-04 18:25:56', NULL),
(7, 2, '2-3.jpg', '2022-06-04 18:25:57', NULL),
(8, 3, '3-1.jpg', '2022-06-04 18:27:59', NULL),
(9, 3, '3-2.jpg', '2022-06-04 18:28:00', NULL),
(10, 3, '3-3.jpg', '2022-06-04 18:28:01', NULL),
(11, 4, '4-1.jpg', '2022-06-05 01:41:57', NULL),
(12, 4, '4-2.jpg', '2022-06-05 01:42:02', NULL),
(13, 4, '4-3.jpg', '2022-06-05 01:42:05', NULL),
(14, 4, '4-4.jpg', '2022-06-05 01:42:07', NULL),
(15, 4, '4-5.jpg', '2022-06-05 01:42:09', NULL),
(16, 6, '6-1.jpg', '2022-06-05 01:47:49', NULL),
(17, 6, '6-2.jpg', '2022-06-05 01:47:50', NULL),
(18, 6, '6-3.jpg', '2022-06-05 01:47:52', NULL),
(19, 6, '6-4.jpg', '2022-06-05 01:47:54', NULL),
(20, 7, '7-1.PNG', '2022-06-05 01:48:45', NULL),
(21, 7, '7-2.PNG', '2022-06-05 01:48:45', NULL),
(22, 7, '7-3.PNG', '2022-06-05 01:48:45', NULL),
(23, 7, '7-4.PNG', '2022-06-05 01:48:45', NULL),
(24, 8, '8-1.jpg', '2022-06-05 01:51:18', NULL),
(25, 8, '8-2.jpg', '2022-06-05 01:51:21', NULL),
(26, 8, '8-3.jpg', '2022-06-05 01:51:22', NULL),
(27, 8, '8-4.jpg', '2022-06-05 01:51:25', NULL),
(28, 9, '9-1.jpg', '2022-06-08 01:36:37', NULL),
(29, 9, '9-2.jpg', '2022-06-08 01:36:43', NULL),
(30, 9, '9-3.jpg', '2022-06-08 01:36:46', NULL),
(31, 9, '9-4.jpg', '2022-06-08 01:36:50', NULL),
(32, 9, '9-5.jpg', '2022-06-08 01:36:52', NULL),
(33, 10, '10-1.jpg', '2022-06-08 06:27:35', NULL),
(34, 10, '10-2.jpg', '2022-06-08 06:27:36', NULL),
(35, 10, '10-3.jpg', '2022-06-08 06:27:36', NULL),
(36, 10, '10-4.jpg', '2022-06-08 06:27:36', NULL),
(37, 10, '10-5.jpg', '2022-06-08 06:27:37', NULL),
(38, 10, '10-6.jpg', '2022-06-08 06:27:37', NULL),
(39, 11, '11-1.jpg', '2022-08-07 23:07:18', NULL),
(40, 11, '11-2.jpg', '2022-08-07 23:07:20', NULL),
(41, 11, '11-3.jpg', '2022-08-07 23:07:23', NULL),
(42, 12, '12-1.png', '2022-08-07 23:24:10', NULL),
(43, 12, '12-2.jpeg', '2022-08-07 23:24:10', NULL),
(44, 12, '12-3.webp', '2022-08-07 23:24:10', NULL),
(45, 13, '13-1.png', '2022-08-07 23:29:56', NULL),
(46, 14, '14-1.jpg', '2022-08-20 09:17:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rupam', 'rupam272@gmail.com', '2022-07-01 15:45:59', '$2y$10$8bEciFm1L.CrhUlyq8Gs0uaF/jNJawN0BUmBR5qh59ggT7MQVRBeK', NULL, '2022-06-04 17:50:40', '2022-06-04 17:50:40'),
(2, 'Tashya Ochoa', 'cezynu@mailinator.com', '2022-07-08 15:47:25', '$2y$10$PVZjOKrFciDFShEhYCwb3OpuyVxOcHImOM72JxmS7kgA9G2sxMiUe', NULL, '2022-06-16 09:14:18', '2022-06-16 09:14:18'),
(3, 'protik', 'syzedudo@mailinator.com', NULL, '$2y$10$QM9a0eXujvxeAypIr8s8NO.izakjdrsrS6/Uk/Wqoc51tAATUQ/8a', NULL, '2022-08-20 09:23:07', '2022-08-20 09:23:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_email_verifies`
--
ALTER TABLE `customer_email_verifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_logins`
--
ALTER TABLE `customer_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_pass_resets`
--
ALTER TABLE `customer_pass_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_details`
--
ALTER TABLE `order_product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslorders`
--
ALTER TABLE `sslorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnils`
--
ALTER TABLE `thumbnils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_email_verifies`
--
ALTER TABLE `customer_email_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_logins`
--
ALTER TABLE `customer_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customer_pass_resets`
--
ALTER TABLE `customer_pass_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_product_details`
--
ALTER TABLE `order_product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sslorders`
--
ALTER TABLE `sslorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `thumbnils`
--
ALTER TABLE `thumbnils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
