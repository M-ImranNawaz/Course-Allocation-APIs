-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 02:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_allocation`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocated_courses`
--

CREATE TABLE `allocated_courses` (
  `id` int(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `courses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allocated_courses`
--

INSERT INTO `allocated_courses` (`id`, `faculty`, `courses`) VALUES
(1, 'Dr. Saleem ullah', '[OOP_COSC-1104_3_BS Computer Science 7-A, Programming Fundamentals_COSC-1102_3_BS Computer Science 2-B]');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `creditHours` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`, `department`, `program`, `creditHours`, `semester`) VALUES
(1, 'Web Programming', 'COSC-1101', 'Computer Science', 'BS', '2', '1-A'),
(2, 'Programming Fundamentals', 'COSC-1102', 'Computer Science', 'BS', '3', '2-A'),
(3, 'Operating System', 'COSC-1103', 'Computer Science', 'BS', '3', '3-A'),
(4, 'OOP', 'COSC-1104', 'Computer Science', 'BS', '3', '7-A'),
(5, 'Deep Learning', 'COSC-1105', 'Computer Science', 'BS', '3', '8-A'),
(6, 'Programming Fundamentals', 'COSC-1102', 'Computer Science', 'BS', '3', '2-B'),
(7, 'Mobile Application', 'COSC-1107', 'Computer Science', 'BS', '3', '4-A'),
(8, 'Python for Data Science', 'COSC-1108', 'Computer Science', 'BS', '3', '6-A'),
(9, 'Machine Learning', 'COSC-1109', 'Computer Science', 'BS', '3', '8-A'),
(10, 'Data Structure And Algorithms', 'COSC-1110', 'Computer Science', 'BS', '3', '3-A'),
(11, 'Machine Learning', 'COSC-1111', 'Computer Science', 'BS', '3', '8-B'),
(12, 'Software Engineering', 'COSC-1112', 'Computer Science', 'BS', '3', '5-A'),
(13, 'Machine Leaning', 'COSC-1113', 'Computer Science', 'BS', '3', '8-B'),
(14, 'OOP', 'COSC-1104', 'Computer Science', 'BS', '3', '7-B'),
(15, 'Information Security', 'COSC-1115', 'Computer Science', 'BS', '3', '8-A'),
(16, 'Data Science', 'COSC-1116', 'Computer Science', 'BS', '3', '3-A'),
(17, 'Python for Data Science', 'COSC-1108', 'Computer Science', 'BS', '3', '6-B'),
(18, 'Software Engineering', 'COSC-1112', 'Computer Science', 'BS', '3', '5-B'),
(19, 'Python for Data Science', 'COSC-1108', 'Computer Science', 'BS', '3', '5-A'),
(20, 'Visual Programming', 'COSC-1120', 'Computer Science', 'BS', '3', '6-A'),
(21, 'Python Programming for Data Science', 'COSC-1121', 'Computer Science', 'BS', '3', '7-A'),
(22, 'Compiler Construction', 'COSC-1123', 'Computer Science', 'BS', '3', '4-A'),
(23, 'Introduction to NLP', 'COSC-1124', 'Computer Science', 'BS', '3', '8-A');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Saleem ullah', 'dr.saleemullah@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(2, 'Dr. Hafeez ur Rehman', 'dr.hafeezurrehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(3, 'Dr. Mujeeb ur Rehman', 'dr.mujeeburrehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(4, 'Dr. Sadiq Fareed', 'dr.sadiqfareed@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(5, 'Dr. Mrs. Sadiq Fareed', 'dr.mrs.sadiqfareed@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(6, 'Mr.Saqib Ubaid', 'mr.saqibubaid@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(7, 'Mr. Maqsood Ahmad', 'mr.maqsoodahmad@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(8, 'Ms. Madiha Rehman', 'ms.madiharehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(9, 'Ms. Rida Fatima', 'ms.ridafatima@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(10, 'Mr. Muizz ud Din', 'mr.muizzuddin@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(11, 'Mr. Shahzad Hussain', 'mr.shahzadhussain@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(12, 'Mr. Hussain Sargana', 'mr.hussainsargana@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(13, 'Mr. Ali Jaffar Zaidi', 'mr.alijaffarzaidi@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(14, 'Mr. Shadab Alam Hashmi', 'mr.shadabalamhashmi@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(15, 'Mr. Mutiullah Jameel', 'mr.mutiullahjameel@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(16, 'Mr. Muhammad Afzal', 'mr.muhammadafzal@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(17, 'Mr. Safdar Hussain', 'mr.safdarhussain@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(18, 'Ms. Humaira Anwar', 'ms.humairaanwar@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(19, 'Mr. Saima Noreen', 'saimanoreen@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(20, 'Name', 'Email', 'Password', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(21, 'Dr. Saleem ullah', 'dr.saleemullah@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(22, 'Dr. Hafeez ur Rehman', 'dr.hafeezurrehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(23, 'Dr. Mujeeb ur Rehman', 'dr.mujeeburrehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(24, 'Dr. Sadiq Fareed', 'dr.sadiqfareed@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(25, 'Dr. Mrs. Sadiq Fareed', 'dr.mrs.sadiqfareed@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(26, 'Mr.Saqib Ubaid', 'mr.saqibubaid@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(27, 'Mr. Maqsood Ahmad', 'mr.maqsoodahmad@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(28, 'Ms. Madiha Rehman', 'ms.madiharehman@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(29, 'Ms. Rida Fatima', 'ms.ridafatima@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(30, 'Mr. Muizz ud Din', 'mr.muizzuddin@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(31, 'Mr. Shahzad Hussain', 'mr.shahzadhussain@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(32, 'Mr. Hussain Sargana', 'mr.hussainsargana@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(33, 'Mr. Ali Jaffar Zaidi', 'mr.alijaffarzaidi@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(34, 'Mr. Shadab Alam Hashmi', 'mr.shadabalamhashmi@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(35, 'Mr. Mutiullah Jameel', 'mr.mutiullahjameel@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(36, 'Mr. Muhammad Afzal', 'mr.muhammadafzal@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(37, 'Mr. Safdar Hussain', 'mr.safdarhussain@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(38, 'Ms. Humaira Anwar', 'ms.humairaanwar@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45'),
(39, 'Mr. Saima Noreen', 'saimanoreen@kfueit.edu.pk', '12345', '2022-06-23 07:04:45', '2022-06-23 07:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_preferences`
--

CREATE TABLE `faculty_preferences` (
  `id` int(255) NOT NULL,
  `faculty_id` int(255) NOT NULL,
  `pref_1` int(50) NOT NULL,
  `pref_2` int(50) NOT NULL,
  `pref_3` int(50) NOT NULL,
  `pref_4` int(50) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_preferences`
--

INSERT INTO `faculty_preferences` (`id`, `faculty_id`, `pref_1`, `pref_2`, `pref_3`, `pref_4`, `updated_at`, `created_at`) VALUES
(1, 1, 6, 10, 8, 4, '2022-06-23 12:19:59', '2022-06-23 12:19:59');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'my-app-token', 'a84e26a2474cac64a8491ce82ee17200df9e0f89579f164c7ad03b9ecca1564a', '[\"*\"]', NULL, '2022-03-21 07:03:20', '2022-03-21 07:03:20'),
(2, 'App\\Models\\User', 2, 'courseAllocationProject', 'fd6e1f74a5f3cce8af082fbfbc4de1db1939b18f68fe977b8134e4164bac979a', '[\"*\"]', NULL, '2022-03-21 07:12:25', '2022-03-21 07:12:25'),
(3, 'App\\Models\\User', 3, 'courseAllocationProject', '9ae533f82c04212e06121fbd3205ee0be35a882280b142ce8553ce7571841cf7', '[\"*\"]', NULL, '2022-03-21 07:14:15', '2022-03-21 07:14:15'),
(4, 'App\\Models\\User', 4, 'courseAllocationProject', '824181ce66b802f527e4382b4bdd3c2b6ff16f0183afcfdadbcb48b78b666a49', '[\"*\"]', NULL, '2022-03-23 01:47:34', '2022-03-23 01:47:34'),
(5, 'App\\Models\\User', 5, 'courseAllocationProject', '47ba7c47b4ed838ebba02fb0a5aed419fb8c6fe0db78f944cfd9060223e60ae0', '[\"*\"]', NULL, '2022-03-23 01:53:33', '2022-03-23 01:53:33'),
(6, 'App\\Models\\User', 5, 'my-app-token', '8788f87e6d804bda06b9c72926160d831d3b121942e9664179e63c79d0857d20', '[\"*\"]', NULL, '2022-03-23 01:57:01', '2022-03-23 01:57:01'),
(7, 'App\\Models\\User', 5, 'my-app-token', '5e4516cb5782f4d218e1e9928a16837ad8467ebf6970cdf717c580afc704ef92', '[\"*\"]', NULL, '2022-03-23 02:04:51', '2022-03-23 02:04:51'),
(8, 'App\\Models\\User', 5, 'my-app-token', '24188efdd171cfb75edadd3b1bae5e320ec5a42e323fbfe5c245152d68c389cc', '[\"*\"]', NULL, '2022-03-23 02:05:33', '2022-03-23 02:05:33'),
(9, 'App\\Models\\User', 5, 'my-app-token', '6c687b12e909dcd3f89abaf5ae26f35ca0cbc398de093e555c122abbb43e5811', '[\"*\"]', NULL, '2022-03-23 02:06:44', '2022-03-23 02:06:44'),
(10, 'App\\Models\\User', 5, 'my-app-token', '704c07642dfb9f4775865a37bc308381bea3d1a285a6c090818c75edbf6eb885', '[\"*\"]', NULL, '2022-03-23 04:13:32', '2022-03-23 04:13:32'),
(11, 'App\\Models\\User', 5, 'my-app-token', 'f3f36d33e20336d43a3ac160726851570aac69a30c9b82d969e513a6938fca95', '[\"*\"]', NULL, '2022-03-23 04:14:58', '2022-03-23 04:14:58'),
(12, 'App\\Models\\User', 5, 'my-app-token', '4f860bcec2ed4d1c36f661695450686f0638d86b2a35695c2b50a71e07fca10b', '[\"*\"]', NULL, '2022-03-23 04:16:15', '2022-03-23 04:16:15'),
(13, 'App\\Models\\User', 5, 'my-app-token', 'fc9afc9cf1c8080f8b0aeeb6115556863bfa3a2748d35775b75ce64e5479609a', '[\"*\"]', NULL, '2022-03-23 04:19:18', '2022-03-23 04:19:18'),
(14, 'App\\Models\\User', 5, 'my-app-token', 'e19e3cba98c9a5946468de0565785f695af61fef7368e109b156d7fb1818d919', '[\"*\"]', NULL, '2022-03-23 04:26:44', '2022-03-23 04:26:44'),
(15, 'App\\Models\\User', 5, 'my-app-token', '990c2a7d8a98b9ace3e5c27a081c97054850c3d81e4c0c98aa079e29feb663d7', '[\"*\"]', NULL, '2022-03-23 04:30:01', '2022-03-23 04:30:01'),
(16, 'App\\Models\\User', 5, 'my-app-token', 'ee4e7b6759429a96e4e770448107e3cd45e9af4b8e62a7c631a4f36759bc9d05', '[\"*\"]', NULL, '2022-03-23 09:05:43', '2022-03-23 09:05:43'),
(17, 'App\\Models\\User', 6, 'courseAllocationProject', '073ee52e98c00cc9bcedfd2ea1953f78979146d60ae34624adcee61797f28c52', '[\"*\"]', NULL, '2022-03-23 09:13:23', '2022-03-23 09:13:23'),
(18, 'App\\Models\\User', 5, 'my-app-token', '2a54e2470cb02372598346cdb240a703506bee6d67e6eda4073c6cdedf1c5bdd', '[\"*\"]', NULL, '2022-03-23 09:17:34', '2022-03-23 09:17:34'),
(19, 'App\\Models\\User', 6, 'my-app-token', '93313308ae6200f597332f7997db71b138ff985c5575382509fd2f2f5109d960', '[\"*\"]', NULL, '2022-03-23 09:18:49', '2022-03-23 09:18:49'),
(20, 'App\\Models\\User', 5, 'my-app-token', '17a1dd0aa7dfca912708077b2477e0a69c8d35926cebc0fcbe157f1e5a85a56b', '[\"*\"]', NULL, '2022-03-23 10:32:14', '2022-03-23 10:32:14'),
(21, 'App\\Models\\User', 6, 'my-app-token', '2bc603581d3fe7aea64aaf2b1e1a20c8e8a47ed3f2a273fd56c6e383a816245e', '[\"*\"]', NULL, '2022-03-23 11:27:00', '2022-03-23 11:27:00'),
(22, 'App\\Models\\User', 6, 'my-app-token', '68a77774b4a7df91aa3bea6cd1ae677ca7529d0d7aa11300693b26c11e783f00', '[\"*\"]', NULL, '2022-03-23 11:38:14', '2022-03-23 11:38:14'),
(23, 'App\\Models\\User', 6, 'my-app-token', '5d63a92dbdaddcd23c19b436b7c752083ea707f5fed3ee7b1cea9e24503bb365', '[\"*\"]', NULL, '2022-03-24 02:11:26', '2022-03-24 02:11:26'),
(24, 'App\\Models\\User', 6, 'my-app-token', 'eee52b3b37bba2aaccb022738991f22fd8bc14ca2997e32ee6b8565eaf15ff6a', '[\"*\"]', NULL, '2022-03-24 02:13:08', '2022-03-24 02:13:08'),
(25, 'App\\Models\\User', 1, 'my-app-token', '7937d48cf641842840b84f71c66c0d6191a3c7cfaa2ba9bfa1f9136862114ee9', '[\"*\"]', NULL, '2022-05-16 05:29:46', '2022-05-16 05:29:46'),
(26, 'App\\Models\\User', 7, 'courseAllocationProject', '54bf85348fca6504c864f6bbe5d461fa622555c18bf1eeaa77044128a6d808a7', '[\"*\"]', NULL, '2022-05-16 05:31:02', '2022-05-16 05:31:02'),
(27, 'App\\Models\\User', 7, 'my-app-token', '4cbc7f1fc32f4cfdabddca874bc7fb07f440b065aee8a363291ac00562f1cab4', '[\"*\"]', NULL, '2022-05-16 05:32:07', '2022-05-16 05:32:07'),
(28, 'App\\Models\\User', 7, 'my-app-token', '9d1df14ee46c3948d875abdda5d1242760236dc64b9b9b006364b5b4d4f67846', '[\"*\"]', NULL, '2022-05-16 05:38:12', '2022-05-16 05:38:12'),
(29, 'App\\Models\\User', 7, 'my-app-token', '5f4d271f13e2928aac053a0bcfee194d5c139f8d2c1e8ed61c1070da164753b7', '[\"*\"]', NULL, '2022-05-16 05:39:08', '2022-05-16 05:39:08'),
(30, 'App\\Models\\User', 8, 'courseAllocationProject', '6b0f20861cbdc92ac544b4399496177cdf29eb8e14a5b00a1ef76d9f21263409', '[\"*\"]', NULL, '2022-05-21 12:47:38', '2022-05-21 12:47:38'),
(31, 'App\\Models\\User', 1, 'courseAllocationProject', 'eca1f7aa0f67c0b22c7b06194cc79d7e91179a7b6fbd80eee0fa0ae754f1978a', '[\"*\"]', NULL, '2022-05-25 05:22:58', '2022-05-25 05:22:58'),
(32, 'App\\Models\\User', 1, 'my-app-token', 'f219288b44f4940faa9fe7f0c4b911bfe344035bcb25c708f51c57d7eeffbf38', '[\"*\"]', NULL, '2022-05-25 05:23:18', '2022-05-25 05:23:18'),
(33, 'App\\Models\\User', 1, 'my-app-token', '30b94a41a4c175c1dd238fded773490b20e199df8a67908450adc53278b9d8b3', '[\"*\"]', NULL, '2022-05-25 05:36:37', '2022-05-25 05:36:37'),
(34, 'App\\Models\\User', 1, 'my-app-token', 'b17e6b16609c4b6d76d2ea01399d65010c8583c932719fc45ae6deaf9acaeb44', '[\"*\"]', NULL, '2022-05-25 05:38:11', '2022-05-25 05:38:11'),
(35, 'App\\Models\\User', 1, 'my-app-token', '962dbd211bee65a9f919c22e7d3b60d89239908c2ce34712a6ff2da0d279d82c', '[\"*\"]', NULL, '2022-05-25 05:48:11', '2022-05-25 05:48:11'),
(36, 'App\\Models\\User', 1, 'my-app-token', '6e3bf68ab40d21e8debdb3d6c685bb913d39951bea9d9d7530b7d6a4110443d5', '[\"*\"]', NULL, '2022-05-25 05:49:35', '2022-05-25 05:49:35'),
(37, 'App\\Models\\User', 1, 'my-app-token', '4485e74f47241a2938e049d182cf716d0b8ad986e88dd5b16e8a8a9d48836724', '[\"*\"]', NULL, '2022-05-25 05:50:24', '2022-05-25 05:50:24'),
(38, 'App\\Models\\User', 1, 'my-app-token', 'f135d457c0cf1b03f82590b164ef4b1d430a7b769855e8498da06aac7eba5861', '[\"*\"]', NULL, '2022-05-25 05:55:58', '2022-05-25 05:55:58'),
(39, 'App\\Models\\User', 1, 'my-app-token', '2c39f3d24f2d595d9e011db4e5570720ef6181ca9d839aaae5cc2ddae7e8795a', '[\"*\"]', NULL, '2022-05-25 05:57:26', '2022-05-25 05:57:26'),
(40, 'App\\Models\\User', 1, 'my-app-token', '37ab16242ccd88981f6082d8a737e47211d0de7a9b8ae973b2b8a7e9ac57518d', '[\"*\"]', NULL, '2022-05-25 05:58:48', '2022-05-25 05:58:48'),
(41, 'App\\Models\\User', 1, 'my-app-token', 'a8bf987dd1c4c865161b6cdb49116ff2c2b69380332fce2abb4f66e1d1233f23', '[\"*\"]', NULL, '2022-05-25 06:03:58', '2022-05-25 06:03:58'),
(42, 'App\\Models\\User', 1, 'my-app-token', '8531262698f7b318b66d7803b3355c837da014ca9f848ccd099ae6a0782d326d', '[\"*\"]', NULL, '2022-05-25 06:04:40', '2022-05-25 06:04:40'),
(43, 'App\\Models\\User', 1, 'my-app-token', 'f8f0857afee3a331de8fee3f59dfdb78bd2abc43a90eac8c20c396ba5ee07311', '[\"*\"]', NULL, '2022-05-25 06:09:38', '2022-05-25 06:09:38'),
(44, 'App\\Models\\User', 1, 'my-app-token', '2f810336d357a9c664c0600c41c2c97e8b4f47b8f82d065d2627d3ca61c7df1a', '[\"*\"]', NULL, '2022-05-25 06:26:08', '2022-05-25 06:26:08'),
(45, 'App\\Models\\User', 1, 'my-app-token', 'bf9f326e5a59fa7c08c2365b589b2d8edd460128258f88d1acc4bb946be2ac8a', '[\"*\"]', '2022-06-03 11:17:27', '2022-05-25 07:17:10', '2022-06-03 11:17:27'),
(46, 'App\\Models\\User', 1, 'my-app-token', '0361e8f3e974d28c2fc2a1ad0e01587f80b25a0b9e28015a18f454d5e30db3ee', '[\"*\"]', '2022-05-26 11:23:13', '2022-05-25 07:36:53', '2022-05-26 11:23:13'),
(47, 'App\\Models\\User', 1, 'my-app-token', '058e3db2fcae003bd85302dd7984aa7e5744510125e41cae75fa79e73ad04349', '[\"*\"]', NULL, '2022-05-26 11:33:32', '2022-05-26 11:33:32'),
(48, 'App\\Models\\User', 1, 'my-app-token', 'eddf7c89e68cc78ff9c1077fb95fee539ca780087bb86dd24d19a18cf6ed6630', '[\"*\"]', '2022-05-26 11:35:27', '2022-05-26 11:35:24', '2022-05-26 11:35:27'),
(49, 'App\\Models\\User', 1, 'my-app-token', '5791e1bd176e0564610d13c84f95c03d0f78d643ff262051a40715a3205f7e93', '[\"*\"]', '2022-05-30 05:05:38', '2022-05-27 06:23:26', '2022-05-30 05:05:38'),
(50, 'App\\Models\\User', 1, 'my-app-token', 'ee002e3cf5fad566adac31bd9ea6a699a6157ff8b87ff5c4773fbbff828e6aec', '[\"*\"]', NULL, '2022-05-30 10:54:49', '2022-05-30 10:54:49'),
(51, 'App\\Models\\User', 1, 'my-app-token', 'f37f54ef0a5ae3d9017bbc80ef81e2ff726352a29dec0edd64a474a19e05f206', '[\"*\"]', NULL, '2022-05-30 10:54:54', '2022-05-30 10:54:54'),
(52, 'App\\Models\\User', 1, 'my-app-token', 'e8d97e5800f8b607f34fd0547b19ceb3f975438a86e89b7ee7204ce746eda62a', '[\"*\"]', NULL, '2022-05-30 10:55:56', '2022-05-30 10:55:56'),
(53, 'App\\Models\\User', 2, 'courseAllocationProject', 'baffb6475fa33e1db7b2e4d06b6a608ff1ffa1c3cf0725e3aca3efbaddabbbce', '[\"*\"]', NULL, '2022-05-30 11:00:17', '2022-05-30 11:00:17'),
(54, 'App\\Models\\User', 2, 'my-app-token', 'd3e443333f7986d3de3ac388eb21e8e1679d622bc926cd74aa59bdbf05cfc1e0', '[\"*\"]', '2022-05-31 04:17:31', '2022-05-30 11:01:08', '2022-05-31 04:17:31'),
(55, 'App\\Models\\User', 2, 'my-app-token', 'f3d61f36ce5e57c68017ea8c4ca1f552125deb06ca57a34fe8e4946f465ef109', '[\"*\"]', NULL, '2022-05-31 04:27:46', '2022-05-31 04:27:46'),
(56, 'App\\Models\\User', 2, 'my-app-token', '4e8c96b3fef8f824ab8a3fb5a52da4d28fa3f1f2542c0829874534add8b78c93', '[\"*\"]', '2022-05-31 04:38:19', '2022-05-31 04:28:41', '2022-05-31 04:38:19'),
(57, 'App\\Models\\User', 3, 'courseAllocationProject', '4f05aafb4c0be53c28b73107d2f841eb0f2c1733ef1ddc6378e7ba0fb7e946c8', '[\"*\"]', NULL, '2022-05-31 04:39:13', '2022-05-31 04:39:13'),
(58, 'App\\Models\\User', 3, 'my-app-token', 'f8ec56845373709345df30792077cce9287cea26c6901c6599844692cd471de0', '[\"*\"]', '2022-05-31 04:47:13', '2022-05-31 04:39:33', '2022-05-31 04:47:13'),
(59, 'App\\Models\\User', 4, 'courseAllocationProject', '10d50253384475067fbcc4e398e4f98d8b5ad1f469c2d618cea05468c01a480d', '[\"*\"]', NULL, '2022-05-31 05:23:27', '2022-05-31 05:23:27'),
(60, 'App\\Models\\User', 4, 'my-app-token', '18923611b8828a739a50244b30aff224f063ac89c049079491c589b8d9a1b409', '[\"*\"]', '2022-05-31 13:24:08', '2022-05-31 05:23:53', '2022-05-31 13:24:08'),
(61, 'App\\Models\\User', 2, 'my-app-token', '0ccf11a15e176675a587139d5b8a27a5f5f4a2d55582e0658395e64a40bc5ee1', '[\"*\"]', '2022-06-04 06:45:37', '2022-06-03 11:18:44', '2022-06-04 06:45:37'),
(62, 'App\\Models\\User', 2, 'my-app-token', 'dd7d6df3539a3ca9dfaa83d9ad542a62da05faa9bc8967d20028dd9bb0dba223', '[\"*\"]', NULL, '2022-06-04 06:57:23', '2022-06-04 06:57:23'),
(63, 'App\\Models\\User', 2, 'my-app-token', '3ca7025c977d4867d6a845d2faef402cda989fb9f8a9ff1b6d100e549703583e', '[\"*\"]', NULL, '2022-06-04 06:59:26', '2022-06-04 06:59:26'),
(64, 'App\\Models\\User', 2, 'my-app-token', '875377451d6ffb94d53cc711edb381b1076ba1fea0401d203181bf97d80efe43', '[\"*\"]', '2022-06-04 11:14:52', '2022-06-04 10:12:09', '2022-06-04 11:14:52'),
(65, 'App\\Models\\User', 5, 'courseAllocationProject', '451110f97d4b555f484535c96e07ef8e305b59d793a8353bf879979851b7d98f', '[\"*\"]', NULL, '2022-06-07 15:35:08', '2022-06-07 15:35:08'),
(66, 'App\\Models\\User', 5, 'my-app-token', '5bafc4337f4c207c9ed7f6ace23935a7e22c9be114388be4ae07ee29eaeb1fdc', '[\"*\"]', NULL, '2022-06-07 15:35:27', '2022-06-07 15:35:27'),
(67, 'App\\Models\\User', 6, 'courseAllocationProject', '2ea5dfe2be3194e28f364659f388b7317b75deabd7f9b23a7de9eb2b4c7d6d43', '[\"*\"]', NULL, '2022-06-11 05:03:14', '2022-06-11 05:03:14'),
(68, 'App\\Models\\User', 6, 'my-app-token', '9c426ba9f7747f92a565aa75cdcffb38f1da45b8d3e81ac2444c9a5d64554132', '[\"*\"]', NULL, '2022-06-11 05:03:32', '2022-06-11 05:03:32'),
(69, 'App\\Models\\User', 6, 'my-app-token', 'f9af82df23d294a14d16cb17a5ced557962d223616ec21f558195a075a0612cb', '[\"*\"]', NULL, '2022-06-11 05:10:10', '2022-06-11 05:10:10'),
(70, 'App\\Models\\User', 6, 'my-app-token', 'd3700d00e2e6ae8f536c4459c7937bbbc6eab812d85b75e62b1a6a6d08316621', '[\"*\"]', NULL, '2022-06-11 05:10:37', '2022-06-11 05:10:37'),
(71, 'App\\Models\\User', 6, 'my-app-token', '480c5b94c6cf3aa6ce47d2724eaa0668f1b626851e338099d47ae29b3d8534c0', '[\"*\"]', NULL, '2022-06-11 05:10:59', '2022-06-11 05:10:59'),
(72, 'App\\Models\\User', 6, 'my-app-token', '6908be9a10cb41eb100d20259aa945f1a31a8b08bf2239f139f38cc8158a8190', '[\"*\"]', NULL, '2022-06-11 05:13:38', '2022-06-11 05:13:38'),
(73, 'App\\Models\\User', 6, 'my-app-token', '820e68398626a8a598185ca6945db8147eba0d5054b81454cf1d157fc5ffe0a0', '[\"*\"]', NULL, '2022-06-11 05:29:28', '2022-06-11 05:29:28'),
(74, 'App\\Models\\User', 6, 'my-app-token', '5f0d7e6087cfce85528879a9fb2d328b3a95eeab99d59880be2479907f86a4a3', '[\"*\"]', NULL, '2022-06-11 05:32:19', '2022-06-11 05:32:19'),
(75, 'App\\Models\\User', 6, 'my-app-token', '931f5729466cdd2ed7ac87b25c9294d075b70876005a976e5d706915ddc34d41', '[\"*\"]', NULL, '2022-06-11 05:32:48', '2022-06-11 05:32:48'),
(76, 'App\\Models\\User', 6, 'my-app-token', 'ab8b467f75e72bfa110807a928d192c936e98c699eac83d7255a60ced8f380e1', '[\"*\"]', NULL, '2022-06-11 05:33:26', '2022-06-11 05:33:26'),
(77, 'App\\Models\\User', 6, 'my-app-token', 'a7d5155d9b8681747b0a78e55f58e65d6bfa08a3455f971561ceb151a66f84f7', '[\"*\"]', '2022-06-11 06:33:17', '2022-06-11 05:54:17', '2022-06-11 06:33:17'),
(78, 'App\\Models\\User', 6, 'my-app-token', '1c7b45a5bf97012433db2ea92c93f62cc9b33eeab39ca977843f45917d2d0785', '[\"*\"]', NULL, '2022-06-11 06:48:13', '2022-06-11 06:48:13'),
(79, 'App\\Models\\User', 6, 'my-app-token', '626c1eb609b0e7376c2a254367e77bf14350193323324d93a2fb7b4690ffab82', '[\"*\"]', '2022-06-11 06:51:51', '2022-06-11 06:51:44', '2022-06-11 06:51:51'),
(80, 'App\\Models\\User', 6, 'my-app-token', 'a36a9d7e4cc7028f18d0294c0e4805135aaa87f96bd665fa06976cf9ad3154f1', '[\"*\"]', '2022-06-14 05:10:31', '2022-06-11 07:57:00', '2022-06-14 05:10:31'),
(81, 'App\\Models\\User', 6, 'my-app-token', '55746a4d39946d73aeb98a71d159731d4b6e0c0f3d1694cfa41169695414d8a6', '[\"*\"]', '2022-06-14 05:26:27', '2022-06-14 05:26:18', '2022-06-14 05:26:27'),
(82, 'App\\Models\\User', 6, 'my-app-token', '5a72d157033a451cc71a049595ec57d25a6c6be4a294f4b15b06631d75a79377', '[\"*\"]', NULL, '2022-06-14 05:29:06', '2022-06-14 05:29:06'),
(83, 'App\\Models\\User', 6, 'my-app-token', '3822f87aeec4ba501fcb84180eea9f9a60d11cb2767379596f68b7397972dfed', '[\"*\"]', NULL, '2022-06-14 05:33:12', '2022-06-14 05:33:12'),
(84, 'App\\Models\\User', 6, 'my-app-token', '270720a2496b521d8793638334a228e68486124e9f4c7f66b3934f882da6d237', '[\"*\"]', NULL, '2022-06-14 05:35:05', '2022-06-14 05:35:05'),
(85, 'App\\Models\\User', 6, 'my-app-token', '72da1a12c06684f4e9588d92d8876833c11ecd43f67ec54e2ae257fb8858924c', '[\"*\"]', '2022-06-14 08:49:35', '2022-06-14 05:48:53', '2022-06-14 08:49:35'),
(86, 'App\\Models\\User', 6, 'my-app-token', '333682baec9e34a61b1c28a3e7f04ce68d605e1364b1f25f302210369be174a2', '[\"*\"]', '2022-06-14 10:30:30', '2022-06-14 08:50:43', '2022-06-14 10:30:30'),
(87, 'App\\Models\\User', 6, 'my-app-token', '120d1d1cf263d73107f439d3bdaa412086a2adde5abba8f6bfee0324133a34d9', '[\"*\"]', '2022-06-15 15:22:43', '2022-06-15 15:21:05', '2022-06-15 15:22:43'),
(88, 'App\\Models\\User', 6, 'my-app-token', '2dbf36d84c24969e75216c22f9fda0344499b4acbe8325ed2eef540584d7f2bb', '[\"*\"]', '2022-06-15 15:28:10', '2022-06-15 15:24:54', '2022-06-15 15:28:10'),
(89, 'App\\Models\\User', 6, 'my-app-token', '79a8f792ee76c5be9351f8de0e60f00d0fe07873758ff6d063d6d4deec34e7ec', '[\"*\"]', '2022-06-15 15:33:44', '2022-06-15 15:30:34', '2022-06-15 15:33:44'),
(90, 'App\\Models\\User', 6, 'my-app-token', '3beb0d0c10ff5e8057167c78689a9638574b096f0836934cbb12487bd8192738', '[\"*\"]', NULL, '2022-06-21 06:59:37', '2022-06-21 06:59:37'),
(91, 'App\\Models\\User', 6, 'my-app-token', '10ff713bada37c379e95be675bf5c0f5a19ecf11d84365e09fb5deb44d357d36', '[\"*\"]', '2022-06-21 09:45:16', '2022-06-21 06:59:50', '2022-06-21 09:45:16'),
(92, 'App\\Models\\User', 6, 'my-app-token', '2784388b20b7f7a99240f588bab90a996381b1ce6a9a8d5f1c0f7bc4b838afe5', '[\"*\"]', NULL, '2022-06-21 09:51:22', '2022-06-21 09:51:22'),
(93, 'App\\Models\\User', 6, 'my-app-token', '3f31d3e36466d1e5607802cd860622418b5925b59c0b4cd7546d85fc53f71ffd', '[\"*\"]', NULL, '2022-06-21 09:52:21', '2022-06-21 09:52:21'),
(94, 'App\\Models\\User', 6, 'my-app-token', 'f2f4d865d5853a3b005543e478a7823b32a445cd2d40ced51c3b6cef1a4d562d', '[\"*\"]', NULL, '2022-06-21 09:53:03', '2022-06-21 09:53:03'),
(95, 'App\\Models\\User', 6, 'my-app-token', 'dfd51588df179f7a82eb7fb06a73ed84f40b069e0c13159f35381c7bdd48e379', '[\"*\"]', NULL, '2022-06-21 09:57:55', '2022-06-21 09:57:55'),
(96, 'App\\Models\\User', 6, 'my-app-token', 'e8bfa1d338efe63a3377c060dbfa810e96929645381dadeaf4003f568348782c', '[\"*\"]', '2022-06-21 10:35:15', '2022-06-21 10:19:13', '2022-06-21 10:35:15'),
(97, 'App\\Models\\User', 6, 'my-app-token', '85767a905882a192c5f6602bdfa76a09e95c35472bff048fb24234b879130e5f', '[\"*\"]', NULL, '2022-06-21 10:43:03', '2022-06-21 10:43:03'),
(98, 'App\\Models\\User', 6, 'my-app-token', '0888107c268c6faf4f916443484c5efd390a4720b036800cd6ebab21e718ee1e', '[\"*\"]', '2022-06-22 07:10:21', '2022-06-21 11:11:42', '2022-06-22 07:10:21'),
(99, 'App\\Models\\User', 7, 'courseAllocationProject', 'e43ff0a1a7bf92be73e3260b3bb01c8870b3915a615b1fcdb1bb8010d26f0068', '[\"*\"]', NULL, '2022-06-22 07:12:35', '2022-06-22 07:12:35'),
(100, 'App\\Models\\User', 6, 'my-app-token', '8aeb8be471e6a5b7f5d1a35e3539e3f8d200328b10a7572fa778bb9f57020208', '[\"*\"]', '2022-06-22 07:53:40', '2022-06-22 07:53:33', '2022-06-22 07:53:40'),
(101, 'App\\Models\\User', 6, 'my-app-token', '725126f795633bad2f328d1010fced614a21249be520a49854d80c92f4914180', '[\"*\"]', '2022-06-23 00:43:52', '2022-06-22 08:11:04', '2022-06-23 00:43:52'),
(102, 'App\\Models\\User', 6, 'my-app-token', 'ec69b7905fbda5b6a55493c01a47a61d84536e6e2c90ad513f34cd056b983a0f', '[\"*\"]', NULL, '2022-06-22 10:47:54', '2022-06-22 10:47:54'),
(103, 'App\\Models\\User', 6, 'my-app-token', '42177632f603c11ae7db545d9af7192b5a545e1e72094132925423fb8765c39d', '[\"*\"]', NULL, '2022-06-23 00:45:10', '2022-06-23 00:45:10'),
(104, 'App\\Models\\User', 6, 'my-app-token', 'f678cd61dd40479a62d62c30ac814c5e5f1969983717b33f6cad8979fdb9909e', '[\"*\"]', NULL, '2022-06-23 00:45:11', '2022-06-23 00:45:11'),
(105, 'App\\Models\\User', 6, 'my-app-token', '2585114e7c0c1374ed26616221ace392908ef79c58ef7f1f20a6df162162a180', '[\"*\"]', NULL, '2022-06-23 00:45:14', '2022-06-23 00:45:14'),
(106, 'App\\Models\\User', 6, 'my-app-token', '6397c7e1ede004708068f0e7c0d708f7139b857ee4de8254ffa6db4ea2919e59', '[\"*\"]', NULL, '2022-06-23 00:45:16', '2022-06-23 00:45:16'),
(107, 'App\\Models\\User', 6, 'my-app-token', 'ba5523b681bddfdb8b8f8951f468137fe6ce99cbcdbc837a42b1e9c66832ef9e', '[\"*\"]', NULL, '2022-06-23 00:45:17', '2022-06-23 00:45:17'),
(108, 'App\\Models\\User', 6, 'my-app-token', '6831fd9c5f2a2ecf4a9495f7ee862e94c33d354c15eeee48721a930d64a70078', '[\"*\"]', '2022-06-23 00:58:36', '2022-06-23 00:45:30', '2022-06-23 00:58:36'),
(109, 'App\\Models\\User', 6, 'my-app-token', '328a7e02962f375bfaec6515c6a0516d82b470a0a33698ef85b9b9df1fae9008', '[\"*\"]', '2022-06-23 01:46:14', '2022-06-23 01:01:40', '2022-06-23 01:46:14'),
(110, 'App\\Models\\User', 8, 'courseAllocationProject', 'c14d045f0f33dabbce71174b742b460eac74c1072724559319f55ea06b47adc5', '[\"*\"]', NULL, '2022-06-23 01:48:10', '2022-06-23 01:48:10'),
(111, 'App\\Models\\User', 8, 'my-app-token', '8b7b76ffb287bfdcb694d5c81f994f61033b9a0e9d56b364265c4daf0c4d23b6', '[\"*\"]', '2022-06-23 07:20:04', '2022-06-23 01:48:45', '2022-06-23 07:20:04'),
(112, 'App\\Models\\User', 6, 'my-app-token', 'b16cce44044da605fe1c4108ffe8c17efa2ccc45b4a082c9d5160fc2e4651e3a', '[\"*\"]', '2022-06-24 04:32:02', '2022-06-23 07:31:27', '2022-06-24 04:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `department`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Imran', 'Computer Science', 'mimran@gmail.com', NULL, '$2y$10$RjV1E.V5EqzlI.PuC0bk1OY.vF3PvvECKcf95YqBfOR8ALmcHiqXy', NULL, '2022-05-25 05:22:58', '2022-05-25 05:22:58'),
(2, 'Sohail', 'Computer Science', 'sohail@gmail.com', NULL, '$2y$10$Nh.Ng4jT78myXRN8C6lUpuU9wlZOBZkX8DczXP8BhGkMtt1xx.Wpu', NULL, '2022-05-30 11:00:17', '2022-05-30 11:00:17'),
(3, 'imran', 'cs', 'imrankhan@gmail.com', NULL, '$2y$10$JAqaRx9AKhF7jSudvg/phesHla/oBLslXzU.zDlWeGDRHeoh88yE2', NULL, '2022-05-31 04:39:13', '2022-05-31 04:39:13'),
(4, 'safdar123', 'cs', 'safdar@gmail.com', NULL, '$2y$10$Or.9U.8MMWFW7vZ1Ok/ZIeC08cwnzKjZrFzjMaRmVgjVk0k3yiYqu', NULL, '2022-05-31 05:23:27', '2022-05-31 05:23:27'),
(5, 'Waseem', 'CS', 'waseem@gmail.com', NULL, '$2y$10$V1OAiB.NONPDespdebCaYOq6wfnMQvsUacLURDFJKpTL3fkErwidS', NULL, '2022-06-07 15:35:08', '2022-06-07 15:35:08'),
(6, 'Khalid', 'Computer Science', 'khalid@gmail.com', NULL, '$2y$10$WN3S8YY7KgVIs5TW4OP6luz0DiB94cDhwovpjI5VLeuJGC6Hfk7K.', NULL, '2022-06-11 05:03:14', '2022-06-11 05:03:14'),
(7, 'Shehzad Khan', 'Cs', 'shehzad@gmail.com', NULL, '$2y$10$eCxpbDCTmVSaFjKdN/3qtevQaCl5rSgh7optA070emQxiS3x0uCky', NULL, '2022-06-22 07:12:35', '2022-06-22 07:12:35'),
(8, 'sohail ahmad', 'cs', 'sohailahmad@gmail.com', NULL, '$2y$10$0ii8LSVIoi5LYZHPSBZHAOyGD9hd/6Wn78mmuMxdt3ovomwn4SPr.', NULL, '2022-06-23 01:48:09', '2022-06-23 01:48:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocated_courses`
--
ALTER TABLE `allocated_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_preferences`
--
ALTER TABLE `faculty_preferences`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allocated_courses`
--
ALTER TABLE `allocated_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `faculty_preferences`
--
ALTER TABLE `faculty_preferences`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
