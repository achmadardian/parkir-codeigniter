-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 04:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ardian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `image`) VALUES
(1, 'admin', '$2y$10$bmEeka9IkInjqvZ.X76eIOP7D7j.dCyMxzXut5YmSs0b9jsv9hxkO', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `jenis_kendaraan` varchar(15) NOT NULL,
  `nomor_polisi` varchar(8) NOT NULL,
  `tanggal_jam_masuk` datetime NOT NULL,
  `tanggal_jam_keluar` datetime NOT NULL,
  `biaya` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `jenis_kendaraan`, `nomor_polisi`, `tanggal_jam_masuk`, `tanggal_jam_keluar`, `biaya`) VALUES
(1, 'Mobil', 'B4450TCT', '2020-07-07 16:07:10', '2020-07-07 21:34:14', 4000),
(2, 'Mobil', 'B4450TCT', '2020-07-07 16:41:53', '2020-07-07 18:27:00', 3000),
(3, 'Motor', 'B2736GSG', '2020-07-07 17:14:47', '2020-07-07 18:35:10', 1500),
(4, 'Motor', 'B2736GSG', '2020-07-07 17:14:47', '2020-07-07 18:34:07', 1500),
(5, 'Mobil', 'B1212TQT', '2020-07-07 17:43:07', '2020-07-07 18:55:59', 3000),
(6, 'Mobil', 'B7272TAT', '2020-07-07 18:48:19', '0000-00-00 00:00:00', 0),
(7, 'Mobil', 'B1234TAT', '2020-07-07 20:50:38', '2020-07-07 18:52:55', 3000),
(8, 'Motor', 'B0000RQR', '2020-07-07 18:53:22', '2020-07-07 18:53:43', 1500),
(9, 'Motor', 'B9090QRW', '2020-07-08 03:31:23', '0000-00-00 00:00:00', 0),
(10, 'Motor', 'B1111QWQ', '2020-07-08 03:32:15', '2020-07-08 03:32:39', 1500),
(11, 'Motor', 'A9090QQQ', '2020-07-08 04:45:59', '2020-07-08 04:46:27', 1500),
(12, 'Mobil', 'B1131IOP', '2020-07-08 04:52:19', '2020-07-08 04:52:43', 3000),
(13, 'Mobil', 'Q123QWQ', '2020-07-08 04:58:25', '2020-07-08 04:58:47', 3000),
(14, 'Mobil', 'Q2121TYT', '2020-07-08 09:11:54', '0000-00-00 00:00:00', 0),
(15, 'Mobil', 'V4444TWT', '2020-07-08 09:14:15', '2020-07-08 09:14:49', 3000),
(16, 'Mobil', 'M9090TST', '2020-07-08 09:19:51', '0000-00-00 00:00:00', 0),
(17, 'Motor', 'A1212EWF', '2020-07-08 09:27:28', '0000-00-00 00:00:00', 0),
(18, 'Motor', 'A2323QDW', '2020-07-08 09:28:22', '0000-00-00 00:00:00', 0),
(19, 'Motor', 'A1212QDQ', '2020-07-08 09:29:37', '0000-00-00 00:00:00', 0),
(20, 'Mobil', 'B4450TCT', '2020-07-08 09:40:03', '2020-07-08 10:28:54', 3000),
(21, 'Mobil', 'B8080YWY', '2020-07-08 10:03:45', '2020-07-08 10:14:43', 3000),
(22, 'Motor', 'Q9090RRQ', '2020-07-08 10:25:13', '2020-07-08 10:25:55', 1500),
(23, 'Mobil', 'A2323QQQ', '2020-07-08 12:40:36', '2020-07-08 12:41:30', 3000),
(24, 'Mobil', 'Q9090EEQ', '2020-07-08 15:12:20', '2020-07-08 15:13:32', 3000),
(25, 'Motor', 'M7878QWE', '2020-07-08 15:12:42', '2020-07-08 15:14:14', 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
