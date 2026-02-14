-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2026 at 07:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bisindocnn`
--

-- --------------------------------------------------------

--
-- Table structure for table `abjads`
--

CREATE TABLE `abjads` (
  `id` bigint UNSIGNED NOT NULL,
  `huruf` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berkas_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abjads`
--

INSERT INTO `abjads` (`id`, `huruf`, `deskripsi`, `berkas_video`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Kepalkan tangan dengan ibu jari tegak lurus di samping telunjuk.', 'uploads/abjad/1770390929_A_png.rf.8d47278d66a757fa326362cde5594c89.jpg', '2025-12-11 10:07:18', '2026-02-06 07:15:29'),
(2, 'B', 'Buka telapak tangan dengan jari-jari rapat dan tegang, ibu jari ditekuk ke dalam telapak tangan.', 'uploads/abjad/1770390956_B_png.rf.163490c9927d94a67fe244e573c319c1.jpg', '2025-12-11 10:11:12', '2026-02-06 07:15:56'),
(3, 'C', 'Bentuk huruf C dengan tangan kanan, jari-jari melengkung.', 'uploads/abjad/1770390980_C_png.rf.a8295e77e590d323a424c43fb649f3be.jpg', '2026-01-12 11:26:52', '2026-02-06 07:16:20'),
(4, 'D', 'Acungkan jari telunjuk lurus ke atas, sementara ibu jari dan jari lainnya membentuk lingkaran.', 'uploads/abjad/1770391038_D_png.rf.e0fd96993dc6b8cbcfd00d303e89e760.jpg', '2026-01-12 11:26:52', '2026-02-06 07:17:18'),
(5, 'E', 'Tekuk semua jari ke arah telapak tangan, namun tidak mengepal, ibu jari di bawah jari-jari lainnya.', 'uploads/abjad/1770391071_E_png.rf.05dfcdd8d9397d07e8f968f16e9cb94c.jpg', '2026-01-12 11:26:52', '2026-02-06 07:17:51'),
(6, 'F', 'Satukan ujung telunjuk dan ibu jari membentuk lingkaran, jari lainnya tegak lurus.', 'uploads/abjad/1770391095_F_png.rf.ccdbd3aa1d95248f07673bab2c16f8e8.jpg', '2026-01-12 11:26:52', '2026-02-06 07:18:15'),
(7, 'G', 'Arahkan telunjuk ke kiri, posisi tangan miring.', 'uploads/abjad/1770391110_G_png.rf.07c1a9e61785f7dd0172432d8edd151c.jpg', '2026-01-12 11:26:52', '2026-02-06 07:18:30'),
(8, 'H', 'Arahkan telunjuk dan jari tengah ke kiri, posisi tangan miring.', 'uploads/abjad/1770391136_H_png.rf.00f4e19a5c6ae878f7832b59ab1731f9.jpg', '2026-01-12 11:26:52', '2026-02-06 07:18:56'),
(9, 'I', 'Acungkan jari kelingking tegak lurus, jari lainnya mengepal.', 'uploads/abjad/1770391190_I_png.rf.aff7248c4d7f56952d9f30c9c2a4d633.jpg', '2026-01-12 11:26:52', '2026-02-06 07:19:50'),
(10, 'J', 'Buat huruf I, lalu gerakkan kelingking membentuk lengkungan huruf J di udara.', 'uploads/abjad/1770391239_J_png.rf.076c51afdacda4f4275b542c7ac409bd.jpg', '2026-01-12 11:26:52', '2026-02-06 07:20:39'),
(11, 'K', 'Acungkan jari telunjuk dan jari tengah membentuk huruf V, ibu jari diselipkan di antaranya.', 'uploads/abjad/1770391268_K_png.rf.d1b558c1185e87776019ac946bc4e79b.jpg', '2026-01-12 11:26:52', '2026-02-06 07:21:08'),
(12, 'L', 'Bentuk huruf L dengan ibu jari dan telunjuk tegak lurus.', 'uploads/abjad/1770391289_L_png.rf.3d75a0bcdc5380607bc80e22f325eecf.jpg', '2026-01-12 11:26:52', '2026-02-06 07:21:29'),
(13, 'M', 'Selipkan ibu jari di bawah jari manis, jari tengah, dan telunjuk yang ditekuk.', 'uploads/abjad/1770391314_M_png.rf.31e6d40a858e98bba91dd7c2c63bfaae.jpg', '2026-01-12 11:26:52', '2026-02-06 07:21:54'),
(14, 'N', 'Selipkan ibu jari di bawah jari tengah dan telunjuk yang ditekuk.', 'uploads/abjad/1770391360_N_png.rf.6ed05226835af935aae569c9402ce111.jpg', '2026-01-12 11:26:52', '2026-02-06 07:22:40'),
(15, 'O', 'Bentuk lingkaran dengan menghubungkan ujung semua jari.', 'uploads/abjad/1770391376_O_png.rf.d5d924dac84a77ac843481f010c7566c.jpg', '2026-01-12 11:26:52', '2026-02-06 07:22:56'),
(16, 'P', 'Bentuk huruf K, namun arahkan ke bawah.', 'uploads/abjad/1770391409_P_png.rf.edaf318825cb08fdca0a86ca4ffdc225.jpg', '2026-01-12 11:26:52', '2026-02-06 07:23:29'),
(17, 'Q', 'Arahkan telunjuk dan ibu jari ke bawah, jari lainnya mengepal.', 'uploads/abjad/1770391508_Q_png.rf.2ba47b4cd9d418dbb6e708145361cbeb.jpg', '2026-01-12 11:26:52', '2026-02-06 07:25:08'),
(18, 'R', 'Silangkan jari tengah di atas jari telunjuk.', 'uploads/abjad/1770391543_R_png.rf.4e003b73ee9836ce48c067f1ed26cce5.jpg', '2026-01-12 11:26:52', '2026-02-06 07:25:43'),
(19, 'S', 'Kepalkan tangan dengan ibu jari menindih jari-jari lainnya.', 'uploads/abjad/1770391569_S_png.rf.ded04e946eea8c372ece521417764907.jpg', '2026-01-12 11:26:52', '2026-02-06 07:26:09'),
(20, 'T', 'Selipkan ibu jari di antara telunjuk dan jari tengah yang mengepal.', 'uploads/abjad/1770391617_T_png.rf.68e92a95c9691106a21bc58500d86ad8.jpg', '2026-01-12 11:26:52', '2026-02-06 07:26:57'),
(21, 'U', 'Acungkan jari telunjuk dan jari tengah rapat tegak lurus.', 'uploads/abjad/1770391633_U_png.rf.3b37c9a6dd46fa0c590a4302a3c32add.jpg', '2026-01-12 11:26:52', '2026-02-06 07:27:13'),
(22, 'V', 'Acungkan jari telunjuk dan jari tengah membentuk huruf V.', 'uploads/abjad/1770391668_V_png.rf.994badaa6515014d35552a35870efaa0.jpg', '2026-01-12 11:26:52', '2026-02-06 07:27:48'),
(23, 'W', 'Acungkan jari telunjuk, tengah, dan manis membentuk huruf W.', 'uploads/abjad/1770391700_W_png.rf.47620596fb237f1b521159f1442e037c.jpg', '2026-01-12 11:26:52', '2026-02-06 07:28:20'),
(24, 'X', 'Tekuk jari telunjuk seperti kait, jari lainnya mengepal.', 'uploads/abjad/1770391724_X_png.rf.e5696b8d93570ad64fb9bbb7231f5c39.jpg', '2026-01-12 11:26:52', '2026-02-06 07:28:44'),
(25, 'Y', 'Acungkan ibu jari dan kelingking, jari lainnya mengepal.', 'uploads/abjad/1770391737_Y_png.rf.89251f6a9c23f5024e028c239ce805c2.jpg', '2026-01-12 11:26:52', '2026-02-06 07:28:57'),
(26, 'Z', 'Lukis huruf Z di udara dengan jari telunjuk.', 'uploads/abjad/1770391768_Z_png.rf.4c4ff9f4256cbf15765f8ce00e688c4e.jpg', '2026-01-12 11:26:52', '2026-02-06 07:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `hasil_kuis`
--

CREATE TABLE `hasil_kuis` (
  `id` bigint UNSIGNED NOT NULL,
  `pengguna_id` bigint UNSIGNED NOT NULL,
  `kuis_id` bigint UNSIGNED NOT NULL,
  `skor` int NOT NULL,
  `total_benar` int NOT NULL,
  `tanggal_dikerjakan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kata_dasars`
--

CREATE TABLE `kata_dasars` (
  `id` bigint UNSIGNED NOT NULL,
  `kata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arti` text COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berkas_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kata_dasars`
--

INSERT INTO `kata_dasars` (`id`, `kata`, `arti`, `kategori`, `berkas_video`, `created_at`, `updated_at`) VALUES
(1, 'dsrfhg', 'reherh', 'erh', 'uploads/katadasar/1765518643_13.jpg', '2025-12-11 21:50:43', '2025-12-11 21:50:43'),
(2, 'erh', 'dhrewa', 'erh', 'uploads/katadasar/1765518676_01.mp4', '2025-12-11 21:51:16', '2025-12-11 21:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_sampul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_29_040109_create_penggunas_table', 1),
(5, '2025_11_29_040254_create_abjads_table', 1),
(6, '2025_11_29_040255_create_kata_dasars_table', 1),
(13, '2025_12_11_185033_create_kuis_table', 2),
(14, '2025_12_11_185034_create_pertanyaans_table', 2),
(15, '2025_12_11_185035_create_opsi_jawabans_table', 2),
(16, '2025_12_11_185036_create_hasil_kuis_table', 2),
(18, '2025_12_24_175153_create_practice_sessions_table', 3),
(20, '2026_02_04_233043_create_mode_cards_table', 4),
(21, '2026_02_05_201559_add_foto_profil_to_penggunas_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mode_cards`
--

CREATE TABLE `mode_cards` (
  `id` bigint UNSIGNED NOT NULL,
  `mode_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_emoji` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '✨',
  `gradient_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#57BBA0',
  `gradient_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#45A38A',
  `icon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'letter',
  `icon_content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` json NOT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Mulai Latihan',
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mode_cards`
--

INSERT INTO `mode_cards` (`id`, `mode_key`, `title`, `description`, `badge_text`, `badge_emoji`, `gradient_from`, `gradient_to`, `icon_type`, `icon_content`, `image`, `features`, `button_text`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abjad', 'Latihan Abjad', 'Berlatih mengeja kata huruf demi huruf. Sistem AI akan memandu Anda menyelesaikan satu kata penuh dengan akurat.', 'POPULER', '✨', '#14b8a6', '#10b981', 'letter', 'A', 'mode_cards/rRPkuT0iDYTw1Z1cxdx6VHNPKDRnZOCBeZJzH3OG.png', '[\"Deteksi real-time dengan akurasi tinggi\", \"Mendukung 1-2 tangan sekaligus\", \"Feedback visual interaktif\"]', 'Mulai Latihan', 1, 1, '2026-02-04 15:35:23', '2026-02-06 06:58:48'),
(2, 'kata', 'Latihan Kata', 'Berlatih bahasa isyarat per kata secara langsung dengan deteksi yang akurat.', 'TERBARU', '🔥', '#6366f1', '#3b82f6', 'svg', '<svg class=\"w-10 h-10\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z\"/></svg>', 'mode_cards/a5VbadvCDAl7Punjdoboo6WG4tzxf62rV9Ji5KS1.png', '[\"Deteksi kata dinamis\", \"Kamus kata lengkap BISINDO\"]', 'Mulai Latihan', 2, 1, '2026-02-04 15:35:23', '2026-02-06 06:50:30'),
(3, 'kalimat', 'Latihan Kalimat', 'Bentuk kalimat lengkap dengan kombinasi kata dan abjad. Pilih kata target dan input abjad untuk membentuk kalimat utuh.', 'BARU', '🎯', '#a855f7', '#ec4899', 'svg', '<svg class=\"w-10 h-10\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z\"/></svg>', 'mode_cards/8RTFR1OVoii19Q75am3pbtaMmaKQbDyBp8CrvXhx.png', '[\"Kombinasi kata dan abjad\", \"Pilih kata target yang diinginkan\", \"Gabungkan hasil menjadi kalimat\"]', 'Mulai Latihan', 3, 1, '2026-02-04 15:35:23', '2026-02-06 06:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `opsi_jawabans`
--

CREATE TABLE `opsi_jawabans` (
  `id` bigint UNSIGNED NOT NULL,
  `pertanyaan_id` bigint UNSIGNED NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apakah_benar` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_terverifikasi_pada` timestamp NULL DEFAULT NULL,
  `kata_sandi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggunas`
--

INSERT INTO `penggunas` (`id`, `nama`, `email`, `foto_profil`, `email_terverifikasi_pada`, `kata_sandi`, `peran`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'riski', 'riski@gmail.com', 'profile-photos/bCjKOnpeye15ZoeijuM50cJ54ISawYf7JL4NFk6Y.jpg', NULL, '$2y$12$6pGgkVpxuflk6CGDNWlSouPYL/PA73UcaFxLl3aKb0YmsD3xB6PUu', 'user', NULL, '2025-11-28 21:46:12', '2026-02-05 13:20:22'),
(2, 'Administrator BISINDO', 'admin@gmail.com', NULL, '2025-11-28 21:58:18', '$2y$12$NgiB5i.hj/muvxD8sOj4wuvmPD.fSs.kwQ/J54kymYElO.CxbVPJO', 'admin', NULL, '2025-11-28 21:58:18', '2026-02-05 13:22:11'),
(3, 'anzar', 'anzar@gmail.com', 'profile-photos/HP4tXYuab8fK0DJHttA7d7B4galmqpGbAt3WwKBY.jpg', NULL, '$2y$12$Hji4FZZsPzaskGiRX63k8e8lrkDZkBIBgWOX1g6IwQ2DCHYpYlFS6', 'user', NULL, '2026-01-15 09:56:04', '2026-02-05 13:20:21'),
(22, 'rss', 'anzar@gmailyt.com', NULL, NULL, '$2y$12$qn0sSEycGRj3Z.FlD64a6eM4DBKLygR5zJ6.DtNaH8mjoIBdJ6e36', 'user', NULL, '2026-02-07 04:15:19', '2026-02-07 04:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaans`
--

CREATE TABLE `pertanyaans` (
  `id` bigint UNSIGNED NOT NULL,
  `kuis_id` bigint UNSIGNED NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_media` enum('video','image','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `practice_sessions`
--

CREATE TABLE `practice_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `word` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `accuracy_percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `completed_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practice_sessions`
--

INSERT INTO `practice_sessions` (`id`, `user_id`, `word`, `duration`, `accuracy_percentage`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'IKKA', 15, '100.00', '2025-12-24 10:12:03', '2025-12-24 10:12:03', '2025-12-24 10:12:03'),
(2, 1, 'ANZAR', 70, '100.00', '2025-12-24 10:12:59', '2025-12-24 10:12:59', '2025-12-24 10:12:59'),
(3, 1, 'erh', 0, '100.00', '2025-12-24 10:52:54', '2025-12-24 10:52:54', '2025-12-24 10:52:54'),
(4, 1, 'dsrfhg', 0, '100.00', '2025-12-24 10:53:00', '2025-12-24 10:53:00', '2025-12-24 10:53:00'),
(5, 1, 'A', 0, '100.00', '2025-12-24 10:54:47', '2025-12-24 10:54:47', '2025-12-24 10:54:47'),
(6, 1, 'B', 0, '100.00', '2025-12-25 07:46:57', '2025-12-25 07:46:57', '2025-12-25 07:46:57'),
(7, 1, 'NAMA', 19, '100.00', '2025-12-25 07:47:37', '2025-12-25 07:47:37', '2025-12-25 07:47:37'),
(8, 1, 'SARINIPERGIKEPASAR', 100, '100.00', '2025-12-25 07:49:00', '2025-12-25 07:49:00', '2025-12-25 07:49:00'),
(9, 1, 'FRANSISKA', 43, '100.00', '2025-12-26 03:18:49', '2025-12-26 03:18:49', '2025-12-26 03:18:49'),
(10, 1, 'HALO', 160, '100.00', '2025-12-26 03:20:13', '2025-12-26 03:20:13', '2025-12-26 03:20:13'),
(11, 1, 'APA', 12, '100.00', '2026-01-02 00:55:56', '2026-01-02 00:55:56', '2026-01-02 00:55:56'),
(12, 1, 'SAYA', 46, '100.00', '2026-01-02 00:56:29', '2026-01-02 00:56:29', '2026-01-02 00:56:29'),
(13, 1, 'ANZAR', 116, '100.00', '2026-01-02 00:57:41', '2026-01-02 00:57:41', '2026-01-02 00:57:41'),
(14, 1, 'SARINI', 44, '100.00', '2026-01-04 04:34:57', '2026-01-04 04:34:57', '2026-01-04 04:34:57'),
(15, 1, 'ANZAR', 115, '100.00', '2026-01-04 04:36:08', '2026-01-04 04:36:08', '2026-01-04 04:36:08'),
(16, 1, 'MAKAN', 175, '100.00', '2026-01-04 04:37:09', '2026-01-04 04:37:09', '2026-01-04 04:37:09'),
(17, 1, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 195, '100.00', '2026-01-04 04:40:53', '2026-01-04 04:40:53', '2026-01-04 04:40:53'),
(18, 1, 'A', 38, '100.00', '2026-01-04 06:41:27', '2026-01-04 06:41:27', '2026-01-04 06:41:27'),
(19, 1, 'ANSAR', 68, '100.00', '2026-01-04 06:41:59', '2026-01-04 06:41:59', '2026-01-04 06:41:59'),
(20, 1, 'AN', 13, '100.00', '2026-01-06 21:05:31', '2026-01-06 21:05:31', '2026-01-06 21:05:31'),
(21, 1, 'IO', 66, '100.00', '2026-01-12 06:56:08', '2026-01-12 06:56:08', '2026-01-12 06:56:08'),
(22, 1, 'AR', 102, '100.00', '2026-01-12 06:56:45', '2026-01-12 06:56:45', '2026-01-12 06:56:45'),
(23, 1, 'A', 0, '100.00', '2026-01-12 10:51:49', '2026-01-12 10:51:49', '2026-01-12 10:51:49'),
(24, 2, 'B', 0, '100.00', '2026-01-12 11:17:22', '2026-01-12 11:17:22', '2026-01-12 11:17:22'),
(25, 1, 'B', 0, '100.00', '2026-01-12 11:18:07', '2026-01-12 11:18:07', '2026-01-12 11:18:07'),
(26, 1, 'B', 0, '100.00', '2026-01-14 06:31:14', '2026-01-14 06:31:14', '2026-01-14 06:31:14'),
(27, 1, 'N', 0, '100.00', '2026-01-14 06:31:22', '2026-01-14 06:31:22', '2026-01-14 06:31:22'),
(28, 1, 'HALLO', 20, '100.00', '2026-01-15 09:11:10', '2026-01-15 09:11:10', '2026-01-15 09:11:10'),
(29, 1, 'ANSAR', 31, '100.00', '2026-01-15 09:15:04', '2026-01-15 09:15:04', '2026-01-15 09:15:04'),
(30, 1, 'C', 0, '100.00', '2026-01-15 09:26:05', '2026-01-15 09:26:05', '2026-01-15 09:26:05'),
(31, 1, 'YTRUJ', 25, '100.00', '2026-01-15 09:43:13', '2026-01-15 09:43:13', '2026-01-15 09:43:13'),
(32, 1, 'SG', 27, '100.00', '2026-01-15 09:46:08', '2026-01-15 09:46:08', '2026-01-15 09:46:08'),
(33, 3, 'HALLO', 19, '100.00', '2026-01-15 10:20:47', '2026-01-15 10:20:47', '2026-01-15 10:20:47'),
(34, 3, 'H', 16, '100.00', '2026-01-15 10:21:18', '2026-01-15 10:21:18', '2026-01-15 10:21:18'),
(35, 3, 'HAL', 18, '100.00', '2026-01-15 10:26:29', '2026-01-15 10:26:29', '2026-01-15 10:26:29'),
(36, 3, 'AD', 153, '100.00', '2026-01-15 10:28:49', '2026-01-15 10:28:49', '2026-01-15 10:28:49'),
(37, 3, 'HH', 315, '100.00', '2026-01-15 10:31:35', '2026-01-15 10:31:35', '2026-01-15 10:31:35'),
(38, 3, 'A', 9, '100.00', '2026-01-15 10:32:48', '2026-01-15 10:32:48', '2026-01-15 10:32:48'),
(39, 1, 'A', 18, '100.00', '2026-01-20 00:28:10', '2026-01-20 00:28:10', '2026-01-20 00:28:10'),
(40, 1, 'A', 12, '100.00', '2026-01-20 01:39:56', '2026-01-20 01:39:56', '2026-01-20 01:39:56'),
(41, 1, 'APA', 28, '100.00', '2026-01-20 01:40:12', '2026-01-20 01:40:12', '2026-01-20 01:40:12'),
(42, 1, 'AN', 12, '100.00', '2026-01-20 02:02:21', '2026-01-20 02:02:21', '2026-01-20 02:02:21'),
(43, 1, 'MINUM', 29, '100.00', '2026-01-20 02:03:05', '2026-01-20 02:03:05', '2026-01-20 02:03:05'),
(44, 1, 'A', 11, '100.00', '2026-01-20 03:37:06', '2026-01-20 03:37:06', '2026-01-20 03:37:06'),
(45, 1, 'SA', 6, '100.00', '2026-01-20 03:45:19', '2026-01-20 03:45:19', '2026-01-20 03:45:19'),
(46, 1, 'SA', 24, '100.00', '2026-01-20 03:45:38', '2026-01-20 03:45:38', '2026-01-20 03:45:38'),
(47, 1, 'SAYA', 28, '100.00', '2026-01-20 04:01:08', '2026-01-20 04:01:08', '2026-01-20 04:01:08'),
(48, 1, 'TULI', 20, '100.00', '2026-01-20 04:06:44', '2026-01-20 04:06:44', '2026-01-20 04:06:44'),
(49, 1, 'TIDUR', 37, '100.00', '2026-01-20 04:07:02', '2026-01-20 04:07:02', '2026-01-20 04:07:02'),
(50, 1, 'MENULIS', 70, '100.00', '2026-01-20 04:21:11', '2026-01-20 04:21:11', '2026-01-20 04:21:11'),
(51, 1, 'MENULIS', 99, '100.00', '2026-01-20 04:21:42', '2026-01-20 04:21:42', '2026-01-20 04:21:42'),
(52, 1, 'MAAF', 27, '100.00', '2026-01-20 04:31:48', '2026-01-20 04:31:48', '2026-01-20 04:31:48'),
(53, 1, 'TULI', 32, '100.00', '2026-01-20 04:35:49', '2026-01-20 04:35:49', '2026-01-20 04:35:49'),
(54, 1, 'ANM', 22, '100.00', '2026-01-20 04:41:59', '2026-01-20 04:41:59', '2026-01-20 04:41:59'),
(55, 1, 'TULI', 65, '100.00', '2026-01-20 04:43:20', '2026-01-20 04:43:20', '2026-01-20 04:43:20'),
(56, 1, 'TULI', 88, '100.00', '2026-01-20 04:43:44', '2026-01-20 04:43:44', '2026-01-20 04:43:44'),
(57, 1, 'TULITIDUR', 114, '100.00', '2026-01-20 04:44:10', '2026-01-20 04:44:10', '2026-01-20 04:44:10'),
(58, 1, 'ANSTWE', 52, '100.00', '2026-01-20 04:49:44', '2026-01-20 04:49:44', '2026-01-20 04:49:44'),
(59, 1, 'TULI', 20, '100.00', '2026-01-20 04:50:14', '2026-01-20 04:50:14', '2026-01-20 04:50:14'),
(60, 1, 'TULI', 46, '100.00', '2026-01-20 04:50:41', '2026-01-20 04:50:41', '2026-01-20 04:50:41'),
(61, 1, 'MAAF', 35, '100.00', '2026-01-20 05:05:14', '2026-01-20 05:05:14', '2026-01-20 05:05:14'),
(62, 1, 'TULI', 15, '100.00', '2026-01-20 05:08:20', '2026-01-20 05:08:20', '2026-01-20 05:08:20'),
(63, 1, 'TULIMAAFTIDUR', 54, '100.00', '2026-01-20 05:09:01', '2026-01-20 05:09:01', '2026-01-20 05:09:01'),
(64, 1, 'MENULIS', 94, '100.00', '2026-01-20 05:32:02', '2026-01-20 05:32:02', '2026-01-20 05:32:02'),
(65, 1, 'MAAF', 84, '100.00', '2026-01-20 05:36:06', '2026-01-20 05:36:06', '2026-01-20 05:36:06'),
(66, 1, 'MENULIS', 70, '100.00', '2026-01-20 05:42:55', '2026-01-20 05:42:55', '2026-01-20 05:42:55'),
(67, 1, 'TIDUR', 33, '100.00', '2026-01-20 05:50:39', '2026-01-20 05:50:39', '2026-01-20 05:50:39'),
(68, 1, 'SA', 15, '100.00', '2026-01-20 21:38:40', '2026-01-20 21:38:40', '2026-01-20 21:38:40'),
(69, 1, 'A', 5, '100.00', '2026-01-20 21:54:33', '2026-01-20 21:54:33', '2026-01-20 21:54:33'),
(70, 1, 'TULI', 24, '100.00', '2026-01-20 22:12:51', '2026-01-20 22:12:51', '2026-01-20 22:12:51'),
(71, 1, 'TULIMAAF', 80, '100.00', '2026-01-20 22:13:49', '2026-01-20 22:13:49', '2026-01-20 22:13:49'),
(72, 1, 'TIDUR', 132, '100.00', '2026-01-20 22:14:42', '2026-01-20 22:14:42', '2026-01-20 22:14:42'),
(73, 1, 'AN', 10, '100.00', '2026-01-20 22:48:32', '2026-01-20 22:48:32', '2026-01-20 22:48:32'),
(74, 1, 'TIDUR', 29, '100.00', '2026-01-20 22:49:14', '2026-01-20 22:49:14', '2026-01-20 22:49:14'),
(75, 1, 'TIDURAPABELAJAR', 92, '100.00', '2026-01-20 22:50:17', '2026-01-20 22:50:17', '2026-01-20 22:50:17'),
(76, 1, 'BELAJAR', 18, '100.00', '2026-01-20 22:55:52', '2026-01-20 22:55:52', '2026-01-20 22:55:52'),
(77, 1, 'BELAJARHALOTULI', 62, '100.00', '2026-01-20 22:56:37', '2026-01-20 22:56:37', '2026-01-20 22:56:37'),
(78, 1, 'TULIMAAFTIDUR', 45, '100.00', '2026-01-20 23:15:03', '2026-01-20 23:15:03', '2026-01-20 23:15:03'),
(79, 1, 'APABELAJARMENULIS', 151, '100.00', '2026-01-20 23:31:29', '2026-01-20 23:31:29', '2026-01-20 23:31:29'),
(80, 1, 'MELIHATSAYA', 32, '100.00', '2026-01-20 23:47:14', '2026-01-20 23:47:14', '2026-01-20 23:47:14'),
(81, 1, 'SAYASIAPA', 25, '100.00', '2026-01-20 23:51:35', '2026-01-20 23:51:35', '2026-01-20 23:51:35'),
(82, 1, 'SAYASIAPAHALO', 69, '100.00', '2026-01-20 23:52:20', '2026-01-20 23:52:20', '2026-01-20 23:52:20'),
(83, 1, 'SAYATERIMA KASIH', 112, '100.00', '2026-01-20 23:53:05', '2026-01-20 23:53:05', '2026-01-20 23:53:05'),
(84, 1, 'BELAJARAPA', 20, '100.00', '2026-01-20 23:58:30', '2026-01-20 23:58:30', '2026-01-20 23:58:30'),
(85, 1, 'BELAJARAPAHALO', 93, '100.00', '2026-01-20 23:59:45', '2026-01-20 23:59:45', '2026-01-20 23:59:45'),
(86, 1, 'ABJAD', 35, '100.00', '2026-01-21 00:05:09', '2026-01-21 00:05:09', '2026-01-21 00:05:09'),
(87, 1, 'BELAJARHALOTULIMAAF', 51, '100.00', '2026-01-21 00:06:14', '2026-01-21 00:06:14', '2026-01-21 00:06:14'),
(88, 1, 'TERIMA KASIH', 102, '100.00', '2026-01-21 00:07:06', '2026-01-21 00:07:06', '2026-01-21 00:07:06'),
(89, 1, 'TERIMA KASIH', 23, '100.00', '2026-01-21 00:10:47', '2026-01-21 00:10:47', '2026-01-21 00:10:47'),
(90, 1, 'TERIMA KASIH', 43, '100.00', '2026-01-21 00:11:07', '2026-01-21 00:11:07', '2026-01-21 00:11:07'),
(91, 1, 'TERIMA KASIH', 19, '100.00', '2026-01-21 00:14:29', '2026-01-21 00:14:29', '2026-01-21 00:14:29'),
(92, 1, 'TERIMA KASIHBAIKSAYAMAAFSIAPA', 71, '100.00', '2026-01-21 00:15:22', '2026-01-21 00:15:22', '2026-01-21 00:15:22'),
(93, 1, 'MAAFTULI', 35, '100.00', '2026-01-21 00:16:51', '2026-01-21 00:16:51', '2026-01-21 00:16:51'),
(94, 1, 'S', 9, '100.00', '2026-01-21 05:59:23', '2026-01-21 05:59:23', '2026-01-21 05:59:23'),
(95, 1, 'SAYA', 20, '100.00', '2026-01-21 05:59:55', '2026-01-21 05:59:55', '2026-01-21 05:59:55'),
(96, 1, 'S', 7, '100.00', '2026-01-21 06:16:59', '2026-01-21 06:16:59', '2026-01-21 06:16:59'),
(97, 3, 'AS', 8, '100.00', '2026-01-21 08:47:12', '2026-01-21 08:47:12', '2026-01-21 08:47:12'),
(98, 3, 'MAAF', 14, '100.00', '2026-01-21 08:47:36', '2026-01-21 08:47:36', '2026-01-21 08:47:36'),
(99, 3, 'A', 6, '100.00', '2026-01-21 09:23:43', '2026-01-21 09:23:43', '2026-01-21 09:23:43'),
(100, 3, 'TULI', 16, '100.00', '2026-01-21 09:24:11', '2026-01-21 09:24:11', '2026-01-21 09:24:11'),
(101, 3, 'SW', 7, '100.00', '2026-01-21 09:48:25', '2026-01-21 09:48:25', '2026-01-21 09:48:25'),
(102, 3, 'APAMAAF', 28, '100.00', '2026-01-21 09:49:03', '2026-01-21 09:49:03', '2026-01-21 09:49:03'),
(103, 3, 'APAMAAF', 65, '100.00', '2026-01-21 09:49:41', '2026-01-21 09:49:41', '2026-01-21 09:49:41'),
(104, 3, 'APAMAAFTIDURSIAPATULI', 137, '100.00', '2026-01-21 09:50:55', '2026-01-21 09:50:55', '2026-01-21 09:50:55'),
(105, 3, 'A', 11, '100.00', '2026-01-21 09:56:27', '2026-01-21 09:56:27', '2026-01-21 09:56:27'),
(106, 3, 'A', 26, '100.00', '2026-01-21 09:56:41', '2026-01-21 09:56:41', '2026-01-21 09:56:41'),
(107, 3, 'A', 38, '100.00', '2026-01-21 09:56:54', '2026-01-21 09:56:54', '2026-01-21 09:56:54'),
(108, 3, 'TULI', 31, '100.00', '2026-01-21 09:58:07', '2026-01-21 09:58:07', '2026-01-21 09:58:07'),
(109, 3, 'ACR', 16, '100.00', '2026-01-21 10:51:49', '2026-01-21 10:51:49', '2026-01-21 10:51:49'),
(110, 3, 'MAAF', 26, '100.00', '2026-01-21 10:57:14', '2026-01-21 10:57:14', '2026-01-21 10:57:14'),
(111, 3, 'ABDR', 115, '100.00', '2026-01-21 11:48:29', '2026-01-21 11:48:29', '2026-01-21 11:48:29'),
(112, 3, 'MELIHAT', 33, '100.00', '2026-01-21 11:49:17', '2026-01-21 11:49:17', '2026-01-21 11:49:17'),
(113, 3, 'MELIHAT', 68, '100.00', '2026-01-21 11:49:53', '2026-01-21 11:49:53', '2026-01-21 11:49:53'),
(114, 3, 'SABARSAYATERIMA KASIH', 38, '100.00', '2026-01-21 12:18:11', '2026-01-21 12:18:11', '2026-01-21 12:18:11'),
(115, 3, 'SAYA', 14, '100.00', '2026-01-21 12:29:59', '2026-01-21 12:29:59', '2026-01-21 12:29:59'),
(116, 1, 'TULI', 23, '100.00', '2026-01-21 21:14:07', '2026-01-21 21:14:07', '2026-01-21 21:14:07'),
(117, 1, 'A', 27, '100.00', '2026-01-21 22:00:48', '2026-01-21 22:00:48', '2026-01-21 22:00:48'),
(118, 1, 'ABC', 136, '100.00', '2026-01-21 22:02:42', '2026-01-21 22:02:42', '2026-01-21 22:02:42'),
(119, 1, 'APABAIKDIAHALO', 68, '100.00', '2026-01-22 05:25:32', '2026-01-22 05:25:32', '2026-01-22 05:25:32'),
(120, 1, 'SAYAMAKAN', 32, '100.00', '2026-01-22 05:28:54', '2026-01-22 05:28:54', '2026-01-22 05:28:54'),
(121, 1, 'SAYA MARAH', 53, '100.00', '2026-01-22 05:34:18', '2026-01-22 05:34:18', '2026-01-22 05:34:18'),
(122, 1, 'HALO APA KABAR', 22, '100.00', '2026-01-22 05:58:49', '2026-01-22 05:58:49', '2026-01-22 05:58:49'),
(123, 1, 'HALO MAAF', 32, '100.00', '2026-01-22 06:13:07', '2026-01-22 06:13:07', '2026-01-22 06:13:07'),
(124, 1, 'APA APA KABAR BAIK', 32, '100.00', '2026-01-22 06:25:39', '2026-01-22 06:25:39', '2026-01-22 06:25:39'),
(125, 1, 'A', 9, '100.00', '2026-01-22 07:25:21', '2026-01-22 07:25:21', '2026-01-22 07:25:21'),
(126, 1, 'A', 14, '100.00', '2026-01-22 08:55:04', '2026-01-22 08:55:04', '2026-01-22 08:55:04'),
(127, 1, 'APA', 17, '100.00', '2026-01-22 08:55:38', '2026-01-22 08:55:38', '2026-01-22 08:55:38'),
(128, 1, 'APA BAIK', 53, '100.00', '2026-01-22 08:56:14', '2026-01-22 08:56:14', '2026-01-22 08:56:14'),
(129, 1, 'AA', 50, '100.00', '2026-01-22 09:01:58', '2026-01-22 09:01:58', '2026-01-22 09:01:58'),
(130, 1, 'TULI', 5, '100.00', '2026-01-22 09:49:55', '2026-01-22 09:49:55', '2026-01-22 09:49:55'),
(131, 1, 'TULI', 14, '100.00', '2026-01-22 09:50:04', '2026-01-22 09:50:04', '2026-01-22 09:50:04'),
(132, 1, 'TULI TERIMA KASIH', 37, '100.00', '2026-01-22 09:50:28', '2026-01-22 09:50:28', '2026-01-22 09:50:28'),
(133, 1, 'TULI TERIMA KASIH TIDUR SIAPA', 96, '100.00', '2026-01-22 09:51:28', '2026-01-22 09:51:28', '2026-01-22 09:51:28'),
(134, 1, 'BAGAIMANA BAIK TERIMA KASIH', 82, '100.00', '2026-01-22 10:00:59', '2026-01-22 10:00:59', '2026-01-22 10:00:59'),
(135, 1, 'ABCD', 47, '100.00', '2026-01-22 10:10:36', '2026-01-22 10:10:36', '2026-01-22 10:10:36'),
(136, 1, 'TERIMA KASIH TIDUR TULI MAAF', 46, '100.00', '2026-01-22 10:11:36', '2026-01-22 10:11:36', '2026-01-22 10:11:36'),
(137, 1, 'TIDUR', 75, '100.00', '2026-01-22 10:12:06', '2026-01-22 10:12:06', '2026-01-22 10:12:06'),
(138, 1, 'TIDUR', 94, '100.00', '2026-01-22 10:12:25', '2026-01-22 10:12:25', '2026-01-22 10:12:25'),
(139, 1, 'TERIMA KASIH', 112, '100.00', '2026-01-22 10:12:44', '2026-01-22 10:12:44', '2026-01-22 10:12:44'),
(140, 1, 'TULI', 121, '100.00', '2026-01-22 10:12:53', '2026-01-22 10:12:53', '2026-01-22 10:12:53'),
(141, 1, 'TULI', 128, '100.00', '2026-01-22 10:13:00', '2026-01-22 10:13:00', '2026-01-22 10:13:00'),
(142, 1, 'TULI', 135, '100.00', '2026-01-22 10:13:07', '2026-01-22 10:13:07', '2026-01-22 10:13:07'),
(143, 1, 'TULI', 159, '100.00', '2026-01-22 10:13:32', '2026-01-22 10:13:32', '2026-01-22 10:13:32'),
(144, 1, 'TULI', 177, '100.00', '2026-01-22 10:13:49', '2026-01-22 10:13:49', '2026-01-22 10:13:49'),
(145, 1, 'TULI', 196, '100.00', '2026-01-22 10:14:09', '2026-01-22 10:14:09', '2026-01-22 10:14:09'),
(146, 1, 'TULI MAAF', 214, '100.00', '2026-01-22 10:14:27', '2026-01-22 10:14:27', '2026-01-22 10:14:27'),
(147, 1, 'BINGUNG MAAF TULI', 31, '100.00', '2026-01-22 23:27:13', '2026-01-22 23:27:13', '2026-01-22 23:27:13'),
(148, 1, 'APA HALO KAMU', 35, '100.00', '2026-01-23 00:14:20', '2026-01-23 00:14:20', '2026-01-23 00:14:20'),
(149, 1, 'APA HALO', 22, '100.00', '2026-01-23 00:46:45', '2026-01-23 00:46:45', '2026-01-23 00:46:45'),
(150, 1, 'HALO', 35, '100.00', '2026-01-23 00:46:58', '2026-01-23 00:46:58', '2026-01-23 00:46:58'),
(151, 1, 'APA BELAJAR HALO TERIMA KASIH', 52, '100.00', '2026-01-23 04:01:08', '2026-01-23 04:01:08', '2026-01-23 04:01:08'),
(152, 1, 'BINGUNG', 30, '100.00', '2026-01-23 04:09:27', '2026-01-23 04:09:27', '2026-01-23 04:09:27'),
(153, 1, 'BINGUNG TERIMA KASIH', 75, '100.00', '2026-01-23 04:10:13', '2026-01-23 04:10:13', '2026-01-23 04:10:13'),
(154, 1, 'BINGUNG TERIMA KASIH TIDUR MAAF TULI', 147, '100.00', '2026-01-23 04:25:52', '2026-01-23 04:25:52', '2026-01-23 04:25:52'),
(155, 1, 'BAIK TIDUR', 66, '100.00', '2026-01-23 04:36:43', '2026-01-23 04:36:43', '2026-01-23 04:36:43'),
(156, 1, 'HALO BELAJAR TIDUR TERIMA KASIH', 223, '100.00', '2026-01-23 04:49:07', '2026-01-23 04:49:07', '2026-01-23 04:49:07'),
(157, 1, 'APA BELAJAR HALO TULI MAAF TERIMA KASIH', 140, '100.00', '2026-01-23 05:22:36', '2026-01-23 05:22:36', '2026-01-23 05:22:36'),
(158, 1, 'ACD', 23, '100.00', '2026-01-23 06:48:46', '2026-01-23 06:48:46', '2026-01-23 06:48:46'),
(159, 1, 'APA MENULIS', 62, '100.00', '2026-01-23 06:50:16', '2026-01-23 06:50:16', '2026-01-23 06:50:16'),
(160, 1, 'APA TERIMA KASIH', 33, '100.00', '2026-01-23 08:27:43', '2026-01-23 08:27:43', '2026-01-23 08:27:43'),
(161, 1, 'SAYA', 11, '100.00', '2026-01-23 08:31:27', '2026-01-23 08:31:27', '2026-01-23 08:31:27'),
(162, 1, 'APA BELAJAR HALO TULI MAAF TERIMA KASIH', 156, '100.00', '2026-01-23 09:29:55', '2026-01-23 09:29:55', '2026-01-23 09:29:55'),
(163, 1, 'BUDI', 16, '100.00', '2026-01-23 11:34:18', '2026-01-23 11:34:18', '2026-01-23 11:34:18'),
(164, 1, 'ADSAR', 24, '100.00', '2026-01-23 11:49:08', '2026-01-23 11:49:08', '2026-01-23 11:49:08'),
(165, 1, 'BAIK HALO', 25, '100.00', '2026-01-23 12:06:22', '2026-01-23 12:06:22', '2026-01-23 12:06:22'),
(166, 1, 'APA MAAF', 22, '100.00', '2026-01-24 06:02:43', '2026-01-24 06:02:43', '2026-01-24 06:02:43'),
(167, 1, 'BAIK', 29, '100.00', '2026-01-24 06:09:44', '2026-01-24 06:09:44', '2026-01-24 06:09:44'),
(168, 1, 'APA', 11, '100.00', '2026-01-24 06:35:02', '2026-01-24 06:35:02', '2026-01-24 06:35:02'),
(169, 1, 'APA', 17, '100.00', '2026-01-24 06:42:05', '2026-01-24 06:42:05', '2026-01-24 06:42:05'),
(170, 1, 'APA BAIK BELAJAR', 53, '100.00', '2026-01-24 06:45:25', '2026-01-24 06:45:25', '2026-01-24 06:45:25'),
(171, 1, 'BAIK APA TERIMA KASIH MAAF TULI', 52, '100.00', '2026-01-24 08:35:13', '2026-01-24 08:35:13', '2026-01-24 08:35:13'),
(172, 1, 'BAIK', 35, '100.00', '2026-01-24 08:44:54', '2026-01-24 08:44:54', '2026-01-24 08:44:54'),
(173, 1, 'BAIK APA TULI MAAF HALO', 100, '100.00', '2026-01-24 08:52:24', '2026-01-24 08:52:24', '2026-01-24 08:52:24'),
(174, 1, 'BAIK APA BELAJAR HALO MENULIS SAYA', 48, '100.00', '2026-01-24 09:02:24', '2026-01-24 09:02:24', '2026-01-24 09:02:24'),
(175, 1, 'erh', 0, '100.00', '2026-01-24 09:04:14', '2026-01-24 09:04:14', '2026-01-24 09:04:14'),
(176, 1, 'dsrfhg', 0, '100.00', '2026-01-24 09:04:18', '2026-01-24 09:04:18', '2026-01-24 09:04:18'),
(177, 3, 'B', 0, '100.00', '2026-01-24 09:07:33', '2026-01-24 09:07:33', '2026-01-24 09:07:33'),
(178, 3, 'ABDRTY', 30, '100.00', '2026-01-24 09:12:34', '2026-01-24 09:12:34', '2026-01-24 09:12:34'),
(179, 3, 'APA TULI MAAF', 24, '100.00', '2026-01-24 10:09:44', '2026-01-24 10:09:44', '2026-01-24 10:09:44'),
(180, 3, 'ABEFGH', 108, '100.00', '2026-01-24 10:11:51', '2026-01-24 10:11:51', '2026-01-24 10:11:51'),
(181, 3, 'A', 20, '100.00', '2026-01-24 10:48:50', '2026-01-24 10:48:50', '2026-01-24 10:48:50'),
(182, 3, 'HALO', 26, '100.00', '2026-01-24 10:49:29', '2026-01-24 10:49:29', '2026-01-24 10:49:29'),
(183, 3, 'APA TULI MAAF', 28, '100.00', '2026-01-24 10:58:06', '2026-01-24 10:58:06', '2026-01-24 10:58:06'),
(184, 3, 'SAYA', 21, '100.00', '2026-01-24 11:06:20', '2026-01-24 11:06:20', '2026-01-24 11:06:20'),
(185, 3, 'SAYA', 14, '100.00', '2026-01-24 11:17:23', '2026-01-24 11:17:23', '2026-01-24 11:17:23'),
(186, 3, 'SAYA SIAPA MAAF', 34, '100.00', '2026-01-24 11:27:01', '2026-01-24 11:27:01', '2026-01-24 11:27:01'),
(187, 3, 'SAYA', 47, '100.00', '2026-01-24 11:51:09', '2026-01-24 11:51:09', '2026-01-24 11:51:09'),
(188, 3, 'AB', 12, '100.00', '2026-01-24 13:17:25', '2026-01-24 13:17:25', '2026-01-24 13:17:25'),
(189, 3, 'SAYA TULI MAAF', 43, '100.00', '2026-01-24 13:18:22', '2026-01-24 13:18:22', '2026-01-24 13:18:22'),
(190, 3, 'SAYA TULI MAAF', 23, '100.00', '2026-01-24 13:22:08', '2026-01-24 13:22:08', '2026-01-24 13:22:08'),
(191, 3, 'A', 10, '100.00', '2026-01-24 13:41:50', '2026-01-24 13:41:50', '2026-01-24 13:41:50'),
(192, 3, 'SAYA A', 21, '100.00', '2026-01-24 13:49:49', '2026-01-24 13:49:49', '2026-01-24 13:49:49'),
(193, 3, 'SAYA ANSAR', 58, '100.00', '2026-01-24 13:50:27', '2026-01-24 13:50:27', '2026-01-24 13:50:27'),
(194, 3, 'SAYA', 12, '100.00', '2026-01-24 13:54:27', '2026-01-24 13:54:27', '2026-01-24 13:54:27'),
(195, 3, 'SAYA ANSAR', 30, '100.00', '2026-01-24 13:55:11', '2026-01-24 13:55:11', '2026-01-24 13:55:11'),
(196, 3, 'APA ANSAR', 69, '100.00', '2026-01-24 14:02:58', '2026-01-24 14:02:58', '2026-01-24 14:02:58'),
(197, 3, 'SAYA ANSAR APA KABAR', 48, '100.00', '2026-01-24 14:16:58', '2026-01-24 14:16:58', '2026-01-24 14:16:58'),
(198, 3, 'APA KABAR ANSAR', 114, '100.00', '2026-01-24 14:18:06', '2026-01-24 14:18:06', '2026-01-24 14:18:06'),
(199, 3, 'BELAJAR APA ANSAR', 54, '100.00', '2026-01-24 14:23:50', '2026-01-24 14:23:50', '2026-01-24 14:23:50'),
(200, 3, 'A', 51, '100.00', '2026-01-24 15:32:32', '2026-01-24 15:32:32', '2026-01-24 15:32:32'),
(201, 3, 'A', 23, '100.00', '2026-01-24 15:38:11', '2026-01-24 15:38:11', '2026-01-24 15:38:11'),
(202, 3, 'A', 23, '100.00', '2026-01-24 15:38:12', '2026-01-24 15:38:12', '2026-01-24 15:38:12'),
(203, 3, 'APAMAAFTULI', 28, '100.00', '2026-01-24 15:41:53', '2026-01-24 15:41:53', '2026-01-24 15:41:53'),
(204, 3, 'A', 12, '100.00', '2026-01-24 15:44:33', '2026-01-24 15:44:33', '2026-01-24 15:44:33'),
(205, 3, 'A', 12, '100.00', '2026-01-24 15:44:33', '2026-01-24 15:44:33', '2026-01-24 15:44:33'),
(206, 3, 'APA', 12, '100.00', '2026-01-24 15:52:16', '2026-01-24 15:52:16', '2026-01-24 15:52:16'),
(207, 3, 'APAMAAF', 12, '100.00', '2026-01-24 15:52:43', '2026-01-24 15:52:43', '2026-01-24 15:52:43'),
(208, 3, 'A', 39, '100.00', '2026-01-24 16:02:19', '2026-01-24 16:02:19', '2026-01-24 16:02:19'),
(209, 3, 'BAIK APA MAAF TULI', 47, '100.00', '2026-01-24 16:03:31', '2026-01-24 16:03:31', '2026-01-24 16:03:31'),
(210, 3, 'MAAF TULI HALO SAYA', 81, '100.00', '2026-01-24 16:04:06', '2026-01-24 16:04:06', '2026-01-24 16:04:06'),
(211, 3, 'MENULIS ANSAR', 37, '100.00', '2026-01-24 16:05:31', '2026-01-24 16:05:31', '2026-01-24 16:05:31'),
(212, 1, 'SAYA ANSAR', 66, '100.00', '2026-01-25 05:59:46', '2026-01-25 05:59:46', '2026-01-25 05:59:46'),
(213, 1, 'ADR', 19, '100.00', '2026-01-25 06:02:45', '2026-01-25 06:02:45', '2026-01-25 06:02:45'),
(214, 1, 'MAAF TULI', 89, '100.00', '2026-01-25 06:04:39', '2026-01-25 06:04:39', '2026-01-25 06:04:39'),
(215, 1, 'MAAF TULI SAYA', 130, '100.00', '2026-01-25 06:05:20', '2026-01-25 06:05:20', '2026-01-25 06:05:20'),
(216, 1, 'erh', 0, '100.00', '2026-01-25 06:08:10', '2026-01-25 06:08:10', '2026-01-25 06:08:10'),
(217, 1, 'A', 41, '100.00', '2026-01-25 06:28:05', '2026-01-25 06:28:05', '2026-01-25 06:28:05'),
(218, 1, 'APA SA', 52, '100.00', '2026-01-25 06:40:15', '2026-01-25 06:40:15', '2026-01-25 06:40:15'),
(219, 1, 'ACS', 54, '100.00', '2026-02-02 00:18:39', '2026-02-02 00:18:39', '2026-02-02 00:18:39'),
(220, 1, 'APA BELAJAR', 36, '100.00', '2026-02-02 19:07:34', '2026-02-02 19:07:34', '2026-02-02 19:07:34'),
(221, 1, 'BELAJAR APA', 44, '100.00', '2026-02-02 19:31:16', '2026-02-02 19:31:16', '2026-02-02 19:31:16'),
(222, 1, 'BELAJAR APA', 115, '100.00', '2026-02-02 19:32:29', '2026-02-02 19:32:29', '2026-02-02 19:32:29'),
(223, 1, 'ANSATYR', 44, '100.00', '2026-02-04 04:34:56', '2026-02-04 04:34:56', '2026-02-04 04:34:56'),
(224, 1, 'APA BAIK', 42, '100.00', '2026-02-04 04:35:56', '2026-02-04 04:35:56', '2026-02-04 04:35:56'),
(225, 1, 'BAIK SIAPA TULI MAAF TERIMA KASIH TIDUR', 112, '100.00', '2026-02-04 04:37:07', '2026-02-04 04:37:07', '2026-02-04 04:37:07'),
(226, 1, 'APA', 30, '100.00', '2026-02-04 04:43:48', '2026-02-04 04:43:48', '2026-02-04 04:43:48'),
(227, 1, 'APA MAKAN', 55, '100.00', '2026-02-04 04:44:14', '2026-02-04 04:44:14', '2026-02-04 04:44:14'),
(228, 1, 'APA MAKAN', 46, '100.00', '2026-02-04 04:50:16', '2026-02-04 04:50:16', '2026-02-04 04:50:16'),
(229, 1, 'MAKAN HALO SIAPA', 125, '100.00', '2026-02-04 04:51:38', '2026-02-04 04:51:38', '2026-02-04 04:51:38'),
(230, 1, 'SAYA TULI MAAF', 173, '100.00', '2026-02-04 04:52:26', '2026-02-04 04:52:26', '2026-02-04 04:52:26'),
(231, 1, 'SAYA MENULIS', 227, '100.00', '2026-02-04 04:53:21', '2026-02-04 04:53:21', '2026-02-04 04:53:21'),
(232, 1, 'MENULIS SIAPA', 262, '100.00', '2026-02-04 04:53:57', '2026-02-04 04:53:57', '2026-02-04 04:53:57'),
(233, 1, 'MENULIS APA', 282, '100.00', '2026-02-04 04:54:18', '2026-02-04 04:54:18', '2026-02-04 04:54:18'),
(234, 1, 'APA MENULIS', 32, '100.00', '2026-02-04 05:07:12', '2026-02-04 05:07:12', '2026-02-04 05:07:12'),
(235, 1, 'BAIK SAYA TULI', 33, '100.00', '2026-02-04 05:12:33', '2026-02-04 05:12:33', '2026-02-04 05:12:33'),
(236, 1, 'SAYA BAIK TULI', 37, '100.00', '2026-02-04 05:16:53', '2026-02-04 05:16:53', '2026-02-04 05:16:53'),
(237, 1, 'SAYA BAIK TULI', 46, '100.00', '2026-02-04 05:24:54', '2026-02-04 05:24:54', '2026-02-04 05:24:54'),
(238, 1, 'BAIK SAYA TULI', 25, '100.00', '2026-02-04 05:29:39', '2026-02-04 05:29:39', '2026-02-04 05:29:39'),
(239, 1, 'BELAJAR SAYA', 29, '100.00', '2026-02-04 05:33:46', '2026-02-04 05:33:46', '2026-02-04 05:33:46'),
(240, 1, 'BELAJAR HALO SAYA', 42, '100.00', '2026-02-04 05:36:26', '2026-02-04 05:36:26', '2026-02-04 05:36:26'),
(241, 1, 'AD', 24, '100.00', '2026-02-05 12:27:25', '2026-02-05 12:27:25', '2026-02-05 12:27:25'),
(242, 1, 'BELAJAR', 23, '100.00', '2026-02-05 12:30:35', '2026-02-05 12:30:35', '2026-02-05 12:30:35'),
(243, 1, 'BELAJAR HALO', 56, '100.00', '2026-02-05 12:31:08', '2026-02-05 12:31:08', '2026-02-05 12:31:08'),
(244, 1, 'BELAJAR HALO', 242, '100.00', '2026-02-05 12:34:25', '2026-02-05 12:34:25', '2026-02-05 12:34:25'),
(245, 1, 'BELAJAR HALO', 21, '100.00', '2026-02-05 12:35:27', '2026-02-05 12:35:27', '2026-02-05 12:35:27'),
(246, 1, 'BELAJAR HALO', 86, '100.00', '2026-02-05 12:37:42', '2026-02-05 12:37:42', '2026-02-05 12:37:42'),
(247, 3, 'erh', 0, '100.00', '2026-02-06 05:02:30', '2026-02-06 05:02:30', '2026-02-06 05:02:30'),
(248, 3, 'AFG', 19, '100.00', '2026-02-06 11:28:55', '2026-02-06 11:28:55', '2026-02-06 11:28:55'),
(249, 3, 'APA BELAJAR', 58, '100.00', '2026-02-06 11:30:37', '2026-02-06 11:30:37', '2026-02-06 11:30:37'),
(250, 3, 'APA BELAJAR HALO', 143, '100.00', '2026-02-06 11:32:05', '2026-02-06 11:32:05', '2026-02-06 11:32:05'),
(251, 3, 'SAYA ANSAR', 41, '100.00', '2026-02-06 11:33:17', '2026-02-06 11:33:17', '2026-02-06 11:33:17'),
(252, 3, 'RS', 81, '100.00', '2026-02-06 11:33:59', '2026-02-06 11:33:59', '2026-02-06 11:33:59'),
(253, 3, 'HALO ANSAR', 44, '100.00', '2026-02-06 11:35:55', '2026-02-06 11:35:55', '2026-02-06 11:35:55'),
(254, 3, 'HALO SAYA ANSAR', 63, '100.00', '2026-02-06 11:41:48', '2026-02-06 11:41:48', '2026-02-06 11:41:48'),
(255, 1, 'APA SIAPA', 40, '100.00', '2026-02-06 11:55:12', '2026-02-06 11:55:12', '2026-02-06 11:55:12'),
(256, 1, 'BELAJAR', 26, '100.00', '2026-02-06 12:07:46', '2026-02-06 12:07:46', '2026-02-06 12:07:46'),
(257, 1, 'BELAJAR HALO APA', 58, '100.00', '2026-02-06 12:08:19', '2026-02-06 12:08:19', '2026-02-06 12:08:19'),
(258, 1, 'TULI MAAF SIAPA TERIMA KASIH TINGGI', 145, '100.00', '2026-02-06 12:09:47', '2026-02-06 12:09:47', '2026-02-06 12:09:47'),
(259, 1, 'MENULIS SABAR SAYA', 298, '100.00', '2026-02-06 12:12:24', '2026-02-06 12:12:24', '2026-02-06 12:12:24'),
(260, 1, 'ASDC', 32, '100.00', '2026-02-06 12:14:38', '2026-02-06 12:14:38', '2026-02-06 12:14:38'),
(261, 1, 'BELAJAR HALO', 22, '100.00', '2026-02-06 12:36:17', '2026-02-06 12:36:17', '2026-02-06 12:36:17'),
(262, 1, 'KAMU MARAH DIA', 141, '100.00', '2026-02-06 12:45:20', '2026-02-06 12:45:20', '2026-02-06 12:45:20'),
(263, 1, 'KAMU MARAH', 165, '100.00', '2026-02-06 12:45:44', '2026-02-06 12:45:44', '2026-02-06 12:45:44'),
(264, 1, 'KAMU SIAPA', 207, '100.00', '2026-02-06 12:46:27', '2026-02-06 12:46:27', '2026-02-06 12:46:27'),
(265, 1, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 118, '100.00', '2026-02-07 04:38:21', '2026-02-07 04:38:21', '2026-02-07 04:38:21'),
(266, 1, 'SELAMAT PAGI', 41, '100.00', '2026-02-07 04:39:45', '2026-02-07 04:39:45', '2026-02-07 04:39:45'),
(267, 1, 'TULI', 20, '100.00', '2026-02-07 04:49:26', '2026-02-07 04:49:26', '2026-02-07 04:49:26'),
(268, 1, 'F', 0, '1.00', '2026-02-08 12:48:15', '2026-02-08 12:48:15', '2026-02-08 12:48:15'),
(269, 1, 'F', 0, '2.00', '2026-02-08 12:48:18', '2026-02-08 12:48:18', '2026-02-08 12:48:18'),
(270, 1, 'G', 0, '1.00', '2026-02-08 12:48:20', '2026-02-08 12:48:20', '2026-02-08 12:48:20'),
(271, 1, 'ABS', 31, '100.00', '2026-02-08 18:39:27', '2026-02-08 18:39:27', '2026-02-08 18:39:27'),
(272, 1, 'TULI', 51, '100.00', '2026-02-08 18:40:34', '2026-02-08 18:40:34', '2026-02-08 18:40:34'),
(273, 1, 'SAYA ANSAR', 67, '100.00', '2026-02-08 18:42:25', '2026-02-08 18:42:25', '2026-02-08 18:42:25'),
(274, 1, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 48, '100.00', '2026-02-09 08:43:43', '2026-02-09 08:43:43', '2026-02-09 08:43:43'),
(275, 1, 'APA BELAJAR', 53, '100.00', '2026-02-09 08:45:18', '2026-02-09 08:45:18', '2026-02-09 08:45:18'),
(276, 1, 'APA APA APA', 57, '100.00', '2026-02-09 08:46:41', '2026-02-09 08:46:41', '2026-02-09 08:46:41'),
(277, 1, 'MAAF', 21, '100.00', '2026-02-09 10:22:25', '2026-02-09 10:22:25', '2026-02-09 10:22:25'),
(278, 1, 'MAAF HALO', 56, '100.00', '2026-02-09 10:23:00', '2026-02-09 10:23:00', '2026-02-09 10:23:00'),
(279, 1, 'HALO APA BELAJAR', 116, '100.00', '2026-02-09 10:24:38', '2026-02-09 10:24:38', '2026-02-09 10:24:38'),
(280, 1, 'APA HALO BELAJAR', 26, '100.00', '2026-02-09 10:26:07', '2026-02-09 10:26:07', '2026-02-09 10:26:07'),
(281, 1, 'HALO SAYA ANSAR', 43, '100.00', '2026-02-09 10:27:09', '2026-02-09 10:27:09', '2026-02-09 10:27:09'),
(282, 1, 'HALO APA KABAR', 89, '100.00', '2026-02-09 10:27:56', '2026-02-09 10:27:56', '2026-02-09 10:27:56'),
(283, 1, 'APA BELAJAR MENULIS', 136, '100.00', '2026-02-09 10:28:44', '2026-02-09 10:28:44', '2026-02-09 10:28:44'),
(284, 1, 'APA BELAJAR MENULIS', 34, '100.00', '2026-02-09 10:29:36', '2026-02-09 10:29:36', '2026-02-09 10:29:36'),
(285, 1, 'APA BELAJAR MENULIS', 29, '100.00', '2026-02-09 10:49:16', '2026-02-09 10:49:16', '2026-02-09 10:49:16'),
(286, 1, 'U', 0, '1.00', '2026-02-09 10:50:00', '2026-02-09 10:50:00', '2026-02-09 10:50:00'),
(287, 1, 'APA BELAJAR MENULIS', 37, '100.00', '2026-02-09 10:51:17', '2026-02-09 10:51:17', '2026-02-09 10:51:17'),
(288, 1, 'APA BELAJAR MENULIS', 25, '100.00', '2026-02-09 10:53:28', '2026-02-09 10:53:28', '2026-02-09 10:53:28'),
(289, 1, 'BELAJAR', 18, '100.00', '2026-02-09 11:00:35', '2026-02-09 11:00:35', '2026-02-09 11:00:35'),
(290, 1, 'BELAJAR', 68, '100.00', '2026-02-09 11:01:26', '2026-02-09 11:01:26', '2026-02-09 11:01:26'),
(291, 1, 'erh', 0, '100.00', '2026-02-09 11:11:16', '2026-02-09 11:11:16', '2026-02-09 11:11:16'),
(292, 1, 'A', 7, '100.00', '2026-02-09 11:11:49', '2026-02-09 11:11:50', '2026-02-09 11:11:50'),
(293, 1, 'F', 0, '3.00', '2026-02-09 11:12:00', '2026-02-09 11:12:00', '2026-02-09 11:12:00'),
(294, 1, 'F', 7, '100.00', '2026-02-09 11:12:17', '2026-02-09 11:12:17', '2026-02-09 11:12:17'),
(295, 1, 'AAAAABBBBB', 17, '100.00', '2026-02-10 09:08:41', '2026-02-10 09:08:41', '2026-02-10 09:08:41'),
(296, 1, 'AAAA', 35, '100.00', '2026-02-10 09:08:59', '2026-02-10 09:08:59', '2026-02-10 09:08:59'),
(297, 1, 'AAD', 64, '100.00', '2026-02-10 09:09:29', '2026-02-10 09:09:29', '2026-02-10 09:09:29'),
(298, 1, 'BELAJAR HALO', 81, '100.00', '2026-02-10 09:12:18', '2026-02-10 09:12:18', '2026-02-10 09:12:18'),
(299, 1, 'APA BAIK SAYA MAAF', 85, '100.00', '2026-02-10 09:18:28', '2026-02-10 09:18:28', '2026-02-10 09:18:28'),
(300, 1, 'APA BAIK SAYA MAAF', 137, '100.00', '2026-02-10 09:19:21', '2026-02-10 09:19:21', '2026-02-10 09:19:21'),
(301, 1, 'SAYA MAAF TULI', 169, '100.00', '2026-02-10 09:19:53', '2026-02-10 09:19:53', '2026-02-10 09:19:53'),
(302, 1, 'SAYA TULI', 200, '100.00', '2026-02-10 09:20:25', '2026-02-10 09:20:25', '2026-02-10 09:20:25'),
(303, 1, 'SAYA MAAF', 217, '100.00', '2026-02-10 09:20:43', '2026-02-10 09:20:43', '2026-02-10 09:20:43'),
(304, 1, 'SAYA MAAF MENULIS', 254, '100.00', '2026-02-10 09:21:20', '2026-02-10 09:21:20', '2026-02-10 09:21:20'),
(305, 1, 'SAYA MAAF MENULIS HALO', 297, '100.00', '2026-02-10 09:22:03', '2026-02-10 09:22:03', '2026-02-10 09:22:03'),
(306, 1, 'SAYA SAYA SAYA', 30, '100.00', '2026-02-10 09:25:24', '2026-02-10 09:25:24', '2026-02-10 09:25:24'),
(307, 1, 'BAGAIMANA BAGAIMANA BAGAIMANA', 129, '100.00', '2026-02-10 09:27:04', '2026-02-10 09:27:04', '2026-02-10 09:27:04'),
(308, 1, 'BAGAIMANA BAGAIMANA BAGAIMANA', 157, '100.00', '2026-02-10 09:27:33', '2026-02-10 09:27:33', '2026-02-10 09:27:33'),
(309, 1, 'BAIK BAIK BAIK', 216, '100.00', '2026-02-10 09:28:33', '2026-02-10 09:28:33', '2026-02-10 09:28:33'),
(310, 1, 'BELAJAR BELAJAR BELAJAR', 246, '100.00', '2026-02-10 09:29:04', '2026-02-10 09:29:04', '2026-02-10 09:29:04'),
(311, 1, 'APA APA APA', 274, '100.00', '2026-02-10 09:29:32', '2026-02-10 09:29:32', '2026-02-10 09:29:32'),
(312, 1, 'BINGUNG BINGUNG BINGUNG', 313, '100.00', '2026-02-10 09:30:12', '2026-02-10 09:30:12', '2026-02-10 09:30:12'),
(313, 1, 'HALO HALO HALO', 345, '100.00', '2026-02-10 09:30:44', '2026-02-10 09:30:44', '2026-02-10 09:30:44'),
(314, 1, 'SABAR SABAR SABAR', 378, '100.00', '2026-02-10 09:31:18', '2026-02-10 09:31:18', '2026-02-10 09:31:18'),
(315, 1, 'MAKAN MAKAN MAKAN', 437, '100.00', '2026-02-10 09:32:18', '2026-02-10 09:32:18', '2026-02-10 09:32:18'),
(316, 1, 'MARAH MARAH MARAH', 637, '100.00', '2026-02-10 09:35:41', '2026-02-10 09:35:41', '2026-02-10 09:35:41'),
(317, 1, 'APA KABAR APA KABAR APA KABAR', 692, '100.00', '2026-02-10 09:36:38', '2026-02-10 09:36:38', '2026-02-10 09:36:38'),
(318, 1, 'DIA DIA DIA', 764, '100.00', '2026-02-10 09:37:51', '2026-02-10 09:37:51', '2026-02-10 09:37:51'),
(319, 1, 'DIA DIA DIA', 829, '100.00', '2026-02-10 09:38:58', '2026-02-10 09:38:58', '2026-02-10 09:38:58'),
(320, 1, 'BERAPA BERAPA BERAPA', 879, '100.00', '2026-02-10 09:39:49', '2026-02-10 09:39:49', '2026-02-10 09:39:49'),
(321, 1, 'KAMU KAMU KAMU', 944, '100.00', '2026-02-10 09:40:55', '2026-02-10 09:40:55', '2026-02-10 09:40:55'),
(322, 1, 'KAMU MARAH', 971, '100.00', '2026-02-10 09:41:21', '2026-02-10 09:41:21', '2026-02-10 09:41:21'),
(323, 1, 'MENULIS MENULIS MENULIS', 1059, '100.00', '2026-02-10 09:42:51', '2026-02-10 09:42:51', '2026-02-10 09:42:51'),
(324, 1, 'SELAMAT MALAM SELAMAT MALAM SELAMAT MALAM', 1262, '100.00', '2026-02-10 09:46:19', '2026-02-10 09:46:19', '2026-02-10 09:46:19'),
(325, 1, 'SELAMAT PAGI SELAMAT PAGI SELAMAT PAGI', 1306, '100.00', '2026-02-10 09:47:04', '2026-02-10 09:47:04', '2026-02-10 09:47:04'),
(326, 1, 'SELAMAT SIANG SELAMAT SIANG SELAMAT SIANG', 1378, '100.00', '2026-02-10 09:48:18', '2026-02-10 09:48:18', '2026-02-10 09:48:18'),
(327, 1, 'TIDUR TIDUR TIDUR', 1636, '100.00', '2026-02-10 09:52:43', '2026-02-10 09:52:43', '2026-02-10 09:52:43'),
(328, 1, 'SIAPA SIAPA SIAPA', 1677, '100.00', '2026-02-10 09:53:24', '2026-02-10 09:53:24', '2026-02-10 09:53:24'),
(329, 1, 'TINGGI TINGGI TINGGI', 1760, '100.00', '2026-02-10 09:54:49', '2026-02-10 09:54:49', '2026-02-10 09:54:49'),
(330, 1, 'TULI TULI TULI MAAF MAAF MAAF', 1828, '100.00', '2026-02-10 09:55:58', '2026-02-10 09:55:58', '2026-02-10 09:55:58'),
(331, 1, 'MAKAN', 14, '100.00', '2026-02-10 11:25:02', '2026-02-10 11:25:02', '2026-02-10 11:25:02'),
(332, 1, 'SAYA', 38, '100.00', '2026-02-10 11:25:27', '2026-02-10 11:25:27', '2026-02-10 11:25:27'),
(333, 1, 'SABAR', 26, '100.00', '2026-02-10 11:28:02', '2026-02-10 11:28:02', '2026-02-10 11:28:02'),
(334, 1, 'A', 11, '100.00', '2026-02-12 02:00:44', '2026-02-12 02:00:44', '2026-02-12 02:00:44'),
(335, 1, 'SAYA', 24, '100.00', '2026-02-12 02:02:01', '2026-02-12 02:02:01', '2026-02-12 02:02:01'),
(336, 1, 'erh', 0, '100.00', '2026-02-12 05:10:29', '2026-02-12 05:10:29', '2026-02-12 05:10:29'),
(337, 1, 'SAYA ANSAR', 38, '100.00', '2026-02-12 05:20:11', '2026-02-12 05:20:11', '2026-02-12 05:20:11'),
(338, 1, 'SAYA', 13, '100.00', '2026-02-12 05:20:49', '2026-02-12 05:20:49', '2026-02-12 05:20:49'),
(339, 1, 'S', 13, '100.00', '2026-02-12 05:23:17', '2026-02-12 05:23:17', '2026-02-12 05:23:17'),
(340, 1, 'ASR', 33, '100.00', '2026-02-12 05:23:38', '2026-02-12 05:23:38', '2026-02-12 05:23:38'),
(341, 1, 'ANSAR', 39, '100.00', '2026-02-12 05:34:27', '2026-02-12 05:34:27', '2026-02-12 05:34:27'),
(342, 1, 'A', 17, '100.00', '2026-02-13 10:20:09', '2026-02-13 10:20:09', '2026-02-13 10:20:09'),
(343, 1, 'BELAJAR', 13, '100.00', '2026-02-13 10:20:37', '2026-02-13 10:20:37', '2026-02-13 10:20:37'),
(344, 1, 'BELAJAR', 48, '100.00', '2026-02-13 10:21:13', '2026-02-13 10:21:13', '2026-02-13 10:21:13'),
(345, 1, 'BELAJAR SAYA', 71, '100.00', '2026-02-13 10:21:36', '2026-02-13 10:21:36', '2026-02-13 10:21:36');

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
('T91q51jSBsd84msFJW9ve75e4Sh8uG5qsIF70HER', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid1RsYXlQN0tnMk9XUWYzckdvNHhpTHpHbTF5YjhzWTNva3duQ2J2dyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYW11cy9hYmphZCI7czo1OiJyb3V0ZSI7czoxMToia2FtdXMuYWJqYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1771006907);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abjads`
--
ALTER TABLE `abjads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasil_kuis_pengguna_id_foreign` (`pengguna_id`),
  ADD KEY `hasil_kuis_kuis_id_foreign` (`kuis_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kata_dasars`
--
ALTER TABLE `kata_dasars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mode_cards`
--
ALTER TABLE `mode_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mode_cards_mode_key_unique` (`mode_key`);

--
-- Indexes for table `opsi_jawabans`
--
ALTER TABLE `opsi_jawabans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opsi_jawabans_pertanyaan_id_foreign` (`pertanyaan_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penggunas_email_unique` (`email`);

--
-- Indexes for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaans_kuis_id_foreign` (`kuis_id`);

--
-- Indexes for table `practice_sessions`
--
ALTER TABLE `practice_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `practice_sessions_user_id_completed_at_index` (`user_id`,`completed_at`);

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
-- AUTO_INCREMENT for table `abjads`
--
ALTER TABLE `abjads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kata_dasars`
--
ALTER TABLE `kata_dasars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mode_cards`
--
ALTER TABLE `mode_cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opsi_jawabans`
--
ALTER TABLE `opsi_jawabans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `practice_sessions`
--
ALTER TABLE `practice_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  ADD CONSTRAINT `hasil_kuis_kuis_id_foreign` FOREIGN KEY (`kuis_id`) REFERENCES `kuis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hasil_kuis_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `penggunas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opsi_jawabans`
--
ALTER TABLE `opsi_jawabans`
  ADD CONSTRAINT `opsi_jawabans_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `pertanyaans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pertanyaans`
--
ALTER TABLE `pertanyaans`
  ADD CONSTRAINT `pertanyaans_kuis_id_foreign` FOREIGN KEY (`kuis_id`) REFERENCES `kuis` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `practice_sessions`
--
ALTER TABLE `practice_sessions`
  ADD CONSTRAINT `practice_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `penggunas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
