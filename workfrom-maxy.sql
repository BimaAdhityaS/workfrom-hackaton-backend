-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2023 pada 16.22
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workfrom-maxy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `amenity` varchar(255) NOT NULL,
  `locationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `range` varchar(255) NOT NULL,
  `meter` varchar(255) NOT NULL,
  `locationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `building_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `open_close` varchar(255) NOT NULL,
  `every` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `location_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `bookplan` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `contactby` varchar(255) NOT NULL,
  `locationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `planpricings`
--

CREATE TABLE `planpricings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `pax` varchar(255) NOT NULL,
  `locationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-DKOF4Q_otVCg0hz8fXKiiw3YuOrBLR-', '2023-10-15 04:00:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 04:00:42', '2023-10-14 04:00:42'),
('-I9sgF2R0OsxndiwLR0ma5dfFLovoenG', '2023-10-14 18:24:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:24:30', '2023-10-13 18:24:30'),
('-ndVu2kjhKghTxr85Ob-aoN3E7d6b2zI', '2023-10-14 17:22:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:22:01', '2023-10-13 17:22:01'),
('-Old_Ox2DT0dGq9usChbUM2bfAP92esy', '2023-10-14 17:02:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:02:56', '2023-10-13 17:02:56'),
('-T73a2rlSrqkaPtcph7pZ698hvaYBiI6', '2023-10-14 18:22:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:22:36', '2023-10-13 18:22:36'),
('-ThQZWU2jiMe34sJSDY17MWhhEaehOcR', '2023-10-14 16:42:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:42:45', '2023-10-13 16:42:45'),
('-ve6Ukqholb4_md82Rs6MS-rskYFkTVM', '2023-10-15 14:04:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:04:30', '2023-10-14 14:04:30'),
('0-2g0F88-HNSHdYcoXcHvPytEJ--QwjP', '2023-10-15 05:28:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:28:16', '2023-10-14 05:28:16'),
('0B14nffsJ7a4PMle6Yc2hUuOP2ZYN5k6', '2023-10-15 08:26:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:17', '2023-10-14 08:26:17'),
('0bZlq50nq5nk3sFsF9WTcgs1jHaCR-ob', '2023-10-14 17:09:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:09:42', '2023-10-13 17:09:42'),
('0kA8w_X9jGtoAIHDeSCmdhtSy87oWi7K', '2023-10-15 14:19:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:19:16', '2023-10-14 14:19:16'),
('0OlfqzxA0JaBidUpuFDSwJy14bEfwICZ', '2023-10-15 07:07:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 07:07:25', '2023-10-14 07:07:25'),
('0VoAn2vZhKUjEFIl6bk_CqPysxALKgPs', '2023-10-15 03:26:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:26:03', '2023-10-14 03:26:03'),
('15YrTbdkbuU9eE4T-W_H92KAGY3DBKMr', '2023-10-15 03:30:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:30:02', '2023-10-14 03:30:02'),
('17WmNeDRZpuqR5ncYTRYBgm3vt0LpdBq', '2023-10-15 03:21:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:21:48', '2023-10-14 03:21:48'),
('1Dbm3ksU1i-X-IBC2S6EGNnaDQAf8xoy', '2023-10-15 03:06:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:06:44', '2023-10-14 03:06:44'),
('1eLpIeqp3g_RSZDHhPGU-vUvxw9sIxiu', '2023-10-14 17:23:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:23:35', '2023-10-13 17:23:35'),
('1r37VTZIgLUNZ3BSyu2EesnoPlF30LX_', '2023-10-15 08:57:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:57:28', '2023-10-14 08:57:28'),
('1vFoWZRCWsRo-aRH5jFuE_UX7wvfOose', '2023-10-15 03:31:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:19', '2023-10-14 03:31:19'),
('24-R082VDpd_sET9qmA_LHEisgQvo_KN', '2023-10-15 03:14:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:35', '2023-10-14 03:14:35'),
('2tltySDnl52vhw4BS-hfpHHjoVggp5R9', '2023-10-15 14:20:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:20:02', '2023-10-14 14:20:02'),
('2X-hQdvTE3XQAFS7zy-rxYLZtIIXhrg7', '2023-10-14 19:33:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:33:42', '2023-10-13 19:33:42'),
('2zgHdRrwcMfdrwC1KS1fXvXYrn5HHBfs', '2023-10-15 14:16:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:04', '2023-10-14 14:16:04'),
('2zHnu3B-z21m4PpaOYlhL9I3ST68iuc8', '2023-10-14 17:33:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:33:36', '2023-10-13 17:33:36'),
('35fZ-aNK4F3rln3aJUmYcstCihougPct', '2023-10-15 05:29:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:29:51', '2023-10-14 05:29:51'),
('3ajYUgP1lX0TBXNi1Bu-yRSVxvaJd1CW', '2023-10-14 17:22:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:22:02', '2023-10-13 17:22:02'),
('3dujhy73w_xwkirbC2AO2R2-kmLpZcLs', '2023-10-15 03:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:19', '2023-10-14 03:28:19'),
('3dwyHZYP5Kwg5yGKyteK1tH9lk7mt8i3', '2023-10-15 03:28:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:41', '2023-10-14 03:28:41'),
('3eaP-0b7kx8a4qXipKekoGD4cC5sp99v', '2023-10-14 16:20:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:20:14', '2023-10-13 16:20:14'),
('3JD7QHJETTNvcdU7HAkON7uypm5w0qtd', '2023-10-14 17:15:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:15:12', '2023-10-13 17:15:12'),
('3rByJpKwQ3Xd9YviEYgNuJYgpLMe3Q-1', '2023-10-14 18:22:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:22:27', '2023-10-13 18:22:27'),
('3wtppjxI9ocIKZMK-wc_Gh5KcxPoYbcB', '2023-10-14 16:42:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:42:59', '2023-10-13 16:42:59'),
('44RpBmCB30GKA8PjzH9LmpHYoLzXW2SG', '2023-10-15 03:22:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:22:17', '2023-10-14 03:22:17'),
('4Q_HmkAoxb5kRAyXAQuYETuxW0pRXeX-', '2023-10-14 16:58:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:58:57', '2023-10-13 16:58:57'),
('58aau7oyPijmWmf9bps7YI2a_9KwrBrq', '2023-10-14 19:35:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:22', '2023-10-13 19:35:22'),
('5atRskUotI_CtDLbX81qXRUcTVoi95eF', '2023-10-15 14:04:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:04:13', '2023-10-14 14:04:13'),
('5BMWB8fkHTwdHz4_FG0SCAXf9Ye6fFTM', '2023-10-15 03:28:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:10', '2023-10-14 03:28:10'),
('5nx_cPG-3_0GUcCFsHUYQ34L43e3aDrn', '2023-10-14 19:15:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:15:43', '2023-10-13 19:15:43'),
('5ZJGHhupiwx4lphQi41-7oTp-Wz0gZCq', '2023-10-15 03:26:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:26:03', '2023-10-14 03:26:03'),
('60IYv4JjSqEACNUpHgd2f_Dvzu2guYcf', '2023-10-15 08:25:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:25:06', '2023-10-14 08:25:06'),
('68M1-V4BBhWNxClFxIMHUieFqAyM0aef', '2023-10-15 13:08:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:08:04', '2023-10-14 13:08:04'),
('6B7L4OjhAI2SL0aPx8KOFNtweoFBRr78', '2023-10-14 19:35:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:22', '2023-10-13 19:35:22'),
('6dpRZTF4bMEdggdtlDwhb2oyfiFudM13', '2023-10-15 14:15:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:15:52', '2023-10-14 14:15:52'),
('6f5uamF020TjJ6YQdtFwes9dJjXohbIu', '2023-10-14 16:43:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:43:12', '2023-10-13 16:43:12'),
('6GElxR7YKp9fG8pSKUyqPJzCEIlLtobg', '2023-10-15 10:39:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:39:48', '2023-10-14 10:39:48'),
('6jzfmE5nHYNEcSS9uZifU4mM9_Q2oFr5', '2023-10-15 03:21:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:21:58', '2023-10-14 03:21:58'),
('6unHIyyGkA4xXXXY-nZ_clk1w4OX3o3H', '2023-10-15 11:51:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 11:51:26', '2023-10-14 11:51:26'),
('78_KkWvxje7-CacUVRnEJ44yxzhq5OV-', '2023-10-15 09:56:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:56:02', '2023-10-14 09:56:02'),
('7c5vPHV9CCOQB8_Yf1BBV_GlKqverEWO', '2023-10-15 03:06:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:06:26', '2023-10-14 03:06:26'),
('7eycs3rZwwK0OFq42_fYYHOZmYN6OJ2h', '2023-10-14 18:24:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:24:46', '2023-10-13 18:24:46'),
('7HZq3ZWx1Cs3iqYz6inK0TMHk-4IMTmj', '2023-10-14 16:32:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:32:30', '2023-10-13 16:32:30'),
('7MZWBGzgFJ3kIzKvI_Fye5l_E24ddAby', '2023-10-14 18:14:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:14:12', '2023-10-13 18:14:12'),
('7_9xpoHB-m0_XDbQVEqv22KhKaXgMulV', '2023-10-15 14:20:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:20:02', '2023-10-14 14:20:02'),
('8ejK8FhvJ0eVvKUAA8quEf_OnW4CKHnc', '2023-10-15 14:16:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:49', '2023-10-14 14:16:49'),
('8Fg6R3MRD4Jf4CrJOPWkmUBMEyOwjMvj', '2023-10-15 14:09:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:09:54', '2023-10-14 14:09:54'),
('8H5RjvY9hS4eSzRvb6rfs5oN6u20JS2x', '2023-10-14 16:35:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:35:19', '2023-10-13 16:35:19'),
('8qblNbUWM5THwJYSfnkRSayFJ4hqx67P', '2023-10-14 19:31:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:31:58', '2023-10-13 19:31:58'),
('8rfANrm8YgY84syO_OM4HtAlHCZ41MWL', '2023-10-15 13:10:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:16', '2023-10-14 13:10:16'),
('8T78Z7YQkUflqUNugB3u81IvojbzNCgT', '2023-10-15 13:36:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:36:53', '2023-10-14 13:36:53'),
('9NZ3hznKmZggHarw0Ut8rIE1DiKzN_m6', '2023-10-15 14:12:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:12:32', '2023-10-14 14:12:32'),
('9sZ1NbPBfFW0REb-RoZnBOcfcIXrpS99', '2023-10-14 17:09:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:09:03', '2023-10-13 17:09:03'),
('9TArYKy2hHfQNM31w5KZxaX1Wv4imd_c', '2023-10-15 10:39:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:39:14', '2023-10-14 10:39:14'),
('9_XgfDhdaAXEwMZkPAyddtAPo4PQ6aD8', '2023-10-14 19:11:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:11:34', '2023-10-13 19:11:34'),
('A-ccg8o-BUvvwY_o5BVSZbO2S-38jzZC', '2023-10-15 11:45:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 11:45:28', '2023-10-14 11:45:28'),
('a8PSMQLvGzdcPu0AvZ4Lm3MBLMtU3I3Z', '2023-10-15 14:16:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:49', '2023-10-14 14:16:49'),
('Afhi1Pq-gS7ma33uQsGWbvR7zo_lSKPy', '2023-10-15 10:19:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:19:29', '2023-10-14 10:19:29'),
('aFkRsd-T7N0kTcus6lz-X78l_TASTAAr', '2023-10-14 18:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:15:17', '2023-10-13 18:15:17'),
('AiRsA4dxr97eg6X31VMmr4azS9LqD_a9', '2023-10-15 03:26:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:26:13', '2023-10-14 03:26:13'),
('aRc_ojd9egvOS7Yy2SaM0_lcSGSRwcnQ', '2023-10-15 08:24:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:24:58', '2023-10-14 08:24:58'),
('AsWkFMEaUFEgsC6CQTMOpg0Z5JnF0GtN', '2023-10-15 09:53:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:53:12', '2023-10-14 09:53:12'),
('ASYPebv7YF07L5RPGuxm67huZ8bMuK27', '2023-10-14 17:33:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:33:57', '2023-10-13 17:33:57'),
('awU294XTleSHk0-vAdBAXxsLOuyzKmIH', '2023-10-14 18:15:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:15:11', '2023-10-13 18:15:11'),
('aXvqwDQjMTlcd4-lJZDXO5Lvi4jfC3TF', '2023-10-15 03:23:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:23:44', '2023-10-14 03:23:44'),
('ayuQt0KiWYI_h59min_bz-4loeklP9dC', '2023-10-15 10:39:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:39:46', '2023-10-14 10:39:46'),
('az0722R0TgY9KZxVCD1YBI0shErHffqU', '2023-10-15 13:36:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:36:06', '2023-10-14 13:36:06'),
('AzdTj_MDuzBden2cRig31BmyTvm_gkfa', '2023-10-15 03:31:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:05', '2023-10-14 03:31:05'),
('aZwt1wpCKp8cNBJflRvxNXfpek3mFD3I', '2023-10-15 03:14:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:29', '2023-10-14 03:14:29'),
('b1Ut6OXP3CQ0ddz7eNasYMRDy_Gh_Ot9', '2023-10-15 09:55:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:55:48', '2023-10-14 09:55:48'),
('b2st_8YmEfO24FgcE4VQYm-XD_S7xXxD', '2023-10-14 17:16:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:16:30', '2023-10-13 17:16:30'),
('B3-jPQ89Duo4psDpWSIWZZ_MACbnmyQf', '2023-10-15 08:54:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:54:59', '2023-10-14 08:54:59'),
('B7T_u_8HtqStvQgWVZdRsD5BiRVkVXzE', '2023-10-15 03:21:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:21:48', '2023-10-14 03:21:48'),
('BDFqPPiNn2fyX5apIgUs4K9HqZmYDJo2', '2023-10-15 14:18:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:18:55', '2023-10-14 14:18:55'),
('bec--UwzxGQ6zYZn2WEFqQ2cONM1ta-s', '2023-10-14 18:36:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:36:52', '2023-10-13 18:36:52'),
('BKRV6b4Yu4jqmm8ruWTxdOCj8xwETHR7', '2023-10-15 14:12:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:12:17', '2023-10-14 14:12:17'),
('BOvQrjwP6HChA7o3trA4ODCCsmIvBRzp', '2023-10-15 14:12:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:12:05', '2023-10-14 14:12:05'),
('Bq9UsOoK6b5bPeTIGQECI6J4C0NYFjch', '2023-10-14 19:17:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:17:20', '2023-10-13 19:17:20'),
('bRrxSX1BzpjQNf8W0C-kKvSl7O51FBif', '2023-10-15 09:02:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:02:01', '2023-10-14 09:02:01'),
('bSzSOCMV2dy4nGuSUVElp3ku4sW75Ra6', '2023-10-15 11:51:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 11:51:20', '2023-10-14 11:51:20'),
('cB1WOP2RPuEXm6WvhVo7InDJ5K6cpCJi', '2023-10-15 08:24:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:24:55', '2023-10-14 08:24:55'),
('ceHABnesGLAx_7zm3vz5xqdOVNg3eapQ', '2023-10-14 16:35:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:35:28', '2023-10-13 16:35:28'),
('ceTR6CODyzIyjofstXTpMZZWRlpUIRkr', '2023-10-15 13:37:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:37:10', '2023-10-14 13:37:10'),
('cojHai8JqnhQrSbkCZ3CDM3sAl3lJkVy', '2023-10-15 02:54:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:54:49', '2023-10-14 02:54:49'),
('CRno5Ok2S8eSe387zbPEs8aL_1zq0sY_', '2023-10-14 16:17:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:17:03', '2023-10-13 16:17:03'),
('CSC4NXr1NhB8mV0n_TE3AIQeO45kpaTB', '2023-10-15 09:53:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:53:23', '2023-10-14 09:53:23'),
('CSltX7NI5m8nvfdVFZ0YBgiWbyA63MlD', '2023-10-14 18:12:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:12:29', '2023-10-13 18:12:29'),
('cTjTQils4oiTZNUtT5g2PXpAUCjFUQPM', '2023-10-14 16:32:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:32:57', '2023-10-13 16:32:57'),
('dLrX5pxvtrW9fLm6usFEHaWzZS-zwP9U', '2023-10-14 16:26:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:26:04', '2023-10-13 16:26:04'),
('DMNzlNWFl5GeQw9Gzi8f5Ghsop-4TD4G', '2023-10-14 16:35:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:35:38', '2023-10-13 16:35:38'),
('dPUT0A41Kp-i61pEUVSG3YkdoWak9Rr5', '2023-10-15 08:56:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:56:08', '2023-10-14 08:56:08'),
('DU-Oa0TYP0X48yjKCI48TTU_I_SGS1DS', '2023-10-15 05:28:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:28:39', '2023-10-14 05:28:39'),
('dYBCpkPVYm_FUHVvKLXyofQjztTiSgVY', '2023-10-15 03:31:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:05', '2023-10-14 03:31:05'),
('dYTYTFowmAVKgQQYOgkrZYuZpPyaswnj', '2023-10-14 17:25:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:25:42', '2023-10-13 17:25:42'),
('e3Jkzdtjd_cdK4LZqeZI4pXa5cdvtc77', '2023-10-15 10:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:00:06', '2023-10-14 10:00:06'),
('Ektai4tRjnQuLm5mOgNbfDS5BM_wIZ4I', '2023-10-15 14:04:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:04:15', '2023-10-14 14:04:15'),
('ELFWjxtJ-VWEQk1r8Ua5c5edWLCqMvLd', '2023-10-14 19:35:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:47', '2023-10-13 19:35:47'),
('Emq2iZbhbdmS8RR0HmzWL9tlFVtTGyRa', '2023-10-14 17:25:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:25:48', '2023-10-13 17:25:48'),
('EPL_gEtUTR7IaDdCRovtW_vf7w-x_F68', '2023-10-14 17:09:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:09:33', '2023-10-13 17:09:33'),
('ETFWm91sOhcFepjju5xbbqMh_FEuFFRl', '2023-10-15 13:28:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:28:36', '2023-10-14 13:28:36'),
('ETikF8IGbHqREMV4JMqNhhEsxbsYfJlB', '2023-10-15 03:31:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:16', '2023-10-14 03:31:16'),
('eTsZ3Bs4CuoSJ9Bb8oYAMzl8PnXjpVnH', '2023-10-15 03:27:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:27:56', '2023-10-14 03:27:56'),
('eVffwfjYRISAHtmFbPnqbDiFPGTx8HIk', '2023-10-15 13:39:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:39:37', '2023-10-14 13:39:37'),
('f028yx6M6X0tFj6jBpvuU3WenRobVp_h', '2023-10-14 18:23:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:23:07', '2023-10-13 18:23:07'),
('f6uPcIJb1eiFy2rQrhBheb8AOkUq0mSE', '2023-10-15 08:51:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:51:28', '2023-10-14 08:51:28'),
('FIg-ASEYQpNCeBKsgVgo7IK2Zb5oQ8PR', '2023-10-14 17:34:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:34:22', '2023-10-13 17:34:22'),
('fjs2USm7tp3Mr2DtF3VF2taAk3sS_9rC', '2023-10-14 19:34:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:34:38', '2023-10-13 19:34:38'),
('fLOJT0n1KDuaiCmB44wbWcnlfRQsk5T5', '2023-10-15 03:14:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:48', '2023-10-14 03:14:48'),
('FO0V74TpjXwnOXWB6s9vwDkq2A-qQ8P-', '2023-10-15 06:58:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:58:57', '2023-10-14 06:58:57'),
('fRhWpnZFIjoSWEZDh0_pMEUKPoUIKYEe', '2023-10-15 13:28:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:28:20', '2023-10-14 13:28:20'),
('fSZ7--f27e15THEdhABFi95Jioq8pw7y', '2023-10-15 10:18:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:18:55', '2023-10-14 10:18:55'),
('FUBpPxP5I2I2M01M63m5XbwgCm8OKUMo', '2023-10-15 03:22:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:22:25', '2023-10-14 03:22:25'),
('fUc-HPWO_UYightojuCrBDLzu1OLmt3W', '2023-10-15 13:39:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:39:37', '2023-10-14 13:39:37'),
('G1UrPFEQF6eSRiMcuiSa4KjDDDyxX56M', '2023-10-15 09:01:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:07', '2023-10-14 09:01:07'),
('G4aUo7u2eGUTZxfaEy_8vngCWdoPmyt6', '2023-10-15 02:55:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:55:15', '2023-10-14 02:55:15'),
('GAs9ELSrNi6fQRZFiylDanprV8DdOpPm', '2023-10-15 08:26:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:03', '2023-10-14 08:26:03'),
('gCQLY5KKmEBEHgtS49YoQckVmpcFplUP', '2023-10-15 03:07:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:07:00', '2023-10-14 03:07:00'),
('gDtFtUzCJZUIqS-zvnhyDhLumbX8lxPr', '2023-10-15 08:25:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:25:49', '2023-10-14 08:25:49'),
('GeBXNsZCDGosH5FBYT0bIkGOOAOxz1FW', '2023-10-15 08:26:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:18', '2023-10-14 08:26:18'),
('gMCq2bx3h2cMSkEUNHvbtaUs8lCVDffi', '2023-10-15 14:08:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:08:11', '2023-10-14 14:08:11'),
('gnxYcpvhIKs8xr2IWWbbAtY5ztad3oIM', '2023-10-15 03:31:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:19', '2023-10-14 03:31:19'),
('gPJhGvoE8N-E22Wov0Xr6fVLnUUvwSLV', '2023-10-14 18:25:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:25:17', '2023-10-13 18:25:17'),
('Gq4XNK0Nurncwo-ZP2fljsNc9Os3N5wu', '2023-10-14 17:21:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:21:42', '2023-10-13 17:21:42'),
('GQDI6VmxPV2sTjyDQEWvbAMQhQOGTTAl', '2023-10-15 09:01:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:20', '2023-10-14 09:01:20'),
('GqtMfCPbpawHSyo0cE6TWVs5qkiWOfyN', '2023-10-15 13:10:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:54', '2023-10-14 13:10:54'),
('gS66JA4HjAXe7YeGWh1NEzVMmLllSweb', '2023-10-14 16:39:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:39:02', '2023-10-13 16:39:02'),
('GWul2reVx4wQCH5BeL00lnmfB3xcX94L', '2023-10-15 13:37:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:37:23', '2023-10-14 13:37:23'),
('GXMnbvKbuFyUFwLYB16_9iz2rrS0p0_d', '2023-10-15 14:11:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:11:17', '2023-10-14 14:11:17'),
('h0p8e8QIFjhYzyXXmr8NgkideuALyoBa', '2023-10-15 14:15:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:15:19', '2023-10-14 14:15:19'),
('h2keCJwtyY_ELlTFXqZ--mb7LyWreJYg', '2023-10-15 08:53:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:53:35', '2023-10-14 08:53:35'),
('hAvTKJrMKAARmRx5lkfRz1LLMq-UkDVK', '2023-10-14 18:24:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:24:32', '2023-10-13 18:24:32'),
('HbvghV9SHzZ27Yzh7nO_RhVDgYawZI4D', '2023-10-14 18:21:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:21:15', '2023-10-13 18:21:15'),
('hg81NsOLm1AN_hY9--EDnlPxKZOVWrWk', '2023-10-15 14:16:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:23', '2023-10-14 14:16:23'),
('hGc3Dd9HioVyGKMiftEz7xSdkJBxRgWq', '2023-10-15 13:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:36:59', '2023-10-14 13:36:59'),
('HgqsTRIo6thtasjs57_5qxYkpe4igDRk', '2023-10-15 14:16:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:00', '2023-10-14 14:16:00'),
('HhJj7BbB9LEHO6t3YTR5RmP6BQOrJwbc', '2023-10-15 14:13:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:13:27', '2023-10-14 14:13:27'),
('hKzmudRlP5TKTUElAi_yMiYst7Hylic5', '2023-10-14 18:14:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:14:08', '2023-10-13 18:14:08'),
('hNjXveY6uAArx7qerAc2pSxHZ_KDzkE9', '2023-10-14 17:11:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:11:46', '2023-10-13 17:11:46'),
('HpZ3JO8zAO2eVromjDEhDq2VlvfNBwhw', '2023-10-14 19:34:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:34:38', '2023-10-13 19:34:38'),
('hr8lZkf8EZ6ifryk-lq4drfjXylNHBfc', '2023-10-15 14:12:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:12:35', '2023-10-14 14:12:35'),
('HRyCToOknh2Y7fwzJTdPqGaTZtqX4fo7', '2023-10-14 16:42:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:42:54', '2023-10-13 16:42:54'),
('Hs4Ap7gTgl8HhDtA-tDwytvV7a8FeGHx', '2023-10-15 14:14:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:14:44', '2023-10-14 14:14:44'),
('HuYh5QoXhupyRazrhVnL-gmw8hvyQLiF', '2023-10-15 07:08:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 07:08:46', '2023-10-14 07:08:46'),
('HVnYT3jg39zuVoavGxhS2nOC8v6rDkRV', '2023-10-15 14:11:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:11:57', '2023-10-14 14:11:57'),
('Hyyt5h6gKInnFar7ZGahQrySlqtdMYIk', '2023-10-15 14:19:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:19:52', '2023-10-14 14:19:52'),
('I5xmJIhMzYz5qIkZwWANf9DEYD-8eKfz', '2023-10-14 17:07:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:07:43', '2023-10-13 17:07:43'),
('IA8LFMRHc0hggEtVFDLe0OG4jC9-MGe-', '2023-10-15 03:27:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:27:56', '2023-10-14 03:27:56'),
('IH0WVfX_ghtmBBCtQKopo6xse8sqsOxE', '2023-10-14 16:32:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:32:39', '2023-10-13 16:32:39'),
('iIv6q8iUx0YyYiTNjf1wwdtwcmX8yg3_', '2023-10-14 16:35:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:35:49', '2023-10-13 16:35:49'),
('ijiC_0BesxnuO6n6_Uz0YvMbc3Psu2dP', '2023-10-14 17:26:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:26:22', '2023-10-13 17:26:22'),
('ijOWZsVKSnvWMGeYBjL7bAfZX6CefYyq', '2023-10-15 09:01:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:28', '2023-10-14 09:01:28'),
('inPTH8XDEy6AsvFz4DyAZp1F_kkpwVwi', '2023-10-15 14:03:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:03:37', '2023-10-14 14:03:37'),
('iRal3ctrvPobtSK8J_eir4hpwfKISojk', '2023-10-15 08:49:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:49:18', '2023-10-14 08:49:18'),
('iuOTR9wOnpqo0vpleVFUot6Peyox9tf0', '2023-10-15 10:40:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:40:11', '2023-10-14 10:40:11'),
('i_PiFjrv4LsaFsxG17bmU1mK5IHkvNjH', '2023-10-15 13:37:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:37:10', '2023-10-14 13:37:10'),
('J2FvMpYH2yRCGZMzIUxN3g2w4EPgMq95', '2023-10-14 18:23:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:23:15', '2023-10-13 18:23:15'),
('JmrXXQ3IFOjyTmVfKhm-M2J2e7IEIMP4', '2023-10-15 13:42:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:42:14', '2023-10-14 13:42:14'),
('JRNG3eIkYpRqsBmKWcHnJdr9PasMwx10', '2023-10-15 14:19:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:19:31', '2023-10-14 14:19:31'),
('jTyC6bHY-DdFKNjUuVP_zQopobLLk19d', '2023-10-14 16:21:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:21:46', '2023-10-13 16:21:46'),
('K5X26o44517INNXzngJ1yb8TtuR42FHk', '2023-10-15 03:31:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:42', '2023-10-14 03:31:42'),
('k91wuzdlSbMNdQWZS9KB2Z6MC8HaGqi8', '2023-10-15 10:01:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:01:18', '2023-10-14 10:01:18'),
('k9HXtZsh2OJveCQk45a_Csn3SdYqrUAT', '2023-10-15 08:51:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:51:03', '2023-10-14 08:51:03'),
('KA_deVorNCtbYOYhwp40kluPf9T9FJ-A', '2023-10-15 08:26:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:13', '2023-10-14 08:26:13'),
('kC9yqNHIAh_N7maa-KfVcnSmZe3-jJZz', '2023-10-14 19:34:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:34:38', '2023-10-13 19:34:38'),
('kEhak4ExBEib85_jGjnpK-ydzodA2Q0z', '2023-10-15 08:08:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:08:21', '2023-10-14 08:08:21'),
('KH8mpBkrdNL8REuE-kZlLiTAJnsEL4j_', '2023-10-14 19:32:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:32:19', '2023-10-13 19:32:19'),
('KrDVtxwKMy038QkUcHGGMW9TsBwRboxS', '2023-10-15 03:59:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:59:58', '2023-10-14 03:59:58'),
('LbbUbMyXOjRleC9ITBEBKKyyFS1zh3gU', '2023-10-15 13:39:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:39:32', '2023-10-14 13:39:32'),
('LBo00vCGaKOdPIjo2mlBX-yRXHAKOk4o', '2023-10-15 06:51:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:51:34', '2023-10-14 06:51:34'),
('ldF-74MiHoDVauxFnBhdTDwy6EJb39Vi', '2023-10-14 19:33:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:33:22', '2023-10-13 19:33:22'),
('lNi9qLWpWNqwB-kWLd_LA1KDGN8J9r-v', '2023-10-15 08:56:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:56:53', '2023-10-14 08:56:53'),
('lnwsp9toHhmFPv1aSKhuc2LgIyKyLnCK', '2023-10-15 03:05:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:05:22', '2023-10-14 03:05:22'),
('lQLxCrQubBXQd9G6lBJpac1PuSgHE5QW', '2023-10-15 03:03:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:03:12', '2023-10-14 03:03:12'),
('lVfRiwkDmaCVrWWSJY_IWzD-uwDfp3Yk', '2023-10-15 13:39:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:39:45', '2023-10-14 13:39:45'),
('LvGqW8UTXrAPBEft4kPikdyBJcaZq5oC', '2023-10-15 05:28:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:28:50', '2023-10-14 05:28:50'),
('lY3s7yDob_yL74Rb-9YX5LcXttPR-zEA', '2023-10-15 04:50:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 04:50:15', '2023-10-14 04:50:15'),
('mE4wngawWcimPr60Iabe7FddvkFrWxkj', '2023-10-15 04:51:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 04:51:44', '2023-10-14 04:51:44'),
('mjHtuHJwd8jpeqIwtCOpym3pO2i4ZZvV', '2023-10-15 08:53:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:53:18', '2023-10-14 08:53:18'),
('mkSETrGot1jQ_i6Vv1cXCwFxpKhihy43', '2023-10-15 14:13:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:13:18', '2023-10-14 14:13:18'),
('MO8_wLNGndgalGK3qvS5ilQp2iF7wxpI', '2023-10-15 14:03:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:03:46', '2023-10-14 14:03:46'),
('mueqZ17-Y69alrwlwAiplNcVWWFsmqo4', '2023-10-14 19:33:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:33:58', '2023-10-13 19:33:58'),
('MwI0nSqITJD5KVTJZsSfCqW_HzeFvxQj', '2023-10-14 19:33:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:33:41', '2023-10-13 19:33:41'),
('MX5tPm6GzN1NfhonzEKRZsfCHIMXcHG9', '2023-10-14 18:12:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:12:15', '2023-10-13 18:12:15'),
('MyoOXNHyffgUrmMEr6H7qi5j_zngDc1_', '2023-10-15 10:39:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:39:04', '2023-10-14 10:39:04'),
('N5RZRDQN2O21YKsjt4EuocID5WU0HG8I', '2023-10-15 08:58:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:58:36', '2023-10-14 08:58:36'),
('n7_kLr361hHVf0jsYb0xJqqAkoPS3NKZ', '2023-10-15 05:29:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:29:42', '2023-10-14 05:29:42'),
('ncSg23x_Naaf1dJxtRfSJFY_PszgO37z', '2023-10-14 19:35:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:00', '2023-10-13 19:35:00'),
('nFxQq_rDMeCtVvP02LILlpvoM77aKVem', '2023-10-14 19:35:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:47', '2023-10-13 19:35:47'),
('nHANZcmb08z1jitnGv0kM6i_06JFUJaY', '2023-10-15 08:59:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:59:14', '2023-10-14 08:59:14'),
('nPpChTTq_2xAiV-n8ojh7I5hi2CESSLR', '2023-10-15 09:01:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:06', '2023-10-14 09:01:06'),
('NZ_HLF_SKERh6gSxhLDxnwDmneV8YbnR', '2023-10-14 18:24:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:24:41', '2023-10-13 18:24:41'),
('o1BGlTWeL5rk6Ona7pxAQ3d1xV0ocgyh', '2023-10-15 05:28:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:28:39', '2023-10-14 05:28:39'),
('O3jU0k8ZEKl4K_H4gPLLFq-H1RnRZsI3', '2023-10-14 19:11:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:11:10', '2023-10-13 19:11:10'),
('o921SWrsy7vPF4p-0xVtPdIm_-1Wi-Uj', '2023-10-15 13:10:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:53', '2023-10-14 13:10:53'),
('o9y1KZXyzKtco58TYnVaY-_0buV6xIYg', '2023-10-15 14:04:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:04:26', '2023-10-14 14:04:26'),
('ocRnzGOu1S_37Aacyx_e9NgrQ2O-6qdN', '2023-10-14 19:30:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:30:52', '2023-10-13 19:30:52'),
('OEItM5MlwKeTZ1HfxajtjSRsKPO1toXO', '2023-10-14 19:11:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:11:46', '2023-10-13 19:11:46'),
('OPNnja23ox9JgPs85_wrF0IbpvQIicEK', '2023-10-15 14:14:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:14:39', '2023-10-14 14:14:39'),
('OQ4HxvW-ksG5AD2klGp1DtlUPrw3REhs', '2023-10-15 09:01:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:14', '2023-10-14 09:01:14'),
('oVm2JoZz8AG1rMo07aWhKIXeIIkuPFUG', '2023-10-15 09:55:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:55:48', '2023-10-14 09:55:48'),
('p2y1ZeJQYMDxJxVQNcMHYz5C987tdli6', '2023-10-14 17:12:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:12:02', '2023-10-13 17:12:02'),
('P5EhNk--thcgi69DkFDwZXuKaukJIoq2', '2023-10-15 02:48:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:48:14', '2023-10-14 02:48:14'),
('P5UtiE3Hl-sO1hI7bjtdqxQAJPbpnWp0', '2023-10-14 19:35:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:35', '2023-10-13 19:35:35'),
('PdZE73j6kI0mInjC4IVKEBuqYvBusDIU', '2023-10-15 03:31:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:52', '2023-10-14 03:31:52'),
('pfvWfgcZ2qmwPd7xUiBvBXRorSieQ24V', '2023-10-15 08:26:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:54', '2023-10-14 08:26:54'),
('PhBWJy2t9PaN9MXGMJMyX7kbhjZXEEtk', '2023-10-15 10:36:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:36:19', '2023-10-14 10:36:19'),
('PMp-aNZlFdlpq7ilcI7PvVAykUJdmFBM', '2023-10-15 13:28:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:28:54', '2023-10-14 13:28:54'),
('pNxDqFFAntas0f_TngSK10lEuu-hWNtE', '2023-10-14 17:26:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:26:42', '2023-10-13 17:26:42'),
('pOF-PWsEeNyqa6vxImEWy1iGeUtQSxAA', '2023-10-14 17:08:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:08:17', '2023-10-13 17:08:17'),
('PPrtSiUDYaZ_Lx2RrrgWaTcboOPJE3Y7', '2023-10-15 13:55:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:55:49', '2023-10-14 13:55:49'),
('pQmXuMVkio2iEramiUuFRiIO5mB2ETOM', '2023-10-15 11:51:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 11:51:55', '2023-10-14 11:51:55'),
('PrjD_PgeRR1rUdZxv4kYOFb9IjoPyTIV', '2023-10-14 18:25:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:25:22', '2023-10-13 18:25:22'),
('pyubvHgiacWF76RXwzBVZ5zPCC8txF0i', '2023-10-14 19:35:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:22', '2023-10-13 19:35:22'),
('qej_XJDk5H34ieaobJ1FW_FIHg8lrpBo', '2023-10-15 13:10:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:55', '2023-10-14 13:10:55'),
('qfzvpXrsSl_ClWNSb_NSrDVvCrIKS3gC', '2023-10-14 19:09:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:09:46', '2023-10-13 19:09:46'),
('qjz6_oL2sfICRnH0vvdA5En5OCpbYITz', '2023-10-14 17:14:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:14:14', '2023-10-13 17:14:14'),
('Ql6srLGxE3kW83dp1FUswU7oU7oMlEyW', '2023-10-15 08:26:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:26:48', '2023-10-14 08:26:48'),
('qoCogA5_1B_o9kobA4THPd99t_aK6VVi', '2023-10-15 14:16:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:52', '2023-10-14 14:16:52'),
('QP5rU-u-C-OQdzQz5Vd2L14aQ_akGBDW', '2023-10-15 14:08:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:08:48', '2023-10-14 14:08:48'),
('qqctj2XYuhrXVwgqVPQuvrh-EvFGlUQi', '2023-10-14 17:35:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:35:15', '2023-10-13 17:35:15'),
('QSNH0QXGxAZ0Duy_wRfghAbxQelWaOOj', '2023-10-15 03:22:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:22:17', '2023-10-14 03:22:17'),
('qtJ0mZfq_zAWXt44LuTHVQX2Svo7K7nL', '2023-10-14 17:25:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:25:13', '2023-10-13 17:25:13'),
('quRvuAnFA-HCRcoo3Vu6oc0H4lIKjRBA', '2023-10-15 02:54:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:54:59', '2023-10-14 02:54:59'),
('QUWYRvH-WmFKH0RPa7v2uwdUUH4KvH3p', '2023-10-15 04:41:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"161b5234-aa8e-441b-a49c-84e8b0b258e7\"}', '2023-10-13 18:32:24', '2023-10-14 04:41:21'),
('QygIOsNowLRUKN0yxso0A3UFpsNGfqBj', '2023-10-14 19:15:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:15:43', '2023-10-13 19:15:43');
INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('QZOPy75j6dBQkiD8kg_AuYiEqLytexCd', '2023-10-15 13:10:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:46', '2023-10-14 13:10:46'),
('QZT9JsdCTOg6tBpsAXJKzy_nwjQkRRkP', '2023-10-15 03:26:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:26:30', '2023-10-14 03:26:30'),
('r-7BbhWt8kg6PZEsXFJWxDzfgjCcnJCM', '2023-10-14 18:36:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:36:52', '2023-10-13 18:36:52'),
('r7Y5tpQQpSdEU88gWPzTEu6Cdvr4Vpm3', '2023-10-15 02:48:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:48:54', '2023-10-14 02:48:54'),
('rAkti0AY9XVc2fsmcKTo4SWjf2pi5zON', '2023-10-14 19:35:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:47', '2023-10-13 19:35:47'),
('RcMbVKdXvqB0uqx8J1zzAn5ZR3r_um2S', '2023-10-15 06:56:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:56:06', '2023-10-14 06:56:06'),
('rCZV8SxWXYlnBjneGI0-I20MbXYAc3kA', '2023-10-15 10:28:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:28:32', '2023-10-14 10:28:32'),
('REh7morW4lQzabzv-VQm_EbZy3d95mpM', '2023-10-14 16:24:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:24:56', '2023-10-13 16:24:56'),
('rkut-ZvGQ74TC8O3L5DI_kcLDLN4iFOb', '2023-10-14 19:35:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:40', '2023-10-13 19:35:40'),
('rPKxWXnrxylIRm-lSuOIo1fwYnp5jJ0f', '2023-10-15 09:01:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:16', '2023-10-14 09:01:16'),
('SBeIiXnBI6eZx4surnaF7WwOnG_i_xyg', '2023-10-15 10:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:00:06', '2023-10-14 10:00:06'),
('Sd0YCEaJGgsunT_8v8deNe2QcPwa7u2f', '2023-10-14 19:31:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:31:56', '2023-10-13 19:31:56'),
('SEOnCF33hY2KvCUcMCD8FgJApRQlJeHb', '2023-10-15 03:59:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:59:49', '2023-10-14 03:59:49'),
('sgM4VN2i8NsJ5X9hN1xRHeVbao7fGa4o', '2023-10-14 19:32:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:32:33', '2023-10-13 19:32:33'),
('ShS3FOfvT6gDT233080W-48B2C8aU3K7', '2023-10-15 03:14:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:17', '2023-10-14 03:14:17'),
('sM5YUXmdyDaxkiYwK5lE_gWJBakDFqKh', '2023-10-15 03:31:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:45', '2023-10-14 03:31:45'),
('sRIsSagddQSERHSFCZ8G6WhEOS1b6xds', '2023-10-15 13:56:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:56:01', '2023-10-14 13:56:01'),
('SsG_mFk4U0KsV9BGR-yEaxkpRgfkHEv8', '2023-10-15 03:14:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:17', '2023-10-14 03:14:17'),
('SX63VAlJp0_mMz1M4A_4JoHtdqBYX6Mu', '2023-10-14 19:30:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:30:46', '2023-10-13 19:30:46'),
('T1guhbSlyxKIUskQJudTIJI7rATM_Pu0', '2023-10-15 03:27:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:27:47', '2023-10-14 03:27:47'),
('T4B_GRqj_JqT1lGfSGDdIrb9OX2MLBKq', '2023-10-15 13:28:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:28:30', '2023-10-14 13:28:30'),
('tdteRhMDnpbshqUA1qlNoxlLvYCD-e3e', '2023-10-15 09:01:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:01:17', '2023-10-14 09:01:17'),
('TF7K1ChOwCmbJbIt7VnoQO9jwxQmZi7j', '2023-10-15 14:03:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:03:04', '2023-10-14 14:03:04'),
('TKXTF6dQinJFPRQsJ-7B0Xh-6NgddBGk', '2023-10-15 14:08:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:08:48', '2023-10-14 14:08:48'),
('TlhpC3Jq4a9btPulI8NdTvsbsNbFciIg', '2023-10-15 03:28:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:02', '2023-10-14 03:28:02'),
('tSrEGUXV-ueaFbiW53-0kgD7SI71XWII', '2023-10-15 14:18:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:18:29', '2023-10-14 14:18:29'),
('TtBtWtVrvEoj8feUBP-uqkyk9lcxONYZ', '2023-10-15 14:03:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:03:36', '2023-10-14 14:03:36'),
('Tx_9N1o5LSOyJG1E6Wp54EdDw3GDw7Ax', '2023-10-14 18:44:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:44:01', '2023-10-13 18:44:01'),
('TZCM2_rOTzW-J2oQvMlZcytLa3Av8B6-', '2023-10-15 03:04:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:04:15', '2023-10-14 03:04:15'),
('T_enC1j0zoXkI1hzvEXKTYh7EjxPkspE', '2023-10-15 14:18:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:18:29', '2023-10-14 14:18:29'),
('u05RryHgLWViywW7TD2mBk-wZkTcvfWr', '2023-10-15 08:08:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:08:33', '2023-10-14 08:08:33'),
('U8awLSBletfVAY2uq7l-wxgz8F78VE6i', '2023-10-15 14:13:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:13:40', '2023-10-14 14:13:40'),
('UAvoD-RMltt-htBbhYfboF8Gfb73RtkU', '2023-10-15 14:09:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:09:45', '2023-10-14 14:09:45'),
('UCtCCDni5mOHgVnCg6GiFyfnxKMT810w', '2023-10-15 03:28:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:41', '2023-10-14 03:28:41'),
('udqRdHHm0Xtt1w9Zs5N-K88G3nyrqiwB', '2023-10-15 08:56:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:56:26', '2023-10-14 08:56:26'),
('UEtsi-541ywnN7Li9ng30pNF_94ijz3R', '2023-10-15 09:53:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 09:53:21', '2023-10-14 09:53:21'),
('UFwAJL0N-PiXy3GIVYihvbjy3DiKKr2o', '2023-10-15 13:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:05:19', '2023-10-14 13:05:19'),
('ujbDp9IX2WN0aNhHpmiINMXfu6UsZwOe', '2023-10-15 06:51:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:51:19', '2023-10-14 06:51:19'),
('uN05DXb5iIO6Z7klfM7zrpN-RfyF2BTL', '2023-10-15 13:58:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:58:37', '2023-10-14 13:58:37'),
('UQsoNxaaYYwHrRJfFx-XKTObKRp-kJxG', '2023-10-15 03:59:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:59:49', '2023-10-14 03:59:49'),
('URO-h6lKjQEUTIsPpYycEdgEtrG6HGqB', '2023-10-15 02:55:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:55:24', '2023-10-14 02:55:24'),
('uuKDkCRf7RUJkyaWzYroF2IfCiqOdoGt', '2023-10-15 06:51:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:51:46', '2023-10-14 06:51:46'),
('uUXEcTyLMP7JN38qBulZdZaz54S_padC', '2023-10-15 14:09:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:09:54', '2023-10-14 14:09:54'),
('V6znew-z-Q67enYnB8JBSr44ZM-qniop', '2023-10-15 03:28:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:28:10', '2023-10-14 03:28:10'),
('VaFy5kwE7cU6cZFYCG0SG4e0gbpCMhCT', '2023-10-14 18:16:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:16:49', '2023-10-13 18:16:49'),
('vbhXRz0IMdaDahpNPTIeDHtBZTtS6p68', '2023-10-15 14:13:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:13:27', '2023-10-14 14:13:27'),
('vBT66T-1ZuU09vFp4yDjte3MBZrUc4qU', '2023-10-14 19:35:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:44', '2023-10-13 19:35:44'),
('VCIlxoZfrgtWBF4G7dVzzuet38G2Dcno', '2023-10-15 10:01:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:01:57', '2023-10-14 10:01:57'),
('vN2ICKVdcfzkRT21ZTS8U5Sd4eWER7GF', '2023-10-15 13:10:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:10:55', '2023-10-14 13:10:55'),
('Vntza6WXEKXxPEJesIH915M56LpaeVVs', '2023-10-14 17:33:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:33:26', '2023-10-13 17:33:26'),
('vq7xqB5NfWq_xl2ejzI-27uFRHiuvHMu', '2023-10-15 13:58:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:58:37', '2023-10-14 13:58:37'),
('VrmTxN7WRk8cfJ65DE162RDb9dNYfSi8', '2023-10-14 19:35:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:35:22', '2023-10-13 19:35:22'),
('VumprRCOq5m0WodL6NnxvKCxCp9L6bfl', '2023-10-15 04:50:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 04:50:14', '2023-10-14 04:50:14'),
('vumzOaq9lPQiiR_dQeNgkaMZI7QLDp-g', '2023-10-15 03:03:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:03:24', '2023-10-14 03:03:24'),
('vYGh07hma5R3rYD5PYrGhuN45-fOP-fM', '2023-10-14 17:13:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:13:53', '2023-10-13 17:13:53'),
('W4L6HcLzeZWVOFVnii9RSVXHXMdTwaLo', '2023-10-15 08:52:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:52:38', '2023-10-14 08:52:38'),
('w6yWyhE42PUPbjz2KH5Kv81snev_cq-4', '2023-10-14 19:11:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:11:34', '2023-10-13 19:11:34'),
('We2jwYv-aA5fwNxQgC6d4jtxCFaE9yhL', '2023-10-15 13:58:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:58:34', '2023-10-14 13:58:34'),
('WRRuThuZMCn2fjsfcxGDkRC3ePr37cn2', '2023-10-15 14:04:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:04:14', '2023-10-14 14:04:14'),
('wtreEE6u7zDdvI8DlOfl1LbKAtr0pYd6', '2023-10-15 07:07:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 07:07:45', '2023-10-14 07:07:45'),
('wz1vdeBAGsx_f59uZuM79Y5NJYoFAj3V', '2023-10-15 14:17:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:17:03', '2023-10-14 14:17:03'),
('w_XzWDOwryCNBWxHIlmlGBf_UfSkcViD', '2023-10-15 05:29:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:29:43', '2023-10-14 05:29:43'),
('X2rpFAKIHgGPTekLDuui_CNoK4QM6t5p', '2023-10-14 17:05:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:05:17', '2023-10-13 17:05:17'),
('x4bm4IWqqLvzhatsgJHM1MKjZc1cvoOW', '2023-10-15 08:50:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:50:04', '2023-10-14 08:50:04'),
('x73W9uuuVUfcwoMuVV2yakkkxWyNFqq9', '2023-10-14 16:34:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:34:12', '2023-10-13 16:34:12'),
('x8LrYYjgiiIyhn0JOY9k-5VhxaXW_fGl', '2023-10-15 14:16:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:52', '2023-10-14 14:16:52'),
('xcX8BkA9suoOJ9kfj_nHIwP5vrwdmn33', '2023-10-15 14:15:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:15:09', '2023-10-14 14:15:09'),
('xH5HQ2yMid-YdOaZFPMgX0SQKcKqVzPF', '2023-10-15 14:12:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:12:17', '2023-10-14 14:12:17'),
('xivPeLxAuqzJWzKt9ojwRoOWkoYmBmmz', '2023-10-14 16:32:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:32:17', '2023-10-13 16:32:17'),
('xj5ruecIK2VRK_2GnxYuRiHnBo7pwML1', '2023-10-15 03:31:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:31:29', '2023-10-14 03:31:29'),
('Xl51t7v4CGYYBZq4E04N_I-C-m6vQ92j', '2023-10-15 03:14:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 03:14:35', '2023-10-14 03:14:35'),
('XmEKw1VEyZ7bKfC0DBgB9ARQ1G4Nr-fE', '2023-10-15 08:57:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:57:37', '2023-10-14 08:57:37'),
('XSKIJMTC88xKJLaghndvy9r05VIp8ywF', '2023-10-15 13:36:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:36:06', '2023-10-14 13:36:06'),
('Y1zkn98bMoFhjTql3FpjjXh3c-yICH2x', '2023-10-15 02:55:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:55:14', '2023-10-14 02:55:14'),
('y6bLjH0IRmkGEsqyNNB9jDq3Lp6Vsojc', '2023-10-15 02:54:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 02:54:49', '2023-10-14 02:54:49'),
('y92-q6wWohoN7fRVP89qZaS2tgD4tnjT', '2023-10-15 14:16:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:16:31', '2023-10-14 14:16:31'),
('YF42RCAFveEF0ydhNICIy5ldS3iw9yOf', '2023-10-15 13:55:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 13:55:49', '2023-10-14 13:55:49'),
('yqQGwpn6y1Ix1kzBBoubM2WMbPNFk3qM', '2023-10-15 08:50:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 08:50:45', '2023-10-14 08:50:45'),
('yXCg_5RZFRWTuWtrXGriUKJW3bJrdnMQ', '2023-10-15 06:58:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 06:58:25', '2023-10-14 06:58:25'),
('Z-2xvYVfffq4KfezCYNSIhXt3ewwLetg', '2023-10-15 05:28:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 05:28:29', '2023-10-14 05:28:29'),
('ZDOMlPs7YSxKIgmKQA7QQCzZGrIF5T58', '2023-10-15 04:00:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 04:00:35', '2023-10-14 04:00:35'),
('zfeJHjRG9qqJPw2keVIOGaManXz0tXAh', '2023-10-14 17:10:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:10:41', '2023-10-13 17:10:41'),
('ZiLYRc0Ep6i4givtBADa3LwYFwdRC1yn', '2023-10-14 17:33:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:33:46', '2023-10-13 17:33:46'),
('zJoyTI2xm6L_bW5QvhFyWNH4Q0euHBcD', '2023-10-14 19:34:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 19:34:37', '2023-10-13 19:34:37'),
('ZJxmPqJFbWttloj8XK9dWCMshUYFMpRB', '2023-10-15 14:14:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 14:14:16', '2023-10-14 14:14:16'),
('ZX_ADInMG7p8t6FhTvOV02pM0h6YaGI2', '2023-10-14 17:00:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:00:41', '2023-10-13 17:00:41'),
('Z_wS5-gGnXfTsY5vFB9srCxXcMTt_Kcv', '2023-10-14 18:33:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 18:33:48', '2023-10-13 18:33:48'),
('_g28Cq8xhQNqzGC5aF0D7ejlpl7Ti5Dk', '2023-10-15 10:37:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-14 10:37:46', '2023-10-14 10:37:46'),
('_Uusz-3nD6nMXFadUPSuly9OQ5Fmnx28', '2023-10-14 16:34:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 16:34:43', '2023-10-13 16:34:43'),
('_Ze_eS1G_cfiKd4KaCioI7EjfECMJq7q', '2023-10-14 17:32:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-10-13 17:32:22', '2023-10-13 17:32:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usecases`
--

