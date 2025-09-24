-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2025 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `phone`) VALUES
(1, 'pbkdf2_sha256$390000$zl3ggtItdsiPhw4EkHvUeZ$AOGHF5I80x+sTzavhuNBkcMdYHkGYcfPkrLppezf480=', '2025-09-24 09:03:35.628832', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2025-09-22 18:03:30.086831', ''),
(2, 'pbkdf2_sha256$390000$hvI4b6XVH1KShjf57DKHMZ$dv+F58Cn/HgxGXX64fG1YVNfsfidLo8XUoMd6VygwJA=', '2025-09-22 18:32:36.957222', 0, 'sabbir12345', 'Sabbir', 'Hasan', 'sabbir@gmail.com', 0, 1, '2025-09-22 18:32:36.525874', '01770801483'),
(3, 'pbkdf2_sha256$390000$qjufqVVnTKIZydROrZGbFP$wLdzN1O/8FfHs0OatpBqSfXIPvaGGWpexoPV0WT/LGI=', '2025-09-24 09:02:55.181276', 0, 'Own_panel', 'Rizwanul', 'Rudro', 'rizwanulrudro123@gmail.com', 0, 1, '2025-09-22 18:33:38.499654', '01770801489'),
(4, 'pbkdf2_sha256$390000$UtIfFUy9dQg7P96NrVZ3As$LjRvPomViAv3ddbG8LMzwaqJ6cDYw1i+uJWH0WJ9Lrg=', NULL, 1, 'root', '', '', '', 1, 1, '2025-09-22 20:16:52.159175', ''),
(5, 'pbkdf2_sha256$390000$DJnwYOHNVM5po4fD5PRIPq$DvptSLEm1MrMqF/LA2e1je4pLUaRKPDGIFtmjVFSdfc=', NULL, 1, 'user', '', '', '', 1, 1, '2025-09-23 15:52:37.833694', '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add destination', 7, 'add_destination'),
(26, 'Can change destination', 7, 'change_destination'),
(27, 'Can delete destination', 7, 'delete_destination'),
(28, 'Can view destination', 7, 'view_destination'),
(29, 'Can add package', 8, 'add_package'),
(30, 'Can change package', 8, 'change_package'),
(31, 'Can delete package', 8, 'delete_package'),
(32, 'Can view package', 8, 'view_package'),
(33, 'Can add hotel', 9, 'add_hotel'),
(34, 'Can change hotel', 9, 'change_hotel'),
(35, 'Can delete hotel', 9, 'delete_hotel'),
(36, 'Can view hotel', 9, 'view_hotel'),
(37, 'Can add room', 10, 'add_room'),
(38, 'Can change room', 10, 'change_room'),
(39, 'Can delete room', 10, 'delete_room'),
(40, 'Can view room', 10, 'view_room'),
(41, 'Can add vendor', 11, 'add_vendor'),
(42, 'Can change vendor', 11, 'change_vendor'),
(43, 'Can delete vendor', 11, 'delete_vendor'),
(44, 'Can view vendor', 11, 'view_vendor'),
(45, 'Can add vehicle', 12, 'add_vehicle'),
(46, 'Can change vehicle', 12, 'change_vehicle'),
(47, 'Can delete vehicle', 12, 'delete_vehicle'),
(48, 'Can view vehicle', 12, 'view_vehicle'),
(49, 'Can add bus trip', 13, 'add_bustrip'),
(50, 'Can change bus trip', 13, 'change_bustrip'),
(51, 'Can delete bus trip', 13, 'delete_bustrip'),
(52, 'Can view bus trip', 13, 'view_bustrip'),
(53, 'Can add booking', 14, 'add_booking'),
(54, 'Can change booking', 14, 'change_booking'),
(55, 'Can delete booking', 14, 'delete_booking'),
(56, 'Can view booking', 14, 'view_booking'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `bookings_booking`
--

CREATE TABLE `bookings_booking` (
  `id` bigint(20) NOT NULL,
  `booking_type` varchar(10) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `extra_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_info`)),
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `package_id` bigint(20) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `trip_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_booking`
--

INSERT INTO `bookings_booking` (`id`, `booking_type`, `quantity`, `extra_info`, `total_price`, `status`, `created_at`, `updated_at`, `package_id`, `room_id`, `trip_id`, `user_id`) VALUES
(1, 'HOTEL', 1, '{\"traveler\": {\"full_name\": \"Rizwanul Kafi\", \"email\": \"rizwanulkafi2003@gmail.com\", \"phone\": \"01710265574\", \"notes\": \"\"}, \"seats\": []}', 49.00, 'CONFIRMED', '2025-09-22 18:42:22.064812', '2025-09-22 18:42:22.064812', NULL, 1, NULL, 3),
(2, 'PACKAGE', 1, '{\"traveler\": {\"full_name\": \"Rizwanul Kafi\", \"email\": \"rizwanulkafi2003@gmail.com\", \"phone\": \"01710265574\", \"notes\": \"\"}, \"seats\": []}', 168.24, 'CONFIRMED', '2025-09-22 19:01:23.757405', '2025-09-22 19:01:23.757405', 200, NULL, NULL, 3),
(3, 'PACKAGE', 1, '{\"traveler\": {\"full_name\": \"Lubaba\", \"email\": \"lu@gmail.com\", \"phone\": \"01710254475\", \"notes\": \"It\'s our Honeymoon Trip ,Make it like our dream\"}, \"seats\": []}', 149.99, 'CONFIRMED', '2025-09-23 16:02:28.170403', '2025-09-23 16:02:28.170403', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `destinations_destination`
--

CREATE TABLE `destinations_destination` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `country` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations_destination`
--

INSERT INTO `destinations_destination` (`id`, `name`, `slug`, `country`, `description`, `image`) VALUES
(1, 'Cox\'s Bazar', 'coxs-bazar', 'Bangladesh', 'Explore Cox\'s Bazar with curated tours across Bangladesh.', ''),
(2, 'Sylhet', 'sylhet', 'Bangladesh', 'Explore Sylhet with curated tours across Bangladesh.', ''),
(3, 'Bandarban', 'bandarban', 'Bangladesh', 'Explore Bandarban with curated tours across Bangladesh.', ''),
(4, 'Saint Martin', 'saint-martin', 'Bangladesh', 'Explore Saint Martin with curated tours across Bangladesh.', ''),
(5, 'Dhaka', 'dhaka', 'Bangladesh', 'Explore Dhaka with curated tours across Bangladesh.', ''),
(6, 'Chittagong', 'chittagong', 'Bangladesh', 'Explore Chittagong with curated tours across Bangladesh.', ''),
(7, 'Khulna', 'khulna', 'Bangladesh', 'Explore Khulna with curated tours across Bangladesh.', ''),
(8, 'Rajshahi', 'rajshahi', 'Bangladesh', 'Explore Rajshahi with curated tours across Bangladesh.', ''),
(9, 'Rangamati', 'rangamati', 'Bangladesh', 'Explore Rangamati with curated tours across Bangladesh.', ''),
(10, 'Kuakata', 'kuakata', 'Bangladesh', 'Explore Kuakata with curated tours across Bangladesh.', ''),
(11, 'BD Spot 1', 'bd-spot-1', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(12, 'BD Spot 2', 'bd-spot-2', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(13, 'BD Spot 3', 'bd-spot-3', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(14, 'BD Spot 4', 'bd-spot-4', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(15, 'BD Spot 5', 'bd-spot-5', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(16, 'BD Spot 6', 'bd-spot-6', 'Bangladesh', 'Auto generated spot in Sylhet.', ''),
(17, 'BD Spot 7', 'bd-spot-7', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(18, 'BD Spot 8', 'bd-spot-8', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(19, 'BD Spot 9', 'bd-spot-9', 'Bangladesh', 'Auto generated spot in Rangpur.', ''),
(20, 'BD Spot 10', 'bd-spot-10', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(21, 'BD Spot 11', 'bd-spot-11', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(22, 'BD Spot 12', 'bd-spot-12', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(23, 'BD Spot 13', 'bd-spot-13', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(24, 'BD Spot 14', 'bd-spot-14', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(25, 'BD Spot 15', 'bd-spot-15', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(26, 'BD Spot 16', 'bd-spot-16', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(27, 'BD Spot 17', 'bd-spot-17', 'Bangladesh', 'Auto generated spot in Rangpur.', ''),
(28, 'BD Spot 18', 'bd-spot-18', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(29, 'BD Spot 19', 'bd-spot-19', 'Bangladesh', 'Auto generated spot in Mymensingh.', ''),
(30, 'BD Spot 20', 'bd-spot-20', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(31, 'BD Spot 21', 'bd-spot-21', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(32, 'BD Spot 22', 'bd-spot-22', 'Bangladesh', 'Auto generated spot in Sylhet.', ''),
(33, 'BD Spot 23', 'bd-spot-23', 'Bangladesh', 'Auto generated spot in Rangpur.', ''),
(34, 'BD Spot 24', 'bd-spot-24', 'Bangladesh', 'Auto generated spot in Barishal.', ''),
(35, 'BD Spot 25', 'bd-spot-25', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(36, 'BD Spot 26', 'bd-spot-26', 'Bangladesh', 'Auto generated spot in Sylhet.', ''),
(37, 'BD Spot 27', 'bd-spot-27', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(38, 'BD Spot 28', 'bd-spot-28', 'Bangladesh', 'Auto generated spot in Barishal.', ''),
(39, 'BD Spot 29', 'bd-spot-29', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(40, 'BD Spot 30', 'bd-spot-30', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(41, 'BD Spot 31', 'bd-spot-31', 'Bangladesh', 'Auto generated spot in Rangpur.', ''),
(42, 'BD Spot 32', 'bd-spot-32', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(43, 'BD Spot 33', 'bd-spot-33', 'Bangladesh', 'Auto generated spot in Barishal.', ''),
(44, 'BD Spot 34', 'bd-spot-34', 'Bangladesh', 'Auto generated spot in Barishal.', ''),
(45, 'BD Spot 35', 'bd-spot-35', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(46, 'BD Spot 36', 'bd-spot-36', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(47, 'BD Spot 37', 'bd-spot-37', 'Bangladesh', 'Auto generated spot in Mymensingh.', ''),
(48, 'BD Spot 38', 'bd-spot-38', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(49, 'BD Spot 39', 'bd-spot-39', 'Bangladesh', 'Auto generated spot in Rangpur.', ''),
(50, 'BD Spot 40', 'bd-spot-40', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(51, 'BD Spot 41', 'bd-spot-41', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(52, 'BD Spot 42', 'bd-spot-42', 'Bangladesh', 'Auto generated spot in Barishal.', ''),
(53, 'BD Spot 43', 'bd-spot-43', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(54, 'BD Spot 44', 'bd-spot-44', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(55, 'BD Spot 45', 'bd-spot-45', 'Bangladesh', 'Auto generated spot in Dhaka.', ''),
(56, 'BD Spot 46', 'bd-spot-46', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(57, 'BD Spot 47', 'bd-spot-47', 'Bangladesh', 'Auto generated spot in Khulna.', ''),
(58, 'BD Spot 48', 'bd-spot-48', 'Bangladesh', 'Auto generated spot in Chattogram.', ''),
(59, 'BD Spot 49', 'bd-spot-49', 'Bangladesh', 'Auto generated spot in Rajshahi.', ''),
(60, 'BD Spot 50', 'bd-spot-50', 'Bangladesh', 'Auto generated spot in Chattogram.', '');

-- --------------------------------------------------------

--
-- Table structure for table `destinations_package`
--

CREATE TABLE `destinations_package` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration_days` int(10) UNSIGNED NOT NULL CHECK (`duration_days` >= 0),
  `itinerary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`itinerary`)),
  `includes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`includes`)),
  `excludes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`excludes`)),
  `image` varchar(100) DEFAULT NULL,
  `destination_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations_package`
--

INSERT INTO `destinations_package` (`id`, `title`, `slug`, `price`, `duration_days`, `itinerary`, `includes`, `excludes`, `image`, `destination_id`) VALUES
(1, 'Cox\'s Bazar Beach Escape 3D2N', 'coxs-bazar-beach-escape-3d2n', 149.99, 3, '[\"Arrival & Beach walk\", \"Inani Beach & Himchori\", \"Shopping & Departure\"]', '[\"Hotel\", \"Breakfast\", \"Airport transfer\"]', '[\"Personal expenses\"]', 'packages/coxs-bazar-beach-escape-3d2n.svg', 1),
(2, 'Sylhet Tea Garden Retreat 3D2N', 'sylhet-tea-garden-retreat-3d2n', 139.99, 3, '[\"Ratargul Swamp Forest\", \"Tea Gardens\", \"Jaflong\"]', '[\"Hotel\", \"Breakfast\", \"Local transport\"]', '[\"Personal expenses\"]', 'packages/sylhet-tea-garden-retreat-3d2n.svg', 2),
(3, 'Bandarban Hill Adventure 4D3N', 'bandarban-hill-adventure-4d3n', 199.99, 4, '[\"Nilgiri\", \"Nafakhum Trail\", \"Shoilo Propat\"]', '[\"Hotel\", \"Guide\", \"Breakfast\"]', '[\"Personal expenses\"]', 'packages/bandarban-hill-adventure-4d3n.svg', 3),
(4, 'Saint Martin Island Getaway 3D2N', 'saint-martin-island-getaway-3d2n', 189.99, 3, '[\"Sea Beach\", \"Snorkeling\", \"Coral watching\"]', '[\"Hotel\", \"Breakfast\", \"Boat transfer\"]', '[\"Personal expenses\"]', 'packages/saint-martin-island-getaway-3d2n.svg', 4),
(5, 'Kuakata Sea Sunrise 2D1N', 'kuakata-sea-sunrise-2d1n', 119.99, 2, '[\"Sea Beach\", \"Sunrise & Sunset point\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', 'packages/kuakata-sea-sunrise-2d1n.svg', 10),
(6, 'BD Spot 15 Tour 1', 'bd-spot-15-tour-1-1', 118.49, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 25),
(7, 'BD Spot 44 Tour 2', 'bd-spot-44-tour-2-2', 140.21, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 54),
(8, 'BD Spot 13 Tour 3', 'bd-spot-13-tour-3-3', 101.38, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 23),
(9, 'BD Spot 35 Tour 4', 'bd-spot-35-tour-4-4', 283.16, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 45),
(10, 'Dhaka Tour 5', 'dhaka-tour-5-5', 201.28, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 5),
(11, 'BD Spot 25 Tour 6', 'bd-spot-25-tour-6-6', 231.28, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 35),
(12, 'BD Spot 20 Tour 7', 'bd-spot-20-tour-7-7', 143.86, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 30),
(13, 'BD Spot 35 Tour 8', 'bd-spot-35-tour-8-8', 188.24, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 45),
(14, 'BD Spot 11 Tour 9', 'bd-spot-11-tour-9-9', 259.71, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 21),
(15, 'BD Spot 5 Tour 10', 'bd-spot-5-tour-10-10', 254.45, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 15),
(16, 'BD Spot 16 Tour 11', 'bd-spot-16-tour-11-11', 115.94, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 26),
(17, 'BD Spot 49 Tour 12', 'bd-spot-49-tour-12-12', 284.73, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 59),
(18, 'BD Spot 11 Tour 13', 'bd-spot-11-tour-13-13', 102.16, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 21),
(19, 'BD Spot 16 Tour 14', 'bd-spot-16-tour-14-14', 270.17, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 26),
(20, 'BD Spot 20 Tour 15', 'bd-spot-20-tour-15-15', 84.72, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 30),
(21, 'BD Spot 6 Tour 16', 'bd-spot-6-tour-16-16', 235.25, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(22, 'BD Spot 7 Tour 17', 'bd-spot-7-tour-17-17', 235.75, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 17),
(23, 'BD Spot 48 Tour 18', 'bd-spot-48-tour-18-18', 194.88, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(24, 'BD Spot 5 Tour 19', 'bd-spot-5-tour-19-19', 298.33, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 15),
(25, 'BD Spot 23 Tour 20', 'bd-spot-23-tour-20-20', 172.38, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(26, 'BD Spot 46 Tour 21', 'bd-spot-46-tour-21-21', 76.41, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 56),
(27, 'BD Spot 1 Tour 22', 'bd-spot-1-tour-22-22', 247.02, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 11),
(28, 'BD Spot 29 Tour 23', 'bd-spot-29-tour-23-23', 64.88, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 39),
(29, 'BD Spot 29 Tour 24', 'bd-spot-29-tour-24-24', 298.03, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 39),
(30, 'BD Spot 7 Tour 25', 'bd-spot-7-tour-25-25', 291.77, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 17),
(31, 'BD Spot 34 Tour 26', 'bd-spot-34-tour-26-26', 229.18, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 44),
(32, 'BD Spot 47 Tour 27', 'bd-spot-47-tour-27-27', 183.24, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(33, 'BD Spot 40 Tour 28', 'bd-spot-40-tour-28-28', 209.24, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 50),
(34, 'BD Spot 9 Tour 29', 'bd-spot-9-tour-29-29', 157.69, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 19),
(35, 'Cox\'s Bazar Tour 30', 'coxs-bazar-tour-30-30', 287.45, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 1),
(36, 'BD Spot 7 Tour 31', 'bd-spot-7-tour-31-31', 291.97, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 17),
(37, 'BD Spot 23 Tour 32', 'bd-spot-23-tour-32-32', 277.16, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(38, 'BD Spot 10 Tour 33', 'bd-spot-10-tour-33-33', 259.42, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 20),
(39, 'BD Spot 29 Tour 34', 'bd-spot-29-tour-34-34', 98.73, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 39),
(40, 'BD Spot 39 Tour 35', 'bd-spot-39-tour-35-35', 89.39, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 49),
(41, 'BD Spot 49 Tour 36', 'bd-spot-49-tour-36-36', 49.14, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 59),
(42, 'BD Spot 22 Tour 37', 'bd-spot-22-tour-37-37', 53.87, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 32),
(43, 'BD Spot 47 Tour 38', 'bd-spot-47-tour-38-38', 295.33, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(44, 'BD Spot 6 Tour 39', 'bd-spot-6-tour-39-39', 63.48, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(45, 'Chittagong Tour 40', 'chittagong-tour-40-40', 70.41, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 6),
(46, 'BD Spot 43 Tour 41', 'bd-spot-43-tour-41-41', 66.30, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 53),
(47, 'BD Spot 40 Tour 42', 'bd-spot-40-tour-42-42', 80.44, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 50),
(48, 'BD Spot 21 Tour 43', 'bd-spot-21-tour-43-43', 285.71, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 31),
(49, 'BD Spot 7 Tour 44', 'bd-spot-7-tour-44-44', 180.92, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 17),
(50, 'BD Spot 18 Tour 45', 'bd-spot-18-tour-45-45', 290.09, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(51, 'BD Spot 39 Tour 46', 'bd-spot-39-tour-46-46', 231.48, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 49),
(52, 'BD Spot 36 Tour 47', 'bd-spot-36-tour-47-47', 126.93, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 46),
(53, 'BD Spot 32 Tour 48', 'bd-spot-32-tour-48-48', 142.36, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 42),
(54, 'BD Spot 19 Tour 49', 'bd-spot-19-tour-49-49', 79.25, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(55, 'Dhaka Tour 50', 'dhaka-tour-50-50', 133.52, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 5),
(56, 'BD Spot 26 Tour 51', 'bd-spot-26-tour-51-51', 106.53, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 36),
(57, 'Cox\'s Bazar Tour 52', 'coxs-bazar-tour-52-52', 66.75, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 1),
(58, 'Saint Martin Tour 53', 'saint-martin-tour-53-53', 106.24, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 4),
(59, 'BD Spot 46 Tour 54', 'bd-spot-46-tour-54-54', 131.61, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 56),
(60, 'BD Spot 6 Tour 55', 'bd-spot-6-tour-55-55', 118.62, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(61, 'BD Spot 4 Tour 56', 'bd-spot-4-tour-56-56', 183.81, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 14),
(62, 'BD Spot 50 Tour 57', 'bd-spot-50-tour-57-57', 269.60, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 60),
(63, 'BD Spot 21 Tour 58', 'bd-spot-21-tour-58-58', 109.75, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 31),
(64, 'BD Spot 42 Tour 59', 'bd-spot-42-tour-59-59', 150.76, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 52),
(65, 'Khulna Tour 60', 'khulna-tour-60-60', 213.75, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 7),
(66, 'BD Spot 18 Tour 61', 'bd-spot-18-tour-61-61', 151.78, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(67, 'Saint Martin Tour 62', 'saint-martin-tour-62-62', 217.34, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 4),
(68, 'Khulna Tour 63', 'khulna-tour-63-63', 64.15, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 7),
(69, 'BD Spot 12 Tour 64', 'bd-spot-12-tour-64-64', 249.15, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 22),
(70, 'BD Spot 6 Tour 65', 'bd-spot-6-tour-65-65', 96.90, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(71, 'BD Spot 19 Tour 66', 'bd-spot-19-tour-66-66', 84.05, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(72, 'BD Spot 8 Tour 67', 'bd-spot-8-tour-67-67', 164.66, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 18),
(73, 'BD Spot 19 Tour 68', 'bd-spot-19-tour-68-68', 251.01, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(74, 'Khulna Tour 69', 'khulna-tour-69-69', 61.65, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 7),
(75, 'BD Spot 44 Tour 70', 'bd-spot-44-tour-70-70', 52.69, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 54),
(76, 'BD Spot 50 Tour 71', 'bd-spot-50-tour-71-71', 237.39, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 60),
(77, 'BD Spot 1 Tour 72', 'bd-spot-1-tour-72-72', 150.60, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 11),
(78, 'BD Spot 4 Tour 73', 'bd-spot-4-tour-73-73', 265.16, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 14),
(79, 'BD Spot 1 Tour 74', 'bd-spot-1-tour-74-74', 143.74, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 11),
(80, 'BD Spot 7 Tour 75', 'bd-spot-7-tour-75-75', 280.63, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 17),
(81, 'BD Spot 9 Tour 76', 'bd-spot-9-tour-76-76', 154.75, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 19),
(82, 'BD Spot 41 Tour 77', 'bd-spot-41-tour-77-77', 187.94, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 51),
(83, 'BD Spot 22 Tour 78', 'bd-spot-22-tour-78-78', 87.70, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 32),
(84, 'BD Spot 4 Tour 79', 'bd-spot-4-tour-79-79', 291.18, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 14),
(85, 'BD Spot 38 Tour 80', 'bd-spot-38-tour-80-80', 184.55, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 48),
(86, 'BD Spot 11 Tour 81', 'bd-spot-11-tour-81-81', 63.29, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 21),
(87, 'BD Spot 21 Tour 82', 'bd-spot-21-tour-82-82', 174.71, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 31),
(88, 'BD Spot 1 Tour 83', 'bd-spot-1-tour-83-83', 63.22, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 11),
(89, 'Chittagong Tour 84', 'chittagong-tour-84-84', 261.84, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 6),
(90, 'BD Spot 29 Tour 85', 'bd-spot-29-tour-85-85', 65.99, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 39),
(91, 'BD Spot 16 Tour 86', 'bd-spot-16-tour-86-86', 78.97, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 26),
(92, 'BD Spot 6 Tour 87', 'bd-spot-6-tour-87-87', 193.73, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(93, 'BD Spot 30 Tour 88', 'bd-spot-30-tour-88-88', 69.50, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 40),
(94, 'BD Spot 28 Tour 89', 'bd-spot-28-tour-89-89', 190.31, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 38),
(95, 'BD Spot 50 Tour 90', 'bd-spot-50-tour-90-90', 114.19, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 60),
(96, 'BD Spot 36 Tour 91', 'bd-spot-36-tour-91-91', 127.55, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 46),
(97, 'BD Spot 16 Tour 92', 'bd-spot-16-tour-92-92', 81.72, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 26),
(98, 'BD Spot 10 Tour 93', 'bd-spot-10-tour-93-93', 163.31, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 20),
(99, 'Cox\'s Bazar Tour 94', 'coxs-bazar-tour-94-94', 163.57, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 1),
(100, 'Khulna Tour 95', 'khulna-tour-95-95', 67.32, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 7),
(101, 'BD Spot 23 Tour 96', 'bd-spot-23-tour-96-96', 115.30, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(102, 'BD Spot 47 Tour 97', 'bd-spot-47-tour-97-97', 66.20, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(103, 'BD Spot 14 Tour 98', 'bd-spot-14-tour-98-98', 120.25, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 24),
(104, 'BD Spot 44 Tour 99', 'bd-spot-44-tour-99-99', 184.80, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 54),
(105, 'BD Spot 30 Tour 100', 'bd-spot-30-tour-100-100', 294.96, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 40),
(106, 'BD Spot 24 Tour 101', 'bd-spot-24-tour-101-101', 50.96, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 34),
(107, 'BD Spot 10 Tour 102', 'bd-spot-10-tour-102-102', 281.94, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 20),
(108, 'BD Spot 47 Tour 103', 'bd-spot-47-tour-103-103', 82.57, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(109, 'BD Spot 47 Tour 104', 'bd-spot-47-tour-104-104', 75.76, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(110, 'Kuakata Tour 105', 'kuakata-tour-105-105', 117.09, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(111, 'BD Spot 4 Tour 106', 'bd-spot-4-tour-106-106', 228.40, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 14),
(112, 'BD Spot 34 Tour 107', 'bd-spot-34-tour-107-107', 207.56, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 44),
(113, 'BD Spot 23 Tour 108', 'bd-spot-23-tour-108-108', 171.13, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(114, 'Chittagong Tour 109', 'chittagong-tour-109-109', 207.57, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 6),
(115, 'Bandarban Tour 110', 'bandarban-tour-110-110', 49.89, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 3),
(116, 'BD Spot 31 Tour 111', 'bd-spot-31-tour-111-111', 293.95, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 41),
(117, 'BD Spot 38 Tour 112', 'bd-spot-38-tour-112-112', 159.46, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 48),
(118, 'BD Spot 18 Tour 113', 'bd-spot-18-tour-113-113', 189.23, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(119, 'Dhaka Tour 114', 'dhaka-tour-114-114', 285.26, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 5),
(120, 'BD Spot 48 Tour 115', 'bd-spot-48-tour-115-115', 86.26, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(121, 'BD Spot 44 Tour 116', 'bd-spot-44-tour-116-116', 141.30, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 54),
(122, 'Kuakata Tour 117', 'kuakata-tour-117-117', 156.45, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(123, 'BD Spot 10 Tour 118', 'bd-spot-10-tour-118-118', 140.16, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 20),
(124, 'BD Spot 48 Tour 119', 'bd-spot-48-tour-119-119', 138.45, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(125, 'BD Spot 6 Tour 120', 'bd-spot-6-tour-120-120', 215.73, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(126, 'BD Spot 40 Tour 121', 'bd-spot-40-tour-121-121', 188.97, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 50),
(127, 'BD Spot 30 Tour 122', 'bd-spot-30-tour-122-122', 236.37, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 40),
(128, 'BD Spot 46 Tour 123', 'bd-spot-46-tour-123-123', 89.63, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 56),
(129, 'BD Spot 47 Tour 124', 'bd-spot-47-tour-124-124', 152.07, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(130, 'BD Spot 38 Tour 125', 'bd-spot-38-tour-125-125', 280.12, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 48),
(131, 'BD Spot 42 Tour 126', 'bd-spot-42-tour-126-126', 216.48, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 52),
(132, 'BD Spot 42 Tour 127', 'bd-spot-42-tour-127-127', 111.04, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 52),
(133, 'BD Spot 41 Tour 128', 'bd-spot-41-tour-128-128', 224.32, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 51),
(134, 'BD Spot 46 Tour 129', 'bd-spot-46-tour-129-129', 58.68, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 56),
(135, 'BD Spot 5 Tour 130', 'bd-spot-5-tour-130-130', 98.89, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 15),
(136, 'BD Spot 13 Tour 131', 'bd-spot-13-tour-131-131', 125.30, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 23),
(137, 'BD Spot 5 Tour 132', 'bd-spot-5-tour-132-132', 54.92, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 15),
(138, 'BD Spot 16 Tour 133', 'bd-spot-16-tour-133-133', 131.07, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 26),
(139, 'BD Spot 40 Tour 134', 'bd-spot-40-tour-134-134', 118.78, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 50),
(140, 'BD Spot 23 Tour 135', 'bd-spot-23-tour-135-135', 148.92, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(141, 'BD Spot 12 Tour 136', 'bd-spot-12-tour-136-136', 283.81, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 22),
(142, 'BD Spot 47 Tour 137', 'bd-spot-47-tour-137-137', 291.60, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 57),
(143, 'BD Spot 28 Tour 138', 'bd-spot-28-tour-138-138', 289.63, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 38),
(144, 'Bandarban Tour 139', 'bandarban-tour-139-139', 76.10, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 3),
(145, 'BD Spot 13 Tour 140', 'bd-spot-13-tour-140-140', 231.14, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 23),
(146, 'BD Spot 18 Tour 141', 'bd-spot-18-tour-141-141', 200.55, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(147, 'Rajshahi Tour 142', 'rajshahi-tour-142-142', 145.30, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 8),
(148, 'BD Spot 3 Tour 143', 'bd-spot-3-tour-143-143', 112.68, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 13),
(149, 'BD Spot 18 Tour 144', 'bd-spot-18-tour-144-144', 49.42, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(150, 'BD Spot 34 Tour 145', 'bd-spot-34-tour-145-145', 228.86, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 44),
(151, 'BD Spot 38 Tour 146', 'bd-spot-38-tour-146-146', 216.66, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 48),
(152, 'BD Spot 18 Tour 147', 'bd-spot-18-tour-147-147', 66.49, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(153, 'BD Spot 49 Tour 148', 'bd-spot-49-tour-148-148', 131.55, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 59),
(154, 'BD Spot 33 Tour 149', 'bd-spot-33-tour-149-149', 261.00, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 43),
(155, 'BD Spot 48 Tour 150', 'bd-spot-48-tour-150-150', 124.08, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(156, 'BD Spot 33 Tour 151', 'bd-spot-33-tour-151-151', 151.10, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 43),
(157, 'BD Spot 35 Tour 152', 'bd-spot-35-tour-152-152', 122.91, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 45),
(158, 'BD Spot 3 Tour 153', 'bd-spot-3-tour-153-153', 154.11, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 13),
(159, 'BD Spot 34 Tour 154', 'bd-spot-34-tour-154-154', 236.03, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 44),
(160, 'BD Spot 30 Tour 155', 'bd-spot-30-tour-155-155', 191.28, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 40),
(161, 'BD Spot 26 Tour 156', 'bd-spot-26-tour-156-156', 257.43, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 36),
(162, 'BD Spot 9 Tour 157', 'bd-spot-9-tour-157-157', 101.55, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 19),
(163, 'BD Spot 29 Tour 158', 'bd-spot-29-tour-158-158', 212.68, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 39),
(164, 'BD Spot 19 Tour 159', 'bd-spot-19-tour-159-159', 159.54, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(165, 'BD Spot 23 Tour 160', 'bd-spot-23-tour-160-160', 167.30, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(166, 'BD Spot 1 Tour 161', 'bd-spot-1-tour-161-161', 213.71, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 11),
(167, 'BD Spot 23 Tour 162', 'bd-spot-23-tour-162-162', 214.96, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 33),
(168, 'BD Spot 12 Tour 163', 'bd-spot-12-tour-163-163', 72.35, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 22),
(169, 'BD Spot 34 Tour 164', 'bd-spot-34-tour-164-164', 126.60, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 44),
(170, 'Kuakata Tour 165', 'kuakata-tour-165-165', 55.11, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(171, 'BD Spot 21 Tour 166', 'bd-spot-21-tour-166-166', 201.82, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 31),
(172, 'BD Spot 20 Tour 167', 'bd-spot-20-tour-167-167', 152.61, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 30),
(173, 'BD Spot 27 Tour 168', 'bd-spot-27-tour-168-168', 97.61, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 37),
(174, 'BD Spot 15 Tour 169', 'bd-spot-15-tour-169-169', 172.59, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 25),
(175, 'Kuakata Tour 170', 'kuakata-tour-170-170', 213.01, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(176, 'BD Spot 48 Tour 171', 'bd-spot-48-tour-171-171', 236.74, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(177, 'BD Spot 40 Tour 172', 'bd-spot-40-tour-172-172', 155.29, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 50),
(178, 'BD Spot 42 Tour 173', 'bd-spot-42-tour-173-173', 288.49, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 52),
(179, 'BD Spot 20 Tour 174', 'bd-spot-20-tour-174-174', 61.55, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 30),
(180, 'BD Spot 49 Tour 175', 'bd-spot-49-tour-175-175', 261.08, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 59),
(181, 'Rangamati Tour 176', 'rangamati-tour-176-176', 249.35, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 9),
(182, 'BD Spot 24 Tour 177', 'bd-spot-24-tour-177-177', 295.97, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 34),
(183, 'BD Spot 11 Tour 178', 'bd-spot-11-tour-178-178', 286.51, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 21),
(184, 'BD Spot 30 Tour 179', 'bd-spot-30-tour-179-179', 252.75, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 40),
(185, 'BD Spot 18 Tour 180', 'bd-spot-18-tour-180-180', 256.64, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 28),
(186, 'BD Spot 19 Tour 181', 'bd-spot-19-tour-181-181', 273.30, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(187, 'BD Spot 46 Tour 182', 'bd-spot-46-tour-182-182', 167.67, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 56),
(188, 'BD Spot 39 Tour 183', 'bd-spot-39-tour-183-183', 110.81, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 49),
(189, 'BD Spot 8 Tour 184', 'bd-spot-8-tour-184-184', 240.45, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 18),
(190, 'BD Spot 22 Tour 185', 'bd-spot-22-tour-185-185', 205.69, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 32),
(191, 'BD Spot 19 Tour 186', 'bd-spot-19-tour-186-186', 68.37, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 29),
(192, 'BD Spot 6 Tour 187', 'bd-spot-6-tour-187-187', 116.93, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 16),
(193, 'BD Spot 48 Tour 188', 'bd-spot-48-tour-188-188', 184.04, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 58),
(194, 'Kuakata Tour 189', 'kuakata-tour-189-189', 106.82, 7, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(195, 'Kuakata Tour 190', 'kuakata-tour-190-190', 225.60, 2, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 10),
(196, 'BD Spot 17 Tour 191', 'bd-spot-17-tour-191-191', 150.90, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 27),
(197, 'BD Spot 20 Tour 192', 'bd-spot-20-tour-192-192', 152.94, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 30),
(198, 'BD Spot 44 Tour 193', 'bd-spot-44-tour-193-193', 154.04, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 54),
(199, 'BD Spot 35 Tour 194', 'bd-spot-35-tour-194-194', 53.88, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 45),
(200, 'BD Spot 15 Tour 195', 'bd-spot-15-tour-195-195', 168.24, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 25),
(201, 'BD Spot 10 Tour 196', 'bd-spot-10-tour-196-196', 237.37, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 20),
(202, 'BD Spot 25 Tour 197', 'bd-spot-25-tour-197-197', 235.88, 6, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 35),
(203, 'BD Spot 42 Tour 198', 'bd-spot-42-tour-198-198', 199.81, 3, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 52),
(204, 'BD Spot 22 Tour 199', 'bd-spot-22-tour-199-199', 103.86, 5, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 32),
(205, 'BD Spot 22 Tour 200', 'bd-spot-22-tour-200-200', 56.26, 4, '[\"Arrival\", \"Sightseeing\", \"Departure\"]', '[\"Hotel\", \"Breakfast\"]', '[\"Personal expenses\"]', '', 32);

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(14, 'bookings', 'booking'),
(4, 'contenttypes', 'contenttype'),
(7, 'destinations', 'destination'),
(8, 'destinations', 'package'),
(9, 'hotels', 'hotel'),
(10, 'hotels', 'room'),
(15, 'payments', 'payment'),
(5, 'sessions', 'session'),
(13, 'transport', 'bustrip'),
(12, 'transport', 'vehicle'),
(11, 'transport', 'vendor');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-22 18:01:45.591729'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-09-22 18:03:12.466713'),
(3, 'auth', '0001_initial', '2025-09-22 18:03:12.897170'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-09-22 18:03:13.012720'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-09-22 18:03:13.028724'),
(6, 'auth', '0004_alter_user_username_opts', '2025-09-22 18:03:13.045710'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-09-22 18:03:13.067750'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-09-22 18:03:13.084866'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-09-22 18:03:13.101336'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-09-22 18:03:13.118810'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-09-22 18:03:13.143391'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-09-22 18:03:13.176001'),
(13, 'auth', '0011_update_proxy_permissions', '2025-09-22 18:03:13.202725'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-09-22 18:03:13.212904'),
(15, 'accounts', '0001_initial', '2025-09-22 18:03:13.762112'),
(16, 'admin', '0001_initial', '2025-09-22 18:03:13.819915'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-09-22 18:03:13.847187'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-22 18:03:13.886490'),
(19, 'destinations', '0001_initial', '2025-09-22 18:03:14.122398'),
(20, 'transport', '0001_initial', '2025-09-22 18:03:14.526977'),
(21, 'hotels', '0001_initial', '2025-09-22 18:03:14.824068'),
(22, 'bookings', '0001_initial', '2025-09-22 18:03:15.385469'),
(23, 'payments', '0001_initial', '2025-09-22 18:03:15.570177'),
(24, 'sessions', '0001_initial', '2025-09-22 18:03:15.686993'),
(25, 'payments', '0002_alter_payment_method', '2025-09-24 08:59:03.064869');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h0ri5l0y0p71xpdnsdxtplemp4rwp7bt', '.eJxVjDsOwjAQBe_iGln-xR9Kes5g7dprHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszyU6_G0J6UNtBvkO7dZ56W5cZ-a7wgw5-7Zmel8P9O6gw6rd23pmM4IBsMAFsUJYSgBJTMUUrZxMqrYimYIQuGlJGKckL8tZgIWDvD-n6OGQ:1v15X0:qfQLODefyOK-P4UraSe2KPo8hFrsb7263meuAIcp47k', '2025-10-07 16:06:18.750546'),
('ppqvwss581kwhd3mxy5a2ab1ofr69hl8', '.eJxVjsFqwzAQRH9F6GyEbCWR5GNJoIeWQgi9mpW0qpW4VmrLJCHk3ytBDu1xZ9489k47WFLfLTNOXXC0pYJWfzMD9oRjKdwRxq_IbBzTFAwrCHu2M3uPDoeXJ_tP0MPcF63xXkntGqk06AY2K1W7es2dcHoFquFCOG9lrY1S4IWCteDSwUYLC6bxMkstTIm2d5puZ8zG14_D7i3H5WtR0RTSUOJ9jN9ki8NyRQKJHBDIZ8AL2eMc876i5ynYAgrNOM_3zwJjHt9oWz8ev90fVr8:1v15nz:OrJ8TWIWRW3JPLuX4HiC1LH8R6YgZ-5kYksNlVj7MJQ', '2025-10-07 16:23:51.229377'),
('z12nglwn6z4su0k6897d5wqn2anxm1yk', 'eyJjYXJ0Ijp7InR5cGUiOiJQQUNLQUdFIiwiaWQiOjM1LCJ0aXRsZSI6IkNveCdzIEJhemFyIFRvdXIgMzAiLCJwcmljZSI6IjI4Ny40NSIsInF1YW50aXR5IjoxfX0:1v1LZL:4e-gpRIfxc8Y1o4nhcgp1DF_qFZ1C0bXsmgSCA2qBdg', '2025-10-08 09:13:47.953718');

-- --------------------------------------------------------

--
-- Table structure for table `hotels_hotel`
--

CREATE TABLE `hotels_hotel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `star_rating` decimal(2,1) NOT NULL,
  `amenities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`amenities`)),
  `image` varchar(100) DEFAULT NULL,
  `destination_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels_hotel`
--

INSERT INTO `hotels_hotel` (`id`, `name`, `address`, `price_per_night`, `star_rating`, `amenities`, `image`, `destination_id`) VALUES
(1, 'Sea Pearl Hotel', 'Beach Road', 49.00, 4.2, '[\"WiFi\", \"AC\"]', '', 1),
(2, 'Tea View Resort', 'Zindabazar', 39.00, 4.2, '[\"WiFi\", \"Breakfast\"]', '', 2),
(3, 'Hilltop Resort', 'Nilgiri Road', 35.00, 4.2, '[\"WiFi\"]', '', 3),
(4, 'Hotel BD Spot 33 1', 'BD Spot 33 Center', 89.52, 3.8, '[\"WiFi\", \"AC\"]', '', 43),
(5, 'Hotel BD Spot 1 2', 'BD Spot 1 Center', 104.85, 4.8, '[\"WiFi\", \"AC\"]', '', 11),
(6, 'Hotel BD Spot 30 3', 'BD Spot 30 Center', 75.74, 4.8, '[\"WiFi\", \"AC\"]', '', 40),
(7, 'Hotel BD Spot 28 4', 'BD Spot 28 Center', 78.62, 3.1, '[\"WiFi\", \"AC\"]', '', 38),
(8, 'Hotel BD Spot 32 5', 'BD Spot 32 Center', 65.72, 4.7, '[\"WiFi\", \"AC\"]', '', 42),
(9, 'Hotel BD Spot 2 6', 'BD Spot 2 Center', 29.78, 3.8, '[\"WiFi\", \"AC\"]', '', 12),
(10, 'Hotel BD Spot 4 7', 'BD Spot 4 Center', 68.20, 3.7, '[\"WiFi\", \"AC\"]', '', 14),
(11, 'Hotel BD Spot 47 8', 'BD Spot 47 Center', 61.02, 4.5, '[\"WiFi\", \"AC\"]', '', 57),
(12, 'Hotel BD Spot 44 9', 'BD Spot 44 Center', 65.05, 4.7, '[\"WiFi\", \"AC\"]', '', 54),
(13, 'Hotel BD Spot 21 10', 'BD Spot 21 Center', 26.84, 4.1, '[\"WiFi\", \"AC\"]', '', 31),
(14, 'Hotel BD Spot 13 11', 'BD Spot 13 Center', 46.30, 3.1, '[\"WiFi\", \"AC\"]', '', 23),
(15, 'Hotel BD Spot 32 12', 'BD Spot 32 Center', 28.82, 3.1, '[\"WiFi\", \"AC\"]', '', 42),
(16, 'Hotel BD Spot 6 13', 'BD Spot 6 Center', 43.94, 3.0, '[\"WiFi\", \"AC\"]', '', 16),
(17, 'Hotel Kuakata 14', 'Kuakata Center', 47.66, 3.9, '[\"WiFi\", \"AC\"]', '', 10),
(18, 'Hotel Rajshahi 15', 'Rajshahi Center', 78.58, 3.4, '[\"WiFi\", \"AC\"]', '', 8),
(19, 'Hotel BD Spot 35 16', 'BD Spot 35 Center', 49.34, 3.7, '[\"WiFi\", \"AC\"]', '', 45),
(20, 'Hotel BD Spot 29 17', 'BD Spot 29 Center', 82.69, 4.5, '[\"WiFi\", \"AC\"]', '', 39),
(21, 'Hotel Rajshahi 18', 'Rajshahi Center', 98.89, 3.3, '[\"WiFi\", \"AC\"]', '', 8),
(22, 'Hotel BD Spot 10 19', 'BD Spot 10 Center', 35.27, 3.1, '[\"WiFi\", \"AC\"]', '', 20),
(23, 'Hotel BD Spot 10 20', 'BD Spot 10 Center', 79.70, 4.8, '[\"WiFi\", \"AC\"]', '', 20),
(24, 'Hotel BD Spot 15 21', 'BD Spot 15 Center', 62.68, 4.4, '[\"WiFi\", \"AC\"]', '', 25),
(25, 'Hotel Dhaka 22', 'Dhaka Center', 81.25, 4.7, '[\"WiFi\", \"AC\"]', '', 5),
(26, 'Hotel BD Spot 6 23', 'BD Spot 6 Center', 34.68, 4.5, '[\"WiFi\", \"AC\"]', '', 16),
(27, 'Hotel BD Spot 45 24', 'BD Spot 45 Center', 90.00, 4.6, '[\"WiFi\", \"AC\"]', '', 55),
(28, 'Hotel BD Spot 41 25', 'BD Spot 41 Center', 118.47, 4.6, '[\"WiFi\", \"AC\"]', '', 51),
(29, 'Hotel BD Spot 13 26', 'BD Spot 13 Center', 75.61, 4.3, '[\"WiFi\", \"AC\"]', '', 23),
(30, 'Hotel Dhaka 27', 'Dhaka Center', 73.07, 3.7, '[\"WiFi\", \"AC\"]', '', 5),
(31, 'Hotel BD Spot 45 28', 'BD Spot 45 Center', 64.91, 4.0, '[\"WiFi\", \"AC\"]', '', 55),
(32, 'Hotel BD Spot 18 29', 'BD Spot 18 Center', 116.27, 4.3, '[\"WiFi\", \"AC\"]', '', 28),
(33, 'Hotel BD Spot 44 30', 'BD Spot 44 Center', 68.68, 3.3, '[\"WiFi\", \"AC\"]', '', 54),
(34, 'Hotel BD Spot 2 31', 'BD Spot 2 Center', 94.71, 4.9, '[\"WiFi\", \"AC\"]', '', 12),
(35, 'Hotel BD Spot 8 32', 'BD Spot 8 Center', 83.51, 4.8, '[\"WiFi\", \"AC\"]', '', 18),
(36, 'Hotel BD Spot 40 33', 'BD Spot 40 Center', 70.93, 3.9, '[\"WiFi\", \"AC\"]', '', 50),
(37, 'Hotel BD Spot 37 34', 'BD Spot 37 Center', 81.29, 3.6, '[\"WiFi\", \"AC\"]', '', 47),
(38, 'Hotel BD Spot 6 35', 'BD Spot 6 Center', 103.92, 3.2, '[\"WiFi\", \"AC\"]', '', 16),
(39, 'Hotel BD Spot 47 36', 'BD Spot 47 Center', 67.83, 4.5, '[\"WiFi\", \"AC\"]', '', 57),
(40, 'Hotel BD Spot 27 37', 'BD Spot 27 Center', 82.98, 3.8, '[\"WiFi\", \"AC\"]', '', 37),
(41, 'Hotel Sylhet 38', 'Sylhet Center', 71.96, 3.7, '[\"WiFi\", \"AC\"]', '', 2),
(42, 'Hotel BD Spot 22 39', 'BD Spot 22 Center', 45.15, 4.6, '[\"WiFi\", \"AC\"]', '', 32),
(43, 'Hotel BD Spot 12 40', 'BD Spot 12 Center', 51.57, 4.2, '[\"WiFi\", \"AC\"]', '', 22),
(44, 'Hotel BD Spot 47 41', 'BD Spot 47 Center', 51.25, 3.0, '[\"WiFi\", \"AC\"]', '', 57),
(45, 'Hotel BD Spot 3 42', 'BD Spot 3 Center', 33.13, 4.4, '[\"WiFi\", \"AC\"]', '', 13),
(46, 'Hotel BD Spot 22 43', 'BD Spot 22 Center', 77.74, 3.5, '[\"WiFi\", \"AC\"]', '', 32),
(47, 'Hotel BD Spot 21 44', 'BD Spot 21 Center', 86.36, 4.0, '[\"WiFi\", \"AC\"]', '', 31),
(48, 'Hotel BD Spot 41 45', 'BD Spot 41 Center', 26.64, 3.6, '[\"WiFi\", \"AC\"]', '', 51),
(49, 'Hotel BD Spot 16 46', 'BD Spot 16 Center', 90.72, 3.6, '[\"WiFi\", \"AC\"]', '', 26),
(50, 'Hotel BD Spot 28 47', 'BD Spot 28 Center', 60.06, 4.1, '[\"WiFi\", \"AC\"]', '', 38),
(51, 'Hotel BD Spot 13 48', 'BD Spot 13 Center', 65.42, 4.5, '[\"WiFi\", \"AC\"]', '', 23),
(52, 'Hotel BD Spot 12 49', 'BD Spot 12 Center', 58.42, 3.9, '[\"WiFi\", \"AC\"]', '', 22),
(53, 'Hotel BD Spot 10 50', 'BD Spot 10 Center', 48.88, 3.2, '[\"WiFi\", \"AC\"]', '', 20),
(54, 'Hotel BD Spot 3 51', 'BD Spot 3 Center', 54.98, 4.5, '[\"WiFi\", \"AC\"]', '', 13),
(55, 'Hotel BD Spot 39 52', 'BD Spot 39 Center', 90.57, 3.4, '[\"WiFi\", \"AC\"]', '', 49),
(56, 'Hotel BD Spot 38 53', 'BD Spot 38 Center', 71.00, 4.4, '[\"WiFi\", \"AC\"]', '', 48),
(57, 'Hotel BD Spot 39 54', 'BD Spot 39 Center', 74.84, 3.6, '[\"WiFi\", \"AC\"]', '', 49),
(58, 'Hotel Khulna 55', 'Khulna Center', 104.10, 3.6, '[\"WiFi\", \"AC\"]', '', 7),
(59, 'Hotel BD Spot 14 56', 'BD Spot 14 Center', 42.05, 3.0, '[\"WiFi\", \"AC\"]', '', 24),
(60, 'Hotel BD Spot 25 57', 'BD Spot 25 Center', 37.03, 3.1, '[\"WiFi\", \"AC\"]', '', 35),
(61, 'Hotel Saint Martin 58', 'Saint Martin Center', 77.57, 4.4, '[\"WiFi\", \"AC\"]', '', 4),
(62, 'Hotel Rangamati 59', 'Rangamati Center', 85.60, 4.5, '[\"WiFi\", \"AC\"]', '', 9),
(63, 'Hotel Khulna 60', 'Khulna Center', 107.91, 4.1, '[\"WiFi\", \"AC\"]', '', 7),
(64, 'Hotel BD Spot 21 61', 'BD Spot 21 Center', 70.48, 3.7, '[\"WiFi\", \"AC\"]', '', 31),
(65, 'Hotel Saint Martin 62', 'Saint Martin Center', 48.99, 4.7, '[\"WiFi\", \"AC\"]', '', 4),
(66, 'Hotel Rajshahi 63', 'Rajshahi Center', 103.10, 3.8, '[\"WiFi\", \"AC\"]', '', 8),
(67, 'Hotel Dhaka 64', 'Dhaka Center', 79.82, 4.4, '[\"WiFi\", \"AC\"]', '', 5),
(68, 'Hotel Kuakata 65', 'Kuakata Center', 39.17, 4.1, '[\"WiFi\", \"AC\"]', '', 10),
(69, 'Hotel BD Spot 10 66', 'BD Spot 10 Center', 33.09, 3.5, '[\"WiFi\", \"AC\"]', '', 20),
(70, 'Hotel BD Spot 26 67', 'BD Spot 26 Center', 97.62, 4.2, '[\"WiFi\", \"AC\"]', '', 36),
(71, 'Hotel BD Spot 41 68', 'BD Spot 41 Center', 83.75, 4.6, '[\"WiFi\", \"AC\"]', '', 51),
(72, 'Hotel BD Spot 15 69', 'BD Spot 15 Center', 67.80, 3.9, '[\"WiFi\", \"AC\"]', '', 25),
(73, 'Hotel BD Spot 46 70', 'BD Spot 46 Center', 80.91, 3.9, '[\"WiFi\", \"AC\"]', '', 56),
(74, 'Hotel BD Spot 27 71', 'BD Spot 27 Center', 84.00, 4.2, '[\"WiFi\", \"AC\"]', '', 37),
(75, 'Hotel BD Spot 38 72', 'BD Spot 38 Center', 34.43, 4.5, '[\"WiFi\", \"AC\"]', '', 48),
(76, 'Hotel BD Spot 31 73', 'BD Spot 31 Center', 45.05, 4.3, '[\"WiFi\", \"AC\"]', '', 41),
(77, 'Hotel BD Spot 1 74', 'BD Spot 1 Center', 47.79, 4.1, '[\"WiFi\", \"AC\"]', '', 11),
(78, 'Hotel BD Spot 1 75', 'BD Spot 1 Center', 25.25, 3.9, '[\"WiFi\", \"AC\"]', '', 11),
(79, 'Hotel BD Spot 29 76', 'BD Spot 29 Center', 69.64, 3.1, '[\"WiFi\", \"AC\"]', '', 39),
(80, 'Hotel BD Spot 9 77', 'BD Spot 9 Center', 92.16, 4.4, '[\"WiFi\", \"AC\"]', '', 19),
(81, 'Hotel BD Spot 20 78', 'BD Spot 20 Center', 31.76, 3.5, '[\"WiFi\", \"AC\"]', '', 30),
(82, 'Hotel BD Spot 7 79', 'BD Spot 7 Center', 99.84, 4.3, '[\"WiFi\", \"AC\"]', '', 17),
(83, 'Hotel BD Spot 33 80', 'BD Spot 33 Center', 101.37, 3.4, '[\"WiFi\", \"AC\"]', '', 43),
(84, 'Hotel Rajshahi 81', 'Rajshahi Center', 76.73, 4.3, '[\"WiFi\", \"AC\"]', '', 8),
(85, 'Hotel BD Spot 49 82', 'BD Spot 49 Center', 50.24, 3.3, '[\"WiFi\", \"AC\"]', '', 59),
(86, 'Hotel Saint Martin 83', 'Saint Martin Center', 40.76, 3.6, '[\"WiFi\", \"AC\"]', '', 4),
(87, 'Hotel BD Spot 38 84', 'BD Spot 38 Center', 103.30, 4.8, '[\"WiFi\", \"AC\"]', '', 48),
(88, 'Hotel BD Spot 19 85', 'BD Spot 19 Center', 36.81, 4.4, '[\"WiFi\", \"AC\"]', '', 29),
(89, 'Hotel BD Spot 35 86', 'BD Spot 35 Center', 63.24, 3.5, '[\"WiFi\", \"AC\"]', '', 45),
(90, 'Hotel BD Spot 25 87', 'BD Spot 25 Center', 71.91, 3.2, '[\"WiFi\", \"AC\"]', '', 35),
(91, 'Hotel Bandarban 88', 'Bandarban Center', 109.50, 4.5, '[\"WiFi\", \"AC\"]', '', 3),
(92, 'Hotel BD Spot 29 89', 'BD Spot 29 Center', 48.78, 3.2, '[\"WiFi\", \"AC\"]', '', 39),
(93, 'Hotel BD Spot 34 90', 'BD Spot 34 Center', 104.42, 4.2, '[\"WiFi\", \"AC\"]', '', 44),
(94, 'Hotel Sylhet 91', 'Sylhet Center', 119.96, 4.3, '[\"WiFi\", \"AC\"]', '', 2),
(95, 'Hotel BD Spot 8 92', 'BD Spot 8 Center', 79.74, 4.5, '[\"WiFi\", \"AC\"]', '', 18),
(96, 'Hotel BD Spot 2 93', 'BD Spot 2 Center', 69.70, 4.3, '[\"WiFi\", \"AC\"]', '', 12),
(97, 'Hotel BD Spot 49 94', 'BD Spot 49 Center', 51.42, 5.0, '[\"WiFi\", \"AC\"]', '', 59),
(98, 'Hotel BD Spot 18 95', 'BD Spot 18 Center', 85.30, 4.0, '[\"WiFi\", \"AC\"]', '', 28),
(99, 'Hotel Chittagong 96', 'Chittagong Center', 69.65, 3.8, '[\"WiFi\", \"AC\"]', '', 6),
(100, 'Hotel BD Spot 11 97', 'BD Spot 11 Center', 88.66, 4.7, '[\"WiFi\", \"AC\"]', '', 21),
(101, 'Hotel BD Spot 12 98', 'BD Spot 12 Center', 64.11, 4.0, '[\"WiFi\", \"AC\"]', '', 22),
(102, 'Hotel BD Spot 33 99', 'BD Spot 33 Center', 114.79, 4.6, '[\"WiFi\", \"AC\"]', '', 43),
(103, 'Hotel BD Spot 26 100', 'BD Spot 26 Center', 28.49, 3.2, '[\"WiFi\", \"AC\"]', '', 36);

-- --------------------------------------------------------

--
-- Table structure for table `hotels_room`
--

CREATE TABLE `hotels_room` (
  `id` bigint(20) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL CHECK (`capacity` >= 0),
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `hotel_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels_room`
--

INSERT INTO `hotels_room` (`id`, `room_type`, `capacity`, `price`, `available`, `hotel_id`) VALUES
(1, 'Deluxe', 2, 49.00, 1, 1),
(2, 'Family', 4, 64.00, 1, 1),
(3, 'Deluxe', 2, 39.00, 1, 2),
(4, 'Family', 4, 54.00, 1, 2),
(5, 'Deluxe', 2, 35.00, 1, 3),
(6, 'Family', 4, 50.00, 1, 3),
(7, 'Standard', 2, 89.52, 1, 4),
(8, 'Suite', 3, 109.52, 1, 4),
(9, 'Standard', 2, 104.85, 1, 5),
(10, 'Suite', 3, 124.85, 1, 5),
(11, 'Standard', 2, 75.74, 1, 6),
(12, 'Suite', 3, 95.74, 1, 6),
(13, 'Standard', 2, 78.62, 1, 7),
(14, 'Suite', 3, 98.62, 1, 7),
(15, 'Standard', 2, 65.72, 1, 8),
(16, 'Suite', 3, 85.72, 1, 8),
(17, 'Standard', 2, 29.78, 1, 9),
(18, 'Suite', 3, 49.78, 1, 9),
(19, 'Standard', 2, 68.20, 1, 10),
(20, 'Suite', 3, 88.20, 1, 10),
(21, 'Standard', 2, 61.02, 1, 11),
(22, 'Suite', 3, 81.02, 1, 11),
(23, 'Standard', 2, 65.05, 1, 12),
(24, 'Suite', 3, 85.05, 1, 12),
(25, 'Standard', 2, 26.84, 1, 13),
(26, 'Suite', 3, 46.84, 1, 13),
(27, 'Standard', 2, 46.30, 1, 14),
(28, 'Suite', 3, 66.30, 1, 14),
(29, 'Standard', 2, 28.82, 1, 15),
(30, 'Suite', 3, 48.82, 1, 15),
(31, 'Standard', 2, 43.94, 1, 16),
(32, 'Suite', 3, 63.94, 1, 16),
(33, 'Standard', 2, 47.66, 1, 17),
(34, 'Suite', 3, 67.66, 1, 17),
(35, 'Standard', 2, 78.58, 1, 18),
(36, 'Suite', 3, 98.58, 1, 18),
(37, 'Standard', 2, 49.34, 1, 19),
(38, 'Suite', 3, 69.34, 1, 19),
(39, 'Standard', 2, 82.69, 1, 20),
(40, 'Suite', 3, 102.69, 1, 20),
(41, 'Standard', 2, 98.89, 1, 21),
(42, 'Suite', 3, 118.89, 1, 21),
(43, 'Standard', 2, 35.27, 1, 22),
(44, 'Suite', 3, 55.27, 1, 22),
(45, 'Standard', 2, 79.70, 1, 23),
(46, 'Suite', 3, 99.70, 1, 23),
(47, 'Standard', 2, 62.68, 1, 24),
(48, 'Suite', 3, 82.68, 1, 24),
(49, 'Standard', 2, 81.25, 1, 25),
(50, 'Suite', 3, 101.25, 1, 25),
(51, 'Standard', 2, 34.68, 1, 26),
(52, 'Suite', 3, 54.68, 1, 26),
(53, 'Standard', 2, 90.00, 1, 27),
(54, 'Suite', 3, 110.00, 1, 27),
(55, 'Standard', 2, 118.47, 1, 28),
(56, 'Suite', 3, 138.47, 1, 28),
(57, 'Standard', 2, 75.61, 1, 29),
(58, 'Suite', 3, 95.61, 1, 29),
(59, 'Standard', 2, 73.07, 1, 30),
(60, 'Suite', 3, 93.07, 1, 30),
(61, 'Standard', 2, 64.91, 1, 31),
(62, 'Suite', 3, 84.91, 1, 31),
(63, 'Standard', 2, 116.27, 1, 32),
(64, 'Suite', 3, 136.27, 1, 32),
(65, 'Standard', 2, 68.68, 1, 33),
(66, 'Suite', 3, 88.68, 1, 33),
(67, 'Standard', 2, 94.71, 1, 34),
(68, 'Suite', 3, 114.71, 1, 34),
(69, 'Standard', 2, 83.51, 1, 35),
(70, 'Suite', 3, 103.51, 1, 35),
(71, 'Standard', 2, 70.93, 1, 36),
(72, 'Suite', 3, 90.93, 1, 36),
(73, 'Standard', 2, 81.29, 1, 37),
(74, 'Suite', 3, 101.29, 1, 37),
(75, 'Standard', 2, 103.92, 1, 38),
(76, 'Suite', 3, 123.92, 1, 38),
(77, 'Standard', 2, 67.83, 1, 39),
(78, 'Suite', 3, 87.83, 1, 39),
(79, 'Standard', 2, 82.98, 1, 40),
(80, 'Suite', 3, 102.98, 1, 40),
(81, 'Standard', 2, 71.96, 1, 41),
(82, 'Suite', 3, 91.96, 1, 41),
(83, 'Standard', 2, 45.15, 1, 42),
(84, 'Suite', 3, 65.15, 1, 42),
(85, 'Standard', 2, 51.57, 1, 43),
(86, 'Suite', 3, 71.57, 1, 43),
(87, 'Standard', 2, 51.25, 1, 44),
(88, 'Suite', 3, 71.25, 1, 44),
(89, 'Standard', 2, 33.13, 1, 45),
(90, 'Suite', 3, 53.13, 1, 45),
(91, 'Standard', 2, 77.74, 1, 46),
(92, 'Suite', 3, 97.74, 1, 46),
(93, 'Standard', 2, 86.36, 1, 47),
(94, 'Suite', 3, 106.36, 1, 47),
(95, 'Standard', 2, 26.64, 1, 48),
(96, 'Suite', 3, 46.64, 1, 48),
(97, 'Standard', 2, 90.72, 1, 49),
(98, 'Suite', 3, 110.72, 1, 49),
(99, 'Standard', 2, 60.06, 1, 50),
(100, 'Suite', 3, 80.06, 1, 50),
(101, 'Standard', 2, 65.42, 1, 51),
(102, 'Suite', 3, 85.42, 1, 51),
(103, 'Standard', 2, 58.42, 1, 52),
(104, 'Suite', 3, 78.42, 1, 52),
(105, 'Standard', 2, 48.88, 1, 53),
(106, 'Suite', 3, 68.88, 1, 53),
(107, 'Standard', 2, 54.98, 1, 54),
(108, 'Suite', 3, 74.98, 1, 54),
(109, 'Standard', 2, 90.57, 1, 55),
(110, 'Suite', 3, 110.57, 1, 55),
(111, 'Standard', 2, 71.00, 1, 56),
(112, 'Suite', 3, 91.00, 1, 56),
(113, 'Standard', 2, 74.84, 1, 57),
(114, 'Suite', 3, 94.84, 1, 57),
(115, 'Standard', 2, 104.10, 1, 58),
(116, 'Suite', 3, 124.10, 1, 58),
(117, 'Standard', 2, 42.05, 1, 59),
(118, 'Suite', 3, 62.05, 1, 59),
(119, 'Standard', 2, 37.03, 1, 60),
(120, 'Suite', 3, 57.03, 1, 60),
(121, 'Standard', 2, 77.57, 1, 61),
(122, 'Suite', 3, 97.57, 1, 61),
(123, 'Standard', 2, 85.60, 1, 62),
(124, 'Suite', 3, 105.60, 1, 62),
(125, 'Standard', 2, 107.91, 1, 63),
(126, 'Suite', 3, 127.91, 1, 63),
(127, 'Standard', 2, 70.48, 1, 64),
(128, 'Suite', 3, 90.48, 1, 64),
(129, 'Standard', 2, 48.99, 1, 65),
(130, 'Suite', 3, 68.99, 1, 65),
(131, 'Standard', 2, 103.10, 1, 66),
(132, 'Suite', 3, 123.10, 1, 66),
(133, 'Standard', 2, 79.82, 1, 67),
(134, 'Suite', 3, 99.82, 1, 67),
(135, 'Standard', 2, 39.17, 1, 68),
(136, 'Suite', 3, 59.17, 1, 68),
(137, 'Standard', 2, 33.09, 1, 69),
(138, 'Suite', 3, 53.09, 1, 69),
(139, 'Standard', 2, 97.62, 1, 70),
(140, 'Suite', 3, 117.62, 1, 70),
(141, 'Standard', 2, 83.75, 1, 71),
(142, 'Suite', 3, 103.75, 1, 71),
(143, 'Standard', 2, 67.80, 1, 72),
(144, 'Suite', 3, 87.80, 1, 72),
(145, 'Standard', 2, 80.91, 1, 73),
(146, 'Suite', 3, 100.91, 1, 73),
(147, 'Standard', 2, 84.00, 1, 74),
(148, 'Suite', 3, 104.00, 1, 74),
(149, 'Standard', 2, 34.43, 1, 75),
(150, 'Suite', 3, 54.43, 1, 75),
(151, 'Standard', 2, 45.05, 1, 76),
(152, 'Suite', 3, 65.05, 1, 76),
(153, 'Standard', 2, 47.79, 1, 77),
(154, 'Suite', 3, 67.79, 1, 77),
(155, 'Standard', 2, 25.25, 1, 78),
(156, 'Suite', 3, 45.25, 1, 78),
(157, 'Standard', 2, 69.64, 1, 79),
(158, 'Suite', 3, 89.64, 1, 79),
(159, 'Standard', 2, 92.16, 1, 80),
(160, 'Suite', 3, 112.16, 1, 80),
(161, 'Standard', 2, 31.76, 1, 81),
(162, 'Suite', 3, 51.76, 1, 81),
(163, 'Standard', 2, 99.84, 1, 82),
(164, 'Suite', 3, 119.84, 1, 82),
(165, 'Standard', 2, 101.37, 1, 83),
(166, 'Suite', 3, 121.37, 1, 83),
(167, 'Standard', 2, 76.73, 1, 84),
(168, 'Suite', 3, 96.73, 1, 84),
(169, 'Standard', 2, 50.24, 1, 85),
(170, 'Suite', 3, 70.24, 1, 85),
(171, 'Standard', 2, 40.76, 1, 86),
(172, 'Suite', 3, 60.76, 1, 86),
(173, 'Standard', 2, 103.30, 1, 87),
(174, 'Suite', 3, 123.30, 1, 87),
(175, 'Standard', 2, 36.81, 1, 88),
(176, 'Suite', 3, 56.81, 1, 88),
(177, 'Standard', 2, 63.24, 1, 89),
(178, 'Suite', 3, 83.24, 1, 89),
(179, 'Standard', 2, 71.91, 1, 90),
(180, 'Suite', 3, 91.91, 1, 90),
(181, 'Standard', 2, 109.50, 1, 91),
(182, 'Suite', 3, 129.50, 1, 91),
(183, 'Standard', 2, 48.78, 1, 92),
(184, 'Suite', 3, 68.78, 1, 92),
(185, 'Standard', 2, 104.42, 1, 93),
(186, 'Suite', 3, 124.42, 1, 93),
(187, 'Standard', 2, 119.96, 1, 94),
(188, 'Suite', 3, 139.96, 1, 94),
(189, 'Standard', 2, 79.74, 1, 95),
(190, 'Suite', 3, 99.74, 1, 95),
(191, 'Standard', 2, 69.70, 1, 96),
(192, 'Suite', 3, 89.70, 1, 96),
(193, 'Standard', 2, 51.42, 1, 97),
(194, 'Suite', 3, 71.42, 1, 97),
(195, 'Standard', 2, 85.30, 1, 98),
(196, 'Suite', 3, 105.30, 1, 98),
(197, 'Standard', 2, 69.65, 1, 99),
(198, 'Suite', 3, 89.65, 1, 99),
(199, 'Standard', 2, 88.66, 1, 100),
(200, 'Suite', 3, 108.66, 1, 100),
(201, 'Standard', 2, 64.11, 1, 101),
(202, 'Suite', 3, 84.11, 1, 101),
(203, 'Standard', 2, 114.79, 1, 102),
(204, 'Suite', 3, 134.79, 1, 102),
(205, 'Standard', 2, 28.49, 1, 103),
(206, 'Suite', 3, 48.49, 1, 103);

-- --------------------------------------------------------

--
-- Table structure for table `payments_payment`
--

CREATE TABLE `payments_payment` (
  `id` bigint(20) NOT NULL,
  `method` varchar(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `provider_reference` varchar(100) NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra`)),
  `created_at` datetime(6) NOT NULL,
  `booking_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_payment`
