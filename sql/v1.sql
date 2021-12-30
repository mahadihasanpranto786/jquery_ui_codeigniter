-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 12:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jquery_ui_codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `accordion`
--

CREATE TABLE `accordion` (
  `a_id` int(11) NOT NULL,
  `a_title` varchar(111) NOT NULL,
  `a_country` varchar(111) NOT NULL,
  `a_paragraph` varchar(111) NOT NULL,
  `a_description` varchar(111) NOT NULL,
  `a_car` varchar(111) NOT NULL,
  `a_created_at` datetime(6) NOT NULL,
  `a_created_by` int(11) NOT NULL,
  `a_updated_at` datetime(6) NOT NULL,
  `a_updated_by` int(11) NOT NULL,
  `a_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accordion`
--

INSERT INTO `accordion` (`a_id`, `a_title`, `a_country`, `a_paragraph`, `a_description`, `a_car`, `a_created_at`, `a_created_by`, `a_updated_at`, `a_updated_by`, `a_status`) VALUES
(1, 'Section one', 'Bangladesh', 'this is a paragraph', '<p>this is a description<br></p>', 'SUV', '2021-12-30 17:18:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(2, 'Section two', 'Bangladesh', 'this is paragraph', '<p>this is paragraph<br></p>', 'SUV', '2021-12-30 17:29:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(3, 'Section two', 'Bangladesh', 'this is paragraph', '<p>this is paragraph<br></p>', 'SUV', '2021-12-30 17:29:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 'wef', 'Bangladesh', 'wef', '<p>wef<br></p>', 'Compact car', '2021-12-30 17:34:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(5, 'qewe', 'Bangladesh', 'qeq', '<p>wefeqweq<br></p>', 'Full size car', '2021-12-30 17:35:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(6, 'wf', 'Bangladesh', 'rf', '<p>wef<br></p>', 'SUV', '2021-12-30 17:38:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(7, 'df', 'Bangladesh', 'fdf', '<p>dfdf<br></p>', 'SUV', '2021-12-30 17:39:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(8, 'this is paragraph', 'Bangladesh', 'this is paragraph', '<p>this is paragraph<br></p>', 'Full size car', '2021-12-30 17:54:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(9, 'this is paragraph', 'Bangladesh', 'this is paragraph', '', 'Luxury', '2021-12-30 17:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `id` int(11) NOT NULL,
  `credential` varchar(250) NOT NULL,
  `a_key` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `cash_on_hand` decimal(10,0) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`id`, `credential`, `a_key`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `cash_on_hand`, `owner_id`, `user_type`) VALUES
(1, '01674514499', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-02-07 11:36:55', 1, 1, '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `autocomplete`
--

CREATE TABLE `autocomplete` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autocomplete`
--

INSERT INTO `autocomplete` (`a_id`, `a_name`) VALUES
(1, 'Abcd'),
(2, 'Abcdef'),
(3, 'bcdef'),
(5, 'Shohan'),
(7, 'Rimon'),
(8, 'Pranto'),
(9, 'Sajib');

-- --------------------------------------------------------

--
-- Table structure for table `datepicker`
--

CREATE TABLE `datepicker` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(111) NOT NULL,
  `d_date` date NOT NULL,
  `d_created_at` datetime(6) NOT NULL,
  `d_created_by` int(11) NOT NULL,
  `d_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datepicker`
--

INSERT INTO `datepicker` (`d_id`, `d_name`, `d_date`, `d_created_at`, `d_created_by`, `d_status`) VALUES
(39, 'asxs', '2021-12-28', '2021-12-26 09:58:00.000000', 1, 1),
(63, 'sdf', '2021-12-06', '2021-12-27 10:04:00.000000', 1, 1),
(64, 'dfg', '2021-12-13', '2021-12-27 10:05:00.000000', 1, 1),
(65, 'zdf', '1970-01-01', '2021-12-27 10:06:00.000000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dragdrop`
--

CREATE TABLE `dragdrop` (
  `d_id` int(11) NOT NULL,
  `d_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `d_created_at` datetime NOT NULL,
  `d_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dragdrop`
--

INSERT INTO `dragdrop` (`d_id`, `d_file_name`, `d_created_at`, `d_created_by`) VALUES
(14, '16395770394152.JPEG', '2021-12-28 12:45:00', 2),
(15, '16395770394153.JPEG', '2021-12-28 12:45:00', 2),
(16, '16395770394154.JPEG', '2021-12-28 12:52:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_star`
--

CREATE TABLE `rating_star` (
  `rs_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `rs_created_at` datetime(6) NOT NULL,
  `rs_created_by` int(11) NOT NULL,
  `rs_updated_at` datetime(6) NOT NULL,
  `rs_updated_by` int(11) NOT NULL,
  `rs_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_star`
--

INSERT INTO `rating_star` (`rs_id`, `s_id`, `a_id`, `rs_created_at`, `rs_created_by`, `rs_updated_at`, `rs_updated_by`, `rs_status`) VALUES
(1, 2, 0, '2021-12-30 17:15:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(2, 2, 0, '2021-12-30 17:16:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(3, 1, 0, '2021-12-30 17:18:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 4, 0, '2021-12-30 17:18:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(5, 1, 1, '2021-12-30 17:34:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(6, 3, 1, '2021-12-30 17:34:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(7, 4, 1, '2021-12-30 17:35:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(8, 2, 1, '2021-12-30 17:38:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(9, 2, 8, '2021-12-30 17:54:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(10, 2, 9, '2021-12-30 17:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(11, 3, 9, '2021-12-30 17:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(12, 4, 9, '2021-12-30 17:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(13, 5, 9, '2021-12-30 17:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resizable`
--

CREATE TABLE `resizable` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(111) NOT NULL,
  `r_img_url` varchar(111) NOT NULL,
  `r_created_at` datetime(6) NOT NULL,
  `r_created_by` int(11) NOT NULL,
  `r_updated_at` datetime(6) NOT NULL,
  `r_updated_by` int(11) NOT NULL,
  `r_status` int(11) NOT NULL,
  `r_height` varchar(111) NOT NULL,
  `r_width` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resizable`
--

INSERT INTO `resizable` (`r_id`, `r_name`, `r_img_url`, `r_created_at`, `r_created_by`, `r_updated_at`, `r_updated_by`, `r_status`, `r_height`, `r_width`) VALUES
(4, 'Birds images', 'pexels-andré-lisatchok-2226006.jpg', '2021-12-28 19:20:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '75px', '190px'),
(5, 'Frank birds', 'pexels-frank-cone-2629372.jpg', '2021-12-28 19:21:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '80px', '46px'),
(6, 'Pixabay images', 'pexels-pixabay-45851.jpg', '2021-12-28 19:21:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '109px', '54px'),
(7, 'Pixbay birds', 'pexels-pixabay-37833.jpg', '2021-12-28 19:22:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '112px', '91px'),
(8, 'ertwe', 'pexels-pixabay-162140.jpg', '2021-12-28 19:22:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '127px', '166px'),
(9, 'PixBay Birds', 'pexels-pixabay-459198.jpg', '2021-12-28 20:17:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '62px', '84px'),
(10, 'Another Images', 'pexels-wang-teck-heng-117139.jpg', '2021-12-29 10:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1, '39px', '37px'),
(11, 'dred', 'pexels-philippe-donn-1133957.jpg', '2021-12-29 12:43:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1, '48px', '32px'),
(12, 'sdfsdf', 'pexels-pixabay-458511.jpg', '2021-12-29 19:36:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '50px', '50px');

-- --------------------------------------------------------

--
-- Table structure for table `show`
--

CREATE TABLE `show` (
  `s_id` int(11) NOT NULL,
  `s_text_area1` varchar(111) NOT NULL,
  `s_text_area2` varchar(111) NOT NULL,
  `s_text_area3` varchar(111) NOT NULL,
  `s_status` int(11) NOT NULL,
  `s_created_at` datetime(6) NOT NULL,
  `s_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `show`
--

INSERT INTO `show` (`s_id`, `s_text_area1`, `s_text_area2`, `s_text_area3`, `s_status`, `s_created_at`, `s_created_by`) VALUES
(21, 'sdf', 'sdfs', 'dfsdf', 0, '2021-12-26 11:59:00.000000', 3),
(22, 'sdfsd', 'fsdf', 'sdfsd', 1, '2021-12-26 11:59:00.000000', 3),
(61, 'dfgdfg', 'dfgdfg', 'dfgdfg', 1, '2021-12-26 18:30:00.000000', 2),
(62, 'sdf', 'sdfsdf', 'sdfs', 1, '2021-12-26 18:31:00.000000', 2),
(63, 'sdfvsdf', 'sdf', 'sdfsf', 1, '2021-12-26 19:49:00.000000', 2),
(64, 'sdvfs', 'dfsdf', 'sdfs', 1, '2021-12-26 19:49:00.000000', 2),
(65, 'sdfs', 'dfsdf', 'sdf', 1, '2021-12-26 19:50:00.000000', 2),
(68, ' vb', 'cvbcvb', 'cvbcv', 1, '2021-12-26 19:55:00.000000', 2),
(69, 'cvbcv', 'bcvb', 'cvb', 1, '2021-12-26 19:55:00.000000', 2),
(70, '  .nkljk', 'lkl', 'jkljl', 1, '2021-12-26 19:57:00.000000', 2),
(71, 'jhnkh', 'jkhjkhj', 'khjkhjk', 1, '2021-12-26 19:59:00.000000', 2),
(72, 'sdfsd', 'fsdf', 'sdfsdf', 1, '2021-12-27 10:39:00.000000', 1),
(73, 'sdfsd', 'fsdf', 'sdfs', 1, '2021-12-27 19:20:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sortable`
--

CREATE TABLE `sortable` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(111) NOT NULL,
  `s_address` varchar(111) NOT NULL,
  `s_email` varchar(1111) NOT NULL,
  `s_phone` varchar(111) NOT NULL,
  `s_order` varchar(111) NOT NULL,
  `s_status` int(11) NOT NULL,
  `s_created_at` datetime(6) NOT NULL,
  `s_created_by` int(11) NOT NULL,
  `s_updated_at` datetime(6) NOT NULL,
  `s_updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sortable`
--

INSERT INTO `sortable` (`s_id`, `s_name`, `s_address`, `s_email`, `s_phone`, `s_order`, `s_status`, `s_created_at`, `s_created_by`, `s_updated_at`, `s_updated_by`) VALUES
(13, 'xdfgdsdfsdfsdf', 'sdgs', 'gsdfg', 'sdfsdsdfsf', '2', 1, '2021-12-27 10:36:00.000000', 1, '0000-00-00 00:00:00.000000', 0),
(14, 'kfhdfsdfsftyutyutyusdxdxdxdxd', 'fsdf', 'sdf', 'sdfs', '1', 1, '2021-12-28 11:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0),
(15, 'sf', 'sdf', 'sdf', 'sdf', '3', 1, '2021-12-27 10:39:00.000000', 1, '0000-00-00 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `s_id` int(11) NOT NULL,
  `s_title` varchar(111) NOT NULL,
  `s_created_at` datetime(6) NOT NULL,
  `s_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`s_id`, `s_title`, `s_created_at`, `s_created_by`) VALUES
(1, 'one star', '0000-00-00 00:00:00.000000', 0),
(2, 'two star', '0000-00-00 00:00:00.000000', 0),
(3, 'three star', '0000-00-00 00:00:00.000000', 0),
(4, 'four star', '0000-00-00 00:00:00.000000', 0),
(5, 'five star', '0000-00-00 00:00:00.000000', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accordion`
--
ALTER TABLE `accordion`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autocomplete`
--
ALTER TABLE `autocomplete`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `datepicker`
--
ALTER TABLE `datepicker`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `dragdrop`
--
ALTER TABLE `dragdrop`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_star`
--
ALTER TABLE `rating_star`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `resizable`
--
ALTER TABLE `resizable`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `sortable`
--
ALTER TABLE `sortable`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accordion`
--
ALTER TABLE `accordion`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `autocomplete`
--
ALTER TABLE `autocomplete`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `datepicker`
--
ALTER TABLE `datepicker`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `dragdrop`
--
ALTER TABLE `dragdrop`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_star`
--
ALTER TABLE `rating_star`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `resizable`
--
ALTER TABLE `resizable`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `show`
--
ALTER TABLE `show`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sortable`
--
ALTER TABLE `sortable`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
