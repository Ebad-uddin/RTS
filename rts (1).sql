-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 11:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rts`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_Id` varchar(255) DEFAULT NULL,
  `reciever_Id` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `seen` varchar(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_Id`, `reciever_Id`, `msg`, `type`, `group_id`, `seen`, `status`, `created_at`, `updated_at`) VALUES
(429, '150', '50', 'hi there', 'groupChat', 50, '[151]', 0, '2024-06-03 15:44:29', '2024-06-03 15:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_manager` varchar(250) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `group_members` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `grp_creator_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `group_manager`, `group_name`, `email`, `address`, `phone`, `group_members`, `comments`, `grp_creator_id`, `created_at`, `updated_at`) VALUES
(17, '[\"151\"]', 'Jetnetix Group', 'jetnetix@gmail.com', 'dfasdf', '2332324', '[\"152\"]', 'asdfasdf', 150, '2024-06-03 15:39:28', '2024-06-03 15:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(7, '2024_05_06_122824_create_group_table', 3),
(8, '2024_05_01_195734_create_task_table', 4),
(9, '2024_05_08_073734_create_tasks_table', 5),
(10, '2024_05_15_135844_create_chat_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  `workers` text DEFAULT NULL,
  `vehicle_category` varchar(255) DEFAULT NULL,
  `t_level` varchar(255) DEFAULT NULL,
  `status` enum('Created','Submitted','Approved','Rejected','Active','Completed','Expired') DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `task_abbreviation` varchar(255) DEFAULT NULL,
  `start_datetime` varchar(255) DEFAULT NULL,
  `end_datetime` varchar(255) DEFAULT NULL,
  `grp_creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `check_status` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `task_id`, `task_name`, `account`, `company`, `department`, `test`, `workers`, `vehicle_category`, `t_level`, `status`, `comments`, `rate`, `period`, `images`, `task_abbreviation`, `start_datetime`, `end_datetime`, `grp_creator_id`, `check_status`, `created_at`, `updated_at`) VALUES
(50, 493, 'test task', '23423423423', 'test', 'test', 'test', '[\"152\"]', 'test', 'T1', 'Submitted', 'test comment', NULL, NULL, '[\"burger.jpg\"]', '[\"24\",\"25\",\"26\",\"31\",\"32\"]', '2024-06-04 12:00', '2024-06-07 12:00', 151, 'false', '2024-06-03 15:43:24', '2024-06-03 15:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `task_abbreviation` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_id`, `task_name`, `task_abbreviation`, `rate`, `period`, `created_at`, `updated_at`) VALUES
(22, NULL, 'AstaZero', 'AZ', NULL, NULL, NULL, NULL),
(23, NULL, 'City Traffic', 'CTC', NULL, NULL, NULL, NULL),
(24, NULL, 'Construction Site', 'COT', NULL, NULL, NULL, NULL),
(25, NULL, 'Corrosion', 'COT', NULL, NULL, NULL, NULL),
(26, NULL, 'Country Road', 'CRT', NULL, NULL, NULL, NULL),
(27, NULL, 'Durability', 'DBT', NULL, NULL, NULL, NULL),
(28, NULL, 'External Noise', 'ENTT', NULL, NULL, NULL, NULL),
(29, NULL, 'Gravel Road', 'GR', NULL, NULL, NULL, NULL),
(30, NULL, 'Handling Track 1', 'HT1', NULL, NULL, NULL, NULL),
(31, NULL, 'Handling Track 2', 'HT2', NULL, NULL, NULL, NULL),
(32, NULL, 'High Speed', 'HST', NULL, NULL, NULL, NULL),
(33, NULL, 'Low Friction and Handling', 'B/H', NULL, NULL, NULL, NULL),
(34, NULL, 'Rough Road', 'RR', NULL, NULL, NULL, NULL),
(35, NULL, 'SkidPad', 'SKID', NULL, NULL, NULL, NULL),
(36, NULL, 'Slopes', 'SLS', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tasklist_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `training_level` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `phone`, `address`, `training_level`, `role`, `status`, `comment`, `image`, `images`, `email_verified_at`, `password`, `last_login`, `creator_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr', 'John', 'admin@rts.com', '4567643456', 'Karachi Pakistan', 'sdfasfd', 'superadmin', '0', 'asdfasdflksjdlf', 'download1.png', NULL, NULL, '$2y$10$VFh179.EYkiYs5p5f.3zVOM4Whxp7YOLRLxqFNtSwsKcd6h9OdKFu', '2024-06-03 15:58:28', NULL, NULL, NULL, '2024-06-03 15:58:28'),
(150, 'ebad', 'uddin', 'ebad@gmail.com', '323123124234234', 'asdf', 'asdfasdf', 'sitemanager', '1', 'asdfasdf', 'burger.jpg', NULL, NULL, '$2y$10$VFh179.EYkiYs5p5f.3zVOM4Whxp7YOLRLxqFNtSwsKcd6h9OdKFu', '2024-06-03 16:01:47', NULL, NULL, '2024-06-03 15:33:15', '2024-06-03 16:01:47'),
(151, 'hamdan', 'baig', 'hamdan@gmail.com', '1423412341234', 'asdf', 'asdfasdf', 'groupmanager', '0', 'asdf', '', NULL, NULL, '$2y$10$VFh179.EYkiYs5p5f.3zVOM4Whxp7YOLRLxqFNtSwsKcd6h9OdKFu', '2024-06-03 15:48:57', NULL, NULL, '2024-06-03 15:34:16', '2024-06-03 15:48:57'),
(152, 'farrukh', 'shah', 'farrukh@gmail.com', '2342342434', 'dfasd', 'asdf', 'worker', '1', 'asdf', '', NULL, NULL, '$2y$10$VFh179.EYkiYs5p5f.3zVOM4Whxp7YOLRLxqFNtSwsKcd6h9OdKFu', '2024-06-03 16:01:41', NULL, NULL, '2024-06-03 15:34:53', '2024-06-03 16:01:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