--

INSERT INTO `payments_payment` (`id`, `method`, `amount`, `status`, `provider_reference`, `extra`, `created_at`, `booking_id`) VALUES
(1, 'bkash', 49.00, 'SUCCESS', '', '{}', '2025-09-22 18:42:22.134581', 1),
(2, 'bkash', 168.24, 'SUCCESS', '', '{}', '2025-09-22 19:01:23.803207', 2),
(3, 'bkash', 149.99, 'SUCCESS', '', '{}', '2025-09-23 16:02:28.199085', 3);

-- --------------------------------------------------------

--
-- Table structure for table `transport_bustrip`
--

CREATE TABLE `transport_bustrip` (
  `id` bigint(20) NOT NULL,
  `departure_time` datetime(6) NOT NULL,
  `arrival_time` datetime(6) NOT NULL,
  `available_seats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`available_seats`)),
  `vehicle_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport_bustrip`
--

INSERT INTO `transport_bustrip` (`id`, `departure_time`, `arrival_time`, `available_seats`, `vehicle_id`) VALUES
(1, '2025-09-23 18:24:26.365620', '2025-09-24 00:24:26.365620', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(2, '2025-09-24 18:24:26.374630', '2025-09-25 00:24:26.374630', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(3, '2025-09-25 18:24:26.382525', '2025-09-26 00:24:26.382525', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(4, '2025-09-23 18:24:26.396120', '2025-09-24 00:24:26.396120', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(5, '2025-09-24 18:24:26.403466', '2025-09-25 00:24:26.403466', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(6, '2025-09-25 18:24:26.414802', '2025-09-26 00:24:26.414802', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(7, '2025-09-23 18:24:26.419743', '2025-09-24 00:24:26.419743', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(8, '2025-09-24 18:24:26.436897', '2025-09-25 00:24:26.436897', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(9, '2025-09-25 18:24:26.440827', '2025-09-26 00:24:26.440827', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(10, '2025-09-23 18:26:27.006431', '2025-09-24 00:26:27.006431', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(11, '2025-09-24 18:26:27.071702', '2025-09-25 00:26:27.071702', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(12, '2025-09-25 18:26:27.084742', '2025-09-26 00:26:27.084742', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(13, '2025-09-23 18:26:27.088775', '2025-09-24 00:26:27.088775', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(14, '2025-09-24 18:26:27.105672', '2025-09-25 00:26:27.105672', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(15, '2025-09-25 18:26:27.105672', '2025-09-26 00:26:27.105672', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(16, '2025-09-23 18:26:27.122213', '2025-09-24 00:26:27.122213', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(17, '2025-09-24 18:26:27.122213', '2025-09-25 00:26:27.122213', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(18, '2025-09-25 18:26:27.139351', '2025-09-26 00:26:27.139351', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(19, '2025-09-25 04:26:31.668667', '2025-09-25 10:26:31.668667', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(20, '2025-10-19 12:26:31.668667', '2025-10-19 18:26:31.668667', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(21, '2025-10-20 11:26:31.684581', '2025-10-20 17:26:31.684581', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 9),
(22, '2025-09-30 01:26:31.684581', '2025-09-30 09:26:31.684581', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 76),
(23, '2025-09-28 13:26:31.701325', '2025-09-28 16:26:31.701325', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 100),
(24, '2025-10-20 22:26:31.701325', '2025-10-21 03:26:31.701325', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 36),
(25, '2025-10-01 23:26:31.717822', '2025-10-02 03:26:31.717822', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 70),
(26, '2025-10-20 18:26:31.717822', '2025-10-20 23:26:31.717822', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 85),
(27, '2025-10-05 01:26:31.730126', '2025-10-05 13:26:31.730126', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(28, '2025-09-23 23:26:31.734817', '2025-09-24 06:26:31.734817', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(29, '2025-09-28 17:26:31.745778', '2025-09-29 02:26:31.745778', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 7),
(30, '2025-09-27 17:26:31.753237', '2025-09-27 21:26:31.753237', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(31, '2025-10-08 05:26:31.756296', '2025-10-08 16:26:31.756296', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 61),
(32, '2025-09-27 08:26:31.769827', '2025-09-27 19:26:31.769827', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 76),
(33, '2025-10-12 19:26:31.771067', '2025-10-13 06:26:31.771067', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(34, '2025-10-08 14:26:31.786126', '2025-10-08 17:26:31.786126', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 39),
(35, '2025-10-09 06:26:31.786964', '2025-10-09 15:26:31.786964', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(36, '2025-09-27 09:26:31.798017', '2025-09-27 19:26:31.798017', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 88),
(37, '2025-10-21 20:26:31.803535', '2025-10-22 04:26:31.803535', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(38, '2025-09-27 20:26:31.807511', '2025-09-28 01:26:31.807511', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 78),
(39, '2025-10-13 14:26:31.815644', '2025-10-14 02:26:31.815644', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 36),
(40, '2025-10-16 04:26:31.821885', '2025-10-16 13:26:31.821885', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(41, '2025-10-10 03:26:31.834101', '2025-10-10 13:26:31.834101', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 77),
(42, '2025-10-13 07:26:31.836665', '2025-10-13 11:26:31.836665', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(43, '2025-10-15 21:26:31.836665', '2025-10-16 08:26:31.836665', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(44, '2025-10-21 00:26:31.853298', '2025-10-21 09:26:31.853298', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(45, '2025-10-22 01:26:31.853298', '2025-10-22 10:26:31.853298', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(46, '2025-10-20 08:26:31.868702', '2025-10-20 17:26:31.868702', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 44),
(47, '2025-10-16 21:26:31.876031', '2025-10-17 05:26:31.876031', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(48, '2025-10-04 15:26:31.879329', '2025-10-04 22:26:31.879329', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 55),
(49, '2025-09-28 15:26:31.886668', '2025-09-29 01:26:31.886668', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(50, '2025-09-25 20:26:31.886668', '2025-09-26 00:26:31.886668', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 9),
(51, '2025-09-27 17:26:31.903207', '2025-09-28 01:26:31.903207', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(52, '2025-09-28 11:26:31.907033', '2025-09-28 14:26:31.907033', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(53, '2025-10-11 11:26:31.917374', '2025-10-11 19:26:31.917374', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 76),
(54, '2025-09-27 07:26:31.917374', '2025-09-27 15:26:31.917374', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 86),
(55, '2025-10-15 07:26:31.930017', '2025-10-15 10:26:31.930017', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(56, '2025-10-13 03:26:31.934160', '2025-10-13 11:26:31.934160', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(57, '2025-10-12 10:26:31.942779', '2025-10-12 16:26:31.942779', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 14),
(58, '2025-10-15 09:26:31.952034', '2025-10-15 15:26:31.952034', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 20),
(59, '2025-09-27 05:26:31.953905', '2025-09-27 16:26:31.953905', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 109),
(60, '2025-09-27 02:26:31.962173', '2025-09-27 14:26:31.962173', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(61, '2025-10-19 07:26:31.968616', '2025-10-19 18:26:31.968616', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(62, '2025-10-20 13:26:31.969764', '2025-10-21 01:26:31.969764', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 99),
(63, '2025-10-14 11:26:31.980075', '2025-10-14 14:26:31.980075', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(64, '2025-10-23 15:26:31.984181', '2025-10-23 22:26:31.984181', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 78),
(65, '2025-09-29 02:26:31.984181', '2025-09-29 09:26:31.984181', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 4),
(66, '2025-10-04 05:26:31.996526', '2025-10-04 08:26:31.996526', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 118),
(67, '2025-10-20 22:26:32.000560', '2025-10-21 10:26:32.000560', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 24),
(68, '2025-10-05 20:26:32.000560', '2025-10-06 01:26:32.000560', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 85),
(69, '2025-10-13 18:26:32.013209', '2025-10-13 22:26:32.013209', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 95),
(70, '2025-10-10 00:26:32.020649', '2025-10-10 09:26:32.020649', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 96),
(71, '2025-10-08 04:26:32.020649', '2025-10-08 09:26:32.020649', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(72, '2025-10-03 17:26:32.034044', '2025-10-04 01:26:32.034044', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(73, '2025-10-12 13:26:32.034044', '2025-10-12 17:26:32.034044', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 100),
(74, '2025-09-24 22:26:32.034044', '2025-09-25 03:26:32.034044', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 114),
(75, '2025-10-12 19:26:32.051622', '2025-10-12 23:26:32.051622', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 97),
(76, '2025-10-08 15:26:32.051622', '2025-10-09 00:26:32.051622', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 35),
(77, '2025-10-13 08:26:32.051622', '2025-10-13 17:26:32.051622', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 63),
(78, '2025-09-30 10:26:32.067546', '2025-09-30 14:26:32.067546', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 35),
(79, '2025-10-06 21:26:32.067546', '2025-10-07 04:26:32.067546', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(80, '2025-10-15 12:26:32.067546', '2025-10-15 22:26:32.067546', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(81, '2025-10-15 03:26:32.084229', '2025-10-15 06:26:32.084229', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(82, '2025-10-06 13:26:32.088582', '2025-10-06 16:26:32.088582', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(83, '2025-09-30 03:26:32.095403', '2025-09-30 09:26:32.095403', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(84, '2025-09-28 02:26:32.105674', '2025-09-28 09:26:32.105674', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 99),
(85, '2025-09-26 18:26:32.105674', '2025-09-27 04:26:32.105674', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(86, '2025-10-06 23:26:32.117494', '2025-10-07 04:26:32.117494', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 96),
(87, '2025-10-11 16:26:32.117494', '2025-10-11 22:26:32.117494', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 49),
(88, '2025-10-11 15:26:32.117494', '2025-10-11 23:26:32.117494', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(89, '2025-10-06 17:26:32.134486', '2025-10-06 20:26:32.134486', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(90, '2025-09-24 08:26:32.134486', '2025-09-24 12:26:32.134486', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(91, '2025-10-04 12:26:32.134486', '2025-10-04 21:26:32.134486', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 111),
(92, '2025-10-06 16:26:32.150598', '2025-10-07 01:26:32.150598', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 74),
(93, '2025-09-27 06:26:32.150598', '2025-09-27 09:26:32.150598', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 38),
(94, '2025-09-29 13:26:32.162074', '2025-09-29 23:26:32.162074', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(95, '2025-10-16 05:26:32.167270', '2025-10-16 09:26:32.167270', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 107),
(96, '2025-10-20 21:26:32.167270', '2025-10-21 03:26:32.167270', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(97, '2025-10-12 06:26:32.180993', '2025-10-12 17:26:32.180993', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(98, '2025-10-06 03:26:32.189180', '2025-10-06 11:26:32.189180', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 11),
(99, '2025-10-03 23:26:32.200301', '2025-10-04 03:26:32.200301', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(100, '2025-10-13 21:26:32.204558', '2025-10-14 08:26:32.204558', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 66),
(101, '2025-09-30 05:26:32.212066', '2025-09-30 13:26:32.212066', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 66),
(102, '2025-10-20 14:26:32.217034', '2025-10-20 19:26:32.217034', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 94),
(103, '2025-09-26 22:26:32.217034', '2025-09-27 05:26:32.217034', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 31),
(104, '2025-09-29 13:26:32.233716', '2025-09-29 18:26:32.233716', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 26),
(105, '2025-10-18 14:26:32.233716', '2025-10-18 18:26:32.233716', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(106, '2025-10-18 14:26:32.233716', '2025-10-19 00:26:32.233716', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 23),
(107, '2025-10-18 12:26:32.250478', '2025-10-19 00:26:32.250478', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(108, '2025-10-15 12:26:32.250478', '2025-10-16 00:26:32.250478', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(109, '2025-10-21 14:26:32.267189', '2025-10-21 22:26:32.267189', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(110, '2025-10-07 20:26:32.267189', '2025-10-08 06:26:32.267189', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 20),
(111, '2025-10-14 03:26:32.267189', '2025-10-14 10:26:32.267189', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 57),
(112, '2025-09-25 05:26:32.283840', '2025-09-25 16:26:32.283840', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 76),
(113, '2025-10-03 08:26:32.283840', '2025-10-03 18:26:32.283840', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(114, '2025-09-25 05:26:32.297285', '2025-09-25 12:26:32.297285', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(115, '2025-10-13 20:26:32.303163', '2025-10-14 08:26:32.303163', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(116, '2025-10-10 06:26:32.313025', '2025-10-10 16:26:32.313025', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 77),
(117, '2025-10-11 17:26:32.317282', '2025-10-11 20:26:32.317282', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(118, '2025-10-23 12:26:32.317282', '2025-10-23 18:26:32.317282', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(119, '2025-10-13 09:26:32.334035', '2025-10-13 20:26:32.334035', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(120, '2025-09-25 08:26:32.334035', '2025-09-25 12:26:32.334035', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 20),
(121, '2025-10-22 04:26:32.345230', '2025-10-22 08:26:32.345230', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(122, '2025-10-13 23:26:32.355791', '2025-10-14 02:26:32.355791', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(123, '2025-10-16 08:26:32.355791', '2025-10-16 18:26:32.355791', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(124, '2025-10-10 13:26:32.367431', '2025-10-10 18:26:32.367431', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(125, '2025-10-05 03:26:32.383620', '2025-10-05 12:26:32.383620', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 47),
(126, '2025-10-18 04:26:32.383620', '2025-10-18 16:26:32.383620', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(127, '2025-10-19 14:26:32.400361', '2025-10-19 22:26:32.400361', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 7),
(128, '2025-10-03 21:26:32.400361', '2025-10-04 08:26:32.400361', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 9),
(129, '2025-10-06 03:26:32.413361', '2025-10-06 10:26:32.413361', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(130, '2025-10-21 15:26:32.417531', '2025-10-22 03:26:32.417531', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(131, '2025-09-28 04:26:32.417531', '2025-09-28 08:26:32.417531', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(132, '2025-10-14 22:26:32.430689', '2025-10-15 06:26:32.430689', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(133, '2025-10-14 16:26:32.437131', '2025-10-15 01:26:32.437131', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(134, '2025-10-13 16:26:32.437131', '2025-10-13 20:26:32.437131', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(135, '2025-10-11 06:26:32.446230', '2025-10-11 14:26:32.446230', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(136, '2025-09-28 15:26:32.449902', '2025-09-29 02:26:32.449902', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 105),
(137, '2025-10-14 15:26:32.449902', '2025-10-15 00:26:32.449902', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 12),
(138, '2025-10-04 18:26:32.467246', '2025-10-05 02:26:32.467246', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 66),
(139, '2025-09-29 00:26:32.467246', '2025-09-29 08:26:32.467246', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(140, '2025-10-18 09:26:32.480467', '2025-10-18 15:26:32.480467', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 122),
(141, '2025-09-27 22:26:32.483431', '2025-09-28 02:26:32.483431', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(142, '2025-10-20 21:26:32.495124', '2025-10-21 08:26:32.495124', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 38),
(143, '2025-10-11 17:26:32.499910', '2025-10-12 04:26:32.499910', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 99),
(144, '2025-10-15 04:26:32.499910', '2025-10-15 16:26:32.499910', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(145, '2025-10-13 06:26:32.517172', '2025-10-13 11:26:32.517172', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(146, '2025-09-29 16:26:32.521001', '2025-09-30 04:26:32.521001', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 21),
(147, '2025-10-21 23:26:32.529462', '2025-10-22 09:26:32.529462', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(148, '2025-10-07 05:26:32.533624', '2025-10-07 11:26:32.533624', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 6),
(149, '2025-10-13 03:26:32.533624', '2025-10-13 13:26:32.533624', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 57),
(150, '2025-10-11 01:26:32.550562', '2025-10-11 08:26:32.550562', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 30),
(151, '2025-10-19 09:26:32.550562', '2025-10-19 15:26:32.550562', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(152, '2025-10-15 12:26:32.564764', '2025-10-15 22:26:32.564764', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(153, '2025-10-18 03:26:32.570969', '2025-10-18 12:26:32.570969', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(154, '2025-10-10 07:26:32.570969', '2025-10-10 12:26:32.570969', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(155, '2025-09-30 13:26:32.583563', '2025-09-30 18:26:32.583563', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 105),
(156, '2025-10-01 19:26:32.583563', '2025-10-02 05:26:32.583563', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(157, '2025-10-05 11:26:32.598190', '2025-10-05 15:26:32.598190', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(158, '2025-10-21 10:26:32.598190', '2025-10-21 14:26:32.598190', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 92),
(159, '2025-09-25 23:26:32.614774', '2025-09-26 06:26:32.614774', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(160, '2025-10-22 10:26:32.614774', '2025-10-22 15:26:32.614774', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(161, '2025-10-06 20:26:32.614774', '2025-10-07 02:26:32.614774', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 107),
(162, '2025-10-08 05:26:32.631132', '2025-10-08 08:26:32.631132', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 105),
(163, '2025-09-25 06:26:32.631132', '2025-09-25 17:26:32.631132', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(164, '2025-10-01 06:26:32.650387', '2025-10-01 10:26:32.650387', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(165, '2025-09-30 18:26:32.650387', '2025-10-01 02:26:32.650387', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(166, '2025-09-27 16:26:32.664740', '2025-09-28 00:26:32.664740', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(167, '2025-09-27 22:26:32.666748', '2025-09-28 01:26:32.666748', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(168, '2025-10-23 09:26:32.678288', '2025-10-23 14:26:32.678288', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(169, '2025-10-16 09:26:32.682300', '2025-10-16 19:26:32.682300', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(170, '2025-09-23 20:26:32.682300', '2025-09-23 23:26:32.682300', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(171, '2025-09-29 22:26:32.701095', '2025-09-30 09:26:32.701095', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 33),
(172, '2025-10-17 13:26:32.701095', '2025-10-18 00:26:32.701095', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 121),
(173, '2025-09-27 03:26:32.716927', '2025-09-27 09:26:32.716927', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 55),
(174, '2025-09-26 19:26:32.716927', '2025-09-27 01:26:32.716927', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 39),
(175, '2025-10-14 13:26:32.729323', '2025-10-14 23:26:32.729323', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(176, '2025-09-27 09:26:32.736747', '2025-09-27 21:26:32.736747', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 9),
(177, '2025-09-24 14:26:32.736747', '2025-09-25 01:26:32.736747', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 69),
(178, '2025-10-01 16:26:32.750238', '2025-10-01 21:26:32.750238', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 74),
(179, '2025-10-06 18:26:32.806305', '2025-10-07 06:26:32.806305', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 38),
(180, '2025-10-01 12:26:32.885435', '2025-10-01 21:26:32.885435', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 46),
(181, '2025-10-15 15:26:32.891501', '2025-10-15 19:26:32.891501', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 24),
(182, '2025-10-04 20:26:32.929028', '2025-10-05 07:26:32.929028', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(183, '2025-10-10 10:26:32.983540', '2025-10-10 21:26:32.983540', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 70),
(184, '2025-10-06 09:26:32.991152', '2025-10-06 12:26:32.991152', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(185, '2025-10-06 05:26:32.999708', '2025-10-06 12:26:32.999708', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 82),
(186, '2025-09-24 05:26:33.007400', '2025-09-24 09:26:33.007400', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 96),
(187, '2025-10-01 17:26:33.028931', '2025-10-01 21:26:33.028931', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(188, '2025-10-12 17:26:33.035279', '2025-10-13 01:26:33.035279', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 99),
(189, '2025-09-25 05:26:33.049716', '2025-09-25 16:26:33.049716', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 18),
(190, '2025-10-20 14:26:33.058043', '2025-10-20 19:26:33.058043', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 44),
(191, '2025-10-18 15:26:33.071843', '2025-10-19 01:26:33.071843', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 107),
(192, '2025-10-09 14:26:33.078857', '2025-10-09 19:26:33.078857', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 90),
(193, '2025-09-27 20:26:33.091419', '2025-09-28 06:26:33.091419', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(194, '2025-10-03 00:26:33.102245', '2025-10-03 03:26:33.102245', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(195, '2025-09-29 19:26:33.102245', '2025-09-30 03:26:33.102245', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(196, '2025-10-03 10:26:33.113947', '2025-10-03 19:26:33.113947', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(197, '2025-10-11 09:26:33.115965', '2025-10-11 16:26:33.115965', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 105),
(198, '2025-10-18 14:26:33.115965', '2025-10-18 20:26:33.115965', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(199, '2025-10-04 19:26:33.129960', '2025-10-05 03:26:33.129960', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(200, '2025-09-27 05:26:33.133494', '2025-09-27 14:26:33.133494', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 35),
(201, '2025-10-06 17:26:33.133494', '2025-10-07 03:26:33.133494', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 114),
(202, '2025-10-06 04:26:33.150652', '2025-10-06 09:26:33.150652', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 115),
(203, '2025-10-16 09:26:33.152662', '2025-10-16 17:26:33.152662', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 64),
(204, '2025-10-19 10:26:33.166746', '2025-10-19 17:26:33.166746', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 119),
(205, '2025-09-26 17:26:33.172871', '2025-09-27 02:26:33.172871', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 103),
(206, '2025-10-07 13:26:33.180723', '2025-10-07 18:26:33.180723', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 11),
(207, '2025-10-03 04:26:33.183359', '2025-10-03 08:26:33.183359', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 70),
(208, '2025-10-04 15:26:33.183359', '2025-10-04 22:26:33.183359', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 11),
(209, '2025-10-08 13:26:33.195611', '2025-10-08 22:26:33.195611', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(210, '2025-10-16 08:26:33.200744', '2025-10-16 16:26:33.200744', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 22),
(211, '2025-09-25 17:26:33.211088', '2025-09-26 01:26:33.211088', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(212, '2025-10-07 02:26:33.218869', '2025-10-07 05:26:33.218869', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(213, '2025-10-15 14:26:33.218869', '2025-10-15 23:26:33.218869', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(214, '2025-10-10 17:26:33.229901', '2025-10-10 22:26:33.229901', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 47),
(215, '2025-09-23 22:26:33.234371', '2025-09-24 10:26:33.234371', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 122),
(216, '2025-10-19 08:26:33.240064', '2025-10-19 11:26:33.240064', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(217, '2025-09-26 01:26:33.244314', '2025-09-26 09:26:33.244314', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(218, '2025-10-06 12:26:33.248890', '2025-10-06 15:26:33.248890', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 47),
(219, '2025-09-28 15:26:33.248890', '2025-09-29 01:26:33.248890', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 78),
(220, '2025-10-05 05:26:33.248890', '2025-10-05 15:26:33.248890', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 122),
(221, '2025-09-26 12:26:33.263606', '2025-09-26 17:26:33.263606', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(222, '2025-10-05 06:26:33.269188', '2025-10-05 14:26:33.269188', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(223, '2025-10-02 01:26:33.269188', '2025-10-02 05:26:33.269188', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(224, '2025-10-16 23:26:33.269188', '2025-10-17 09:26:33.269188', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 4),
(225, '2025-10-06 11:26:33.280489', '2025-10-06 15:26:33.280489', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 67),
(226, '2025-10-18 02:26:33.287624', '2025-10-18 12:26:33.287624', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 34),
(227, '2025-10-13 03:26:33.287624', '2025-10-13 13:26:33.287624', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 28),
(228, '2025-09-26 22:26:33.287624', '2025-09-27 02:26:33.287624', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 26),
(229, '2025-09-29 16:26:33.299355', '2025-09-30 02:26:33.299355', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(230, '2025-10-19 15:26:33.299355', '2025-10-19 23:26:33.299355', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 12),
(231, '2025-10-05 16:26:33.299355', '2025-10-05 20:26:33.299355', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 86),
(232, '2025-10-11 03:26:33.299355', '2025-10-11 10:26:33.299355', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(233, '2025-09-29 16:26:33.316138', '2025-09-29 21:26:33.316138', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 109),
(234, '2025-10-05 10:26:33.316138', '2025-10-05 16:26:33.316138', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(235, '2025-09-29 22:26:33.316138', '2025-09-30 04:26:33.316138', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 16),
(236, '2025-10-08 18:26:33.333335', '2025-10-09 02:26:33.333335', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(237, '2025-10-12 05:26:33.334921', '2025-10-12 15:26:33.334921', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(238, '2025-10-10 22:26:33.334921', '2025-10-11 10:26:33.334921', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 103),
(239, '2025-09-25 20:26:33.349124', '2025-09-26 03:26:33.349124', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 114),
(240, '2025-10-16 17:26:33.352531', '2025-10-17 03:26:33.352531', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 51),
(241, '2025-10-07 07:26:33.352531', '2025-10-07 19:26:33.352531', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(242, '2025-09-28 04:26:33.360875', '2025-09-28 08:26:33.360875', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(243, '2025-10-08 15:26:33.365931', '2025-10-09 02:26:33.365931', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(244, '2025-09-28 11:26:33.365931', '2025-09-28 23:26:33.365931', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(245, '2025-10-17 22:26:33.377610', '2025-10-18 07:26:33.377610', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 24),
(246, '2025-10-22 19:26:33.382623', '2025-10-22 23:26:33.382623', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(247, '2025-09-28 03:26:33.382623', '2025-09-28 08:26:33.382623', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 67),
(248, '2025-10-04 16:26:33.395521', '2025-10-04 22:26:33.395521', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 21),
(249, '2025-10-10 03:26:33.401728', '2025-10-10 07:26:33.401728', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(250, '2025-09-30 14:26:33.412927', '2025-10-01 01:26:33.412927', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 33),
(251, '2025-09-28 14:26:33.415568', '2025-09-28 21:26:33.415568', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 36),
(252, '2025-10-10 20:26:33.415568', '2025-10-11 07:26:33.415568', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(253, '2025-09-29 12:26:33.415568', '2025-09-30 00:26:33.415568', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 83),
(254, '2025-09-29 15:26:33.432639', '2025-09-30 03:26:33.432639', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 20),
(255, '2025-10-22 13:26:33.432639', '2025-10-22 21:26:33.432639', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93);
INSERT INTO `transport_bustrip` (`id`, `departure_time`, `arrival_time`, `available_seats`, `vehicle_id`) VALUES
(256, '2025-10-23 12:26:33.432639', '2025-10-23 15:26:33.432639', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 108),
(257, '2025-10-20 18:26:33.449058', '2025-10-20 22:26:33.449058', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 106),
(258, '2025-10-14 12:26:33.449058', '2025-10-14 19:26:33.449058', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 6),
(259, '2025-09-30 12:26:33.449058', '2025-09-30 21:26:33.449058', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(260, '2025-10-13 18:26:33.466135', '2025-10-14 04:26:33.466135', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 80),
(261, '2025-10-14 11:26:33.466135', '2025-10-14 18:26:33.466135', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 114),
(262, '2025-10-03 09:26:33.478710', '2025-10-03 15:26:33.478710', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 83),
(263, '2025-10-19 15:26:33.482776', '2025-10-20 00:26:33.482776', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(264, '2025-10-07 20:26:33.482776', '2025-10-07 23:26:33.482776', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 39),
(265, '2025-10-08 07:26:33.496197', '2025-10-08 17:26:33.496197', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 21),
(266, '2025-09-30 04:26:33.498975', '2025-09-30 16:26:33.498975', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(267, '2025-10-04 16:26:33.498975', '2025-10-05 00:26:33.498975', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 19),
(268, '2025-10-21 05:26:33.517675', '2025-10-21 14:26:33.517675', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 94),
(269, '2025-10-18 05:26:33.522374', '2025-10-18 16:26:33.522374', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(270, '2025-09-27 04:26:33.532181', '2025-09-27 10:26:33.532181', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 72),
(271, '2025-09-27 02:26:33.532181', '2025-09-27 12:26:33.532181', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(272, '2025-09-27 21:26:33.549470', '2025-09-28 00:26:33.549470', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(273, '2025-10-06 13:26:33.549470', '2025-10-06 22:26:33.549470', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 38),
(274, '2025-10-20 23:26:33.565408', '2025-10-21 07:26:33.565408', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(275, '2025-10-12 17:26:33.569598', '2025-10-13 01:26:33.569598', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(276, '2025-10-17 23:26:33.571644', '2025-10-18 09:26:33.571644', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 25),
(277, '2025-10-08 09:26:33.584463', '2025-10-08 16:26:33.584463', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 66),
(278, '2025-09-23 20:26:33.588622', '2025-09-24 05:26:33.588622', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 64),
(279, '2025-10-08 01:26:33.591476', '2025-10-08 07:26:33.591476', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(280, '2025-10-04 19:26:33.604459', '2025-10-04 22:26:33.604459', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(281, '2025-10-09 13:26:33.614690', '2025-10-09 23:26:33.614690', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(282, '2025-10-10 18:26:33.619367', '2025-10-10 22:26:33.619367', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(283, '2025-09-28 02:26:33.622571', '2025-09-28 10:26:33.622571', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(284, '2025-10-06 05:26:33.624695', '2025-10-06 08:26:33.624695', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(285, '2025-09-25 12:26:33.645344', '2025-09-25 23:26:33.645344', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 52),
(286, '2025-10-05 11:26:33.654792', '2025-10-05 18:26:33.654792', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 25),
(287, '2025-10-06 10:26:33.660634', '2025-10-06 20:26:33.660634', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(288, '2025-10-11 02:26:33.666669', '2025-10-11 14:26:33.666669', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(289, '2025-10-12 21:26:33.678438', '2025-10-13 02:26:33.678438', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 88),
(290, '2025-10-06 05:26:33.684612', '2025-10-06 13:26:33.684612', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 13),
(291, '2025-10-04 22:26:33.694992', '2025-10-05 04:26:33.694992', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 72),
(292, '2025-10-10 06:26:33.703909', '2025-10-10 17:26:33.703909', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 78),
(293, '2025-09-24 19:26:33.711682', '2025-09-25 00:26:33.711682', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 6),
(294, '2025-10-04 09:26:33.720826', '2025-10-04 20:26:33.720826', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 92),
(295, '2025-09-28 13:26:33.720826', '2025-09-29 00:26:33.720826', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(296, '2025-10-04 13:26:33.733341', '2025-10-04 21:26:33.733341', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 18),
(297, '2025-10-06 13:26:33.733341', '2025-10-06 20:26:33.733341', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 21),
(298, '2025-10-04 10:26:33.733341', '2025-10-04 21:26:33.733341', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 76),
(299, '2025-10-09 16:26:33.746920', '2025-10-10 04:26:33.746920', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 69),
(300, '2025-10-08 18:26:33.746920', '2025-10-09 02:26:33.746920', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 39),
(301, '2025-10-14 21:26:33.763593', '2025-10-15 06:26:33.763593', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 43),
(302, '2025-10-03 17:26:33.765602', '2025-10-03 20:26:33.765602', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(303, '2025-10-09 02:26:33.765602', '2025-10-09 14:26:33.765602', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 77),
(304, '2025-10-01 17:26:33.778528', '2025-10-01 20:26:33.778528', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 74),
(305, '2025-10-08 23:26:33.785983', '2025-10-09 10:26:33.785983', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(306, '2025-10-17 13:26:33.785983', '2025-10-17 22:26:33.785983', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 81),
(307, '2025-10-20 15:26:33.798967', '2025-10-20 21:26:33.798967', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 19),
(308, '2025-10-12 16:26:33.798967', '2025-10-12 20:26:33.798967', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(309, '2025-09-24 08:26:33.810552', '2025-09-24 16:26:33.810552', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 25),
(310, '2025-09-28 07:26:33.815458', '2025-09-28 13:26:33.815458', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(311, '2025-10-10 13:26:33.815458', '2025-10-10 23:26:33.815458', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(312, '2025-10-21 17:26:33.827205', '2025-10-21 20:26:33.827205', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(313, '2025-09-28 10:26:33.836165', '2025-09-28 16:26:33.836165', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 91),
(314, '2025-10-04 15:26:33.836165', '2025-10-05 01:26:33.836165', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 72),
(315, '2025-10-06 04:26:33.848736', '2025-10-06 09:26:33.848736', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(316, '2025-10-23 11:26:33.848736', '2025-10-23 19:26:33.848736', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(317, '2025-10-05 15:26:33.848736', '2025-10-05 22:26:33.848736', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 70),
(318, '2025-10-09 00:26:33.865714', '2025-10-09 06:26:33.865714', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(319, '2025-10-11 03:26:33.865714', '2025-10-11 09:26:33.865714', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 36),
(320, '2025-10-03 03:26:33.865714', '2025-10-03 09:26:33.865714', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 121),
(321, '2025-10-16 09:26:33.883333', '2025-10-16 17:26:33.883333', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 89),
(322, '2025-10-05 11:26:33.886572', '2025-10-05 18:26:33.886572', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 62),
(323, '2025-09-27 12:26:33.893840', '2025-09-27 23:26:33.893840', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(324, '2025-10-22 06:26:33.902446', '2025-10-22 14:26:33.902446', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 49),
(325, '2025-10-17 22:26:33.902446', '2025-10-18 05:26:33.902446', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 123),
(326, '2025-10-03 16:26:33.902446', '2025-10-03 20:26:33.902446', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 6),
(327, '2025-10-23 08:26:33.915517', '2025-10-23 15:26:33.915517', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(328, '2025-10-09 00:26:33.922705', '2025-10-09 06:26:33.922705', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 96),
(329, '2025-10-11 02:26:33.929192', '2025-10-11 13:26:33.929192', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 106),
(330, '2025-10-01 22:26:33.934069', '2025-10-02 02:26:33.934069', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 90),
(331, '2025-10-17 12:26:33.934069', '2025-10-17 18:26:33.934069', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(332, '2025-09-25 15:26:33.949712', '2025-09-26 02:26:33.949712', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(333, '2025-10-14 01:26:33.949712', '2025-10-14 04:26:33.949712', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(334, '2025-10-07 04:26:33.962720', '2025-10-07 14:26:33.962720', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 13),
(335, '2025-10-14 22:26:33.965665', '2025-10-15 01:26:33.965665', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 13),
(336, '2025-10-22 23:26:33.965665', '2025-10-23 08:26:33.965665', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(337, '2025-10-23 09:26:33.982114', '2025-10-23 19:26:33.982114', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(338, '2025-09-30 03:26:33.982114', '2025-09-30 11:26:33.982114', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(339, '2025-10-13 19:26:33.994654', '2025-10-13 23:26:33.994654', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 37),
(340, '2025-10-12 01:26:33.998825', '2025-10-12 12:26:33.998825', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(341, '2025-10-16 19:26:33.998825', '2025-10-17 00:26:33.998825', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 95),
(342, '2025-10-21 23:26:34.015662', '2025-10-22 02:26:34.015662', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(343, '2025-10-06 09:26:34.015662', '2025-10-06 14:26:34.015662', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 108),
(344, '2025-10-17 03:26:34.028130', '2025-10-17 06:26:34.028130', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(345, '2025-10-03 12:26:34.031998', '2025-10-04 00:26:34.031998', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(346, '2025-10-23 04:26:34.031998', '2025-10-23 11:26:34.031998', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 14),
(347, '2025-10-14 11:26:34.048745', '2025-10-14 22:26:34.048745', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(348, '2025-10-21 22:26:34.048745', '2025-10-22 09:26:34.048745', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 64),
(349, '2025-10-02 00:26:34.048745', '2025-10-02 04:26:34.048745', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(350, '2025-09-29 17:26:34.065359', '2025-09-30 03:26:34.065359', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 43),
(351, '2025-10-02 16:26:34.065359', '2025-10-02 21:26:34.065359', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 83),
(352, '2025-10-17 04:26:34.082268', '2025-10-17 11:26:34.082268', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(353, '2025-10-15 00:26:34.082268', '2025-10-15 05:26:34.082268', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 73),
(354, '2025-10-21 14:26:34.099009', '2025-10-21 23:26:34.099009', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(355, '2025-10-07 10:26:34.099009', '2025-10-07 18:26:34.099009', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 106),
(356, '2025-10-06 15:26:34.113696', '2025-10-06 19:26:34.113696', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 12),
(357, '2025-09-28 09:26:34.120487', '2025-09-28 17:26:34.120487', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 24),
(358, '2025-09-30 18:26:34.126884', '2025-10-01 01:26:34.126884', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(359, '2025-10-01 08:26:34.132013', '2025-10-01 15:26:34.132013', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 50),
(360, '2025-10-04 03:26:34.143755', '2025-10-04 15:26:34.143755', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 123),
(361, '2025-10-11 18:26:34.149164', '2025-10-12 01:26:34.149164', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(362, '2025-10-05 16:26:34.149164', '2025-10-05 22:26:34.149164', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 84),
(363, '2025-10-14 21:26:34.165944', '2025-10-15 07:26:34.165944', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(364, '2025-09-29 06:26:34.165944', '2025-09-29 17:26:34.165944', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(365, '2025-10-22 16:26:34.179121', '2025-10-22 23:26:34.179121', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 119),
(366, '2025-09-27 14:26:34.182276', '2025-09-27 21:26:34.182276', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 89),
(367, '2025-10-13 01:26:34.182276', '2025-10-13 07:26:34.182276', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(368, '2025-09-28 09:26:34.198688', '2025-09-28 14:26:34.198688', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 123),
(369, '2025-10-17 13:26:34.198688', '2025-10-17 21:26:34.198688', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(370, '2025-10-16 11:26:34.215663', '2025-10-16 21:26:34.215663', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(371, '2025-10-11 15:26:34.215663', '2025-10-11 21:26:34.215663', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 97),
(372, '2025-10-01 15:26:34.232063', '2025-10-02 03:26:34.232063', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(373, '2025-10-18 20:26:34.232063', '2025-10-19 07:26:34.232063', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(374, '2025-10-10 16:26:34.245587', '2025-10-11 00:26:34.245587', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(375, '2025-10-23 12:26:34.248850', '2025-10-23 16:26:34.248850', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 10),
(376, '2025-10-20 11:26:34.260180', '2025-10-20 22:26:34.260180', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(377, '2025-10-12 11:26:34.265439', '2025-10-12 16:26:34.265439', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 26),
(378, '2025-10-04 10:26:34.265439', '2025-10-04 20:26:34.265439', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 22),
(379, '2025-10-15 00:26:34.282048', '2025-10-15 12:26:34.282048', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 15),
(380, '2025-09-26 10:26:34.282048', '2025-09-26 20:26:34.282048', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 63),
(381, '2025-09-25 08:26:34.296818', '2025-09-25 13:26:34.296818', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(382, '2025-10-07 08:26:34.298828', '2025-10-07 20:26:34.298828', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 66),
(383, '2025-10-11 08:26:34.298828', '2025-10-11 15:26:34.298828', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(384, '2025-09-24 06:26:34.316334', '2025-09-24 13:26:34.316334', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(385, '2025-09-24 17:26:34.316334', '2025-09-24 23:26:34.316334', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 105),
(386, '2025-09-25 19:26:34.332322', '2025-09-26 04:26:34.332322', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 75),
(387, '2025-10-15 20:26:34.332322', '2025-10-16 07:26:34.332322', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 45),
(388, '2025-10-22 20:26:34.348679', '2025-10-23 06:26:34.348679', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(389, '2025-10-03 07:26:34.348679', '2025-10-03 12:26:34.348679', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(390, '2025-09-28 14:26:34.365029', '2025-09-28 23:26:34.365029', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 99),
(391, '2025-10-22 06:26:34.365029', '2025-10-22 16:26:34.365029', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 48),
(392, '2025-10-23 06:26:34.380059', '2025-10-23 15:26:34.380059', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 112),
(393, '2025-10-15 15:26:34.382070', '2025-10-16 02:26:34.382070', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 11),
(394, '2025-10-14 05:26:34.382070', '2025-10-14 09:26:34.382070', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 18),
(395, '2025-10-11 06:26:34.402941', '2025-10-11 17:26:34.402941', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 23),
(396, '2025-10-17 01:26:34.402941', '2025-10-17 04:26:34.402941', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(397, '2025-09-24 03:26:34.431933', '2025-09-24 13:26:34.431933', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 97),
(398, '2025-10-17 11:26:34.436287', '2025-10-17 20:26:34.436287', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(399, '2025-10-06 01:26:34.448519', '2025-10-06 07:26:34.448519', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 69),
(400, '2025-10-04 22:26:34.448519', '2025-10-05 05:26:34.448519', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(401, '2025-10-23 17:26:34.461893', '2025-10-23 21:26:34.461893', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 25),
(402, '2025-10-19 15:26:34.466723', '2025-10-20 00:26:34.466723', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(403, '2025-10-17 18:26:34.476701', '2025-10-18 00:26:34.476701', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 79),
(404, '2025-09-25 21:26:34.481882', '2025-09-26 09:26:34.481882', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 27),
(405, '2025-10-08 13:26:34.481882', '2025-10-08 16:26:34.481882', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 5),
(406, '2025-10-16 19:26:34.498443', '2025-10-17 04:26:34.498443', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(407, '2025-10-01 11:26:34.498443', '2025-10-01 17:26:34.498443', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 57),
(408, '2025-10-20 19:26:34.515174', '2025-10-21 00:26:34.515174', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 97),
(409, '2025-10-03 01:26:34.515174', '2025-10-03 13:26:34.515174', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(410, '2025-10-12 13:26:34.532003', '2025-10-12 21:26:34.532003', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 41),
(411, '2025-10-02 22:26:34.536120', '2025-10-03 09:26:34.536120', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 31),
(412, '2025-10-07 03:26:34.546141', '2025-10-07 10:26:34.546141', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 29),
(413, '2025-10-11 12:26:34.548691', '2025-10-11 17:26:34.548691', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 8),
(414, '2025-10-15 07:26:34.562147', '2025-10-15 18:26:34.562147', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 81),
(415, '2025-09-25 05:26:34.565076', '2025-09-25 14:26:34.565076', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 64),
(416, '2025-10-10 04:26:34.565076', '2025-10-10 13:26:34.565076', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 101),
(417, '2025-09-28 03:26:34.581457', '2025-09-28 12:26:34.581457', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(418, '2025-10-18 11:26:34.581457', '2025-10-18 21:26:34.581457', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 24),
(419, '2025-10-21 01:26:34.596183', '2025-10-21 08:26:34.596183', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 31),
(420, '2025-10-15 22:26:34.596183', '2025-10-16 08:26:34.596183', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 110),
(421, '2025-09-25 11:26:34.609856', '2025-09-25 20:26:34.609856', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 118),
(422, '2025-10-11 10:26:34.614897', '2025-10-11 15:26:34.614897', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 54),
(423, '2025-10-01 02:26:34.614897', '2025-10-01 08:26:34.614897', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 50),
(424, '2025-10-13 20:26:34.632029', '2025-10-14 06:26:34.632029', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 43),
(425, '2025-10-04 20:26:34.637825', '2025-10-05 07:26:34.637825', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 109),
(426, '2025-10-20 00:26:34.645234', '2025-10-20 03:26:34.645234', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(427, '2025-10-06 15:26:34.650193', '2025-10-07 03:26:34.650193', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 35),
(428, '2025-09-24 20:26:34.650193', '2025-09-25 02:26:34.650193', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 78),
(429, '2025-10-18 12:26:34.664764', '2025-10-18 23:26:34.664764', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 103),
(430, '2025-10-09 00:26:34.664764', '2025-10-09 08:26:34.664764', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 28),
(431, '2025-10-22 18:26:34.678847', '2025-10-23 00:26:34.678847', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 39),
(432, '2025-09-30 17:26:34.681795', '2025-09-30 21:26:34.681795', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 120),
(433, '2025-10-18 09:26:34.693064', '2025-10-18 15:26:34.693064', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 96),
(434, '2025-10-13 16:26:34.697778', '2025-10-13 22:26:34.697778', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 90),
(435, '2025-10-23 01:26:34.697778', '2025-10-23 12:26:34.697778', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 51),
(436, '2025-10-18 03:26:34.712689', '2025-10-18 12:26:34.712689', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 42),
(437, '2025-10-11 14:26:34.712689', '2025-10-11 22:26:34.712689', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 60),
(438, '2025-10-02 05:26:34.732274', '2025-10-02 16:26:34.732274', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 40),
(439, '2025-10-09 08:26:34.732274', '2025-10-09 12:26:34.732274', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 113),
(440, '2025-10-17 09:26:34.748339', '2025-10-17 17:26:34.748339', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 103),
(441, '2025-09-30 05:26:34.748339', '2025-09-30 13:26:34.748339', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 118),
(442, '2025-09-25 12:26:34.764721', '2025-09-25 18:26:34.764721', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(443, '2025-09-27 18:26:34.764721', '2025-09-28 01:26:34.764721', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 95),
(444, '2025-10-23 12:26:34.781613', '2025-10-24 00:26:34.781613', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(445, '2025-10-07 03:26:34.781613', '2025-10-07 08:26:34.781613', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(446, '2025-10-04 01:26:34.798372', '2025-10-04 10:26:34.798372', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 26),
(447, '2025-10-20 01:26:34.798372', '2025-10-20 11:26:34.798372', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 73),
(448, '2025-10-14 15:26:34.812788', '2025-10-14 23:26:34.812788', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(449, '2025-10-18 09:26:34.812788', '2025-10-18 19:26:34.812788', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 33),
(450, '2025-09-29 17:26:34.829492', '2025-09-30 01:26:34.829492', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 59),
(451, '2025-09-28 17:26:34.834889', '2025-09-29 04:26:34.834889', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 22),
(452, '2025-09-29 11:26:34.834889', '2025-09-29 14:26:34.834889', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 63),
(453, '2025-09-24 20:26:34.845630', '2025-09-24 23:26:34.845630', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 68),
(454, '2025-09-24 07:26:34.845630', '2025-09-24 12:26:34.845630', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 98),
(455, '2025-10-14 01:26:34.864553', '2025-10-14 05:26:34.864553', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 108),
(456, '2025-09-27 18:26:34.864553', '2025-09-28 00:26:34.864553', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 91),
(457, '2025-10-08 05:26:34.881622', '2025-10-08 08:26:34.881622', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(458, '2025-10-14 15:26:34.881622', '2025-10-15 03:26:34.881622', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 80),
(459, '2025-10-09 15:26:34.894291', '2025-10-10 01:26:34.894291', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 117),
(460, '2025-09-24 11:26:34.898119', '2025-09-24 22:26:34.898119', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(461, '2025-09-23 18:26:34.898119', '2025-09-24 05:26:34.898119', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(462, '2025-10-02 11:26:34.916326', '2025-10-02 18:26:34.916326', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 93),
(463, '2025-10-10 16:26:34.916326', '2025-10-11 01:26:34.916326', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(464, '2025-10-22 23:26:34.931754', '2025-10-23 03:26:34.931754', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 104),
(465, '2025-09-27 10:26:34.931754', '2025-09-27 15:26:34.931754', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 118),
(466, '2025-09-30 13:26:34.947945', '2025-10-01 00:26:34.947945', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 31),
(467, '2025-10-20 05:26:34.953504', '2025-10-20 12:26:34.953504', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 33),
(468, '2025-10-05 20:26:34.964733', '2025-10-06 04:26:34.964733', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(469, '2025-10-06 08:26:34.966244', '2025-10-06 20:26:34.966244', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 123),
(470, '2025-10-16 01:26:34.976085', '2025-10-16 08:26:34.976085', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 32),
(471, '2025-10-19 20:26:34.981562', '2025-10-19 23:26:34.981562', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 88),
(472, '2025-10-06 06:26:34.986387', '2025-10-06 15:26:34.986387', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 12),
(473, '2025-10-08 19:26:34.997981', '2025-10-08 22:26:34.997981', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 71),
(474, '2025-09-28 20:26:34.997981', '2025-09-29 06:26:34.997981', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 90),
(475, '2025-10-07 14:26:35.014850', '2025-10-07 22:26:35.014850', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 109),
(476, '2025-10-20 21:26:35.014850', '2025-10-21 08:26:35.014850', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 73),
(477, '2025-09-25 01:26:35.029402', '2025-09-25 07:26:35.029402', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 118),
(478, '2025-10-21 16:26:35.031411', '2025-10-22 04:26:35.031411', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 116),
(479, '2025-10-01 19:26:35.042799', '2025-10-01 23:26:35.042799', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 61),
(480, '2025-10-23 02:26:35.052037', '2025-10-23 13:26:35.052037', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 88),
(481, '2025-10-14 19:26:35.052037', '2025-10-15 00:26:35.052037', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 73),
(482, '2025-10-21 04:26:35.064344', '2025-10-21 07:26:35.064344', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 119),
(483, '2025-10-11 22:26:35.064344', '2025-10-12 07:26:35.064344', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 27),
(484, '2025-09-26 03:26:35.077196', '2025-09-26 08:26:35.077196', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 119),
(485, '2025-10-01 12:26:35.086368', '2025-10-01 21:26:35.086368', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 73),
(486, '2025-10-22 11:26:35.086368', '2025-10-22 19:26:35.086368', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 87),
(487, '2025-10-18 17:26:35.098888', '2025-10-18 22:26:35.098888', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 50),
(488, '2025-10-16 17:26:35.098888', '2025-10-16 21:26:35.098888', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 102),
(489, '2025-10-17 05:26:35.114453', '2025-10-17 08:26:35.114453', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 65),
(490, '2025-10-07 01:26:35.120745', '2025-10-07 05:26:35.120745', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 13),
(491, '2025-10-13 13:26:35.129114', '2025-10-14 01:26:35.129114', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 44),
(492, '2025-10-18 04:26:35.129114', '2025-10-18 07:26:35.129114', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 51),
(493, '2025-10-02 08:26:35.140074', '2025-10-02 18:26:35.140074', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 82),
(494, '2025-10-05 11:26:35.148150', '2025-10-05 20:26:35.148150', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 30),
(495, '2025-09-29 15:26:35.154417', '2025-09-30 03:26:35.154417', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(496, '2025-10-05 20:26:35.165428', '2025-10-06 08:26:35.165428', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 85),
(497, '2025-10-19 01:26:35.165428', '2025-10-19 05:26:35.165428', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 38),
(498, '2025-10-01 22:26:35.179405', '2025-10-02 07:26:35.179405', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 11),
(499, '2025-10-19 14:26:35.188502', '2025-10-19 19:26:35.188502', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 92),
(500, '2025-10-06 04:26:35.193766', '2025-10-06 12:26:35.193766', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 95),
(501, '2025-09-25 18:26:35.197786', '2025-09-26 01:26:35.197786', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 14),
(502, '2025-10-05 02:26:35.197786', '2025-10-05 06:26:35.197786', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 57),
(503, '2025-09-25 23:26:35.214717', '2025-09-26 08:26:35.214717', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 17),
(504, '2025-10-11 11:26:35.225848', '2025-10-11 22:26:35.225848', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 58),
(505, '2025-09-26 18:26:35.231055', '2025-09-26 22:26:35.231055', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 53),
(506, '2025-10-10 20:26:35.242643', '2025-10-11 08:26:35.242643', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 46),
(507, '2025-10-19 04:26:35.247801', '2025-10-19 13:26:35.247801', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 77),
(508, '2025-10-03 07:26:35.247801', '2025-10-03 16:26:35.247801', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(509, '2025-09-26 17:26:35.264511', '2025-09-27 04:26:35.264511', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 100),
(510, '2025-10-01 12:26:35.264511', '2025-10-01 23:26:35.264511', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 116),
(511, '2025-10-15 06:26:35.281239', '2025-10-15 11:26:35.281239', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 22);
INSERT INTO `transport_bustrip` (`id`, `departure_time`, `arrival_time`, `available_seats`, `vehicle_id`) VALUES
(512, '2025-10-02 03:26:35.281239', '2025-10-02 10:26:35.281239', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 18),
(513, '2025-09-27 20:26:35.295979', '2025-09-28 01:26:35.295979', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 64),
(514, '2025-10-02 07:26:35.297990', '2025-10-02 14:26:35.297990', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 56),
(515, '2025-10-18 20:26:35.309274', '2025-10-19 04:26:35.309274', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 62),
(516, '2025-10-01 17:26:35.314494', '2025-10-02 03:26:35.314494', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 33),
(517, '2025-10-13 00:26:35.314494', '2025-10-13 10:26:35.314494', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 77),
(518, '2025-09-28 03:26:35.331098', '2025-09-28 06:26:35.331098', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\"]', 14),
(519, '2025-09-23 19:21:37.432643', '2025-09-24 01:21:37.432643', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(520, '2025-09-24 19:21:37.436646', '2025-09-25 01:21:37.436646', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(521, '2025-09-25 19:21:37.451611', '2025-09-26 01:21:37.451611', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\", \"10A\", \"10B\", \"10C\", \"10D\"]', 1),
(522, '2025-09-23 19:21:37.465190', '2025-09-24 01:21:37.465190', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(523, '2025-09-24 19:21:37.467197', '2025-09-25 01:21:37.467197', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(524, '2025-09-25 19:21:37.483192', '2025-09-26 01:21:37.483192', '[\"1A\", \"1B\", \"1C\", \"1D\", \"2A\", \"2B\", \"2C\", \"2D\", \"3A\", \"3B\", \"3C\", \"3D\", \"4A\", \"4B\", \"4C\", \"4D\", \"5A\", \"5B\", \"5C\", \"5D\", \"6A\", \"6B\", \"6C\", \"6D\", \"7A\", \"7B\", \"7C\", \"7D\", \"8A\", \"8B\", \"8C\", \"8D\", \"9A\", \"9B\", \"9C\", \"9D\"]', 2),
(525, '2025-09-23 19:21:37.494766', '2025-09-24 01:21:37.494766', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(526, '2025-09-24 19:21:37.499034', '2025-09-25 01:21:37.499034', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3),
(527, '2025-09-25 19:21:37.512947', '2025-09-26 01:21:37.512947', '[\"1A\", \"1B\", \"1C\", \"1D\"]', 3);

-- --------------------------------------------------------

--
-- Table structure for table `transport_vehicle`
--

CREATE TABLE `transport_vehicle` (
  `id` bigint(20) NOT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `seat_count` int(10) UNSIGNED NOT NULL CHECK (`seat_count` >= 0),
  `price_per_seat` decimal(10,2) NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`features`)),
  `destination_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport_vehicle`
--

INSERT INTO `transport_vehicle` (`id`, `vehicle_type`, `name`, `seat_count`, `price_per_seat`, `features`, `destination_id`, `vendor_id`) VALUES
(1, 'BUS', 'CXB Express', 40, 8.00, '[\"AC\", \"USB\"]', 1, 1),
(2, 'BUS', 'Sylhet Express', 36, 7.50, '[\"AC\", \"USB\"]', 2, 1),
(3, 'CAR', 'Dhaka Sedan', 4, 25.00, '[\"AC\", \"USB\"]', 5, 1),
(4, 'CAR', 'BD Spot 7 CAR #1', 4, 7.90, '[\"AC\", \"USB\"]', 17, 2),
(5, 'CAR', 'BD Spot 40 CAR #2', 4, 26.62, '[\"AC\", \"USB\"]', 50, 2),
(6, 'BUS', 'BD Spot 43 BUS #3', 40, 21.44, '[\"AC\", \"USB\"]', 53, 2),
(7, 'CAR', 'BD Spot 25 CAR #4', 4, 15.33, '[\"AC\", \"USB\"]', 35, 2),
(8, 'MBUS', 'BD Spot 3 MBUS #5', 12, 14.04, '[\"AC\", \"USB\"]', 13, 2),
(9, 'CAR', 'BD Spot 39 CAR #6', 4, 20.64, '[\"AC\", \"USB\"]', 49, 2),
(10, 'BUS', 'BD Spot 39 BUS #7', 40, 10.09, '[\"AC\", \"USB\"]', 49, 2),
(11, 'BUS', 'BD Spot 26 BUS #8', 40, 28.19, '[\"AC\", \"USB\"]', 36, 2),
(12, 'MBUS', 'BD Spot 19 MBUS #9', 12, 17.12, '[\"AC\", \"USB\"]', 29, 2),
(13, 'MBUS', 'Sylhet MBUS #10', 12, 20.22, '[\"AC\", \"USB\"]', 2, 2),
(14, 'MBUS', 'BD Spot 6 MBUS #11', 12, 8.96, '[\"AC\", \"USB\"]', 16, 2),
(15, 'BUS', 'BD Spot 26 BUS #12', 40, 18.81, '[\"AC\", \"USB\"]', 36, 2),
(16, 'BUS', 'Chittagong BUS #13', 40, 29.81, '[\"AC\", \"USB\"]', 6, 2),
(17, 'BUS', 'BD Spot 49 BUS #14', 40, 16.54, '[\"AC\", \"USB\"]', 59, 2),
(18, 'MBUS', 'Rajshahi MBUS #15', 12, 25.80, '[\"AC\", \"USB\"]', 8, 2),
(19, 'MBUS', 'BD Spot 22 MBUS #16', 12, 12.30, '[\"AC\", \"USB\"]', 32, 2),
(20, 'CAR', 'BD Spot 36 CAR #17', 4, 15.39, '[\"AC\", \"USB\"]', 46, 2),
(21, 'CAR', 'BD Spot 21 CAR #18', 4, 11.09, '[\"AC\", \"USB\"]', 31, 2),
(22, 'BUS', 'BD Spot 26 BUS #19', 40, 14.59, '[\"AC\", \"USB\"]', 36, 2),
(23, 'MBUS', 'BD Spot 49 MBUS #20', 12, 17.71, '[\"AC\", \"USB\"]', 59, 2),
(24, 'BUS', 'BD Spot 47 BUS #21', 40, 26.60, '[\"AC\", \"USB\"]', 57, 2),
(25, 'CAR', 'BD Spot 8 CAR #22', 4, 13.50, '[\"AC\", \"USB\"]', 18, 2),
(26, 'MBUS', 'BD Spot 41 MBUS #23', 12, 11.68, '[\"AC\", \"USB\"]', 51, 2),
(27, 'CAR', 'Cox\'s Bazar CAR #24', 4, 23.15, '[\"AC\", \"USB\"]', 1, 2),
(28, 'MBUS', 'BD Spot 44 MBUS #25', 12, 19.50, '[\"AC\", \"USB\"]', 54, 2),
(29, 'CAR', 'BD Spot 33 CAR #26', 4, 26.63, '[\"AC\", \"USB\"]', 43, 2),
(30, 'MBUS', 'BD Spot 19 MBUS #27', 12, 17.11, '[\"AC\", \"USB\"]', 29, 2),
(31, 'MBUS', 'BD Spot 12 MBUS #28', 12, 24.07, '[\"AC\", \"USB\"]', 22, 2),
(32, 'CAR', 'BD Spot 15 CAR #29', 4, 28.32, '[\"AC\", \"USB\"]', 25, 2),
(33, 'BUS', 'BD Spot 46 BUS #30', 40, 29.52, '[\"AC\", \"USB\"]', 56, 2),
(34, 'MBUS', 'BD Spot 6 MBUS #31', 12, 14.57, '[\"AC\", \"USB\"]', 16, 2),
(35, 'CAR', 'BD Spot 45 CAR #32', 4, 6.09, '[\"AC\", \"USB\"]', 55, 2),
(36, 'CAR', 'BD Spot 38 CAR #33', 4, 22.63, '[\"AC\", \"USB\"]', 48, 2),
(37, 'CAR', 'BD Spot 42 CAR #34', 4, 14.65, '[\"AC\", \"USB\"]', 52, 2),
(38, 'MBUS', 'BD Spot 33 MBUS #35', 12, 29.52, '[\"AC\", \"USB\"]', 43, 2),
(39, 'BUS', 'BD Spot 22 BUS #36', 40, 8.16, '[\"AC\", \"USB\"]', 32, 2),
(40, 'CAR', 'BD Spot 28 CAR #37', 4, 26.74, '[\"AC\", \"USB\"]', 38, 2),
(41, 'CAR', 'BD Spot 46 CAR #38', 4, 7.49, '[\"AC\", \"USB\"]', 56, 2),
(42, 'CAR', 'BD Spot 49 CAR #39', 4, 5.38, '[\"AC\", \"USB\"]', 59, 2),
(43, 'CAR', 'Kuakata CAR #40', 4, 26.77, '[\"AC\", \"USB\"]', 10, 2),
(44, 'BUS', 'Kuakata BUS #41', 40, 16.74, '[\"AC\", \"USB\"]', 10, 2),
(45, 'CAR', 'BD Spot 7 CAR #42', 4, 20.58, '[\"AC\", \"USB\"]', 17, 2),
(46, 'MBUS', 'BD Spot 16 MBUS #43', 12, 7.01, '[\"AC\", \"USB\"]', 26, 2),
(47, 'MBUS', 'BD Spot 12 MBUS #44', 12, 26.48, '[\"AC\", \"USB\"]', 22, 2),
(48, 'CAR', 'BD Spot 15 CAR #45', 4, 20.67, '[\"AC\", \"USB\"]', 25, 2),
(49, 'CAR', 'BD Spot 47 CAR #46', 4, 26.81, '[\"AC\", \"USB\"]', 57, 2),
(50, 'MBUS', 'Bandarban MBUS #47', 12, 6.71, '[\"AC\", \"USB\"]', 3, 2),
(51, 'MBUS', 'BD Spot 31 MBUS #48', 12, 28.02, '[\"AC\", \"USB\"]', 41, 2),
(52, 'MBUS', 'BD Spot 5 MBUS #49', 12, 7.26, '[\"AC\", \"USB\"]', 15, 2),
(53, 'MBUS', 'Khulna MBUS #50', 12, 22.60, '[\"AC\", \"USB\"]', 7, 2),
(54, 'CAR', 'Khulna CAR #51', 4, 9.16, '[\"AC\", \"USB\"]', 7, 2),
(55, 'BUS', 'BD Spot 10 BUS #52', 40, 6.15, '[\"AC\", \"USB\"]', 20, 2),
(56, 'BUS', 'BD Spot 41 BUS #53', 40, 12.33, '[\"AC\", \"USB\"]', 51, 2),
(57, 'CAR', 'BD Spot 14 CAR #54', 4, 8.64, '[\"AC\", \"USB\"]', 24, 2),
(58, 'CAR', 'BD Spot 24 CAR #55', 4, 19.15, '[\"AC\", \"USB\"]', 34, 2),
(59, 'BUS', 'BD Spot 41 BUS #56', 40, 9.25, '[\"AC\", \"USB\"]', 51, 2),
(60, 'MBUS', 'Chittagong MBUS #57', 12, 26.77, '[\"AC\", \"USB\"]', 6, 2),
(61, 'MBUS', 'BD Spot 30 MBUS #58', 12, 11.02, '[\"AC\", \"USB\"]', 40, 2),
(62, 'MBUS', 'BD Spot 49 MBUS #59', 12, 8.58, '[\"AC\", \"USB\"]', 59, 2),
(63, 'MBUS', 'BD Spot 20 MBUS #60', 12, 11.35, '[\"AC\", \"USB\"]', 30, 2),
(64, 'MBUS', 'BD Spot 7 MBUS #61', 12, 5.23, '[\"AC\", \"USB\"]', 17, 2),
(65, 'CAR', 'BD Spot 42 CAR #62', 4, 27.53, '[\"AC\", \"USB\"]', 52, 2),
(66, 'MBUS', 'BD Spot 34 MBUS #63', 12, 8.95, '[\"AC\", \"USB\"]', 44, 2),
(67, 'CAR', 'BD Spot 19 CAR #64', 4, 29.69, '[\"AC\", \"USB\"]', 29, 2),
(68, 'MBUS', 'BD Spot 10 MBUS #65', 12, 29.05, '[\"AC\", \"USB\"]', 20, 2),
(69, 'CAR', 'BD Spot 35 CAR #66', 4, 16.42, '[\"AC\", \"USB\"]', 45, 2),
(70, 'BUS', 'BD Spot 10 BUS #67', 40, 29.98, '[\"AC\", \"USB\"]', 20, 2),
(71, 'CAR', 'BD Spot 45 CAR #68', 4, 7.67, '[\"AC\", \"USB\"]', 55, 2),
(72, 'MBUS', 'BD Spot 15 MBUS #69', 12, 13.97, '[\"AC\", \"USB\"]', 25, 2),
(73, 'MBUS', 'BD Spot 9 MBUS #70', 12, 12.38, '[\"AC\", \"USB\"]', 19, 2),
(74, 'MBUS', 'BD Spot 44 MBUS #71', 12, 14.90, '[\"AC\", \"USB\"]', 54, 2),
(75, 'MBUS', 'Cox\'s Bazar MBUS #72', 12, 26.63, '[\"AC\", \"USB\"]', 1, 2),
(76, 'MBUS', 'BD Spot 40 MBUS #73', 12, 29.34, '[\"AC\", \"USB\"]', 50, 2),
(77, 'MBUS', 'BD Spot 49 MBUS #74', 12, 23.63, '[\"AC\", \"USB\"]', 59, 2),
(78, 'CAR', 'BD Spot 44 CAR #75', 4, 24.39, '[\"AC\", \"USB\"]', 54, 2),
(79, 'MBUS', 'BD Spot 5 MBUS #76', 12, 25.05, '[\"AC\", \"USB\"]', 15, 2),
(80, 'MBUS', 'BD Spot 5 MBUS #77', 12, 9.75, '[\"AC\", \"USB\"]', 15, 2),
(81, 'MBUS', 'BD Spot 7 MBUS #78', 12, 23.89, '[\"AC\", \"USB\"]', 17, 2),
(82, 'MBUS', 'BD Spot 40 MBUS #79', 12, 22.02, '[\"AC\", \"USB\"]', 50, 2),
(83, 'MBUS', 'Rangamati MBUS #80', 12, 7.43, '[\"AC\", \"USB\"]', 9, 2),
(84, 'MBUS', 'BD Spot 31 MBUS #81', 12, 5.99, '[\"AC\", \"USB\"]', 41, 2),
(85, 'CAR', 'BD Spot 41 CAR #82', 4, 5.83, '[\"AC\", \"USB\"]', 51, 2),
(86, 'MBUS', 'BD Spot 14 MBUS #83', 12, 8.29, '[\"AC\", \"USB\"]', 24, 2),
(87, 'CAR', 'BD Spot 49 CAR #84', 4, 13.17, '[\"AC\", \"USB\"]', 59, 2),
(88, 'BUS', 'BD Spot 17 BUS #85', 40, 10.02, '[\"AC\", \"USB\"]', 27, 2),
(89, 'MBUS', 'BD Spot 41 MBUS #86', 12, 26.91, '[\"AC\", \"USB\"]', 51, 2),
(90, 'MBUS', 'BD Spot 14 MBUS #87', 12, 17.54, '[\"AC\", \"USB\"]', 24, 2),
(91, 'BUS', 'BD Spot 8 BUS #88', 40, 11.42, '[\"AC\", \"USB\"]', 18, 2),
(92, 'CAR', 'BD Spot 43 CAR #89', 4, 29.18, '[\"AC\", \"USB\"]', 53, 2),
(93, 'MBUS', 'BD Spot 9 MBUS #90', 12, 26.76, '[\"AC\", \"USB\"]', 19, 2),
(94, 'BUS', 'BD Spot 42 BUS #91', 40, 16.71, '[\"AC\", \"USB\"]', 52, 2),
(95, 'BUS', 'Dhaka BUS #92', 40, 23.85, '[\"AC\", \"USB\"]', 5, 2),
(96, 'MBUS', 'BD Spot 5 MBUS #93', 12, 23.11, '[\"AC\", \"USB\"]', 15, 2),
(97, 'MBUS', 'BD Spot 16 MBUS #94', 12, 14.14, '[\"AC\", \"USB\"]', 26, 2),
(98, 'CAR', 'BD Spot 41 CAR #95', 4, 5.35, '[\"AC\", \"USB\"]', 51, 2),
(99, 'BUS', 'BD Spot 25 BUS #96', 40, 16.37, '[\"AC\", \"USB\"]', 35, 2),
(100, 'MBUS', 'BD Spot 34 MBUS #97', 12, 21.81, '[\"AC\", \"USB\"]', 44, 2),
(101, 'CAR', 'BD Spot 28 CAR #98', 4, 25.56, '[\"AC\", \"USB\"]', 38, 2),
(102, 'BUS', 'BD Spot 14 BUS #99', 40, 21.87, '[\"AC\", \"USB\"]', 24, 2),
(103, 'BUS', 'BD Spot 21 BUS #100', 40, 20.49, '[\"AC\", \"USB\"]', 31, 2),
(104, 'CAR', 'BD Spot 26 CAR #101', 4, 27.88, '[\"AC\", \"USB\"]', 36, 2),
(105, 'MBUS', 'BD Spot 5 MBUS #102', 12, 6.58, '[\"AC\", \"USB\"]', 15, 2),
(106, 'CAR', 'BD Spot 43 CAR #103', 4, 27.73, '[\"AC\", \"USB\"]', 53, 2),
(107, 'MBUS', 'BD Spot 10 MBUS #104', 12, 15.21, '[\"AC\", \"USB\"]', 20, 2),
(108, 'BUS', 'Rangamati BUS #105', 40, 28.66, '[\"AC\", \"USB\"]', 9, 2),
(109, 'CAR', 'BD Spot 10 CAR #106', 4, 7.90, '[\"AC\", \"USB\"]', 20, 2),
(110, 'MBUS', 'BD Spot 6 MBUS #107', 12, 8.39, '[\"AC\", \"USB\"]', 16, 2),
(111, 'CAR', 'BD Spot 20 CAR #108', 4, 21.76, '[\"AC\", \"USB\"]', 30, 2),
(112, 'MBUS', 'BD Spot 38 MBUS #109', 12, 28.65, '[\"AC\", \"USB\"]', 48, 2),
(113, 'MBUS', 'BD Spot 17 MBUS #110', 12, 23.56, '[\"AC\", \"USB\"]', 27, 2),
(114, 'CAR', 'Kuakata CAR #111', 4, 21.37, '[\"AC\", \"USB\"]', 10, 2),
(115, 'CAR', 'BD Spot 44 CAR #112', 4, 20.39, '[\"AC\", \"USB\"]', 54, 2),
(116, 'BUS', 'BD Spot 8 BUS #113', 40, 22.26, '[\"AC\", \"USB\"]', 18, 2),
(117, 'CAR', 'BD Spot 4 CAR #114', 4, 16.12, '[\"AC\", \"USB\"]', 14, 2),
(118, 'CAR', 'BD Spot 6 CAR #115', 4, 7.48, '[\"AC\", \"USB\"]', 16, 2),
(119, 'CAR', 'BD Spot 34 CAR #116', 4, 18.61, '[\"AC\", \"USB\"]', 44, 2),
(120, 'CAR', 'BD Spot 32 CAR #117', 4, 6.51, '[\"AC\", \"USB\"]', 42, 2),
(121, 'BUS', 'BD Spot 8 BUS #118', 40, 29.21, '[\"AC\", \"USB\"]', 18, 2),
(122, 'CAR', 'BD Spot 45 CAR #119', 4, 7.29, '[\"AC\", \"USB\"]', 55, 2),
(123, 'MBUS', 'BD Spot 4 MBUS #120', 12, 20.99, '[\"AC\", \"USB\"]', 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transport_vendor`
--

CREATE TABLE `transport_vendor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport_vendor`
--

INSERT INTO `transport_vendor` (`id`, `name`, `contact_phone`, `email`) VALUES
(1, 'Bangla Travels', '+8801700000000', ''),
(2, 'BD Rentals', '+8801800000000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

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
-- Indexes for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_booking_package_id_0a887798_fk_destinations_package_id` (`package_id`),
  ADD KEY `bookings_booking_room_id_6f0fa517_fk_hotels_room_id` (`room_id`),
  ADD KEY `bookings_booking_trip_id_1cf36b39_fk_transport_bustrip_id` (`trip_id`),
  ADD KEY `bookings_booking_user_id_834dfc23_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `destinations_destination`
--
ALTER TABLE `destinations_destination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `destinations_package`
--
ALTER TABLE `destinations_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `destinations_package_destination_id_9e0a96e3_fk_destinati` (`destination_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`);

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
-- Indexes for table `hotels_hotel`
--
ALTER TABLE `hotels_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_hotel_destination_id_4ca03c6b_fk_destinati` (`destination_id`);

--
-- Indexes for table `hotels_room`
--
ALTER TABLE `hotels_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_room_hotel_id_0ee74c95_fk_hotels_hotel_id` (`hotel_id`);

--
-- Indexes for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` (`booking_id`);

--
-- Indexes for table `transport_bustrip`
--
ALTER TABLE `transport_bustrip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_bustrip_vehicle_id_77cec258_fk_transport_vehicle_id` (`vehicle_id`);

--
-- Indexes for table `transport_vehicle`
--
ALTER TABLE `transport_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_vehicle_destination_id_b7e32aca_fk_destinati` (`destination_id`),
  ADD KEY `transport_vehicle_vendor_id_90b500f0_fk_transport_vendor_id` (`vendor_id`);

--
-- Indexes for table `transport_vendor`
--
ALTER TABLE `transport_vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinations_destination`
--
ALTER TABLE `destinations_destination`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `destinations_package`
--
ALTER TABLE `destinations_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hotels_hotel`
--
ALTER TABLE `hotels_hotel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `hotels_room`
--
ALTER TABLE `hotels_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `payments_payment`
--
ALTER TABLE `payments_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transport_bustrip`
--
ALTER TABLE `transport_bustrip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `transport_vehicle`
--
ALTER TABLE `transport_vehicle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `transport_vendor`
--
ALTER TABLE `transport_vendor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

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
-- Constraints for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD CONSTRAINT `bookings_booking_package_id_0a887798_fk_destinations_package_id` FOREIGN KEY (`package_id`) REFERENCES `destinations_package` (`id`),
  ADD CONSTRAINT `bookings_booking_room_id_6f0fa517_fk_hotels_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotels_room` (`id`),
  ADD CONSTRAINT `bookings_booking_trip_id_1cf36b39_fk_transport_bustrip_id` FOREIGN KEY (`trip_id`) REFERENCES `transport_bustrip` (`id`),
  ADD CONSTRAINT `bookings_booking_user_id_834dfc23_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `destinations_package`
--
ALTER TABLE `destinations_package`
  ADD CONSTRAINT `destinations_package_destination_id_9e0a96e3_fk_destinati` FOREIGN KEY (`destination_id`) REFERENCES `destinations_destination` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `hotels_hotel`
--
ALTER TABLE `hotels_hotel`
  ADD CONSTRAINT `hotels_hotel_destination_id_4ca03c6b_fk_destinati` FOREIGN KEY (`destination_id`) REFERENCES `destinations_destination` (`id`);

--
-- Constraints for table `hotels_room`
--
ALTER TABLE `hotels_room`
  ADD CONSTRAINT `hotels_room_hotel_id_0ee74c95_fk_hotels_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotels_hotel` (`id`);

--
-- Constraints for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD CONSTRAINT `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`);

--
-- Constraints for table `transport_bustrip`
--
ALTER TABLE `transport_bustrip`
  ADD CONSTRAINT `transport_bustrip_vehicle_id_77cec258_fk_transport_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `transport_vehicle` (`id`);

--
-- Constraints for table `transport_vehicle`
--
ALTER TABLE `transport_vehicle`
  ADD CONSTRAINT `transport_vehicle_destination_id_b7e32aca_fk_destinati` FOREIGN KEY (`destination_id`) REFERENCES `destinations_destination` (`id`),
  ADD CONSTRAINT `transport_vehicle_vendor_id_90b500f0_fk_transport_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `transport_vendor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
