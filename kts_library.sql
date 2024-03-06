-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 07:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kts_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'AYAM', 'lXRwoJatd0ixnV453k6ixsIto5mSt1bPQUWxJqUz.jpg', '2024-03-03 20:05:19', '2024-03-03 20:05:19'),
(2, 'SAYA', '6C9eHmvkIkN6euAmCzRWRjXp9m2Kt8dMtQPvjJSQ.jpg', '2024-03-04 08:29:37', '2024-03-04 08:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `publisher_id`, `title`, `cover`, `description`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'DUAR', 'wkPpACtx0JihHCL0wZJGIPlHQOm0ySOvEoTWd79o.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus sit amet est placerat in egestas. Eros in cursus turpis massa tincidunt dui ut. Duis tristique sollicitudin nibh sit. Est lorem ipsum dolor sit. Ligula ullamcorper malesuada proin libero nunc consequat interdum. Malesuada proin libero nunc consequat interdum. Tempor orci eu lobortis elementum. Sed felis eget velit aliquet sagittis id consectetur purus. Diam volutpat commodo sed egestas egestas. Molestie at elementum eu facilisis sed. Diam vel quam elementum pulvinar etiam. Magna eget est lorem ipsum dolor sit. Pellentesque massa placerat duis ultricies lacus. Quis lectus nulla at volutpat diam ut. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nunc pulvinar sapien et ligula ullamcorper malesuada. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla.\r\n\r\nSit amet mattis vulputate enim nulla aliquet porttitor lacus. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Dolor magna eget est lorem. Risus nec feugiat in fermentum. Massa enim nec dui nunc. Suspendisse in est ante in. Sed vulputate odio ut enim blandit volutpat. Varius duis at consectetur lorem. A arcu cursus vitae congue mauris rhoncus aenean vel. Urna duis convallis convallis tellus id interdum velit laoreet id. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Gravida arcu ac tortor dignissim convallis aenean. Et netus et malesuada fames ac turpis egestas. Egestas sed tempus urna et pharetra pharetra. Suspendisse in est ante in nibh mauris. Faucibus nisl tincidunt eget nullam non nisi. Ipsum dolor sit amet consectetur adipiscing elit.\r\n\r\nUt venenatis tellus in metus vulputate eu scelerisque felis. Ut tristique et egestas quis ipsum suspendisse. Mauris vitae ultricies leo integer. Arcu bibendum at varius vel pharetra vel turpis. Consectetur adipiscing elit pellentesque habitant morbi. Bibendum arcu vitae elementum curabitur vitae nunc sed. Consequat ac felis donec et odio. Senectus et netus et malesuada fames ac turpis egestas integer. In ante metus dictum at tempor commodo ullamcorper a lacus. Congue nisi vitae suscipit tellus mauris a diam maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Dapibus ultrices in iaculis nunc sed augue. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Porta lorem mollis aliquam ut porttitor leo. Id interdum velit laoreet id donec ultrices. Purus gravida quis blandit turpis cursus in hac habitasse. Enim neque volutpat ac tincidunt.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Morbi leo urna molestie at elementum eu facilisis sed. Nec ultrices dui sapien eget. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Consectetur adipiscing elit ut aliquam purus. Turpis cursus in hac habitasse platea dictumst quisque sagittis. Sed tempus urna et pharetra pharetra massa. Velit aliquet sagittis id consectetur purus ut. Vel orci porta non pulvinar. Metus dictum at tempor commodo ullamcorper a lacus. Sed velit dignissim sodales ut eu sem. Leo vel orci porta non pulvinar neque laoreet suspendisse. Egestas pretium aenean pharetra magna ac. Tincidunt vitae semper quis lectus nulla at volutpat. Placerat duis ultricies lacus sed. Maecenas accumsan lacus vel facilisis volutpat est velit egestas. Blandit libero volutpat sed cras ornare. Et ultrices neque ornare aenean euismod elementum nisi.\r\n\r\nTellus cras adipiscing enim eu turpis egestas pretium. Nunc sed id semper risus in hendrerit gravida rutrum quisque. Turpis massa sed elementum tempus egestas sed. Augue interdum velit euismod in pellentesque massa placerat duis ultricies. Netus et malesuada fames ac turpis egestas sed. At augue eget arcu dictum. Dignissim convallis aenean et tortor. Velit scelerisque in dictum non consectetur a erat. Id semper risus in hendrerit gravida rutrum quisque non. Ut lectus arcu bibendum at. Dignissim suspendisse in est ante in. Lectus quam id leo in vitae. Ornare suspendisse sed nisi lacus. Sagittis purus sit amet volutpat consequat mauris nunc. Ut tortor pretium viverra suspendisse potenti nullam ac. Dui nunc mattis enim ut tellus. Enim praesent elementum facilisis leo vel. Nulla malesuada pellentesque elit eget gravida cum. Bibendum enim facilisis gravida neque convallis a cras. Ultrices tincidunt arcu non sodales neque sodales ut etiam.', 2022, '2024-03-03 20:06:43', '2024-03-03 20:06:43'),
(2, 1, 1, 'AYAM GORENG ENAK', 'tLPtoz5d2B7Z9bg3Em8zh5ucU692i5RkycwwEKK4.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus sit amet est placerat in egestas. Eros in cursus turpis massa tincidunt dui ut. Duis tristique sollicitudin nibh sit. Est lorem ipsum dolor sit. Ligula ullamcorper malesuada proin libero nunc consequat interdum. Malesuada proin libero nunc consequat interdum. Tempor orci eu lobortis elementum. Sed felis eget velit aliquet sagittis id consectetur purus. Diam volutpat commodo sed egestas egestas. Molestie at elementum eu facilisis sed. Diam vel quam elementum pulvinar etiam. Magna eget est lorem ipsum dolor sit. Pellentesque massa placerat duis ultricies lacus. Quis lectus nulla at volutpat diam ut. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nunc pulvinar sapien et ligula ullamcorper malesuada. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla.\r\n\r\nSit amet mattis vulputate enim nulla aliquet porttitor lacus. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Dolor magna eget est lorem. Risus nec feugiat in fermentum. Massa enim nec dui nunc. Suspendisse in est ante in. Sed vulputate odio ut enim blandit volutpat. Varius duis at consectetur lorem. A arcu cursus vitae congue mauris rhoncus aenean vel. Urna duis convallis convallis tellus id interdum velit laoreet id. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Gravida arcu ac tortor dignissim convallis aenean. Et netus et malesuada fames ac turpis egestas. Egestas sed tempus urna et pharetra pharetra. Suspendisse in est ante in nibh mauris. Faucibus nisl tincidunt eget nullam non nisi. Ipsum dolor sit amet consectetur adipiscing elit.\r\n\r\nUt venenatis tellus in metus vulputate eu scelerisque felis. Ut tristique et egestas quis ipsum suspendisse. Mauris vitae ultricies leo integer. Arcu bibendum at varius vel pharetra vel turpis. Consectetur adipiscing elit pellentesque habitant morbi. Bibendum arcu vitae elementum curabitur vitae nunc sed. Consequat ac felis donec et odio. Senectus et netus et malesuada fames ac turpis egestas integer. In ante metus dictum at tempor commodo ullamcorper a lacus. Congue nisi vitae suscipit tellus mauris a diam maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Dapibus ultrices in iaculis nunc sed augue. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Porta lorem mollis aliquam ut porttitor leo. Id interdum velit laoreet id donec ultrices. Purus gravida quis blandit turpis cursus in hac habitasse. Enim neque volutpat ac tincidunt.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Morbi leo urna molestie at elementum eu facilisis sed. Nec ultrices dui sapien eget. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Consectetur adipiscing elit ut aliquam purus. Turpis cursus in hac habitasse platea dictumst quisque sagittis. Sed tempus urna et pharetra pharetra massa. Velit aliquet sagittis id consectetur purus ut. Vel orci porta non pulvinar. Metus dictum at tempor commodo ullamcorper a lacus. Sed velit dignissim sodales ut eu sem. Leo vel orci porta non pulvinar neque laoreet suspendisse. Egestas pretium aenean pharetra magna ac. Tincidunt vitae semper quis lectus nulla at volutpat. Placerat duis ultricies lacus sed. Maecenas accumsan lacus vel facilisis volutpat est velit egestas. Blandit libero volutpat sed cras ornare. Et ultrices neque ornare aenean euismod elementum nisi.\r\n\r\nTellus cras adipiscing enim eu turpis egestas pretium. Nunc sed id semper risus in hendrerit gravida rutrum quisque. Turpis massa sed elementum tempus egestas sed. Augue interdum velit euismod in pellentesque massa placerat duis ultricies. Netus et malesuada fames ac turpis egestas sed. At augue eget arcu dictum. Dignissim convallis aenean et tortor. Velit scelerisque in dictum non consectetur a erat. Id semper risus in hendrerit gravida rutrum quisque non. Ut lectus arcu bibendum at. Dignissim suspendisse in est ante in. Lectus quam id leo in vitae. Ornare suspendisse sed nisi lacus. Sagittis purus sit amet volutpat consequat mauris nunc. Ut tortor pretium viverra suspendisse potenti nullam ac. Dui nunc mattis enim ut tellus. Enim praesent elementum facilisis leo vel. Nulla malesuada pellentesque elit eget gravida cum. Bibendum enim facilisis gravida neque convallis a cras. Ultrices tincidunt arcu non sodales neque sodales ut etiam.', 2022, '2024-03-03 20:31:02', '2024-03-03 20:31:02'),
(3, 1, 1, 'MAKAN AYAM MENTAH', 'csgEFHh3raPvA19ropWTBw6b5zP1l8G7VhUjWDA8.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Consectetur lorem donec massa sapien faucibus et. Nunc sed augue lacus viverra vitae congue eu consequat. Arcu dictum varius duis at consectetur lorem donec. Donec enim diam vulputate ut pharetra. Leo vel orci porta non pulvinar neque. Sem fringilla ut morbi tincidunt augue. A pellentesque sit amet porttitor eget dolor. Dui faucibus in ornare quam viverra orci. Ante in nibh mauris cursus. A diam maecenas sed enim ut sem viverra. In metus vulputate eu scelerisque felis imperdiet proin.\r\n\r\nFames ac turpis egestas integer eget aliquet nibh. Blandit aliquam etiam erat velit scelerisque. Adipiscing bibendum est ultricies integer quis auctor elit sed vulputate. Condimentum lacinia quis vel eros donec. Id diam maecenas ultricies mi. Malesuada fames ac turpis egestas sed tempus urna. Imperdiet proin fermentum leo vel orci porta non pulvinar. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Convallis tellus id interdum velit laoreet id donec. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Dui ut ornare lectus sit amet est. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere morbi. Tortor at auctor urna nunc id cursus metus aliquam. Fermentum dui faucibus in ornare quam viverra orci sagittis eu. Tempor orci eu lobortis elementum nibh tellus molestie. Sed cras ornare arcu dui vivamus.', 2024, '2024-03-04 01:03:12', '2024-03-04 01:03:12'),
(4, 1, 1, 'JAWA ADALAH KUNCI', 'zSTpFpZNiiuSQn0dGUHbJEfLIEMRrbbXHTjhNa6P.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor condimentum lacinia quis vel eros. Nullam vehicula ipsum a arcu cursus vitae. In hac habitasse platea dictumst vestibulum rhoncus. Ante in nibh mauris cursus mattis. Ac turpis egestas sed tempus urna et pharetra. Et netus et malesuada fames ac turpis. Tellus elementum sagittis vitae et leo duis ut diam quam. Consectetur a erat nam at lectus urna duis convallis. Nibh nisl condimentum id venenatis. Elementum curabitur vitae nunc sed velit dignissim. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Pretium quam vulputate dignissim suspendisse in. At ultrices mi tempus imperdiet nulla. Mattis aliquam faucibus purus in massa tempor nec feugiat. Mauris pharetra et ultrices neque ornare aenean. Quam lacus suspendisse faucibus interdum posuere.\r\n\r\nTortor aliquam nulla facilisi cras. Vivamus at augue eget arcu dictum. Enim ut sem viverra aliquet eget sit amet. Gravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. Adipiscing bibendum est ultricies integer quis auctor elit sed. Ipsum dolor sit amet consectetur adipiscing. Risus pretium quam vulputate dignissim. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Rhoncus est pellentesque elit ullamcorper dignissim cras. Eget lorem dolor sed viverra. Accumsan lacus vel facilisis volutpat est. Id velit ut tortor pretium viverra suspendisse potenti nullam. Ut sem viverra aliquet eget sit amet. Donec enim diam vulputate ut pharetra. Libero enim sed faucibus turpis in eu mi bibendum neque.', 2135, '2024-03-04 07:55:41', '2024-03-04 07:55:41'),
(5, 2, 1, 'Yaudah sih', 'y3WNIur5mCH4RvZ6gYazEkLAQ1AIYRN8aj99anJ7.pdf', 'Nih', 9999, '2024-03-04 08:47:33', '2024-03-04 08:47:33'),
(6, 2, 1, 'Chipi chipi chapa chapa', 'WNBdlEJmUFrajoeLTJIiB0MXgDbDe21iQa4mPLwV.jpg', 'Aww aww', 0, '2024-03-04 08:53:01', '2024-03-04 08:53:01'),
(7, 1, 1, 'adadadad', 'WZ03Iptnn2B8MvyeetARuAczgHuJ06x57VAhUMmk.jpg', 'fsafgegerg', 9999, '2024-03-04 08:58:41', '2024-03-04 08:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2024_03_03_072837_create_authors_table', 1),
(13, '2024_03_03_072853_create_publishers_table', 1),
(14, '2024_03_03_072912_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'SAYA', 'DISANA', '2024-03-03 20:05:31', '2024-03-03 20:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ayam', 'ayam@gmail.com', NULL, '$2y$12$m0ERze6DcYO1C08x/UFG0ucxinkMvHqLc6Kf50Md8ZC1r1/O/O5DG', NULL, '2024-03-03 20:00:51', '2024-03-03 20:00:51'),
(2, 'bebek', 'bebek@gmail.com', NULL, '$2y$12$gQnklSFLKyjzYSj5RP.QGOS1dTswzxqgOfi3Hxm2V6kVcegdCOu7y', NULL, '2024-03-04 08:00:57', '2024-03-04 08:00:57'),
(3, 'kuda', 'kuda@gmail.com', NULL, '$2y$12$CtUNe5BNQGStUNbGFro3Bu/VM4MyFHV1hfGirmZyW6UOV1a1qGMpu', NULL, '2024-03-04 08:27:39', '2024-03-04 08:51:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

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
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
