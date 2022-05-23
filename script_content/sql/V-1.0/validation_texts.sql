-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 06:28 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `validation_texts`
--
ALTER TABLE `validation_texts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `validation_texts`
--
ALTER TABLE `validation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
