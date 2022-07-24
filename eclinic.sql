-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 09:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('barang','service') COLLATE utf8mb4_unicode_ci NOT NULL,
  `durasi` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `type` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama_barang`, `description`, `jenis`, `durasi`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, '343443', 'Pemutih Gigi', 'Pemutih Gigi', 'barang', NULL, 1, 0, '2021-07-16 20:15:37', '2021-10-08 10:33:57'),
(2, '232332', 'Obat Kumur', 'Obat kumur antibiotik', 'barang', NULL, 1, 0, '2021-07-16 20:15:45', '2021-12-07 06:50:29'),
(3, '556565', 'Bleaching', '', 'service', 20, 1, 1, '2021-07-16 20:16:03', '2021-07-16 20:16:56'),
(4, '343445', 'Scalling', '', 'service', 20, 1, 1, '2021-07-16 20:16:14', '2021-07-16 20:17:00'),
(5, 'B11234', 'Obat Sariawan', 'Obat Sariawan', 'barang', NULL, 1, 0, '2021-12-08 07:43:30', '2021-12-08 07:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_booking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing_id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `dokter_pengganti_id` int(11) DEFAULT NULL,
  `resepsionis_id` bigint(20) UNSIGNED NOT NULL,
  `ob_id` bigint(20) UNSIGNED NOT NULL,
  `perawat_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `jadwal_id` int(225) UNSIGNED NOT NULL,
  `status_pembayaran` int(11) NOT NULL,
  `tanggal_status` date NOT NULL,
  `status_kedatangan_id` int(11) UNSIGNED NOT NULL,
  `jam_status` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `tanggal_pengganti` date DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `no_booking`, `marketing_id`, `dokter_id`, `dokter_pengganti_id`, `resepsionis_id`, `ob_id`, `perawat_id`, `cabang_id`, `customer_id`, `jadwal_id`, `status_pembayaran`, `tanggal_status`, `status_kedatangan_id`, `jam_status`, `jam_selesai`, `tanggal_pengganti`, `is_active`, `is_image`, `created_at`, `deleted_at`, `updated_at`) VALUES
