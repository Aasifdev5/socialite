-- phpMyAdmin SQL Dump
-- version 5.1.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2023 at 07:12 PM
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
('06EOzHpMjPbVhC4WPQ9K9QW8ONoQN3TPL4lBPmP8', NULL, '179.43.177.244', 'Hello World', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGZ5eUpwTWJPNVpxTnU3eUVub1pGY1BVMjRkU2xPUndBUjVLVHh0TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684901627),
('4gU62QZwLTJWPX5Grq6THu0U1iL3xUKeevuj1pMP', NULL, '152.32.215.5', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/602.54 (KHTML, like Gecko) Chrome/66.0.2917 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2tFVUNrczJDVkdaUnpxVEF6TFZHRjJnckxDM1pTVXBoNUNLWUNUVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684903217),
('4TvNUP351HrL3icDiXb2ohDMv1YO5HODhSHBclx0', NULL, '194.55.224.203', 'Linux Gnu (cow)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWpTTWFOM25UeGh6aUJ1eU5hUUU4eTJjTHVtT1dzT1VJbDZPV21XciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684903870),
('789OsVG2lfUIbgq4YZpgzp9PsfoIS3hv5j4oCFfm', NULL, '116.72.200.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXVCVm1wcHVvbjR1aEpKMWUwdnkwTmhXdmFnNXdYeGdzbHVtSkR3byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684909220),
('9TdRYRgXkjL8pRKrk2UC77fYh4IQ8mOOOmfP3xCq', NULL, '205.210.31.109', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW02VW5hVURsZm1lQlpWN0pWMHBGd25nRm1KanJZbVFydkw5VWlYWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMjcuMC4xLjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684908719),
('a3Cm8yML5rEhsce2rLbDCs9EFmgH356KoNDaFF13', NULL, '116.72.200.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamFxd3pXekNsVFg4dzQweHVhT0ZtSHJOZVNrOVJZdjNLdE45YkJyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684918391),
('aAGtWnxFj2dPelHbCiOpOP4FQJ5FrHDXNZEjMVSU', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3lrbERrc1lFRDhmc0pjWExkbWU0YVNGenFKMDNmbFJrZlBjalh1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684895263),
('AWrABLYRdFAifM9HMlOICLZz2IjXLOwIc0LezJrC', NULL, '159.89.116.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakh5emZqWGRnTHRkRmowQ2lCRkJvYWVlanE5RWZiOWRTSjZ1OXZtQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684891576),
('AzueX3XNVGJvMNbz8joYdCp9Q3K6A4FYgNiZ8TuU', NULL, '194.55.224.203', 'Linux Gnu (cow)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVndheHdndzZaeXZ1SmIyTVduUXVnUXpVZDRHVDRJVzZ1Q3IzcVNxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684900328),
('bUmiUHYJtM6hGJ9fRLSQafwy1d0Db0ONRCQ9d72x', NULL, '194.39.227.194', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHd4NGRyaDU4aW9nRURqS3lTVVZoQVZCQ3BPZ1gzdzhpZmw4VG5seiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684905850),
('cKFTZaBw7mpPVsEXymTz0EhM2Iduw2rS9YZvFUqH', NULL, '152.32.240.210', 'curl/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGJucEt4cUlEUlJleTNTR09NcFpkZjh3alhpaDc5M3JZZFZDM2dvTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684902629),
('cwEJFvBs5teTXjxoDXiII0dnjYfKYorc6yqmBbsS', NULL, '162.246.16.194', 'Python-urllib/3.8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEs3RjduWGpwWjcxOTJTOUp2TkFTWmJpTDJVcVJrbmJhcklEQlFkRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684900787),
('DQnT4gduIAGQiOiYlHXjGSsAdefBvsyUUwFRYqEk', NULL, '40.77.167.81', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUkwS3lRUkZibHo1OHJJems1OXlsU3lGc0FjOXlmSXVkWEF2d2Q3SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684895552),
('eFRqlhcGkIfE6LTtJs9YjSY1dCQ4YpqKOd7kWkbw', NULL, '116.75.196.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnAzSjVGQWxFb0FMd1QwNTNjdHZmYjFVU3FDUG1ncjQ2aUxrU2J1eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684918439),
('g1V2fwMM7JQu03eJoGUMPJz16oHTeoxW3Pg6OOif', NULL, '46.101.112.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0Z3UjVMSUlJNVJuZ1R4dGNtSXM2MkRnMGtaUlFYbGNac0dtNk5IYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684898415),
('gudl8jUzktaBQcvkFluV65ZfuCOoAZ7zhNiGNnpM', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWngyUzZTSFpVQXFGT3Y0S2ZGc3hOM1N1bFFpMWlwTGpnTnR2aFBFMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684908486),
('gW9KKAzCecAhPGwJ2Nty78aXTWRypWKdYDtuQ9fI', NULL, '116.75.215.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDFUYVNOZ2Nkb0J5eG9sSmg1Q1RaeWRkYmN0RjZYTXNYTml5VHM2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684909085),
('hHcto1UsVD1f8LrA5wByTsBDqLzc7sqk6vOiPrWp', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3dXRk0xazNYRWI4aXdFeTlTNmxrMTAzMFNFbW1RTWhTd1k2WURMeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684901694),
('IBHOfGknLEKIV9xRKZgIhPo2jIoR7ABQwndw2Flg', NULL, '94.102.61.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnBMVWM4VW9GeVV1eTBMMWxlN3o5R1dPV1NvZWFzd0lGejNYV09uaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684889873),
('Ja61qagKJ8T579WwuKupw4Cxo91IScxZrvXjE5tr', NULL, '138.197.95.75', 'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDA5Q0NmV281ZDdhOE90NkRsRFhqV29HUmM4VUE1RHJyUTRSeWRKZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684903930),
('JmzdEkNqnMaFQr8SZsly1XthAhvK0498KgX3Sjw8', NULL, '51.158.241.133', 'Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDdXMUsxVFozOEttaDJiajdUeFROSXhSZXhvWGhYSlpOYTNnaFVDOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684903900),
('KFRSNtgm1yNRPTabSVKYV5eZ93ftTfHG2FGD6RTs', NULL, '1.187.180.99', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieG5oMm5sZ2M0U3c3bG01ZWtEelBtMDB0dzBSRzRNaDEzMWl0ZHNHRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684904158),
('Lb8T7akZISgkdtrE4OWLyYjvYlW83pmxgdFh507Z', NULL, '141.98.11.41', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXMxVnQxTkpCcnJ5VXRORE5ta2kweVdPbzhIUkNVR01TcXFmaTB1TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684900724),
('mLSYNs4u8Ovl1nfxBQ213QWCp3Yoic921DMm36zN', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU1xUFNFQWNYQUZTakx1TEhHaGtJTEJ6ZWxIRk51dG9hZDRpYjRMWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684904382),
('NEaWN3gQiQTkopTix37YnO9q0MMXWK8t56bKWv8A', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUtQMVV6T1dKVE9LbGhBODNnelBuNVhCZmJjYlVKT3l3aGJoc2tIViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684899041),
('NmZAWxqMCZf28k9xR6FYB5z9R3Yd6AzZYWtjdxkZ', NULL, '46.101.112.78', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/15E148 Snapchat/10.77.0.54 (like Safari/604.1)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHNrcEJ4RUVtQ3Iya2NsSzhLb0UxY090Q295M2lvbDJhZ2tVcUc0UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684898420),
('PYXqaM7NxQ01yKW8BkWPF45egbnNDQrmWrCuN1oT', NULL, '20.55.53.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3NCa1dpOWF2UHpGa1FOQkttWkVXWkJxT1J4czRiUHBwM0FkN2lvTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684893677),
('qsdBTroLfLwgxrvsF8ah647uXrGBtStx9NPrKoBg', NULL, '216.218.206.67', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjJlZlQ4MXAwWmtvaVhQWHBtYlBiR3dtY1hFelZkRDRnNWs0SmI1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684894854),
('s3JrkCfrYF1AS8A6FjzD4RNA2XarZKsIs9OvDkEb', NULL, '193.35.18.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.5615.138 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmZ2ZFl4RDFTUUFqWWxMbXJIb2dFQ0E5ZlJvZmVEWTMwZ0JGcDlSSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684900634),
('sTu4yzNL4WxJsHbjrQmDPfl6R8h9P1pfibPagybx', NULL, '138.197.95.75', 'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnZmUnJHanlUOE12TUNoU2k5OTB4NnU4RzhScTIycW05MFMwYUlQdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly8xMjcuMC4xLjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684902597),
('UfgMgWFWg6GBTWjcuJGvW0ELG0YcGzgUWoW0X3HJ', NULL, '220.94.228.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE1qbzdhcDRmSmRzTG9yRXBrdHkxc05LTFdPRVdKR3J3YXNibm42ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684901309),
('Uhf6Wd2GnYV0XuNK7i3DaWLn3La90IGLZ6PMTbn7', NULL, '35.246.175.68', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVpyNXBTa1UycVM0Wm1tbFQwUmlGdWV5UGptYkdPZkZicXFISWIzUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684892966),
('wHz4ZO6F4O8Z33sHwc1mGebNmzzfDvWMNNxPsQsl', NULL, '141.98.11.41', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWlwUWpBZmdRYWVwRW1ZVm10Y3F2YmlTZ3VxSUE3SEdxZFNpZ1NxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684895851),
('wsjaW8Hhp1YD1VNg8WRFQVlcZ6cRw4Y6sEv6McHx', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMThhcnNZVk92MHZUOVF5N2duMm9ZTW9CV3lKanFLa2VCSkNjOFZyciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684890087),
('WVbDdlM5XQAtFLavngrbjFxjqlxFgpYM2iMDipFH', NULL, '34.94.125.54', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2RTc0VodVNvb01OWDlGRE5GdjVxV05QYmlIVG9NZVRCVHNReVg3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684889644),
('XCZTw8MjIHtSFQ4FtzcCuc8qqRCjIMZKL9xfiQe1', NULL, '193.35.18.65', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2RUSWtYOWlySUd0Zkwzc3VVZGF4SzduRmRkaENFbThwRkhVUE1QbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684894560),
('ylElMDfceGE3NMo5B43Def8QWYHXdP7nmfn1RYO1', NULL, '43.130.121.32', 'python-requests/2.30.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0kzTWpIWUhqY01NUTduZGkxOHlwU2xvWmJwU3BlbjVwRTRacDRFSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcmVmZXJhbG1hcmtldGluZy5uYXRyYWp3ZWJzLmluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684891416),
('YuwAuA6MQ86Mw3OGLKHgQx74nWN89wTwIGVMRHZY', NULL, '179.43.177.244', 'Hello World', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnZKcWtRQ2VIVENGY2dudW16RVlZTFhmU0wwUFNYSTFId1htSjA1cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xNDMuMTEwLjE4OC4xMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1684906004),
('YW5BKQSnPsIQwG7eooSigNJ8QisQkcAAIFm7I2IW', NULL, '40.77.167.81', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGxNcDFINXhVQm5TU0tSWkd4SVVSS3pTWnM5cWFWWjF6elFyQmppVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vMTQzLjExMC4xODguMTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1684893029);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
