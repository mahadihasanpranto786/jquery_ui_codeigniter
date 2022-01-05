-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 05:06 AM
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
(1, 'Section One', 'Bangladesh', 'This is a paragraph', '<p>This is description<br></p>', 'Luxury', '2021-12-30 19:28:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(2, 'Lorem', 'Bangladesh', 'LoremLoremLoremLoremLoremLoremLoremLorem', '<p>LoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLoremLorem<br></p>', 'Van', '2021-12-30 19:28:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(3, 'Sectiobn tow', 'Bangladesh', 'Lorem', '<p>Lorem Lorem<br></p>', 'Compact car', '2021-12-30 19:30:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 'Lorem', 'Paris', 'Lorem', '<h2>Lorem<br></h2><ol><li>LoremLorem<b>LoremLoremLoremLoremLoremLorem</b>LoremLoremLoremLoremLorem</li></ol>', 'Compact car', '2021-12-30 19:30:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(5, 'dsf', 'Paris', 'sdfsdf', '<p>sdfsdf<br></p>', 'SUV', '2022-01-02 09:48:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(6, 'Shohan', 'Bangladesh', 'dsfsdf', 'cfsdfsdf', 'Van', '2022-01-02 09:49:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(7, 'Accordion Title', 'Bangladesh', 'Paragraph', '<p>Paragraph<br></p>', 'Compact car', '2022-01-02 21:04:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(8, 'section 5', 'Bangladesh', 'paraagraph', '<p>description<br></p>', 'Compact car', '2022-01-02 21:08:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(9, 'Section 6', 'Bangladesh', 'fdfsdf', '<p>sdfsdfsdfsd<br></p>', 'Full size car', '2022-01-04 16:31:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

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
-- Table structure for table `dialog`
--

CREATE TABLE `dialog` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(111) NOT NULL,
  `d_address` varchar(111) NOT NULL,
  `d_description` varchar(111) NOT NULL,
  `d_created_at` datetime(6) NOT NULL,
  `d_created_by` int(11) NOT NULL,
  `d_updated_at` datetime(6) NOT NULL,
  `d_updated_by` int(11) NOT NULL,
  `d_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dialog`
--

INSERT INTO `dialog` (`d_id`, `d_name`, `d_address`, `d_description`, `d_created_at`, `d_created_by`, `d_updated_at`, `d_updated_by`, `d_status`) VALUES
(6, 'sdfsdf', 'sdfsdfsdfvsdfsdf', '<p>sdfsdfsdfsdf<br></p>', '2022-01-01 21:32:00.000000', 1, '2022-01-02 09:46:00.000000', 3, 1);

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
(16, '16395770394154.JPEG', '2021-12-28 12:52:00', 2),
(17, 'pexels-pixabay-458512.jpg', '2022-01-04 20:03:00', 1);

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
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `m_id` int(11) NOT NULL,
  `m_title` varchar(111) NOT NULL,
  `m_created_at` datetime(6) NOT NULL,
  `m_created_by` int(11) NOT NULL,
  `m_updated_at` datetime(6) NOT NULL,
  `m_updated_by` int(11) NOT NULL,
  `m_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`m_id`, `m_title`, `m_created_at`, `m_created_by`, `m_updated_at`, `m_updated_by`, `m_status`) VALUES
(1, 'India', '2022-01-02 19:17:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(2, 'Bangladesh', '2022-01-02 19:19:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(3, 'America', '2022-01-02 19:40:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(4, 'Thailand', '2022-01-02 20:11:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1);

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
(1, 5, 1, '2021-12-30 19:28:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(2, 1, 2, '2021-12-30 19:28:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(3, 4, 2, '2021-12-30 19:28:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 2, 3, '2021-12-30 19:30:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(5, 3, 4, '2021-12-30 19:30:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(6, 2, 5, '2022-01-02 09:48:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(7, 3, 5, '2022-01-02 09:48:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(8, 4, 5, '2022-01-02 09:48:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(9, 1, 6, '2022-01-02 09:49:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1),
(10, 1, 7, '2022-01-02 21:04:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(11, 3, 7, '2022-01-02 21:04:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(12, 4, 8, '2022-01-02 21:08:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(13, 3, 8, '2022-01-02 21:08:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(14, 1, 8, '2022-01-02 21:08:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(15, 4, 9, '2022-01-04 16:31:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(16, 3, 9, '2022-01-04 16:31:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(17, 1, 9, '2022-01-04 16:31:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

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
(4, 'Birds images', 'pexels-andré-lisatchok-2226006.jpg', '2021-12-28 19:20:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '158px', '154px'),
(5, 'Frank birds', 'pexels-frank-cone-2629372.jpg', '2021-12-28 19:21:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '202px', '172px'),
(6, 'Pixabay images', 'pexels-pixabay-45851.jpg', '2021-12-28 19:21:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '249px', '158px'),
(7, 'Pixbay birds', 'pexels-pixabay-37833.jpg', '2021-12-28 19:22:00.000000', 3, '0000-00-00 00:00:00.000000', 0, 1, '227px', '182px');

-- --------------------------------------------------------

--
-- Table structure for table `selectmenu`
--

CREATE TABLE `selectmenu` (
  `s_menu_id` int(11) NOT NULL,
  `s_menu_title` varchar(111) NOT NULL,
  `s_menu_sub_title` varchar(111) DEFAULT NULL,
  `s_menu_sub_sub_title` varchar(111) DEFAULT NULL,
  `s_menu_created_at` datetime(6) NOT NULL,
  `s_menu_created_by` int(11) NOT NULL,
  `s_menu_updated_at` datetime(6) NOT NULL,
  `s_menu_updated_by` int(11) NOT NULL,
  `s_menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selectmenu`
--

INSERT INTO `selectmenu` (`s_menu_id`, `s_menu_title`, `s_menu_sub_title`, `s_menu_sub_sub_title`, `s_menu_created_at`, `s_menu_created_by`, `s_menu_updated_at`, `s_menu_updated_by`, `s_menu_status`) VALUES
(1, 'Bangladesh', 'Dhaka', 'Rajbari', '2022-01-03 18:37:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 0),
(2, 'India', 'kolkata', NULL, '2022-01-03 18:36:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 0),
(3, 'Bangladesh', 'Dhaka', 'Faridpur', '2022-01-03 18:37:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 'India', 'mumbai', NULL, '2022-01-04 21:06:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

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
-- Table structure for table `slider_range`
--

CREATE TABLE `slider_range` (
  `sr_id` int(11) NOT NULL,
  `sr_name` varchar(111) NOT NULL,
  `sr_price` int(11) NOT NULL,
  `sr_img` varchar(111) NOT NULL,
  `sr_created_at` datetime(6) NOT NULL,
  `sr_created_by` int(11) NOT NULL,
  `sr_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider_range`
--

INSERT INTO `slider_range` (`sr_id`, `sr_name`, `sr_price`, `sr_img`, `sr_created_at`, `sr_created_by`, `sr_status`) VALUES
(1, 'Birds', 1000, 'pexels-roshan-kamath-1661179.jpg', '2022-01-03 20:23:00.000000', 1, 1),
(2, 'Moina', 6000, 'pexels-pixabay-378331.jpg', '2022-01-03 20:24:00.000000', 1, 1),
(3, 'Coroi', 3000, 'pexels-frank-cone-26293721.jpg', '2022-01-03 20:25:00.000000', 1, 1),
(4, 'dfasd', 2000, 'pexels-pixabay-1621401.jpg', '2022-01-03 22:15:00.000000', 1, 1),
(5, 'Sundor', 4000, 'pexels-philippe-donn-11339571.jpg', '2022-01-03 22:17:00.000000', 1, 1);

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
(13, 'xdfgdsdfsdfsdf', 'sdgs', 'gsdfg', 'sdfsdsdfsf', '3', 1, '2021-12-27 10:36:00.000000', 1, '0000-00-00 00:00:00.000000', 0),
(14, 'kfhdfsdfsftyutyutyusdxdxdxdxd', 'fsdf', 'sdf', 'sdfs', '1', 1, '2021-12-28 11:55:00.000000', 1, '0000-00-00 00:00:00.000000', 0),
(15, 'sf', 'sdf', 'sdf', 'sdf', '2', 1, '2021-12-27 10:39:00.000000', 1, '0000-00-00 00:00:00.000000', 0);

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
(1, 'One Star', '0000-00-00 00:00:00.000000', 0),
(2, 'Two Star', '0000-00-00 00:00:00.000000', 0),
(3, 'Three Star', '0000-00-00 00:00:00.000000', 0),
(4, 'Four Star', '0000-00-00 00:00:00.000000', 0),
(5, 'Five Star', '0000-00-00 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `sm_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `sm_title` varchar(111) NOT NULL,
  `sm_created_at` datetime(6) NOT NULL,
  `sm_created_by` int(11) NOT NULL,
  `sm_updated_at` datetime(6) NOT NULL,
  `sm_updated_by` int(11) NOT NULL,
  `sm_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`sm_id`, `m_id`, `sm_title`, `sm_created_at`, `sm_created_by`, `sm_updated_at`, `sm_updated_by`, `sm_status`) VALUES
(1, 2, 'Dhaka', '2022-01-02 20:00:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(2, 2, 'Chittagong', '2022-01-02 20:04:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(3, 4, 'Ekran', '2022-01-02 20:11:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(4, 4, 'rush', '2022-01-02 20:13:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(5, 4, 'thsnci', '2022-01-02 20:17:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(6, 1, 'kolkata', '2022-01-02 20:29:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(7, 1, 'mumbai', '2022-01-02 20:29:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_menu`
--

CREATE TABLE `sub_sub_menu` (
  `ssm_id` int(11) NOT NULL,
  `sm_id` int(11) NOT NULL,
  `ssm_title` varchar(111) NOT NULL,
  `ssm_created_at` datetime(6) NOT NULL,
  `ssm_created_by` int(11) NOT NULL,
  `ssm_updated_at` datetime(6) NOT NULL,
  `ssm_updated_by` int(11) NOT NULL,
  `ssm_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_sub_menu`
--

INSERT INTO `sub_sub_menu` (`ssm_id`, `sm_id`, `ssm_title`, `ssm_created_at`, `ssm_created_by`, `ssm_updated_at`, `ssm_updated_by`, `ssm_status`) VALUES
(1, 1, 'Rajbari', '2022-01-02 20:01:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(2, 1, 'Faridpur', '2022-01-02 20:04:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(3, 2, 'cox\'s bazer', '2022-01-02 20:10:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(4, 3, 'markis', '2022-01-02 20:12:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(5, 3, 'olindo', '2022-01-02 20:12:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(6, 3, 'maken', '2022-01-02 20:12:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(7, 4, 'worthi', '2022-01-02 20:21:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1),
(8, 7, 'tamil', '2022-01-02 20:30:00.000000', 2, '0000-00-00 00:00:00.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabs`
--

CREATE TABLE `tabs` (
  `t_id` int(11) NOT NULL,
  `t_title` varchar(111) NOT NULL,
  `t_description` varchar(1111) NOT NULL,
  `t_position` int(11) NOT NULL,
  `t_created_at` datetime(6) NOT NULL,
  `t_created_by` int(11) NOT NULL,
  `t_updated_at` datetime(6) NOT NULL,
  `t_updated_by` int(11) NOT NULL,
  `t_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabs`
--

INSERT INTO `tabs` (`t_id`, `t_title`, `t_description`, `t_position`, `t_created_at`, `t_created_by`, `t_updated_at`, `t_updated_by`, `t_status`) VALUES
(1, 'Tabs One', '<p>Proin elit arcu, rutrum commodo,Proin elit arcu, Proin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. CurabituProin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabiturutrum commodo, vehicula tempus, commodo a, risus. CurabituProin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.', 3, '2022-01-04 12:23:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(2, 'Tabs Two', '<p>Proin elit arcu, rutrum commPProin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.roin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. CurabituProin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. CurabituProin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabituodo, vehicula tempus, commodo a, risus. \r\nCurabitur nec arcu. Donec sollicitudin ', 4, '2022-01-04 12:35:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(3, 'Tabs Three', '<p>m quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.roin elit arcu, rutrum commodo,Proin elit arcu, rutrum commodote. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.lative to the viewport, wh', 1, '2022-01-04 15:23:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(4, 'Tab Four', '<p>An element with <code class=\"w3-codespan\">position: fixed;</code> is \npositioned reProin elit arcu, rutrum commodo, vehicula tempus, commodo \na, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam\n elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris \ndapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed \nmagna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor\n vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris \nvel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. \nPhasellus ipsum. Nunc tristique tempus lectus.lative to the viewport, wh</p>', 2, '2022-01-04 16:53:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1),
(5, 'Tabe Five', '<p>An element with <code class=\"w3-codespan\">position: fixed;</code> is \npositioned reProin elit arcu, rutrum commodo, vehicula tempus, commodo \na, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam\n elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris \ndapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed \nmagna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor\n vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris \nvel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. \nPhasellus ipsum. Nunc tristique tempus lectus.lative to the viewport, wh</p>', 5, '2022-01-04 17:59:00.000000', 1, '0000-00-00 00:00:00.000000', 0, 1);

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
-- Indexes for table `dialog`
--
ALTER TABLE `dialog`
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
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`m_id`);

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
-- Indexes for table `selectmenu`
--
ALTER TABLE `selectmenu`
  ADD PRIMARY KEY (`s_menu_id`);

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `slider_range`
--
ALTER TABLE `slider_range`
  ADD PRIMARY KEY (`sr_id`);

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
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `sub_sub_menu`
--
ALTER TABLE `sub_sub_menu`
  ADD PRIMARY KEY (`ssm_id`);

--
-- Indexes for table `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`t_id`);

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
-- AUTO_INCREMENT for table `dialog`
--
ALTER TABLE `dialog`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dragdrop`
--
ALTER TABLE `dragdrop`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating_star`
--
ALTER TABLE `rating_star`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `resizable`
--
ALTER TABLE `resizable`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `selectmenu`
--
ALTER TABLE `selectmenu`
  MODIFY `s_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `show`
--
ALTER TABLE `show`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `slider_range`
--
ALTER TABLE `slider_range`
  MODIFY `sr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_sub_menu`
--
ALTER TABLE `sub_sub_menu`
  MODIFY `ssm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tabs`
--
ALTER TABLE `tabs`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
