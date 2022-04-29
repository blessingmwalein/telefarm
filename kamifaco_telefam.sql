-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 09:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamifaco_telefam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Home', 'fa-bars', 'home', '*', '2021-08-08 16:38:39', '2021-08-08 16:38:39'),
(9, 8, 0, 'Categories', 'fa-bars', 'categories', '*', '2021-08-08 16:39:00', '2021-08-08 16:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-08-02 14:43:18', '2021-08-02 14:43:18'),
(2, 1, 'admin/memberships', 'GET', '127.0.0.1', '[]', '2021-08-02 14:43:24', '2021-08-02 14:43:24'),
(3, 1, 'admin/memberships/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 14:43:27', '2021-08-02 14:43:27'),
(4, 1, 'admin/memberships', 'POST', '127.0.0.1', '{\"name\":\"Basic\",\"period\":\"12\",\"cost\":\"60\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/memberships\"}', '2021-08-02 14:43:41', '2021-08-02 14:43:41'),
(5, 1, 'admin/memberships/create', 'GET', '127.0.0.1', '[]', '2021-08-02 14:43:41', '2021-08-02 14:43:41'),
(6, 1, 'admin/memberships', 'POST', '127.0.0.1', '{\"name\":\"Premium\",\"period\":\"24\",\"cost\":\"100\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"after-save\":\"2\"}', '2021-08-02 14:43:53', '2021-08-02 14:43:53'),
(7, 1, 'admin/memberships/create', 'GET', '127.0.0.1', '[]', '2021-08-02 14:43:53', '2021-08-02 14:43:53'),
(8, 1, 'admin/memberships', 'POST', '127.0.0.1', '{\"name\":\"Pro\",\"period\":\"24\",\"cost\":\"150\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 14:44:04', '2021-08-02 14:44:04'),
(9, 1, 'admin/memberships', 'GET', '127.0.0.1', '[]', '2021-08-02 14:44:04', '2021-08-02 14:44:04'),
(10, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-02 18:12:11', '2021-08-02 18:12:11'),
(11, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:12:13', '2021-08-02 18:12:13'),
(12, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2021-08-02 18:14:26', '2021-08-02 18:14:26'),
(13, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2021-08-02 18:14:28', '2021-08-02 18:14:28'),
(14, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Farming\",\"slug\":null,\"desc\":\"Farming Category\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 18:19:31', '2021-08-02 18:19:31'),
(15, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2021-08-02 18:19:31', '2021-08-02 18:19:31'),
(16, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Farming\",\"slug\":null,\"desc\":\"Farming Category\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 18:20:03', '2021-08-02 18:20:03'),
(17, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2021-08-02 18:20:03', '2021-08-02 18:20:03'),
(18, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Farming\",\"slug\":null,\"desc\":\"Farming Category\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 18:20:13', '2021-08-02 18:20:13'),
(19, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-02 18:20:13', '2021-08-02 18:20:13'),
(20, 1, 'admin/sub-categories', 'GET', '127.0.0.1', '[]', '2021-08-02 18:22:31', '2021-08-02 18:22:31'),
(21, 1, 'admin/sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:22:34', '2021-08-02 18:22:34'),
(22, 1, 'admin/sub-categories', 'POST', '127.0.0.1', '{\"name\":\"Home Gardening\",\"category_id\":\"1\",\"desc\":\"Home gardening farming\",\"slug\":null,\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sub-categories\"}', '2021-08-02 18:23:50', '2021-08-02 18:23:50'),
(23, 1, 'admin/sub-categories', 'GET', '127.0.0.1', '[]', '2021-08-02 18:23:50', '2021-08-02 18:23:50'),
(24, 1, 'admin/sub-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:23:53', '2021-08-02 18:23:53'),
(25, 1, 'admin/sub-categories', 'POST', '127.0.0.1', '{\"name\":\"Large Scale Farming\",\"category_id\":\"1\",\"desc\":\"Farming at large scale\",\"slug\":null,\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sub-categories\"}', '2021-08-02 18:24:48', '2021-08-02 18:24:48'),
(26, 1, 'admin/sub-categories', 'GET', '127.0.0.1', '[]', '2021-08-02 18:24:48', '2021-08-02 18:24:48'),
(27, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:07', '2021-08-02 18:42:07'),
(28, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:09', '2021-08-02 18:42:09'),
(29, 1, 'admin/colors', 'POST', '127.0.0.1', '{\"name\":\"Red\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/colors\"}', '2021-08-02 18:42:13', '2021-08-02 18:42:13'),
(30, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:13', '2021-08-02 18:42:13'),
(31, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:14', '2021-08-02 18:42:14'),
(32, 1, 'admin/colors', 'POST', '127.0.0.1', '{\"name\":\"Blue\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/colors\"}', '2021-08-02 18:42:17', '2021-08-02 18:42:17'),
(33, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:17', '2021-08-02 18:42:17'),
(34, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:18', '2021-08-02 18:42:18'),
(35, 1, 'admin/colors', 'POST', '127.0.0.1', '{\"name\":\"Green\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/colors\"}', '2021-08-02 18:42:26', '2021-08-02 18:42:26'),
(36, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:26', '2021-08-02 18:42:26'),
(37, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:27', '2021-08-02 18:42:27'),
(38, 1, 'admin/colors', 'POST', '127.0.0.1', '{\"name\":\"Yellow\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/colors\"}', '2021-08-02 18:42:34', '2021-08-02 18:42:34'),
(39, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:34', '2021-08-02 18:42:34'),
(40, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:35', '2021-08-02 18:42:35'),
(41, 1, 'admin/colors', 'POST', '127.0.0.1', '{\"name\":\"Brown\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/colors\"}', '2021-08-02 18:42:39', '2021-08-02 18:42:39'),
(42, 1, 'admin/colors', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:39', '2021-08-02 18:42:39'),
(43, 1, 'admin/colors/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:40', '2021-08-02 18:42:40'),
(44, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:45', '2021-08-02 18:42:45'),
(45, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"XXL\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 18:42:49', '2021-08-02 18:42:49'),
(46, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:50', '2021-08-02 18:42:50'),
(47, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:50', '2021-08-02 18:42:50'),
(48, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"1\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:42:53', '2021-08-02 18:42:53'),
(49, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:53', '2021-08-02 18:42:53'),
(50, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:54', '2021-08-02 18:42:54'),
(51, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"2\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:42:56', '2021-08-02 18:42:56'),
(52, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:42:56', '2021-08-02 18:42:56'),
(53, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:42:58', '2021-08-02 18:42:58'),
(54, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"5\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:43:01', '2021-08-02 18:43:01'),
(55, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:43:01', '2021-08-02 18:43:01'),
(56, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:43:02', '2021-08-02 18:43:02'),
(57, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"5\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:43:04', '2021-08-02 18:43:04'),
(58, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:43:05', '2021-08-02 18:43:05'),
(59, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Models_Size\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2021-08-02 18:43:11', '2021-08-02 18:43:11'),
(60, 1, 'admin/sizes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:43:11', '2021-08-02 18:43:11'),
(61, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:43:13', '2021-08-02 18:43:13'),
(62, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"6\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:43:16', '2021-08-02 18:43:16'),
(63, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:43:16', '2021-08-02 18:43:16'),
(64, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:43:17', '2021-08-02 18:43:17'),
(65, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"S\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:43:21', '2021-08-02 18:43:21'),
(66, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:43:21', '2021-08-02 18:43:21'),
(67, 1, 'admin/sizes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 18:43:22', '2021-08-02 18:43:22'),
(68, 1, 'admin/sizes', 'POST', '127.0.0.1', '{\"name\":\"M\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/sizes\"}', '2021-08-02 18:43:25', '2021-08-02 18:43:25'),
(69, 1, 'admin/sizes', 'GET', '127.0.0.1', '[]', '2021-08-02 18:43:25', '2021-08-02 18:43:25'),
(70, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-02 22:15:52', '2021-08-02 22:15:52'),
(71, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 22:15:55', '2021-08-02 22:15:55'),
(72, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Home Furniture & Electronics\",\"slug\":null,\"desc\":\"Home Furniture & Electronics\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2021-08-02 22:16:22', '2021-08-02 22:16:22'),
(73, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2021-08-02 22:16:22', '2021-08-02 22:16:22'),
(74, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Entertainment & Movies\",\"slug\":null,\"desc\":\"Entertainment & Movies\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\"}', '2021-08-02 22:16:38', '2021-08-02 22:16:38'),
(75, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-02 22:16:39', '2021-08-02 22:16:39'),
(76, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-02 22:16:43', '2021-08-02 22:16:43'),
(77, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Groceries  & Fresh foods\",\"slug\":null,\"desc\":\"Groceries  & Fresh foods\",\"_token\":\"BwnHBeNz9tBOhOHxxmC0Iktwh9GEWH0J8LRjZdea\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2021-08-02 22:17:08', '2021-08-02 22:17:08'),
(78, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-02 22:17:08', '2021-08-02 22:17:08'),
(79, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-03 19:37:46', '2021-08-03 19:37:46'),
(80, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-05 17:26:34', '2021-08-05 17:26:34'),
(81, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2021-08-08 16:28:50', '2021-08-08 16:28:50'),
(82, 1, 'admin/shop-memberships', 'GET', '127.0.0.1', '[]', '2021-08-08 16:28:55', '2021-08-08 16:28:55'),
(83, 1, 'admin/shop-memberships/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:29:07', '2021-08-08 16:29:07'),
(84, 1, 'admin/shop-memberships', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:29:15', '2021-08-08 16:29:15'),
(85, 1, 'admin/shop-memberships', 'GET', '127.0.0.1', '[]', '2021-08-08 16:30:45', '2021-08-08 16:30:45'),
(86, 1, 'admin/shop-memberships/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:31:13', '2021-08-08 16:31:13'),
(87, 1, 'admin/shop-memberships/create', 'GET', '127.0.0.1', '[]', '2021-08-08 16:34:58', '2021-08-08 16:34:58'),
(88, 1, 'admin/shop-memberships', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:35:49', '2021-08-08 16:35:49'),
(89, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:37:51', '2021-08-08 16:37:51'),
(90, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:38:13', '2021-08-08 16:38:13'),
(91, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Home\",\"icon\":\"fa-bars\",\"uri\":\"home\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Kd8oKYlbreAkk3VmKRHTCqbS8JBqO2YVpSxk3lqI\"}', '2021-08-08 16:38:39', '2021-08-08 16:38:39'),
(92, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-08 16:38:39', '2021-08-08 16:38:39'),
(93, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Categories\",\"icon\":\"fa-bars\",\"uri\":\"categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"Kd8oKYlbreAkk3VmKRHTCqbS8JBqO2YVpSxk3lqI\"}', '2021-08-08 16:39:00', '2021-08-08 16:39:00'),
(94, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-08 16:39:00', '2021-08-08 16:39:00'),
(95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-08-08 16:39:02', '2021-08-08 16:39:02'),
(96, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-08-08 16:39:08', '2021-08-08 16:39:08'),
(97, 1, 'admin', 'GET', '77.246.53.129', '[]', '2021-08-13 04:55:36', '2021-08-13 04:55:36'),
(98, 1, 'admin/categories', 'GET', '77.246.53.129', '{\"_pjax\":\"#pjax-container\"}', '2021-08-13 04:55:50', '2021-08-13 04:55:50'),
(99, 1, 'admin', 'GET', '77.246.53.129', '{\"_pjax\":\"#pjax-container\"}', '2021-08-13 04:56:11', '2021-08-13 04:56:11'),
(100, 1, 'admin', 'GET', '102.128.76.120', '[]', '2021-08-15 00:31:19', '2021-08-15 00:31:19'),
(101, 1, 'admin', 'GET', '102.128.79.100', '[]', '2021-08-15 13:35:42', '2021-08-15 13:35:42'),
(102, 1, 'admin/categories', 'GET', '77.246.53.30', '[]', '2021-08-15 13:37:57', '2021-08-15 13:37:57'),
(103, 1, 'admin/categories', 'GET', '77.246.53.30', '[]', '2021-08-15 13:50:20', '2021-08-15 13:50:20'),
(104, 1, 'admin/auth/login', 'GET', '102.128.79.39', '[]', '2021-08-16 14:32:15', '2021-08-16 14:32:15'),
(105, 1, 'admin', 'GET', '102.128.79.39', '[]', '2021-08-16 14:32:19', '2021-08-16 14:32:19'),
(106, 1, 'admin', 'GET', '102.128.79.39', '[]', '2021-08-16 15:10:25', '2021-08-16 15:10:25'),
(107, 1, 'admin', 'GET', '154.120.241.142', '[]', '2021-10-21 01:32:35', '2021-10-21 01:32:35'),
(108, 1, 'admin/categories', 'GET', '154.120.241.142', '{\"_pjax\":\"#pjax-container\"}', '2021-10-21 01:32:59', '2021-10-21 01:32:59'),
(109, 1, 'admin/categories', 'GET', '154.120.241.142', '[]', '2021-10-21 04:15:34', '2021-10-21 04:15:34'),
(110, 1, 'admin', 'GET', '154.120.241.142', '[]', '2021-11-03 03:08:59', '2021-11-03 03:08:59'),
(111, 1, 'admin/auth/login', 'GET', '154.120.241.142', '[]', '2021-11-03 03:09:02', '2021-11-03 03:09:02'),
(112, 1, 'admin', 'GET', '154.120.241.142', '[]', '2021-11-03 03:09:03', '2021-11-03 03:09:03'),
(113, 1, 'admin/categories', 'GET', '154.120.241.142', '{\"_pjax\":\"#pjax-container\"}', '2021-11-03 03:09:18', '2021-11-03 03:09:18'),
(114, 1, 'admin/categories', 'GET', '154.120.241.142', '[]', '2021-11-03 03:09:46', '2021-11-03 03:09:46'),
(115, 1, 'admin', 'GET', '154.120.241.142', '[]', '2022-01-14 02:44:02', '2022-01-14 02:44:02'),
(116, 1, 'admin', 'GET', '197.221.253.193', '[]', '2022-02-24 14:52:51', '2022-02-24 14:52:51'),
(117, 1, 'admin', 'GET', '102.128.76.115', '[]', '2022-02-24 14:53:01', '2022-02-24 14:53:01'),
(118, 1, 'admin/categories', 'GET', '197.221.253.193', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 14:53:11', '2022-02-24 14:53:11'),
(119, 1, 'admin/categories', 'GET', '102.128.76.115', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 14:53:13', '2022-02-24 14:53:13'),
(120, 1, 'admin', 'GET', '197.221.253.193', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 14:53:19', '2022-02-24 14:53:19'),
(121, 1, 'admin/categories', 'GET', '197.221.253.193', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 14:53:30', '2022-02-24 14:53:30'),
(122, 1, 'admin', 'GET', '217.15.117.123', '[]', '2022-02-24 17:07:13', '2022-02-24 17:07:13'),
(123, 1, 'admin', 'GET', '217.15.117.123', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 17:09:43', '2022-02-24 17:09:43'),
(124, 1, 'admin/auth/logout', 'GET', '217.15.117.123', '[]', '2022-02-24 17:10:08', '2022-02-24 17:10:08'),
(125, 1, 'admin', 'GET', '217.15.117.123', '[]', '2022-02-24 17:10:33', '2022-02-24 17:10:33'),
(126, 1, 'admin', 'GET', '217.15.117.123', '[]', '2022-02-24 17:12:05', '2022-02-24 17:12:05'),
(127, 1, 'admin', 'GET', '217.15.117.123', '[]', '2022-02-24 17:14:58', '2022-02-24 17:14:58'),
(128, 1, 'admin/auth/logout', 'GET', '217.15.117.123', '{\"_pjax\":\"#pjax-container\"}', '2022-02-24 17:15:03', '2022-02-24 17:15:03'),
(129, 1, 'admin', 'GET', '154.120.241.142', '[]', '2022-02-25 04:11:12', '2022-02-25 04:11:12'),
(130, 1, 'admin/categories', 'GET', '154.120.241.142', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 04:11:35', '2022-02-25 04:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-07-30 08:11:54', '2021-07-30 08:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Q.4UIA9aP/Ud8yVrQmVse.umyxrCFi4FF6CikJNKxlpSfEqV0ekYC', 'Administrator', NULL, 'DLyQWkzJPSzjhJ2uA6ikxGbUQ2PI2yVzeM1SRzMOzZSE4AjCbygQJCOW8ybs', '2021-07-30 08:11:54', '2021-07-30 08:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Farming', 'images/d18b9adce343edb9012206cdcdf28a39.jpeg', 'farming', 'Farming Category', '2021-08-02 18:20:13', '2021-08-02 18:20:13'),
(2, 'Home Furniture & Electronics', 'images/b594bded8335704e4f954f904a679bd3.jpeg', 'home-furniture-electronics', 'Home Furniture & Electronics', '2021-08-02 22:16:22', '2021-08-02 22:16:22'),
(3, 'Entertainment & Movies', 'images/4f9067bf8743007939e20ca84af785e9.jpeg', 'entertainment-movies', 'Entertainment & Movies', '2021-08-02 22:16:38', '2021-08-02 22:16:38'),
(4, 'Groceries  & Fresh foods', 'images/b5be78b6cfbdc7af5d9e6a8df3667949.jpeg', 'groceries-fresh-foods', 'Groceries  & Fresh foods', '2021-08-02 22:17:08', '2021-08-02 22:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Red', '2021-08-02 18:42:13', '2021-08-02 18:42:13'),
(2, 'Blue', '2021-08-02 18:42:17', '2021-08-02 18:42:17'),
(3, 'Green', '2021-08-02 18:42:26', '2021-08-02 18:42:26'),
(4, 'Yellow', '2021-08-02 18:42:34', '2021-08-02 18:42:34'),
(5, 'Brown', '2021-08-02 18:42:39', '2021-08-02 18:42:39');

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
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` int(11) NOT NULL,
  `cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `period`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 12, 60, '2021-08-02 14:43:41', '2021-08-02 14:43:41'),
(2, 'Premium', 24, 100, '2021-08-02 14:43:53', '2021-08-02 14:43:53'),
(3, 'Pro', 24, 150, '2021-08-02 14:44:04', '2021-08-02 14:44:04');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_29_145344_create_sessions_table', 1),
(7, '2021_07_29_184440_create_categories_table', 1),
(8, '2021_07_29_184451_create_sub_categories_table', 1),
(9, '2021_07_30_084949_create_shops_table', 1),
(10, '2021_07_30_084950_create_products_table', 1),
(11, '2021_07_30_084959_create_memberships_table', 1),
(12, '2021_07_30_084960_create_transactions_table', 1),
(13, '2021_07_30_085008_create_shop_memberships_table', 1),
(14, '2021_07_30_085037_create_user_addresses_table', 1),
(15, '2021_07_30_092328_create_product_images_table', 1),
(16, '2021_07_30_100944_create_sizes_table', 2),
(17, '2021_07_30_100953_create_colors_table', 2),
(18, '2016_01_04_173148_create_admin_tables', 3),
(19, '2021_08_10_213446_create_orders_table', 4),
(20, '2021_08_10_214834_add_user_id_to_orders_table', 5),
(21, '2021_08_10_222811_add_email_to_orders_table', 6),
(22, '2021_08_12_231948_create_sales_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_address_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nullable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `order_notes`, `mobile`, `order_items`, `user_address_id`, `transaction_id`, `status`, `created_at`, `updated_at`, `user_id`, `email`) VALUES
(21, 'Blessing', 'Mwale', 'New orders', '+263772440088', '{\"2\":{\"id\":2,\"name\":\"Gardening shoes\",\"price\":49,\"quantity\":1,\"attributes\":{\"image\":\"Gardening shoes.jpg\"},\"conditions\":[]},\"3\":{\"id\":3,\"name\":\"Framing Tractor\",\"price\":12000,\"quantity\":1,\"attributes\":{\"image\":\"Framing Tractor.jpg\"},\"conditions\":[]}}', 24, NULL, 'Pending', '2022-04-22 16:29:44', '2022-04-22 16:29:44', 16, 'bling@outlook.com'),
(22, 'Tinashe', 'Kadiki', 'Please enter your Order ID in the box below and press Enter. This was given to you on your receipt and in the confirmation email you should have received.', '0772440088', '{\"2\":{\"id\":2,\"name\":\"Gardening shoes\",\"price\":49,\"quantity\":1,\"attributes\":{\"image\":\"Gardening shoes.jpg\"},\"conditions\":[]},\"3\":{\"id\":3,\"name\":\"Framing Tractor\",\"price\":12000,\"quantity\":1,\"attributes\":{\"image\":\"Framing Tractor.jpg\"},\"conditions\":[]},\"7\":{\"id\":7,\"name\":\"Wheels\",\"price\":50,\"quantity\":1,\"attributes\":{\"image\":\"Wheels.jpg\"},\"conditions\":[]},\"8\":{\"id\":8,\"name\":\"Wheels\",\"price\":50,\"quantity\":1,\"attributes\":{\"image\":\"Wheels.jpg\"},\"conditions\":[]}}', 25, NULL, 'Pending', '2022-04-22 17:31:27', '2022-04-22 17:31:27', 16, 'prof.kadiki@gmail.com'),
(23, 'TRACY', 'TAXLIEN', 'New oders notes', '17604439894', '{\"3\":{\"id\":3,\"name\":\"Framing Tractor\",\"price\":12000,\"quantity\":10,\"attributes\":{\"image\":\"Framing Tractor.jpg\"},\"conditions\":[]},\"9\":{\"id\":9,\"name\":\"Wheels\",\"price\":50,\"quantity\":2,\"attributes\":{\"image\":\"Wheels.jpg\"},\"conditions\":[]},\"11\":{\"id\":11,\"name\":\"Wheels\",\"price\":50,\"quantity\":2,\"attributes\":{\"image\":\"Wheels.jpg\"},\"conditions\":[]}}', 26, NULL, 'Pending', '2022-04-22 19:04:20', '2022-04-22 19:04:20', 16, 'tax@gmail.com');

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `name`, `price`, `sub_category_id`, `shop_id`, `desc`, `image`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'pick', 'Garden Pick For digging', 123, 1, 1, 'New digging pick for hard surfaces also', 'Pick.jpg', '{\"qty\": \"100\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-02 19:15:54', '2021-08-03 00:20:32'),
(2, 'gardening-shoes', 'Gardening shoes', 49, 1, 1, 'New digging gardening shoes for hard surfaces', 'Gardening shoes.jpg', '{\"qty\": \"100\", \"size\": \"6\", \"color\": \"Green\"}', '2021-08-02 19:17:01', '2021-08-02 19:17:01'),
(3, 'framing-tractor', 'Framing Tractor', 12000, 2, 2, 'Farming tractor in wet condition , hard surface', 'Framing Tractor.jpg', '{\"qty\": \"20\", \"size\": \"XXL\", \"color\": \"Red\"}', '2021-08-05 21:30:03', '2021-08-05 21:30:03'),
(4, 'combine-harvester', 'Combine Harvester', 50000, 2, 2, 'combine harvester in wet condition , hard surface', 'Combine Harvester.jpg', '{\"qty\": \"20\", \"size\": \"XXL\", \"color\": \"Red\"}', '2021-08-05 21:31:10', '2021-08-05 21:31:10'),
(5, 'cofee-table', 'Cofee table', 150, 1, 3, 'Brown Cofee table  available hurry!', 'Cofee table.jpg', '{\"qty\": \"50\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-05 21:35:52', '2021-08-05 21:35:52'),
(6, 'wheels', 'Wheels 2', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:07', '2021-08-06 18:04:46'),
(7, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:27', '2021-08-06 18:03:27'),
(8, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:30', '2021-08-06 18:03:30'),
(9, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:30', '2021-08-06 18:03:30'),
(10, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:31', '2021-08-06 18:03:31'),
(11, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:31', '2021-08-06 18:03:31'),
(12, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:31', '2021-08-06 18:03:31'),
(13, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:31', '2021-08-06 18:03:31'),
(14, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:31', '2021-08-06 18:03:31'),
(15, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:32', '2021-08-06 18:03:32'),
(16, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:32', '2021-08-06 18:03:32'),
(17, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:32', '2021-08-06 18:03:32'),
(18, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:32', '2021-08-06 18:03:32'),
(19, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:33', '2021-08-06 18:03:33'),
(20, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:33', '2021-08-06 18:03:33'),
(21, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:33', '2021-08-06 18:03:33'),
(22, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:34', '2021-08-06 18:03:34'),
(23, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:34', '2021-08-06 18:03:34'),
(24, 'wheels', 'Wheels', 50, 2, 4, 'New wheels', 'Wheels.jpg', '{\"qty\": \"23\", \"size\": \"M\", \"color\": \"Brown\"}', '2021-08-06 18:03:34', '2021-08-06 18:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `units_sold` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `shop_id`, `units_sold`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 1, '2021-08-12 21:38:13', '2021-08-12 21:38:13'),
(2, 7, 4, 1, '2021-08-12 21:38:13', '2021-08-12 21:38:13'),
(3, 10, 4, 1, '2021-08-12 22:07:20', '2021-08-12 22:07:20'),
(4, 3, 2, 2, '2021-08-12 20:19:32', '2021-08-12 20:19:32'),
(5, 2, 1, 2, '2021-08-12 20:19:32', '2021-08-12 20:19:32'),
(6, 3, 2, 2, '2021-08-15 02:31:51', '2021-08-15 02:31:51'),
(7, 2, 1, 1, '2021-10-01 05:07:16', '2021-10-01 05:07:16'),
(8, 2, 1, 1, '2021-10-21 01:31:52', '2021-10-21 01:31:52'),
(9, 1, 1, 1, '2022-01-14 02:48:52', '2022-01-14 02:48:52'),
(10, 1, 1, 6, '2022-02-24 17:39:04', '2022-02-24 17:39:04'),
(11, 2, 1, 1, '2022-02-24 17:39:05', '2022-02-24 17:39:05'),
(12, 6, 4, 1, '2022-02-24 17:39:05', '2022-02-24 17:39:05'),
(13, 4, 2, 1, '2022-02-24 17:39:06', '2022-02-24 17:39:06'),
(14, 5, 3, 2, '2022-02-24 17:39:06', '2022-02-24 17:39:06'),
(15, 3, 2, 1, '2022-02-25 04:19:18', '2022-02-25 04:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('phIN44cTcYRO6y63FHRdSphY2AOI3E5oUra0HuNF', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWk5ieXFNUnV4a1R4NDhzVlZCWlp0QVl5TjVuYXVsN0FYb1FBcVh3USI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Nob3AvcGVuZGluZyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcC9wcm9kdWN0cy9lZGl0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGNSa2V3bHd5UTRsbERGVmJyTFlSQnVlUDBHT3BrR0wxL1owSWQ1Ny8zRVg4MmMuOVFXMjlpIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRjUmtld2x3eVE0bGxERlZickxZUkJ1ZVAwR09wa0dMMS9aMElkNTcvM0VYODJjLjlRVzI5aSI7fQ==', 1651259294);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_shop_image.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Blessing Shop', 'New shop', 'pending', 'default_shop_image.png', '2021-08-02 15:36:54', '2021-08-02 15:36:54'),
(2, 3, 'Kadiki Investments', 'We sell tractors , all your farming machines', 'pending', 'default_shop_image.png', '2021-08-05 21:25:55', '2021-08-05 21:25:55'),
(3, 4, 'Adriano Movements', 'All home furniture available', 'pending', 'default_shop_image.png', '2021-08-05 21:34:15', '2021-08-05 21:34:15'),
(4, 1, 'My First Shop', 'New shop', 'pending', 'default_shop_image.png', '2021-08-05 23:27:30', '2021-08-05 23:27:30'),
(5, 5, 'Amato Shop', 'Amato for farming machinery', 'submitted_for_settlement', 'default_shop_image.png', '2021-08-12 20:54:52', '2021-08-12 21:11:40'),
(6, 8, 'tats', 'new shop', 'submitted_for_settlement', 'default_shop_image.png', '2022-01-14 02:50:49', '2022-01-14 02:51:27'),
(7, 11, 'Chiedza Botique', 'New clothes shop', 'submitted_for_settlement', 'default_shop_image.png', '2022-02-24 15:02:02', '2022-02-24 15:02:50'),
(8, 16, 'Test Shop', 'I want a shop for selling my vendor infomation', 'Active', 'Test Shop.png', '2022-04-29 11:00:12', '2022-04-29 11:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `shop_memberships`
--

CREATE TABLE `shop_memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `membership_id` bigint(20) UNSIGNED NOT NULL,
  `period` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_memberships`
--

INSERT INTO `shop_memberships` (`id`, `shop_id`, `membership_id`, `period`, `status`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'pending', 1, '2021-08-02 15:36:54', '2021-08-02 15:36:54'),
(2, 2, 2, 0, 'pending', 1, '2021-08-05 21:25:55', '2021-08-05 21:25:55'),
(3, 3, 3, 0, 'pending', 1, '2021-08-05 21:34:15', '2021-08-05 21:34:15'),
(4, 4, 1, 0, 'pending', 1, '2021-08-05 23:27:30', '2021-08-05 23:27:30'),
(5, 5, 2, 0, 'submitted_for_settlement', 8, '2021-08-12 20:54:52', '2021-08-12 21:11:40'),
(6, 6, 2, 0, 'submitted_for_settlement', 17, '2022-01-14 02:50:49', '2022-01-14 02:51:27'),
(7, 7, 2, 0, 'submitted_for_settlement', 18, '2022-02-24 15:02:03', '2022-02-24 15:02:50'),
(8, 8, 2, 0, 'pending', 1, '2022-04-29 11:00:12', '2022-04-29 11:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'XXL', '2021-08-02 18:42:49', '2021-08-02 18:42:49'),
(2, '1', '2021-08-02 18:42:53', '2021-08-02 18:42:53'),
(3, '2', '2021-08-02 18:42:56', '2021-08-02 18:42:56'),
(4, '5', '2021-08-02 18:43:01', '2021-08-02 18:43:01'),
(6, '6', '2021-08-02 18:43:16', '2021-08-02 18:43:16'),
(7, 'S', '2021-08-02 18:43:21', '2021-08-02 18:43:21'),
(8, 'M', '2021-08-02 18:43:25', '2021-08-02 18:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `image`, `desc`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Home Gardening', 1, 'images/9efd821794e351a76c1bd181472d1c05.jpeg', 'Home gardening farming', 'home-gardening', '2021-08-02 18:23:50', '2021-08-02 18:23:50'),
(2, 'Large Scale Farming', 1, 'images/83ad35a45593d1e0dfb461d2ba885110.jpeg', 'Farming at large scale', 'large-scale-farming', '2021-08-02 18:24:48', '2021-08-02 18:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `status_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `type`, `status`, `status_link`, `method`, `created_at`, `updated_at`) VALUES
(1, '100', 'Shopembership', 'sent', NULL, 'Ecocash', '2021-08-02 15:36:34', '2021-08-02 15:36:34'),
(2, '246.00', 'Payment Of Goods', 'Paid', 'cq81f42f', 'tokencc_bh_j6ssr8_rqcgj9_xb28vk_4n424y_jxy', '2021-08-12 19:51:05', '2021-08-12 19:51:05'),
(3, '246.00', 'Payment Of Goods', 'Paid', 'an8pgcsw', 'tokencc_bh_s9mnvv_68hbbf_n7gnr7_824p8c_xz6', '2021-08-12 19:53:09', '2021-08-12 19:53:09'),
(4, '246.00', 'Payment Of Goods', 'Paid', 'hpnnbbax', 'credit_card', '2021-08-12 19:57:01', '2021-08-12 19:57:01'),
(5, '246.00', 'Payment Of Goods', 'Paid', '70fg3phz', 'credit_card', '2021-08-12 19:57:50', '2021-08-12 19:57:50'),
(6, '62246.00', 'Payment Of Goods', 'submitted_for_settlement', 'ptmy3a8q', 'credit_card', '2021-08-12 20:17:22', '2021-08-12 20:17:22'),
(7, '12000.00', 'Payment Of Goods', 'submitted_for_settlement', '3zn1363t', 'credit_card', '2021-08-12 20:35:51', '2021-08-12 20:35:51'),
(8, '100', 'Payment Of Shop Subscription', 'submitted_for_settlement', 'ejg85c43', 'credit_card', '2021-08-12 21:11:40', '2021-08-12 21:11:40'),
(9, '12049.00', 'Payment Of Goods', 'submitted_for_settlement', 'r2fmkp81', 'credit_card', '2021-08-12 21:37:07', '2021-08-12 21:37:07'),
(10, '12049.00', 'Payment Of Goods', 'submitted_for_settlement', 'ckcnbcq1', 'credit_card', '2021-08-12 21:38:13', '2021-08-12 21:38:13'),
(11, '50.00', 'Payment Of Goods', 'submitted_for_settlement', '9v5gd9yg', 'credit_card', '2021-08-12 22:07:20', '2021-08-12 22:07:20'),
(12, '24098.00', 'Payment Of Goods', 'submitted_for_settlement', 'h47am859', 'credit_card', '2021-08-12 20:19:31', '2021-08-12 20:19:31'),
(13, '24000.00', 'Payment Of Goods', 'submitted_for_settlement', 'g5x8xd0s', 'credit_card', '2021-08-15 02:31:45', '2021-08-15 02:31:45'),
(14, '49.00', 'Payment Of Goods', 'submitted_for_settlement', '272tgdqp', 'credit_card', '2021-10-01 05:07:15', '2021-10-01 05:07:15'),
(15, '49.00', 'Payment Of Goods', 'submitted_for_settlement', '1smatsjh', 'credit_card', '2021-10-21 01:31:51', '2021-10-21 01:31:51'),
(16, '123.00', 'Payment Of Goods', 'submitted_for_settlement', 'g817nktd', 'credit_card', '2022-01-14 02:48:51', '2022-01-14 02:48:51'),
(17, '100', 'Payment Of Shop Subscription', 'submitted_for_settlement', 'n0zf05km', 'credit_card', '2022-01-14 02:51:26', '2022-01-14 02:51:26'),
(18, '100', 'Payment Of Shop Subscription', 'submitted_for_settlement', 'mcya5brd', 'credit_card', '2022-02-24 15:02:50', '2022-02-24 15:02:50'),
(19, '51137.00', 'Payment Of Goods', 'submitted_for_settlement', 'f11mrr4p', 'credit_card', '2022-02-24 17:39:04', '2022-02-24 17:39:04'),
(20, '12000.00', 'Payment Of Goods', 'submitted_for_settlement', '80n944me', 'credit_card', '2022-02-25 04:19:18', '2022-02-25 04:19:18');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Blessing mwale', 'blessing@gmail.com', NULL, '$2y$10$p6OPagojbxNfTUG3XScXjueQf.LB9FyeAJONgC/rn8JAJOfgNKlJi', NULL, NULL, NULL, NULL, NULL, '2021-07-30 08:21:14', '2021-07-30 08:21:14'),
(2, 'Tatenda Mwale', 'tatenda@gmail.com', NULL, '$2y$10$qLnan4VzYMbNpZlSxFnz1OIyF2wdcSRAkFO28ZOjzHm3YxQ9iag7O', NULL, NULL, NULL, NULL, NULL, '2021-07-31 21:03:13', '2021-07-31 21:03:13'),
(3, 'Tinashe Kadiki', 'prof.kadiki@gmail.com', NULL, '$2y$10$GsClz7xPp7fP34DFxmlr9O4gj.H3/4Rpx8qHQzwb6CqTVzeWTDBwy', NULL, NULL, NULL, NULL, NULL, '2021-08-05 21:17:57', '2021-08-05 21:17:57'),
(4, 'Adriano  J', 'adriano@gmail.com', NULL, '$2y$10$VHclw21RAqzqZ1oXDiU8w.AIYsmlHQFksG1eHTE9LuVK8/tJlzaeq', NULL, NULL, NULL, NULL, NULL, '2021-08-05 21:33:39', '2021-08-05 21:33:39'),
(5, 'James Sibanda', 'james@gmail.com', NULL, '$2y$10$CzoLkA6c5a9jcbYF4qLLYuFlBruDAdt9wwVx3mdyaz88BDJYkc8fq', NULL, NULL, NULL, NULL, NULL, '2021-08-12 20:38:05', '2021-08-12 20:38:05'),
(6, 'Paddington', 'paddingtonmbumbgwa18@gmail.com', NULL, '$2y$10$7E3uarFq3bKzcUgk/AstzOhXyKMNY9jn8f9xYIlWSw3Ar3PZ2rHp2', NULL, NULL, NULL, NULL, NULL, '2021-09-13 15:07:08', '2021-09-13 15:07:08'),
(7, 'Mqondisi Ndlovu', 'mqondisi@gmail.com', NULL, '$2y$10$fMzO7F540BzpunJfafPg/e8AgclUmxwq.UdLmN4c47hxtqIF.nv1e', NULL, NULL, NULL, NULL, NULL, '2021-10-01 05:04:31', '2021-10-01 05:04:31'),
(8, 'tinashe', 't@gmail.com', NULL, '$2y$10$MZsuSVS0mz9P6WCcZ.cKa.kPLbtvrnf/ajehcoIQQ7O36D1p7FVOq', NULL, NULL, NULL, NULL, NULL, '2022-01-14 02:45:22', '2022-01-14 02:45:22'),
(9, 'Delight', 'moyodelightd@gmail.com', NULL, '$2y$10$V7FYJjONOdAQLQCMD3CBgOJm88Toatq.qDjOtjfOlWucoKkdaR5cm', NULL, NULL, NULL, NULL, NULL, '2022-02-24 14:18:58', '2022-02-24 14:18:58'),
(10, 'Adriano', 'a.mutize.am@gmail.com', NULL, '$2y$10$qKpZAAvjXxEtXFDxd6UqRO/zaGuiAXnW.qPUVlnbqE.VUZH28c83y', NULL, NULL, NULL, NULL, NULL, '2022-02-24 14:59:44', '2022-02-24 14:59:44'),
(11, 'Chiedza Marume', 'chiedza@gmail.com', NULL, '$2y$10$zCh66SCokbvaE3roYRCMbuH4iaHdl0FB/6F3BXrgwmWTMDEu/3aJu', NULL, NULL, NULL, NULL, NULL, '2022-02-24 15:00:39', '2022-02-24 15:00:39'),
(12, 'Delight', 'delight@gmail.com', NULL, '$2y$10$EXEZccDR2QiCJoQyXR7.Ee5BZJviA94Mw89kxXV4o6HvckO0CX.26', NULL, NULL, NULL, NULL, NULL, '2022-02-24 16:18:19', '2022-02-24 16:18:19'),
(13, 'leonard', 'leonard@gmail.com', NULL, '$2y$10$Qxf/ok19nureQcJ/SPAX3ulf9/UfS5EO3rl6uLurPEkDejSiUkzSW', NULL, NULL, 'hi8GkYgb9SbnDFwWa7vuj7DI8cbLybhfw65CNeaz69I5oo907xRztRWM1qUQ', NULL, NULL, '2022-02-24 16:25:05', '2022-02-24 17:00:11'),
(14, 'Tinashe Dzemwa', 'tinashedzemwa300@gmail.com', NULL, '$2y$10$2vZLQ3KbeVbXy50RU/S8q.Z5zLN1ObiM1IOaXR4UUz.GOU06ELo3W', NULL, NULL, NULL, NULL, NULL, '2022-02-25 04:17:12', '2022-02-25 04:17:12'),
(15, 'tatenda', 'tat@gamil.com', NULL, '$2y$10$TuQdE7.ONqYv00LGAJV36u64rKCJ6.j/8zf8p/Sp.Fv0EUCeQO1Pu', NULL, NULL, NULL, NULL, NULL, '2022-03-08 02:18:06', '2022-03-08 02:18:06'),
(16, 'Test Telefarm', 'test@gmail.com', NULL, '$2y$10$cRkewlwyQ4llDFVbrLYRBueP0GOpkGL1/Z0Id57/3EX82c.9QW29i', NULL, NULL, 'NFlJIYfA7rUjIppN7jXOH0aQWApUYp4YeNV4n30ybrSR7GqzVCjXDKv10Q4K', NULL, NULL, '2022-04-22 00:09:37', '2022-04-22 00:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `city`, `street`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-08-10 20:19:33', '2021-08-10 20:19:33'),
(2, 1, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-08-12 19:12:37', '2021-08-12 19:12:37'),
(3, 1, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-08-12 20:16:54', '2021-08-12 20:16:54'),
(4, 1, 'PRESCOTT', '1003 ENRED WAY\n16uk', '12162557559', '2021-08-12 20:20:36', '2021-08-12 20:20:36'),
(5, 5, 'Juru', '2400 juru bhora', '0772440088', '2021-08-12 21:36:39', '2021-08-12 21:36:39'),
(6, 1, 'Harare', '120 St patricks hatfield', '+263772440088', '2021-08-12 22:06:01', '2021-08-12 22:06:01'),
(7, 3, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-08-12 20:07:57', '2021-08-12 20:07:57'),
(8, 3, 'Harare', '120 St patricks hatfield', '+263772440088', '2021-08-12 20:10:45', '2021-08-12 20:10:45'),
(9, 3, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-08-12 20:12:53', '2021-08-12 20:12:53'),
(10, 3, 'Please Select', '581 Juru Growth Point Goromonzi', '719920372', '2021-08-15 02:30:41', '2021-08-15 02:30:41'),
(11, 7, 'NEW ORLEANS', '05', '16192141848', '2021-10-01 05:06:00', '2021-10-01 05:06:00'),
(12, 7, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2021-10-21 01:29:23', '2021-10-21 01:29:23'),
(13, 8, 'Harare', 'Marlborough', '+263774249461', '2022-01-14 02:47:10', '2022-01-14 02:47:10'),
(14, 9, 'Harare', '72 Greengrove rd, Athlone, Greendale I.E.G PLAZA', '+263713261706', '2022-02-24 14:19:23', '2022-02-24 14:19:23'),
(15, 12, 'Harare', 'ds', '12345678', '2022-02-24 16:20:16', '2022-02-24 16:20:16'),
(16, 10, 'h', 'gasjajhajk', '783347616', '2022-02-24 17:36:13', '2022-02-24 17:36:13'),
(17, 14, 'Harare', 'Marlborough', '+263774249461', '2022-02-25 04:18:45', '2022-02-25 04:18:45'),
(18, 15, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2022-03-08 02:19:14', '2022-03-08 02:19:14'),
(19, 16, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2022-04-22 12:02:12', '2022-04-22 12:02:12'),
(20, 16, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2022-04-22 12:05:28', '2022-04-22 12:05:28'),
(21, 16, 'Harare', '7 wingate road rhodesvilledharare', '+263772440088', '2022-04-22 12:06:12', '2022-04-22 12:06:12'),
(22, 16, 'Harare', '7 wingate road rhodesvilled harare', '+263772440088', '2022-04-22 12:14:15', '2022-04-22 12:14:15'),
(23, 16, 'Harare', '7 wingate road rhodesvilled harare', '+263772440088', '2022-04-22 16:28:00', '2022-04-22 16:28:00'),
(24, 16, 'Harare', '7 wingate road rhodesvilled harare', '+263772440088', '2022-04-22 16:29:44', '2022-04-22 16:29:44'),
(25, 16, 'Juru', '2400 juru bhora', '0772440088', '2022-04-22 17:31:27', '2022-04-22 17:31:27'),
(26, 16, 'CHINA GROVE', '987 ROSE LN\n05', '17604439894', '2022-04-22 19:04:20', '2022-04-22 19:04:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_address_id_foreign` (`user_address_id`),
  ADD KEY `orders_transaction_id_foreign` (`transaction_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`),
  ADD KEY `sales_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `shop_memberships`
--
ALTER TABLE `shop_memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_memberships_shop_id_foreign` (`shop_id`),
  ADD KEY `shop_memberships_membership_id_foreign` (`membership_id`),
  ADD KEY `shop_memberships_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shop_memberships`
--
ALTER TABLE `shop_memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `orders_user_address_id_foreign` FOREIGN KEY (`user_address_id`) REFERENCES `user_addresses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sales_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_memberships`
--
ALTER TABLE `shop_memberships`
  ADD CONSTRAINT `shop_memberships_membership_id_foreign` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`),
  ADD CONSTRAINT `shop_memberships_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`),
  ADD CONSTRAINT `shop_memberships_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
