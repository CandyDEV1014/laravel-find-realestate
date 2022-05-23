-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 06:29 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
