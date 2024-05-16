-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 mai 2024 à 22:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `achref`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `machines`
--

CREATE TABLE `machines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TIM` int(11) NOT NULL DEFAULT 0,
  `TDG` int(11) NOT NULL DEFAULT 0,
  `TP` int(11) NOT NULL DEFAULT 0,
  `TI` int(11) NOT NULL DEFAULT 0,
  `TO` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `statut` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Statut 0, 1: Statut 1, 2: Statut 2, 3: Statut 3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `machines`
--

INSERT INTO `machines` (`id`, `TIM`, `TDG`, `TP`, `TI`, `TO`, `created_at`, `updated_at`, `user_id`, `statut`) VALUES
(1, 0, 0, 1900, 180, 500, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 2, 2),
(2, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 3, 0),
(3, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 4, 0),
(4, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 5, 0),
(5, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 6, 0),
(6, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 7, 0),
(7, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 8, 0),
(8, 0, 0, 3200, 900, 500, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 9, 1),
(9, 0, 1, 3, 2, 1, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 10, 0),
(10, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 11, 0),
(11, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 2, 0),
(12, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:45:43', 5, 0),
(13, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 4, 0),
(14, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 5, 0),
(15, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 6, 0),
(16, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 7, 0),
(17, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 8, 0),
(18, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 9, 0),
(19, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 10, 0),
(20, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 11, 0),
(21, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 2, 0),
(22, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 3, 0),
(23, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 4, 0),
(24, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 5, 0),
(25, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 6, 0),
(26, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 7, 0),
(27, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 8, 0),
(28, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 9, 0),
(29, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 10, 0),
(30, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 11, 0),
(31, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 2, 0),
(32, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 3, 0),
(33, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 4, 0),
(34, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 5, 0),
(35, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 6, 0),
(36, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 7, 0),
(37, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 8, 0),
(38, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 9, 0),
(39, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 10, 0),
(40, 0, 0, 3, 2, 0, '2024-05-05 21:37:38', '2024-05-05 21:37:38', 11, 0);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_22_012200_add_photo_and_phone_to_users_table', 1),
(7, '2024_04_22_033426_create_machines_table', 1),
(8, '2024_04_25_172154_add_colomn_userid_yo_machines', 1),
(9, '2024_05_01_141435_add_statut_to_machines_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`, `photo`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Lhrpj3cau1A3byc3pmaNi.OYvRZsM.Aseavmv/bmiYFcTZEYxatte', 1, NULL, '2024-05-05 21:37:18', '2024-05-05 21:45:15', 'public/profiles/Nche9Yp84149z7DvnbLNKQ9I1X929t1lr0WBJQx6.jpg', '11223589'),
(2, 'employee1', 'employee1@gmail.com', NULL, '$2y$10$35vQo0nEoK23M0tnhesTeOOu3siFhnZvEV/NE2y6NW0h.rBZTBZ3.', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '60614600'),
(3, 'employee2', 'employee2@gmail.com', NULL, '$2y$10$ebM/F4l7ezilIMaqrODSDewzr/JcykBggWU/T6mIszikGPZTYBjQ.', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '36166497'),
(4, 'employee3', 'employee3@gmail.com', NULL, '$2y$10$VD41OebHfUKyyREYvTNkMeIzQRbBKkpkY0O2EazQESfSApO.hvkpC', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '44150082'),
(5, 'employee4', 'employee4@gmail.com', NULL, '$2y$10$ekTFbAQD5Ln1mt31Mcze1eElJnB2JIqCIuByOYquDrMLuWSY7uSt6', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '52731809'),
(6, 'employee5', 'employee5@gmail.com', NULL, '$2y$10$Pn8xiAIC8QcLekFcjcJ4YuzbH5RhBhJbjB6x.qge2sQD1idTdTCZ6', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '66122147'),
(7, 'employee6', 'employee6@gmail.com', NULL, '$2y$10$f6sVCEWRLm6Bu.D0.D4Yt.QCD5NV9IlpL.xxf2eoCqIbPRYwVdL.S', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '14841418'),
(8, 'employee7', 'employee7@gmail.com', NULL, '$2y$10$lxH7qBaCkTMiORQSt9gKQ.EeX5ArsoIiTvdknbIPPVIJkgRa8ekSO', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '73353905'),
(9, 'employee8', 'employee8@gmail.com', NULL, '$2y$10$3IU.AXTLaeQul9/8Thxuj.08Tq1W75lygq5Bc09NW/33UtMF1nZQS', 0, NULL, '2024-05-05 21:37:18', '2024-05-05 21:37:18', NULL, '97696570'),
(10, 'employee9', 'employee9@gmail.com', NULL, '$2y$10$19ClciUaqwY0DSJM9qa7dubUw5FXNfRwpMs2OIAyHQg03sNaCkTwC', 0, NULL, '2024-05-05 21:37:19', '2024-05-05 21:48:15', 'public/profiles/aSeDpjKcBNpwEcH9Wb7Npa2ad7Ad8gJGHHMYgxI3.jpg', '54041410'),
(11, 'employee10', 'employee10@gmail.com', NULL, '$2y$10$OwhqsdKekcROw/SjnnlFV.LGz4Yz22jEM5EI7qzWUmRj1lxkej.tS', 0, NULL, '2024-05-05 21:37:19', '2024-05-05 21:37:19', NULL, '98754451');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `machines_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `machines`
--
ALTER TABLE `machines`
  ADD CONSTRAINT `machines_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
