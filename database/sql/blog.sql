-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 06:17 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Ali Sami', 'admin@gmail.com', NULL, '$2y$10$oXQDGtSWM10AW8HcGwF0jORj9wFTOdqgLPGJMlW85DblypGa50XDm', NULL, '2023-11-07 20:12:07', '2023-11-07 20:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ferris Conner', 'In consequatur nostr', '2023-11-07 20:15:29', '2023-11-07 20:15:29'),
(2, 'Nehru Casey', 'Qui tempore quidem', '2023-11-07 20:15:36', '2023-11-07 20:15:36'),
(3, 'Haley Singleton', 'Sed non adipisicing', '2023-11-07 20:15:42', '2023-11-07 20:15:42'),
(4, 'Inga Acevedo', 'Numquam voluptatem', '2023-11-07 20:15:49', '2023-11-07 20:15:49'),
(5, 'Dawn Koch', 'Laudantium consequa', '2023-11-07 20:15:55', '2023-11-07 20:15:55'),
(6, 'Mary Paul', 'Eum laboris et quos', '2023-11-07 20:16:01', '2023-11-07 20:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'Service', '<p><a class=\"css-9mylee\" href=\"https://www.nytimes.com/live/2023/11/07/us/election-day-2023\" data-uri=\"nyt://legacycollection/d1120827-6069-5a7e-8be2-33b98ca2dbdf\" aria-hidden=\"false\" style=\"margin: 0px; padding: 0px; border: 0px; text-size-adjust: 100%; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Times New Roman&quot;; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-decoration: none; color: black; background-color: rgb(255, 255, 255);\"></a></p><div style=\"margin: 0px; padding: 0px; border: 0px; text-size-adjust: 100%; font: inherit; vertical-align: baseline;\"><p class=\"summary-class css-yg12w5\" style=\"margin: 0.25rem 0px 0px; padding: 0px; border: 0px; text-size-adjust: 100%; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.875rem; line-height: 1.1875rem; font-family: nyt-imperial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: var(--color-content-tertiary,#5A5A5A); letter-spacing: 0.1px; position: relative;\">Ohio became the latest state to establish a right to abortion in its Constitution. Gov. Andy Beshear fended off Daniel Cameron in deep-red Kentucky.</p></div>', '2023-11-07 20:47:00', '2023-11-07 20:47:00'),
(2, 2, 'Laravel', '<span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">Laravel</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;has the most extensive and thorough documentation and video tutorial library of all modern web application frameworks, making it a breeze to get started&nbsp;...</span>', '2023-11-08 02:32:18', '2023-11-08 02:32:18');

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
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2022_09_10_033112_create_admins_table', 1),
(19, '2022_10_30_052638_create_categories_table', 1),
(20, '2022_12_24_182138_create_posts_table', 1),
(21, '2023_01_02_074628_add_photo_to_users_table', 1),
(22, '2023_01_02_090338_create_post_comments_table', 1),
(23, '2023_01_09_125120_create_questions_table', 1),
(24, '2023_01_09_152722_create_question_answers_table', 1),
(25, '2023_01_09_163935_create_question_answer_likes_table', 1),
(26, '2023_01_14_103736_create_contact_messages_table', 1),
(31, '2023_11_08_051052_create_settings_table', 2),
(32, '2023_11_09_161445_add_expires_at_to_users_table', 3),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 4);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 18, 'API TOKEN', 'bc9c834d1ab099b3522bf9569225105dae415db46862941be0017faba3e6486a', '[\"*\"]', NULL, NULL, '2023-11-09 10:50:30', '2023-11-09 10:50:30'),
(2, 'App\\Models\\User', 18, 'API TOKEN', '7ff7f3a0ddf3cd24822b0f82767601a979a3e2debc649da997347a26fb8fa363', '[\"*\"]', NULL, NULL, '2023-11-09 10:55:51', '2023-11-09 10:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `description`, `thumbnail`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deserunt sunt venia', 'Rerum possimus duis', 'dddddddd Et reprehenderit ame.', '1699409940.jpg', 4, 1, '2023-11-07 20:19:01', '2023-11-07 20:19:01'),
(2, 'Quae id culpa animi', 'Tempor in magni quo', 'In nihil harum est s. dhfugb', '1699410001.jpg', 5, 1, '2023-11-07 20:20:01', '2023-11-07 20:20:01'),
(3, 'Consequat Deserunt', 'Dolore possimus arc', 'Voluptatem, qui maio.jfudufubuif', '1699410023.jpg', 3, 1, '2023-11-07 20:20:23', '2023-11-07 20:20:23'),
(4, 'Neque soluta ipsum a', 'Inventore suscipit e', 'Dolorum ullam ut ass.fugu sami', '1699410051.jpg', 2, 1, '2023-11-07 20:20:51', '2023-11-07 20:20:51'),
(5, 'Eiusmod et velit el', 'Nulla commodi sit v', 'Nisi magni proident. anika', '1699410099.jpg', 5, 1, '2023-11-07 20:21:39', '2023-11-07 20:21:39'),
(6, 'Aut beatae nisi comm', 'Elit nihil ea sit', 'Est est error et nul. null jackes', '1699410127.jpg', 1, 1, '2023-11-07 20:22:07', '2023-11-07 20:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '<p>hi</p>', '2023-11-07 20:25:13', '2023-11-07 20:25:13'),
(2, 4, 2, '<p>hu</p>', '2023-11-07 20:39:59', '2023-11-07 20:39:59'),
(3, 2, 2, '<p>gh</p>', '2023-11-07 20:50:43', '2023-11-07 20:50:43'),
(8, 6, 2, '<p>45</p>', '2023-11-08 02:28:17', '2023-11-08 02:28:17'),
(9, 5, 2, '<p>90</p>', '2023-11-08 02:29:06', '2023-11-08 02:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `category_id`, `question`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'jj', '2023-11-07 20:53:46', '2023-11-07 20:53:46'),
(3, 2, 1, 'Laravel has the most extensive and thorough documentation and video tutorial library of all modern web application frameworks, making it a breeze to get started ...', '2023-11-08 02:32:45', '2023-11-08 02:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`id`, `question_id`, `user_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '<p>kop-</p>', '2023-11-07 20:54:33', '2023-11-07 20:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_likes`
--

CREATE TABLE `question_answer_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answer_likes`
--

INSERT INTO `question_answer_likes` (`id`, `user_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-11-07 20:54:37', '2023-11-07 20:54:37'),
(2, 2, 1, '2023-11-07 20:54:38', '2023-11-07 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_subtitle` text DEFAULT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `about_title`, `about_subtitle`, `logo_image`, `created_at`, `updated_at`) VALUES
(1, 'I am a Professional Web Developer , Proactive  Quick Learner , Passionate about continuous learning and staying updated with industry trends.', 'Proficient in PHP, Laravel framework, front-end technologies, and database management systems. Familiar  with Vue.js3 and version control system git. Adept at problem-solving, technical issue resolution, and collaboration. Eager to contribute skills and knowledge to develop innovative web applications.', '1699507233.png', '2023-11-08 10:43:15', '2023-11-08 23:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `expires_at`, `updated_at`, `photo`) VALUES
(1, 'Md Ali Sami', 'super@gmail.com', NULL, '$2y$10$DO9PitWzE4jY6b.58vB4nOkcrPxkatPZixs5hb2U25.9xgDmK6fI.', NULL, '2023-11-07 20:13:56', NULL, '2023-11-07 20:13:56', '1699409636.jpg'),
(2, 'Md Ali Sami', 'sami17151002@gmail.com', NULL, '$2y$10$m1ubum9.nb4YJB9BpZ3fceYcBbMiA8uGMIWg9RlzZkzBNI8ZmeNnq', NULL, '2023-11-07 20:24:45', NULL, '2023-11-07 20:24:45', '1699410285.jpg'),
(3, 'Ashik', 'mdashik@gmail.com', NULL, '$2y$10$NEhwOUa.dtXFgqOUe0bSyO2c6glfreYzkLD7Wpv6eRkiClBafYGTe', NULL, '2023-11-09 07:23:52', NULL, '2023-11-09 07:23:52', NULL),
(4, 'Sanjida akter anika', 'msanika38@gmail.com', NULL, '$2y$10$pjxZdKvxLWtCuDqcbyhafORoPsV9E6Pp/4NJC28VXpUJ32GjYQi4W', NULL, '2023-11-09 07:30:49', NULL, '2023-11-09 07:30:49', NULL),
(5, 'Md Sharif', 'mdsharif@gmial.com', NULL, '$2y$10$MdOEj/Zv5cMTFDWGUwqQUObtY4E4mRMIqxhhZYn2WjL1DIsgSGszG', NULL, '2023-11-09 07:38:26', NULL, '2023-11-09 07:38:26', NULL),
(6, 'Md Sadman', 'sadman23@gmail.com', NULL, '$2y$10$MCVQstwLsOQ/x9n/IdpoPuFOhvPDSz8DfW1nLAUJ1wCfkn2vN.zHG', NULL, '2023-11-09 08:08:09', NULL, '2023-11-09 08:08:09', NULL),
(7, 'Md Shamim', 'Shamim324@gmail.com', NULL, '$2y$10$YGf6K2tQdf4vOMWw5jb2ieo.6o4QiwrTImJdN5oqBMdTxe36F0qh.', NULL, '2023-11-09 08:08:54', NULL, '2023-11-09 08:08:54', NULL),
(8, 'Md Sofor Ali', 'mdsoforali324@gmail.com', NULL, '$2y$10$/2/UgIqaflwxq1XbFJegN.VXtUaQxesrX5wjf.uG/w7.7/0yPvY7C', NULL, '2023-11-09 09:41:02', NULL, '2023-11-09 09:41:02', NULL),
(9, 'Josna Begum', 'msjosna43@gmail.com', NULL, '$2y$10$pNTjUIta8.tSTghbMrcPGOa36CLfL73AvT8KNONyeDofaqouDc7Se', NULL, '2023-11-09 10:13:19', NULL, '2023-11-09 10:13:19', NULL),
(10, 'Sumaiya Kabir', 'sumaiyakabir301@gmail.com', NULL, '$2y$10$NAN2bhr7sEz5W3sIGnngK.cFF5oub.4pp1QW/H0c08LGUX28Duy4i', NULL, '2023-11-09 10:20:27', NULL, '2023-11-09 10:20:27', NULL),
(11, 'Enamul Sarker', 'enamul56@gmail.com', NULL, '$2y$10$lxsBjZynGCnXF/wL1KHwAeosspA6yfjVEGnZ5NTcwkwzuy0zQtT5e', NULL, '2023-11-09 10:23:38', NULL, '2023-11-09 10:23:38', NULL),
(12, 'Rijve Sarker', 'rijvirumi@gmail.com', NULL, '$2y$10$l7zgYH.Kw7TbrJsvFwU3jexHLu3ubnEeWos7BnXdJYJWiZwfSRpgO', NULL, '2023-11-09 10:24:37', NULL, '2023-11-09 10:24:37', NULL),
(13, 'Rome Sarker', 'romer6@gmail.com', NULL, '$2y$10$XSNDFrNqV08x.czQZwsGA.6PL49wDbIPdvYYexuaMTRuwiSIsqnBW', NULL, '2023-11-09 10:30:01', NULL, '2023-11-09 10:30:01', NULL),
(14, 'Nure Muhammad', 'nuremuhammad@gmail.com', NULL, '$2y$10$ySpyvxpUdpiybT9T81cpi.qQh5Dm2mRdmZlGkzVkOxNxScRsGwa46', NULL, '2023-11-09 10:33:38', NULL, '2023-11-09 10:33:38', NULL),
(15, 'Akash Ambani', 'akash_ambani@gmail.com', NULL, '$2y$10$b79A11DDatzslEEKBCQCtOhTI7oFLIMfs55JKRJXEk0.8eML1SbQS', NULL, '2023-11-09 10:40:30', NULL, '2023-11-09 10:40:30', NULL),
(16, 'Sikder', 'sikder_ali@gmail.com', NULL, '$2y$10$.NUWaHSdzhexoA5RRD5aZueYmqGXaoUb2R1Rl0SNTBGGlj77hsF/m', NULL, '2023-11-09 10:42:53', '2023-11-15 10:42:53', '2023-11-09 10:42:53', NULL),
(17, 'Sakib Hasan', 'sakib@gmail.com', NULL, '$2y$10$jA4S06Eeydi2RQjDYkWWGeoJVdgYnB5ARPIYcPj.UncMd4iiJn3Uy', NULL, '2023-11-09 10:45:03', '2023-11-09 10:44:14', '2023-11-09 10:45:03', NULL),
(18, 'Mehedi hasan', 'mehedihasan@gmail.com', NULL, '$2y$10$J2BHvIyf2Tmxw3aOuDtIu.1lpuVsD.BajwHM9zrobQ80ZFMpS1ET2', NULL, '2023-11-09 10:50:30', NULL, '2023-11-09 10:50:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_user_id_foreign` (`user_id`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answers_question_id_foreign` (`question_id`),
  ADD KEY `question_answers_user_id_foreign` (`user_id`);

--
-- Indexes for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answer_likes_user_id_foreign` (`user_id`),
  ADD KEY `question_answer_likes_answer_id_foreign` (`answer_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD CONSTRAINT `contact_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answer_likes`
--
ALTER TABLE `question_answer_likes`
  ADD CONSTRAINT `question_answer_likes_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `question_answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_answer_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