(3, 'Tebet/20211011/93262', 4, 3, 9, 2, 6, 5, 1, 1, 136, 1, '2021-10-11', 4, '10:48:28', '11:28:28', '2021-10-11', '1', 1, '2021-10-11 03:49:00', NULL, '2021-10-11 04:04:49'),
(4, 'Tebet/20211011/80360', 4, 3, 9, 2, 6, 5, 1, 2, 641, 1, '2021-10-11', 4, '15:00:00', '16:00:00', '2021-10-11', '1', 1, '2021-10-11 07:31:22', NULL, '2021-10-11 08:19:36'),
(5, 'Tebet/20211011/70675', 4, 9, 3, 2, 6, 5, 1, 3, 642, 1, '2021-10-11', 4, '15:55:18', '16:35:18', '2021-10-11', '1', 1, '2021-10-11 08:56:14', NULL, '2021-10-12 09:19:31'),
(6, 'Tebet/20211209/89934', 4, 9, NULL, 0, 0, 0, 1, 1, 106, 0, '2021-12-13', 1, '09:00:00', '09:00:00', NULL, '1', 0, '2021-12-09 07:32:26', NULL, '2021-12-09 07:32:26'),
(7, 'Tebet/20220111/11621', 4, 9, NULL, 2, 0, 0, 1, 1, 228, 0, '2022-01-11', 4, '11:50:09', '11:50:09', NULL, '1', 1, '2022-01-11 04:58:47', NULL, '2022-01-13 05:26:43'),
(8, 'Tebet/20220112/90377', 4, 9, NULL, 2, 0, 0, 1, 1, 230, 1, '2022-01-13', 4, '09:00:00', '09:00:00', NULL, '1', 1, '2022-01-12 05:11:26', NULL, '2022-01-13 05:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_cabang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppn` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `status_pajak` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id`, `kode_cabang`, `nama`, `alamat`, `telpon`, `email`, `wa`, `ppn`, `is_active`, `status_pajak`, `created_at`, `updated_at`) VALUES
(1, 'C001', 'Tebet', 'Jl Tebet', '08977356372533', 'tebet@gmail.com', '08977356372533', 10, 1, 1, '2021-07-16 19:58:17', '2021-08-19 07:14:41'),
(2, 'C002', 'Kemang', 'Jl Kemang', '0892367236723', 'kemang@gmail.com', '0892367236723', 5, 1, 1, '2021-08-04 21:01:24', '2021-08-19 07:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `rekam_medik` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_st` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_nd` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rek` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik_ktp` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `suku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pict` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `cabang_id`, `rekam_medik`, `nama`, `no_telp`, `telp_st`, `telp_nd`, `no_rek`, `nik_ktp`, `email`, `tempat_lahir`, `tgl_lahir`, `jk`, `suku`, `alamat`, `pekerjaan`, `pict`, `is_active`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 4, 1, '', 'Gustopa Muhamad Irsad', '1241243252', NULL, NULL, '1137567567', '32064657565', 'gbhagodua@gmail.com', 'Jakarta', '2000-01-11', 'Laki-Laki', 'Sunda', 'Jakarta', 'Pelajar', 'images/patients/P4A8v8Sy2wgWdyB.jpg', 1, '2021-10-11 03:47:55', NULL, '2021-10-11 03:47:55'),
(2, 4, 1, '', 'Marliya Rahayu', '1241243252', NULL, NULL, '8746464564', '74638736473', 'marliya@gmail.com', 'Jakarta', '1998-09-30', 'Perempuan', 'Sunda', 'Jakarta', 'Pelajar', 'images/patients/5j7RKfmRLvPdRTd.jpg', 1, '2021-10-11 07:28:46', NULL, '2021-10-11 07:28:46'),
(3, 4, 1, '', 'Rahma', '8374626232', NULL, NULL, '112243434', '12324344', 'rahma@gmail.com', 'Jakarta', '2011-10-01', 'Perempuan', 'Sunda', 'Jakarta', 'Pelajar', 'images/patients/kx3v3XSpW2AX95q.jpg', 1, '2021-10-11 08:53:34', NULL, '2021-10-11 08:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `fisiks`
--

CREATE TABLE `fisiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `gol_darah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tekanan_darah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pny_jantung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `diabetes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `haemopilia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `hepatitis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `gastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `pny_lainnya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `alergi_obat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `alergi_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tidak Ada',
  `ket_lainnya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_tekanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_obat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_makanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fisiks`
--

INSERT INTO `fisiks` (`id`, `customer_id`, `gol_darah`, `tekanan_darah`, `pny_jantung`, `diabetes`, `haemopilia`, `hepatitis`, `gastring`, `pny_lainnya`, `alergi_obat`, `alergi_makanan`, `ket_lainnya`, `ket_tekanan`, `ket_obat`, `ket_makanan`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', '110/70', 'Ada', 'Ada', 'Ada', 'Tidak Ada', 'Ada', 'Ada', 'Ada', 'Tidak Ada', 'penyakit antrax', 'Normal', '-', '-', '2021-10-11 03:47:55', '2022-01-13 05:13:44'),
(2, 2, 'B', '120/70', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', '-', NULL, '-', '-', '2021-10-11 07:28:46', '2021-10-11 07:32:22'),
(3, 3, 'A', '120/70', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Ada', 'Asma', 'Normal', 'Obat Pilek', 'Udang', '2021-10-11 08:53:34', '2021-10-11 08:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `gigipasien`
--

CREATE TABLE `gigipasien` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `p11c` varchar(32) NOT NULL DEFAULT 'sou',
  `p11t` varchar(32) NOT NULL DEFAULT 'sou',
  `p11b` varchar(32) NOT NULL DEFAULT 'sou',
  `p11l` varchar(32) NOT NULL DEFAULT 'sou',
  `p11r` varchar(32) NOT NULL DEFAULT 'sou',
  `p12c` varchar(32) NOT NULL DEFAULT 'sou',
  `p12t` varchar(32) NOT NULL DEFAULT 'sou',
  `p12b` varchar(32) NOT NULL DEFAULT 'sou',
  `p12l` varchar(32) NOT NULL DEFAULT 'sou',
  `p12r` varchar(32) NOT NULL DEFAULT 'sou',
  `p13c` varchar(32) NOT NULL DEFAULT 'sou',
  `p13t` varchar(32) NOT NULL DEFAULT 'sou',
  `p13b` varchar(32) NOT NULL DEFAULT 'sou',
  `p13l` varchar(32) NOT NULL DEFAULT 'sou',
  `p13r` varchar(32) NOT NULL DEFAULT 'sou',
  `p14c` varchar(32) NOT NULL DEFAULT 'sou',
  `p14t` varchar(32) NOT NULL DEFAULT 'sou',
  `p14b` varchar(32) NOT NULL DEFAULT 'sou',
  `p14l` varchar(32) NOT NULL DEFAULT 'sou',
  `p14r` varchar(32) NOT NULL DEFAULT 'sou',
  `p15c` varchar(32) NOT NULL DEFAULT 'sou',
  `p15t` varchar(32) NOT NULL DEFAULT 'sou',
  `p15b` varchar(32) NOT NULL DEFAULT 'sou',
  `p15l` varchar(32) NOT NULL DEFAULT 'sou',
  `p15r` varchar(32) NOT NULL DEFAULT 'sou',
  `p16c` varchar(32) NOT NULL DEFAULT 'sou',
  `p16t` varchar(32) NOT NULL DEFAULT 'sou',
  `p16b` varchar(32) NOT NULL DEFAULT 'sou',
  `p16l` varchar(32) NOT NULL DEFAULT 'sou',
  `p16r` varchar(32) NOT NULL DEFAULT 'sou',
  `p17c` varchar(32) NOT NULL DEFAULT 'sou',
  `p17t` varchar(32) NOT NULL DEFAULT 'sou',
  `p17b` varchar(32) NOT NULL DEFAULT 'sou',
  `p17l` varchar(32) NOT NULL DEFAULT 'sou',
  `p17r` varchar(32) NOT NULL DEFAULT 'sou',
  `p18c` varchar(32) NOT NULL DEFAULT 'sou',
  `p18t` varchar(32) NOT NULL DEFAULT 'sou',
  `p18b` varchar(32) NOT NULL DEFAULT 'sou',
  `p18l` varchar(32) NOT NULL DEFAULT 'sou',
  `p18r` varchar(32) NOT NULL DEFAULT 'sou',
  `p21c` varchar(32) NOT NULL DEFAULT 'sou',
  `p21t` varchar(32) NOT NULL DEFAULT 'sou',
  `p21b` varchar(32) NOT NULL DEFAULT 'sou',
  `p21l` varchar(32) NOT NULL DEFAULT 'sou',
  `p21r` varchar(32) NOT NULL DEFAULT 'sou',
  `p22c` varchar(32) NOT NULL DEFAULT 'sou',
  `p22t` varchar(32) NOT NULL DEFAULT 'sou',
  `p22b` varchar(32) NOT NULL DEFAULT 'sou',
  `p22l` varchar(32) NOT NULL DEFAULT 'sou',
  `p22r` varchar(32) NOT NULL DEFAULT 'sou',
  `p23c` varchar(32) NOT NULL DEFAULT 'sou',
  `p23t` varchar(32) NOT NULL DEFAULT 'sou',
  `p23b` varchar(32) NOT NULL DEFAULT 'sou',
  `p23l` varchar(32) NOT NULL DEFAULT 'sou',
  `p23r` varchar(32) NOT NULL DEFAULT 'sou',
  `p24c` varchar(32) NOT NULL DEFAULT 'sou',
  `p24t` varchar(32) NOT NULL DEFAULT 'sou',
  `p24b` varchar(32) NOT NULL DEFAULT 'sou',
  `p24l` varchar(32) NOT NULL DEFAULT 'sou',
  `p24r` varchar(32) NOT NULL DEFAULT 'sou',
  `p25c` varchar(32) NOT NULL DEFAULT 'sou',
  `p25t` varchar(32) NOT NULL DEFAULT 'sou',
  `p25b` varchar(32) NOT NULL DEFAULT 'sou',
  `p25l` varchar(32) NOT NULL DEFAULT 'sou',
  `p25r` varchar(32) NOT NULL DEFAULT 'sou',
  `p26c` varchar(32) NOT NULL DEFAULT 'sou',
  `p26t` varchar(32) NOT NULL DEFAULT 'sou',
  `p26b` varchar(32) NOT NULL DEFAULT 'sou',
  `p26l` varchar(32) NOT NULL DEFAULT 'sou',
  `p26r` varchar(32) NOT NULL DEFAULT 'sou',
  `p27c` varchar(32) NOT NULL DEFAULT 'sou',
  `p27t` varchar(32) NOT NULL DEFAULT 'sou',
  `p27b` varchar(32) NOT NULL DEFAULT 'sou',
  `p27l` varchar(32) NOT NULL DEFAULT 'sou',
  `p27r` varchar(32) NOT NULL DEFAULT 'sou',
  `p28c` varchar(32) NOT NULL DEFAULT 'sou',
  `p28t` varchar(32) NOT NULL DEFAULT 'sou',
  `p28b` varchar(32) NOT NULL DEFAULT 'sou',
  `p28l` varchar(32) NOT NULL DEFAULT 'sou',
  `p28r` varchar(32) NOT NULL DEFAULT 'sou',
  `p51c` varchar(32) NOT NULL DEFAULT 'sou',
  `p51t` varchar(32) NOT NULL DEFAULT 'sou',
  `p51b` varchar(32) NOT NULL DEFAULT 'sou',
  `p51l` varchar(32) NOT NULL DEFAULT 'sou',
  `p51r` varchar(32) NOT NULL DEFAULT 'sou',
  `p52c` varchar(32) NOT NULL DEFAULT 'sou',
  `p52t` varchar(32) NOT NULL DEFAULT 'sou',
  `p52b` varchar(32) NOT NULL DEFAULT 'sou',
  `p52l` varchar(32) NOT NULL DEFAULT 'sou',
  `p52r` varchar(32) NOT NULL DEFAULT 'sou',
  `p53c` varchar(32) NOT NULL DEFAULT 'sou',
  `p53t` varchar(32) NOT NULL DEFAULT 'sou',
  `p53b` varchar(32) NOT NULL DEFAULT 'sou',
  `p53l` varchar(32) NOT NULL DEFAULT 'sou',
  `p53r` varchar(32) NOT NULL DEFAULT 'sou',
  `p54c` varchar(32) NOT NULL DEFAULT 'sou',
  `p54t` varchar(32) NOT NULL DEFAULT 'sou',
  `p54b` varchar(32) NOT NULL DEFAULT 'sou',
  `p54l` varchar(32) NOT NULL DEFAULT 'sou',
  `p54r` varchar(32) NOT NULL DEFAULT 'sou',
  `p55c` varchar(32) NOT NULL DEFAULT 'sou',
  `p55t` varchar(32) NOT NULL DEFAULT 'sou',
  `p55b` varchar(32) NOT NULL DEFAULT 'sou',
  `p55l` varchar(32) NOT NULL DEFAULT 'sou',
  `p55r` varchar(32) NOT NULL DEFAULT 'sou',
  `p61c` varchar(32) NOT NULL DEFAULT 'sou',
  `p61t` varchar(32) NOT NULL DEFAULT 'sou',
  `p61b` varchar(32) NOT NULL DEFAULT 'sou',
  `p61l` varchar(32) NOT NULL DEFAULT 'sou',
  `p61r` varchar(32) NOT NULL DEFAULT 'sou',
  `p62c` varchar(32) NOT NULL DEFAULT 'sou',
  `p62t` varchar(32) NOT NULL DEFAULT 'sou',
  `p62b` varchar(32) NOT NULL DEFAULT 'sou',
  `p62l` varchar(32) NOT NULL DEFAULT 'sou',
  `p62r` varchar(32) NOT NULL DEFAULT 'sou',
  `p63c` varchar(32) NOT NULL DEFAULT 'sou',
  `p63t` varchar(32) NOT NULL DEFAULT 'sou',
  `p63b` varchar(32) NOT NULL DEFAULT 'sou',
  `p63l` varchar(32) NOT NULL DEFAULT 'sou',
  `p63r` varchar(32) NOT NULL DEFAULT 'sou',
  `p64c` varchar(32) NOT NULL DEFAULT 'sou',
  `p64t` varchar(32) NOT NULL DEFAULT 'sou',
  `p64b` varchar(32) NOT NULL DEFAULT 'sou',
  `p64l` varchar(32) NOT NULL DEFAULT 'sou',
  `p64r` varchar(32) NOT NULL DEFAULT 'sou',
  `p65c` varchar(32) NOT NULL DEFAULT 'sou',
  `p65t` varchar(32) NOT NULL DEFAULT 'sou',
  `p65b` varchar(32) NOT NULL DEFAULT 'sou',
  `p65l` varchar(32) NOT NULL DEFAULT 'sou',
  `p65r` varchar(32) NOT NULL DEFAULT 'sou',
  `p81c` varchar(32) NOT NULL DEFAULT 'sou',
  `p81t` varchar(32) NOT NULL DEFAULT 'sou',
  `p81b` varchar(32) NOT NULL DEFAULT 'sou',
  `p81l` varchar(32) NOT NULL DEFAULT 'sou',
  `p81r` varchar(32) NOT NULL DEFAULT 'sou',
  `p82c` varchar(32) NOT NULL DEFAULT 'sou',
  `p82t` varchar(32) NOT NULL DEFAULT 'sou',
  `p82b` varchar(32) NOT NULL DEFAULT 'sou',
  `p82l` varchar(32) NOT NULL DEFAULT 'sou',
  `p82r` varchar(32) NOT NULL DEFAULT 'sou',
  `p83c` varchar(32) NOT NULL DEFAULT 'sou',
  `p83t` varchar(32) NOT NULL DEFAULT 'sou',
  `p83b` varchar(32) NOT NULL DEFAULT 'sou',
  `p83l` varchar(32) NOT NULL DEFAULT 'sou',
  `p83r` varchar(32) NOT NULL DEFAULT 'sou',
  `p84c` varchar(32) NOT NULL DEFAULT 'sou',
  `p84t` varchar(32) NOT NULL DEFAULT 'sou',
  `p84b` varchar(32) NOT NULL DEFAULT 'sou',
  `p84l` varchar(32) NOT NULL DEFAULT 'sou',
  `p84r` varchar(32) NOT NULL DEFAULT 'sou',
  `p85c` varchar(32) NOT NULL DEFAULT 'sou',
  `p85t` varchar(32) NOT NULL DEFAULT 'sou',
  `p85b` varchar(32) NOT NULL DEFAULT 'sou',
  `p85l` varchar(32) NOT NULL DEFAULT 'sou',
  `p85r` varchar(32) NOT NULL DEFAULT 'sou',
  `p71c` varchar(32) NOT NULL DEFAULT 'sou',
  `p71t` varchar(32) NOT NULL DEFAULT 'sou',
  `p71b` varchar(32) NOT NULL DEFAULT 'sou',
  `p71l` varchar(32) NOT NULL DEFAULT 'sou',
  `p71r` varchar(32) NOT NULL DEFAULT 'sou',
  `p72c` varchar(32) NOT NULL DEFAULT 'sou',
  `p72t` varchar(32) NOT NULL DEFAULT 'sou',
  `p72b` varchar(32) NOT NULL DEFAULT 'sou',
  `p72l` varchar(32) NOT NULL DEFAULT 'sou',
  `p72r` varchar(32) NOT NULL DEFAULT 'sou',
  `p73c` varchar(32) NOT NULL DEFAULT 'sou',
  `p73t` varchar(32) NOT NULL DEFAULT 'sou',
  `p73b` varchar(32) NOT NULL DEFAULT 'sou',
  `p73l` varchar(32) NOT NULL DEFAULT 'sou',
  `p73r` varchar(32) NOT NULL DEFAULT 'sou',
  `p74c` varchar(32) NOT NULL DEFAULT 'sou',
  `p74t` varchar(32) NOT NULL DEFAULT 'sou',
  `p74b` varchar(32) NOT NULL DEFAULT 'sou',
  `p74l` varchar(32) NOT NULL DEFAULT 'sou',
  `p74r` varchar(32) NOT NULL DEFAULT 'sou',
  `p75c` varchar(32) NOT NULL DEFAULT 'sou',
  `p75t` varchar(32) NOT NULL DEFAULT 'sou',
  `p75b` varchar(32) NOT NULL DEFAULT 'sou',
  `p75l` varchar(32) NOT NULL DEFAULT 'sou',
  `p75r` varchar(32) NOT NULL DEFAULT 'sou',
  `p41c` varchar(32) NOT NULL DEFAULT 'sou',
  `p41t` varchar(32) NOT NULL DEFAULT 'sou',
  `p41b` varchar(32) NOT NULL DEFAULT 'sou',
  `p41l` varchar(32) NOT NULL DEFAULT 'sou',
  `p41r` varchar(32) NOT NULL DEFAULT 'sou',
  `p42c` varchar(32) NOT NULL DEFAULT 'sou',
  `p42t` varchar(32) NOT NULL DEFAULT 'sou',
  `p42b` varchar(32) NOT NULL DEFAULT 'sou',
  `p42l` varchar(32) NOT NULL DEFAULT 'sou',
  `p42r` varchar(32) NOT NULL DEFAULT 'sou',
  `p43c` varchar(32) NOT NULL DEFAULT 'sou',
  `p43t` varchar(32) NOT NULL DEFAULT 'sou',
  `p43b` varchar(32) NOT NULL DEFAULT 'sou',
  `p43l` varchar(32) NOT NULL DEFAULT 'sou',
  `p43r` varchar(32) NOT NULL DEFAULT 'sou',
  `p44c` varchar(32) NOT NULL DEFAULT 'sou',
  `p44t` varchar(32) NOT NULL DEFAULT 'sou',
  `p44b` varchar(32) NOT NULL DEFAULT 'sou',
  `p44l` varchar(32) NOT NULL DEFAULT 'sou',
  `p44r` varchar(32) NOT NULL DEFAULT 'sou',
  `p45c` varchar(32) NOT NULL DEFAULT 'sou',
  `p45t` varchar(32) NOT NULL DEFAULT 'sou',
  `p45b` varchar(32) NOT NULL DEFAULT 'sou',
  `p45l` varchar(32) NOT NULL DEFAULT 'sou',
  `p45r` varchar(32) NOT NULL DEFAULT 'sou',
  `p46c` varchar(32) NOT NULL DEFAULT 'sou',
  `p46t` varchar(32) NOT NULL DEFAULT 'sou',
  `p46b` varchar(32) NOT NULL DEFAULT 'sou',
  `p46l` varchar(32) NOT NULL DEFAULT 'sou',
  `p46r` varchar(32) NOT NULL DEFAULT 'sou',
  `p47c` varchar(32) NOT NULL DEFAULT 'sou',
  `p47t` varchar(32) NOT NULL DEFAULT 'sou',
  `p47b` varchar(32) NOT NULL DEFAULT 'sou',
  `p47l` varchar(32) NOT NULL DEFAULT 'sou',
  `p47r` varchar(32) NOT NULL DEFAULT 'sou',
  `p48c` varchar(32) NOT NULL DEFAULT 'sou',
  `p48t` varchar(32) NOT NULL DEFAULT 'sou',
  `p48b` varchar(32) NOT NULL DEFAULT 'sou',
  `p48l` varchar(32) NOT NULL DEFAULT 'sou',
  `p48r` varchar(32) NOT NULL DEFAULT 'sou',
  `p31c` varchar(32) NOT NULL DEFAULT 'sou',
  `p31t` varchar(32) NOT NULL DEFAULT 'sou',
  `p31b` varchar(32) NOT NULL DEFAULT 'sou',
  `p31l` varchar(32) NOT NULL DEFAULT 'sou',
  `p31r` varchar(32) NOT NULL DEFAULT 'sou',
  `p32c` varchar(32) NOT NULL DEFAULT 'sou',
  `p32t` varchar(32) NOT NULL DEFAULT 'sou',
  `p32b` varchar(32) NOT NULL DEFAULT 'sou',
  `p32l` varchar(32) NOT NULL DEFAULT 'sou',
  `p32r` varchar(32) NOT NULL DEFAULT 'sou',
  `p33c` varchar(32) NOT NULL DEFAULT 'sou',
  `p33t` varchar(32) NOT NULL DEFAULT 'sou',
  `p33b` varchar(32) NOT NULL DEFAULT 'sou',
  `p33l` varchar(32) NOT NULL DEFAULT 'sou',
  `p33r` varchar(32) NOT NULL DEFAULT 'sou',
  `p34c` varchar(32) NOT NULL DEFAULT 'sou',
  `p34t` varchar(32) NOT NULL DEFAULT 'sou',
  `p34b` varchar(32) NOT NULL DEFAULT 'sou',
  `p34l` varchar(32) NOT NULL DEFAULT 'sou',
  `p34r` varchar(32) NOT NULL DEFAULT 'sou',
  `p35c` varchar(32) NOT NULL DEFAULT 'sou',
  `p35t` varchar(32) NOT NULL DEFAULT 'sou',
  `p35b` varchar(32) NOT NULL DEFAULT 'sou',
  `p35l` varchar(32) NOT NULL DEFAULT 'sou',
  `p35r` varchar(32) NOT NULL DEFAULT 'sou',
  `p36c` varchar(32) NOT NULL DEFAULT 'sou',
  `p36t` varchar(32) NOT NULL DEFAULT 'sou',
  `p36b` varchar(32) NOT NULL DEFAULT 'sou',
  `p36l` varchar(32) NOT NULL DEFAULT 'sou',
  `p36r` varchar(32) NOT NULL DEFAULT 'sou',
  `p37c` varchar(32) NOT NULL DEFAULT 'sou',
  `p37t` varchar(32) NOT NULL DEFAULT 'sou',
  `p37b` varchar(32) NOT NULL DEFAULT 'sou',
  `p37l` varchar(32) NOT NULL DEFAULT 'sou',
  `p37r` varchar(32) NOT NULL DEFAULT 'sou',
  `p38c` varchar(32) NOT NULL DEFAULT 'sou',
  `p38t` varchar(32) NOT NULL DEFAULT 'sou',
  `p38b` varchar(32) NOT NULL DEFAULT 'sou',
  `p38l` varchar(32) NOT NULL DEFAULT 'sou',
  `p38r` varchar(32) NOT NULL DEFAULT 'sou',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gigipasien`
--

INSERT INTO `gigipasien` (`id`, `customer_id`, `p11c`, `p11t`, `p11b`, `p11l`, `p11r`, `p12c`, `p12t`, `p12b`, `p12l`, `p12r`, `p13c`, `p13t`, `p13b`, `p13l`, `p13r`, `p14c`, `p14t`, `p14b`, `p14l`, `p14r`, `p15c`, `p15t`, `p15b`, `p15l`, `p15r`, `p16c`, `p16t`, `p16b`, `p16l`, `p16r`, `p17c`, `p17t`, `p17b`, `p17l`, `p17r`, `p18c`, `p18t`, `p18b`, `p18l`, `p18r`, `p21c`, `p21t`, `p21b`, `p21l`, `p21r`, `p22c`, `p22t`, `p22b`, `p22l`, `p22r`, `p23c`, `p23t`, `p23b`, `p23l`, `p23r`, `p24c`, `p24t`, `p24b`, `p24l`, `p24r`, `p25c`, `p25t`, `p25b`, `p25l`, `p25r`, `p26c`, `p26t`, `p26b`, `p26l`, `p26r`, `p27c`, `p27t`, `p27b`, `p27l`, `p27r`, `p28c`, `p28t`, `p28b`, `p28l`, `p28r`, `p51c`, `p51t`, `p51b`, `p51l`, `p51r`, `p52c`, `p52t`, `p52b`, `p52l`, `p52r`, `p53c`, `p53t`, `p53b`, `p53l`, `p53r`, `p54c`, `p54t`, `p54b`, `p54l`, `p54r`, `p55c`, `p55t`, `p55b`, `p55l`, `p55r`, `p61c`, `p61t`, `p61b`, `p61l`, `p61r`, `p62c`, `p62t`, `p62b`, `p62l`, `p62r`, `p63c`, `p63t`, `p63b`, `p63l`, `p63r`, `p64c`, `p64t`, `p64b`, `p64l`, `p64r`, `p65c`, `p65t`, `p65b`, `p65l`, `p65r`, `p81c`, `p81t`, `p81b`, `p81l`, `p81r`, `p82c`, `p82t`, `p82b`, `p82l`, `p82r`, `p83c`, `p83t`, `p83b`, `p83l`, `p83r`, `p84c`, `p84t`, `p84b`, `p84l`, `p84r`, `p85c`, `p85t`, `p85b`, `p85l`, `p85r`, `p71c`, `p71t`, `p71b`, `p71l`, `p71r`, `p72c`, `p72t`, `p72b`, `p72l`, `p72r`, `p73c`, `p73t`, `p73b`, `p73l`, `p73r`, `p74c`, `p74t`, `p74b`, `p74l`, `p74r`, `p75c`, `p75t`, `p75b`, `p75l`, `p75r`, `p41c`, `p41t`, `p41b`, `p41l`, `p41r`, `p42c`, `p42t`, `p42b`, `p42l`, `p42r`, `p43c`, `p43t`, `p43b`, `p43l`, `p43r`, `p44c`, `p44t`, `p44b`, `p44l`, `p44r`, `p45c`, `p45t`, `p45b`, `p45l`, `p45r`, `p46c`, `p46t`, `p46b`, `p46l`, `p46r`, `p47c`, `p47t`, `p47b`, `p47l`, `p47r`, `p48c`, `p48t`, `p48b`, `p48l`, `p48r`, `p31c`, `p31t`, `p31b`, `p31l`, `p31r`, `p32c`, `p32t`, `p32b`, `p32l`, `p32r`, `p33c`, `p33t`, `p33b`, `p33l`, `p33r`, `p34c`, `p34t`, `p34b`, `p34l`, `p34r`, `p35c`, `p35t`, `p35b`, `p35l`, `p35r`, `p36c`, `p36t`, `p36b`, `p36l`, `p36r`, `p37c`, `p37t`, `p37b`, `p37l`, `p37r`, `p38c`, `p38t`, `p38b`, `p38l`, `p38r`, `created_at`, `updated_at`) VALUES
(1, 1, 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'amf', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', '2021-10-11 03:50:07', '2021-10-11 10:50:07'),
(2, 2, 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'A', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', '2021-10-11 07:32:41', '2021-10-11 14:32:41'),
(3, 3, 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'cnm', 'cnm', 'cnm', 'cnm', 'cnm', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', 'sou', '2021-10-11 08:58:59', '2021-10-11 15:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `harga_produk_cabangs`
--

CREATE TABLE `harga_produk_cabangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `harga` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harga_produk_cabangs`
--

INSERT INTO `harga_produk_cabangs` (`id`, `barang_id`, `cabang_id`, `harga`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2000000, 31, '2021-07-21 18:17:34', '2022-01-11 04:13:34'),
(2, 3, 1, 1500000, 0, '2021-07-21 18:18:38', '2021-07-21 18:18:38'),
(3, 4, 1, 1500000, 0, '2021-08-13 06:16:04', '2021-08-13 06:16:04'),
(4, 4, 2, 2000000, 0, '2021-08-14 03:41:02', '2021-08-14 03:41:02'),
(5, 1, 2, 120000, 25, '2021-12-07 06:51:02', '2021-12-13 08:56:52'),
(6, 2, 1, 100000, 20, '2021-12-07 06:52:41', '2021-12-13 08:56:53'),
(7, 5, 1, 22000, 1, '2021-12-08 07:43:30', '2022-01-11 04:13:34'),
(8, 2, 2, 22000, 15, '2021-12-08 07:43:30', '2021-12-13 08:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_date` date NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `booking_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'pasien/images/11102021105148-38598.jpg', '2021-10-11 03:51:48', '2021-10-11 03:51:48'),
(2, 3, 'pasien/images/11102021105148-download.jpg', '2021-10-11 03:51:48', '2021-10-11 03:51:48'),
(3, 4, 'pasien/images/11102021143335-38598.jpg', '2021-10-11 07:33:35', '2021-10-11 07:33:35'),
(4, 4, 'pasien/images/11102021143335-download.jpg', '2021-10-11 07:33:35', '2021-10-11 07:33:35'),
(5, 4, 'pasien/images/11102021143335-kisspng-user-profile-computer-icons-user-interface-mystique-5aceb0245aa097.2885333015234949483712.jpg', '2021-10-11 07:33:35', '2021-10-11 07:33:35'),
(6, 5, 'pasien/images/11102021160132-38598.jpg', '2021-10-11 09:01:32', '2021-10-11 09:01:32'),
(7, 5, 'pasien/images/11102021160132-download.jpg', '2021-10-11 09:01:32', '2021-10-11 09:01:32'),
(8, 5, 'pasien/images/11102021160132-kisspng-user-profile-computer-icons-user-interface-mystique-5aceb0245aa097.2885333015234949483712.jpg', '2021-10-11 09:01:32', '2021-10-11 09:01:32'),
(9, 5, 'pasien/images/11102021160132-Macbook-Air-2018.jpeg', '2021-10-11 09:01:32', '2021-10-11 09:01:32'),
(10, 5, 'pasien/images/12102021105732-kisspng-user-profile-computer-icons-user-interface-mystique-5aceb0245aa097.2885333015234949483712.jpg', '2021-10-12 03:57:32', '2021-10-12 03:57:32'),
(11, 5, 'pasien/images/12102021105732-Macbook-Air-2018.jpeg', '2021-10-12 03:57:32', '2021-10-12 03:57:32'),
(12, 5, 'pasien/images/12102021105732-pngtree-user-vector-avatar-png-image_1541962.jpg', '2021-10-12 03:57:32', '2021-10-12 03:57:32'),
(13, 7, 'pasien/images/13012022122643-60436a28b258b.jpg', '2022-01-13 05:26:43', '2022-01-13 05:26:43'),
(14, 8, 'pasien/images/13012022122655-60436a28b258b.jpg', '2022-01-13 05:26:55', '2022-01-13 05:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `in_outs`
--

CREATE TABLE `in_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cabang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `in` int(11) NOT NULL DEFAULT 0,
  `out` int(11) NOT NULL DEFAULT 0,
  `last_stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_outs`
--

INSERT INTO `in_outs` (`id`, `invoice`, `barang_id`, `supplier_id`, `customer_id`, `cabang_id`, `user_id`, `in`, `out`, `last_stok`, `created_at`, `updated_at`) VALUES
(1, 'INV20211213001', 1, 1, NULL, NULL, 1, 10, 0, 35, '2021-12-13 08:56:07', NULL),
(2, 'INV20211213001', 2, 1, NULL, NULL, 1, 10, 0, 25, '2021-12-13 08:56:07', NULL),
(3, 'TRX20211210001', 1, NULL, NULL, 2, 1, 0, 5, 25, '2021-12-13 08:56:53', NULL),
(4, 'TRX20211210001', 2, NULL, NULL, 2, 1, 0, 5, 15, '2021-12-13 08:56:53', NULL),
(5, 'IN889898', 1, 1, NULL, NULL, 1, 1, 0, 31, '2022-01-11 04:13:35', NULL),
(6, 'IN889898', 5, 1, NULL, NULL, 1, 1, 0, 1, '2022-01-11 04:13:35', NULL),
(7, '', 2, NULL, 1, NULL, 4, 0, 1, 0, '2022-01-11 04:58:47', '2022-01-11 04:58:47'),
(8, '', 2, NULL, 1, NULL, 4, 0, 1, 0, '2022-01-12 05:11:26', '2022-01-12 05:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `ruangan_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `user_id`, `cabang_id`, `shift_id`, `ruangan_id`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 2, '2021-12-01', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(2, 3, 1, 1, 2, '2021-12-02', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(3, 3, 1, 1, 2, '2021-12-03', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(4, 3, 1, 1, 2, '2021-12-04', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(5, 3, 1, 1, 2, '2021-12-05', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(6, 3, 1, 1, 2, '2021-12-06', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(7, 3, 1, 1, 2, '2021-12-07', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(8, 3, 1, 1, 2, '2021-12-08', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(9, 3, 1, 1, 2, '2021-12-09', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(10, 3, 1, 1, 2, '2021-12-10', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(11, 3, 1, 1, 2, '2021-12-11', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(12, 3, 1, 1, 2, '2021-12-12', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(13, 3, 1, 1, 2, '2021-12-13', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(14, 3, 1, 1, 2, '2021-12-14', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(15, 3, 1, 1, 2, '2021-12-15', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(16, 3, 1, 1, 2, '2021-12-16', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(17, 3, 1, 1, 2, '2021-12-17', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(18, 3, 1, 1, 2, '2021-12-18', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(19, 3, 1, 1, 2, '2021-12-19', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(20, 3, 1, 1, 2, '2021-12-20', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(21, 3, 1, 1, 2, '2021-12-21', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(22, 3, 1, 1, 2, '2021-12-22', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(23, 3, 1, 1, 2, '2021-12-23', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(24, 3, 1, 1, 2, '2021-12-24', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(25, 3, 1, 1, 2, '2021-12-25', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(26, 3, 1, 1, 2, '2021-12-26', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(27, 3, 1, 1, 2, '2021-12-27', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(28, 3, 1, 1, 2, '2021-12-28', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(29, 3, 1, 1, 2, '2021-12-29', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(30, 3, 1, 1, 2, '2021-12-30', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(31, 3, 1, 1, 2, '2021-12-31', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(32, 5, 1, 1, 2, '2021-12-01', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(33, 5, 1, 1, 2, '2021-12-02', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(34, 5, 1, 1, 2, '2021-12-03', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(35, 5, 1, 1, 2, '2021-12-04', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(36, 5, 1, 1, 2, '2021-12-05', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(37, 5, 1, 1, 2, '2021-12-06', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(38, 5, 1, 1, 2, '2021-12-07', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(39, 5, 1, 1, 2, '2021-12-08', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(40, 5, 1, 1, 2, '2021-12-09', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(41, 5, 1, 1, 2, '2021-12-10', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(42, 5, 1, 1, 2, '2021-12-11', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(43, 5, 1, 1, 2, '2021-12-12', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(44, 5, 1, 1, 2, '2021-12-13', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(45, 5, 1, 1, 2, '2021-12-14', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(46, 5, 1, 1, 2, '2021-12-15', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(47, 5, 1, 1, 2, '2021-12-16', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(48, 5, 1, 1, 2, '2021-12-17', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(49, 5, 1, 1, 2, '2021-12-18', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(50, 5, 1, 1, 2, '2021-12-19', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(51, 5, 1, 1, 2, '2021-12-20', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(52, 5, 1, 1, 2, '2021-12-21', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(53, 5, 1, 1, 2, '2021-12-22', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(54, 5, 1, 1, 2, '2021-12-23', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(55, 5, 1, 1, 2, '2021-12-24', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(56, 5, 1, 1, 2, '2021-12-25', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(57, 5, 1, 1, 2, '2021-12-26', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(58, 5, 1, 1, 2, '2021-12-27', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(59, 5, 1, 1, 2, '2021-12-28', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(60, 5, 1, 1, 2, '2021-12-29', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(61, 5, 1, 1, 2, '2021-12-30', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(62, 5, 1, 1, 2, '2021-12-31', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(63, 6, 1, 1, 2, '2021-12-01', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(64, 6, 1, 1, 2, '2021-12-02', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(65, 6, 1, 1, 2, '2021-12-03', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(66, 6, 1, 1, 2, '2021-12-04', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(67, 6, 1, 1, 2, '2021-12-05', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(68, 6, 1, 1, 2, '2021-12-06', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(69, 6, 1, 1, 2, '2021-12-07', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(70, 6, 1, 1, 2, '2021-12-08', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(71, 6, 1, 1, 2, '2021-12-09', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(72, 6, 1, 1, 2, '2021-12-10', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(73, 6, 1, 1, 2, '2021-12-11', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(74, 6, 1, 1, 2, '2021-12-12', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(75, 6, 1, 1, 2, '2021-12-13', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(76, 6, 1, 1, 2, '2021-12-14', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(77, 6, 1, 1, 2, '2021-12-15', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(78, 6, 1, 1, 2, '2021-12-16', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(79, 6, 1, 1, 2, '2021-12-17', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(80, 6, 1, 1, 2, '2021-12-18', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(81, 6, 1, 1, 2, '2021-12-19', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(82, 6, 1, 1, 2, '2021-12-20', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(83, 6, 1, 1, 2, '2021-12-21', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(84, 6, 1, 1, 2, '2021-12-22', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(85, 6, 1, 1, 2, '2021-12-23', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(86, 6, 1, 1, 2, '2021-12-24', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(87, 6, 1, 1, 2, '2021-12-25', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(88, 6, 1, 1, 2, '2021-12-26', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(89, 6, 1, 1, 2, '2021-12-27', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(90, 6, 1, 1, 2, '2021-12-28', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(91, 6, 1, 1, 2, '2021-12-29', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(92, 6, 1, 1, 2, '2021-12-30', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(93, 6, 1, 1, 2, '2021-12-31', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(94, 9, 1, 1, 2, '2021-12-01', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(95, 9, 1, 1, 2, '2021-12-02', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(96, 9, 1, 1, 2, '2021-12-03', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(97, 9, 1, 1, 2, '2021-12-04', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(98, 9, 1, 1, 2, '2021-12-05', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(99, 9, 1, 1, 2, '2021-12-06', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(100, 9, 1, 1, 2, '2021-12-07', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(101, 9, 1, 1, 2, '2021-12-08', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(102, 9, 1, 1, 2, '2021-12-09', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(103, 9, 1, 1, 2, '2021-12-10', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(104, 9, 1, 1, 2, '2021-12-11', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(105, 9, 1, 1, 2, '2021-12-12', '2021-12-09 07:29:35', '2021-12-09 07:29:35'),
(106, 9, 1, 1, 2, '2021-12-13', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(107, 9, 1, 1, 2, '2021-12-14', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(108, 9, 1, 1, 2, '2021-12-15', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(109, 9, 1, 1, 2, '2021-12-16', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(110, 9, 1, 1, 2, '2021-12-17', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(111, 9, 1, 1, 2, '2021-12-18', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(112, 9, 1, 1, 2, '2021-12-19', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(113, 9, 1, 1, 2, '2021-12-20', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(114, 9, 1, 1, 2, '2021-12-21', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(115, 9, 1, 1, 2, '2021-12-22', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(116, 9, 1, 1, 2, '2021-12-23', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(117, 9, 1, 1, 2, '2021-12-24', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(118, 9, 1, 1, 2, '2021-12-25', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(119, 9, 1, 1, 2, '2021-12-26', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(120, 9, 1, 1, 2, '2021-12-27', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(121, 9, 1, 1, 2, '2021-12-28', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(122, 9, 1, 1, 2, '2021-12-29', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(123, 9, 1, 1, 2, '2021-12-30', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(124, 9, 1, 1, 2, '2021-12-31', '2021-12-09 07:29:36', '2021-12-09 07:29:36'),
(125, 3, 1, 1, 2, '2022-01-01', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(126, 3, 1, 1, 2, '2022-01-02', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(127, 3, 1, 1, 2, '2022-01-03', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(128, 3, 1, 1, 2, '2022-01-04', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(129, 3, 1, 1, 2, '2022-01-05', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(130, 3, 1, 1, 2, '2022-01-06', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(131, 3, 1, 1, 2, '2022-01-07', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(132, 3, 1, 1, 2, '2022-01-08', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(133, 3, 1, 1, 2, '2022-01-09', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(134, 3, 1, 1, 2, '2022-01-10', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(135, 3, 1, 1, 2, '2022-01-11', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(136, 3, 1, 1, 2, '2022-01-12', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(137, 3, 1, 1, 2, '2022-01-13', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(138, 3, 1, 1, 2, '2022-01-14', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(139, 3, 1, 1, 2, '2022-01-15', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(140, 3, 1, 1, 2, '2022-01-16', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(141, 3, 1, 1, 2, '2022-01-17', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(142, 3, 1, 1, 2, '2022-01-18', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(143, 3, 1, 1, 2, '2022-01-19', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(144, 3, 1, 1, 2, '2022-01-20', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(145, 3, 1, 1, 2, '2022-01-21', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(146, 3, 1, 1, 2, '2022-01-22', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(147, 3, 1, 1, 2, '2022-01-23', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(148, 3, 1, 1, 2, '2022-01-24', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(149, 3, 1, 1, 2, '2022-01-25', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(150, 3, 1, 1, 2, '2022-01-26', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(151, 3, 1, 1, 2, '2022-01-27', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(152, 3, 1, 1, 2, '2022-01-28', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(153, 3, 1, 1, 2, '2022-01-29', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(154, 3, 1, 1, 2, '2022-01-30', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(155, 3, 1, 1, 2, '2022-01-31', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(156, 5, 1, 1, 2, '2022-01-01', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(157, 5, 1, 1, 2, '2022-01-02', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(158, 5, 1, 1, 2, '2022-01-03', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(159, 5, 1, 1, 2, '2022-01-04', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(160, 5, 1, 1, 2, '2022-01-05', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(161, 5, 1, 1, 2, '2022-01-06', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(162, 5, 1, 1, 2, '2022-01-07', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(163, 5, 1, 1, 2, '2022-01-08', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(164, 5, 1, 1, 2, '2022-01-09', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(165, 5, 1, 1, 2, '2022-01-10', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(166, 5, 1, 1, 2, '2022-01-11', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(167, 5, 1, 1, 2, '2022-01-12', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(168, 5, 1, 1, 2, '2022-01-13', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(169, 5, 1, 1, 2, '2022-01-14', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(170, 5, 1, 1, 2, '2022-01-15', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(171, 5, 1, 1, 2, '2022-01-16', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(172, 5, 1, 1, 2, '2022-01-17', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(173, 5, 1, 1, 2, '2022-01-18', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(174, 5, 1, 1, 2, '2022-01-19', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(175, 5, 1, 1, 2, '2022-01-20', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(176, 5, 1, 1, 2, '2022-01-21', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(177, 5, 1, 1, 2, '2022-01-22', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(178, 5, 1, 1, 2, '2022-01-23', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(179, 5, 1, 1, 2, '2022-01-24', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(180, 5, 1, 1, 2, '2022-01-25', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(181, 5, 1, 1, 2, '2022-01-26', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(182, 5, 1, 1, 2, '2022-01-27', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(183, 5, 1, 1, 2, '2022-01-28', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(184, 5, 1, 1, 2, '2022-01-29', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(185, 5, 1, 1, 2, '2022-01-30', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(186, 5, 1, 1, 2, '2022-01-31', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(187, 6, 1, 1, 2, '2022-01-01', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(188, 6, 1, 1, 2, '2022-01-02', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(189, 6, 1, 1, 2, '2022-01-03', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(190, 6, 1, 1, 2, '2022-01-04', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(191, 6, 1, 1, 2, '2022-01-05', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(192, 6, 1, 1, 2, '2022-01-06', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(193, 6, 1, 1, 2, '2022-01-07', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(194, 6, 1, 1, 2, '2022-01-08', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(195, 6, 1, 1, 2, '2022-01-09', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(196, 6, 1, 1, 2, '2022-01-10', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(197, 6, 1, 1, 2, '2022-01-11', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(198, 6, 1, 1, 2, '2022-01-12', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(199, 6, 1, 1, 2, '2022-01-13', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(200, 6, 1, 1, 2, '2022-01-14', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(201, 6, 1, 1, 2, '2022-01-15', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(202, 6, 1, 1, 2, '2022-01-16', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(203, 6, 1, 1, 2, '2022-01-17', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(204, 6, 1, 1, 2, '2022-01-18', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(205, 6, 1, 1, 2, '2022-01-19', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(206, 6, 1, 1, 2, '2022-01-20', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(207, 6, 1, 1, 2, '2022-01-21', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(208, 6, 1, 1, 2, '2022-01-22', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(209, 6, 1, 1, 2, '2022-01-23', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(210, 6, 1, 1, 2, '2022-01-24', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(211, 6, 1, 1, 2, '2022-01-25', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(212, 6, 1, 1, 2, '2022-01-26', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(213, 6, 1, 1, 2, '2022-01-27', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(214, 6, 1, 1, 2, '2022-01-28', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(215, 6, 1, 1, 2, '2022-01-29', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(216, 6, 1, 1, 2, '2022-01-30', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(217, 6, 1, 1, 2, '2022-01-31', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(218, 9, 1, 1, 2, '2022-01-01', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(219, 9, 1, 1, 2, '2022-01-02', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(220, 9, 1, 1, 2, '2022-01-03', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(221, 9, 1, 1, 2, '2022-01-04', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(222, 9, 1, 1, 2, '2022-01-05', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(223, 9, 1, 1, 2, '2022-01-06', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(224, 9, 1, 1, 2, '2022-01-07', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(225, 9, 1, 1, 2, '2022-01-08', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(226, 9, 1, 1, 2, '2022-01-09', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(227, 9, 1, 1, 2, '2022-01-10', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(228, 9, 1, 1, 2, '2022-01-11', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(229, 9, 1, 1, 2, '2022-01-12', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(230, 9, 1, 1, 2, '2022-01-13', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(231, 9, 1, 1, 2, '2022-01-14', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(232, 9, 1, 1, 2, '2022-01-15', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(233, 9, 1, 1, 2, '2022-01-16', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(234, 9, 1, 1, 2, '2022-01-17', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(235, 9, 1, 1, 2, '2022-01-18', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(236, 9, 1, 1, 2, '2022-01-19', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(237, 9, 1, 1, 2, '2022-01-20', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(238, 9, 1, 1, 2, '2022-01-21', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(239, 9, 1, 1, 2, '2022-01-22', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(240, 9, 1, 1, 2, '2022-01-23', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(241, 9, 1, 1, 2, '2022-01-24', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(242, 9, 1, 1, 2, '2022-01-25', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(243, 9, 1, 1, 2, '2022-01-26', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(244, 9, 1, 1, 2, '2022-01-27', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(245, 9, 1, 1, 2, '2022-01-28', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(246, 9, 1, 1, 2, '2022-01-29', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(247, 9, 1, 1, 2, '2022-01-30', '2022-01-10 09:29:45', '2022-01-10 09:29:45'),
(248, 9, 1, 1, 2, '2022-01-31', '2022-01-10 09:29:45', '2022-01-10 09:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `ket_odontograms`
--

CREATE TABLE `ket_odontograms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `occlusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_palatinus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_mandibularis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `palatum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diastema` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anomali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_occlusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_tp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_tm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_palatum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_diastema` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket_anomali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ket_odontograms`
--

INSERT INTO `ket_odontograms` (`id`, `customer_id`, `occlusi`, `t_palatinus`, `t_mandibularis`, `palatum`, `diastema`, `anomali`, `lain`, `d`, `m`, `f`, `ket_occlusi`, `ket_tp`, `ket_tm`, `ket_palatum`, `ket_diastema`, `ket_anomali`, `created_at`, `updated_at`) VALUES
(1, 2, 'Normal Bite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 10:34:02'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-11 03:47:55', '2021-10-11 03:47:55'),
(4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-11 07:28:46', '2021-10-11 07:28:46'),
(5, 3, 'Normal Bite', 'Tidak Ada', 'Tidak Ada', 'Rendah', 'Tidak Ada', 'Tidak Ada', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-11 08:53:34', '2021-10-11 08:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `komisis`
--

CREATE TABLE `komisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `persentase` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_transaksi` bigint(20) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komisis`
--

INSERT INTO `komisis` (`id`, `role_id`, `persentase`, `min_transaksi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '0', 0, 1, '2021-07-21 05:53:55', '2021-08-13 15:49:13'),
(2, 2, '20', 0, 1, '2021-08-05 23:02:18', '2021-08-05 23:02:18'),
(3, 3, '1', 900000, 1, '2021-08-05 23:02:36', '2021-08-13 15:49:46'),
(4, 4, '1', 900000, 1, '2021-08-14 01:54:32', '2021-08-14 01:54:32'),
(5, 5, '0.25', 900000, 1, '2021-08-14 01:56:30', '2021-08-14 01:56:30'),
(6, 6, '1', 900000, 1, '2021-08-14 01:56:43', '2021-08-14 01:56:43');

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
(4, '2021_07_10_030934_create_permission_tables', 1),
(5, '2021_07_13_080413_create_barangs_table', 1),
(6, '2021_07_14_043218_create_harga_produk_cabangs_table', 1),
(7, '2021_07_15_030150_create_customers_table', 1),
(8, '2021_07_16_002514_create_payments_table', 1),
(9, '2021_07_16_021433_create_status_pasiens_table', 1),
(10, '2021_07_16_031117_create_vouchers_table', 1),
(11, '2021_07_17_022654_create_cabangs_table', 1),
(12, '2021_07_21_123541_create_komisis_table', 2),
(13, '2021_07_22_003352_create_ruangans_table', 3),
(14, '2021_07_26_023617_create_odontograms_table', 4),
(15, '2021_07_26_025104_add_field_to_odontograms_table', 5),
(16, '2021_07_26_033809_create_simbol_odontograms_table', 6),
(17, '2021_07_27_041134_create_rekam_medis_table', 7),
(19, '2021_07_29_012337_create_ket_odontograms_table', 8),
(21, '2021_08_02_031724_create_fisiks_table', 9),
(22, '2021_08_05_030713_create_bookings_table', 10),
(23, '2021_08_05_031124_create_tindakans_table', 10),
(24, '2021_08_05_031423_create_rincian_pembayarans_table', 10),
(25, '2021_10_05_095142_create_images_table', 11),
(26, '2021_10_11_140324_create_holidays_table', 12),
(27, '2021_10_11_140435_create_jadwals_table', 12),
(28, '2021_10_11_140609_create_rincian_komisi_table', 12),
(29, '2021_10_11_140720_create_setting_table', 12),
(30, '2021_10_11_140832_create_shifts_table', 12),
(31, '2021_12_06_163515_add_qty_to_harga_produk_cabangs_table', 12),
(32, '2021_12_06_164947_create_suppliers_table', 13),
(36, '2021_12_07_152729_create_purchases_table', 14),
(37, '2021_12_07_153425_create_in_outs_table', 14),
(38, '2021_12_10_104139_create_transfer_stoks_table', 15),
(42, '2021_12_10_104454_add_cabang_id_to_in_outs_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 3),
(2, 'App\\User', 9),
(3, 'App\\User', 2),
(4, 'App\\User', 4),
(5, 'App\\User', 6),
(6, 'App\\User', 5),
(7, 'App\\User', 8),
(8, 'App\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `odontogram_pasien`
--

CREATE TABLE `odontogram_pasien` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `p11c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p11t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p11b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p11l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p11r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p12c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p12t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p12b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p12l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p12r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p13c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p13t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p13b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p13l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p13r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p14c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p14t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p14b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p14l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p14r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p15c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p15t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p15b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p15l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p15r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p16c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p16t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p16b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p16l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p16r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p17c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p17t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p17b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p17l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p17r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p18c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p18t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p18b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p18l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p18r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p21c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p21t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p21b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p21l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p21r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p22c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p22t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p22b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p22l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p22r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p23c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p23t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p23b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p23l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p23r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p24c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p24t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p24b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p24l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p24r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p25c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p25t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p25b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p25l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p25r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p26c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p26t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p26b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p26l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p26r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p27c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p27t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p27b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p27l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p27r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p28c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p28t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p28b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p28l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p28r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p51c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p51t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p51b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p51l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p51r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p52c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p52t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p52b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p52l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p52r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p53c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p53t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p53b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p53l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p53r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p54c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p54t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p54b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p54l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p54r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p55c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p55t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p55b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p55l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p55r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p61c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p61t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p61b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p61l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p61r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p62c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p62t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p62b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p62l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p62r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p63c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p63t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p63b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p63l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p63r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p64c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p64t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p64b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p64l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p64r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p65c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p65t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p65b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p65l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p65r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p81c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p81t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p81b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p81l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p81r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p82c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p82t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p82b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p82l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p82r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p83c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p83t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p83b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p83l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p83r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p84c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p84t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p84b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p84l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p84r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p85c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p85t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p85b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p85l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p85r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p71c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p71t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p71b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p71l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p71r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p72c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p72t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p72b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p72l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p72r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p73c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p73t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p73b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p73l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p73r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p74c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p74t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p74b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p74l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p74r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p75c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p75t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p75b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p75l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p75r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p41c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p41t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p41b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p41l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p41r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p42c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p42t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p42b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p42l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p42r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p43c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p43t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p43b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p43l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p43r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p44c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p44t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p44b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p44l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p44r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p45c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p45t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p45b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p45l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p45r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p46c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p46t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p46b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p46l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p46r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p47c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p47t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p47b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p47l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p47r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p48c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p48t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p48b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p48l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p48r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p31c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p31t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p31b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p31l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p31r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p32c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p32t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p32b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p32l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p32r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p33c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p33t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p33b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p33l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p33r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p34c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p34t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p34b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p34l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p34r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p35c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p35t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p35b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p35l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p35r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p36c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p36t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p36b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p36l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p36r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p37c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p37t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p37b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p37l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p37r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p38c` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p38t` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p38b` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p38l` varchar(32) NOT NULL DEFAULT 'Ivory',
  `p38r` varchar(32) NOT NULL DEFAULT 'Ivory',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `odontogram_pasien`
--

INSERT INTO `odontogram_pasien` (`id`, `customer_id`, `p11c`, `p11t`, `p11b`, `p11l`, `p11r`, `p12c`, `p12t`, `p12b`, `p12l`, `p12r`, `p13c`, `p13t`, `p13b`, `p13l`, `p13r`, `p14c`, `p14t`, `p14b`, `p14l`, `p14r`, `p15c`, `p15t`, `p15b`, `p15l`, `p15r`, `p16c`, `p16t`, `p16b`, `p16l`, `p16r`, `p17c`, `p17t`, `p17b`, `p17l`, `p17r`, `p18c`, `p18t`, `p18b`, `p18l`, `p18r`, `p21c`, `p21t`, `p21b`, `p21l`, `p21r`, `p22c`, `p22t`, `p22b`, `p22l`, `p22r`, `p23c`, `p23t`, `p23b`, `p23l`, `p23r`, `p24c`, `p24t`, `p24b`, `p24l`, `p24r`, `p25c`, `p25t`, `p25b`, `p25l`, `p25r`, `p26c`, `p26t`, `p26b`, `p26l`, `p26r`, `p27c`, `p27t`, `p27b`, `p27l`, `p27r`, `p28c`, `p28t`, `p28b`, `p28l`, `p28r`, `p51c`, `p51t`, `p51b`, `p51l`, `p51r`, `p52c`, `p52t`, `p52b`, `p52l`, `p52r`, `p53c`, `p53t`, `p53b`, `p53l`, `p53r`, `p54c`, `p54t`, `p54b`, `p54l`, `p54r`, `p55c`, `p55t`, `p55b`, `p55l`, `p55r`, `p61c`, `p61t`, `p61b`, `p61l`, `p61r`, `p62c`, `p62t`, `p62b`, `p62l`, `p62r`, `p63c`, `p63t`, `p63b`, `p63l`, `p63r`, `p64c`, `p64t`, `p64b`, `p64l`, `p64r`, `p65c`, `p65t`, `p65b`, `p65l`, `p65r`, `p81c`, `p81t`, `p81b`, `p81l`, `p81r`, `p82c`, `p82t`, `p82b`, `p82l`, `p82r`, `p83c`, `p83t`, `p83b`, `p83l`, `p83r`, `p84c`, `p84t`, `p84b`, `p84l`, `p84r`, `p85c`, `p85t`, `p85b`, `p85l`, `p85r`, `p71c`, `p71t`, `p71b`, `p71l`, `p71r`, `p72c`, `p72t`, `p72b`, `p72l`, `p72r`, `p73c`, `p73t`, `p73b`, `p73l`, `p73r`, `p74c`, `p74t`, `p74b`, `p74l`, `p74r`, `p75c`, `p75t`, `p75b`, `p75l`, `p75r`, `p41c`, `p41t`, `p41b`, `p41l`, `p41r`, `p42c`, `p42t`, `p42b`, `p42l`, `p42r`, `p43c`, `p43t`, `p43b`, `p43l`, `p43r`, `p44c`, `p44t`, `p44b`, `p44l`, `p44r`, `p45c`, `p45t`, `p45b`, `p45l`, `p45r`, `p46c`, `p46t`, `p46b`, `p46l`, `p46r`, `p47c`, `p47t`, `p47b`, `p47l`, `p47r`, `p48c`, `p48t`, `p48b`, `p48l`, `p48r`, `p31c`, `p31t`, `p31b`, `p31l`, `p31r`, `p32c`, `p32t`, `p32b`, `p32l`, `p32r`, `p33c`, `p33t`, `p33b`, `p33l`, `p33r`, `p34c`, `p34t`, `p34b`, `p34l`, `p34r`, `p35c`, `p35t`, `p35b`, `p35l`, `p35r`, `p36c`, `p36t`, `p36b`, `p36l`, `p36r`, `p37c`, `p37t`, `p37b`, `p37l`, `p37r`, `p38c`, `p38t`, `p38b`, `p38l`, `p38r`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'DarkGrey', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', '2021-10-11 03:47:55', '2021-10-11 03:50:07'),
(2, 2, 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'LimeGreen', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', '2021-10-11 07:28:46', '2021-10-11 07:32:41'),
(3, 3, 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'ForestGreen', 'ForestGreen', 'ForestGreen', 'ForestGreen', 'ForestGreen', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', 'Ivory', '2021-10-11 08:53:34', '2021-10-11 08:58:59');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` int(11) NOT NULL,
  `nama_metode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `potongan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekening` int(20) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `cabang_id`, `nama_metode`, `potongan`, `rekening`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Debit Visa', '5', 2222232, 1, '2021-08-05 17:48:04', '2021-08-05 17:50:20'),
(2, 1, 'Bank BCA', '3', 2222235, 1, '2021-08-05 17:48:25', '2021-08-05 17:50:26'),
(3, 1, 'Cash', '0', 0, 1, '2021-08-05 17:48:35', '2021-10-04 09:16:53'),
(5, 2, 'Debit Visa', '5', 10108923, 1, '2021-10-04 09:20:10', '2021-10-04 09:20:10'),
(6, 2, 'Bank BCA', '3', 10108778, 1, '2021-10-04 09:20:31', '2021-10-04 09:20:31'),
(7, 2, 'Cash', '0', 0, 1, '2021-10-04 09:20:43', '2021-10-04 09:20:43'),
(8, 1, 'Debit Tebet', '5', 10108923, 1, '2021-10-08 10:29:24', '2021-10-08 10:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `guard_name`, `created_at`, `updated_at`) VALUES
(6, 'permission-access', 'Permission Access', 'web', '2021-07-16 20:00:20', '2021-07-16 20:00:20'),
(7, 'permission-create', 'Permission Create', 'web', '2021-07-16 20:00:24', '2021-07-16 20:00:24'),
(8, 'permission-edit', 'Permission Edit', 'web', '2021-07-16 20:00:28', '2021-07-16 20:00:28'),
(9, 'permission-delete', 'Permission Delete', 'web', '2021-07-16 20:00:35', '2021-07-16 20:00:35'),
(11, 'roles-edit', 'Roles Edit', 'web', '2021-07-16 20:00:45', '2021-07-16 20:00:45'),
(12, 'roles-create', 'Roles Create', 'web', '2021-07-16 20:00:48', '2021-07-16 20:00:48'),
(13, 'roles-delete', 'Roles Delete', 'web', '2021-07-16 20:00:52', '2021-07-16 20:00:52'),
(14, 'user-access', 'User Access', 'web', '2021-07-16 20:02:15', '2021-07-16 20:02:15'),
(15, 'user-create', 'User Create', 'web', '2021-07-16 20:02:20', '2021-07-16 20:02:20'),
(16, 'user-edit', 'User Edit', 'web', '2021-07-16 20:02:23', '2021-07-16 20:02:23'),
(17, 'user-delete', 'User Delete', 'web', '2021-07-16 20:02:27', '2021-07-16 20:02:27'),
(18, 'roles-access', 'Roles Access', 'web', '2021-07-16 20:02:45', '2021-07-16 20:02:45'),
(19, 'cabang-access', 'Cabang Access', 'web', '2021-07-16 20:04:13', '2021-07-16 20:04:13'),
(20, 'cabang-create', 'Cabang Create', 'web', '2021-07-16 20:04:17', '2021-07-16 20:04:17'),
(21, 'cabang-edit', 'Cabang Edit', 'web', '2021-07-16 20:04:21', '2021-07-16 20:04:21'),
(22, 'cabang-delete', 'Cabang Delete', 'web', '2021-07-16 20:04:25', '2021-07-16 20:04:25'),
(23, 'product-access', 'Product Access', 'web', '2021-07-16 20:04:32', '2021-07-16 20:04:32'),
(24, 'product-create', 'Product Create', 'web', '2021-07-16 20:04:37', '2021-07-16 20:04:37'),
(25, 'product-edit', 'Product Edit', 'web', '2021-07-16 20:04:41', '2021-07-16 20:04:41'),
(26, 'product-delete', 'Product Delete', 'web', '2021-07-16 20:04:45', '2021-07-16 20:04:45'),
(27, 'service-access', 'Service Access', 'web', '2021-07-16 20:04:48', '2021-07-16 20:04:48'),
(28, 'service-create', 'Service Create', 'web', '2021-07-16 20:04:50', '2021-07-16 20:04:50'),
(29, 'service-delete', 'Service Delete', 'web', '2021-07-16 20:04:54', '2021-07-16 20:04:54'),
(30, 'service-edit', 'Service Edit', 'web', '2021-07-16 20:04:57', '2021-07-16 20:04:57'),
(31, 'patient-access', 'Patient Access', 'web', '2021-07-16 20:19:07', '2021-07-16 20:19:07'),
(32, 'patient-create', 'Patient Create', 'web', '2021-07-16 20:19:10', '2021-07-16 20:19:10'),
(33, 'patient-edit', 'Patient Edit', 'web', '2021-07-16 20:19:14', '2021-07-16 20:19:14'),
(34, 'patient-delete', 'Patient Delete', 'web', '2021-07-16 20:19:17', '2021-07-16 20:19:17'),
(35, 'payment-access', 'Payment Access', 'web', '2021-07-28 07:27:35', '2021-07-28 07:27:35'),
(36, 'payment-create', 'Payment Create', 'web', '2021-07-28 07:27:43', '2021-07-28 07:27:43'),
(37, 'payment-edit', 'Payment Edit', 'web', '2021-07-28 07:27:49', '2021-07-28 07:27:49'),
(38, 'payment-delete', 'Payment Delete', 'web', '2021-07-28 07:27:55', '2021-07-28 07:27:55'),
(39, 'status-access', 'Status Access', 'web', '2021-07-28 07:38:58', '2021-07-28 07:38:58'),
(40, 'status-create', 'Status Create', 'web', '2021-07-28 07:39:05', '2021-07-28 07:39:05'),
(41, 'status-edit', 'Status Edit', 'web', '2021-07-28 07:39:09', '2021-07-28 07:39:09'),
(42, 'status-delete', 'Status Delete', 'web', '2021-07-28 07:39:14', '2021-07-28 07:39:14'),
(43, 'voucher-access', 'Voucher Access', 'web', '2021-07-28 07:46:11', '2021-07-28 07:46:11'),
(44, 'voucher-create', 'Voucher Create', 'web', '2021-07-28 07:46:16', '2021-07-28 07:46:16'),
(45, 'voucher-edit', 'Voucher Edit', 'web', '2021-07-28 07:46:20', '2021-07-28 07:46:20'),
(46, 'voucher-delete', 'Voucher Delete', 'web', '2021-07-28 07:46:29', '2021-07-28 07:46:29'),
(47, 'komisi-access', 'Komisi Access', 'web', '2021-07-28 07:58:59', '2021-07-28 07:58:59'),
(48, 'komisi-create', 'Komisi Create', 'web', '2021-07-28 07:59:05', '2021-07-28 07:59:05'),
(49, 'komisi-edit', 'Komisi Edit', 'web', '2021-07-28 07:59:10', '2021-07-28 07:59:10'),
(50, 'komisi-delete', 'Komisi Delete', 'web', '2021-07-28 07:59:16', '2021-07-28 07:59:16'),
(51, 'simbol-access', 'Simbol Access', 'web', '2021-07-28 08:27:23', '2021-07-28 08:27:23'),
(52, 'simbol-create', 'Simbol Create', 'web', '2021-07-28 08:27:31', '2021-07-28 08:27:31'),
(53, 'simbol-edit', 'Simbol Edit', 'web', '2021-07-28 08:27:39', '2021-07-28 08:27:39'),
(54, 'simbol-delete', 'Simbol Delete', 'web', '2021-07-28 08:27:46', '2021-07-28 08:27:46'),
(55, 'report-access', 'Report Access', 'web', '2021-08-12 17:01:14', '2021-08-12 17:01:14'),
(56, 'dokter-access', 'Dokter Access', 'web', '2021-08-22 03:01:57', '2021-08-22 03:01:57'),
(57, 'dokter-create', 'Dokter Create', 'web', '2021-08-22 03:02:03', '2021-08-22 03:02:03'),
(58, 'dokter-edit', 'Dokter Edit', 'web', '2021-08-22 03:02:07', '2021-08-22 03:02:07'),
(59, 'dokter-delete', 'Dokter Delete', 'web', '2021-08-22 03:02:14', '2021-08-22 03:02:14'),
(60, 'appointment-access', 'Appointment Access', 'web', '2021-08-25 07:06:14', '2021-08-25 07:06:14'),
(61, 'appointment-create', 'Appointment Create', 'web', '2021-08-25 07:06:23', '2021-08-25 07:06:23'),
(62, 'appointment-edit', 'Appointment Edit', 'web', '2021-08-25 07:06:29', '2021-08-25 07:06:29'),
(63, 'appointment-delete', 'Appointment Delete', 'web', '2021-08-25 07:06:39', '2021-08-25 07:06:39'),
(64, 'supplier-access', 'Supplier Access', 'web', '2021-12-07 03:16:07', '2021-12-07 03:16:07'),
(65, 'supplier-create', 'Supplier Create', 'web', '2021-12-07 03:16:14', '2021-12-07 03:16:14'),
(66, 'supplier-edit', 'Supplier Edit', 'web', '2021-12-07 03:16:23', '2021-12-07 03:16:23'),
(67, 'supplier-delete', 'Supplier Delete', 'web', '2021-12-07 03:16:30', '2021-12-07 03:16:30'),
(68, 'purchase-access', 'Purchase Access', 'web', '2021-12-07 08:37:38', '2021-12-07 08:37:38'),
(69, 'purchase-create', 'Purchase Create', 'web', '2021-12-07 08:37:50', '2021-12-07 08:37:50'),
(70, 'purchase-edit', 'Purchase Edit', 'web', '2021-12-07 08:37:57', '2021-12-07 08:37:57'),
(71, 'purchase-delete', 'Purchase Delete', 'web', '2021-12-07 08:38:06', '2021-12-07 08:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `barang_id`, `supplier_id`, `user_id`, `invoice`, `qty`, `harga_beli`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'INV20211213001', 10, 12000, 120000, '2021-12-13 08:55:00', NULL),
(2, 2, 1, 1, 'INV20211213001', 10, 10000, 100000, '2021-12-13 08:55:00', NULL),
(3, 1, 1, 1, 'IN889898', 1, 2500000, 2500000, '2021-12-31 04:13:00', NULL),
(4, 5, 1, 1, 'IN889898', 1, 2500000, 2500000, '2021-12-31 04:13:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `no_gigi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `simbol_id` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tindakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekam_medis`
--

INSERT INTO `rekam_medis` (`id`, `customer_id`, `user_id`, `tanggal`, `no_gigi`, `simbol_id`, `keterangan`, `tindakan`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2021-10-11', '24C', 1, 'Amalgam', 'Cabut', '2021-10-11 03:50:07', '2021-10-11 03:50:07'),
(2, 2, 3, '2021-10-11', '75C', 10, 'Anomali', 'Anomali', '2021-10-11 07:32:41', '2021-10-11 07:32:41'),
(3, 3, 9, '2021-10-11', '71ALL', 17, 'Komposite', 'Cabut', '2021-10-11 08:58:59', '2021-10-11 08:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `rincian_komisi`
--

CREATE TABLE `rincian_komisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nominal_komisi` bigint(20) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rincian_komisi`
--

INSERT INTO `rincian_komisi` (`id`, `booking_id`, `user_id`, `nominal_komisi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 8, 9, 30000, 1, '2022-01-13 05:31:50', '2022-01-13 05:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `rincian_pembayarans`
--

CREATE TABLE `rincian_pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `kasir_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pembayaran` timestamp NOT NULL DEFAULT current_timestamp(),
  `nominal` bigint(11) NOT NULL,
  `dibayar` int(20) NOT NULL,
  `kembali` int(11) NOT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `disc_vouc` int(11) DEFAULT NULL,
  `biaya_kartu` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rincian_pembayarans`
--

INSERT INTO `rincian_pembayarans` (`id`, `booking_id`, `kasir_id`, `payment_id`, `tanggal_pembayaran`, `nominal`, `dibayar`, `kembali`, `voucher_id`, `disc_vouc`, `biaya_kartu`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 3, '2021-10-11 03:54:00', 5300000, 5300000, 0, 1, 200000, 0, 1, '2021-10-11 03:55:08', '2021-10-11 03:55:08'),
(2, 4, 2, 3, '2021-10-11 07:34:00', 4750000, 4750000, 0, 1, 200000, 0, 1, '2021-10-11 07:35:21', '2021-10-11 07:35:21'),
(3, 5, 2, 2, '2021-10-11 09:01:00', 3500000, 3500000, 0, 1, 200000, 105000, 1, '2021-10-11 09:02:17', '2021-10-11 09:02:17'),
(4, 5, 2, 3, '2021-10-11 09:09:00', 1800000, 1800000, 0, 0, 0, 0, 1, '2021-10-11 09:09:46', '2021-10-11 09:09:46'),
(5, 8, 2, 3, '2022-01-13 05:29:00', 150000, 150000, 40000, 0, 0, 0, 1, '2022-01-13 05:31:50', '2022-01-13 05:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `key`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'web', '2021-07-16 19:56:23', '2021-07-16 19:56:23'),
(2, 'dokter', 'Dokter', 'web', '2021-07-21 18:26:17', '2021-07-21 18:26:17'),
(3, 'resepsionis', 'Resepsionis', 'web', '2021-08-01 18:38:02', '2021-08-01 18:38:02'),
(4, 'marketing', 'Marketing', 'web', '2021-08-14 01:52:46', '2021-08-14 01:52:46'),
(5, 'office-boy', 'Office Boy', 'web', '2021-08-14 01:54:47', '2021-08-14 01:54:47'),
(6, 'perawat', 'Perawat', 'web', '2021-08-14 01:55:06', '2021-08-14 01:55:06'),
(7, 'supervisor', 'Supervisor', 'web', '2021-08-25 07:07:13', '2021-08-25 07:07:13'),
(8, 'hrd', 'hrd', 'web', '2021-10-07 03:59:53', '2021-10-07 03:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(32, 4),
(33, 1),
(33, 4),
(33, 8),
(34, 4),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(60, 3),
(60, 7),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `cabang_id`, `nama_ruangan`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 1, 'Ruang 1', 1, '2021-07-21 18:03:49', '2021-07-21 18:03:49'),
(3, 1, 'Ruang 2', 1, '2021-07-21 18:03:54', '2021-07-21 18:03:54'),
(4, 2, 'Ruang 1', 1, '2021-09-02 07:55:41', '2021-09-02 07:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `web_name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'eClinic+', 'images/logo/y1cLeLVtRdyznKc.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `kode`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`) VALUES
(1, 'SF1', '09:00:00', '15:00:00', NULL, NULL),
(2, 'SF2', '15:00:00', '21:00:00', NULL, NULL),
(3, 'L', '00:00:00', '00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simbol_odontograms`
--

CREATE TABLE `simbol_odontograms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_simbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simbol_odontograms`
--

INSERT INTO `simbol_odontograms` (`id`, `nama_simbol`, `singkatan`, `warna`, `created_at`, `updated_at`) VALUES
(1, 'Amalgam', 'amf', 'DarkGrey', NULL, NULL),
(2, 'Komposite', 'cof', 'MediumBlue', NULL, NULL),
(3, 'pit dan fissure sealant', 'fis', 'AntiqueWhite', NULL, NULL),
(4, 'Nekrosis Pulpa', 'NP', 'DarkSlateGray', NULL, NULL),
(5, 'Perawatan Saluran Akar', 'rct', 'Aquamarine', NULL, NULL),
(6, 'gigi tidak ada, tidak diketahui ada atau tidak ada.', 'non', 'Indigo', NULL, NULL),
(7, 'Un-Erupted', 'UE', 'AliceBlue', NULL, NULL),
(8, 'Partial Eruption', 'PE', 'Orchid', NULL, NULL),
(9, 'Normal/ baik', 'sou', 'Ivory', NULL, NULL),
(10, 'Anomali ', 'A', 'LimeGreen', NULL, NULL),
(11, 'Karies Media', 'KM', 'Brown', NULL, NULL),
(12, 'Fractur', 'cfr', 'Teal', NULL, NULL),
(13, 'Karies Profunda', 'KP', 'Chocolate', NULL, NULL),
(14, 'Karies Superfisial', 'KS', 'BurlyWood', NULL, NULL),
(15, 'Metal Crown', 'fmc', 'Green', NULL, NULL),
(17, 'Crown Non Metal', 'cnm', 'ForestGreen', NULL, NULL),
(18, 'Normal', 'TAK', 'LightCyan', NULL, NULL),
(19, 'Mobility', 'M', 'Lime', NULL, NULL),
(20, 'Radix', 'rx', 'Yellow', NULL, NULL),
(21, 'Missing teeth', 'mis', 'Coral', NULL, NULL),
(22, 'Implant + Porcelain crown', 'ipx-poc', 'LightGreen', NULL, NULL),
(23, 'Bridge', 'Brg', 'OliveDrab', NULL, NULL),
(24, 'GTSL', 'gtsl', 'Fuchsia', NULL, NULL),
(25, 'plak dan kalkulus', 'calculus', 'Chartreuse', NULL, NULL),
(26, 'GTL', 'GTL', 'HotPink', NULL, NULL),
(27, 'Migrasi/ Version/Rotasi dibuat panahsesuai arah', 'mv', 'GoldenRod', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_pasiens`
--

CREATE TABLE `status_pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_pasiens`
--

INSERT INTO `status_pasiens` (`id`, `status`, `warna`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Belum Datang', 'red', 1, '2021-07-28 07:42:49', '2021-08-24 00:09:07'),
(2, 'Datang & Waiting', 'orange', 1, '2021-07-28 07:42:53', '2021-08-24 00:09:17'),
(3, 'Masuk Ruangan', 'blue', 1, '2021-07-28 07:42:58', '2021-08-24 00:09:25'),
(4, 'Selesai', 'green', 1, '2021-08-20 04:17:59', '2021-08-24 00:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'PT Kimia Farma', '0126736221', 'Jakata Pusat', '2021-12-13 08:54:47', '2021-12-13 08:54:47'),
(2, 'PT Sidomuncul', '0126736225', 'Jakarta Barat', '2021-12-13 08:55:39', '2021-12-13 08:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_simbol`
--

CREATE TABLE `tabel_simbol` (
  `id` int(11) NOT NULL,
  `namasimbol` varchar(128) NOT NULL,
  `singkatan` varchar(16) NOT NULL,
  `warna` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabel_simbol`
--

INSERT INTO `tabel_simbol` (`id`, `namasimbol`, `singkatan`, `warna`) VALUES
(1, 'Amalgam', 'amf', 'DarkGrey'),
(2, 'Komposite', 'cof', 'MediumBlue'),
(3, 'pit dan fissure sealant', 'fis', 'AntiqueWhite'),
(4, 'Nekrosis Pulpa', 'NP', 'DarkSlateGray'),
(5, 'Perawatan Saluran Akar', 'rct', 'Aquamarine'),
(6, 'gigi tidak ada, tidak diketahui ada atau tidak ada.', 'non', 'Indigo'),
(7, 'Un-Erupted', 'UE', 'AliceBlue'),
(8, 'Partial Eruption', 'PE', 'Orchid'),
(9, 'Normal/ baik', 'sou', 'Ivory'),
(10, 'Anomali ', 'A', 'LimeGreen'),
(11, 'Karies Media', 'KM', 'Brown'),
(12, 'Fractur', 'cfr', 'Teal'),
(13, 'Karies Profunda', 'KP', 'Chocolate'),
(14, 'Karies Superfisial', 'KS', 'BurlyWood'),
(15, 'Metal Crown', 'fmc', 'Green'),
(17, 'Crown Non Metal', 'cnm', 'ForestGreen'),
(18, 'Normal', 'TAK', 'LightCyan'),
(19, 'Mobility', 'M', 'Lime'),
(20, 'Radix', 'rx', 'Yellow'),
(21, 'Missing teeth', 'mis', 'Coral'),
(22, 'Implant + Porcelain crown', 'ipx-poc', 'LightGreen'),
(23, 'Bridge', 'Brg', 'OliveDrab'),
(24, 'GTSL', 'gtsl', 'Fuchsia'),
(25, 'plak dan kalkulus', 'calculus', 'Chartreuse'),
(26, 'GTL', 'GTL', 'HotPink'),
(27, 'Migrasi/ Version/Rotasi dibuat panahsesuai arah', 'mv', 'GoldenRod');

-- --------------------------------------------------------

--
-- Table structure for table `tindakans`
--

CREATE TABLE `tindakans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `tindakan_id` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tindakans`
--

INSERT INTO `tindakans` (`id`, `booking_id`, `tindakan_id`, `durasi`, `dokter_id`, `nominal`, `qty`, `status`, `waktu_selesai`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 20, 3, 1500000, 1, 1, '10:50:35', '2021-10-11 03:49:00', '2021-10-11 03:50:35'),
(2, 3, 3, 20, 9, 1500000, 1, 1, '10:53:55', '2021-10-11 03:49:00', '2021-10-11 03:53:55'),
(3, 3, 1, 0, 9, 2000000, 1, 1, '10:53:56', '2021-10-11 03:49:00', '2021-10-11 03:53:56'),
(4, 4, 3, 40, 3, 3000000, 2, 1, '14:33:03', '2021-10-11 07:31:22', '2021-10-11 07:33:03'),
(5, 4, 4, 20, 9, 1500000, 1, 1, '14:34:38', '2021-10-11 07:31:22', '2021-10-11 07:34:38'),
(6, 5, 3, 20, 9, 1500000, 1, 1, '16:00:02', '2021-10-11 08:56:14', '2021-10-11 09:00:02'),
(7, 5, 4, 20, 9, 1500000, 1, 1, '16:00:03', '2021-10-11 08:56:14', '2021-10-11 09:00:03'),
(8, 5, 1, 0, 3, 2000000, 1, 1, '16:08:14', '2021-10-11 08:56:14', '2021-10-11 09:08:14'),
(9, 6, 2, 0, 9, 100000, 1, 0, NULL, '2021-12-09 07:32:26', '2021-12-09 07:32:26'),
(10, 6, 5, 0, 9, 22000, 1, 0, NULL, '2021-12-09 07:32:26', '2021-12-09 07:32:26'),
(11, 7, 2, 0, 9, 100000, 1, 0, NULL, '2022-01-11 04:58:47', '2022-01-11 04:58:47'),
(12, 8, 2, 0, 9, 100000, 1, 0, NULL, '2022-01-12 05:11:26', '2022-01-12 05:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_stoks`
--

CREATE TABLE `transfer_stoks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asal_id` bigint(20) UNSIGNED NOT NULL,
  `tujuan_id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_stoks`
--

INSERT INTO `transfer_stoks` (`id`, `asal_id`, `tujuan_id`, `barang_id`, `user_id`, `invoice`, `qty`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 1, 1, 'TRX20211210001', 5, '2021-12-13 08:56:00', NULL),
(4, 1, 2, 2, 1, 'TRX20211210001', 5, '2021-12-13 08:56:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `cabang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mac_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` enum('pending','verified') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone_number`, `is_active`, `cabang_id`, `mac_address`, `is_verified`, `updated_by`, `address`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'admin@localhost.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '82114823280', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Palmerah, Jakarta Barat', 'images/users/awxrQY0xvKFsLUk.jpg', NULL, '2021-07-16 19:36:06', '2022-01-11 03:53:01'),
(2, 'Muhammad Iqbal', 'iqbal@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '82114823280', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Tasikmalaya', 'images/users/p6Sbi8S5ABZ0t94.jpg', NULL, '2021-07-21 18:27:00', '2022-01-11 04:37:24'),
(3, 'Dr. Yanti Jatnika', 'yanti@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '081236891733', 1, 1, '00-15-5D-84-89-BE', 'pending', NULL, 'Tasikmalaya', 'images/users/qY6Kng9i8pLYE8O.jpg', NULL, '2021-07-28 07:03:44', '2022-01-10 09:06:13'),
(4, 'Marketing', 'mrk.tebet@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '82114823280', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Jakarta', 'images/users/xabFCPG0OgGUoM2.jpg', NULL, '2021-08-14 01:57:36', '2022-01-11 04:48:28'),
(5, 'Noneng', 'prwt.tebet@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '82114823890', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Bali', 'images/users/FiSC4dmXyOvoxEd.png', NULL, '2021-08-14 01:58:25', '2022-01-11 04:36:58'),
(6, 'Joko', 'ob.tebet@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '6134618936291648', 1, 1, '', 'pending', NULL, 'Bandung', 'images/users/NZ4VhKz7p5jDOgw.jpg', NULL, '2021-08-14 01:59:03', '2021-08-14 01:59:03'),
(8, 'Ridwanul Hakim', 'ridwan@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '0883475683645', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Bandung', 'images/users/rTi7kOjdu33u9jp.jpg', NULL, '2021-08-25 07:08:23', '2022-01-11 04:40:31'),
(9, 'Dr. Handoko Mulyono', 'handoko@gmail.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '08976273264', 1, 1, '00-15-5D-84-89-BE', 'verified', NULL, 'Jakarta Barat', 'images/users/jfeLt5WQ2EoD0wL.jpg', NULL, '2021-09-01 06:50:39', '2022-01-11 04:32:57'),
(10, 'hrd', 'hrd@test.com', NULL, '$2y$10$cV3Dd0YKTxJklp7QQEX94eTzxRxvAA1INuLoaimUzzJCOWPYd3qni', NULL, '980879', 1, 1, '', 'pending', NULL, 'uhnjim', 'images/users/1DTA67QiTSv9EFv.jpg', NULL, '2021-10-07 04:00:59', '2021-10-07 04:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_voucher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `min_transaksi` bigint(20) DEFAULT NULL,
  `nominal` bigint(20) NOT NULL,
  `type` enum('Per','Min') COLLATE utf8mb4_unicode_ci NOT NULL,
  `persentase` int(11) NOT NULL,
  `kuota` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `kode_voucher`, `tgl_mulai`, `tgl_akhir`, `min_transaksi`, `nominal`, `type`, `persentase`, `kuota`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'COBAINGRATIS', '2021-10-01', '2021-10-31', 1000000, 200000, 'Min', 0, 4, 1, '2021-10-11 01:46:12', '2021-10-11 09:02:17'),
(2, 'hHsiY7MMSi', '2021-10-11', '2021-10-31', 1000000, 100000, 'Min', 0, 1, 1, '2021-10-11 04:42:52', '2021-10-11 04:42:52'),
(3, 'NiTuwsr41m', '2021-10-11', '2021-10-31', 1000000, 100000, 'Min', 0, 1, 1, '2021-10-11 04:42:52', '2021-10-11 04:42:52'),
(4, 'AszuD9pEYf', '2021-10-11', '2021-10-31', 1000000, 100000, 'Min', 0, 1, 1, '2021-10-11 04:42:52', '2021-10-11 04:42:52'),
(5, 'RY6ATHMLRY', '2021-10-11', '2021-10-20', 0, 0, 'Per', 20, 1, 1, '2021-10-11 04:45:11', '2021-10-11 04:45:11'),
(6, '247RZ6KBOC', '2021-10-11', '2021-10-20', 0, 0, 'Per', 20, 0, 0, '2021-10-11 04:45:11', '2021-10-11 04:45:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik_ktp` (`nik_ktp`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisiks`
--
ALTER TABLE `fisiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gigipasien`
--
ALTER TABLE `gigipasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpasien` (`customer_id`);

--
-- Indexes for table `harga_produk_cabangs`
--
ALTER TABLE `harga_produk_cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_outs`
--
ALTER TABLE `in_outs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ket_odontograms`
--
ALTER TABLE `ket_odontograms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komisis`
--
ALTER TABLE `komisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `odontogram_pasien`
--
ALTER TABLE `odontogram_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rincian_komisi`
--
ALTER TABLE `rincian_komisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rincian_pembayarans`
--
ALTER TABLE `rincian_pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simbol_odontograms`
--
ALTER TABLE `simbol_odontograms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_pasiens`
--
ALTER TABLE `status_pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_simbol`
--
ALTER TABLE `tabel_simbol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warna` (`warna`);

--
-- Indexes for table `tindakans`
--
ALTER TABLE `tindakans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_stoks`
--
ALTER TABLE `transfer_stoks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fisiks`
--
ALTER TABLE `fisiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gigipasien`
--
ALTER TABLE `gigipasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `harga_produk_cabangs`
--
ALTER TABLE `harga_produk_cabangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `in_outs`
--
ALTER TABLE `in_outs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `ket_odontograms`
--
ALTER TABLE `ket_odontograms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komisis`
--
ALTER TABLE `komisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `odontogram_pasien`
--
ALTER TABLE `odontogram_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rincian_komisi`
--
ALTER TABLE `rincian_komisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rincian_pembayarans`
--
ALTER TABLE `rincian_pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `simbol_odontograms`
--
ALTER TABLE `simbol_odontograms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `status_pasiens`
--
ALTER TABLE `status_pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_simbol`
--
ALTER TABLE `tabel_simbol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tindakans`
--
ALTER TABLE `tindakans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transfer_stoks`
--
ALTER TABLE `transfer_stoks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
