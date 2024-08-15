-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Aug 15, 2024 at 01:39 PM
-- Server version: 11.4.2-MariaDB-ubu2404
-- PHP Version: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knn_algorithm`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_testing`
--

CREATE TABLE `data_testing` (
  `data_id` int(11) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `rencana_tanam` double NOT NULL,
  `umt1` double NOT NULL,
  `umt2` double NOT NULL,
  `nmt1` double NOT NULL,
  `nmt2` double NOT NULL,
  `data_label` int(11) NOT NULL,
  `luas_lahan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_testing`
--

INSERT INTO `data_testing` (`data_id`, `nama_lengkap`, `rencana_tanam`, `umt1`, `umt2`, `nmt1`, `nmt2`, `data_label`, `luas_lahan`) VALUES
(1, 'ABNER SIHOMBING', 0.64, 42, 42, 24, 24, 1, 'KECIL'),
(2, 'ADEL MANALU', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(3, 'Albert Sinaga', 2, 132, 132, 73, 73, 1, 'TINGGI'),
(4, 'ALESMAN SIMANULLANG', 1.6, 106, 106, 59, 59, 1, 'TINGGI'),
(5, 'BAS TOMI ARDIANTO SITINJAK', 0.48, 32, 32, 18, 18, 1, 'KECIL'),
(6, 'BERNAD TOMSON SIMARE MARE', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(7, 'JULKIPLY TAMBA SIMANULLANG', 4, 264, 264, 147, 147, 0, 'TIDAK TERMASUK'),
(8, 'Lamhot Naibaho', 3.6, 238, 238, 132, 132, 0, 'TIDAK TERMASUK'),
(9, 'Lasman Simanjuntak', 1, 66, 66, 37, 37, 1, 'KECIL'),
(10, 'Pitta Pangaribuan', 2.4, 220, 220, 144, 144, 0, 'TIDAK TERMASUK'),
(11, 'Sadar Turnip', 1.08, 99, 99, 64, 64, 1, 'TINGGI'),
(12, 'Sahala Sirait', 0.96, 88, 88, 57, 57, 1, 'KECIL'),
(13, 'Kostan Silaen', 0.48, 44, 44, 28, 28, 1, 'KECIL'),
(14, 'Edihot Sinaga', 0.6, 55, 55, 36, 36, 1, 'KECIL'),
(15, 'Jampi Sitorus Pane', 1.44, 132, 132, 86, 86, 1, 'TINGGI'),
(16, 'Herman Lumban Siantar', 1.2, 110, 110, 72, 72, 1, 'TINGGI'),
(17, 'Julfrie Purba', 3, 275, 275, 180, 180, 0, 'TIDAK TERMASUK'),
(18, 'James Aruan', 3, 275, 275, 180, 180, 0, 'TIDAK TERMASUK'),
(19, 'Johan Sihombing', 1.44, 132, 132, 86, 86, 1, 'TINGGI'),
(20, 'Eston Sitohang', 1.08, 99, 99, 64, 64, 1, 'TINGGI'),
(21, 'Junedy Purba', 1.5, 137, 137, 90, 90, 1, 'TINGGI'),
(22, 'Herbin Siagian', 2.1, 192, 192, 126, 126, 0, 'TIDAK TERMASUK'),
(23, 'Bukti Hasiholan Rajagukguk', 1.8, 165, 165, 108, 108, 1, 'TINGGI'),
(24, 'Josmar Tampubolon', 3, 275, 275, 180, 180, 0, 'TIDAK TERMASUK'),
(25, 'Tumindang Panjaitan', 0.6, 55, 55, 36, 36, 1, 'KECIL'),
(26, 'Manganar Manik', 2.4, 220, 220, 144, 144, 0, 'TIDAK TERMASUK'),
(27, 'Sumardin Sibarani', 4.5, 412, 412, 270, 270, 0, 'TIDAK TERMASUK'),
(28, 'Makdun Panjaitan ', 3, 275, 275, 180, 180, 0, 'TIDAK TERMASUK'),
(29, 'Briston Sitorus', 3, 275, 275, 180, 180, 0, 'TIDAK TERMASUK');

-- --------------------------------------------------------

--
-- Table structure for table `data_testing_normalized`
--

CREATE TABLE `data_testing_normalized` (
  `data_id` int(11) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `rencana_tanam` double NOT NULL,
  `umt1` double NOT NULL,
  `umt2` double NOT NULL,
  `nmt1` double NOT NULL,
  `nmt2` double NOT NULL,
  `data_label` int(11) NOT NULL,
  `luas_lahan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_testing_normalized`
--

INSERT INTO `data_testing_normalized` (`data_id`, `nama_lengkap`, `rencana_tanam`, `umt1`, `umt2`, `nmt1`, `nmt2`, `data_label`, `luas_lahan`) VALUES
(1, 'ABNER SIHOMBING', 0.0585, 0.0415, 0.0415, 0.0353, 0.0353, 1, 'KECIL'),
(2, 'ADEL MANALU', 0.0976, 0.0699, 0.0699, 0.0549, 0.0549, 1, 'KECIL'),
(3, 'Albert Sinaga', 0.3902, 0.2746, 0.2746, 0.2275, 0.2275, 1, 'TINGGI'),
(4, 'ALESMAN SIMANULLANG', 0.2927, 0.2073, 0.2073, 0.1725, 0.1725, 1, 'TINGGI'),
(5, 'BAS TOMI ARDIANTO SITINJAK', 0.0195, 0.0155, 0.0155, 0.0118, 0.0118, 1, 'KECIL'),
(6, 'BERNAD TOMSON SIMARE MARE', 0, 0, 0, 0, 0, 1, 'KECIL'),
(7, 'JULKIPLY TAMBA SIMANULLANG', 0.878, 0.6166, 0.6166, 0.5176, 0.5176, 0, 'TIDAK TERMASUK'),
(8, 'Lamhot Naibaho', 0.7805, 0.5492, 0.5492, 0.4588, 0.4588, 0, 'TIDAK TERMASUK'),
(9, 'Lasman Simanjuntak', 0.1463, 0.1036, 0.1036, 0.0863, 0.0863, 1, 'KECIL'),
(10, 'Pitta Pangaribuan', 0.4878, 0.5026, 0.5026, 0.5059, 0.5059, 0, 'TIDAK TERMASUK'),
(11, 'Sadar Turnip', 0.1659, 0.1891, 0.1891, 0.1922, 0.1922, 1, 'TINGGI'),
(12, 'Sahala Sirait', 0.1366, 0.1606, 0.1606, 0.1647, 0.1647, 1, 'KECIL'),
(13, 'Kostan Silaen', 0.0195, 0.0466, 0.0466, 0.051, 0.051, 1, 'KECIL'),
(14, 'Edihot Sinaga', 0.0488, 0.0751, 0.0751, 0.0824, 0.0824, 1, 'KECIL'),
(15, 'Jampi Sitorus Pane', 0.2537, 0.2746, 0.2746, 0.2784, 0.2784, 1, 'TINGGI'),
(16, 'Herman Lumban Siantar', 0.1951, 0.2176, 0.2176, 0.2235, 0.2235, 1, 'TINGGI'),
(17, 'Julfrie Purba', 0.6341, 0.6451, 0.6451, 0.6471, 0.6471, 0, 'TIDAK TERMASUK'),
(18, 'James Aruan', 0.6341, 0.6451, 0.6451, 0.6471, 0.6471, 0, 'TIDAK TERMASUK'),
(19, 'Johan Sihombing', 0.2537, 0.2746, 0.2746, 0.2784, 0.2784, 1, 'TINGGI'),
(20, 'Eston Sitohang', 0.1659, 0.1891, 0.1891, 0.1922, 0.1922, 1, 'TINGGI'),
(21, 'Junedy Purba', 0.2683, 0.2876, 0.2876, 0.2941, 0.2941, 1, 'TINGGI'),
(22, 'Herbin Siagian', 0.4146, 0.4301, 0.4301, 0.4353, 0.4353, 0, 'TIDAK TERMASUK'),
(23, 'Bukti Hasiholan Rajagukguk', 0.3415, 0.3601, 0.3601, 0.3647, 0.3647, 1, 'TINGGI'),
(24, 'Josmar Tampubolon', 0.6341, 0.6451, 0.6451, 0.6471, 0.6471, 0, 'TIDAK TERMASUK'),
(25, 'Tumindang Panjaitan', 0.0488, 0.0751, 0.0751, 0.0824, 0.0824, 1, 'KECIL'),
(26, 'Manganar Manik', 0.4878, 0.5026, 0.5026, 0.5059, 0.5059, 0, 'TIDAK TERMASUK'),
(27, 'Sumardin Sibarani', 1, 1, 1, 1, 1, 0, 'TIDAK TERMASUK'),
(28, 'Makdun Panjaitan ', 0.6341, 0.6451, 0.6451, 0.6471, 0.6471, 0, 'TIDAK TERMASUK'),
(29, 'Briston Sitorus', 0.6341, 0.6451, 0.6451, 0.6471, 0.6471, 0, 'TIDAK TERMASUK');

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `data_id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `tanaman` varchar(60) NOT NULL,
  `rencana_tanam` double NOT NULL,
  `umt1` double NOT NULL,
  `umt2` double NOT NULL,
  `nmt1` double NOT NULL,
  `nmt2` double NOT NULL,
  `data_label` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_uji`
--

INSERT INTO `data_uji` (`data_id`, `nik`, `tanaman`, `rencana_tanam`, `umt1`, `umt2`, `nmt1`, `nmt2`, `data_label`) VALUES
(361, '6216704451479017', 'PADI', 0.64, 42, 42, 24, 24, -1),
(362, '4274049200117588', 'PADI', 0.8, 53, 53, 29, 29, -1),
(363, '7607514425180852', 'PADI', 2, 132, 132, 73, 73, -1),
(364, '4173927083611488', 'PADI', 1.6, 106, 106, 59, 59, -1),
(365, '2540150871500372', 'PADI', 0.48, 32, 32, 18, 18, -1);

-- --------------------------------------------------------

--
-- Table structure for table `data_uji_normalized`
--

CREATE TABLE `data_uji_normalized` (
  `data_id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `tanaman` varchar(60) NOT NULL,
  `rencana_tanam` double NOT NULL,
  `umt1` double NOT NULL,
  `umt2` double NOT NULL,
  `nmt1` double NOT NULL,
  `nmt2` double NOT NULL,
  `data_label` int(11) NOT NULL,
  `tetangga_terdekat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_uji_normalized`
--

INSERT INTO `data_uji_normalized` (`data_id`, `nik`, `tanaman`, `rencana_tanam`, `umt1`, `umt2`, `nmt1`, `nmt2`, `data_label`, `tetangga_terdekat`) VALUES
(361, '6216704451479017', 'PADI', 0.0585, 0.0415, 0.0415, 0.0353, 0.0353, 1, '0.035995'),
(362, '4274049200117588', 'PADI', 0.0976, 0.0699, 0.0699, 0.0549, 0.0549, 1, '0.041788333333333'),
(363, '7607514425180852', 'PADI', 0.3902, 0.2746, 0.2746, 0.2275, 0.2275, 1, '0.102878'),
(364, '4173927083611488', 'PADI', 0.2927, 0.2073, 0.2073, 0.1725, 0.1725, 1, '0.08486'),
(365, '2540150871500372', 'PADI', 0.0195, 0.0155, 0.0155, 0.0118, 0.0118, 1, '0.032273');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` mediumint(9) NOT NULL,
  `log_datetime` datetime NOT NULL,
  `log_message` text NOT NULL,
  `nik` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `log_datetime`, `log_message`, `nik`) VALUES
(42, '2024-08-04 09:35:12', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(43, '2024-08-04 09:35:15', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(44, '2024-08-04 09:35:26', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(45, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(46, '2024-08-07 15:26:23', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(47, '2024-08-07 15:26:25', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(48, '2024-08-07 15:26:38', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(49, '2024-08-07 15:26:42', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(50, '2024-08-07 15:26:50', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(51, '2024-08-07 15:27:05', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(52, '2024-08-07 15:27:26', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(53, '2024-08-07 15:27:29', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(54, '2024-08-07 15:27:33', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(55, '2024-08-07 15:27:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(56, '2024-08-07 15:39:50', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(57, '2024-08-07 15:39:59', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(58, '2024-08-07 15:58:47', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(59, '2024-08-07 16:17:45', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(60, '2024-08-07 16:18:03', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(61, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(62, '2024-08-09 14:24:30', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(63, '2024-08-09 14:24:37', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(64, '2024-08-09 14:25:25', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(65, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(66, '2024-08-09 14:45:32', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(67, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(68, '2024-08-09 15:38:19', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(69, '2024-08-09 15:38:24', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(70, '2024-08-09 15:38:25', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(71, '2024-08-09 15:46:20', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(72, '2024-08-09 16:09:48', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(73, '2024-08-09 16:11:32', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(74, '2024-08-09 16:42:45', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(75, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(76, '2024-08-15 19:14:46', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(77, '2024-08-15 19:14:51', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(78, '2024-08-15 19:15:12', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(79, '2024-08-15 19:15:17', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(80, '2024-08-15 19:16:18', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(81, '2024-08-15 19:16:43', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(82, '2024-08-15 19:17:07', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(83, '2024-08-15 19:24:04', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(84, '2024-08-15 19:24:12', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(85, '2024-08-15 19:25:20', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(86, '2024-08-15 19:25:26', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(87, '2024-08-15 19:26:05', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(88, '2024-08-15 19:26:10', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(89, '2024-08-15 19:27:17', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(90, '2024-08-15 19:27:23', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(91, '2024-08-15 19:27:45', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(92, '2024-08-15 19:27:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(93, '2024-08-15 19:27:52', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(94, '2024-08-15 19:28:11', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(95, '2024-08-15 19:28:21', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(96, '2024-08-15 19:30:16', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(97, '2024-08-15 20:19:26', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(98, '2024-08-15 20:20:32', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(99, '2024-08-15 20:20:37', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(100, '2024-08-15 20:20:43', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(101, '2024-08-15 20:22:29', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(102, '2024-08-15 20:22:35', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(103, '2024-08-15 20:22:48', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(104, '2024-08-15 20:23:02', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(105, '2024-08-15 20:23:24', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(106, '2024-08-15 20:23:27', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(107, '2024-08-15 20:23:32', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(108, '2024-08-15 20:23:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(109, '2024-08-15 20:35:03', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(110, '2024-08-15 20:35:10', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(111, '2024-08-15 20:36:22', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(112, '2024-08-15 20:36:52', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(113, '2024-08-15 20:36:54', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nik` varchar(60) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `level` int(5) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nik`, `username`, `password`, `status`, `level`, `create_date`) VALUES
('1234567890123456', 'root', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2024-08-02'),
('2540150871500372', '1723019203', 'a2eaa1182e1ac712fbeb58414bed5d63', 1, 2, '2024-08-07'),
('4173927083611488', '1723019202', 'a2eaa1182e1ac712fbeb58414bed5d63', 1, 2, '2024-08-07'),
('4274049200117588', '1723019200', 'a2eaa1182e1ac712fbeb58414bed5d63', 1, 2, '2024-08-07'),
('6216704451479017', '1723019199', 'a2eaa1182e1ac712fbeb58414bed5d63', 1, 2, '2024-08-07'),
('7607514425180852', '1723019201', 'a2eaa1182e1ac712fbeb58414bed5d63', 1, 2, '2024-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `nik` varchar(20) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `foto` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`nik`, `nama_lengkap`, `alamat`, `foto`, `email`, `no_hp`) VALUES
('1234567890123456', 'ROOT', 'jl sei balai', '', '', ''),
('2540150871500372', 'BAS TOMI ARDIANTO SITINJAK', 'Kampung Dame', '', 'email@gmail.com', '6282122222222'),
('4173927083611488', 'ALESMAN SIMANULLANG', 'Kampung Dame', '', 'email@gmail.com', '6282122222222'),
('4274049200117588', 'ADEL MANALU', 'Kampung Dame', '', 'email@gmail.com', '6282122222222'),
('6216704451479017', 'ABNER SIHOMBING', 'Kampung Dame', '', 'email@gmail.com', '6282122222222'),
('7607514425180852', 'Albert Sinaga', 'Kampung Dame', '', 'email@gmail.com', '6282122222222');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_testing`
--
ALTER TABLE `data_testing`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `data_testing_normalized`
--
ALTER TABLE `data_testing_normalized`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `data_uji_normalized`
--
ALTER TABLE `data_uji_normalized`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_testing`
--
ALTER TABLE `data_testing`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `data_testing_normalized`
--
ALTER TABLE `data_testing_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `data_uji_normalized`
--
ALTER TABLE `data_uji_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
