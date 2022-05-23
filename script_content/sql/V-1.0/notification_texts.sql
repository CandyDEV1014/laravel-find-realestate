-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 05:54 PM
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
(2, 'subscribe', 'Subscribed successfully. please verify your email', 'Subscribed successfully. please verify your email', NULL, '2021-07-31 18:11:59'),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
