-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 12:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `prod_qty` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(111, '2', '2', '1', '2023-07-02 01:25:04', '2023-07-02 01:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` varchar(191) NOT NULL,
  `meta_keywords` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'SmartPhone', 'electronics', 'arqtyte fiyt ghjuyi78t9', 0, 1, '1682673273.png', 'sfgsy jipiuop;k aaertgb', 'xdfgsdg vbjhjg dgfsd gnhdf', 'zsrfgtjhg ujkiuiulogj zdsfa b xghftgh xcvn hg', '2023-04-28 03:14:33', '2023-04-28 03:14:33'),
(3, 'Earphone', 'earphone', 'asdfsafrg dasfgsfg ghdghfgh s dfg', 0, 1, '1685201370.png', 'dasfa asdfretyy ghioyolt eqr vgfg ghjhgkuizvx erhte ty', 'afdatre asdfasfda tsgyer dyertyhdfhg gfhsfgsd', 'adsdfasdf asdfaasdfasfasterwqttr dfghdjhfui   asfdasdfaf    dsfaafadfa   fhjdfhuyyt', '2023-05-27 09:29:30', '2023-05-27 11:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_01_065419_create_categories_table', 1),
(7, '2023_04_03_144830_create_products_table', 1),
(8, '2023_04_11_071757_create_carts_table', 1),
(9, '2023_04_23_084010_create_orders_table', 1),
(10, '2023_04_23_102816_create_order_items_table', 1),
(11, '2023_04_28_141640_create_wishlists_table', 2),
(12, '2023_05_05_051553_create_ratings_table', 3),
(14, '2023_05_07_064035_create_reviews_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `pincode` varchar(191) NOT NULL,
  `total_price` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) DEFAULT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '16000', 1, NULL, 'mahbubur2780', '2023-05-05 08:39:59', '2023-05-19 03:31:41'),
