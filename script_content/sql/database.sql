-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 08:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `about`, `service`, `history`, `created_at`, `updated_at`) VALUES
(4, 'uploads/website-images/about-2021-10-30-04-24-04-8214.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. </p><p>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. </p><p>Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '<div>Lorem ipsum dolor sit amet, tamquam nusquam repudiare ius ne, ne est alii ubique impetus. Aeterno fuisset per no, nec at probatus pertinacia. Ex liber fabulas petentium vim, cu usu natum nostro. Ea mei erant integre veritus, ea quo inermis dolorem interpretaris. Mei te iudico probatus, duo nobis nemore an. Sed viris adipiscing argumentum et, ullum inani commune pro te.</div><div><br></div><div>Eu eam oratio impetus ocurreret, usu ei forensibus honestatis. At ullum labores noluisse sit. Vim in inimicus salutandi accusamus, mea paulo adipisci at, graece incorrupte mea cu. Te sed nostrum appareat.</div><div><br></div><div>Tation tritani civibus est id. Quodsi nostrud dolorum ex est, elitr elaboraret te ius. Vis id novum solet oblique. Mea ei facilis euripidis efficiendi. Ex mea novum lucilius maiestatis, ius posse facilisis consetetur ex. Ei quo erroribus signiferumque, quem explicari intellegat eu vix.</div>', '<div>Lorem ipsum dolor sit amet, tamquam nusquam repudiare ius ne, ne est alii ubique impetus. Aeterno fuisset per no, nec at probatus pertinacia. Ex liber fabulas petentium vim, cu usu natum nostro. Ea mei erant integre veritus, ea quo inermis dolorem interpretaris. Mei te iudico probatus, duo nobis nemore an. Sed viris adipiscing argumentum et, ullum inani commune pro te.</div><div><br></div><div>Eu eam oratio impetus ocurreret, usu ei forensibus honestatis. At ullum labores noluisse sit. Vim in inimicus salutandi accusamus, mea paulo adipisci at, graece incorrupte mea cu. Te sed nostrum appareat.</div><div><br></div><div>Tation tritani civibus est id. Quodsi nostrud dolorum ex est, elitr elaboraret te ius. Vis id novum solet oblique. Mea ei facilis euripidis efficiendi. Ex mea novum lucilius maiestatis, ius posse facilisis consetetur ex. Ei quo erroribus signiferumque, quem explicari intellegat eu vix.</div>', '2021-07-12 01:11:22', '2021-11-08 16:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_quantity` int(11) NOT NULL DEFAULT 0,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `header`, `icon`, `description`, `section_name`, `content_quantity`, `show_homepage`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'fab fa-accessible-icon', 'After reading the content and examples on the Slogan Creator website, I had a very good feeling about the level and examples on the Slogan Creator website', 'About Section', 0, 1, NULL, '2021-09-03 16:11:26'),
(2, 'Our Winning Awards', 'fas fa-address-book', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'award section', 4, 1, NULL, '2021-10-18 01:53:07'),
(3, 'Our Team', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'team section', 4, 1, NULL, '2021-10-18 01:52:55'),
(4, NULL, NULL, NULL, 'Partner Section', 10, 1, NULL, '2021-08-24 12:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `admin_type` int(1) NOT NULL DEFAULT 0,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `phone`, `password`, `image`, `forget_password_token`, `status`, `author_id`, `admin_type`, `facebook`, `twitter`, `whatsapp`, `instagram`, `linkedin`, `remember_token`, `created_at`, `updated_at`, `pinterest`, `youtube`, `address`, `about`, `banner_image`, `website`) VALUES
(4, 'Earl Newell', 'earl-newell', 'admin@gmail.com', '111-233-5443', '$2y$10$NRUBM2bljJnXlIKMYbdW6u6Zt08tq5TGSuFpZmhD6WyoMkGzsLP1u', 'uploads/website-images/earl-newell-2021-10-07-08-20-15-5266.jpg', NULL, 1, 0, 1, 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.whatsapp.com', '#', 'https://www.linkedin.com', 'E1xp4OFrKKbdaZdtwOa7nnrsFzEKGQAPnyGMT5f2RjlYJMuyZ4vTSTvf1T1E', '2021-06-25 23:14:28', '2021-10-18 07:17:20', '#', '#', 'Franklin County, Florida', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, est dolorum!t consectetur adipisicing elit. Labore, est dolorum!t consectetur adipisicing elit. Labore, est dolorum!t consectetur adipisicing elit. Labore, est dolorum!', 'uploads/website-images/listing-banner-2021-10-07-08-20-15-7666.jpg', 'https://example.com'),
(9, 'John Peter', 'John-Peter', 'john@gmail.com', '', '$2y$10$RBxBrErq8NaHE2iKczACJO47LZPaWDa.PE3SqaTaZ4uNuukKU4UqG', '', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 05:59:06', '2021-10-12 05:23:34', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Nicholas pooran', 'nicholas-pooran', 'staff@gmail.com', NULL, '$2y$10$Ggj866uFXwjCuRDLqC.0/ukZxFHXFA0nty7XeyPR3hVxvct.gpD4e', NULL, NULL, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 02:22:30', '2021-10-17 10:13:50', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aminities`
--

CREATE TABLE `aminities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aminity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aminities`
--

INSERT INTO `aminities` (`id`, `aminity`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Good for kids', 'good-for-kids', 1, '2021-07-29 14:04:35', '2021-10-10 03:05:37'),
(2, 'Elevator in building', 'elevator-in-building', 1, '2021-07-29 14:05:00', '2021-07-29 14:05:00'),
(3, 'Bike Parking', 'bike-parking', 1, '2021-07-29 14:05:21', '2021-10-08 03:07:57'),
(4, 'Alcohol', 'alcohol', 1, '2021-07-29 14:06:36', '2021-07-29 14:06:36'),
(5, 'Reservations', 'reservations', 1, '2021-07-29 14:06:50', '2021-07-29 14:06:50'),
(6, 'Free coffee and tea', 'free-coffee-and-tea', 1, '2021-07-29 14:07:07', '2021-08-29 08:53:48'),
(7, 'Accepts Credit Cards', 'accepts-credit-cards', 1, '2021-07-29 14:07:24', '2021-07-29 14:07:24'),
(14, 'Air Condition', 'air-condition', 1, '2021-09-09 03:30:21', '2021-09-09 03:30:21'),
(15, 'Cable Tv', 'cable-tv', 1, '2021-09-09 03:30:27', '2021-09-09 03:30:27'),
(16, 'Balcony', 'balcony', 1, '2021-09-09 03:30:37', '2021-09-09 03:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `name`, `qty`, `image`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Total Properties', '330', 'uploads/custom-images/award-2021-11-05-09-37-31-4709.png', 'fab fa-affiliatetheme', '1', '2021-09-12 06:48:56', '2021-11-05 15:37:31'),
(2, 'Happy Clients', '115', 'uploads/custom-images/award-2021-11-05-09-35-15-8548.png', 'fab fa-fort-awesome', '1', '2021-09-12 06:50:04', '2021-11-05 15:35:15'),
(3, 'Successfull Orders', '220', 'uploads/custom-images/award-2021-11-05-09-35-27-4768.png', 'fas fa-angle-double-up', '1', '2021-09-12 06:56:34', '2021-11-05 15:35:27'),
(7, 'Our Teams', '123', 'uploads/custom-images/award-2021-11-05-09-35-37-1454.png', 'fab fa-audible', '1', '2021-09-12 07:14:39', '2021-11-05 15:35:37'),
(8, 'Our Categories', '100', 'uploads/custom-images/award-2021-11-01-01-22-21-1086.jpg', 'fas fa-balance-scale', '1', '2021-09-12 07:15:24', '2021-11-01 07:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_type` int(11) NOT NULL DEFAULT 1,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `image_type`, `location`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Property', 'uploads/website-images/banner-2021-10-07-08-14-03-2666.jpg', NULL, '2021-10-07 02:14:04'),
(2, 1, 'About Us', 'uploads/website-images/banner-2021-10-10-10-17-15-2159.jpg', NULL, '2021-10-10 04:17:20'),
(3, 1, 'Pricing Plan', 'uploads/website-images/banner-2021-10-07-08-14-29-5678.jpg', NULL, '2021-10-07 02:14:29'),
(5, 1, 'Blog', 'uploads/website-images/banner-2021-10-07-08-14-38-8422.jpg', NULL, '2021-10-07 02:14:38'),
(6, 1, 'Contact Us', 'uploads/website-images/banner-2021-10-07-08-14-48-4464.png', NULL, '2021-10-07 02:14:49'),
(7, 2, 'Admin Login', 'uploads/website-images/login-2021-10-12-09-34-01-8223.jpg', NULL, '2021-10-12 03:34:04'),
(8, 2, 'Staff Login', 'uploads/website-images/login-2021-10-12-09-34-45-6052.jpg', NULL, '2021-10-12 03:34:48'),
(9, 1, 'Terms and Condition', 'uploads/website-images/banner-2021-10-07-08-15-33-2100.png', NULL, '2021-10-07 02:15:33'),
(10, 1, 'Privacy Policy', 'uploads/website-images/banner-2021-10-07-08-15-50-7388.jpg', NULL, '2021-10-07 02:15:50'),
(11, 1, 'User Login', 'uploads/website-images/banner-2021-10-07-08-16-02-7156.jpg', NULL, '2021-10-07 02:16:03'),
(12, 1, 'Payment Page', 'uploads/website-images/banner-2021-10-07-08-16-13-5674.png', NULL, '2021-10-07 02:16:13'),
(15, 4, 'Default User Profile Image', 'uploads/website-images/login-2021-10-12-09-35-04-1838.jpg', NULL, '2021-10-12 03:35:07'),
(17, 1, 'custom page', 'uploads/website-images/banner-2021-10-07-08-16-27-5530.jpg', NULL, '2021-10-07 02:16:27'),
(18, 1, 'Agent Profile', 'uploads/website-images/banner-2021-10-07-08-16-37-3989.jpg', NULL, '2021-10-07 02:16:38'),
(19, 1, 'FAQ', 'uploads/website-images/banner-2021-10-07-08-16-47-8007.jpg', NULL, '2021-10-07 02:16:48'),
(20, 5, 'faq detail page', 'uploads/website-images/faq-2021-10-27-08-27-58-3913.jpg', NULL, '2021-10-27 02:28:04'),
(21, 1, 'Agent Page', 'uploads/website-images/banner-2021-10-07-08-17-01-7063.jpg', NULL, '2021-10-07 02:17:01'),
(22, 3, 'Footer Background', 'uploads/website-images/banner-2021-11-01-01-02-10-3098.jpg', NULL, '2021-11-01 07:02:12'),
(23, 5, 'Feature Image', 'uploads/website-images/faq-2021-10-31-09-37-06-9067.jpg', NULL, '2021-10-31 03:37:11'),
(25, 3, 'Testimonial Background', 'uploads/website-images/banner-2021-10-30-09-13-22-2956.jpg', NULL, '2021-10-30 03:13:24'),
(26, 3, 'Agent Background', 'uploads/website-images/banner-2021-10-30-09-13-33-7585.jpg', NULL, '2021-10-30 03:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `admin_id`, `view`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `image`, `status`, `show_homepage`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 29, 'The Best Delicious Coffee Shop In Bangkok China.', 'the-best-delicious-coffee-shop-in-bangkok-china', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'The Best Delicious Coffee Shop In Bangkok China.', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque n', 'uploads/custom-images/blog-img-2021-10-18-08-09-44-8741.jpg', 1, 1, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis,', '2021-07-29 11:43:52', '2021-10-28 11:37:02'),
(2, 2, 4, 154, 'America National Parks with Denver', 'america-national-parks-with-denver', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit&nbsp;</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit&nbsp;</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit&nbsp;</p><p><br></p>', 'America National Parks with Denver', 'America National Parks with Denver', 'uploads/custom-images/blog-img-2021-10-18-08-11-15-4718.jpg', 1, 1, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis,', '2021-07-29 11:45:02', '2021-10-30 03:42:37'),
(3, 4, 4, 57, 'A Seaside Reset in Laguna Beach', 'a-seaside-reset-in-laguna-beach', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'A Seaside Reset in Laguna Beach', 'A Seaside Reset in Laguna Beach', 'uploads/custom-images/blog-img-2021-10-18-08-12-30-8479.jpg', 1, 0, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis,', '2021-07-29 11:46:07', '2021-10-18 07:11:33'),
(5, 2, 4, 5, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'Lorem Ipsum is simply dummy text of the printing', 'blog seo description', 'uploads/custom-images/blog-img-2021-10-18-08-21-16-7466.jpg', 1, 1, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis,', '2021-08-25 14:08:25', '2021-10-18 07:12:22'),
(6, 2, 4, 16, 'What People Says About Real Estate Properties', 'what-people-says-about-real-estate-properties', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', 'What People Says About Real Estate Properties', 'What People Says About Real Estate Properties', 'uploads/custom-images/blog-img-2021-10-18-08-21-49-2191.jpg', 1, 0, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.', '2021-09-02 09:47:54', '2021-10-18 07:13:01'),
(7, 5, 4, 5, 'List Of Benifits And Impressive Listeo Services', 'list-of-benifits-and-impressive-listeo-services', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p><br></p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'List Of Benifits And Impressive Listeo Services', 'List Of Benifits And Impressive Listeo Services', 'uploads/custom-images/blog-img-2021-09-11-12-16-30-8264.jpg', 1, 0, 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis,', '2021-09-02 09:48:55', '2021-10-18 07:13:47'),
(14, 2, 4, 1, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'simple-ways-to-reduce-your-unwanted-wrinkles', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'uploads/custom-images/blog-img-2021-10-19-09-17-37-4903.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:17:43', '2021-10-19 03:18:10'),
(15, 10, 4, 1, '10 Reasons To Start Your Own, Profitable Website!', '10-reasons-to-start-your-own-profitable-website', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', '10 Reasons To Start Your Own, Profitable Website!', '10 Reasons To Start Your Own, Profitable Website!', 'uploads/custom-images/blog-img-2021-10-19-09-18-56-2954.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:18:59', '2021-11-17 12:25:44'),
(16, 4, 4, 1, '9 Things I Love About Shaving My Head During Quarantine', '9-things-i-love-about-shaving-my-head-during-quarantine', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', '9 Things I Love About Shaving My Head During Quarantine', '9 Things I Love About Shaving My Head During Quarantine', 'uploads/custom-images/blog-img-2021-10-19-09-19-59-8695.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:20:04', '2021-10-28 11:54:03'),
(17, 4, 4, 2, 'Level Up Your Live Streams With Automated Captions And More', 'level-up-your-live-streams-with-automated-captions-and-more', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Level Up Your Live Streams With Automated Captions And More', 'Level Up Your Live Streams With Automated Captions And More', 'uploads/custom-images/blog-img-2021-10-19-09-22-23-8265.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:22:26', '2021-10-19 03:37:19'),
(18, 2, 4, 5, 'Apple IMac With Retina 5K Display Review', 'apple-imac-with-retina-5k-display-review', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Apple IMac With Retina 5K Display Review', 'Apple IMac With Retina 5K Display Review', 'uploads/custom-images/blog-img-2021-10-19-09-23-10-3676.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:23:16', '2021-11-01 04:33:19'),
(19, 5, 4, 3, 'A Skin Cream That’s Proven To Work', 'a-skin-cream-thats-proven-to-work', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'A Skin Cream That’s Proven To Work', 'A Skin Cream That’s Proven To Work', 'uploads/custom-images/blog-img-2021-10-19-09-23-56-7718.jpg', 1, 0, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in', '2021-10-19 03:24:01', '2021-10-26 14:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fitness', 'fitness', 1, '2021-07-29 11:41:39', '2021-10-17 08:54:59'),
(2, 'Lifestyle', 'lifestyle', 1, '2021-07-29 11:41:47', '2021-10-10 04:33:29'),
(4, 'Event', 'event', 1, '2021-07-29 11:42:05', '2021-07-29 11:42:05'),
(5, 'Bar & Cafe', 'bar-cafe', 1, '2021-07-29 11:42:16', '2021-07-29 11:42:16'),
(10, 'Food & Drink', 'food-drink', 1, '2021-10-17 08:55:37', '2021-10-17 08:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `phone`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Maria Jesus', 'maria32@gmail.com', '256-458-963', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 1, '2021-07-29 11:52:57', '2021-08-05 10:32:36'),
(4, 2, 'Morni morkel', 'user@gmail.com', NULL, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 1, '2021-09-21 02:33:08', '2021-10-10 04:38:15'),
(6, 2, 'Darren shammi', 'darren36@gmail.com', NULL, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 1, '2021-09-28 10:47:40', '2021-10-17 08:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_state_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'England', 'england', 1, '2021-09-07 06:13:10', '2021-09-07 07:02:36'),
(2, 4, 'Tezpur', 'tezpur', 1, '2021-09-07 06:13:43', '2021-10-10 03:27:46'),
(4, 5, 'Los Angeles', 'los-angeles', 1, '2021-09-07 06:29:30', '2021-09-07 07:04:09'),
(5, 5, 'California City', 'california-city', 1, '2021-09-07 07:04:37', '2021-10-17 09:26:03'),
(6, 5, 'Oaklan', 'oaklan', 1, '2021-09-07 07:05:05', '2021-10-17 09:26:05'),
(7, 9, 'Miami', 'miami', 1, '2021-09-07 07:05:37', '2021-09-07 07:05:37'),
(8, 9, 'Tampa', 'tampa', 1, '2021-09-07 07:05:44', '2021-09-07 07:05:44'),
(9, 9, 'Florida City', 'florida-city', 1, '2021-09-07 07:05:57', '2021-09-07 07:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `condition_privacies`
--

CREATE TABLE `condition_privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condition_privacies`
--

INSERT INTO `condition_privacies` (`id`, `terms_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', '2021-07-30 06:13:24', '2021-10-18 01:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `header`, `phones`, `emails`, `address`, `about`, `map_embed_code`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', '(347) 430-9510\r\n(587) 860-2590', 'support@websolutionus.com\r\ntest@gmail.com', '95 South Park Avenue,  New York, USA', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3198216.8931082254!2d-100.5640844045411!3d38.48167245382935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87a31771717c016b%3A0x68c2b4a94b3e095f!2sKansas%2C%20USA!5e0!3m2!1sen!2sbd!4v1630340068888!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Copyright 2021, Websolutionus. All Rights Reserved.', '2021-06-11 03:01:41', '2021-10-17 09:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_notification` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topbar_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `topbar_email`, `topbar_phone`, `footer_address`, `footer_email`, `footer_phone`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 'info23@website.com', '111-233-1273', 'San Francisco City Hall, San Francisco, CA', 'example@gmail.com', '111-233-1273', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', 'https://www.youtube.com', '2021-06-11 03:18:20', '2021-10-18 02:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'India', 'india', 1, '2021-09-07 04:24:24', '2021-09-07 04:40:01'),
(4, 'United Kindom', 'united-kindom', 1, '2021-09-07 04:27:05', '2021-10-10 03:24:53'),
(5, 'Australia', 'australia', 1, '2021-09-07 04:37:39', '2021-10-17 09:25:37'),
(6, 'United State', 'united-state', 1, '2021-09-07 06:56:14', '2021-10-17 09:25:38'),
(7, 'Africa', 'africa', 1, '2021-09-07 07:01:25', '2021-09-07 07:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'England', 'england', 1, '2021-09-07 05:01:44', '2021-10-17 09:25:45'),
(2, 2, 'Andhra Pradesh', 'andhra-pradesh', 1, '2021-09-07 05:02:19', '2021-10-17 09:25:46'),
(3, 2, 'Assam', 'assam', 1, '2021-09-07 05:02:29', '2021-09-07 06:57:43'),
(4, 5, 'Queensland', 'queensland', 1, '2021-09-07 05:02:43', '2021-09-07 06:58:11'),
(5, 6, 'California', 'california', 1, '2021-09-07 05:02:59', '2021-09-07 06:58:29'),
(6, 4, 'Wales', 'wales', 1, '2021-09-07 05:33:06', '2021-09-07 06:58:52'),
(8, 6, 'Arizona', 'arizona', 1, '2021-09-07 06:59:44', '2021-09-07 06:59:44'),
(9, 6, 'Florida', 'florida', 1, '2021-09-07 06:59:59', '2021-09-07 06:59:59'),
(10, 6, 'Georgia', 'georgia', 1, '2021-09-07 07:00:20', '2021-09-07 07:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page 1', 'custom-page-1', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', 'Custom Page 1', 'Custom Page 1', 1, '2021-08-06 13:43:15', '2021-10-18 01:50:49'),
(3, 'Custom Page 2', 'custom-page-2', '<p>Lorem ipsum dolor sit amet, et veniam vidisse feugiat pri, sit legendos repudiare concludaturque in. Exerci dolorem at vel, ut nam nihil omnesque, eam oratio tractatos consetetur id. Id vocent utroque verterem per, mea illud aliquam prodesset no. Mea ut commodo mentitum verterem. An liber moderatius eos. Eum vidit tamquam intellegebat et, quo elit principes at.</p><p><br></p><p><span style=\"font-size: 1rem;\">Clita verear cotidieque has an, pericula expetenda hendrerit ei vis, te utinam ubique mei. In alterum volutpat vel, iusto reprehendunt mel in. Pro ea assum contentiones, nam in ponderum adversarium. Eu tollit propriae eum, cum ea legere mediocrem incorrupte. Detracto pertinax neglegentur ex est, mea offendit referrentur cu. Blandit convenire eam ea, summo detraxit constituam ius ex. No dolor contentiones voluptatibus eum.</span></p><p><span style=\"font-size: 1rem;\"><br></span></p><p><span style=\"font-size: 1rem;\">Quo stet sale nostrud eu, at vim vide dictas. Vis in hendrerit expetendis, quod constituto ne pri. Justo disputando vim ex. Usu in facete ancillae, quot ubique nec ad, at movet sonet rationibus vel. Est ad soleat quaeque, ei mundi delicata eum.</span></p><p><br></p><p><span style=\"font-size: 1rem;\">At volutpat abhorreant eum, vidit necessitatibus qui no. Ut mei vitae tamquam prodesset, eu sumo recusabo est, eos euismod conceptam te. Debet scriptorem pro in, iudicabit eloquentiam mei ad. Quo an aliquip sadipscing, legimus incorrupte ne cum, ne porro ignota accumsan pro. Mei error voluptatum eu, et sea summo vulputate consetetur.</span></p>', 'Custom Page 2', 'Custom Page 2', 1, '2021-08-06 14:03:42', '2021-10-18 01:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginators`
--

CREATE TABLE `custom_paginators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginators`
--

INSERT INTO `custom_paginators` (`id`, `page`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 5, NULL, '2021-11-08 15:47:13'),
(2, 'Property', 4, NULL, '2021-10-27 03:38:09'),
(3, 'Agent', 1, NULL, '2021-10-27 03:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `custom_day`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 'Saturday', NULL, '2021-07-15 02:27:30'),
(2, 'Sunday', 'Sunday', NULL, '2021-08-05 02:53:07'),
(3, 'Monday', 'Monday', NULL, '2021-07-15 02:27:39'),
(4, 'Tuesday', 'Tuesday', NULL, '2021-07-15 02:27:45'),
(5, 'Wednesday', 'Wednesday', NULL, '2021-07-15 02:27:49'),
(6, 'Thursday', 'Thursday', NULL, '2021-07-15 02:27:53'),
(7, 'Friday', 'Friday', NULL, '2021-07-15 02:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `email_password`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'smtp.mailtrap.io', '587', 'maryleynda12@gmail.com', 'mary+pass@', '2d046afc38f85f', 'df88fd38431742', 'tls', NULL, '2021-11-17 10:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', NULL, '2021-10-12 05:12:53'),
(2, 'contact email', 'Contact Email', '<p><span style=\"font-size: 1rem;\">Name: {{name}}</span></p><p><span style=\"font-size: 1rem;\">Email: {{email}}</span><br></p>\r\n<p>Phone: {{phone}}</p>\r\n<p>Subject: {{subject}}</p>\r\n<p>Message: {{message}}</p>', NULL, '2021-10-10 01:35:19'),
(4, 'subscribe notification', 'Subscribe Notification', '<h2>Hi there,</h2>\r\n<p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>', NULL, '2021-10-09 04:03:36'),
(5, 'user verification', 'User Verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\r\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, '2021-10-12 05:21:28'),
(6, 'order successfull', 'Order Successfull', '<h4>Dear <b>{{user_name}}</b>,</h4><p> Thanks for your new order. Your order id has been submited.</p><p><span style=\"font-size: 1rem;\">Payment Method :</span><b style=\"font-size: 1rem;\"> {{payment_method}}</b></p><p>Total amount:<b> {{amount}}</b></p><p><b>{{order_details}}</b></p><p><b><br></b></p>', NULL, '2021-10-17 08:48:05'),
(7, 'pre notification for Order Expire date', 'expired order', '<p>hi <b>{{user_name}}</b>,</p><p>your order will expire at <b>{{expire_date}}</b>. if you want to renew the order. click this lin<b>k&nbsp;</b></p><p><span style=\"font-size: 1rem;\"><b>{{order_details}}</b></span></p>', NULL, '2021-08-05 04:03:57'),
(8, 'Payment Accept', 'Payment Accept', 'Hi {{user_name}}, Your Payment have been approved successfully', NULL, '2021-11-17 10:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Who Are Our Clients?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere cum eum quas, maiores nobis tempore tenetur. Rem labore quasi quod doloremque dolores commodi neque inventore maxime aut, dicta minima ratione tempora, odio nobis distinctio aliquid ex. Nesciunt fuga, officiis impedit, alias, id consequuntur deleniti, dolores explicabo quibusdam nihil eligendi delectus sunt nam nisi architecto vitae provident quae hic! Qui aperiam asperiores repellat cumque consectetur provident reiciendis, quam architecto error, eaque.', 1, '2021-09-11 06:50:54', '2021-09-20 09:25:39'),
(2, 'How To Buy a Product ?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere cum eum quas, maiores nobis tempore tenetur. Rem labore quasi quod doloremque dolores commodi neque inventore maxime aut, dicta minima ratione tempora, odio nobis distinctio aliquid ex. Nesciunt fuga, officiis impedit, alias, id consequuntur deleniti, dolores explicabo quibusdam nihil eligendi delectus sunt nam nisi architecto vitae provident quae hic! Qui aperiam asperiores repellat cumque consectetur provident reiciendis, quam architecto error, eaque.', 1, '2021-09-11 06:51:24', '2021-10-17 09:38:26'),
(3, 'How to make a payment by credit card?', '`Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere cum eum quas, maiores nobis tempore tenetur. Rem labore quasi quod doloremque dolores commodi neque inventore maxime aut, dicta minima ratione tempora, odio nobis distinctio aliquid ex. Nesciunt fuga, officiis impedit, alias, id consequuntur deleniti, dolores explicabo quibusdam nihil eligendi delectus sunt nam nisi architecto vitae provident quae hic! Qui aperiam asperiores repellat cumque consectetur provident reiciendis, quam architecto error, eaque.', 1, '2021-09-11 06:51:52', '2021-09-20 09:25:41'),
(6, 'How do you write a FAQ question?', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis', 1, '2021-10-18 03:45:20', '2021-10-18 03:45:20'),
(7, 'What are FAQ questions?', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis', 1, '2021-10-18 03:45:37', '2021-10-18 03:45:37'),
(8, 'What questions should be on a FAQ page?', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis', 1, '2021-10-18 03:46:01', '2021-10-18 03:46:01'),
(9, 'What should FAQ contain?', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis', 1, '2021-10-18 03:46:28', '2021-10-18 03:46:28'),
(10, 'What is Lorem Ipsum literally?', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec.', 1, '2021-10-18 03:56:29', '2021-10-18 03:56:29'),
(11, 'Why Lorem Ipsum is bad?', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec.', 1, '2021-10-18 03:56:46', '2021-10-18 03:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Choose a Category', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 'fas fa-birthday-cake', 1, '2021-07-30 06:15:31', '2021-10-18 02:27:45'),
(2, 'Find Location', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 'fab fa-asymmetrik', 1, '2021-07-30 06:16:03', '2021-10-18 02:27:55'),
(3, 'Contact a Few Owners', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 'fas fa-chart-bar', 1, '2021-07-30 06:16:24', '2021-10-18 02:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `content_quantity` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `icon`, `header`, `description`, `section_name`, `show_homepage`, `content_quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, 'We will help you to find all', 'All the top locations-from Restaurants, shopping, hotels and more', 'banner section', 1, NULL, NULL, '2021-08-24 13:15:35'),
(2, 'fab fa-app-store', 'Our Features', 'Lorem Ipsum is simply dummy text', 'feature section', 1, 3, NULL, '2021-11-01 05:10:38'),
(3, NULL, 'Top Properties', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'top property section', 1, 4, NULL, '2021-10-18 01:54:25'),
(4, 'fas fa-anchor', 'Featured Properties', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'Featured properties section', 1, 6, NULL, '2021-09-27 03:16:21'),
(5, 'fas fa-asterisk', 'Our Agents', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'Agent section', 1, 8, NULL, '2021-09-27 03:20:21'),
(6, 'fas fa-basketball-ball', 'Service You Need', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'service section', 1, 6, NULL, '2021-09-27 03:24:03'),
(7, 'fas fa-chart-line', 'Our Blogs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'Blog section', 1, 6, NULL, '2021-09-27 03:24:27'),
(8, 'fas fa-align-center', 'Happy Clients', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'testimonial section', 1, 6, NULL, '2021-09-27 03:25:55'),
(9, '', 'Subscribe to Newsletter', 'Subscribe to get update and information. Don\'t worry, we won\'t send spam!', 'subscriber section', 1, NULL, NULL, '2021-08-24 14:18:01'),
(10, 'fas fa-american-sign-language-interpreting', 'Meet some happy customers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'testimonial section', 1, 6, NULL, '2021-09-06 07:13:49'),
(11, '', NULL, NULL, 'Banner Award section', 1, 4, NULL, '2021-10-10 08:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `manage_texts`
--

CREATE TABLE `manage_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_texts`
--

INSERT INTO `manage_texts` (`id`, `lang_key`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'Dashboard', NULL, NULL),
(2, 'real_estate', 'Real Estate', 'Real Estate', NULL, NULL),
(3, 'agent_property', 'Agent Properties', 'Agent Properties', NULL, NULL),
(4, 'my_property', 'My Properties', 'My Properties', NULL, NULL),
(5, 'property_purpose', 'Property Purpose', 'Property Purpose', NULL, NULL),
(6, 'property_type', 'Property Types', 'Property Types', NULL, NULL),
(7, 'nearest_loc', 'Nearest Locations', 'Nearest Locations', NULL, NULL),
(8, 'aminities', 'Aminities', 'Aminities', NULL, NULL),
(9, 'package', 'Packages', 'Packages', NULL, NULL),
(10, 'agent', 'Agents', 'Agents', NULL, NULL),
(11, 'order', 'Orders', 'Orders', NULL, NULL),
(12, 'review', 'Reviews', 'Reviews', NULL, NULL),
(13, 'pages', 'Pages', 'Pages', NULL, NULL),
(14, 'about', 'About Us', 'About Us', NULL, NULL),
(15, 'terms_cond', 'Terms and Conditions', 'Terms and Conditions', NULL, NULL),
(16, 'custom_page', 'Custom Pages', 'Custom Pages', NULL, NULL),
(17, 'faq', 'FAQ', 'FAQ', NULL, NULL),
(18, 'package', 'Packages', 'Packages', NULL, NULL),
(19, 'agent', 'Agents', 'Agents', NULL, NULL),
(20, 'order', 'Orders', 'Orders', NULL, NULL),
(21, 'review', 'Reviews', 'Reviews', NULL, NULL),
(22, 'pages', 'Pages', 'Pages', NULL, NULL),
(23, 'about', 'About Us', 'About Us', NULL, NULL),
(24, 'terms_cond', 'Terms and Conditions', 'Terms and Conditions', NULL, NULL),
(25, 'custom_page', 'Custom Pages', 'Custom Pages', NULL, NULL),
(26, 'faq', 'FAQ', 'FAQ', NULL, NULL),
(518, 'locations', 'Locations', 'Locations', NULL, NULL),
(519, 'country', 'Country', 'Country', NULL, NULL),
(520, 'state', 'State', 'State', NULL, NULL),
(521, 'city', 'City', 'City', NULL, NULL),
(522, 'section_control', 'Section Control', 'Section Control', NULL, NULL),
(523, 'about_section', 'About Section', 'About Section', NULL, NULL),
(524, 'menu_section', 'Menu Section', 'Menu Section', NULL, NULL),
(525, 'home_section', 'Home Section', 'Home Section', NULL, NULL),
(526, 'all_section', 'All Section', 'All Section', NULL, NULL),
(527, 'banner_section', 'Banner Section', 'Banner Section', NULL, NULL),
(528, 'feature', 'Features', 'Features', NULL, NULL),
(529, 'testimonial', 'Testimonials', 'Testimonials', NULL, NULL),
(530, 'partner', 'Partners', 'Partners', NULL, NULL),
(531, 'services', 'Services', 'Services', NULL, NULL),
(532, 'award', 'Awards', 'Awards', NULL, NULL),
(533, 'seo_setup', 'Seo Setup', 'Seo Setup', NULL, NULL),
(534, 'home_page', 'Home Page', 'Home Page', NULL, NULL),
(535, 'property_page', 'Property Page', 'Property Page', NULL, NULL),
(536, 'about_us', 'About Us', 'About Us', NULL, NULL),
(537, 'pricing_plan', 'Pricing Plan', 'Pricing Plan', NULL, NULL),
(538, 'agent_page', 'Agent Page', 'Agent Page', NULL, NULL),
(539, 'blog_page', 'Blog Page', 'Blog Page', NULL, NULL),
(540, 'contact_us', 'Contact Us', 'Contact Us', NULL, NULL),
(541, 'faq_page', 'FAQ Page', 'FAQ Page', NULL, NULL),
(542, 'language', 'Language', 'Language', NULL, NULL),
(543, 'website_language', 'Website Language', 'Website Language', NULL, NULL),
(544, 'validation_language', 'Validation Language', 'Validation Language', NULL, NULL),
(545, 'notify_language', 'Notification Language', 'Notification Language', NULL, NULL),
(546, 'setting', 'Setting', 'Setting', NULL, NULL),
(547, 'general_setting', 'General Setting', 'General Setting', NULL, NULL),
(548, 'blog_comment', 'Blog Comment', 'Blog Comment', NULL, NULL),
(549, 'cookie_consent_modal', 'Cookie Consent Modal', 'Cookie Consent Modal', NULL, NULL),
(550, 'payment_account', 'Payment Account', 'Payment Account', NULL, NULL),
(551, 'google_recaptcha', 'Google Recaptcha', 'Google Recaptcha', NULL, NULL),
(552, 'live_chat', 'Live Chat', 'Live Chat', NULL, NULL),
(553, 'google_analytic', 'Google Analytic', 'Google Analytic', NULL, NULL),
(554, 'pagination', 'Pagination', 'Pagination', NULL, NULL),
(555, 'clear_database', 'Clear Database', 'Clear Database', NULL, NULL),
(556, 'email_template', 'Email Template', 'Email Template', NULL, NULL),
(557, 'email_config', 'Email Configuration', 'Email Configuration', NULL, NULL),
(558, 'banner_img', 'Bannner Image', 'Bannner Image', NULL, NULL),
(559, 'login_img', 'Login Image', 'Login Image', NULL, NULL),
(560, 'default_profile_img', 'Default Profile Image', 'Default Profile Image', NULL, NULL),
(561, 'bg_img', 'Background Image', 'Background Image', NULL, NULL),
(562, 'admin', 'Admin', 'Admin', NULL, NULL),
(563, 'manage_staff', 'Manage Staff', 'Manage Staff', NULL, NULL),
(564, 'blog', 'Blog', 'Blog', NULL, NULL),
(565, 'blog_cat', 'Blog Category', 'Blog Category', NULL, NULL),
(566, 'contact', 'Contact', 'Contact', NULL, '2021-10-09 02:31:26'),
(567, 'contact_info', 'Contact Information', 'Contact Information', NULL, NULL),
(568, 'contact_msg', 'Contact Message', 'Contact Message', NULL, NULL),
(569, 'subscriber', 'Subscriber', 'Subscriber', NULL, NULL),
(570, 'email_for_subscriber', 'Email For Subscriber', 'Email for Subscriber', NULL, NULL),
(571, 'total_order', 'Total Order', 'Total Order', NULL, NULL),
(572, 'active_property', 'Active Property', 'Active Property', NULL, NULL),
(573, 'pending_property', 'Pending Property', 'Pending Property', NULL, NULL),
(574, 'total_property', 'Total Property', 'Total Property', NULL, NULL),
(575, 'total_user', 'Total User', 'Total User', NULL, NULL),
(576, 'earnings', 'Earnings', 'Earnings', NULL, NULL),
(577, 'monthly', 'Monthly', 'Monthly', NULL, NULL),
(578, 'total', 'Total', 'Total', NULL, NULL),
(579, 'total_subscriber', 'Total Subscriber', 'Total Subscriber', NULL, NULL),
(580, 'earnings_in', 'Earning In', 'Earning In', NULL, NULL),
(581, 'login', 'Login', 'Login', NULL, NULL),
(582, 'admin_login', 'Admin Login', 'Admin Login', NULL, NULL),
(583, 'email', 'Email', 'Email', NULL, NULL),
(584, 'pass', 'Password', 'Password', NULL, NULL),
(585, 'forget_your_pass', 'Forget Your Password ?', 'Forget Your Password ?', NULL, NULL),
(586, 'no', 'No', 'No', NULL, NULL),
(587, 'yes', 'Yes', 'Yes', NULL, NULL),
(588, 'item_delete_confirm', 'Item Delete Confirmation', 'Item Delete Confirmation', NULL, NULL),
(589, 'are_you_sure', 'Are You Sure ?', 'Are You Sure ?', NULL, NULL),
(590, 'my_profile', 'My Profile', 'My Profile', NULL, NULL),
(591, 'logout', 'Logout', 'Logout', NULL, NULL),
(592, 'create', 'Create', 'Create', NULL, NULL),
(593, 'serial', 'Serial', 'Serial', NULL, NULL),
(594, 'property', 'Property', 'Property', NULL, NULL),
(595, 'price', 'Price', 'Price', NULL, NULL),
(596, 'type', 'Type', 'Type', NULL, NULL),
(597, 'purpose', 'Purpose', 'Purpose', NULL, NULL),
(598, 'views', 'Views', 'Views', NULL, NULL),
(599, 'status', 'Status', 'Status', NULL, NULL),
(600, 'active', 'Active', 'Active', NULL, NULL),
(601, 'inactive', 'InActive', 'InActive', NULL, NULL),
(602, 'action', 'Action', 'Action', NULL, NULL),
(603, 'agent_s', 'Agent', 'Agent', NULL, NULL),
(604, 'all_property', 'All Property', 'All Property', NULL, NULL),
(605, 'basic_info', 'Basic Information', 'Basic Information', NULL, NULL),
(606, 'title', 'Title', 'Title', NULL, NULL),
(607, 'slug', 'Slug', 'Slug', NULL, NULL),
(608, 'property_type', 'Property Type', 'Property Type', NULL, NULL),
(609, 'address', 'Address', 'Address', NULL, NULL),
(610, 'phone', 'Phone', 'Phone', NULL, NULL),
(612, 'website', 'Website', 'Website', NULL, NULL),
(613, 'period', 'Period', 'Period', NULL, NULL),
(614, 'others_info', 'Others Information', 'Others Information', NULL, NULL),
(615, 'total_area', 'Total Area', 'Total Area', NULL, NULL),
(616, 'sqft', 'Square Feet', 'Square Feet', NULL, NULL),
(617, 'total_unit', 'Total Unit', 'Total Unit', NULL, NULL),
(618, 'total_room', 'Total Room', 'Total Room', NULL, NULL),
(619, 'total_bathroom', 'Total Bathroom', 'Total Bathroom', NULL, NULL),
(620, 'total_bedroom', 'Total Bedroom', 'Total Bedroom', NULL, NULL),
(621, 'total_floor', 'Total Floor', 'Total Floor', NULL, NULL),
(622, 'total_kitchen', 'Total Kitchen', 'Total Kitchen', NULL, NULL),
(623, 'parking_place', 'Total Parking Place', 'Total Parking Place', NULL, NULL),
(624, 'img_pdf_video', 'Image, PDF and Video', 'Image, PDF and Video', NULL, NULL),
(625, 'pdf_file', 'PDF File', 'PDF File', NULL, NULL),
(626, 'exist_pdf', 'Existing PDF', 'Existing PDF', NULL, NULL),
(627, 'banner_img', 'Banner Image', 'Banner Image', NULL, NULL),
(628, 'exist_banner_img', 'Existing Banner Image', 'Existing Banner Image', NULL, NULL),
(629, 'thumb_img', 'Thumbnail Image', 'Thumbnail Image', NULL, NULL),
(630, 'exist_thumb', 'Existing Thumbnail Image', 'Existing Thumbnail Image', NULL, NULL),
(631, 'video_link', 'Youtube Video Link', 'Youtube Video Link', NULL, NULL),
(632, 'select_nearest_loc', 'Select Nearest Location', 'Select Nearest Location', NULL, NULL),
(633, 'distance', 'Distance', 'Distance', NULL, NULL),
(634, 'km', 'Kilometer', 'km', NULL, NULL),
(635, 'detail_google_map', 'Property Details and Google Map', 'Property Details and Google Map', NULL, NULL),
(636, 'select_property_type', 'Select Property Type', 'Select Property Type', NULL, NULL),
(637, 'select_city', 'Select City', 'Select City', NULL, NULL),
(638, 'daily', 'Daily', 'Daily', NULL, NULL),
(639, 'monthly', 'Monthly', 'Monthly', NULL, NULL),
(640, 'yearly', 'Yearly', 'Yearly', NULL, NULL),
(641, 'slider_img', 'Slider Images', 'Slider Images', NULL, NULL),
(642, 'multiple', 'Multiple', 'Multiple', NULL, NULL),
(643, 'google_map', 'Google Map Code', 'Google Map Code', NULL, NULL),
(644, 'des', 'Description', 'Description', NULL, NULL),
(645, 'top_property', 'Top Property', 'Top Property', NULL, NULL),
(646, 'urgent_property', 'Urgent Property', 'Urgent Property', NULL, NULL),
(647, 'featured', 'Featured', 'Featured', NULL, NULL),
(648, 'seo_title', 'SEO Title', 'SEO Title', NULL, NULL),
(649, 'seo_des', 'SEO Description', 'SEO Description', NULL, NULL),
(650, 'save', 'Save', 'Save', NULL, NULL),
(651, 'update', 'Update', 'Update', NULL, NULL),
(652, 'exist_video', 'Existing Video', 'Existing Video', NULL, NULL),
(653, 'purpose_form', 'Purpose Form', 'Purpose Form', NULL, NULL),
(654, 'close', 'Close', 'Close', NULL, NULL),
(656, 'property_type_s', 'Property Type', 'Property Type', NULL, NULL),
(657, 'all_property_type', 'All Property Type', 'All Property Type', NULL, NULL),
(658, 'location', 'Location', 'Location', NULL, NULL),
(659, 'location_form', 'Location Form', 'Location Form', NULL, NULL),
(660, 'aminity', 'Aminity', 'Aminity', NULL, NULL),
(661, 'aminity_form', 'Aminity Form', 'Aminity Form', NULL, NULL),
(662, 'package_name', 'Package Name', 'Package Name', NULL, NULL),
(663, 'package_type', 'Package Type', 'Package Type', NULL, NULL),
(664, 'premium', 'Premium', 'Premium', NULL, NULL),
(665, 'free', 'Free', 'Free', NULL, NULL),
(666, 'number_of_day', 'Number Of Days', 'Number Of Days', NULL, NULL),
(667, 'number_of_property', 'Number Of Property', 'Number Of Property', NULL, NULL),
(668, 'number_of_aminities', 'Number of Aminities', 'Number of Aminities', NULL, NULL),
(669, 'number_of_nearest_place', 'Number of Nearest Place', 'Number of Nearest Place', NULL, NULL),
(670, 'number_of_photo', 'Number Of Photo ', 'Number Of Photo', NULL, '2021-10-09 02:31:26'),
(671, 'allow_feature', 'Allow Feature', 'Allow Feature', NULL, NULL),
(672, 'number_of_featured_property', 'Number Of Featured Property', 'Number Of Featured Property', NULL, NULL),
(673, 'allow_top_property', 'Allow Top Property', 'Allow Top Property', NULL, NULL),
(674, 'number_of_top_property', 'Number Of Top Property', 'Number Of Top Property', NULL, NULL),
(675, 'allow_urgent_property', 'Allow Urgent Property', 'Allow Urgent Property', NULL, NULL),
(676, 'number_of_urgent_property', 'Number Of Urgent Property', 'Number Of Urgent Property', NULL, NULL),
(677, 'package_order', 'Package Order', 'Package Order', NULL, NULL),
(678, 'unlimited_qty', 'Unlimitd Quantity', 'Unlimitd Quantity', NULL, NULL),
(679, 'all_package', 'All Package', 'All Package', NULL, NULL),
(680, 'package_form', 'Package Form', 'Package Form', NULL, NULL),
(681, 'package_detail', 'Package Details', 'Package Details', NULL, NULL),
(682, 'agent_table', 'Agent Table', 'Agent Table', NULL, NULL),
(683, 'agent_info', 'Agent Information', 'Agent Information', NULL, NULL),
(684, 'name', 'Name', 'Name', NULL, NULL),
(686, 'phone', 'Phone', 'Phone', NULL, NULL),
(687, 'photo', 'Photo', 'Photo', NULL, NULL),
(688, 'about', 'About', 'About', NULL, NULL),
(689, 'facebook', 'Facebook', 'Facebook', NULL, NULL),
(690, 'twitter', 'Twitter', 'Twitter', NULL, NULL),
(691, 'linkedin', 'LinkedIn', 'LinkedIn', NULL, NULL),
(692, 'whatsapp', 'Whatsapp', 'Whatsapp', NULL, NULL),
(693, 'website', 'Website', 'Website', NULL, NULL),
(694, 'go_back', 'Go Back', 'Go Back', NULL, NULL),
(695, 'package_s', 'Package', 'Package', NULL, NULL),
(696, 'purchase_date', 'Purchase Date', 'Purchase Date', NULL, NULL),
(697, 'expired_date', 'Expired Date', 'Expired Date', NULL, NULL),
(698, 'order_table', 'Order Table', 'Order Table', NULL, NULL),
(699, 'order_detail', 'Order Details', 'Order Details', NULL, NULL),
(700, 'amount_of_usd', 'Amount Of USD', 'Amount Of USD', NULL, NULL),
(701, 'amount_real_currency', 'Amount Of Real Currency', 'Amount Of Real Currency', NULL, NULL),
(702, 'payment_method', 'Payment Method', 'Payment Method', NULL, NULL),
(703, 'trans_id', 'Transaction Id', 'Transaction Id', NULL, NULL),
(704, 'expired', 'Expired', 'Expired', NULL, NULL),
(705, 'unlimited', 'Unlimited', 'Unlimited', NULL, NULL),
(706, 'review_table', 'Review Table', 'Review Table', NULL, NULL),
(707, 'comment', 'Comment', 'Comment', NULL, NULL),
(708, 'rating', 'Rating', 'Rating', NULL, NULL),
(709, 'service_rat', 'Service', 'Service', NULL, NULL),
(710, 'location_rat', 'Location', 'Location', NULL, NULL),
(711, 'clean_rat', 'Cleanliness', 'Cleanliness', NULL, NULL),
(712, 'avg', 'Avarage', 'Avarage', NULL, NULL),
(713, 'value_rat', 'Value', 'Value', NULL, NULL),
(714, 'exist_img', 'Existing Image', 'Existing Image', NULL, NULL),
(715, 'img', 'Image', 'Image', NULL, NULL),
(717, 'service', 'Service', 'Service', NULL, NULL),
(718, 'history', 'History', 'Histroy', NULL, NULL),
(719, 'privacy_policy', 'Privacy  and Policy', 'Privacy  and Policy', NULL, NULL),
(720, 'page_name', 'Page Name', 'Page Name', NULL, NULL),
(721, 'all_custom_page', 'All Custom Page', 'All Custom Page', NULL, NULL),
(722, 'custom_page_form', 'Custom Page Form', 'Custom Page Form', NULL, NULL),
(723, 'new_img', 'New Image', 'New Image', NULL, NULL),
(724, 'qus', 'Question', 'Question', NULL, NULL),
(725, 'ans', 'Answer', 'Answer', NULL, NULL),
(726, 'faq_table', 'FAQ Table', 'FAQ Table', NULL, NULL),
(727, 'faq_form', 'FAQ Form', 'FAQ Form', NULL, NULL),
(728, 'country_table', 'Country Table', 'Country Table', NULL, NULL),
(729, 'country_form', 'Country Form', 'Country Form', NULL, NULL),
(730, 'state_table', 'State Table', 'State Table', NULL, NULL),
(731, 'state_form', 'State Form', 'State Form', NULL, NULL),
(732, 'all_state', 'All State', 'All State', NULL, NULL),
(733, 'select_country', 'Select Country', 'Select Country', NULL, NULL),
(734, 'state_name', 'State Name', 'State Name', NULL, NULL),
(735, 'city_table', 'City Table', 'City Table', NULL, NULL),
(736, 'city', 'City', 'City', NULL, NULL),
(737, 'all_city', 'All City', 'All City', NULL, NULL),
(738, 'city_form', 'City Form', 'City Form', NULL, NULL),
(739, 'select_state', 'Select State', 'Select State', NULL, NULL),
(740, 'award_section', 'Award Section', 'Award Section', NULL, NULL),
(741, 'main_section', 'Main Section', 'Main Section', NULL, NULL),
(742, 'header', 'Header', 'Header', NULL, NULL),
(743, 'content_qty', 'Content Quantity', 'Content Qty', NULL, NULL),
(744, 'show_homepage', 'Show Homepage', 'Show Homepage', NULL, NULL),
(745, 'team_section', 'Team Section', 'Team Section', NULL, NULL),
(746, 'banner_award', 'Banner Award', 'Banner Award', NULL, NULL),
(747, 'top_properties', 'Top Properties', 'Top Properties', NULL, NULL),
(748, 'featured_properties', 'Featured Properties', 'Featured Properties', NULL, NULL),
(749, 'service_form', 'Service Form', 'Service Form', NULL, NULL),
(750, 'icon', 'Icon', 'Icon', NULL, NULL),
(751, 'feature_table', 'Feature Table', 'Feature Table', NULL, NULL),
(752, 'feature_form', 'Feature Form', 'Feature Form', NULL, NULL),
(753, 'icon', 'Icon', 'Icon', NULL, NULL),
(754, 'feature_table', 'Feature Table', 'Feature Table', NULL, NULL),
(755, 'testimonial_table', 'Testimonial Table', 'Testimonial Table', NULL, NULL),
(756, 'testimonial_form', 'Testimonial Form', 'Testimonial Form', NULL, NULL),
(757, 'designation', 'Designation', 'Designation', NULL, NULL),
(758, 'partner_table', 'Partner Table', 'Partner Table', NULL, NULL),
(759, 'partner_form', 'Partner Form', 'Partner Form', NULL, NULL),
(760, 'service_table', 'Service Table', 'Service Table', NULL, NULL),
(761, 'service_form', 'Service Form', 'Service Form', NULL, NULL),
(762, 'award_name', 'Award Name', 'Award Name', NULL, NULL),
(763, 'award_qty', 'Award Quantity', 'Award Quantity', NULL, NULL),
(764, 'award_table', 'Award Table', 'Award Table', NULL, NULL),
(765, 'award_form', 'Award Form', 'Award Form', NULL, NULL),
(766, 'meta_des', 'Meta Description', 'Meta Description', NULL, NULL),
(767, 'general_setting', 'General Setting', 'General Setting', NULL, NULL),
(768, 'exist_logo', 'Existing Logo', 'Existing Logo', NULL, NULL),
(769, 'exist_favicon', 'Existing Favicon', 'Existing Favicon', NULL, NULL),
(770, 'favicon', 'Favicon', 'Favicon', NULL, NULL),
(771, 'sidebar_header', 'Sidebar Header', 'Sidebar Header', NULL, NULL),
(772, 'sidebar_header_icon', 'Sidebar Header Icon', 'Sidebar Header Icon', NULL, NULL),
(773, 'email_send_contact_msg', 'Email For Send Contact Message', 'Email For Send Contact Message', NULL, NULL),
(774, 'save_contact_msg', 'Save Contact Message in Database', 'Save Contact Message in Database', NULL, NULL),
(775, 'layout', 'Layout', 'Layout', NULL, NULL),
(776, 'rtl', 'RTL(right to left)', 'RTL(right to left)', NULL, NULL),
(777, 'ltr', 'LTR(left to right)', 'LTR(left to right)', NULL, NULL),
(778, 'currency_icon', 'Currency Icon', 'Currency Icon', NULL, NULL),
(779, 'currency_rate', 'Currency Rate (per USD)', 'Currency Rate (per USD)', NULL, NULL),
(780, 'pre_notify_day', 'Pre Notification Day For Expired Order', 'Pre Notification Day For Expired Order', NULL, NULL),
(781, 'timezone', 'TimeZone', 'TimeZone', NULL, NULL),
(782, 'logo', 'Logo', 'Logo', NULL, NULL),
(783, 'currency_name', 'Currency Name', 'Currency Name', NULL, NULL),
(784, 'comment_type', 'Comment Type', 'Comment Type', NULL, NULL),
(785, 'fb_comment', 'Facebook Comment', 'Facebook Comment', NULL, NULL),
(786, 'custom_comment', 'Custom Comment', 'Custom Comment', NULL, NULL),
(787, 'fb_app_id', 'Facebook App Id', 'Facebook App Id', NULL, NULL),
(788, 'allow_cookie', 'Allow Cookie Consent', 'Allow Cookie Consent', NULL, NULL),
(789, 'border', 'Border', 'Border', NULL, NULL),
(790, 'corners', 'Corners', 'Corners', NULL, NULL),
(791, 'bg_color', 'Background Color', 'Background Color', NULL, NULL),
(792, 'text_color', 'Text Color', 'Text Color', NULL, NULL),
(793, 'border_color', 'Border Color', 'Border Color', NULL, NULL),
(794, 'btn_color', 'Button Color', 'Button Color', NULL, NULL),
(795, 'btn_text_color', 'Button Text Color', 'Button Text Color', NULL, NULL),
(796, 'link_text', 'Link Text', 'Link Text', NULL, NULL),
(797, 'btn_text', 'Button Text', 'Button Text', NULL, NULL),
(798, 'msg', 'Message', 'Message', NULL, NULL),
(799, 'none', 'None', 'None', NULL, NULL),
(800, 'thin', 'Thin', 'Thin', NULL, NULL),
(801, 'normal', 'Normal', 'Normal', NULL, NULL),
(802, 'thick', 'Thick', 'Thick', NULL, NULL),
(803, 'small', 'Small', 'Small', NULL, NULL),
(804, 'large', 'Large', 'Large', NULL, NULL),
(805, 'paypal_account_mode', 'Paypal Account Mode', 'Paypal Account Mode', NULL, NULL),
(806, 'sandbox', 'Sandbox', 'Sandbox', NULL, NULL),
(807, 'live', 'Live', 'Live', NULL, NULL),
(808, 'paypal_client_id', 'Paypal Client Id', 'Paypal Client Id', NULL, NULL),
(809, 'paypal_secret_key', 'Paypal Secret Key', 'Paypal Secret Key', NULL, NULL),
(810, 'stripe_key', 'Stripe Key', 'Stripe Key', NULL, NULL),
(811, 'stripe_secret', 'Stripe Secret', 'Stripe Secret', NULL, NULL),
(812, 'allow_captcha', 'Allow Google Recaptcha', 'Allow Google Recaptcha', NULL, NULL),
(813, 'captcha_key', 'Captcha Site Key', 'Captcha Site Key', NULL, NULL),
(814, 'captcha_secret', 'Captcha Secret Key', 'Captcha Secret Key', NULL, NULL),
(815, 'allow_live_chat', 'Allow Tawk Live Chat', 'Allow Tawk Live Chat', NULL, NULL),
(816, 'chat_link', 'Tawk Live Direct Chat Link', 'Tawk Live Direct Chat Link', NULL, NULL),
(817, 'allow_analytic', 'Allow Google Analytic', 'Allow Google Analytic', NULL, NULL),
(818, 'analytic_id', 'Analytic Tracking Id', 'Analytic Tracking Id', NULL, NULL),
(819, 'qty', 'Quantity', 'Quantity', NULL, NULL),
(820, 'clear_all_data', 'Clear All Data', 'Clear All Data', NULL, NULL),
(821, 'email_type', 'Email Type', 'Email Type', NULL, NULL),
(822, 'subject', 'Subject', 'Subject', NULL, NULL),
(823, 'variable', 'Variable', 'Variable', NULL, NULL),
(824, 'meaning', 'Meaning', 'Meaning', NULL, NULL),
(825, 'user_name', 'User Name', 'User Name', NULL, NULL),
(826, 'user_email', 'User Email', 'User Email', NULL, NULL),
(827, 'user_phone', 'User Phone', 'User Phone', NULL, NULL),
(828, 'msg_subject', 'Message Subject', 'Message Subject', NULL, NULL),
(829, 'total_amount', 'Total Amount', 'Total Amount', NULL, NULL),
(830, 'mail_host', 'Mail Hosto', 'Mail Hosto', NULL, NULL),
(831, 'smtp_user', 'SMTP User Name', 'SMTP User Name', NULL, NULL),
(832, 'smtp_pass', 'SMTP Password', 'SMTP Password', NULL, NULL),
(833, 'mail_port', 'Mail Port', 'Mail Port', NULL, NULL),
(834, 'mail_encryption', 'Mail Encryption', 'Mail Encryption', NULL, NULL),
(835, 'tls', 'TLS', 'TLS', NULL, NULL),
(836, 'ssl', 'SSL', 'SSL', NULL, NULL),
(837, 'admin_table', 'Admin Table', 'Admin Table', NULL, NULL),
(838, 'all_admin', 'All Admin', 'All Admin', NULL, NULL),
(839, 'staff_table', 'Staff Table', 'Staff Table', NULL, NULL),
(840, 'all_staff', 'All Staff', 'All Staff', NULL, NULL),
(841, 'author', 'Author', 'Author', NULL, NULL),
(842, 'staff_form', 'Staff Form', 'Staff Form', NULL, NULL),
(843, 'cat_table', 'Category Table', 'Category Table', NULL, NULL),
(844, 'cat_form', 'Category Form', 'Category Form', NULL, NULL),
(845, 'cat', 'Category', 'Category', NULL, NULL),
(846, 'select_cat', 'Select Category', 'Select Category', NULL, NULL),
(847, 'short_des', 'Short Description', 'Short Description', NULL, NULL),
(848, 'all_blog', 'All Blog', 'All Blog', NULL, NULL),
(849, 'blog_form', 'Blog Form', 'Blog Form', NULL, NULL),
(850, 'blog_table', 'Blog Table', 'Blog Table', NULL, NULL),
(851, 'view', 'View', 'View', NULL, NULL),
(852, 'topbar_contact', 'Topbar Contact', 'Topbar Contact', NULL, NULL),
(853, 'footer_contact', 'Footer Contact', 'Footer Contact', NULL, NULL),
(854, 'social_contact', 'Social Contact', 'Social Contact', NULL, NULL),
(855, 'footer_about', 'Footer About', 'Footer About', NULL, NULL),
(856, 'google_map_code', 'Google Map Embed Code', 'Google Map Embed Code', NULL, NULL),
(857, 'copyright', 'CopyRight', 'CopyRight', NULL, NULL),
(858, 'instagram', 'Instagram', 'Instagram', NULL, NULL),
(859, 'youtube', 'Youtube', 'Youtube', NULL, NULL),
(860, 'msg_from', 'Message From', 'Message From', NULL, NULL),
(861, 'subscriber_table', 'Subscriber Table', 'Subscriber Table', NULL, NULL),
(862, 'email_for_subscriber', 'Email For Subscriber', 'Email For Subscriber', NULL, NULL),
(863, 'send_mail', 'Send Email', 'Send Email', NULL, NULL),
(864, 'verified', 'Verified', 'Verified', NULL, NULL),
(865, 'new_pass', 'New Password', 'New Password', NULL, NULL),
(866, 'confirm_pass', 'Confirm Password', 'Confirm Password', NULL, NULL),
(867, 'forget_pass', 'Forget Password', 'Forget Password', NULL, NULL),
(868, 'reset_pass', 'Reset Password', 'Reset Password', NULL, NULL),
(869, 'login_here', 'Login Here', 'Login Here', NULL, NULL),
(870, 'default_purpose', 'Default Purpose', 'Default Purpose', NULL, NULL),
(871, 'staff_login', 'Staff Login', 'Staff Login', NULL, NULL),
(872, 'property_table', 'Property Table', 'Property Table', NULL, NULL),
(873, 'subscribe', 'Subscribe', 'Subscribe', NULL, NULL),
(874, 'short_link', 'Short Links', 'Short Links', NULL, NULL),
(875, 'help_link', 'Help Link', 'Help Link', NULL, NULL),
(876, 'follow_us', 'Follow Us', 'Follow Us', NULL, NULL),
(877, 'any', 'Any', 'Any', NULL, NULL),
(878, 'sell', 'Sell', 'Sell', NULL, NULL),
(879, 'rent', 'Rent', 'Rent', NULL, NULL),
(880, 'search_type', 'Type...', 'Type...', NULL, NULL),
(881, 'select_location', 'Select Location', 'Select Location', NULL, NULL),
(882, 'search_property', 'Search Property', 'Search Property', NULL, NULL),
(883, 'urgent', 'Urgent', 'Urgent', NULL, NULL),
(884, 'view_detail', 'View Details', 'View Details', NULL, NULL),
(885, 'view_profile', 'View Profile', 'View Profile', NULL, NULL),
(886, 'read_more', 'Read More', 'Read More', NULL, NULL),
(887, 'rooms', 'Rooms', 'Rooms', NULL, NULL),
(888, 'floors', 'Floors', 'Floors', NULL, NULL),
(889, 'units', 'Units', 'Units', NULL, NULL),
(890, 'sqft_s', 'Square Feet', 'Sqft', NULL, NULL),
(891, 'bed', 'Bed', 'Bed', NULL, NULL),
(892, 'bath', 'Bath', 'Bath', NULL, NULL),
(893, 'contact_support', 'Contact Support', 'Contact Support', NULL, NULL),
(894, 'send_msg', 'Send Message', 'Send Message', NULL, NULL),
(895, 'days', 'Days', 'Days', NULL, NULL),
(896, 'unlimited_pro_submission', 'Unlimited Property Submission', 'Unlimited Property Submission', NULL, NULL),
(897, 'pro_submission', 'Property Submission', 'Propertiy Submission', NULL, NULL),
(898, 'unlimited_aminity', 'Unlimited Aminity', 'Unlimited Aminity', NULL, NULL),
(899, 'unlimited_nearest_place', 'Unlimited Nearest Place', 'Unlimited Nearest Place', NULL, NULL),
(900, 'nearest_place', 'Nearest Place', 'Nearest Place', NULL, NULL),
(901, 'unlimited_photo', 'Unlimited Photo', 'Unlimited Photo', NULL, NULL),
(902, 'photo', 'Photo', 'Photo', NULL, NULL),
(903, 'featured_property', 'Featured Property', 'Featured Property', NULL, NULL),
(904, 'unlimited_feature_property', 'Unlimited Featured Propertiy', 'Unlimited Featured Property', NULL, NULL),
(905, 'unlimited_top_property', 'Unlimited Top Property', 'Unlimited Top Property', NULL, NULL),
(906, 'unlimited_urgent_property', 'Unlimited Urgent Property', 'Unlimited Urgent Property', NULL, NULL),
(907, 'start_with', 'Start with', 'Start with', NULL, NULL),
(908, 'blog_not_found', 'Blog not found.', 'Blog not found.', NULL, NULL),
(909, 'search', 'Search', 'Search', NULL, NULL),
(910, 'categories', 'Categories', 'Categories', NULL, NULL),
(911, 'trend_post', 'Trending Posts', 'Trending Posts', NULL, NULL),
(912, 'comments', 'Comments', 'Comments', NULL, NULL),
(913, 'submit_comment', 'Submit a Comment', 'Submit a Comment', NULL, NULL),
(914, 'submit', 'Submit', 'Submit', NULL, NULL),
(915, 'find_property', 'Find Your Property', 'Find Your Property', NULL, NULL),
(916, 'keyword', 'Keyword', 'Keyword', NULL, NULL),
(917, 'default_order', 'Default Order', 'Default Order', NULL, NULL),
(918, 'most-views', 'Most Views', 'Most Views', NULL, NULL),
(919, 'top', 'Top', 'Top', NULL, NULL),
(920, 'new', 'New', 'New', NULL, NULL),
(921, 'oldest', 'Oldest', 'Oldest', NULL, NULL),
(922, 'default_order', 'Default Order', 'Default Order', NULL, NULL),
(923, 'most_views', 'Most Views', 'Most Views', NULL, NULL),
(924, 'top', 'Top', 'Top', NULL, NULL),
(925, 'new', 'New', 'New', NULL, NULL),
(926, 'oldest', 'Oldest', 'Oldest', NULL, NULL),
(927, 'property_not_found', 'Property not found.', 'Property not found.', NULL, NULL),
(928, 'add_review', 'Add Review', 'Add Review', NULL, NULL),
(929, 'add_wishlist', 'Add to Wishlist', 'Add to Wishlist', NULL, NULL),
(930, 'detail_and_feature', 'Details & Features', 'Details & Features', NULL, NULL),
(931, 'areas', 'Areas', 'Areas', NULL, NULL),
(932, 'bedrooms', 'Bedrooms', 'Bedrooms', NULL, NULL),
(933, 'bathrooms', 'Bathrooms', 'Bathrooms', NULL, NULL),
(934, 'kitchens', 'Kitchens', 'Kitchens', NULL, NULL),
(935, 'parking_place_s', 'Parking Place', 'Parking Place', NULL, NULL),
(936, 'download_pdf', 'Download PDF', 'Download PDF', NULL, NULL),
(937, 'property_video', 'Property video', 'Property video', NULL, NULL),
(938, 'out_of_5', 'Out of 5.0', 'Out of 5.0', NULL, NULL),
(939, 'value_for_money', 'Value for Money', 'Value for Money', NULL, NULL),
(940, 'write_review', 'Write a Review', 'Write a Review', NULL, NULL),
(941, 'avg_rat', 'Average Rating', 'Average Rating', NULL, NULL),
(942, 'before_review', 'Please login to write review.', 'Please login to write review.', NULL, NULL),
(943, 'related_pro', 'Related Properties', 'Related Properties', NULL, NULL),
(944, 'quick_contact', 'Quick Contact', 'Quick Contact', NULL, NULL),
(945, 'properties', 'Properties', 'Properties', NULL, NULL),
(946, 'if_account_exist', 'If you have an account?', 'If you have an account?', NULL, NULL),
(947, 'please_login', 'Please Login', 'Please Login', NULL, NULL),
(948, 'dont_have_account', 'Don\'t Have An Account?', 'Don\'t Have An Account?', NULL, NULL),
(949, 'please_register', 'Please Register', 'Please Register', NULL, NULL),
(950, 'create_account', 'Create Account', 'Create Account', NULL, NULL),
(951, 'remember', 'Remember me', 'Remember me', NULL, NULL),
(952, 'wishlist', 'Wishlists', 'Wishlists', NULL, NULL),
(953, 'pricing_plan', 'Pricing Plan', 'Pricing Plan', NULL, NULL),
(954, 'my_review', 'My Reviews', 'My Reviews', NULL, NULL),
(955, 'client_review', 'Client Reviews', 'Client Reviews', NULL, NULL),
(956, 'publish_pro', 'Published Property', 'Published Property', NULL, NULL),
(957, 'expired_pro', 'Expired Property', 'Expired Property', NULL, NULL),
(958, 'active_order', 'Active Order', 'Active Order', NULL, NULL),
(959, 'available', 'Available', 'Available', NULL, NULL),
(960, 'not_available', 'Not Available', 'Not Available', NULL, NULL),
(961, 'update_review', 'Update Review', 'Update Review', NULL, NULL),
(962, 'old_pass', 'Old Password', 'Old Password', NULL, NULL),
(963, 'change_pass', 'Change Password', 'Change Password', NULL, NULL),
(964, 'date_added', 'Date Added', 'Date Added', NULL, NULL),
(965, 'currently_active', 'Currently Active', 'Currently Active', NULL, NULL),
(966, 'order_id', 'Order Id', 'Order Id', NULL, NULL),
(967, 'amount', 'Amount', 'Amount', NULL, NULL),
(968, 'payment', 'Payment', 'Payment', NULL, NULL),
(969, 'print', 'Print this invoice', 'Print this invoice', NULL, NULL),
(970, 'stripe', 'Stripe', 'Stripe', NULL, NULL),
(971, 'paypal', 'Paypal', 'Paypal', NULL, NULL),
(972, 'card_number', 'Card Number', 'Card Number', NULL, NULL),
(973, 'cvc', 'CVC', 'CVC', NULL, NULL),
(974, 'exp_month', 'Expiration Month', 'Expiration Month', NULL, NULL),
(975, 'exp_year', 'Expiration Year', 'Expiration Year', NULL, NULL),
(976, 'pay_with_paypal', 'Pay With Paypal', 'Pay With Paypal', NULL, NULL),
(977, 'valid_card', 'Please insert valid card Information', 'Please insert valid card Information', NULL, NULL),
(978, 'new', 'New', 'New', NULL, NULL),
(979, 'remove', 'Remove', 'Remove', NULL, NULL),
(980, 'first_icon', 'First Social Icon', 'First social icon', NULL, NULL),
(981, 'first_link', 'First Link', 'First link', NULL, NULL),
(982, 'second_icon', 'Second Social Icon', 'Second social icon', NULL, NULL),
(983, 'second_link', 'Second Link', 'Second link', NULL, NULL),
(984, 'third_icon', 'Third social icon', 'Third social icon', NULL, NULL),
(985, 'third_link', 'Third Link', 'Third Link', NULL, NULL),
(986, 'four_icon', 'Four social link', 'Four social link', NULL, NULL),
(987, 'four_link', 'Four Link', 'Four link', NULL, NULL),
(988, 'theme_color', 'Theme Color', 'Theme Color', NULL, NULL),
(989, 'color_one', 'Theme Color One', 'Theme Color One', NULL, NULL),
(990, 'color_two', 'Theme Color Two', 'Theme Color Two', NULL, NULL),
(991, 'color_three', 'Theme Color Three', 'Theme Color Three', NULL, NULL),
(992, 'inr', 'INR', 'INR', NULL, NULL),
(993, 'bank_payment', 'Bank Payment', 'Bank', NULL, NULL),
(994, 'razorpay', 'RazorPay', 'RazorPay', NULL, NULL),
(995, 'trans_info', 'Transaction Information', 'Transaction Information', NULL, NULL),
(996, 'pending_order', 'Pending Orders', 'Pending Orders', NULL, NULL),
(997, 'pending', 'Pending', 'Pending', NULL, NULL),
(998, 'payment_accept', 'Payment Accept', 'Payment Accept', NULL, NULL),
(999, 'delete', 'Delete', 'Delete', NULL, NULL),
(1000, 'bank_details', 'Bank Account Detail', 'Bank Account Detail', NULL, NULL),
(1001, 'razorpay_info', 'RazorPay Payment Information', 'RazorPay Payment Information', NULL, NULL),
(1002, 'razorpay_key', 'RazorPay key', 'RazorPay key', NULL, NULL),
(1003, 'razorpay_secret_key', 'Razorpay Secret Key', 'Razorpay Secret Key', NULL, NULL),
(1004, 'pay', 'Pay', 'Pay', NULL, NULL),
(1005, 'per_active_currency', 'Per Active Currency', 'Per Active Currency', NULL, NULL),
(1006, 'active_currency', 'Currency Rate', 'Currency Rate', NULL, NULL);

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
(53, '2021_06_07_155525_create_terms_policies_table', 13),
(55, '2014_10_12_000000_create_users_table', 14),
(56, '2014_10_12_100000_create_password_resets_table', 14),
(57, '2019_08_19_000000_create_failed_jobs_table', 14),
(58, '2021_06_01_154935_create_doctors_table', 14),
(59, '2021_06_01_154955_create_admins_table', 14),
(60, '2021_06_02_061442_create_departments_table', 14),
(61, '2021_06_02_061452_create_department_images_table', 14),
(62, '2021_06_02_105225_create_locations_table', 14),
(63, '2021_06_02_113729_create_blog_categories_table', 14),
(64, '2021_06_02_115615_create_blogs_table', 14),
(65, '2021_06_03_041937_create_features_table', 14),
(66, '2021_06_03_060558_create_home_sections_table', 14),
(67, '2021_06_03_143301_create_services_table', 14),
(68, '2021_06_03_143735_create_service_images_table', 14),
(69, '2021_06_03_161038_create_service_faqs_table', 14),
(70, '2021_06_04_041544_create_department_faqs_table', 14),
(71, '2021_06_04_053020_create_videos_table', 14),
(72, '2021_06_06_042100_create_faq_categories_table', 14),
(73, '2021_06_06_045120_create_faqs_table', 14),
(74, '2021_06_06_152014_create_blog_comments_table', 14),
(75, '2021_06_06_152604_create_testimonials_table', 14),
(76, '2021_06_07_050501_create_abouts_table', 14),
(77, '2021_06_07_101918_create_doctor_social_links_table', 14),
(78, '2021_06_07_160726_create_condition_privacies_table', 14),
(79, '2021_06_09_075611_create_contact_messages_table', 15),
(82, '2021_06_09_085640_create_contact_us_table', 16),
(83, '2021_06_09_131532_create_sliders_table', 17),
(84, '2021_06_10_044031_create_medicines_table', 18),
(85, '2021_06_10_090440_create_schedules_table', 19),
(86, '2021_06_10_093637_create_days_table', 20),
(87, '2021_06_11_083301_create_contact_information_table', 21),
(88, '2021_06_11_133427_create_works_table', 22),
(89, '2021_06_11_133553_create_work_faqs_table', 22),
(90, '2021_06_12_075620_create_appointments_table', 23),
(91, '2021_06_12_083244_create_leaves_table', 23),
(92, '2021_06_14_041145_create_habits_table', 24),
(93, '2021_06_14_050412_create_prescribes_table', 25),
(94, '2021_06_14_102344_create_advice_table', 26),
(95, '2021_06_15_111126_create_subscribes_table', 27),
(96, '2021_06_16_135618_create_payment_accounts_table', 28),
(97, '2021_06_18_042314_create_settings_table', 29),
(98, '2021_06_18_052104_create_manage_navigations_table', 30),
(99, '2021_06_18_052805_create_manage_pages_table', 31),
(100, '2021_06_19_052404_create_partners_table', 32),
(102, '2021_06_19_154658_create_custome_pages_table', 33),
(103, '2021_06_20_163121_create_overviews_table', 34),
(106, '2021_06_24_005829_create_medicine_types_table', 35),
(107, '2021_06_24_011107_create_orders_table', 35),
(111, '2021_06_24_175001_create_cancle_appointments_table', 36),
(113, '2021_06_25_041121_create_cancel_orders_table', 37),
(114, '2021_06_27_114416_create_banner_images_table', 38),
(117, '2021_06_28_100743_create_navigations_table', 39),
(119, '2021_06_28_110714_create_manage_texts_table', 40),
(121, '2021_07_01_113430_create_messages_table', 41),
(123, '2021_07_02_081300_create_manage_texts_table', 42),
(126, '2021_07_04_073021_create_email_templates_table', 43),
(128, '2021_07_05_091055_create_manage_texts_table', 44),
(129, '2021_07_05_153851_create_validation_texts_table', 45),
(130, '2021_07_06_023416_create_notification_texts_table', 46),
(131, '2021_07_08_132239_create_subscriber_emails_table', 47),
(134, '2021_07_18_094223_create_listing_categories_table', 48),
(135, '2021_07_18_164612_create_subscriber_contents_table', 49),
(136, '2021_07_18_211825_create_overview_videos_table', 50),
(137, '2021_07_19_120309_create_about_sections_table', 51),
(138, '2021_07_20_091642_create_aminities_table', 52),
(140, '2021_07_20_095410_create_listing_packages_table', 53),
(141, '2021_07_20_154151_create_listings_table', 54),
(142, '2021_07_20_162410_create_listing_images_table', 55),
(143, '2021_07_20_163439_create_listing_videos_table', 56),
(144, '2021_07_20_163626_create_listing_aminities_table', 57),
(145, '2021_07_20_211256_create_package_sections_table', 58),
(146, '2021_07_22_130153_create_listing_schedules_table', 59),
(147, '2021_07_24_220152_create_wishlishts_table', 60),
(148, '2021_07_24_222009_create_wishlists_table', 61),
(150, '2021_07_25_090126_create_orders_table', 62),
(151, '2021_07_26_123955_create_listing_reviews_table', 63),
(153, '2021_07_28_232258_create_seo_texts_table', 64),
(154, '2021_07_30_091313_create_validation_texts_table', 65),
(155, '2021_07_30_140006_create_modal_consents_table', 66),
(156, '2021_08_06_192922_create_custom_pages_table', 67),
(157, '2021_08_15_131338_create_paginators_table', 68),
(158, '2021_08_23_152942_create_payment_card_logos_table', 69),
(159, '2021_08_23_170702_create_email_configurations_table', 70),
(160, '2021_08_24_155414_create_listing_claimes_table', 71),
(161, '2021_09_07_094858_create_countries_table', 72),
(162, '2021_09_07_095000_create_cities_table', 72),
(163, '2021_09_07_095624_create_country_states_table', 72),
(165, '2021_09_07_100415_create_countries_table', 73),
(166, '2021_09_07_100432_create_country_states_table', 73),
(167, '2021_09_07_100442_create_cities_table', 73),
(168, '2021_09_07_130905_create_property_purposes_table', 74),
(169, '2021_09_07_130929_create_property_types_table', 74),
(171, '2021_09_09_082917_create_nearest_locations_table', 75),
(172, '2021_09_09_093400_create_properties_table', 76),
(173, '2021_09_09_130913_create_property_aminities_table', 77),
(174, '2021_09_09_131024_create_property_images_table', 78),
(176, '2021_09_11_123648_create_faqs_table', 79),
(177, '2021_09_12_082830_create_services_table', 80),
(178, '2021_09_12_122306_create_awards_table', 81),
(179, '2021_09_16_144548_create_property_nearest_places_table', 82),
(180, '2021_09_16_145016_create_property_nearest_locations_table', 83),
(181, '2021_09_20_100954_create_packages_table', 84),
(182, '2021_11_18_095420_create_razorpays_table', 85);

-- --------------------------------------------------------

--
-- Table structure for table `modal_consents`
--

CREATE TABLE `modal_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `border` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modal_consents`
--

INSERT INTO `modal_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'small', '#4ac4b6', '#f4f1f1', '#da2b2b', '#ecf1f3', '#111fee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'More Info', 'Yes', NULL, NULL, '2021-08-23 05:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `name`, `navbar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 1, NULL, '2021-09-27 04:09:03'),
(2, 'Properties', 'Properties', 1, NULL, '2021-09-27 04:13:34'),
(3, 'All Properties', 'All Properties', 1, NULL, '2021-10-17 09:16:57'),
(4, 'About Us', 'About Us', 1, NULL, '2021-09-27 04:10:15'),
(5, 'Pricing Plan', 'Pricing Plan', 1, NULL, '2021-08-12 05:42:48'),
(6, 'Agents', 'Agents', 1, NULL, '2021-08-24 12:28:19'),
(7, 'Blog', 'Blog', 1, NULL, '2021-08-12 05:42:48'),
(8, 'Contact Us', 'Contact', 1, NULL, '2021-08-12 05:42:48'),
(12, 'Login', 'Login/Registration', 1, NULL, '2021-09-27 06:13:09'),
(13, 'Forget Password', 'Forget Password', 1, NULL, '2021-10-10 03:48:54'),
(14, 'Reset Password', 'Reset Password', 1, NULL, '2021-08-12 05:42:48'),
(15, 'Terms and Conditions', 'Terms and Conditions', 1, NULL, '2021-10-09 01:38:54'),
(16, 'Privacy and Policy', 'Privacy Policy', 1, NULL, '2021-10-18 06:32:20'),
(17, 'FAQ', 'FAQ', 1, NULL, '2021-10-12 04:57:40'),
(18, 'Pages', 'Pages', 1, NULL, '2021-09-27 05:13:50'),
(19, 'Featured Properties', 'Featured Properties', 1, NULL, '2021-10-11 03:04:51'),
(20, 'Top Properties', 'Top Properties', 1, NULL, '2021-10-11 03:04:52'),
(21, 'Urgent Properties', 'Urgent Properties', 1, NULL, '2021-10-11 03:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `nearest_locations`
--

CREATE TABLE `nearest_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nearest_locations`
--

INSERT INTO `nearest_locations` (`id`, `location`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rail Station', 'rail-station', 1, '2021-09-09 03:00:20', '2021-09-11 03:21:10'),
(2, 'Bus Station', 'bus-station', 1, '2021-09-09 03:00:52', '2021-09-09 03:00:52'),
(3, 'Airport', 'airport', 1, '2021-09-09 03:02:24', '2021-09-09 03:02:24'),
(4, 'Beach', 'beach', 1, '2021-09-09 03:02:33', '2021-10-08 02:58:20'),
(5, 'Metro', 'metro', 1, '2021-09-09 03:02:39', '2021-10-10 03:02:22'),
(6, 'Bank', 'bank', 1, '2021-09-09 03:02:45', '2021-09-09 03:02:45'),
(7, 'School', 'school', 1, '2021-09-09 03:02:52', '2021-09-09 03:02:52'),
(8, 'Hospital', 'hospital', 1, '2021-09-09 03:07:40', '2021-09-09 03:12:28'),
(10, 'Super Market', 'super-market', 1, '2021-09-09 03:56:40', '2021-09-09 03:56:40'),
(11, 'Pharmacy', 'pharmacy', 1, '2021-09-09 03:56:54', '2021-09-09 03:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_texts`
--

INSERT INTO `notification_texts` (`id`, `lang_key`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'comment', 'Comment Submited successfully', 'Comment submited successfully', NULL, '2021-10-12 04:22:31'),
(2, 'subscribe', 'Subscribed successfully. please verifify your email', 'Subscribed successfully. please verify your email', NULL, '2021-07-31 18:11:59'),
(3, 'already_subscribe', 'Already Subscribed', 'Already subscribed', NULL, '2021-10-12 04:22:31'),
(4, 'verified', 'Verified successfully', 'Verified successfully', NULL, '2021-07-31 18:11:59'),
(5, 'invalid_token', 'Invalid token', 'Invalid token', NULL, '2021-07-31 18:11:59'),
(6, 'msg', 'Message Send Successfully', 'Message send successfully', NULL, '2021-10-12 04:22:31'),
(7, 'something', 'Something Went Wrong', 'Something went wrong', NULL, '2021-10-12 04:22:31'),
(8, 'update', 'Update Successfully', 'Update successfully', NULL, '2021-10-12 04:22:31'),
(9, 'create', 'Create Successfuly', 'Create successfuly', NULL, '2021-10-12 04:22:31'),
(10, 'delete', 'Delete Successfuly', 'Delete successfuly', NULL, '2021-10-12 04:22:31'),
(11, 'active', 'Active Successfuly', 'Active successfuly', NULL, '2021-10-12 04:22:31'),
(12, 'inactive', 'InActive Successfuly', 'InActive successfuly', NULL, '2021-10-12 04:22:31'),
(13, 'pass', 'Password Change Successfully', 'Password change successfully', NULL, '2021-10-12 04:22:31'),
(14, 'old_pass', 'Old Password does not match', 'Old Password does not match', NULL, NULL),
(16, 'review', 'Review Already Submited', 'Review already submited', NULL, '2021-10-12 04:22:31'),
(17, 'max_property', 'Maximum property Already Exist', 'Maximum property already exist', NULL, '2021-10-12 04:19:49'),
(20, 'payment', 'Payment Successfully', 'Payment successfully', NULL, '2021-10-12 04:22:31'),
(21, 'payment_faild', 'Payment Faild', 'Payment faild', NULL, '2021-10-12 04:22:31'),
(22, 'wishlist', 'Wishlist Addedd Successfully', 'Wishlist addedd successfully', NULL, '2021-10-12 04:22:31'),
(23, 'already_wishlist', 'Already Added in Wishlist', 'Already added in wishlist', NULL, '2021-10-12 04:22:31'),
(24, 'email_send', 'Email send successfully', 'Email send successfully', NULL, '2021-10-12 02:32:24'),
(25, 'invalid_email', 'Invalid email', 'Invalid email', NULL, '2021-10-12 02:32:24'),
(26, 'login', 'Login Successfully', 'Login successfully', NULL, '2021-10-12 04:22:31'),
(28, 'invalid_login', 'Invalid Login Information', 'Invalid login information', NULL, '2021-10-12 04:22:31'),
(29, 'inactive_user', 'Inactive your Account', 'Inactive your account', NULL, '2021-10-12 04:22:31'),
(30, 'logout', 'Logout Successfully', 'Logout successfully', NULL, '2021-10-12 04:22:31'),
(31, 'register', 'Thanks For Registration. Before Login, Please Verify Your Email.', 'Thanks for registration. Before login, please verify your email.', NULL, '2021-10-12 04:22:31'),
(34, 'forget_pass', 'Forgot Password Token has been Sent to Your Email', 'Forgot password token has been sent to your email', NULL, '2021-10-12 04:22:31'),
(35, 'email_not_exist', 'Email does not exist', 'Email does not exist', NULL, '2021-10-12 02:32:24'),
(38, 'expired_package', 'Your package has expired', 'Your package has expired', NULL, '2021-08-11 16:19:23'),
(49, 'reset_pass', 'Password Reset Successfully. Please Login here', 'Password reset successfully. Please login here', NULL, '2021-10-12 04:22:31'),
(50, 'review_submit', 'Review submited successfully', 'Review submited successfully', NULL, NULL),
(51, 'order_success', 'Order Successfully', 'Order successfully', NULL, '2021-10-12 04:22:31'),
(52, 'bank_order_success', 'Order successfully, wait for admin approval\r\n\r\n\r\n', 'Order successfully, wait for admin approval', NULL, NULL),
(53, 'payment_accept', 'Payment Accept Successfully', 'Payment Accept Successfully', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `expired_day` int(11) NOT NULL,
  `expired_date` date DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `amount_usd` decimal(10,0) NOT NULL,
  `amount_real_currency` int(11) NOT NULL,
  `currency_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `package_id`, `purchase_date`, `expired_day`, `expired_date`, `payment_method`, `transaction_id`, `payment_status`, `amount_usd`, `amount_real_currency`, `currency_type`, `currency_icon`, `status`, `created_at`, `updated_at`) VALUES
(63, '#6587452', 2, 3, '2021-09-23', 250, '2022-05-31', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-09-23 05:17:19', '2021-11-24 06:59:38'),
(64, '#263202123092354', 2, 3, '2021-09-23', 250, '2022-05-31', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-09-23 06:23:54', '2021-11-24 06:59:38'),
(65, '#23202123090817', 2, 1, '2021-09-23', -1, NULL, 'Stripe', 'txn_3JctX9HWLjS9yT0S1yc5lByq', 1, '4', 300, 'INR', '₹', 0, '2021-09-23 15:08:17', '2021-11-24 06:59:38'),
(66, '#30202123091051', 2, 4, '2021-09-23', 33, '2021-10-26', 'Stripe', 'txn_3JctZiHWLjS9yT0S0vmTBDPC', 1, '1', 50, 'INR', '₹', 0, '2021-09-23 15:10:51', '2021-11-24 06:59:38'),
(67, '#40202123091201', 2, 1, '2021-09-23', -1, NULL, 'Stripe', 'txn_3JctapHWLjS9yT0S1hQKRtre', 1, '4', 300, 'INR', '₹', 0, '2021-09-23 15:12:01', '2021-11-24 06:59:38'),
(68, '#30202123091952', 2, 1, '2021-09-23', -1, NULL, 'Stripe', 'txn_3JctiRHWLjS9yT0S1e7h6xLl', 1, '4', 300, 'INR', '₹', 0, '2021-09-23 15:19:52', '2021-11-24 06:59:38'),
(69, '#33202123092135', 2, 1, '2021-09-23', -1, NULL, 'Stripe', 'txn_3Jctk6HWLjS9yT0S02xBglB9', 1, '4', 300, 'INR', '₹', 0, '2021-09-23 15:21:35', '2021-11-24 06:59:38'),
(70, '#36202123092330', 2, 1, '2021-09-23', -1, NULL, 'Stripe', 'txn_3JctlxHWLjS9yT0S0mXVNxGq', 1, '4', 300, 'INR', '₹', 0, '2021-09-23 15:23:30', '2021-11-24 06:59:38'),
(71, '#42202123093454', 2, 4, '2021-09-23', 33, '2021-10-26', 'Stripe', 'txn_3JctwzHWLjS9yT0S06KFE6Bz', 1, '1', 50, 'INR', '₹', 0, '2021-09-23 15:34:54', '2021-11-24 06:59:38'),
(72, '#35202123094115', 2, 4, '2021-09-23', 33, '2021-10-26', 'Paypal', 'PAYID-MFGJ7TQ6N4589527E0608614', 1, '1', 50, 'INR', '₹', 0, '2021-09-23 15:41:15', '2021-11-24 06:59:38'),
(73, '#33202123095745', 2, 4, '2021-09-23', 33, '2021-10-26', 'Stripe', 'txn_3JcuJ5HWLjS9yT0S04BCoqjw', 1, '1', 50, 'INR', '₹', 0, '2021-09-23 15:57:45', '2021-11-24 06:59:38'),
(74, '#24202125094213', 2, 1, '2021-09-25', -1, NULL, 'Stripe', 'txn_3JdUaaHWLjS9yT0S0SLu685p', 1, '4', 300, 'INR', '₹', 0, '2021-09-25 06:42:13', '2021-11-24 06:59:38'),
(75, '#34202125094358', 2, 4, '2021-09-25', 33, '2021-10-28', 'Paypal', 'PAYID-MFHMKBY6LU93132N5092732T', 1, '1', 50, 'INR', '₹', 0, '2021-09-25 06:43:58', '2021-11-24 06:59:38'),
(76, '#25202125094901', 2, 1, '2021-09-25', -1, NULL, 'Paypal', 'PAYID-MFHMMTA2PT15047BD7364259', 1, '4', 300, 'INR', '₹', 0, '2021-09-25 06:49:01', '2021-11-24 06:59:38'),
(77, '#25202125095013', 2, 4, '2021-09-25', 33, '2021-10-28', 'Stripe', 'txn_3JdUiMHWLjS9yT0S0PH3qcWI', 1, '1', 50, 'INR', '₹', 0, '2021-09-25 06:50:13', '2021-11-24 06:59:38'),
(78, '#32202125095152', 2, 4, '2021-09-25', 33, '2021-10-28', 'Stripe', 'txn_3JdUjxHWLjS9yT0S1vgSu7UE', 1, '1', 50, 'INR', '₹', 0, '2021-09-25 06:51:52', '2021-11-24 06:59:38'),
(79, '#28202126093906', 23, 4, '2021-09-26', 33, '2021-10-29', 'Stripe', 'txn_3JdulMHWLjS9yT0S0BtYjl02', 1, '1', 50, 'INR', '₹', 1, '2021-09-26 10:39:06', '2021-09-26 10:39:06'),
(80, '#25202128090755', 2, 4, '2021-09-28', 33, '2021-10-31', 'Stripe', 'txn_3JeeANHWLjS9yT0S1otmMFqG', 1, '1', 50, 'INR', '₹', 0, '2021-09-28 11:07:55', '2021-11-24 06:59:38'),
(81, '#36202130093539', 2, 1, '2021-09-30', -1, NULL, 'Stripe', 'txn_3JfIs1HWLjS9yT0S0vye7z13', 1, '4', 300, 'INR', '₹', 0, '2021-09-30 06:35:39', '2021-11-24 06:59:38'),
(82, '#22202107105303', 2, 4, '2021-10-07', 33, '2021-11-09', 'Stripe', 'txn_3JhmjXHWLjS9yT0S0aK3Y2A6', 1, '1', 50, 'INR', '₹', 0, '2021-10-07 02:53:03', '2021-11-24 06:59:38'),
(83, '#41202110103645', 2, 1, '2021-10-10', -1, NULL, 'Stripe', 'txn_3Jj0L5HWLjS9yT0S0vaboVSJ', 1, '4', 300, 'INR', '₹', 0, '2021-10-10 11:36:45', '2021-11-24 06:59:38'),
(84, '#29202111102301', 2, 3, '2021-10-11', 250, '2022-06-18', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-10-11 10:23:01', '2021-11-24 06:59:38'),
(85, '#38202111102412', 2, 3, '2021-10-11', 250, '2022-06-18', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-10-11 10:24:12', '2021-11-24 06:59:38'),
(87, '#31202112100209', 2, 3, '2021-10-12', 250, '2022-06-19', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-10-12 03:02:09', '2021-11-24 06:59:38'),
(88, '#29202112100301', 2, 4, '2021-10-12', 33, '2021-11-14', 'Paypal', 'PAYID-MFSPV2I2A310576N35436326', 1, '1', 50, 'INR', '₹', 0, '2021-10-12 03:03:01', '2021-11-24 06:59:38'),
(89, '#26202112101441', 2, 6, '2021-10-12', 3, '2021-10-15', 'Stripe', 'txn_3JjeGYHWLjS9yT0S1GROdj7c', 1, '4', 300, 'INR', '₹', 0, '2021-10-12 06:14:41', '2021-11-24 06:59:38'),
(90, '#27202112101607', 2, 1, '2021-10-12', -1, NULL, 'Paypal', 'PAYID-MFSSQKI0R341950FH265990B', 1, '4', 300, 'INR', '₹', 0, '2021-10-12 06:16:07', '2021-11-24 06:59:38'),
(91, '#36202112101340', 2, 1, '2021-10-12', -1, NULL, 'Paypal', 'PAYID-MFSUHNY0PA62113Y0097705Y', 1, '4', 300, 'INR', '₹', 0, '2021-10-12 08:13:40', '2021-11-24 06:59:38'),
(92, '#42202117101247', 2, 3, '2021-10-17', 250, '2022-06-24', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-10-17 08:12:47', '2021-11-24 06:59:38'),
(93, '#42202117101339', 2, 4, '2021-10-17', 33, '2021-11-19', 'Stripe', 'txn_3JlUVTHWLjS9yT0S0d0Ywlbf', 1, '1', 50, 'INR', '₹', 0, '2021-10-17 08:13:39', '2021-11-24 06:59:38'),
(94, '#25202117101447', 2, 1, '2021-10-17', -1, NULL, 'Paypal', 'PAYID-MFV5W7I69U93169WB267173B', 1, '4', 300, 'INR', '₹', 0, '2021-10-17 08:14:47', '2021-11-24 06:59:38'),
(95, '#34202118103715', 27, 4, '2021-10-18', 100, '2022-01-26', 'Stripe', 'txn_3JlljUHWLjS9yT0S1uvOoMU9', 1, '1', 50, 'INR', '₹', 1, '2021-10-18 02:37:15', '2021-10-18 02:37:15'),
(96, '#39202118104913', 24, 1, '2021-10-18', 365, '2022-10-18', 'Stripe', 'txn_3Jllv6HWLjS9yT0S17CTvKpy', 1, '4', 300, 'INR', '₹', 1, '2021-10-18 02:49:13', '2021-10-18 02:49:13'),
(97, '#34202117112138', 2, 4, '2021-11-17', 100, '2022-02-25', 'Bank Payment', '45984554dsad', 1, '1', 50, 'INR', '₹', 0, '2021-11-17 09:21:38', '2021-11-24 06:59:38'),
(98, '#42202117112442', 2, 1, '2021-11-17', 365, '2022-11-17', 'Bank Payment', '65844fgfdgdggf', 1, '4', 300, 'INR', '₹', 0, '2021-11-17 09:24:42', '2021-11-24 06:59:38'),
(100, '#42202117110818', 2, 1, '2021-11-17', 365, '2022-11-17', 'Bank Payment', '65844fgfdgdggf', 1, '4', 300, 'INR', '₹', 0, '2021-11-17 10:08:18', '2021-11-24 06:59:38'),
(101, '#23202117111218', 2, 1, '2021-11-17', 365, '2022-11-17', 'Bank Payment', '65844fgfdgdggf', 1, '4', 300, 'INR', '₹', 0, '2021-11-17 10:12:18', '2021-11-24 06:59:38'),
(103, '#26202117115038', 2, 3, '2021-11-17', 30, '2021-12-17', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-11-17 10:50:38', '2021-11-24 06:59:38'),
(104, '#32202117112945', 2, 4, '2021-11-17', 100, '2022-02-25', 'Bank Payment', 'Bank Name: Your bank name\r\n58745962', 1, '1', 50, 'INR', '₹', 0, '2021-11-17 12:29:45', '2021-11-24 06:59:38'),
(105, '#27202117114017', 2, 3, '2021-11-17', 30, '2021-12-17', NULL, NULL, 1, '0', 0, 'INR', '₹', 0, '2021-11-17 12:40:17', '2021-11-24 06:59:38'),
(106, '#28202117114055', 2, 4, '2021-11-17', 100, '2022-02-25', 'Bank Payment', 'Sonali Bank, Barguna\r\ntxn_3Jllv6HWLjS9yT0S17CTvKpy', 1, '1', 50, 'INR', '₹', 0, '2021-11-17 12:40:55', '2021-11-24 06:59:38'),
(107, '#32202118115107', 2, 4, '2021-11-18', 100, '2022-02-26', 'RazorPay', 'pay_IMvNkcNu3bk9Ui', 1, '1', 50, 'INR', '₹', 0, '2021-11-18 03:51:07', '2021-11-24 06:59:38'),
(108, '#27202118115305', 2, 1, '2021-11-18', 365, '2022-11-18', 'RazorPay', 'pay_IMvPkBRRCVx0lx', 1, '4', 300, 'INR', '₹', 0, '2021-11-18 03:53:05', '2021-11-24 06:59:38'),
(109, '#22202118114717', 2, 4, '2021-11-18', 100, '2022-02-26', 'RazorPay', 'pay_IMwL5DV9S3wJrM', 1, '1', 50, 'INR', '₹', 0, '2021-11-18 04:47:17', '2021-11-24 06:59:38'),
(110, '#29202118110325', 2, 4, '2021-11-18', 100, '2022-02-26', 'Bank Payment', 'IBBL Barguna branch\r\ntrx_8338929222', 1, '1', 50, 'INR', '₹', 0, '2021-11-18 05:03:25', '2021-11-24 06:59:38'),
(111, '#40202118110640', 2, 1, '2021-11-18', 365, '2022-11-18', 'RazorPay', 'pay_IMwfYgzfX4sDTd', 1, '4', 300, 'INR', '₹', 0, '2021-11-18 05:06:40', '2021-11-24 06:59:38'),
(112, '#24202118114147', 2, 4, '2021-11-18', 100, '2022-02-26', 'Bank Payment', 'DBBL Barguna branch,\r\ntnx_883832jdjdjdj3', 1, '1', 50, 'INR', '₹', 0, '2021-11-18 16:41:47', '2021-11-24 06:59:38'),
(114, '#41202124115938', 2, 4, '2021-11-24', 100, '2022-03-04', 'RazorPay', 'pay_IPLndqBwqqmq4z', 1, '50', 50, 'INR', '$', 1, '2021-11-24 06:59:38', '2021-11-24 06:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `number_of_aminities` int(11) DEFAULT NULL,
  `number_of_nearest_place` int(11) DEFAULT NULL,
  `number_of_photo` int(11) DEFAULT NULL,
  `number_of_property` int(11) DEFAULT NULL,
  `number_of_feature_property` int(11) DEFAULT NULL,
  `number_of_top_property` int(11) DEFAULT NULL,
  `number_of_urgent_property` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `is_urgent` tinyint(4) NOT NULL DEFAULT 0,
  `package_order` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_type`, `price`, `number_of_days`, `number_of_aminities`, `number_of_nearest_place`, `number_of_photo`, `number_of_property`, `number_of_feature_property`, `number_of_top_property`, `number_of_urgent_property`, `status`, `is_featured`, `is_top`, `is_urgent`, `package_order`, `created_at`, `updated_at`) VALUES
(1, 'Pro', '1', 300, 365, 15, -1, -1, 30, -1, -1, -1, 1, 1, 1, 1, 3, '2021-09-20 05:35:19', '2021-10-18 01:38:56'),
(3, 'Free', '0', 0, 30, 7, 5, 3, 5, 0, 0, 0, 1, 0, 0, 0, 1, '2021-09-20 05:48:19', '2021-10-18 01:35:43'),
(4, 'Basic', '1', 50, 100, 10, 4, 4, 7, 1, 0, 0, 1, 1, 0, 0, 2, '2021-09-20 06:16:36', '2021-10-18 01:36:39'),
(6, 'Golden', '1', 300, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 1, 1, 4, '2021-10-10 03:07:23', '2021-10-18 01:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `first_icon`, `designation`, `first_link`, `second_icon`, `second_link`, `third_icon`, `third_link`, `four_icon`, `four_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Stiven Smith', 'uploads/custom-images/partner-2021-10-18-09-28-22-1734.jpg', 'fab fa-facebook', 'Lawyer', 'https://www.facebook.com', 'fab fa-linkedin', 'https://www.linkedin.com', 'fab fa-whatsapp', 'https://www.whatsapp.com', 'fab fa-twitter', 'https://www.twitter.com', 1, '2021-08-01 04:28:48', '2021-10-27 02:03:42'),
(3, 'David Richard', 'uploads/custom-images/partner-2021-10-18-09-28-49-2842.jpg', 'fab fa-facebook', 'Teacher', 'https://www.facebook.com', 'fab fa-linkedin', 'https://www.linkedin.com', 'fab fa-whatsapp', 'https://www.whatsapp.com', 'fab fa-twitter', 'https://www.twitter.com', 1, '2021-08-01 04:29:12', '2021-10-27 01:51:57'),
(4, 'Thomas Charles', 'uploads/custom-images/partner-2021-10-07-08-39-11-6641.jpg', 'fab fa-linkedin-in', 'Founder', 'https://www.linkedin.com', 'fab fa-facebook', 'https://www.facebook.com', 'fab fa-twitter', 'https://www.twitter.com', 'fab fa-whatsapp', 'https://www.whatsapp.com', 1, '2021-09-21 05:24:10', '2021-10-27 01:57:07'),
(5, 'Kenneth Kevin', 'uploads/custom-images/partner-2021-10-07-08-42-10-4823.jpg', 'https://www.whatsapp.com', 'Ceo', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, NULL, NULL, NULL, 0, '2021-09-21 05:25:29', '2021-10-18 02:04:09'),
(6, 'Matthew Anthony', 'uploads/custom-images/partner-2021-10-07-08-40-39-6169.jpg', 'fab fa-whatsapp', 'Founder', 'https://www.whatsapp.com', 'fab fa-twitter', 'https://www.twitter.com', 'fab fa-linkedin-in', 'https://www.linkedin.com', 'fab fa-facebook', 'https://www.facebook.com', 1, '2021-09-21 05:26:01', '2021-10-27 01:58:32'),
(8, 'Lewandaski', 'uploads/custom-images/partner-2021-10-18-09-29-11-5595.jpg', 'fab fa-facebook', 'Founder', 'https://www.facebook.com/', 'fab fa-twitter', 'https://www.twitter.com', 'fab fa-linkedin-in', 'https://www.linkedin.com/', 'fab fa-whatsapp', 'https://www.whatsapp.com', 1, '2021-09-21 05:39:11', '2021-10-27 01:59:38');

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
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_status` int(10) NOT NULL DEFAULT 1,
  `stripe_status` int(10) NOT NULL DEFAULT 1,
  `bank_status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_accounts`
--

INSERT INTO `payment_accounts` (`id`, `account_mode`, `paypal_client_id`, `paypal_secret`, `stripe_key`, `stripe_secret`, `captcha_key`, `captcha_secret`, `bank_account`, `paypal_status`, `stripe_status`, `bank_status`, `created_at`, `updated_at`) VALUES
(1, 'sandbox', 'ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg', 'EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT', 'pk_test_51HRx1ZHWLjS9yT0SlXNBrziVO9S4zUF6dialYIeewTSKHNAQS6GD4zJw1u1GMuMIDzpUuaYGHE3JdCrN8G3GdlRE009jEZJwkL', 'sk_test_51HRx1ZHWLjS9yT0SArpDKztTe6M9I8e7pv61S2GSDjCaVtRYpI7ciVCcEnNBr9DBxMczWcWe4DaOGwoAb2JHLjkH00Ywjuxdyq', NULL, NULL, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, 1, 1, '2021-06-17 10:51:03', '2021-11-24 07:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 1,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `property_type_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `listing_package_id` int(11) NOT NULL DEFAULT 0,
  `property_purpose_id` int(11) NOT NULL DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_unit` int(11) DEFAULT NULL,
  `number_of_room` int(11) DEFAULT NULL,
  `number_of_bedroom` int(11) DEFAULT NULL,
  `number_of_bathroom` int(11) DEFAULT NULL,
  `number_of_floor` int(11) DEFAULT NULL,
  `number_of_kitchen` int(11) DEFAULT NULL,
  `number_of_parking` int(11) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `google_map_embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `period` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `top_property` tinyint(4) NOT NULL DEFAULT 0,
  `urgent_property` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `user_type`, `admin_id`, `user_id`, `property_type_id`, `city_id`, `listing_package_id`, `property_purpose_id`, `title`, `slug`, `views`, `address`, `phone`, `email`, `website`, `description`, `file`, `thumbnail_image`, `banner_image`, `number_of_unit`, `number_of_room`, `number_of_bedroom`, `number_of_bathroom`, `number_of_floor`, `number_of_kitchen`, `number_of_parking`, `area`, `google_map_embed_code`, `price`, `period`, `video_link`, `is_featured`, `verified`, `top_property`, `urgent_property`, `status`, `seo_title`, `expired_date`, `seo_description`, `created_at`, `updated_at`) VALUES
(9, 1, 4, 0, 3, 2, 0, 1, '2811 Battery Place Northwest', '2811 Battery Place Northwest', 60, 'Melbourne', '1907485306', 'admin@gmail.com', NULL, '<p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.<br></font><br></p>', 'property-file-2021-10-10-08-15-45-7669.pdf', 'uploads/custom-images/property-thumb-2021-10-12-09-54-08-7799.png', 'uploads/custom-images/listing-banner-2021-10-12-09-54-10-2966.jpg', 40, 25, 22, 10, 10, 4, 4, 400, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62920.48427569165!2d-117.94932048380569!3d34.02204554042307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2d5ff0cf28975%3A0x24ea9c3aea7b766c!2sPacific%20Palms%20Resort!5e0!3m2!1sen!2sbd!4v1634520695036!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 200, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 1, 0, 1, 1, '2811 Battery Place Northwest', NULL, '2811 Battery Place Northwest', '2021-09-11 04:51:02', '2021-11-17 10:09:17'),
(11, 1, 4, 0, 1, 4, 0, 2, 'Saybrook Point Resort & Marina', 'saybrook-point-resort-marina', 81, 'Agoura Hills', '123-343-4444', 'client@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', 'property-file-2021-10-17-01-04-04-9188.pdf', 'uploads/custom-images/property-thumb-2021-10-12-09-50-10-9705.png', 'uploads/custom-images/listing-banner-2021-10-12-09-50-11-3241.png', 15, 20, 16, 4, 5, 6, 6, 450, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52921.92125018989!2d-118.00293421085884!3d34.00229109486106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2d5d428c37789%3A0xe3df22dfc0a25528!2sHacienda%20Heights%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634520209371!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 500, 'Yearly', 'https://www.youtube.com/watch?v=UJv9-F7SN5A', 1, 1, 0, 0, 1, 'Saybrook Point Resort & Marina', NULL, 'Saybrook Point Resort & Marina', '2021-09-16 09:38:07', '2021-10-18 12:22:23'),
(12, 1, 4, 0, 3, 1, 0, 2, '3015 Grand Avenue, CocoWalk', '3015-grand-avenue-cocowalk', 62, 'Newport', '651-458-754', 'client@gmail.com', 'https://example.com', '<p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\"><br></font></p><p><font color=\"#848181\" face=\"Roboto, sans-serif\">Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></font></p>', NULL, 'uploads/custom-images/property-thumb-2021-09-22-12-42-07-7843.jpg', 'uploads/custom-images/listing-banner-2021-09-22-12-42-07-2026.jpg', 30, 21, 18, 10, 10, 5, 5, 300, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52921.92125018989!2d-118.00293421085884!3d34.00229109486106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2d5d428c37789%3A0xe3df22dfc0a25528!2sHacienda%20Heights%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634520209371!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 500, 'Monthly', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 1, 1, 1, 1, '3015 Grand Avenue, CocoWalk', NULL, '3015 Grand Avenue, CocoWalk', '2021-09-22 06:42:08', '2021-11-01 04:45:26'),
(14, 0, 0, 2, 3, 1, 0, 1, 'Gorgeous Villa Bay View', 'gorgeous-villa-bay-view', 11, 'London, UK', '0170000000', 'admin@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', 'property-file-2021-09-24-05-17-18-2288.pdf', 'uploads/custom-images/property-thumb-2021-10-18-09-34-39-5668.jpg', 'uploads/custom-images/listing-banner-2021-09-24-05-17-22-2839.jpg', 33, 300, 45, 30, 5, 13, 8, 750, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 650, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 0, 1, 1, 1, 'Gorgeous Villa Bay View', '2022-03-04', 'this is user Ruby Tuesday', '2021-09-24 11:17:24', '2021-11-24 06:59:39'),
(15, 0, 0, 2, 3, 4, 0, 1, 'Retro House', 'retro-house', 29, 'khansama', '123-343-4444', 'agent@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', 'property-file-2021-09-25-08-55-17-2535.pdf', 'uploads/custom-images/property-thumb-2021-10-18-09-03-33-7307.png', 'uploads/custom-images/listing-banner-2021-09-25-08-57-12-3569.jpg', 19, 52, 45, 30, 16, 12, 33, 520, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 300, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 0, 0, 0, 1, 'Retro House', '2022-03-04', 'Retro House', '2021-09-24 11:33:52', '2021-11-24 06:59:39'),
(16, 0, 0, 2, 4, 9, 0, 1, 'Luxury Family Home', 'luxury-family-home', 71, 'Florida', '0170000000', 'agent@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', 'property-file-2021-10-11-03-26-45-3061.pdf', 'uploads/custom-images/property-thumb-2021-10-12-10-09-01-6254.jpg', 'uploads/custom-images/listing-banner-2021-09-25-10-41-57-1345.jpg', 33, 30, 30, 12, 10, 3, 3, 630, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 20, 'Monthly', 'https://www.youtube.com/watch?v=SMKPKGW083c', 0, 0, 0, 0, 1, 'Luxury Family Home', '2022-03-04', 'Luxury Family Home', '2021-09-25 04:41:59', '2021-11-24 06:59:39'),
(17, 0, 0, 2, 3, 1, 0, 2, 'Black glass house', 'black-glass-house', 49, 'Vatikanska 11', NULL, 'agent@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-18-08-56-02-8036.png', 'uploads/custom-images/listing-banner-2021-10-18-08-56-03-7016.jpg', 1, 10, 0, 3, 1, 0, 3, 150, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 20, 'Monthly', 'https://www.youtube.com/watch?v=G6KBwzjbs7w', 0, 0, 0, 0, 1, 'Black glass house', '2022-03-04', 'Black glass house', '2021-09-25 06:34:31', '2021-11-24 06:59:39'),
(18, 0, 0, 23, 3, 1, 0, 1, 'Stay Greenwich Village', 'stay-greenwich-village', 14, 'Washington, Indiana', '123-343-4444', 'client@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-18-09-12-37-4861.jpg', 'uploads/custom-images/listing-banner-2021-10-18-09-10-38-8381.jpg', 3, 9, 3, 3, 3, 1, 1, 63.58, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 60, 'Daily', 'https://www.youtube.com/watch?v=G6KBwzjbs7w', 0, 0, 0, 0, 1, 'Stay Greenwich Village', '2021-10-29', 'Stay Greenwich Village', '2021-09-26 10:43:49', '2021-10-18 07:18:50'),
(21, 1, 4, 0, 3, 2, 0, 1, '1745 T Street Southeast', '1745-t-street-southeast', 10, '20 Brown Hills West Stephaniaton', '123-343-4444', 'admin@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-12-09-46-30-4037.jpg', 'uploads/custom-images/listing-banner-2021-10-12-09-46-31-3403.jpg', 25, 30, 25, 5, 5, 10, 7, 630, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52921.92125018989!2d-118.00293421085884!3d34.00229109486106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2d5d428c37789%3A0xe3df22dfc0a25528!2sHacienda%20Heights%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634520209371!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 650, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 0, 1, 1, 1, '1745 T Street Southeast', NULL, '1745 T Street Southeast', '2021-10-10 05:35:12', '2021-10-18 06:58:29'),
(22, 1, 4, 0, 1, 1, 0, 2, '8502 Madrone Avenue', '8502-madrone-avenue', 25, 'Manchester', '125-547-869', 'agent@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-12-09-42-04-5671.jpg', 'uploads/custom-images/listing-banner-2021-10-12-09-42-05-6044.png', 33, 20, 15, 10, 4, 5, 5, 1000, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105787.7267718059!2d-117.98274035089183!3d34.04729643070238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c329c466d70ea9%3A0xe45ef44baa0981ea!2sWest%20Covina%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634519909601!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 300, 'Monthly', 'https://www.youtube.com/watch?v=G6KBwzjbs7w', 1, 0, 1, 1, 1, '8502 Madrone Avenue', NULL, '8502 Madrone Avenue', '2021-10-10 06:53:01', '2021-10-18 07:15:03'),
(23, 0, 0, 2, 3, 4, 0, 2, 'Ozalj apartment', 'ozalj-apartment', 5, 'Zeleni put 21', '112-223-443', 'client@gmail.com', 'https://listkhoj.com/', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-12-10-03-44-5145.jpg', 'uploads/custom-images/listing-banner-2021-10-12-10-03-51-6785.jpg', 45, 65, 4, 5, 6, 4, 3, 44, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105820.98061571886!2d-117.98881174982824!3d34.020632860346275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634525800182!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 500, 'Yearly', 'https://www.youtube.com/watch?v=SMKPKGW083c', 0, 0, 0, 0, 1, 'Ozalj apartment', '2022-03-04', 'Ozalj apartment', '2021-10-11 09:45:46', '2021-11-24 06:59:39'),
(24, 1, 4, 0, 1, 4, 0, 1, '1508 Massachusetts Avenue Southeast', '1508-massachusetts-avenue-southeast', 8, '95 South Park Avenue, New York, USA', NULL, 'agent@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no.<br></p>', 'property-file-2021-10-18-07-13-36-4836.pdf', 'uploads/custom-images/property-thumb-2021-10-18-07-15-13-3410.jpg', 'uploads/custom-images/listing-banner-2021-10-18-07-13-36-5087.jpg', 33, 10, 5, 3, 4, 3, 5, 630, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d299257.1409710053!2d-118.38318481374871!3d34.03475018656413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1634519784016!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 650, 'Daily', 'https://www.youtube.com/watch?v=G6KBwzjbs7w', 0, 0, 1, 1, 1, '1508 Massachusetts Avenue Southeast', NULL, '1508 Massachusetts Avenue Southeast', '2021-10-12 04:44:02', '2021-10-18 06:56:58'),
(26, 0, 0, 27, 1, 5, 0, 1, 'Luxury Gymnasium  Club', 'luxury-gymnasium-club', 11, 'San Diego', '123-343-4444', 'agent@thesky9.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p><p>Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos justo mucius salutatus. Nam illum dicant laudem no</p><p><br></p>', 'property-file-2021-10-18-08-42-44-4052.pdf', 'uploads/custom-images/property-thumb-2021-10-18-08-42-44-2751.jpg', 'uploads/custom-images/listing-banner-2021-10-18-01-02-40-8902.jpg', 45, 50, 45, 15, 5, 10, 4, 600, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62920.48427569165!2d-117.94932048380569!3d34.02204554042307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2d5ff0cf28975%3A0x24ea9c3aea7b766c!2sPacific%20Palms%20Resort!5e0!3m2!1sen!2sbd!4v1634520695036!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 250, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 0, 0, 0, 0, 1, 'Luxury Gymnasium  Club', '2022-01-26', 'Luxury Gymnasium  Club', '2021-10-18 02:42:50', '2021-10-19 03:36:34'),
(27, 1, 4, 0, 3, 1, 0, 2, '3d Rendering Luxury Modern Design', '3d-rendering-luxury-modern-design', 3, 'Newcastle', '123-343-4444', 'user@gmail.com', NULL, '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-08-46-38-8523.jpg', 'uploads/custom-images/listing-banner-2021-10-19-08-46-44-1494.jpg', 12, 23, 12, 11, 3, 4, 2, 452, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 120, 'Monthly', 'https://www.youtube.com/watch?v=SMKPKGW083c', 1, 0, 1, 1, 1, '3d Rendering Luxury Modern Design', NULL, '3d Rendering Luxury Modern Design', '2021-10-19 02:46:46', '2021-10-19 03:36:12'),
(28, 1, 4, 0, 3, 1, 0, 1, 'Trendy House Interior', 'trendy-house-interior', 2, 'Newport', '635-897-412', 'user@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-08-51-35-9353.jpg', 'uploads/custom-images/listing-banner-2021-10-19-08-51-47-3886.jpg', 41, 21, 12, 4, 2, 1, 1, 14784, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1200, 'Daily', '', 0, 0, 1, 1, 1, 'Trendy House Interior', NULL, 'Trendy House Interior', '2021-10-19 02:51:53', '2021-10-19 03:35:14'),
(29, 1, 4, 0, 1, 1, 0, 2, 'Leisure Beautiful Health Garden Landscape', 'leisure-beautiful-health-garden-landscape', 3, 'Newport', NULL, 'user@gmail.com', NULL, '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-08-54-56-9589.jpg', 'uploads/custom-images/listing-banner-2021-10-19-08-54-59-5852.jpg', 12, 32, 12, 21, 5, 5, 3, 480, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 200, 'Yearly', '', 0, 0, 1, 1, 1, 'Leisure Beautiful Health Garden Landscape', NULL, 'Leisure Beautiful Health Garden Landscape', '2021-10-19 02:55:01', '2021-11-17 10:07:59'),
(30, 1, 4, 0, 3, 4, 0, 1, 'Outdoor Swimming Pool', 'outdoor-swimming-pool', 3, 'Long Beach', NULL, 'client@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-08-58-21-6848.jpg', 'uploads/custom-images/listing-banner-2021-10-19-08-58-25-7947.jpg', 10, 10, 15, 12, 2, 5, 1, 800, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1300, 'Daily', 'https://www.youtube.com/watch?v=SMKPKGW083c', 0, 0, 1, 1, 1, 'Outdoor Swimming Pool', NULL, 'Outdoor Swimming Pool', '2021-10-19 02:58:27', '2021-10-19 03:34:48'),
(31, 1, 4, 0, 3, 1, 0, 1, 'Indoor Swimming Pool', 'indoor-swimming-pool', 2, 'Lynwood', NULL, 'user@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-09-02-00-9708.jpg', 'uploads/custom-images/listing-banner-2021-10-19-09-02-04-4070.jpg', 5, 3, 1, 2, 1, 1, 1, 750, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 300, 'Daily', 'https://www.youtube.com/watch?v=G6KBwzjbs7w', 1, 0, 1, 1, 1, 'Indoor Swimming Pool', NULL, 'Indoor Swimming Pool', '2021-10-19 03:02:08', '2021-11-01 05:37:11'),
(32, 1, 4, 0, 1, 4, 0, 1, 'Library Road-6854', 'library-road6854', 14, 'Long Beach', '123-343-4444', 'user@gmail.com', 'https://example.com', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p><br></p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', NULL, 'uploads/custom-images/property-thumb-2021-10-19-09-05-30-3037.jpg', 'uploads/custom-images/listing-banner-2021-10-19-09-05-33-7577.jpg', 33, 33, 15, 30, 5, 4, 4, 400, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4945541.406433895!2d-6.812930082618514!3d52.75357023711754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d0a98a6c1ed5df%3A0xf4e19525332d8ea8!2sEngland%2C%20UK!5e0!3m2!1sen!2sbd!4v1634611529164!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 300, 'Daily', '', 1, 0, 1, 1, 1, 'Library Road-6854', NULL, 'Library Road-6854', '2021-10-19 03:05:36', '2021-11-17 10:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `property_aminities`
--

CREATE TABLE `property_aminities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `aminity_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_aminities`
--

INSERT INTO `property_aminities` (`id`, `property_id`, `aminity_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 5, 3, 1, '2021-09-09 09:04:22', '2021-09-09 09:04:22'),
(14, 5, 5, 1, '2021-09-09 09:04:22', '2021-09-09 09:04:22'),
(15, 5, 6, 1, '2021-09-09 09:04:22', '2021-09-09 09:04:22'),
(16, 5, 7, 1, '2021-09-09 09:04:22', '2021-09-09 09:04:22'),
(20, 6, 5, 1, '2021-09-11 02:18:16', '2021-09-11 02:18:16'),
(21, 6, 6, 1, '2021-09-11 02:18:16', '2021-09-11 02:18:16'),
(22, 6, 7, 1, '2021-09-11 02:18:16', '2021-09-11 02:18:16'),
(27, 7, 1, 1, '2021-09-11 02:18:46', '2021-09-11 02:18:46'),
(28, 7, 2, 1, '2021-09-11 02:18:46', '2021-09-11 02:18:46'),
(29, 7, 3, 1, '2021-09-11 02:18:46', '2021-09-11 02:18:46'),
(30, 7, 4, 1, '2021-09-11 02:18:46', '2021-09-11 02:18:46'),
(1015, 23, 2, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1016, 23, 3, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1017, 23, 4, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1018, 23, 5, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1019, 23, 6, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1020, 23, 7, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1021, 23, 14, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1022, 23, 15, 1, '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(1023, 16, 1, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1024, 16, 2, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1025, 16, 3, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1026, 16, 4, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1027, 16, 5, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1028, 16, 14, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1029, 16, 15, 1, '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(1030, 15, 2, 1, '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(1031, 15, 5, 1, '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(1032, 15, 14, 1, '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(1046, 18, 2, 1, '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(1047, 18, 3, 1, '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(1048, 18, 5, 1, '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(1049, 18, 6, 1, '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(1050, 18, 14, 1, '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(1051, 14, 1, 1, '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(1052, 14, 4, 1, '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(1053, 14, 7, 1, '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(1090, 12, 1, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1091, 12, 2, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1092, 12, 3, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1093, 12, 4, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1094, 12, 5, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1095, 12, 6, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1096, 12, 7, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1097, 12, 16, 1, '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(1098, 17, 1, 1, '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(1099, 17, 4, 1, '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(1100, 17, 5, 1, '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(1101, 17, 7, 1, '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(1102, 17, 14, 1, '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(1103, 24, 1, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1104, 24, 2, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1105, 24, 3, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1106, 24, 5, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1107, 24, 6, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1108, 24, 15, 1, '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(1109, 22, 2, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1110, 22, 3, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1111, 22, 4, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1112, 22, 6, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1113, 22, 14, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1114, 22, 15, 1, '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(1115, 21, 2, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1116, 21, 3, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1117, 21, 4, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1118, 21, 5, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1119, 21, 6, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1120, 21, 7, 1, '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(1121, 11, 2, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1122, 11, 3, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1123, 11, 4, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1124, 11, 5, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1125, 11, 6, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1126, 11, 16, 1, '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(1127, 9, 1, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1128, 9, 2, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1129, 9, 3, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1130, 9, 4, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1131, 9, 6, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1132, 9, 14, 1, '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(1133, 26, 1, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1134, 26, 2, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1135, 26, 3, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1136, 26, 4, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1137, 26, 7, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1138, 26, 14, 1, '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(1144, 27, 2, 1, '2021-10-19 02:48:57', '2021-10-19 02:48:57'),
(1145, 27, 3, 1, '2021-10-19 02:48:57', '2021-10-19 02:48:57'),
(1146, 27, 4, 1, '2021-10-19 02:48:57', '2021-10-19 02:48:57'),
(1147, 27, 5, 1, '2021-10-19 02:48:57', '2021-10-19 02:48:57'),
(1148, 27, 7, 1, '2021-10-19 02:48:57', '2021-10-19 02:48:57'),
(1149, 28, 2, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1150, 28, 3, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1151, 28, 4, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1152, 28, 5, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1153, 28, 6, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1154, 28, 7, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1155, 28, 15, 1, '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(1156, 29, 1, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1157, 29, 2, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1158, 29, 3, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1159, 29, 4, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1160, 29, 6, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1161, 29, 7, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1162, 29, 14, 1, '2021-10-19 02:55:01', '2021-10-19 02:55:01'),
(1163, 30, 1, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1164, 30, 2, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1165, 30, 4, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1166, 30, 5, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1167, 30, 6, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1168, 30, 7, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1169, 30, 16, 1, '2021-10-19 02:58:27', '2021-10-19 02:58:27'),
(1170, 31, 1, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1171, 31, 2, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1172, 31, 3, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1173, 31, 4, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1174, 31, 5, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1175, 31, 6, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1176, 31, 7, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1177, 31, 15, 1, '2021-10-19 03:02:08', '2021-10-19 03:02:08'),
(1178, 32, 2, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1179, 32, 4, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1180, 32, 5, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1181, 32, 6, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1182, 32, 7, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1183, 32, 14, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1184, 32, 15, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36'),
(1185, 32, 16, 1, '2021-10-19 03:05:36', '2021-10-19 03:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `image`, `created_at`, `updated_at`) VALUES
(10, 5, 'uploads/custom-images/listing-sm-2021-09-09-03-04-28-3717.jpg', '2021-09-09 09:04:30', '2021-09-09 09:04:30'),
(12, 7, 'uploads/custom-images/listing-sm-2021-09-11-08-18-46-3194.jpg', '2021-09-11 02:18:50', '2021-09-11 02:18:50'),
(13, 7, 'uploads/custom-images/listing-sm-2021-09-11-08-18-50-4090.jpg', '2021-09-11 02:18:56', '2021-09-11 02:18:56'),
(14, 7, 'uploads/custom-images/listing-sm-2021-09-11-08-18-56-5793.jpg', '2021-09-11 02:18:59', '2021-09-11 02:18:59'),
(40, 12, 'uploads/custom-images/property-slide-2021-09-22-12-42-08-4491.jpg', '2021-09-22 06:42:08', '2021-09-22 06:42:08'),
(41, 12, 'uploads/custom-images/property-slide-2021-09-22-12-42-09-7900.jpg', '2021-09-22 06:42:09', '2021-09-22 06:42:09'),
(44, 14, 'uploads/custom-images/property-slide-2021-09-24-05-17-24-6406.jpg', '2021-09-24 11:17:29', '2021-09-24 11:17:29'),
(45, 14, 'uploads/custom-images/property-slide-2021-09-24-05-17-29-4948.jpg', '2021-09-24 11:17:30', '2021-09-24 11:17:30'),
(46, 14, 'uploads/custom-images/property-slide-2021-09-24-05-17-30-3032.jpg', '2021-09-24 11:17:31', '2021-09-24 11:17:31'),
(47, 15, 'uploads/custom-images/property-slide-2021-09-24-05-33-52-2232.jpg', '2021-09-24 11:33:54', '2021-09-24 11:33:54'),
(49, 15, 'uploads/custom-images/property-slide-2021-09-25-08-56-31-5419.jpg', '2021-09-25 02:56:32', '2021-09-25 02:56:32'),
(50, 15, 'uploads/custom-images/property-slide-2021-09-25-08-56-32-2051.jpg', '2021-09-25 02:56:36', '2021-09-25 02:56:36'),
(76, 22, 'uploads/custom-images/property-slide-2021-10-12-09-42-05-6976.jpg', '2021-10-12 03:42:06', '2021-10-12 03:42:06'),
(77, 22, 'uploads/custom-images/property-slide-2021-10-12-09-42-06-6375.jpg', '2021-10-12 03:42:06', '2021-10-12 03:42:06'),
(78, 22, 'uploads/custom-images/property-slide-2021-10-12-09-42-06-2694.jpg', '2021-10-12 03:42:06', '2021-10-12 03:42:06'),
(80, 21, 'uploads/custom-images/property-slide-2021-10-12-09-46-31-9227.jpg', '2021-10-12 03:46:32', '2021-10-12 03:46:32'),
(81, 21, 'uploads/custom-images/property-slide-2021-10-12-09-46-32-7319.png', '2021-10-12 03:46:32', '2021-10-12 03:46:32'),
(82, 21, 'uploads/custom-images/property-slide-2021-10-12-09-46-32-9309.png', '2021-10-12 03:46:33', '2021-10-12 03:46:33'),
(83, 11, 'uploads/custom-images/property-slide-2021-10-12-09-50-12-2797.jpg', '2021-10-12 03:50:12', '2021-10-12 03:50:12'),
(84, 11, 'uploads/custom-images/property-slide-2021-10-12-09-50-12-7389.jpg', '2021-10-12 03:50:12', '2021-10-12 03:50:12'),
(85, 11, 'uploads/custom-images/property-slide-2021-10-12-09-50-12-7959.png', '2021-10-12 03:50:13', '2021-10-12 03:50:13'),
(86, 9, 'uploads/custom-images/property-slide-2021-10-12-09-54-10-4404.jpg', '2021-10-12 03:54:10', '2021-10-12 03:54:10'),
(87, 9, 'uploads/custom-images/property-slide-2021-10-12-09-54-10-5433.jpg', '2021-10-12 03:54:11', '2021-10-12 03:54:11'),
(88, 9, 'uploads/custom-images/property-slide-2021-10-12-09-54-11-2561.jpg', '2021-10-12 03:54:11', '2021-10-12 03:54:11'),
(89, 23, 'uploads/custom-images/property-slide-2021-10-12-10-03-53-3605.jpg', '2021-10-12 04:04:00', '2021-10-12 04:04:00'),
(91, 23, 'uploads/custom-images/property-slide-2021-10-12-10-04-02-9116.jpg', '2021-10-12 04:04:03', '2021-10-12 04:04:03'),
(98, 24, 'uploads/custom-images/property-slide-2021-10-18-07-13-39-8674.jpg', '2021-10-18 01:13:46', '2021-10-18 01:13:46'),
(99, 24, 'uploads/custom-images/property-slide-2021-10-18-07-13-46-5352.jpg', '2021-10-18 01:13:49', '2021-10-18 01:13:49'),
(100, 24, 'uploads/custom-images/property-slide-2021-10-18-07-13-49-9076.jpg', '2021-10-18 01:13:51', '2021-10-18 01:13:51'),
(101, 26, 'uploads/custom-images/property-slide-2021-10-18-08-42-50-8510.jpg', '2021-10-18 02:42:53', '2021-10-18 02:42:53'),
(102, 26, 'uploads/custom-images/property-slide-2021-10-18-08-42-53-2644.jpg', '2021-10-18 02:42:56', '2021-10-18 02:42:56'),
(103, 26, 'uploads/custom-images/property-slide-2021-10-18-08-42-56-3659.jpg', '2021-10-18 02:43:00', '2021-10-18 02:43:00'),
(104, 17, 'uploads/custom-images/property-slide-2021-10-18-08-56-04-1967.png', '2021-10-18 02:56:04', '2021-10-18 02:56:04'),
(105, 17, 'uploads/custom-images/property-slide-2021-10-18-08-56-04-7319.jpg', '2021-10-18 02:56:05', '2021-10-18 02:56:05'),
(106, 17, 'uploads/custom-images/property-slide-2021-10-18-08-56-05-5784.jpg', '2021-10-18 02:56:05', '2021-10-18 02:56:05'),
(107, 16, 'uploads/custom-images/property-slide-2021-10-18-09-00-30-6916.png', '2021-10-18 03:00:31', '2021-10-18 03:00:31'),
(108, 16, 'uploads/custom-images/property-slide-2021-10-18-09-00-31-2575.png', '2021-10-18 03:00:31', '2021-10-18 03:00:31'),
(109, 16, 'uploads/custom-images/property-slide-2021-10-18-09-00-31-5875.png', '2021-10-18 03:00:32', '2021-10-18 03:00:32'),
(110, 18, 'uploads/custom-images/property-slide-2021-10-18-09-10-44-3492.jpg', '2021-10-18 03:10:47', '2021-10-18 03:10:47'),
(111, 18, 'uploads/custom-images/property-slide-2021-10-18-09-10-47-6508.jpg', '2021-10-18 03:10:48', '2021-10-18 03:10:48'),
(112, 18, 'uploads/custom-images/property-slide-2021-10-18-09-10-48-3399.jpg', '2021-10-18 03:10:51', '2021-10-18 03:10:51'),
(113, 27, 'uploads/custom-images/property-slide-2021-10-19-08-46-46-2725.jpg', '2021-10-19 02:46:52', '2021-10-19 02:46:52'),
(114, 27, 'uploads/custom-images/property-slide-2021-10-19-08-46-52-4488.jpg', '2021-10-19 02:46:57', '2021-10-19 02:46:57'),
(115, 27, 'uploads/custom-images/property-slide-2021-10-19-08-46-57-4205.jpg', '2021-10-19 02:47:03', '2021-10-19 02:47:03'),
(116, 28, 'uploads/custom-images/property-slide-2021-10-19-08-51-53-4005.jpg', '2021-10-19 02:51:56', '2021-10-19 02:51:56'),
(117, 28, 'uploads/custom-images/property-slide-2021-10-19-08-51-56-2036.jpg', '2021-10-19 02:51:59', '2021-10-19 02:51:59'),
(118, 28, 'uploads/custom-images/property-slide-2021-10-19-08-51-59-3815.jpg', '2021-10-19 02:52:03', '2021-10-19 02:52:03'),
(119, 29, 'uploads/custom-images/property-slide-2021-10-19-08-55-01-4123.jpg', '2021-10-19 02:55:04', '2021-10-19 02:55:04'),
(120, 29, 'uploads/custom-images/property-slide-2021-10-19-08-55-04-7657.jpg', '2021-10-19 02:55:09', '2021-10-19 02:55:09'),
(121, 29, 'uploads/custom-images/property-slide-2021-10-19-08-55-09-1672.jpg', '2021-10-19 02:55:14', '2021-10-19 02:55:14'),
(122, 30, 'uploads/custom-images/property-slide-2021-10-19-08-58-27-9374.jpg', '2021-10-19 02:58:31', '2021-10-19 02:58:31'),
(123, 30, 'uploads/custom-images/property-slide-2021-10-19-08-58-31-4422.jpg', '2021-10-19 02:58:34', '2021-10-19 02:58:34'),
(124, 30, 'uploads/custom-images/property-slide-2021-10-19-08-58-34-1802.jpg', '2021-10-19 02:58:37', '2021-10-19 02:58:37'),
(125, 31, 'uploads/custom-images/property-slide-2021-10-19-09-02-08-5947.jpg', '2021-10-19 03:02:11', '2021-10-19 03:02:11'),
(126, 31, 'uploads/custom-images/property-slide-2021-10-19-09-02-11-4606.jpg', '2021-10-19 03:02:14', '2021-10-19 03:02:14'),
(127, 32, 'uploads/custom-images/property-slide-2021-10-19-09-05-36-9314.jpg', '2021-10-19 03:05:41', '2021-10-19 03:05:41'),
(128, 32, 'uploads/custom-images/property-slide-2021-10-19-09-05-41-8160.jpg', '2021-10-19 03:05:46', '2021-10-19 03:05:46'),
(129, 32, 'uploads/custom-images/property-slide-2021-10-19-09-05-46-8332.jpg', '2021-10-19 03:05:51', '2021-10-19 03:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `property_nearest_locations`
--

CREATE TABLE `property_nearest_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `nearest_location_id` int(11) NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_nearest_locations`
--

INSERT INTO `property_nearest_locations` (`id`, `property_id`, `nearest_location_id`, `distance`, `created_at`, `updated_at`) VALUES
(86, 13, 3, '66', '2021-09-25 02:58:14', '2021-09-25 02:58:14'),
(87, 13, 8, '1.5', '2021-09-25 02:58:14', '2021-09-25 02:58:14'),
(129, 19, 3, '1.5', '2021-09-27 17:10:00', '2021-09-27 17:10:00'),
(293, 23, 8, '1.5', '2021-10-18 02:58:08', '2021-10-18 02:58:08'),
(294, 16, 7, '2', '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(295, 16, 11, '1', '2021-10-18 03:00:30', '2021-10-18 03:00:30'),
(296, 15, 5, '66', '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(297, 15, 8, '1.5', '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(298, 15, 3, '.5', '2021-10-18 03:03:34', '2021-10-18 03:03:34'),
(306, 18, 3, '6', '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(307, 18, 2, '4', '2021-10-18 03:12:39', '2021-10-18 03:12:39'),
(308, 14, 4, '3', '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(309, 14, 2, '6', '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(310, 14, 11, '1.5', '2021-10-18 03:34:48', '2021-10-18 03:34:48'),
(325, 12, 10, '1', '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(326, 12, 7, '2', '2021-10-18 04:26:14', '2021-10-18 04:26:14'),
(327, 17, 2, '33', '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(328, 17, 7, '66', '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(329, 17, 1, '1', '2021-10-18 04:32:03', '2021-10-18 04:32:03'),
(330, 24, 2, '1.5', '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(331, 24, 4, '5', '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(332, 24, 8, '3', '2021-10-18 06:56:54', '2021-10-18 06:56:54'),
(333, 22, 4, '1.5', '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(334, 22, 11, '0.3', '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(335, 22, 5, '0.8', '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(336, 22, 3, '1.5', '2021-10-18 06:57:29', '2021-10-18 06:57:29'),
(337, 21, 3, '2', '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(338, 21, 4, '1', '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(339, 21, 8, '.9', '2021-10-18 06:58:12', '2021-10-18 06:58:12'),
(340, 11, 7, '4', '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(341, 11, 3, '6', '2021-10-18 06:59:27', '2021-10-18 06:59:27'),
(342, 9, 8, '3', '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(343, 9, 4, '2', '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(344, 9, 5, '.5', '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(345, 9, 6, '1.5', '2021-10-18 07:00:04', '2021-10-18 07:00:04'),
(346, 26, 2, '.3', '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(347, 26, 5, '.5', '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(348, 26, 10, '1', '2021-10-18 07:02:49', '2021-10-18 07:02:49'),
(353, 27, 2, '1', '2021-10-19 02:48:58', '2021-10-19 02:48:58'),
(354, 27, 11, '.5', '2021-10-19 02:48:58', '2021-10-19 02:48:58'),
(355, 27, 6, '2', '2021-10-19 02:48:58', '2021-10-19 02:48:58'),
(356, 27, 4, '1.2', '2021-10-19 02:48:58', '2021-10-19 02:48:58'),
(357, 28, 2, '.3', '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(358, 28, 3, '.5', '2021-10-19 02:51:53', '2021-10-19 02:51:53'),
(359, 28, 8, '2', '2021-10-19 02:51:53', '2021-10-19 02:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `property_purposes`
--

CREATE TABLE `property_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_purposes`
--

INSERT INTO `property_purposes` (`id`, `purpose`, `custom_purpose`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'For Sale', 'For Sale', 'for-sale', 1, '2021-09-07 08:15:28', '2021-10-12 09:16:52'),
(2, 'For Rent', 'For Rent', 'for-rent', 1, '2021-09-07 08:15:53', '2021-10-12 09:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `property_reviews`
--

CREATE TABLE `property_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_rating` float NOT NULL,
  `location_rating` float NOT NULL,
  `money_rating` float NOT NULL,
  `clean_rating` float NOT NULL,
  `avarage_rating` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_reviews`
--

INSERT INTO `property_reviews` (`id`, `user_id`, `property_id`, `comment`, `service_rating`, `location_rating`, `money_rating`, `clean_rating`, `avarage_rating`, `status`, `created_at`, `updated_at`) VALUES
(12, 2, 12, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 4, 3, 4, 5, 4, 1, '2021-09-27 14:38:46', '2021-10-11 06:27:33'),
(13, 23, 12, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 3, 5, 5, 5, 4.5, 1, '2021-09-27 14:41:27', '2021-09-27 15:13:55'),
(14, 23, 15, 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 5, 4, 5, 5, 4.75, 1, '2021-09-27 14:41:41', '2021-09-27 15:13:49'),
(16, 23, 17, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 4, 5, 4, 5, 4.5, 1, '2021-09-27 14:42:06', '2021-09-27 15:13:47'),
(18, 24, 9, 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 3, 2, 3, 5, 3.25, 1, '2021-09-27 14:44:28', '2021-09-27 15:13:44'),
(19, 24, 11, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus conse', 2, 2, 4, 2, 2.5, 1, '2021-09-27 14:45:25', '2021-09-27 15:13:43'),
(20, 24, 12, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 3, 4, 2, 2, 2.75, 1, '2021-09-27 14:45:59', '2021-09-29 12:39:15'),
(21, 24, 15, 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 1, 2, 1, 3, 1.75, 1, '2021-09-27 14:46:13', '2021-09-29 12:39:13'),
(22, 24, 16, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 5, 2, 5, 5, 4.25, 1, '2021-09-27 14:46:42', '2021-09-27 15:13:40'),
(23, 24, 17, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 3, 5, 5, 2, 3.75, 1, '2021-09-27 14:46:50', '2021-09-29 12:39:10'),
(25, 2, 9, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur', 5, 5, 5, 5, 5, 1, '2021-10-11 10:13:03', '2021-10-18 07:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'House and Garden', 'house-and-garden', 1, '2021-09-09 08:46:05', '2021-10-10 02:57:29'),
(3, 'Hotel And Resort', 'hotel-and-resort', 1, NULL, '2021-09-09 08:55:29'),
(4, 'Business', 'business', 1, NULL, '2021-09-09 08:56:38'),
(5, 'Restaurant', 'restaurant', 1, NULL, '2021-09-09 08:56:49'),
(6, 'Fitness Club', 'fitness-club', 1, NULL, '2021-09-09 08:56:55'),
(7, 'Event and Club', 'event-and-club', 1, NULL, '2021-09-09 08:57:04'),
(8, 'Education', 'education', 1, NULL, '2021-09-09 08:57:09'),
(9, 'Housing', 'housing', 1, NULL, '2021-09-09 08:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `razorpays`
--

CREATE TABLE `razorpays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razorpay_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_status` int(10) NOT NULL DEFAULT 1,
  `currency_rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpays`
--

INSERT INTO `razorpays` (`id`, `razorpay_key`, `secret_key`, `name`, `description`, `image`, `theme_color`, `razorpay_status`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 'rzp_test_kfW93vFgjN1Ldo', 'BreEbaY2l5kazK8X2cNCpxBt', 'Find Estate', 'This is description', 'uploads/website-images/razorpay-2021-11-18-10-48-50-1748.png', '#3f28e6', 1, '74.41', NULL, '2021-11-24 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `seo_texts`
--

CREATE TABLE `seo_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_texts`
--

INSERT INTO `seo_texts` (`id`, `page_name`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'Real Estate - HomePage', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:14:27'),
(2, 'Property Page', 'Real Estate-All Properties', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:18:00'),
(3, 'About Us', 'Real Estate -About us', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:18:43'),
(4, 'Pricing Plan', 'Real Estate -Pricing Plan', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:18:34'),
(5, 'Agent Page', 'Real Estate - Our Agent', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:20:30'),
(6, 'Blog Page', 'Real Estate-Blog Page', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:22:44'),
(7, 'Contact Us', 'Real Estate - Contact us', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:56:22'),
(8, 'FAQ Page', 'Real Estate - FAQ Page', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-09-27 05:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect Tools', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola', 'fab fa-affiliatetheme', 1, '2021-09-12 02:44:09', '2021-10-18 02:29:48'),
(2, 'Search in Click', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola', 'fas fa-align-center', 1, '2021-09-12 02:46:26', '2021-10-18 02:29:56'),
(4, 'User Control', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola', 'fab fa-github-square', 1, '2021-09-12 02:58:33', '2021-10-18 02:30:03'),
(5, '5 Star Support', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola', 'fas fa-american-sign-language-interpreting', 1, '2021-09-12 02:59:08', '2021-10-18 02:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(4) DEFAULT 1,
  `patient_can_register` int(2) DEFAULT 1,
  `save_contact_message` int(191) DEFAULT 0,
  `comment_type` int(1) DEFAULT 1,
  `preloader` int(1) DEFAULT 1,
  `preloader_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_cookie_consent` int(1) DEFAULT 0,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_captcha` int(11) NOT NULL DEFAULT 0,
  `live_chat` int(1) NOT NULL DEFAULT 0,
  `livechat_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `currency_rate` float NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `google_analytic` int(1) NOT NULL DEFAULT 0,
  `google_analytic_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#0000FF',
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#0000FF',
  `theme_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenotification_day` int(11) NOT NULL,
  `dashboard_header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dashbaord_header_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `email`, `show`, `patient_can_register`, `save_contact_message`, `comment_type`, `preloader`, `preloader_image`, `facebook_comment_script`, `cookie_text`, `cookie_button_text`, `allow_cookie_consent`, `captcha_key`, `captcha_secret`, `allow_captcha`, `live_chat`, `livechat_script`, `text_direction`, `currency_icon`, `currency_name`, `currency_rate`, `timezone`, `google_analytic`, `google_analytic_code`, `theme_one`, `theme_two`, `theme_three`, `google_map_api_key`, `prenotification_day`, `dashboard_header`, `dashbaord_header_icon`, `created_at`, `updated_at`) VALUES
(10, 'uploads/website-images/logo-2021-10-18-07-17-44-4621.png', 'uploads/website-images/favicon-2021-10-07-08-10-37-8719.png', 'admin@gmail.com', 1, 1, 0, 1, 0, 'public/uploads/website-images/preloader_image-2021-08-23-11-57-24-6178.png', '882238482112522', 'We use cookies to personalize content and ads, to provide social media features and to analyze our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.', 'Accept', 1, '6LcVO6cbAAAAAOzIEwPlU66nL1rxD4VAS38tjpBX', '6LcVO6cbAAAAALVNrpZfNRfd0Gy_9a_fJRLiMVUI', 0, 0, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 'LTR', '$', 'INR', 1, 'America/Los_Angeles', 1, 'UA-84213520-6', '#27ae60', '#1b6eea', '#0b2c3d', 'AIzaSyD_8C7p0Ws2gUu7wo0b6pK9Qu7LuzX2iWY', 5, 'Find Estate', 'fas fa-anchor', '2021-06-18 09:25:14', '2021-11-24 06:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `header`, `created_at`, `updated_at`) VALUES
(8, 'uploads/website-images/home-page-banner-2021-10-07-08-25-06-3483.jpg', 'Find Your Next Perfect Place To Live', '2021-07-12 02:54:31', '2021-10-07 02:25:07'),
(14, 'public/uploads/website-images/home-page-banner-2021-07-18-08-24-06-1702.jpg', '', '2021-07-18 14:24:06', '2021-07-18 14:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_contents`
--

CREATE TABLE `subscriber_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_contents`
--

INSERT INTO `subscriber_contents` (`id`, `header`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Subscribe to Newsletter', 'Subscribe to get update and information. Don\'t worry, we won\'t send spam!', NULL, '2021-07-18 10:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_emails`
--

CREATE TABLE `subscriber_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_emails`
--

INSERT INTO `subscriber_emails` (`id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, '2021-07-13 02:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `verify_token`, `status`, `created_at`, `updated_at`) VALUES
(6, 'olivia@gmail.com', '', 1, '2021-08-23 06:47:58', '2021-08-23 06:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'James Robert', 'uploads/custom-images/testimonial-2021-09-12-09-19-30-1155.jpg', 'Founder', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 1, '2021-08-01 04:27:20', '2021-10-18 01:56:31'),
(2, 'Alabama William', 'uploads/custom-images/testimonial-2021-09-12-09-18-48-7887.jpg', 'CEO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 1, '2021-08-01 04:27:51', '2021-10-18 01:57:00'),
(5, 'Jhone Doe', 'uploads/custom-images/testimonial-2021-10-18-09-26-53-3936.jpg', 'Employee', 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne', 1, '2021-09-27 04:35:41', '2021-10-18 03:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(2) NOT NULL DEFAULT 0,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `phone`, `image`, `about`, `icon_one`, `link_one`, `icon_two`, `link_two`, `icon_three`, `link_three`, `icon_four`, `link_four`, `email_verified_token`, `email_verified`, `forget_password_token`, `password`, `status`, `website`, `address`, `remember_token`, `banner_image`, `created_at`, `updated_at`) VALUES
(2, 'David Simmons', 'david-simmons', 'user@gmail.com', '112-223-443', 'uploads/custom-images/user-2021-10-18-09-36-08-7862.jpg', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad', 'fab fa-facebook', 'https://www.facebook.com/', 'fab fa-twitter', 'https://www.twitter.com/', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 'fab fa-linkedin', 'https://www.linkedin.com/', NULL, 1, 'tWVph2Pf94LMwteHRlzyVdAkY7cD1MTg4m5vTeq95sPEOaWkx9VVVZfwMdN7l27fWsmksq1E5OCgbArh6Mg4B5FyifcIZejLjL5p', '$2y$10$9nBlf89Zl4HXFimdLjmHfOhETfYl4MztlKRP6OdLLaHUJ8JgP2Loy', 1, 'https://test.com/', 'Tezpur, Queensland, Australia', NULL, 'uploads/custom-images/profile-banner-2021-09-23-10-00-02-9593.jpg', '2021-07-29 11:32:04', '2021-10-28 01:33:29'),
(23, 'David Warner', 'david-warner', 'user1@gmail.com', '123-343-4444', NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam quae natus sapiente est ex quaerat, cupiditate consectetur explicabo, libero, ipsa ab odit placeat quam ut voluptatem aliquid voluptatibus voluptates cumque', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 'fab fa-twitter', 'https://www.twitter.com/', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 'fab fa-linkedin', 'https://www.linkedin.com/', NULL, 1, NULL, '$2y$10$fMbjDzwo1FYe/4RG69VDcOtFHSOAjjCTj3PJKR8je8g6TjWiV/DSi', 1, 'https://example.com', '95 South Park Avenue, New York, USA', NULL, NULL, '2021-09-26 10:20:18', '2021-10-28 01:34:31'),
(24, 'Stiven Smith', 'stiven-smith', 'user3@gmail.com', '123-343-4444', 'uploads/custom-images/user-2021-10-18-09-36-52-1015.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam quae natus sapiente est ex quaerat, cupiditate consectetur explicabo, libero, ipsa ab odit placeat quam ut voluptatem aliquid voluptatibus voluptates cumque', 'fab fa-linkedin', 'https://www.linkedin.com/', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 'fab fa-twitter', 'https://www.whatsapp.com/', 'fab fa-facebook', 'https://www.facebook.com/', NULL, 1, NULL, '$2y$10$C4Cf3Omt7fcNhuAyt9P6wOMjC02YkvcW8pGYmG3ol4R2Y4Y5B6xyu', 1, 'https://example.com', 'England, England, United Kindom', NULL, 'uploads/custom-images/profile-banner-2021-09-26-04-52-49-3815.jpg', '2021-09-26 10:49:02', '2021-10-28 01:37:02'),
(27, 'Timothy Jason', 'timothy-jason', 'user4@gmail.com', '123-343-4444', 'uploads/custom-images/user-2021-10-18-09-37-45-2659.jpg', 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam. Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 'fab fa-twitter', 'https://www.twitter.com/', 'fab fa-facebook', 'https://www.facebook.com/', 'fab fa-linkedin', 'https://www.linkedin.com/', NULL, 1, NULL, '$2y$10$9dDJJqwE5xu9p1y5tAS7uO35X75YH3nwQwr6ZpeviVL1h8dQWHuFK', 1, 'https://example.com', 'Zeleni put 21, Los Angeles, California', NULL, NULL, '2021-10-18 02:35:53', '2021-10-28 01:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `validation_texts`
--

CREATE TABLE `validation_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `validation_texts`
--

INSERT INTO `validation_texts` (`id`, `lang_key`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'email', 'Email field is required', 'Email field is required', NULL, '2021-10-12 02:36:20'),
(2, 'valid_email', 'Insert Your Valid Email', 'Insert Your Valid Email', NULL, '2021-07-31 18:29:38'),
(3, 'unique_email', 'Email Already Exist', 'Email Already Exist', NULL, '2021-07-31 18:29:38'),
(4, 'name', 'Name field is required', 'Name field is required', NULL, '2021-10-12 02:36:15'),
(5, 'phone', 'Phone field is required', 'Phone field is required', NULL, '2021-10-12 02:36:15'),
(6, 'subject', 'Subject field is required', 'Subject field is required', NULL, '2021-10-12 02:36:15'),
(7, 'msg', 'Message field is required', 'Message field is required', NULL, '2021-10-12 02:36:15'),
(8, 'user_type', 'User type field is required', 'User type field is required', NULL, '2021-10-12 02:36:15'),
(9, 'search', 'Search field is required', 'Search field is required', NULL, '2021-10-12 02:36:15'),
(10, 'comment', 'Comment field is required', 'Comment field is required', NULL, '2021-10-12 02:36:15'),
(11, 'about', 'About field is required', 'About field is required', NULL, '2021-10-12 02:36:15'),
(12, 'pass', 'Password field is required', 'Password field is required', NULL, NULL),
(13, 'current_pass', 'Current Password field is required', 'Current Password field is required', NULL, NULL),
(14, 'confirm_pass', 'Confirmation Password Does not match', 'Confirmation Password Does not match', NULL, '2021-10-12 02:36:15'),
(15, 'rating', 'Rating field is required', 'Rating field is required', NULL, '2021-10-12 02:43:53'),
(16, 'property', 'Property field is required', 'Property field is required', NULL, '2021-10-12 02:43:53'),
(17, 'package', 'Package field is required', 'Package field is required', NULL, '2021-10-12 02:43:53'),
(18, 'title', 'Title field is required', 'Title field is required', NULL, '2021-10-12 02:43:54'),
(19, 'slug', 'Slug  field is required', 'Slug  field is required', NULL, '2021-10-12 02:43:54'),
(20, 'cat', 'Category field is Required', 'Category field is Required', NULL, '2021-10-12 02:43:54'),
(21, 'loc', 'Location field is Required', 'Location field is Required', NULL, '2021-10-12 02:43:54'),
(22, 'address', 'Address field is required', 'Address field is required', NULL, '2021-10-12 02:43:54'),
(25, 'logo', 'Logo field is Required', 'Logo field is Required', NULL, '2021-10-12 02:43:54'),
(26, 'thumb', 'Thumbnail Image field is required', 'Thumbnail Image field is required', NULL, '2021-10-12 02:43:54'),
(27, 'img', 'Image field is Required', 'Image field is Required', NULL, '2021-10-12 02:43:54'),
(29, 'short_des', 'Short Description is required', 'Short Description is required', NULL, '2021-08-19 11:36:12'),
(30, 'des', 'Description field is required', 'Description field is required', NULL, '2021-10-12 02:43:54'),
(34, 'status', 'Status field is required', 'Status field is required', NULL, '2021-10-12 02:36:15'),
(35, 'min_pass', 'Password Minimum 3 character', 'Password Minimum 3 character', NULL, NULL),
(36, 'recaptcha', 'Please Complete the recaptcha to submit the form', 'Please Complete the recaptcha to submit the form', NULL, NULL),
(37, 'video', 'Video link field is required', 'Video link field is required', NULL, '2021-10-12 02:36:15'),
(38, 'content_qty', 'Content quantity filed is required', 'Content quantity filed is required', NULL, '2021-10-12 02:36:15'),
(40, 'header', 'Header filed is required', 'Header filed is required', NULL, '2021-10-12 02:36:15'),
(42, 'icon', 'Icon field is required', 'Icon field is required', NULL, '2021-10-12 02:36:15'),
(43, 'aminity', 'Aminity field is required', 'Aminity field is required', NULL, '2021-10-12 02:36:15'),
(44, 'unique_name', 'Name already exist', 'Name already exist', NULL, '2021-10-12 02:36:15'),
(45, 'unique_slug', 'Slug already exist', 'Slug already exist', NULL, '2021-10-12 02:36:15'),
(46, 'unique_title', 'Title already exist', 'Title already exist', NULL, '2021-10-12 02:36:15'),
(47, 'terms_cond', 'Terms and condition field is required', 'Terms and condition field is required', NULL, '2021-10-12 02:36:15'),
(48, 'privacy_policy', 'Privacy policy field is required', 'Privacy policy field is required', NULL, '2021-10-12 02:36:15'),
(49, 'map', 'Map embed code field is required', 'Map embed code field is required', NULL, '2021-10-12 02:36:15'),
(50, 'copyright', 'Copyright filed is required', 'Copyright filed is required', NULL, '2021-10-12 02:36:15'),
(54, 'featured', 'Featured filed is required', 'Featured filed is required', NULL, '2021-10-12 02:36:15'),
(55, 'package_type', 'Package type field is required', 'Package type field is required', NULL, '2021-10-12 02:36:15'),
(56, 'package_name', 'Package name field is required', 'Package name field is required', NULL, '2021-10-12 02:36:15'),
(57, 'price', 'Price field is required', 'Price field is required', NULL, '2021-10-12 02:36:15'),
(58, 'number_of_day', 'Number of days field is required', 'Number of days field is required', NULL, '2021-10-12 02:36:15'),
(59, 'number_of_aminity', 'Number of aminities field is required', 'Number of aminities field is required', NULL, '2021-10-12 02:36:15'),
(60, 'number_of_photo', 'Number of photo field is required', 'Number of photo field is required', NULL, '2021-10-12 02:36:15'),
(61, 'number_of_top_property', 'Number of top property field is required', 'Number of top property field is required', NULL, '2021-10-12 02:43:54'),
(62, 'number_of_property', 'Number of property field is required', 'Number of property field is required', NULL, '2021-10-12 02:36:15'),
(63, 'number_of_feature_property', 'Number of feature property field is required', 'Number of feature property field is required', NULL, '2021-10-12 02:36:15'),
(64, 'unique_loc', 'Location already exist', 'Location already exist', NULL, '2021-10-12 02:36:15'),
(65, 'qty', 'Quantity field is required', 'Quantity field is required', NULL, '2021-08-19 11:36:12'),
(66, 'account_mode', 'Account mode field is required', 'Account mode field is required', NULL, '2021-10-12 02:36:15'),
(67, 'paypal_client_id', 'Paypal client id field is required', 'Paypal client id field is required', NULL, '2021-10-12 02:36:15'),
(68, 'paypal_secret', 'Paypal secret field is required', 'Paypal secret field is required', NULL, '2021-10-12 02:36:15'),
(69, 'stripe_key', 'Stripe key field is required', 'Stripe key field is required', NULL, '2021-10-12 02:36:15'),
(70, 'stripe_secret', 'Stripe secret field is required', 'Stripe secret field is required', NULL, '2021-10-12 02:36:15'),
(71, 'meta_des', 'Meta description field is required', 'Meta description field is required', NULL, '2021-10-12 02:36:15'),
(72, 'currency_name', 'Currency name field is required', 'Currency name field is required', NULL, '2021-10-12 02:36:15'),
(73, 'currency_icon', 'Currency icon field is required', 'Currency icon field is required', NULL, '2021-10-12 02:36:15'),
(75, 'pre_notify', 'Prenotification day field is required', 'Prenotification day field is required', NULL, '2021-10-12 02:36:15'),
(76, 'fb_comment', 'facebook app id field is required', 'facebook app id field is required', NULL, '2021-08-19 11:36:12'),
(77, 'allow', 'Allow filed is required', 'Allow filed is required', NULL, '2021-10-12 02:36:15'),
(78, 'border', 'Border filed is required', 'Border filed is required', NULL, '2021-10-12 02:36:15'),
(79, 'corner', 'Corner filed is required', 'Corner filed is required', NULL, '2021-10-12 02:36:15'),
(80, 'bg_color', 'Background color filed is required', 'Background color filed is required', NULL, '2021-10-12 02:36:15'),
(81, 'text_color', 'Text color filed is required', 'Text color filed is required', NULL, '2021-10-12 02:36:15'),
(82, 'border_color', 'Border color filed is required', 'Border color filed is required', NULL, '2021-10-12 02:36:15'),
(83, 'button_color', 'Button color filed is required', 'Button color filed is required', NULL, '2021-10-12 02:36:15'),
(84, 'button_text_color', 'Button text color filed is required', 'Button text color filed is required', NULL, '2021-10-12 02:36:15'),
(85, 'link_text', 'Link text filed is required', 'Link text filed is required', NULL, '2021-10-12 02:36:15'),
(86, 'button_text', 'Button text filed is required', 'Button text filed is required', NULL, '2021-10-12 02:36:16'),
(87, 'captcha_key', 'Captcha key filed is required', 'Captcha key filed is required', NULL, '2021-10-12 02:36:16'),
(88, 'captcha_secret', 'Captcha secret filed is required', 'Captcha secret filed is required', NULL, '2021-10-12 02:36:16'),
(89, 'live_chat', 'Livechat script filed is required', 'Livechat script filed is required', NULL, '2021-10-12 02:36:16'),
(90, 'analytic', 'Google analytic code field is required', 'Google analytic code field is required', NULL, '2021-10-12 02:36:16'),
(91, 'designation', 'Designation filed is required', 'Designation filed is required', NULL, '2021-10-12 02:36:16'),
(92, 'page_name', 'Page name field is required', 'Page name field is required', NULL, '2021-10-12 02:36:16'),
(93, 'unique_page_name', 'Page name already exist', 'Page name already exist', NULL, '2021-10-12 02:36:16'),
(94, 'banner_img', 'Banner Image field is required', 'Banner Image field is required', NULL, '2021-10-12 02:43:54'),
(96, 'mail_host', 'Mail Host field is required', 'Mail Host field is required', NULL, '2021-10-12 02:43:54'),
(97, 'smtp_user', 'SMTP User field is required', 'SMTP User field is required', NULL, '2021-10-12 02:43:54'),
(98, 'smtp_pass', 'SMTP Password field is required', 'SMTP Password field is required', NULL, '2021-10-12 02:43:54'),
(99, 'mail_port', 'Mail Port field is required', 'Mail Port field is required', NULL, '2021-10-12 02:43:54'),
(100, 'mail_encryption', 'Mail Encryption field is required', 'Mail Encryption field is required', NULL, '2021-10-12 02:43:54'),
(104, 'sidebar_header', 'Sidebar header field is required', 'Sidebar header field is required', NULL, NULL),
(105, 'sidebar_icon', 'Sidebar header icon field is required', 'Sidebar header icon field is required', NULL, NULL),
(106, 'currency_rate', 'Currency Rate field is required', 'Currency Rate field is required', NULL, '2021-10-12 02:43:54'),
(107, 'purpose', 'Purpose field is required', 'Purpose field is required', NULL, '2021-10-12 02:43:54'),
(108, 'type', 'Type field is required', 'Type field is required', NULL, '2021-10-12 02:43:54'),
(109, 'number_of_nearest_place', 'Number on nearest place field is required', 'Number on nearest place field is required', NULL, '2021-10-12 02:43:54'),
(110, 'number_of_urgent_property', 'Number of urgent property field is required', 'Number of urgent property field is required', NULL, '2021-10-12 02:43:54'),
(111, 'package_order', 'Package order field is required', 'Package order field is required', NULL, '2021-10-12 02:43:54'),
(112, 'property_type', 'Property type field is required', 'Property type field is required', NULL, '2021-10-12 02:43:54'),
(113, 'city', 'City field is required', 'City field is required', NULL, '2021-10-12 02:43:54'),
(114, 'area', 'Total area field is required', 'Total area field is required', NULL, '2021-10-12 02:43:54'),
(115, 'unit', 'Unit field is required', 'Unit field is required', NULL, '2021-10-12 02:43:54'),
(116, 'room', 'Total room field is required', 'Total room field is required', NULL, '2021-10-12 02:43:54'),
(117, 'bedroom', 'Bedroom field is required', 'Bedroom field is required', NULL, '2021-10-12 02:43:54'),
(118, 'bathroom', 'Bathroom field is required', 'Bathroom field is required', NULL, '2021-10-12 02:43:54'),
(119, 'floor', 'Floor field is required', 'Floor field is required', NULL, '2021-10-12 02:43:54'),
(120, 'kitchen', 'Total kitchen field is required', 'Total kitchen field is required', NULL, '2021-10-12 02:43:54'),
(121, 'parking', 'Total parking place field is required', 'Total parking place field is required', NULL, '2021-10-12 02:43:54'),
(122, 'banner_img', 'Banner image field is required', 'Banner image field is required', NULL, '2021-10-12 02:43:54'),
(123, 'thumb_img', 'Thumbnail image field is required', 'Thumbnail image field is required', NULL, '2021-10-12 02:43:54'),
(124, 'slider_img', 'Slider image field is required', 'Slider image field is required', NULL, '2021-10-12 02:43:54'),
(125, 'img', 'Image field is required', 'Image field is required', NULL, '2021-10-12 02:43:54'),
(126, 'unique_type', 'Type already exist', 'Type already exist', NULL, NULL),
(127, 'unique_aminity', 'Aminity already exist', 'Aminity already exist', NULL, NULL),
(129, 'service', 'Service field is required', 'Service field is required', NULL, '2021-10-12 02:43:54'),
(130, 'history', 'History field is required', 'History field is required', NULL, '2021-10-12 02:43:54'),
(131, 'state_name', 'State Name field is required', 'State Name field is required', NULL, '2021-10-12 02:43:54'),
(132, 'unique_state_name', 'State Name already exist', 'State Name already exist', NULL, NULL),
(133, 'country', 'Country field is required', 'Country field is required', NULL, '2021-10-12 02:43:54'),
(134, 'state', 'State field is required', 'State field is required', NULL, '2021-10-12 02:43:54'),
(135, 'unique_city', 'City already exist', 'City already exist', NULL, NULL),
(136, 'show_homepage', 'Show homepage field is required', 'Show homepage field is required', NULL, '2021-10-12 02:43:54'),
(137, 'every', 'Every filed required', 'Every filed required', NULL, '2021-10-12 02:44:55'),
(138, 'bank_account', 'Bank account field is required', 'Bank account field is required', NULL, NULL),
(139, 'razorpay_key', 'Razorpay key is required', 'Razorpay key is required', NULL, NULL),
(140, 'razorpay_secret', 'Razorpay secret key is required', 'Razorpay secret key is required', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(8, 2, 12, '2021-09-23 04:18:03', '2021-09-23 04:18:03'),
(11, 2, 22, '2021-10-12 04:15:45', '2021-10-12 04:15:45'),
(12, 2, 9, '2021-10-17 08:12:32', '2021-10-17 08:12:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `aminities`
--
ALTER TABLE `aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginators`
--
ALTER TABLE `custom_paginators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_texts`
--
ALTER TABLE `manage_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal_consents`
--
ALTER TABLE `modal_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nearest_locations`
--
ALTER TABLE `nearest_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_aminities`
--
ALTER TABLE `property_aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_nearest_locations`
--
ALTER TABLE `property_nearest_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_purposes`
--
ALTER TABLE `property_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_reviews`
--
ALTER TABLE `property_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpays`
--
ALTER TABLE `razorpays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_texts`
--
ALTER TABLE `seo_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_contents`
--
ALTER TABLE `subscriber_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validation_texts`
--
ALTER TABLE `validation_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `aminities`
--
ALTER TABLE `aminities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_paginators`
--
ALTER TABLE `custom_paginators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manage_texts`
--
ALTER TABLE `manage_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `modal_consents`
--
ALTER TABLE `modal_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nearest_locations`
--
ALTER TABLE `nearest_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `property_aminities`
--
ALTER TABLE `property_aminities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1186;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `property_nearest_locations`
--
ALTER TABLE `property_nearest_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `property_purposes`
--
ALTER TABLE `property_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_reviews`
--
ALTER TABLE `property_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `razorpays`
--
ALTER TABLE `razorpays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_texts`
--
ALTER TABLE `seo_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscriber_contents`
--
ALTER TABLE `subscriber_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `validation_texts`
--
ALTER TABLE `validation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
