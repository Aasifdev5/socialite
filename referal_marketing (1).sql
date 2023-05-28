-- phpMyAdmin SQL Dump
-- version 5.1.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2023 at 12:58 PM
-- Server version: 8.0.33-0ubuntu0.22.10.2
-- PHP Version: 8.1.7-1ubuntu3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `referal_marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_21_083739_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3EwPkhBuknR4F1hSDnrLwpYP9ouRmjENBmFwbj4b', 26, '152.58.59.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWkNvZm51Vk5Rb2x1Q3J5MFMzejFic0V2NVRzTTdXaEU3aWZscUo1USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluL2Rhc2hib2FyZCI7fXM6NToib2F1dGgiO2E6MTp7czo0OiJ0ZW1wIjtPOjUzOiJMZWFndWVcT0F1dGgxXENsaWVudFxDcmVkZW50aWFsc1xUZW1wb3JhcnlDcmVkZW50aWFscyI6Mjp7czoxMzoiACoAaWRlbnRpZmllciI7czoyNzoiaFBwa0lBQUFBQUFCbjBaQUFBQUJpR0psb3VVIjtzOjk6IgAqAHNlY3JldCI7czozMjoiVTlxeGp5QXRkT2hLZko2N0Q5VzdIajh4YlYwY3NhSkoiO319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjY7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjIyODoiZXlKcGRpSTZJbEJRYm5jMFJrZHZVeTlKVWxCSE5HWnpjVkl4UzJjOVBTSXNJblpoYkhWbElqb2lSMkZJYkhabFZIaFVZV0ZrT0RZcmNtOTZhbTFFY0RoQldUWkRPRU41WkhKcWNHbGpSMDgzU1hOQ1NUMGlMQ0p0WVdNaU9pSXdPVEV3WVRNMU16VXlaVGs1WldRd1lUSTVOV05oTXpFek5tTXlNV1k0TXpsaE1qZ3pZVGRoTlRSa056TXpZalZtWkdVeFlUVXpOekZsT0RNNE56TXdJaXdpZEdGbklqb2lJbjA9Ijt9', 1685278011),
('BNUMN60uNTycT0ZnE7wq3vKoWLb6Ino8GkfH0V1r', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidllIbUFVZW5GRVVIY3AyeE5pMW9zVmE5WEV1RU9SWTR3d0pLSEs0dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685275195),
('C0geOCWIOUXiL1SACJEZ2mQX64XG9VnK77QtrffX', NULL, '94.102.49.193', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZ5Q2E3eFNrZjAzSFBuNFFvWjVLY1BhQVJZS3I5SzhoZExqeVFKQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685276446),
('cDMEx7ab83AqHS1wHyUISb9de1WAK7HSarDJd9b5', NULL, '103.17.99.217', 'WhatsApp/2.23.5.81 A', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFRtM3BkUHViTU9EcEwwa2FySWtPUGlrdkdlMzZsTWFPM0dKd3BBbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1685277716),
('fpxm5WTG1PuLM4lEUfaAC8AfSsM63dqo32vL8mV7', NULL, '103.17.99.217', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVRqS0l2T3puNVRYZk5TMHdRYUFWeGM3QXpGYjdjbHVkeDJxeFRzayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1685277704),
('ifjgydcPDHEucTHJTAyxXvBaY7WMoOPCMrbKXu1D', NULL, '152.58.59.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVZWQVRPbW5pYXg0UFI0a2FIa0NuRnN4R0VSNWZEODJyUEhCemhTeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluL3R3aXR0ZXIiO319', 1685274500),
('LlwaRf7dXZwTJQwF97vI9JlJwP2p9DqXH5Qvl4cc', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTdLYlIwSUdJb29xSndwQzdnS0gxSjQ1Z3J1WnVSc1lEcFI1VW1WZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685273432),
('nlXFKUqU0Aqi6g79R0FH76ejY39StBX808IkuH6Z', NULL, '152.58.25.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlBxU3ZBQ1A2OFpQT20zRTBVMVRvODlYb2xaQ09OOUhQUGI2eU42dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1OiJvYXV0aCI7YToxOntzOjQ6InRlbXAiO086NTM6IkxlYWd1ZVxPQXV0aDFcQ2xpZW50XENyZWRlbnRpYWxzXFRlbXBvcmFyeUNyZWRlbnRpYWxzIjoyOntzOjEzOiIAKgBpZGVudGlmaWVyIjtzOjI3OiJpSDQyVWdBQUFBQUJuMFpBQUFBQmlHSXpIT3MiO3M6OToiACoAc2VjcmV0IjtzOjMyOiJvUUdXSGFYM3VxUnhIdnV3Rm9qc0pGejJLdjJtbVRDNyI7fX19', 1685277430),
('P4PprYqVLtQ3g2GGfelYzBcvrYTRSIB0hXVHvQaK', 27, '157.34.194.121', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOEVaUkNkSHFwcENuZUNab2RpYjZQWUVXQ0RlZ1BPSVR3ZE5DT2d2USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluL3R3aXR0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6Im9hdXRoIjthOjE6e3M6NDoidGVtcCI7Tzo1MzoiTGVhZ3VlXE9BdXRoMVxDbGllbnRcQ3JlZGVudGlhbHNcVGVtcG9yYXJ5Q3JlZGVudGlhbHMiOjI6e3M6MTM6IgAqAGlkZW50aWZpZXIiO3M6Mjc6IjM2VjBrQUFBQUFBQm4wWkFBQUFCaUdKdTJKdyI7czo5OiIAKgBzZWNyZXQiO3M6MzI6InFkRU5TZmdpc3FNVlFzN1F6SXZKMlIzSDV2cTFWRHJPIjt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI3O3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czoyMjg6ImV5SnBkaUk2SWl0MlVHRmFkVkZTUkhOR1lYWkJSRmRJTlZkRE5tYzlQU0lzSW5aaGJIVmxJam9pZDFGVE1WQndNbGhFWjNwTmNFNURNemMzTVZoU1RtRk5RMlppT0ZObFNFWmtTRTAyU25oNmRGQnpiejBpTENKdFlXTWlPaUk1TXpOaFpqRmtOREpqTkRRMk1qRTFabUl4TldVeE9UbG1OREJtTlRFM1l6WmxZbU0zWkRNMU0yWmhNVEprTWprMU9EWTVZVFkzTlRJNVpERXdNV1kxSWl3aWRHRm5Jam9pSW4wPSI7fQ==', 1685278611),
('teU5vOWkWtLv2BUaCMDEu5xCLTRbHMwrfTPr9cNI', NULL, '193.42.32.124', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:76.0) Gecko/20100101 Firefox/76.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHVCVDdmOUp0d1lFdE9DUEpTd2NWQlFIRzllVGd3cTF4SE9tQk81TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685275343),
('tYPoC3cXHwvB6rlr66kMFjzXtHL7QOTObyHfMBbA', NULL, '152.58.25.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibUxRVlVPME5rVWN1ODk0SFFQTDFtZHltTTU2amtoVkQ4Nnk0OGNJdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluL3R3aXR0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6Im9hdXRoIjthOjE6e3M6NDoidGVtcCI7Tzo1MzoiTGVhZ3VlXE9BdXRoMVxDbGllbnRcQ3JlZGVudGlhbHNcVGVtcG9yYXJ5Q3JlZGVudGlhbHMiOjI6e3M6MTM6IgAqAGlkZW50aWZpZXIiO3M6Mjc6ImhURFpMQUFBQUFBQm4wWkFBQUFCaUdJOUtGYyI7czo5OiIAKgBzZWNyZXQiO3M6MzI6IkQ1OXlkOUMyN2drZ0dPV1lOdjJpYXhGTUhqSnRkcjZJIjt9fX0=', 1685275355),
('vnX2hjtLduJhQwBLCExeX8QtU5Zc5rGNocGxwv82', NULL, '152.58.25.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUh6bWZvSGRGcnZlZHVYYlNsT05PZU5hcnVMdERiSkNUVUptNTRWTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluL3R3aXR0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6Im9hdXRoIjthOjE6e3M6NDoidGVtcCI7Tzo1MzoiTGVhZ3VlXE9BdXRoMVxDbGllbnRcQ3JlZGVudGlhbHNcVGVtcG9yYXJ5Q3JlZGVudGlhbHMiOjI6e3M6MTM6IgAqAGlkZW50aWZpZXIiO3M6Mjc6Ijdua3dIZ0FBQUFBQm4wWkFBQUFCaUdKVkEzYyI7czo5OiIAKgBzZWNyZXQiO3M6MzI6IlZoU1BiTUFqVlVqTUJ0MGlBVHVDYWFjWjZOZkg0bDhwIjt9fX0=', 1685276918),
('VPXB3DPqTcWDSH7gDVXvc9CYEicHmrZQbV6E0RlK', NULL, '141.98.11.41', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2ZrVjlMT1VWdGhyZlUzbnNZM25xc2E3dDJwSDBNbXR1aWQ3WnkyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685271974),
('X0y3tEgzx8WDclhgAa9dwcir3UiNofYQF8tSouHG', NULL, '45.147.248.15', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUNpTW1zSTBHOUo5UkdmZGZCSXBOc2w0ajVUdUJ0NzlhRGdOMDZabCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qdWRnZTMuYXBpLnByb3h5c2NyYXBlLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1685273862);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `social_id`, `social_type`) VALUES
(24, 'Arsh Ahmed', 'aasifdev5@gmail.com', NULL, 'eyJpdiI6InJtbFNpaUVRNWdySm1LbVhqZThTbGc9PSIsInZhbHVlIjoiRVRvQVZlM3BmQURIUHhjdExibE5kZ0dmenpTdVNINGZCL2dEZm9vNkl3az0iLCJtYWMiOiJjZDY2ZTdkOGQ5M2RjZWZlOGI5MjJlODE0MTk2YjhjMDIzYjg2YmI0NTdlZjAzZjUxNzQyZWM5NjBlMGMwMGU1IiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, '2023-05-25 17:31:57', '2023-05-25 17:31:57', '104192879361202', 'facebook'),
(25, 'Aasif Ahmed', 'asifarslaan@gmail.com', NULL, 'eyJpdiI6Ik9zVm9CV2VVRCt1UnVjQ0VlbDJidVE9PSIsInZhbHVlIjoiQmQ3aEtaNlp2SWljSWU2SE96c2ZSYmZSZWF3ajE0a1RLQ3pBYmU0Q3BRQT0iLCJtYWMiOiJmZGQyYTZmMDI3ZGUzYmNmMDI5NmQ4MjRiYmQxZWVhZmQyYjc0MWM0NzM0ZjdiNTU5Nzc3NjViOTY4OWQ0ODAzIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, '2023-05-28 10:47:59', '2023-05-28 10:47:59', 'IP1rLU4JJg', 'linkedin'),
(26, 'Ars Tech', NULL, NULL, 'eyJpdiI6IlBQbnc0RkdvUy9JUlBHNGZzcVIxS2c9PSIsInZhbHVlIjoiR2FIbHZlVHhUYWFkODYrcm96am1EcDhBWTZDOEN5ZHJqcGljR083SXNCST0iLCJtYWMiOiIwOTEwYTM1MzUyZTk5ZWQwYTI5NWNhMzEzNmMyMWY4MzlhMjgzYTdhNTRkNzMzYjVmZGUxYTUzNzFlODM4NzMwIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, '2023-05-28 12:33:30', '2023-05-28 12:33:30', '1662776468383084544', 'twitter'),
(27, 'HR NatrajInfotech', 'hrnatrajinfotech@gmail.com', NULL, 'eyJpdiI6Iit2UGFadVFSRHNGYXZBRFdINVdDNmc9PSIsInZhbHVlIjoid1FTMVBwMlhEZ3pNcE5DMzc3MVhSTmFNQ2ZiOFNlSEZkSE02Snh6dFBzbz0iLCJtYWMiOiI5MzNhZjFkNDJjNDQ2MjE1ZmIxNWUxOTlmNDBmNTE3YzZlYmM3ZDM1M2ZhMTJkMjk1ODY5YTY3NTI5ZDEwMWY1IiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, '2023-05-28 12:50:33', '2023-05-28 12:50:33', 'u61G-glxlM', 'linkedin');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