(2, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur2883', '2023-05-05 10:49:11', '2023-05-05 10:49:11'),
(3, '2', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur9407', '2023-05-08 11:30:08', '2023-05-08 11:30:08'),
(4, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur6687', '2023-05-20 13:47:42', '2023-05-20 13:47:42'),
(5, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur2773', '2023-05-20 13:53:49', '2023-05-20 13:53:49'),
(6, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur3019', '2023-05-20 14:01:56', '2023-05-20 14:01:56'),
(7, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur4802', '2023-05-20 14:42:30', '2023-05-20 14:42:30'),
(8, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '15000', 0, NULL, 'mahbubur2066', '2023-05-20 14:44:05', '2023-05-20 14:44:05'),
(9, '1', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '32000', 0, NULL, 'mahbubur5384', '2023-05-20 15:09:13', '2023-05-20 15:09:13'),
(10, '2', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '16000', 0, NULL, 'mahbubur8275', '2023-05-21 00:00:41', '2023-05-21 00:00:41'),
(11, '2', 'Mahbubur', 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', '31000', 0, NULL, 'mahbubur2301', '2023-06-30 11:32:04', '2023-06-30 11:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '1', '16000', '2023-05-05 08:39:59', '2023-05-05 08:39:59'),
(2, '2', '1', '1', '15000', '2023-05-05 10:49:11', '2023-05-05 10:49:11'),
(3, '3', '1', '1', '15000', '2023-05-08 11:30:08', '2023-05-08 11:30:08'),
(4, '4', '1', '1', '15000', '2023-05-20 13:47:42', '2023-05-20 13:47:42'),
(5, '5', '1', '1', '15000', '2023-05-20 13:53:49', '2023-05-20 13:53:49'),
(6, '6', '1', '1', '15000', '2023-05-20 14:01:56', '2023-05-20 14:01:56'),
(7, '7', '1', '1', '15000', '2023-05-20 14:42:30', '2023-05-20 14:42:30'),
(8, '8', '1', '1', '15000', '2023-05-20 14:44:05', '2023-05-20 14:44:05'),
(9, '9', '2', '3', '16000', '2023-05-20 15:09:13', '2023-05-20 15:09:13'),
(10, '9', '3', '2', '16000', '2023-05-20 15:09:13', '2023-05-20 15:09:13'),
(11, '10', '2', '4', '16000', '2023-05-21 00:00:41', '2023-05-21 00:00:41'),
(12, '11', '1', '3', '15000', '2023-06-30 11:32:04', '2023-06-30 11:32:04'),
(13, '11', '2', '4', '16000', '2023-06-30 11:32:04', '2023-06-30 11:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `original_price` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'redmi 7 pro', 'electronics', 'asdf amar sonar bangla ami tomai valobashi', 'very nice Outlook asdfatn rtywrufd', '16000', '15000', '1682673392.png', '1', '34', 0, 1, 'aatreyu muy uyettye', 'safasm eteye dfsrt', '\"\"\"aqwerw dtruyry afsafge fxzsdtr', '2023-04-28 03:16:32', '2023-06-30 11:32:04'),
(2, 1, 'redmi11', 'electro', 'asdf mrey', 'dfsrt jur7uy', '18000', '16000', '1685210062.png', '1', '34', 0, 1, 'sy ryt', 'sgfry df', '\"\"\"\"\"syt hgf uyirtuy88', '2023-04-28 03:25:50', '2023-06-30 11:32:04'),
(6, 3, 'es5', 'earphone1', 'afdadfdsafd  asdfadf', 'asdfafd dfasfas asdfda', '1800', '454', '1685201629.png', '12', '23', 0, 1, 'asdadf asdfadfa fgytyf sdfgs', 'sfdgs sgtyhrty asdfa dfgsd', '\"sdtret nfghytyh jhktyu earera', '2023-05-27 09:33:49', '2023-05-27 11:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `stars_rated` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '3', '2023-05-05 04:19:07', '2023-05-08 11:46:34'),
(2, '2', '2', '4', '2023-05-05 04:20:06', '2023-05-05 08:12:57'),
(3, '2', '2', '4', '2022-08-04 15:47:59', '2022-08-03 15:47:59'),
(4, '1', '3', '4', '2023-05-05 08:40:19', '2023-05-05 10:44:40'),
(5, '1', '1', '4', '2023-05-05 10:49:27', '2023-05-05 10:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `user_review` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'This product was good and delivery was on time .This product was good and delivery was on time .This product was good and delivery was on time .This product was good and delivery was on time .This product was good and delivery was on time .I think that is very good service for all types of..', '2023-05-07 07:56:37', '2023-05-08 11:14:53'),
(2, '1', '3', 'This product is very nice.This sound is so smooth that is very enjoyable.', '2023-05-08 11:16:27', '2023-05-08 11:16:27'),
(3, '2', '1', 'This product is very good.it is so precious and luxerious .its quality is also very impresive.', '2023-05-08 11:31:43', '2023-05-08 11:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `lname` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `pincode` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahbubur', 'mahbuburcse191@gmail.com', NULL, '$2y$10$VGCyrHR4kc8fB/oLelQKeOqE6DlH3ZGwT1Rp9DewQJRFVGQEBvrX2', 1, 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', NULL, '2023-04-28 03:11:36', '2023-04-28 04:36:25'),
(2, 'Mahbubur', 'mahbuburrh5@gmail.com', NULL, '$2y$10$AFbpx6b1Ij0n7lKBvTQxXODV2D3Z31KJ.5s9T8cyvfz.CCDI8eRfu', 0, 'Rahman', '01609558069', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'vill:Alampur,post :kazipur,district :Sirajgonj', 'dhaka', 'Bangladesh', 'Bangladesh', '6310', NULL, '2023-04-28 03:17:13', '2023-04-28 03:20:55'),
(3, 'Mahbubur Rahman', 'u@gmail.com', NULL, '$2y$10$ma6rmmnvlGt0hUNp/3IaluW3OONDGi8.OPQLiXlJ75Ff5zNtjePfO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 01:36:16', '2023-07-02 01:36:16'),
(4, 'Rakib', 'noyon@gmail.com', NULL, '$2y$10$z4pXbJ.T.U.7LPZYTSIgGuFgwKJK6G0Oh4X3oCdqgf7rIdkiWfoEO', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 01:37:08', '2023-07-02 01:37:08'),
(5, 'Rony', 'user2@gmail.com', NULL, '$2y$10$kcRk6y2qDbr6CD1NoaIQKuPxW/a0NLvz9WmATJKGv/Rggg.YZuy7q', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 01:38:12', '2023-07-02 01:38:12'),
(6, 'Habib', 'habib@gmail.com', NULL, '$2y$10$inN6j9BRq4cCvSGKIhEid.uzXnuz0qSdKL9OoQKx47Mu5racCJw/y', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 01:50:27', '2023-07-02 01:50:27'),
(7, 'Raju', 'raju@gmail.com', NULL, '$2y$10$Pd7NPtvsU.fvF6/NnDxQt.ikEg9KFOc1i5OW0PTZQnxc2w4sqIDIa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 11:15:41', '2023-07-02 11:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(6, '1', '2', '2023-04-28 10:35:17', '2023-04-28 10:35:17'),
(7, '1', '1', '2023-04-28 10:35:55', '2023-04-28 10:35:55');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