CREATE TABLE `usecases` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `locationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `phone_number`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '161b5234-aa8e-441b-a49c-84e8b0b258e7', 'admin user', '111111111111', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$fmDYvhawP+HOGBl/ABHfvg$BkH6u7ZoFGvtQUMaOqHAZW4GZ7r8Nvdc52wzqtnfD40', 'admin', '2023-10-10 10:23:47', '2023-10-14 14:19:52'),
(2, 'af93d9a9-e3eb-49d5-962a-81c0b4019ea6', 'Karyawan 1', '222222222222', 'karyawan@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$W2jZP+3bHf4one9JWfbH4w$XqXCKMTOTjnk8Y7SoYg35Ymq0u7i5y1lXDeqwFmsE9c', 'karyawan', '2023-10-10 10:24:12', '2023-10-14 14:19:16'),
(6, '3817f169-c6bd-400a-aab0-6f211442543f', 'mitra 1', '333333333333', 'mitra@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$SlUgV4n77ljZxxfWGRhVSQ$OF1ib0MbU4spkfjCrY1/Eo72SGD95rIqlylakpa9FxQ', 'mitra', '2023-10-10 12:36:40', '2023-10-14 14:19:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indeks untuk tabel `planpricings`
--
ALTER TABLE `planpricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `usecases`
--
ALTER TABLE `usecases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locationId` (`locationId`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `planpricings`
--
ALTER TABLE `planpricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `usecases`
--
ALTER TABLE `usecases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `amenities`
--
ALTER TABLE `amenities`
  ADD CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `planpricings`
--
ALTER TABLE `planpricings`
  ADD CONSTRAINT `planpricings_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `usecases`
--
ALTER TABLE `usecases`
  ADD CONSTRAINT `usecases_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
