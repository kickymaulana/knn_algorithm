-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Aug 04, 2024 at 02:36 AM
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
  `data_label` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `data_label` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(44, '2024-08-04 09:35:26', 'HOMEPAGE :  user => root( id = 1234567890123456) ; result => true', '1234567890123456');

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
('1234567890123456', 'root', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2024-08-02');

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
('1234567890123456', 'ROOT', 'jl sei balai', '', '', '');

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
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `data_testing_normalized`
--
ALTER TABLE `data_testing_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `data_uji_normalized`
--
ALTER TABLE `data_uji_normalized`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
