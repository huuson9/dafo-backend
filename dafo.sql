-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 05:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dafo`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_cart`
--

CREATE TABLE `app_cart` (
  `id` bigint(20) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL CHECK (`count` >= 0),
  `time` datetime(6) NOT NULL,
  `price` double NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_category`
--

CREATE TABLE `app_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_category`
--

INSERT INTO `app_category` (`id`, `name`) VALUES
(1, 'headphones'),
(2, 'shoes'),
(3, 'hat'),
(4, 'sock');

-- --------------------------------------------------------

--
-- Table structure for table `app_deliveryinfo`
--

CREATE TABLE `app_deliveryinfo` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_order`
--

CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `ship_fee` double NOT NULL,
  `time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_orderdetail`
--

CREATE TABLE `app_orderdetail` (
  `id` bigint(20) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL CHECK (`count` >= 0),
  `price` double NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `average_rating` double NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_product`
--

INSERT INTO `app_product` (`id`, `name`, `content`, `average_rating`, `price`, `category_id`, `supplier_id`) VALUES
(7, 'Earphones 1', 'New product', 9, 50, 1, 1),
(8, 'Earphones 2', 'New product', 9, 50, 1, 1),
(9, 'Earphones 3', 'New product', 9, 50, 1, 1),
(10, 'Earphones 4', 'New product', 9, 50, 1, 1),
(11, 'Earphones 5', 'New product', 9, 50, 1, 1),
(12, 'Earphones 6', 'New product', 9, 50, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_productimage`
--

CREATE TABLE `app_productimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` varchar(255) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_purchase`
--

CREATE TABLE `app_purchase` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL CHECK (`status` >= 0),
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_review`
--

CREATE TABLE `app_review` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `rating` smallint(5) UNSIGNED NOT NULL CHECK (`rating` >= 0),
  `time` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_supplier`
--

CREATE TABLE `app_supplier` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_supplier`
--

INSERT INTO `app_supplier` (`id`, `name`) VALUES
(1, 'A company');

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` smallint(5) UNSIGNED NOT NULL CHECK (`gender` >= 0),
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `password`, `last_login`, `is_superuser`, `email`, `username`, `date_of_birth`, `phone`, `gender`, `is_active`, `is_staff`) VALUES
(1, 'pbkdf2_sha256$600000$fpE0XfBOSMf3xhZBrlwmaA$O3clukhgX02OZfENa6ceRkJZcNt611IhCFs8LKrvBR8=', NULL, 0, 'colorme.job@gmail.com', NULL, NULL, '', 0, 1, 0),
(2, 'pbkdf2_sha256$600000$zZUTRYKkg3YiBj6n1xnN68$odO9qxq2tdKeE0lE4Q/Jhs/MaOA7ywVrtWLL7ltIazo=', NULL, 0, 'huuson99812002@gmail.com', NULL, NULL, '', 0, 1, 0),
(3, 'pbkdf2_sha256$600000$3VSN91hFwC7ze8GVZvSlqP$1lSPh12ln3SkE8PmuJ3zk1SZ7VFDCz+rqMQkaFvsUM0=', NULL, 0, 'sonth@batgroup.vn', NULL, NULL, '', 0, 1, 0),
(4, 'pbkdf2_sha256$600000$IQG2tETqgpPA0HBxwjBTG7$ibh6NSIWpih/He0eFd22mp9Q7hhUv/VCzKgGza3aOgg=', NULL, 0, 'admin@example.com', NULL, NULL, '', 0, 1, 0),
(5, 'pbkdf2_sha256$600000$r10BgoiYxwskzm6q6TWZlv$ZiVz82SGIDKyJEnKGGAVvDLezpudsrOKAKbf/49j4Bw=', NULL, 0, 'Thong.pm772002@gmail.com', NULL, NULL, '', 0, 1, 0),
(6, 'pbkdf2_sha256$600000$46bAsRPgTqjMFvHdmE2vEy$bgIQcj6tlqgsEa1ZAS9DPieguhTxtmdIQ87Z4XPmmCs=', NULL, 0, 'huuson998120022@gmail.com', NULL, NULL, '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_user_groups`
--

CREATE TABLE `app_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_user_permissions`
--

CREATE TABLE `app_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_voucher`
--

CREATE TABLE `app_voucher` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discountPercent` double NOT NULL,
  `maxDiscount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add supplier', 10, 'add_supplier'),
(38, 'Can change supplier', 10, 'change_supplier'),
(39, 'Can delete supplier', 10, 'delete_supplier'),
(40, 'Can view supplier', 10, 'view_supplier'),
(41, 'Can add voucher', 11, 'add_voucher'),
(42, 'Can change voucher', 11, 'change_voucher'),
(43, 'Can delete voucher', 11, 'delete_voucher'),
(44, 'Can view voucher', 11, 'view_voucher'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add review', 13, 'add_review'),
(50, 'Can change review', 13, 'change_review'),
(51, 'Can delete review', 13, 'delete_review'),
(52, 'Can view review', 13, 'view_review'),
(53, 'Can add purchase', 14, 'add_purchase'),
(54, 'Can change purchase', 14, 'change_purchase'),
(55, 'Can delete purchase', 14, 'delete_purchase'),
(56, 'Can view purchase', 14, 'view_purchase'),
(57, 'Can add product image', 15, 'add_productimage'),
(58, 'Can change product image', 15, 'change_productimage'),
(59, 'Can delete product image', 15, 'delete_productimage'),
(60, 'Can view product image', 15, 'view_productimage'),
(61, 'Can add order detail', 16, 'add_orderdetail'),
(62, 'Can change order detail', 16, 'change_orderdetail'),
(63, 'Can delete order detail', 16, 'delete_orderdetail'),
(64, 'Can view order detail', 16, 'view_orderdetail'),
(65, 'Can add delivery info', 17, 'add_deliveryinfo'),
(66, 'Can change delivery info', 17, 'change_deliveryinfo'),
(67, 'Can delete delivery info', 17, 'delete_deliveryinfo'),
(68, 'Can view delivery info', 17, 'view_deliveryinfo'),
(69, 'Can add cart', 18, 'add_cart'),
(70, 'Can change cart', 18, 'change_cart'),
(71, 'Can delete cart', 18, 'delete_cart'),
(72, 'Can view cart', 18, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$NZJYP4L6Oyrw6RbwKlfTnb$fBf2sa/iehr7vn+AGlo5omTXcxl00nVohncx4WDVVkQ=', '2023-12-19 17:08:21.084595', 1, 'huuson', '', '', 'huusson@gmail.com', 1, 1, '2023-12-19 17:08:13.197024');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(18, 'app', 'cart'),
(7, 'app', 'category'),
(17, 'app', 'deliveryinfo'),
(8, 'app', 'order'),
(16, 'app', 'orderdetail'),
(9, 'app', 'product'),
(15, 'app', 'productimage'),
(14, 'app', 'purchase'),
(13, 'app', 'review'),
(10, 'app', 'supplier'),
(12, 'app', 'user'),
(11, 'app', 'voucher'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-19 17:07:05.012572'),
(2, 'auth', '0001_initial', '2023-12-19 17:07:05.643436'),
(3, 'admin', '0001_initial', '2023-12-19 17:07:05.770631'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-19 17:07:05.780361'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-19 17:07:05.789444'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-19 17:07:05.858015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-19 17:07:05.914602'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-19 17:07:05.934186'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-19 17:07:05.943482'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-19 17:07:05.995634'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-19 17:07:05.999126'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-19 17:07:06.011562'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-19 17:07:06.026215'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-19 17:07:06.040264'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-19 17:07:06.054941'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-19 17:07:06.065432'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-19 17:07:06.079307'),
(18, 'app', '0001_initial', '2023-12-19 17:07:07.398272'),
(19, 'sessions', '0001_initial', '2023-12-19 17:07:07.436210'),
(20, 'app', '0002_alter_productimage_product', '2023-12-20 03:25:55.878070');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0qy72xcbfated2tarspcc17ly1hwaufg', '.eJxVjDsOwjAQBe_iGlk2_oaSPmew1rtrHEC2lE-FuDtESgHtm5n3Egm2taZt4TlNJC5Ci9PvlgEf3HZAd2i3LrG3dZ6y3BV50EWOnfh5Pdy_gwpL_dYRszNuCNFlC2UYInuPXjH5UkA5T0ik7BmBjc7KmRCs8g7QGtJMRYv3B-xHODU:1rFdZt:0fSorhT1QVmghpb9AKiwA_3lFxW6tR2TOeSJF-3GH7I', '2024-01-02 17:08:21.088299');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_cart_product_id_a4171918_fk_app_product_id` (`product_id`),
  ADD KEY `app_cart_user_id_2bf07879_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_deliveryinfo_order_id_8f332aa7_fk_app_order_id` (`order_id`);

--
-- Indexes for table `app_order`
--
ALTER TABLE `app_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_order_user_id_f25a9fc4_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_orderdetail_order_id_04d70173_fk_app_order_id` (`order_id`),
  ADD KEY `app_orderdetail_product_id_f68d1331_fk_app_product_id` (`product_id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_product_supplier_id_d98de20e_fk_app_supplier_id` (`supplier_id`),
  ADD KEY `app_product_category_id_023742a5_fk_app_category_id` (`category_id`);

--
-- Indexes for table `app_productimage`
--
ALTER TABLE `app_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_productimage_product_id_53d99c25_fk_app_product_id` (`product_id`);

--
-- Indexes for table `app_purchase`
--
ALTER TABLE `app_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_purchase_user_id_3978aa99_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_review`
--
ALTER TABLE `app_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_review_product_id_30b78593_fk_app_product_id` (`product_id`),
  ADD KEY `app_review_user_id_54c922e0_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_supplier`
--
ALTER TABLE `app_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_groups_user_id_group_id_73b8e940_uniq` (`user_id`,`group_id`),
  ADD KEY `app_user_groups_group_id_e774d92c_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_user_permissions_user_id_permission_id_7c8316ce_uniq` (`user_id`,`permission_id`),
  ADD KEY `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `app_voucher`
--
ALTER TABLE `app_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_cart`
--
ALTER TABLE `app_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_order`
--
ALTER TABLE `app_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app_productimage`
--
ALTER TABLE `app_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_purchase`
--
ALTER TABLE `app_purchase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_review`
--
ALTER TABLE `app_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_supplier`
--
ALTER TABLE `app_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_voucher`
--
ALTER TABLE `app_voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD CONSTRAINT `app_cart_product_id_a4171918_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_cart_user_id_2bf07879_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  ADD CONSTRAINT `app_deliveryinfo_order_id_8f332aa7_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`);

--
-- Constraints for table `app_order`
--
ALTER TABLE `app_order`
  ADD CONSTRAINT `app_order_user_id_f25a9fc4_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  ADD CONSTRAINT `app_orderdetail_order_id_04d70173_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`),
  ADD CONSTRAINT `app_orderdetail_product_id_f68d1331_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_product`
--
ALTER TABLE `app_product`
  ADD CONSTRAINT `app_product_category_id_023742a5_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  ADD CONSTRAINT `app_product_supplier_id_d98de20e_fk_app_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `app_supplier` (`id`);

--
-- Constraints for table `app_productimage`
--
ALTER TABLE `app_productimage`
  ADD CONSTRAINT `app_productimage_product_id_53d99c25_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_purchase`
--
ALTER TABLE `app_purchase`
  ADD CONSTRAINT `app_purchase_user_id_3978aa99_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_review`
--
ALTER TABLE `app_review`
  ADD CONSTRAINT `app_review_product_id_30b78593_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_review_user_id_54c922e0_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD CONSTRAINT `app_user_groups_group_id_e774d92c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `app_user_groups_user_id_e6f878f6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD CONSTRAINT `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `app_user_user_permissions_user_id_24780b52_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
