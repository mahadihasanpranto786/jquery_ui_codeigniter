-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 02:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jute_mill`
--

-- --------------------------------------------------------

--
-- Table structure for table `financial_year`
--

CREATE TABLE `financial_year` (
  `fy_id` int(11) NOT NULL,
  `fy_title` varchar(500) NOT NULL,
  `fy_start_date` date DEFAULT NULL,
  `fy_end_date` date DEFAULT NULL,
  `fy_description` varchar(1000) NOT NULL,
  `fy_status` int(11) NOT NULL,
  `fy_created_by` int(11) NOT NULL,
  `fy_created_at` datetime NOT NULL,
  `fy_updated_by` int(11) NOT NULL,
  `fy_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financial_year`
--

INSERT INTO `financial_year` (`fy_id`, `fy_title`, `fy_start_date`, `fy_end_date`, `fy_description`, `fy_status`, `fy_created_by`, `fy_created_at`, `fy_updated_by`, `fy_updated_at`) VALUES
(1, '2019-20', '2019-07-01', '2020-06-30', 'July 2019 to June 2020 ', 1, 1, '2021-04-21 10:12:00', 2, '2021-11-23 13:56:00'),
(2, '2020-21', '2020-07-01', '2021-06-30', 'July 2020 to June 2021 ', 1, 2, '2021-04-17 09:54:00', 2, '2021-11-23 13:53:00'),
(3, '2021-22', '2021-07-01', '2022-06-30', 'nn', 1, 2, '2021-11-23 13:57:00', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financial_year`
--
ALTER TABLE `financial_year`
  ADD PRIMARY KEY (`fy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financial_year`
--
ALTER TABLE `financial_year`
  MODIFY `fy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
