-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2020 a las 07:33:49
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emision`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases`
--

CREATE TABLE `cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_lawyers`
--

CREATE TABLE `cases_lawyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `lawyer_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `names`, `lastnames`, `document_type_id`, `document_number`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hernan', 'García', 1, '98520782', '2020-07-03 22:05:19', '2020-07-04 03:05:19', '2020-07-04 03:05:19'),
(2, 'Luisa Fernanda', 'Gomez', 1, '1007238169', '2020-07-04 03:55:41', '2020-07-04 08:55:41', '2020-07-04 08:55:41'),
(3, 'Marina', 'Cardona', 2, '42779619', '2020-07-04 05:05:57', '2020-07-04 10:05:57', '2020-07-04 10:05:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_types`
--

INSERT INTO `document_types` (`id`, `code`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CC', 'Cédula', '2020-07-03 21:59:07', NULL, NULL),
(2, 'PA', 'Pasaporte', '2020-07-03 21:59:07', NULL, NULL),
(3, 'CE', 'Cédula Extranjería', '2020-07-03 21:59:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lawyers`
--

CREATE TABLE `lawyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(53, '2020_07_03_191908_create_table_cases', 1),
(57, '2014_10_12_000000_create_users_table', 2),
(58, '2014_10_12_100000_create_password_resets_table', 2),
(59, '2019_08_19_000000_create_failed_jobs_table', 2),
(60, '2020_07_03_180651_create_document_types_table', 2),
(61, '2020_07_03_181021_create_statuses_table', 2),
(62, '2020_07_03_181332_create_lawyers_table', 2),
(63, '2020_07_03_184025_create_clients_table', 2),
(64, '2020_07_03_192230_create_cases_table', 2),
(65, '2020_07_03_194047_create_cases_layers_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `code`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ON', 'Activo', '2020-07-03 21:59:07', NULL, NULL),
(2, 'OFF', 'Inactivo', '2020-07-03 21:59:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_client_id_foreign` (`client_id`),
  ADD KEY `cases_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `cases_lawyers`
--
ALTER TABLE `cases_lawyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_lawyers_case_id_foreign` (`case_id`),
  ADD KEY `cases_lawyers_lawyer_id_foreign` (`lawyer_id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_document_type_id_foreign` (`document_type_id`);

--
-- Indices de la tabla `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lawyers`
--
ALTER TABLE `lawyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lawyers_document_type_id_foreign` (`document_type_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_name_unique` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cases`
--
ALTER TABLE `cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cases_lawyers`
--
ALTER TABLE `cases_lawyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lawyers`
--
ALTER TABLE `lawyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `cases_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Filtros para la tabla `cases_lawyers`
--
ALTER TABLE `cases_lawyers`
  ADD CONSTRAINT `cases_lawyers_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`),
  ADD CONSTRAINT `cases_lawyers_lawyer_id_foreign` FOREIGN KEY (`lawyer_id`) REFERENCES `lawyers` (`id`);

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`);

--
-- Filtros para la tabla `lawyers`
--
ALTER TABLE `lawyers`
  ADD CONSTRAINT `lawyers_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
