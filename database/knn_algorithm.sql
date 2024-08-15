-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Aug 15, 2024 at 11:37 PM
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
(7, 'Binner Halomoan Tamba', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(8, 'Charles Nainggolan', 1.6, 106, 106, 59, 59, 1, 'TINGGI'),
(9, 'Darwin Nainggolan', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(10, 'Darwin Van B Napitulu', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(11, 'Ediman Simamora', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(12, 'Emperus Situmorang', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(13, 'Erianto Sinaga', 0.72, 48, 48, 26, 26, 1, 'KECIL'),
(14, 'Erlina Magdalena Siahaan', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(15, 'Esron Parhusip', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(16, 'Grace Kelly Silaban', 1.12, 74, 74, 41, 41, 1, 'TINGGI'),
(17, 'Jannes Sihombing', 1.44, 95, 95, 53, 53, 1, 'TINGGI'),
(18, 'Jimmi M Manulang', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(19, 'Jimmy Jefri Sitindaon', 0.72, 48, 48, 26, 26, 1, 'KECIL'),
(20, 'Jisman Tampubolon', 0.64, 42, 42, 24, 24, 1, 'KECIL'),
(21, 'Jonni Pardede', 1.8, 119, 119, 66, 66, 1, 'TINGGI'),
(22, 'Jonser Dodikson Simamora', 0.56, 37, 37, 21, 21, 1, 'KECIL'),
(23, 'Jonson Manalu', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(24, 'Julkiply Tamba', 4, 264, 264, 147, 147, 0, 'TIDAK TERMASUK'),
(25, 'Jurida Napitupulu', 0.56, 37, 37, 21, 21, 1, 'KECIL'),
(26, 'Juwanto Hasudungan', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(27, 'Lai Hok Sitorus', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(28, 'Lamhot Naibaho', 3.6, 238, 238, 132, 132, 0, 'TIDAK TERMASUK'),
(29, 'Lasman Simanjuntak', 1, 66, 66, 37, 37, 1, 'KECIL'),
(30, 'Maniur Br Hutabarat', 0.24, 16, 16, 9, 9, 1, 'KECIL'),
(31, 'Manti Tampubolon', 0.64, 42, 42, 24, 24, 1, 'KECIL'),
(32, 'Manutur Hutasoit', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(33, 'Marali Sianipar', 2.4, 158, 158, 88, 88, 0, 'TIDAK TERMASUK'),
(34, 'Maradiana Harianja', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(35, 'Martahi Situmorang', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(36, 'Martin Situmorang', 2, 132, 132, 73, 73, 1, 'TINGGI'),
(37, 'Martua Aritonang', 1.8, 119, 119, 66, 66, 1, 'TINGGI'),
(38, 'Maruba Simanjuntak', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(39, 'Marulam Situmorang', 1.04, 69, 69, 38, 38, 1, 'TINGGI'),
(40, 'Mediana Silalahi', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(41, 'Melda Wati Siallagan', 1.36, 90, 90, 50, 50, 1, 'TINGGI'),
(42, 'Musa Manipol simanjuntak', 0.56, 37, 37, 21, 21, 1, 'KECIL'),
(43, 'Nelson Gultom', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(44, 'Nelson Hutasoit', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(45, 'Nurlia Sihombing', 0.64, 42, 42, 24, 24, 1, 'KECIL'),
(46, 'Nurmaya Marbun', 1.12, 74, 74, 41, 41, 1, 'TINGGI'),
(47, 'Ojahan Sarles Silalahi', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(48, 'Paindoan Naiborhu', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(49, 'Parluangan Saragi', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(50, 'Parlin Pasaribu', 0.88, 58, 58, 32, 32, 1, 'KECIL'),
(51, 'Pdt Katiman Simangunsong', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(52, 'Pendi Jekson Sihombing', 1.6, 106, 106, 59, 59, 1, 'TINGGI'),
(53, 'Radiaman Ambarita', 2, 132, 132, 73, 73, 1, 'TINGGI'),
(54, 'Ramli Silalahi', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(55, 'Ramses Silaban', 1, 66, 66, 37, 37, 1, 'KECIL'),
(56, 'Raudin Situmorang', 0.48, 32, 32, 18, 18, 1, 'KECIL'),
(57, 'Resmina Sitanggang', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(58, 'Retiam Sitinjak', 0.16, 11, 11, 6, 6, 1, 'KECIL'),
(59, 'Riduanto Manalu', 1.6, 106, 106, 59, 59, 1, 'TINGGI'),
(60, 'Rintony Tamba', 0.48, 32, 32, 18, 18, 1, 'KECIL'),
(61, 'Robert Nainggolan', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(62, 'Rusliana Br Sitinjak', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(63, 'Sahat Halomoan Gultom', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(64, 'Sahat Martua Aruan', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(65, 'Santun Silaban', 0.4, 26, 26, 15, 15, 1, 'KECIL'),
(66, 'Sarmauli Br Hombing', 0.56, 37, 37, 21, 21, 1, 'KECIL'),
(67, 'Satya Silaban ', 2.32, 153, 153, 85, 85, 0, 'TIDAK TERMASUK'),
(68, 'Saut Sitinjak', 0.48, 32, 32, 18, 18, 1, 'KECIL'),
(69, 'Selli Gultom', 0.48, 32, 32, 18, 18, 1, 'KECIL'),
(70, 'Siden Saragi', 0.96, 63, 63, 35, 35, 1, 'KECIL'),
(71, 'Sihol Sinaga', 0.64, 42, 42, 24, 24, 1, 'KECIL'),
(72, 'Sontaria Sitinjak', 2, 132, 132, 73, 73, 1, 'TINGGI'),
(73, 'Sudro Hardjono Siregar', 1.2, 79, 79, 44, 44, 1, 'TINGGI'),
(74, 'Timbul Lubis', 1.8, 119, 119, 66, 66, 1, 'TINGGI'),
(75, 'Tinus Gultom', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(76, 'Tiur Hotma Manulang', 1.76, 116, 116, 65, 65, 1, 'TINGGI'),
(77, 'Togar Tampubolon', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(78, 'Tohom Manulang', 3.2, 211, 211, 118, 118, 0, 'TIDAK TERMASUK'),
(79, 'Tongan Siahaan', 0.8, 53, 53, 29, 29, 1, 'KECIL'),
(80, 'Wilter Simanulang', 1, 66, 66, 37, 37, 1, 'KECIL');

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
(1, 'ABNER SIHOMBING', 0.125, 0.1225, 0.1225, 0.1277, 0.1277, 1, 'KECIL'),
(2, 'ADEL MANALU', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(3, 'Albert Sinaga', 0.4792, 0.4783, 0.4783, 0.4752, 0.4752, 1, 'TINGGI'),
(4, 'ALESMAN SIMANULLANG', 0.375, 0.3755, 0.3755, 0.3759, 0.3759, 1, 'TINGGI'),
(5, 'BAS TOMI ARDIANTO SITINJAK', 0.0833, 0.083, 0.083, 0.0851, 0.0851, 1, 'KECIL'),
(6, 'BERNAD TOMSON SIMARE MARE', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(7, 'Binner Halomoan Tamba', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(8, 'Charles Nainggolan', 0.375, 0.3755, 0.3755, 0.3759, 0.3759, 1, 'TINGGI'),
(9, 'Darwin Nainggolan', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(10, 'Darwin Van B Napitulu', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(11, 'Ediman Simamora', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(12, 'Emperus Situmorang', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(13, 'Erianto Sinaga', 0.1458, 0.1462, 0.1462, 0.1418, 0.1418, 1, 'KECIL'),
(14, 'Erlina Magdalena Siahaan', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(15, 'Esron Parhusip', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(16, 'Grace Kelly Silaban', 0.25, 0.249, 0.249, 0.2482, 0.2482, 1, 'TINGGI'),
(17, 'Jannes Sihombing', 0.3333, 0.332, 0.332, 0.3333, 0.3333, 1, 'TINGGI'),
(18, 'Jimmi M Manulang', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(19, 'Jimmy Jefri Sitindaon', 0.1458, 0.1462, 0.1462, 0.1418, 0.1418, 1, 'KECIL'),
(20, 'Jisman Tampubolon', 0.125, 0.1225, 0.1225, 0.1277, 0.1277, 1, 'KECIL'),
(21, 'Jonni Pardede', 0.4271, 0.4269, 0.4269, 0.4255, 0.4255, 1, 'TINGGI'),
(22, 'Jonser Dodikson Simamora', 0.1042, 0.1028, 0.1028, 0.1064, 0.1064, 1, 'KECIL'),
(23, 'Jonson Manalu', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(24, 'Julkiply Tamba', 1, 1, 1, 1, 1, 0, 'TIDAK TERMASUK'),
(25, 'Jurida Napitupulu', 0.1042, 0.1028, 0.1028, 0.1064, 0.1064, 1, 'KECIL'),
(26, 'Juwanto Hasudungan', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(27, 'Lai Hok Sitorus', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(28, 'Lamhot Naibaho', 0.8958, 0.8972, 0.8972, 0.8936, 0.8936, 0, 'TIDAK TERMASUK'),
(29, 'Lasman Simanjuntak', 0.2188, 0.2174, 0.2174, 0.2199, 0.2199, 1, 'KECIL'),
(30, 'Maniur Br Hutabarat', 0.0208, 0.0198, 0.0198, 0.0213, 0.0213, 1, 'KECIL'),
(31, 'Manti Tampubolon', 0.125, 0.1225, 0.1225, 0.1277, 0.1277, 1, 'KECIL'),
(32, 'Manutur Hutasoit', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(33, 'Marali Sianipar', 0.5833, 0.581, 0.581, 0.5816, 0.5816, 0, 'TIDAK TERMASUK'),
(34, 'Maradiana Harianja', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(35, 'Martahi Situmorang', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(36, 'Martin Situmorang', 0.4792, 0.4783, 0.4783, 0.4752, 0.4752, 1, 'TINGGI'),
(37, 'Martua Aritonang', 0.4271, 0.4269, 0.4269, 0.4255, 0.4255, 1, 'TINGGI'),
(38, 'Maruba Simanjuntak', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(39, 'Marulam Situmorang', 0.2292, 0.2292, 0.2292, 0.227, 0.227, 1, 'TINGGI'),
(40, 'Mediana Silalahi', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(41, 'Melda Wati Siallagan', 0.3125, 0.3123, 0.3123, 0.3121, 0.3121, 1, 'TINGGI'),
(42, 'Musa Manipol simanjuntak', 0.1042, 0.1028, 0.1028, 0.1064, 0.1064, 1, 'KECIL'),
(43, 'Nelson Gultom', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(44, 'Nelson Hutasoit', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(45, 'Nurlia Sihombing', 0.125, 0.1225, 0.1225, 0.1277, 0.1277, 1, 'KECIL'),
(46, 'Nurmaya Marbun', 0.25, 0.249, 0.249, 0.2482, 0.2482, 1, 'TINGGI'),
(47, 'Ojahan Sarles Silalahi', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(48, 'Paindoan Naiborhu', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(49, 'Parluangan Saragi', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(50, 'Parlin Pasaribu', 0.1875, 0.1858, 0.1858, 0.1844, 0.1844, 1, 'KECIL'),
(51, 'Pdt Katiman Simangunsong', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(52, 'Pendi Jekson Sihombing', 0.375, 0.3755, 0.3755, 0.3759, 0.3759, 1, 'TINGGI'),
(53, 'Radiaman Ambarita', 0.4792, 0.4783, 0.4783, 0.4752, 0.4752, 1, 'TINGGI'),
(54, 'Ramli Silalahi', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(55, 'Ramses Silaban', 0.2188, 0.2174, 0.2174, 0.2199, 0.2199, 1, 'KECIL'),
(56, 'Raudin Situmorang', 0.0833, 0.083, 0.083, 0.0851, 0.0851, 1, 'KECIL'),
(57, 'Resmina Sitanggang', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(58, 'Retiam Sitinjak', 0, 0, 0, 0, 0, 1, 'KECIL'),
(59, 'Riduanto Manalu', 0.375, 0.3755, 0.3755, 0.3759, 0.3759, 1, 'TINGGI'),
(60, 'Rintony Tamba', 0.0833, 0.083, 0.083, 0.0851, 0.0851, 1, 'KECIL'),
(61, 'Robert Nainggolan', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(62, 'Rusliana Br Sitinjak', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(63, 'Sahat Halomoan Gultom', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(64, 'Sahat Martua Aruan', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(65, 'Santun Silaban', 0.0625, 0.0593, 0.0593, 0.0638, 0.0638, 1, 'KECIL'),
(66, 'Sarmauli Br Hombing', 0.1042, 0.1028, 0.1028, 0.1064, 0.1064, 1, 'KECIL'),
(67, 'Satya Silaban ', 0.5625, 0.5613, 0.5613, 0.5603, 0.5603, 0, 'TIDAK TERMASUK'),
(68, 'Saut Sitinjak', 0.0833, 0.083, 0.083, 0.0851, 0.0851, 1, 'KECIL'),
(69, 'Selli Gultom', 0.0833, 0.083, 0.083, 0.0851, 0.0851, 1, 'KECIL'),
(70, 'Siden Saragi', 0.2083, 0.2055, 0.2055, 0.2057, 0.2057, 1, 'KECIL'),
(71, 'Sihol Sinaga', 0.125, 0.1225, 0.1225, 0.1277, 0.1277, 1, 'KECIL'),
(72, 'Sontaria Sitinjak', 0.4792, 0.4783, 0.4783, 0.4752, 0.4752, 1, 'TINGGI'),
(73, 'Sudro Hardjono Siregar', 0.2708, 0.2688, 0.2688, 0.2695, 0.2695, 1, 'TINGGI'),
(74, 'Timbul Lubis', 0.4271, 0.4269, 0.4269, 0.4255, 0.4255, 1, 'TINGGI'),
(75, 'Tinus Gultom', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(76, 'Tiur Hotma Manulang', 0.4167, 0.415, 0.415, 0.4184, 0.4184, 1, 'TINGGI'),
(77, 'Togar Tampubolon', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(78, 'Tohom Manulang', 0.7917, 0.7905, 0.7905, 0.7943, 0.7943, 0, 'TIDAK TERMASUK'),
(79, 'Tongan Siahaan', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, 'KECIL'),
(80, 'Wilter Simanulang', 0.2188, 0.2174, 0.2174, 0.2199, 0.2199, 1, 'KECIL');

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
(739, '3789895598310977', 'PADI', 0.6, 55, 55, 36, 36, -1),
(740, '4022284841630607', 'PADI', 2.4, 220, 220, 144, 144, -1),
(741, '1619024883024394', 'PADI', 4.5, 412, 412, 270, 270, -1),
(742, '1857454498764127', 'PADI', 3, 275, 275, 180, 180, -1),
(743, '6009334682021290', 'PADI', 3, 275, 275, 180, 180, -1),
(744, '1637145423330366', 'PADI', 2.4, 220, 220, 144, 144, -1),
(745, '6871857197489589', 'PADI', 1.08, 99, 99, 64, 64, -1),
(746, '8083814394660294', 'PADI', 0.96, 88, 88, 57, 57, -1),
(747, '5000976625364273', 'PADI', 0.48, 44, 44, 28, 28, -1),
(748, '2273695330601185', 'PADI', 0.6, 55, 55, 36, 36, -1),
(749, '2032802325207740', 'PADI', 1.44, 132, 132, 86, 86, -1),
(750, '3953049656003713', 'PADI', 0.8, 53, 53, 29, 29, -1);

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
(739, '3789895598310977', 'PADI', 0.1146, 0.1739, 0.1739, 0.2128, 0.2128, 1, '0.087106'),
(740, '4022284841630607', 'PADI', 0.5833, 0.8261, 0.8261, 0.9787, 0.9787, 0, '0'),
(741, '1619024883024394', 'PADI', 1.1302, 1.585, 1.585, 1.8723, 1.8723, 0, '0'),
(742, '1857454498764127', 'PADI', 0.7396, 1.0435, 1.0435, 1.234, 1.234, 0, '0'),
(743, '6009334682021290', 'PADI', 0.7396, 1.0435, 1.0435, 1.234, 1.234, 0, '0'),
(744, '1637145423330366', 'PADI', 0.5833, 0.8261, 0.8261, 0.9787, 0.9787, 0, '0'),
(745, '6871857197489589', 'PADI', 0.2396, 0.3478, 0.3478, 0.4113, 0.4113, 1, '0.148536'),
(746, '8083814394660294', 'PADI', 0.2083, 0.3043, 0.3043, 0.3617, 0.3617, 1, '0.138732'),
(747, '5000976625364273', 'PADI', 0.0833, 0.1304, 0.1304, 0.156, 0.156, 1, '0.058868'),
(748, '2273695330601185', 'PADI', 0.1146, 0.1739, 0.1739, 0.2128, 0.2128, 1, '0.087106'),
(749, '2032802325207740', 'PADI', 0.3333, 0.4783, 0.4783, 0.5674, 0.5674, 1, '0.195674'),
(750, '3953049656003713', 'PADI', 0.1667, 0.166, 0.166, 0.1631, 0.1631, 1, '0');

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
(113, '2024-08-15 20:36:54', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(114, '2024-08-15 21:28:53', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(115, '2024-08-15 21:30:13', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(116, '2024-08-15 21:30:18', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(117, '2024-08-15 21:30:36', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(118, '2024-08-15 21:30:48', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(119, '2024-08-15 21:30:57', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(120, '2024-08-15 21:31:05', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(121, '2024-08-15 21:31:18', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(122, '2024-08-15 21:31:24', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(123, '2024-08-15 21:34:41', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(124, '2024-08-15 21:34:46', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(125, '2024-08-15 21:34:48', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(126, '2024-08-15 21:34:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(127, '2024-08-15 21:35:00', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(128, '2024-08-15 21:35:03', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(129, '2024-08-15 21:35:34', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(130, '2024-08-15 21:35:41', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(131, '2024-08-15 21:35:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(132, '2024-08-15 21:35:54', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(133, '2024-08-15 21:35:57', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(134, '2024-08-15 21:36:50', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(135, '2024-08-15 21:36:54', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(136, '2024-08-15 21:37:01', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(137, '2024-08-15 21:37:09', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(138, '2024-08-15 21:37:12', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(139, '2024-08-15 21:37:17', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(140, '2024-08-15 21:37:30', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(141, '2024-08-15 21:37:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(142, '2024-08-15 21:38:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(143, '2024-08-15 21:38:52', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(144, '2024-08-15 21:38:55', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(145, '2024-08-15 21:39:15', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(146, '2024-08-15 21:39:19', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(147, '2024-08-15 21:39:22', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(148, '2024-08-15 21:39:32', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(149, '2024-08-15 21:39:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(150, '2024-08-15 21:39:50', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(151, '2024-08-15 21:40:02', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(152, '2024-08-15 21:40:09', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(153, '2024-08-15 21:44:31', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(154, '2024-08-15 21:44:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(155, '2024-08-15 21:45:08', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(156, '2024-08-15 21:45:13', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(157, '2024-08-15 21:47:25', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(158, '2024-08-15 21:47:30', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(159, '2024-08-15 21:49:17', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(160, '2024-08-15 21:49:22', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(161, '2024-08-15 21:51:05', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(162, '2024-08-15 21:51:09', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(163, '2024-08-15 21:51:40', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(164, '2024-08-15 21:51:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(165, '2024-08-15 21:52:25', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(166, '2024-08-15 21:52:29', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(167, '2024-08-15 21:53:24', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(168, '2024-08-15 21:53:28', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(169, '2024-08-15 21:53:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(170, '2024-08-15 21:53:42', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(171, '2024-08-15 21:53:49', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(172, '2024-08-15 21:53:59', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(173, '2024-08-15 21:55:07', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(174, '2024-08-15 21:55:09', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(175, '2024-08-15 21:55:11', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(176, '2024-08-15 21:55:19', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(177, '2024-08-15 21:55:22', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(178, '2024-08-15 21:55:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(179, '2024-08-15 21:58:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(180, '2024-08-15 21:59:10', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(181, '2024-08-15 22:00:29', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(182, '2024-08-15 22:01:40', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(183, '2024-08-15 22:01:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(184, '2024-08-15 22:01:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(185, '2024-08-15 22:01:55', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(186, '2024-08-15 22:02:21', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(187, '2024-08-15 22:02:31', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(188, '2024-08-15 22:02:33', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(189, '2024-08-15 22:02:42', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(190, '2024-08-15 22:02:50', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(191, '2024-08-15 22:03:01', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(192, '2024-08-15 22:08:30', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(193, '2024-08-15 22:10:14', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(194, '2024-08-15 22:10:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(195, '2024-08-15 22:10:52', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(196, '2024-08-15 22:13:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(197, '2024-08-15 22:13:49', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(198, '2024-08-15 22:14:03', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(199, '2024-08-15 22:14:20', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(200, '2024-08-15 22:14:27', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(201, '2024-08-15 22:14:39', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(202, '2024-08-15 22:16:07', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(203, '2024-08-15 22:16:54', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(204, '2024-08-15 22:17:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(205, '2024-08-15 22:17:48', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(206, '2024-08-15 22:17:55', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(207, '2024-08-15 22:18:04', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(208, '2024-08-15 22:18:13', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(209, '2024-08-15 22:20:44', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(210, '2024-08-15 22:21:02', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(211, '2024-08-15 22:21:35', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(212, '2024-08-15 22:26:58', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(213, '2024-08-15 22:27:10', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(214, '2024-08-15 22:29:50', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(215, '2024-08-15 22:29:55', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(216, '2024-08-15 22:32:05', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(217, '2024-08-15 22:34:36', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(218, '2024-08-15 22:37:52', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(219, '2024-08-15 22:38:03', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(220, '2024-08-15 22:38:05', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(221, '2024-08-15 22:38:15', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(222, '2024-08-15 22:38:21', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(223, '2024-08-15 22:38:40', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(224, '2024-08-15 22:38:47', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(225, '2024-08-15 22:39:31', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(226, '2024-08-15 22:39:33', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(227, '2024-08-15 22:39:39', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(228, '2024-08-15 22:39:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(229, '2024-08-15 22:39:54', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(230, '2024-08-15 22:40:03', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(231, '2024-08-15 22:42:43', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(232, '2024-08-15 22:45:13', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(233, '2024-08-15 22:45:14', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(234, '2024-08-15 22:45:25', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(235, '2024-08-15 22:45:31', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(236, '0000-00-00 00:00:00', 'true', '1234567890123456'),
(237, '2024-08-16 06:15:18', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(238, '2024-08-16 06:15:21', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(239, '2024-08-16 06:15:29', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(240, '2024-08-16 06:15:34', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(241, '2024-08-16 06:22:15', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(242, '2024-08-16 06:23:19', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(243, '2024-08-16 06:23:22', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(244, '2024-08-16 06:24:42', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456'),
(245, '2024-08-16 06:24:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(246, '2024-08-16 06:24:51', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(247, '2024-08-16 06:25:15', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456'),
(248, '2024-08-16 06:25:21', 'HOMEPAGE :  user => ( id = ) ; result => true', '1234567890123456');

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
('1619024883024394', '1723764318', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('1637145423330366', '1723764321', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('1857454498764127', '1723764319', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('2032802325207740', '1723764326', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('2273695330601185', '1723764325', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('3789895598310977', '1723764316', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('3953049656003713', '1723764327', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('4022284841630607', '1723764317', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('5000976625364273', '1723764324', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('6009334682021290', '1723764320', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('6871857197489589', '1723764322', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16'),
('8083814394660294', '1723764323', '9a29d41dc9046a0df63a94a6881d996f', 1, 2, '2024-08-16');

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
('1619024883024394', 'Sumardin Sibarani', 'Mok-Mok', '', 'email@gmail.com', '6282122222222'),
('1637145423330366', 'Pitta Pangaribuan', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('1857454498764127', 'Makdun Panjaitan ', 'Mok-Mok', '', 'email@gmail.com', '6282122222222'),
('2032802325207740', 'Jampi Sitorus Pane', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('2273695330601185', 'Edihot Sinaga', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('3789895598310977', 'Tumindang Panjaitan', 'Mok-Mok', '', 'email@gmail.com', '6282122222222'),
('3953049656003713', 'Tinus Gultom', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('4022284841630607', 'Manganar Manik', 'Mok-Mok', '', 'email@gmail.com', '6282122222222'),
('5000976625364273', 'Kostan Silaen', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('6009334682021290', 'Briston Sitorus', 'Mok-Mok', '', 'email@gmail.com', '6282122222222'),
('6871857197489589', 'Sadar Turnip', 'Sukarame', '', 'email@gmail.com', '6282122222222'),
('8083814394660294', 'Sahala Sirait', 'Sukarame', '', 'email@gmail.com', '6282122222222');

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
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `data_testing_normalized`
--
ALTER TABLE `data_testing_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `data_uji_normalized`
--
ALTER TABLE `data_uji_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
