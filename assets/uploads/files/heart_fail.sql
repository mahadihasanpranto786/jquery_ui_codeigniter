-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 12:01 PM
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
-- Database: `heart_fail`
--

-- --------------------------------------------------------

--
-- Table structure for table `af_status`
--

CREATE TABLE `af_status` (
  `as_id` int(11) NOT NULL,
  `as_title` varchar(255) NOT NULL,
  `as_created_at` datetime NOT NULL,
  `as_created_by` int(255) NOT NULL,
  `as_updated_at` datetime NOT NULL,
  `as_updated_by` int(255) NOT NULL,
  `as_status` int(255) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `af_status`
--

INSERT INTO `af_status` (`as_id`, `as_title`, `as_created_at`, `as_created_by`, `as_updated_at`, `as_updated_by`, `as_status`) VALUES
(4, 'Permanent', '2021-03-20 11:20:00', 2, '0000-00-00 00:00:00', 0, 1),
(5, 'Paroxysmal', '2021-03-20 11:20:00', 2, '0000-00-00 00:00:00', 0, 1),
(6, 'Persistent', '2021-03-20 11:20:00', 2, '0000-00-00 00:00:00', 0, 1),
(7, 'NSR', '2021-03-20 11:20:00', 2, '0000-00-00 00:00:00', 0, 1);

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
(1, '01674514499', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-02-07 11:36:55', 1, 1, '1', 1, 1),
(2, '01674514400', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-02-07 11:36:55', 1, 1, '1', 1, 0),
(3, '01674514401', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-02-07 11:36:55', 1, 1, '1', 1, 3),
(4, '01674514402', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-02-07 11:36:55', 1, 1, '1', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `call_rules_if_unavailable`
--

CREATE TABLE `call_rules_if_unavailable` (
  `cru_id` int(11) NOT NULL,
  `cru_title` varchar(255) NOT NULL,
  `cru_created_at` datetime NOT NULL,
  `cru_created_by` int(11) NOT NULL,
  `cru_updated_at` datetime DEFAULT NULL,
  `cru_updated_by` int(11) NOT NULL,
  `cru_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_rules_if_unavailable`
--

INSERT INTO `call_rules_if_unavailable` (`cru_id`, `cru_title`, `cru_created_at`, `cru_created_by`, `cru_updated_at`, `cru_updated_by`, `cru_status`) VALUES
(1, 'No Resone', '2021-05-08 11:39:00', 2, '2021-05-08 11:41:00', 2, 1),
(2, 'Not Interested', '2021-05-08 11:39:00', 2, NULL, 0, 1),
(3, 'Busy At the Moment', '2021-05-08 11:39:00', 2, NULL, 0, 1),
(4, 'Uncontactable', '2021-05-08 11:39:00', 2, '2021-06-22 20:14:00', 1, 1),
(5, 'Not Done', '2021-05-08 11:39:00', 2, '2021-06-23 15:03:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cardiovascular`
--

CREATE TABLE `cardiovascular` (
  `cv_id` int(11) NOT NULL,
  `cv_title` varchar(255) NOT NULL,
  `cv_created_at` datetime NOT NULL,
  `cv_created_by` int(11) NOT NULL,
  `cv_updated_at` datetime NOT NULL,
  `cv_updated_by` int(11) NOT NULL,
  `cv_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardiovascular`
--

INSERT INTO `cardiovascular` (`cv_id`, `cv_title`, `cv_created_at`, `cv_created_by`, `cv_updated_at`, `cv_updated_by`, `cv_status`) VALUES
(8, 'Ischemic', '2021-03-20 11:09:00', 2, '0000-00-00 00:00:00', 0, 1),
(9, 'Toxic(Alcohol, Cocaine, Chemotherapeutic)', '2021-03-20 11:10:00', 2, '2021-06-23 16:10:00', 2, 1),
(10, 'Idiopathic(Dilated)', '2021-03-20 11:10:00', 2, '2021-06-23 16:09:00', 2, 1),
(11, 'Hypertrophic', '2021-03-20 11:10:00', 2, '0000-00-00 00:00:00', 0, 1),
(12, 'Restrictive (Amyloid, Sarcoid)', '2021-03-20 11:11:00', 2, '2021-06-23 16:10:00', 2, 1),
(13, 'Valvular/Rheumatic Heart Disease', '2021-03-20 11:12:00', 2, '0000-00-00 00:00:00', 0, 1),
(14, 'Hypertensive', '2021-03-20 11:12:00', 2, '2021-06-23 16:09:00', 2, 1),
(15, 'Tachycardia induced', '2021-03-20 11:12:00', 2, '0000-00-00 00:00:00', 0, 1),
(16, 'Metabolic Diseases/Hemochromatosis', '2021-03-20 11:14:00', 2, '2021-03-20 11:14:00', 2, 1),
(17, 'HIV and Viral Cardiomyopathy', '2021-03-20 11:14:00', 2, '2021-06-23 16:08:00', 2, 1),
(18, 'Inflammatory Cardiomyopathy', '2021-03-20 11:14:00', 2, '0000-00-00 00:00:00', 0, 1),
(19, 'Arrhythmia', '2021-08-06 18:07:00', 1, '0000-00-00 00:00:00', 0, 1),
(20, 'Dystolic hypertension', '2021-09-04 13:08:00', 2, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comorbidities`
--

CREATE TABLE `comorbidities` (
  `c_id` int(11) NOT NULL,
  `c_title` varchar(255) NOT NULL,
  `c_child` int(11) NOT NULL COMMENT 'parent id',
  `c_created_at` datetime NOT NULL,
  `c_created_by` int(255) NOT NULL,
  `c_updated_at` datetime NOT NULL,
  `c_updated_by` int(255) NOT NULL,
  `c_status` int(255) NOT NULL COMMENT '0=Deleted row\r\n1=active row\r\n2=active child'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comorbidities`
--

INSERT INTO `comorbidities` (`c_id`, `c_title`, `c_child`, `c_created_at`, `c_created_by`, `c_updated_at`, `c_updated_by`, `c_status`) VALUES
(11, 'Asthma', 0, '2021-03-20 11:06:00', 2, '2021-06-21 15:29:00', 1, 1),
(12, 'BA', 0, '2021-03-20 11:06:00', 2, '2021-06-21 15:30:00', 1, 0),
(13, 'COPD', 0, '2021-03-20 11:06:00', 2, '2021-08-10 16:34:00', 2, 1),
(14, 'Renal Failure (CKD)', 0, '2021-03-20 11:06:00', 2, '2021-06-21 15:39:00', 1, 1),
(15, 'Associated CAD', 0, '2021-03-20 11:06:00', 2, '2021-06-21 15:30:00', 1, 1),
(16, 'Valvular Disease', 0, '2021-03-20 11:06:00', 2, '2021-06-21 15:36:00', 1, 1),
(17, 'Thyroid Dysfunction', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:36:00', 1, 1),
(18, 'Anaemia', 0, '2021-03-20 11:07:00', 2, '2021-08-10 16:36:00', 2, 1),
(19, 'Obstructive Sleep Apnoea', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:39:00', 1, 1),
(20, 'Cerebrovascular Accident', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:38:00', 1, 1),
(21, 'Severe musculoskeletal disease', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:38:00', 1, 1),
(22, 'Cancer', 0, '2021-03-20 11:07:00', 2, '0000-00-00 00:00:00', 0, 1),
(23, 'Bleeding diathesis', 0, '2021-03-20 11:08:00', 2, '2021-06-21 15:30:00', 1, 1),
(24, 'Peripheral Vascular Disease', 0, '2021-03-20 11:08:00', 2, '2021-06-21 15:42:00', 1, 1),
(25, 'i', 11, '2021-04-17 15:34:00', 2, '0000-00-00 00:00:00', 0, 0),
(26, 'CKD', 0, '2021-05-26 10:24:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `d_id` int(11) NOT NULL,
  `d_title` varchar(255) NOT NULL,
  `d_created_at` datetime NOT NULL,
  `d_created_by` int(11) NOT NULL,
  `d_updated_at` datetime NOT NULL,
  `d_updated_by` int(11) NOT NULL,
  `d_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`d_id`, `d_title`, `d_created_at`, `d_created_by`, `d_updated_at`, `d_updated_by`, `d_status`) VALUES
(1, 'AICD', '2021-06-23 12:00:00', 1, '2021-07-03 11:32:00', 2, 1),
(2, 'CRTD', '2021-06-23 12:05:00', 1, '2021-07-03 11:32:00', 2, 1),
(3, 'PPM', '2021-06-23 12:05:00', 1, '2021-07-03 11:32:00', 2, 1),
(4, 'Not Eligible', '2021-06-23 12:17:00', 1, '0000-00-00 00:00:00', 0, 0),
(5, 'TPM', '2021-07-03 11:32:00', 2, '0000-00-00 00:00:00', 0, 1),
(6, 'PPM (Single)', '2021-08-10 17:46:00', 2, '2021-08-10 17:46:00', 2, 1),
(7, 'PPM (Dual)', '2021-08-10 17:46:00', 2, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `education_level`
--

CREATE TABLE `education_level` (
  `el_id` int(11) NOT NULL,
  `el_title` varchar(255) NOT NULL,
  `el_created_at` datetime NOT NULL,
  `el_created_by` int(255) NOT NULL,
  `el_updated_at` datetime NOT NULL,
  `el_updated_by` int(255) NOT NULL,
  `el_status` int(255) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_level`
--

INSERT INTO `education_level` (`el_id`, `el_title`, `el_created_at`, `el_created_by`, `el_updated_at`, `el_updated_by`, `el_status`) VALUES
(8, 'PSC', '2021-03-20 10:18:00', 2, '2021-06-23 20:15:00', 2, 1),
(9, 'JSC', '2021-03-20 10:18:00', 2, '2021-06-23 20:15:00', 2, 1),
(10, 'SSC', '2021-03-20 10:18:00', 2, '2021-06-23 20:15:00', 2, 1),
(11, 'HSC', '2021-03-20 10:18:00', 2, '2021-06-23 20:15:00', 2, 1),
(12, 'BCS', '2021-03-20 10:18:00', 2, '2021-06-23 20:15:00', 2, 1),
(13, 'BB.s', '2021-03-20 10:19:00', 2, '2021-06-23 20:14:00', 2, 1),
(14, 'Bcom', '2021-03-20 10:19:00', 2, '2021-06-23 15:02:00', 1, 1),
(15, 'MSC', '2021-03-20 10:19:00', 2, '2021-06-23 20:15:00', 2, 1),
(17, 'Primary', '2021-05-25 16:56:00', 2, '0000-00-00 00:00:00', 0, 1),
(18, 'Secondary', '2021-05-25 16:56:00', 2, '0000-00-00 00:00:00', 0, 1),
(19, 'College', '2021-05-25 16:58:00', 2, '0000-00-00 00:00:00', 0, 1),
(20, 'Graduate', '2021-05-25 16:58:00', 2, '0000-00-00 00:00:00', 0, 1),
(21, 'Post Graduate', '2021-05-25 16:58:00', 2, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  `main_contact` varchar(100) NOT NULL,
  `treating_cardiologist` varchar(100) NOT NULL,
  `last_diet_lifestyle` varchar(100) NOT NULL,
  `last_ontrack_call_date` varchar(100) NOT NULL,
  `person_to_call` varchar(100) NOT NULL,
  `good_time_to_talk` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `felling_today` varchar(100) DEFAULT NULL,
  `pain_or_discomfort` varchar(100) DEFAULT NULL,
  `more_about_pain` varchar(100) DEFAULT NULL,
  `call_cardiologist_immediat` varchar(100) DEFAULT NULL,
  `when_did_start` varchar(100) DEFAULT NULL,
  `diagnosis_understanding` varchar(100) DEFAULT NULL,
  `have_weight_scale` varchar(100) DEFAULT NULL,
  `previous_weight` varchar(100) DEFAULT NULL,
  `current_weight` varchar(100) DEFAULT NULL,
  `dont_weight_regular` varchar(100) DEFAULT NULL,
  `according_doc_prescription` varchar(100) DEFAULT NULL,
  `pharmacy_location_reason` varchar(100) DEFAULT NULL,
  `no_pills` varchar(100) DEFAULT NULL,
  `reason_non_medic` varchar(100) DEFAULT NULL,
  `o_patient_status` varchar(100) DEFAULT NULL,
  `t_plan_goal` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `diet_restriction` varchar(100) DEFAULT NULL,
  `comment_2` varchar(100) DEFAULT NULL,
  `exercise_activity` varchar(100) DEFAULT NULL,
  `comment_3` varchar(100) DEFAULT NULL,
  `fluid_restriction` varchar(100) DEFAULT NULL,
  `limiting_alcohol` varchar(100) DEFAULT NULL,
  `smoking_cessation` varchar(100) DEFAULT NULL,
  `comment_4` varchar(100) DEFAULT NULL,
  `other_medication` varchar(100) DEFAULT NULL,
  `medication_management` varchar(100) DEFAULT NULL,
  `informed_patient` varchar(100) DEFAULT NULL,
  `r_physical_health` varchar(100) DEFAULT NULL,
  `moving_chair` varchar(100) DEFAULT NULL,
  `fatigue_average` varchar(100) DEFAULT NULL,
  `pain_average` varchar(100) DEFAULT NULL,
  `consultation` varchar(100) DEFAULT NULL,
  `from_3` varchar(100) DEFAULT NULL,
  `to_3` varchar(100) DEFAULT NULL,
  `g_comment` varchar(100) DEFAULT NULL,
  `next_q` varchar(100) DEFAULT NULL,
  `new_appointment` varchar(100) DEFAULT NULL,
  `from_4` varchar(100) DEFAULT NULL,
  `to_4` varchar(100) DEFAULT NULL,
  `call_not_completed` varchar(100) DEFAULT NULL,
  `oc_status` int(11) DEFAULT NULL COMMENT '1=active\r\n0\r\n0\r\n0=inactive',
  `oc_created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `oc_created_by` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hf_type`
--

CREATE TABLE `hf_type` (
  `hf_id` int(11) NOT NULL,
  `hf_title` varchar(255) NOT NULL,
  `hf_created_at` datetime NOT NULL,
  `hf_created_by` int(255) NOT NULL,
  `hf_updated_at` datetime NOT NULL,
  `hf_updated_by` int(255) NOT NULL,
  `hf_status` int(255) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hf_type`
--

INSERT INTO `hf_type` (`hf_id`, `hf_title`, `hf_created_at`, `hf_created_by`, `hf_updated_at`, `hf_updated_by`, `hf_status`) VALUES
(4, 'HFr EF (HF with reduced EF)', '2021-03-20 11:09:00', 2, '2021-08-10 17:01:00', 2, 1),
(5, 'HFmrEF (HF with mid range EF)', '2021-03-20 11:09:00', 2, '2021-08-10 17:02:00', 2, 1),
(6, 'HFpEF (HF with preserved EF)', '2021-03-20 11:09:00', 2, '2021-06-23 16:07:00', 2, 1),
(7, 'z', '2021-04-22 16:39:00', 2, '0000-00-00 00:00:00', 0, 0),
(8, 'a', '2021-04-22 16:39:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `major_adverse_cardiac_events`
--

CREATE TABLE `major_adverse_cardiac_events` (
  `mace_id` int(11) NOT NULL,
  `mace_title` varchar(255) NOT NULL,
  `mace_child` int(11) NOT NULL COMMENT 'parent_id',
  `mace_created_at` datetime NOT NULL,
  `mace_created_by` int(11) NOT NULL,
  `mace_updated_at` datetime NOT NULL,
  `mace_updated_by` int(11) NOT NULL,
  `mace_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row\r\n2=active_child'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major_adverse_cardiac_events`
--

INSERT INTO `major_adverse_cardiac_events` (`mace_id`, `mace_title`, `mace_child`, `mace_created_at`, `mace_created_by`, `mace_updated_at`, `mace_updated_by`, `mace_status`) VALUES
(11, 'ador', 0, '2021-03-16 19:00:00', 2, '2021-03-16 19:00:00', 2, 0),
(12, 'reja', 11, '0000-00-00 00:00:00', 2, '2021-03-16 19:01:00', 2, 2),
(13, 'Hospitalization', 0, '2021-03-20 11:20:00', 2, '2021-06-23 16:14:00', 2, 0),
(14, 'Stroke', 0, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 1),
(15, 'Major Bleeding', 0, '2021-03-20 11:21:00', 2, '2021-06-23 15:00:00', 1, 1),
(16, 'Severe Arrhythmia', 0, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 1),
(17, 'Major Procedures', 0, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 1),
(18, 'Other', 0, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 1),
(19, 'Death', 0, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 0),
(20, 'Location  ', 0, '2021-03-20 11:21:00', 2, '2021-06-23 15:01:00', 1, 0),
(21, 'Home', 20, '2021-03-20 11:21:00', 2, '0000-00-00 00:00:00', 0, 2),
(22, 'Hospital', 20, '2021-03-20 11:22:00', 2, '0000-00-00 00:00:00', 0, 2),
(23, ' Reason', 0, '2021-03-20 11:22:00', 2, '2021-06-23 16:14:00', 2, 0),
(24, ' History OF hospitalization Fo rheart failure', 0, '2021-03-20 11:22:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `m_id` int(11) NOT NULL,
  `m_title` varchar(255) NOT NULL,
  `m_category_id` varchar(255) NOT NULL,
  `m_company_id` varchar(255) NOT NULL,
  `m_specification_id` varchar(255) NOT NULL,
  `m_description` varchar(255) NOT NULL,
  `m_trade_status` varchar(255) NOT NULL COMMENT '0=no child\r\nanother=parent id\r\n',
  `m_created_at` datetime NOT NULL,
  `m_created_by` int(11) NOT NULL,
  `m_updated_at` datetime DEFAULT NULL,
  `m_updated_by` int(11) NOT NULL,
  `m_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`m_id`, `m_title`, `m_category_id`, `m_company_id`, `m_specification_id`, `m_description`, `m_trade_status`, `m_created_at`, `m_created_by`, `m_updated_at`, `m_updated_by`, `m_status`) VALUES
(1, 'Carvedilol 6.25mg', '1', '3', '', '', '1', '2021-04-10 19:57:00', 2, '2021-06-24 11:04:00', 2, 0),
(2, 'Carvedilol 12.5mg', '1', '3', '', '', '1', '2021-04-10 20:25:00', 2, '2021-08-11 09:24:00', 2, 1),
(3, 'Carvedilol 25mg', '1', '3', '', '', '1', '2021-04-16 11:23:00', 2, '2021-06-24 11:05:00', 2, 1),
(4, 'Bisoprolol 2.5mg', '1', '3', '', '', '1', '2021-04-16 11:23:00', 2, '2021-06-24 11:06:00', 2, 1),
(5, 'Bisoprolol 5mg', '1', '3', '', '', '1', '2021-04-16 11:23:00', 2, '2021-06-24 11:07:00', 2, 1),
(6, 'Metoprolol 25mg', '1', '3', '', '', '1', '2021-05-22 17:47:00', 2, '2021-08-11 09:37:00', 2, 1),
(7, 'Metoprolol 50mg', '1', '3', '', '', '1', '2021-05-22 17:47:00', 2, '2021-08-11 09:37:00', 2, 1),
(8, 'Lisinopril 5mg', '2', '3', '', '', '1', '2021-05-22 17:48:00', 2, '2021-06-24 11:11:00', 2, 1),
(9, 'Lisinopril 10mg', '2', '3', '', '', '1', '2021-05-22 17:48:00', 2, '2021-06-24 11:11:00', 2, 1),
(10, 'Ramipril 1.25mg', '2', '3', '', '', '1', '2021-05-22 17:48:00', 2, '2021-06-24 11:15:00', 2, 1),
(11, 'kutta song', '', '', '', '', '', '2021-06-23 22:03:00', 2, NULL, 0, 2),
(12, 'Carvista 6.25mg', '', '', '', '', '1', '2021-06-23 22:04:00', 2, '2021-06-24 20:10:00', 1, 2),
(13, 'kutta song', '', '', '', '', '', '2021-06-23 22:08:00', 2, NULL, 0, 2),
(14, 'Cardex 6.25mg', '', '', '', '', '1', '2021-06-23 22:12:00', 2, '2021-06-24 20:10:00', 1, 2),
(15, 'Carvista 12.5mg', '', '', '', '', '2', '2021-06-23 22:12:00', 2, '2021-06-24 20:11:00', 1, 2),
(16, 'Ramipril 2.25mg', '2', '3', '', '', '1', '2021-06-24 12:10:00', 2, NULL, 0, 1),
(17, 'Ramipril 5mg', '2', '3', '', '', '1', '2021-06-24 12:12:00', 2, NULL, 0, 1),
(18, 'Valsartil 40mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, NULL, 0, 1),
(19, 'Valsartil 80mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, NULL, 0, 1),
(20, 'Valsartil 160mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, NULL, 0, 1),
(21, 'Losartan 25mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, NULL, 0, 1),
(22, 'Losartan 50mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, NULL, 0, 1),
(23, 'Temlisartan 20mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, NULL, 0, 1),
(24, 'Temlisartan 40mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, NULL, 0, 1),
(25, 'Temlisartan 80mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, NULL, 0, 1),
(26, 'Olmesartan 10mg', '3', '3', '', '', '1', '2021-06-24 12:15:00', 2, NULL, 0, 1),
(27, 'Olmesartan 20mg', '3', '3', '', '', '1', '2021-06-24 12:15:00', 2, NULL, 0, 1),
(28, 'Olmesartan 40mg', '3', '3', '', '', '1', '2021-06-24 12:15:00', 2, NULL, 0, 1),
(29, 'Sacubitril + Valsartan 50mg', '15', '3', '', '', '1', '2021-06-24 12:32:00', 2, '2021-08-11 10:01:00', 2, 1),
(30, 'Sacubitril +Valsartan 100mg', '15', '3', '', '', '1', '2021-06-24 12:33:00', 2, '2021-08-11 10:00:00', 2, 1),
(31, 'cc', '1', '3', '', '', '', '2021-06-24 12:34:00', 2, NULL, 0, 0),
(32, 'Sacubitril  + Valsartan 200mg', '15', '3', '', '', '1', '2021-06-24 12:36:00', 2, '2021-08-11 10:01:00', 2, 1),
(33, 'Valsartil 50mg', '15', '3', '', '', '1', '2021-06-24 12:36:00', 2, '2021-06-28 12:43:00', 2, 0),
(34, 'Valsartil 100mg', '15', '3', '', '', '1', '2021-06-24 12:36:00', 2, '2021-06-28 12:43:00', 2, 0),
(35, 'Valsartil 200mg', '15', '3', '', '', '1', '2021-06-24 12:36:00', 2, '2021-06-28 12:44:00', 2, 0),
(36, 'Furosemide 20mg', '5', '3', '', '', '1', '2021-06-24 12:37:00', 2, '2021-08-11 09:42:00', 2, 1),
(37, 'Furosemide 40mg', '5', '3', '', '', '1', '2021-06-24 12:37:00', 2, '2021-08-11 09:42:00', 2, 1),
(38, 'Thiazide 25mg', '5', '3', '', '', '1', '2021-06-24 12:38:00', 2, NULL, 0, 1),
(39, 'Thiazide 50mg', '5', '3', '', '', '1', '2021-06-24 12:38:00', 2, NULL, 0, 1),
(40, 'Bumetanide 1mg', '5', '3', '', '', '1', '2021-06-24 12:40:00', 2, NULL, 0, 1),
(41, 'Bumetanide 5mg', '5', '3', '', '', '1', '2021-06-24 12:40:00', 2, NULL, 0, 1),
(42, 'Metolazone 5mg', '5', '3', '', '', '1', '2021-06-24 12:41:00', 2, NULL, 0, 1),
(43, 'Spironolactone 25mg', '6', '3', '', '', '1', '2021-06-24 12:41:00', 2, NULL, 0, 1),
(44, 'Spironolactone 50mg', '6', '3', '', '', '1', '2021-06-24 12:42:00', 2, NULL, 0, 1),
(45, 'Eplerenone  25mg', '6', '3', '', '', '1', '2021-06-24 12:43:00', 2, '2021-08-11 10:07:00', 2, 1),
(46, 'Eplerenone 50mg', '6', '3', '', '', '1', '2021-06-24 12:43:00', 2, '2021-08-11 10:07:00', 2, 1),
(47, 'Eplerone 50mg', '6', '3', '', '', '1', '2021-06-24 12:44:00', 2, NULL, 0, 0),
(48, 'Agoxin 0.25mg', '7', '3', '', '', '1', '2021-06-24 12:44:00', 2, NULL, 0, 1),
(49, 'Aspirin 75mg', '8', '3', '', '', '1', '2021-06-24 12:45:00', 2, NULL, 0, 1),
(50, 'Clopidogrel 75mg', '8', '3', '', '', '1', '2021-06-24 12:46:00', 2, NULL, 0, 1),
(51, 'Ticagrelor 60mg', '8', '3', '', '', '1', '2021-06-24 12:46:00', 2, NULL, 0, 1),
(52, 'Ticagrelor 90mg', '8', '3', '', '', '1', '2021-06-24 12:46:00', 2, NULL, 0, 1),
(53, 'Prasugrel 5mg', '8', '3', '', '', '1', '2021-06-24 12:50:00', 2, NULL, 0, 1),
(54, 'Prasugrel 10mg', '8', '3', '', '', '1', '2021-06-24 12:51:00', 2, NULL, 0, 1),
(55, 'Empagliflozin 10mg', '21', '3', '', '', '1', '2021-06-24 12:51:00', 2, '2021-08-11 16:15:00', 2, 1),
(56, 'Empagliflozin 25mg', '21', '3', '', '', '1', '2021-06-24 12:51:00', 2, '2021-08-11 16:15:00', 2, 1),
(57, 'CCD- Amlodipin 5mg', '10', '3', '', '', '1', '2021-06-24 12:52:00', 2, NULL, 0, 1),
(58, 'CCD- Amlodipin 10mg', '10', '3', '', '', '1', '2021-06-24 12:52:00', 2, NULL, 0, 1),
(59, 'Cilnidipin 5mg', '10', '3', '', '', '1', '2021-06-24 12:52:00', 2, NULL, 0, 1),
(60, 'Cilnidipin 10mg', '10', '3', '', '', '1', '2021-06-24 12:52:00', 2, NULL, 0, 1),
(61, 'Cilma 10mg', '', '', '', '', '60', '2021-06-24 19:56:00', 1, '2021-06-28 13:17:00', 2, 2),
(62, 'LNC 10mg', '', '', '', '', '60', '2021-06-24 19:56:00', 1, '2021-08-11 10:15:00', 2, 2),
(63, 'Cilma 5mg', '', '', '', '', '59', '2021-06-24 19:57:00', 1, '2021-06-28 13:14:00', 2, 2),
(64, 'Amlocard 10mg', '', '', '', '', '58', '2021-06-24 19:57:00', 1, '2021-06-28 12:58:00', 2, 2),
(65, 'Amlocard 5mg', '', '', '', '', '57', '2021-06-24 19:57:00', 1, '2021-06-28 12:57:00', 2, 2),
(66, 'Cardipin 5mg', '', '', '', '', '57', '2021-06-24 19:57:00', 1, '2021-06-28 13:04:00', 2, 2),
(67, 'Cardipin 10mg', '', '', '', '', '58', '2021-06-24 19:58:00', 1, '2021-06-28 13:07:00', 2, 2),
(68, 'Empa 10mg', '', '', '', '', '55', '2021-06-24 19:58:00', 1, '2021-06-28 12:54:00', 2, 2),
(69, 'Empa 25mg', '', '', '', '', '56', '2021-06-24 19:58:00', 1, '2021-06-28 12:56:00', 2, 2),
(70, 'Empatab 10mg', '', '', '', '', '55', '2021-06-24 19:58:00', 1, '2021-06-28 12:54:00', 2, 2),
(71, 'Empatab 25mg', '', '', '', '', '56', '2021-06-24 19:58:00', 1, '2021-06-28 12:56:00', 2, 2),
(72, 'Jardian 10mg', '', '', '', '', '55', '2021-06-24 19:59:00', 1, '2021-06-28 12:56:00', 2, 2),
(73, 'Jardian 25mg', '', '', '', '', '56', '2021-06-24 19:59:00', 1, '2021-06-28 12:57:00', 2, 2),
(74, 'Jardiance 10mg', '', '', '', '', '55', '2021-06-24 20:00:00', 1, '2021-06-28 12:56:00', 2, 2),
(75, 'Jardiance 25mg', '', '', '', '', '56', '2021-06-24 20:00:00', 1, '2021-06-28 12:57:00', 2, 2),
(76, 'Ecosprin', '', '', '', '', '49', '2021-06-24 20:02:00', 1, NULL, 0, 2),
(77, 'Carva', '', '', '', '', '49', '2021-06-24 20:02:00', 1, NULL, 0, 2),
(78, 'Cilnical 5mg', '', '', '', '', '59', '2021-06-24 20:03:00', 1, '2021-06-28 13:14:00', 2, 2),
(79, 'Cildip', '', '', '', '', '59', '2021-06-24 20:03:00', 1, NULL, 0, 0),
(80, 'Dilapress 6.25mg', '', '', '', '', '1', '2021-06-24 20:09:00', 1, '2021-06-24 20:10:00', 1, 2),
(81, 'Cardex 12.5mg', '', '', '', '', '2', '2021-06-24 20:09:00', 1, '2021-06-24 20:11:00', 1, 2),
(82, 'Dilapress 12.5mg', '', '', '', '', '2', '2021-06-24 20:11:00', 1, '2021-06-24 20:11:00', 1, 2),
(83, 'Carvista 25mg', '', '', '', '', '3', '2021-06-24 20:12:00', 1, '2021-06-24 20:12:00', 1, 2),
(84, 'Cardex 25mg', '', '', '', '', '3', '2021-06-24 20:12:00', 1, NULL, 0, 2),
(85, 'Dilapress 25mg', '', '', '', '', '3', '2021-06-24 20:13:00', 1, NULL, 0, 2),
(86, 'Bisopro 2.5mg', '', '', '', '', '4', '2021-06-24 20:13:00', 1, NULL, 0, 2),
(87, ' Bisopro 5mg', '', '', '', '', '5', '2021-06-24 20:14:00', 1, '2021-06-24 20:17:00', 1, 2),
(88, 'Bislol 2.5mg', '', '', '', '', '4', '2021-06-24 20:14:00', 1, NULL, 0, 2),
(89, 'Bisoren 2.5mg', '', '', '', '', '4', '2021-06-24 20:15:00', 1, NULL, 0, 2),
(90, 'Betafix 2.5mg', '', '', '', '', '4', '2021-06-24 20:15:00', 1, NULL, 0, 2),
(91, 'Ancor 2.5mg', '', '', '', '', '4', '2021-06-24 20:15:00', 1, NULL, 0, 2),
(92, 'Ancor 5mg', '', '', '', '', '5', '2021-06-24 20:16:00', 1, '2021-06-24 20:17:00', 1, 2),
(93, 'Bisocor 2.5mg', '', '', '', '', '4', '2021-06-24 20:16:00', 1, NULL, 0, 0),
(94, 'Cardicor 2.5mg', '', '', '', '', '4', '2021-06-24 20:17:00', 1, NULL, 0, 2),
(95, 'Cardinor 2.5mg', '', '', '', '', '4', '2021-06-24 20:17:00', 1, NULL, 0, 2),
(96, 'Bislol 5mg', '', '', '', '', '5', '2021-06-24 20:19:00', 1, NULL, 0, 2),
(97, 'Bisoren 5mg', '', '', '', '', '5', '2021-06-24 20:19:00', 1, NULL, 0, 2),
(98, 'Betafix 5mg', '', '', '', '', '5', '2021-06-24 20:19:00', 1, NULL, 0, 2),
(99, 'Ancor 5mg', '', '', '', '', '5', '2021-06-24 20:19:00', 1, NULL, 0, 0),
(100, 'Bisocor 5mg', '', '', '', '', '5', '2021-06-24 20:20:00', 1, NULL, 0, 2),
(101, 'Cardicor 5mg', '', '', '', '', '5', '2021-06-24 20:20:00', 1, NULL, 0, 2),
(102, 'Cardinor 5mg', '', '', '', '', '5', '2021-06-24 20:20:00', 1, NULL, 0, 2),
(103, 'Betaloc 25mg', '', '', '', '', '6', '2021-06-24 20:21:00', 1, NULL, 0, 2),
(104, 'Metocard 25mg', '', '', '', '', '6', '2021-06-24 20:22:00', 1, NULL, 0, 2),
(105, 'Betaloc 50mg', '', '', '', '', '7', '2021-06-24 20:22:00', 1, NULL, 0, 2),
(106, 'Metocard 50mg', '', '', '', '', '7', '2021-06-24 20:22:00', 1, NULL, 0, 2),
(107, 'Acepril 5mg', '', '', '', '', '8', '2021-06-24 20:23:00', 1, NULL, 0, 2),
(108, 'Lipril 5mg', '', '', '', '', '8', '2021-06-24 20:23:00', 1, NULL, 0, 2),
(109, 'Acepril 10mg', '', '', '', '', '9', '2021-06-24 20:23:00', 1, NULL, 0, 2),
(110, 'Lipril 10mg', '', '', '', '', '9', '2021-06-24 20:24:00', 1, NULL, 0, 2),
(111, 'Ramoril 1.25mg', '', '', '', '', '10', '2021-06-24 20:24:00', 1, NULL, 0, 2),
(112, 'Ramipril 1.25mg', '', '', '', '', '10', '2021-06-24 20:24:00', 1, NULL, 0, 2),
(113, 'Acecard 1.25mg', '', '', '', '', '10', '2021-06-24 20:25:00', 1, NULL, 0, 2),
(114, 'Ramace 1.25mg', '', '', '', '', '10', '2021-06-24 20:25:00', 1, NULL, 0, 2),
(115, 'Ramicard 1.25mg', '', '', '', '', '10', '2021-06-24 20:25:00', 1, NULL, 0, 2),
(116, 'Tritace 1.25mg', '', '', '', '', '10', '2021-06-24 20:26:00', 1, NULL, 0, 2),
(117, 'Ripril 1.25mg', '', '', '', '', '10', '2021-06-24 20:26:00', 1, NULL, 0, 2),
(118, 'Piramil 1.25mg', '', '', '', '', '10', '2021-06-24 20:27:00', 1, NULL, 0, 2),
(119, 'Aceril 1.25mg', '', '', '', '', '10', '2021-06-24 20:28:00', 1, NULL, 0, 2),
(120, 'Acecard  2.25mg', '', '', '', '', '16', '2021-06-24 20:29:00', 1, NULL, 0, 2),
(121, 'Aceril  2.25mg', '', '', '', '', '16', '2021-06-24 20:29:00', 1, '2021-06-24 20:29:00', 1, 2),
(122, 'Piramil 2.25mg', '', '', '', '', '16', '2021-06-24 20:30:00', 1, NULL, 0, 2),
(123, 'Ramace 2.25mg', '', '', '', '', '16', '2021-06-24 20:30:00', 1, NULL, 0, 2),
(124, 'Ramicard 2.25mg', '', '', '', '', '16', '2021-06-24 20:30:00', 1, NULL, 0, 2),
(125, 'Ramipril 2.25mg', '', '', '', '', '16', '2021-06-24 20:31:00', 1, NULL, 0, 2),
(126, 'Ramoril 2.25mg', '', '', '', '', '16', '2021-06-24 20:31:00', 1, NULL, 0, 2),
(127, 'Ripril 2.25mg', '', '', '', '', '16', '2021-06-24 20:31:00', 1, '2021-06-24 20:39:00', 1, 2),
(128, 'Tritace 2.25mg', '', '', '', '', '16', '2021-06-24 20:39:00', 1, NULL, 0, 2),
(129, 'Acecard 5mg', '', '', '', '', '17', '2021-06-24 20:40:00', 1, NULL, 0, 2),
(130, 'Aceril 5mg', '', '', '', '', '17', '2021-06-24 20:40:00', 1, NULL, 0, 2),
(131, 'Piramil 5mg', '', '', '', '', '17', '2021-06-24 20:40:00', 1, NULL, 0, 2),
(132, 'Piramil 5mg', '', '', '', '', '17', '2021-06-24 20:40:00', 1, NULL, 0, 0),
(133, 'Ramace 5mg', '', '', '', '', '17', '2021-06-24 20:41:00', 1, NULL, 0, 2),
(134, 'Ramicard 5mg', '', '', '', '', '17', '2021-06-24 20:41:00', 1, NULL, 0, 2),
(135, 'Ramipril 5mg', '', '', '', '', '17', '2021-06-24 20:41:00', 1, NULL, 0, 2),
(136, 'Ramipril 5mg', '', '', '', '', '17', '2021-06-24 20:42:00', 1, NULL, 0, 0),
(137, 'Ramoril 5mg', '', '', '', '', '17', '2021-06-24 20:42:00', 1, NULL, 0, 2),
(138, 'Ripril 5mg', '', '', '', '', '17', '2021-06-24 20:42:00', 1, NULL, 0, 2),
(139, 'Tritace 5mg', '', '', '', '', '17', '2021-06-24 20:43:00', 1, NULL, 0, 2),
(140, 'Diovan 40mg', '', '', '', '', '18', '2021-06-24 20:43:00', 1, NULL, 0, 2),
(141, 'Valsartan 40mg', '', '', '', '', '18', '2021-06-24 20:43:00', 1, NULL, 0, 2),
(142, 'Disys 40mg', '', '', '', '', '18', '2021-06-24 20:45:00', 1, NULL, 0, 2),
(143, 'Cardovan 40mg', '', '', '', '', '18', '2021-06-24 20:46:00', 1, NULL, 0, 2),
(144, 'Disys 80mg', '', '', '', '', '19', '2021-06-24 20:46:00', 1, '2021-06-24 20:48:00', 1, 2),
(145, 'Diovan 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-06-24 20:50:00', 1, 2),
(146, 'Valsartan 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-06-24 20:49:00', 1, 2),
(147, 'Cardovan 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-06-24 20:49:00', 1, 2),
(148, 'Cardovan 160mg', '', '', '', '', '20', '2021-06-24 20:50:00', 1, NULL, 0, 2),
(149, 'Diovan 160mg', '', '', '', '', '20', '2021-06-24 20:51:00', 1, NULL, 0, 2),
(150, 'Disys 160mg', '', '', '', '', '20', '2021-06-24 20:52:00', 1, NULL, 0, 2),
(151, 'Valsartan 160mg', '', '', '', '', '20', '2021-06-24 20:52:00', 1, NULL, 0, 2),
(152, 'Angilock 25mg', '', '', '', '', '21', '2021-06-24 20:52:00', 1, NULL, 0, 2),
(153, 'Osartil 25mg', '', '', '', '', '21', '2021-06-24 20:53:00', 1, NULL, 0, 2),
(154, 'Losart 25mg', '', '', '', '', '21', '2021-06-24 20:53:00', 1, NULL, 0, 2),
(155, 'Larb 25mg', '', '', '', '', '21', '2021-06-24 20:53:00', 1, NULL, 0, 2),
(156, 'Losan 25mg', '', '', '', '', '21', '2021-06-24 20:53:00', 1, NULL, 0, 2),
(157, 'Losardil 25mg', '', '', '', '', '21', '2021-06-24 20:54:00', 1, NULL, 0, 2),
(158, 'Osartan 25mg', '', '', '', '', '21', '2021-06-24 20:54:00', 1, NULL, 0, 2),
(159, 'Ostan 25mg', '', '', '', '', '21', '2021-06-24 20:54:00', 1, NULL, 0, 2),
(160, 'Angilock 50mg', '', '', '', '', '22', '2021-06-24 20:55:00', 1, NULL, 0, 2),
(161, 'Larb 50mg', '', '', '', '', '22', '2021-06-24 20:56:00', 1, NULL, 0, 2),
(162, 'Losan 50mg', '', '', '', '', '22', '2021-06-24 20:56:00', 1, '2021-06-24 20:56:00', 1, 2),
(163, 'Losardil 50mg', '', '', '', '', '22', '2021-06-24 20:57:00', 1, NULL, 0, 2),
(164, 'Losart 50mg', '', '', '', '', '22', '2021-06-24 20:57:00', 1, NULL, 0, 2),
(165, 'Osartan 50mg', '', '', '', '', '22', '2021-06-24 20:58:00', 1, NULL, 0, 2),
(166, 'Osartil 50mg', '', '', '', '', '22', '2021-06-24 20:58:00', 1, NULL, 0, 2),
(167, 'Ostan 50mg', '', '', '', '', '22', '2021-06-24 20:58:00', 1, NULL, 0, 2),
(168, 'Telcardis 20mg', '', '', '', '', '23', '2021-06-24 21:00:00', 1, NULL, 0, 2),
(169, 'Telma 20mg', '', '', '', '', '23', '2021-06-24 21:01:00', 1, NULL, 0, 2),
(170, 'Telmilok 20mg', '', '', '', '', '23', '2021-06-24 21:01:00', 1, NULL, 0, 2),
(171, 'Telmipres 20mg', '', '', '', '', '23', '2021-06-24 21:01:00', 1, NULL, 0, 2),
(172, 'Telmitan 20mg', '', '', '', '', '23', '2021-06-24 21:01:00', 1, NULL, 0, 2),
(173, 'Temcard 20mg', '', '', '', '', '23', '2021-06-24 21:02:00', 1, NULL, 0, 2),
(174, 'Telcardis 40mg', '', '', '', '', '24', '2021-06-24 21:02:00', 1, NULL, 0, 2),
(175, 'Telma 40mg', '', '', '', '', '24', '2021-06-24 21:03:00', 1, NULL, 0, 2),
(176, 'Telmilok 40mg', '', '', '', '', '24', '2021-06-24 21:04:00', 1, NULL, 0, 2),
(177, 'Telmipres 40mg', '', '', '', '', '24', '2021-06-24 21:04:00', 1, NULL, 0, 2),
(178, 'Telmitan 40mg', '', '', '', '', '24', '2021-06-24 21:05:00', 1, NULL, 0, 2),
(179, 'Temcard 40mg', '', '', '', '', '24', '2021-06-24 21:05:00', 1, NULL, 0, 2),
(180, 'Telcardis 80mg', '', '', '', '', '25', '2021-06-24 21:06:00', 1, NULL, 0, 2),
(181, 'Telma 80mg', '', '', '', '', '25', '2021-06-24 21:07:00', 1, NULL, 0, 2),
(182, 'Telmilok 80mg', '', '', '', '', '25', '2021-06-24 21:08:00', 1, NULL, 0, 2),
(183, 'Telmipres 80mg', '', '', '', '', '25', '2021-06-24 21:08:00', 1, NULL, 0, 2),
(184, 'Telmitan 80mg', '', '', '', '', '25', '2021-06-24 21:09:00', 1, NULL, 0, 2),
(185, 'Temcard 80mg', '', '', '', '', '25', '2021-06-24 21:09:00', 1, NULL, 0, 2),
(186, 'Olmesan 10mg', '', '', '', '', '26', '2021-06-24 21:09:00', 1, NULL, 0, 2),
(187, 'Olmesta 10mg', '', '', '', '', '26', '2021-06-24 21:10:00', 1, NULL, 0, 2),
(188, 'Olmecar 10mg', '', '', '', '', '26', '2021-06-24 21:10:00', 1, NULL, 0, 2),
(189, 'Olsart 10mg', '', '', '', '', '26', '2021-06-24 21:10:00', 1, NULL, 0, 2),
(190, 'Abetis 10mg', '', '', '', '', '26', '2021-06-24 21:10:00', 1, NULL, 0, 2),
(191, 'Abetis 20mg', '', '', '', '', '27', '2021-06-24 21:11:00', 1, NULL, 0, 2),
(192, 'Olmecar 20mg', '', '', '', '', '27', '2021-06-24 21:11:00', 1, NULL, 0, 2),
(193, 'Olmesan 20mg', '', '', '', '', '27', '2021-06-24 21:11:00', 1, NULL, 0, 2),
(194, 'Olmesta 20mg', '', '', '', '', '27', '2021-06-24 21:12:00', 1, NULL, 0, 2),
(195, 'Olsart  20mg', '', '', '', '', '27', '2021-06-24 21:12:00', 1, NULL, 0, 2),
(196, 'Abetis 40mg', '', '', '', '', '28', '2021-06-24 21:12:00', 1, NULL, 0, 2),
(197, 'Olmecar 40mg', '', '', '', '', '28', '2021-06-24 21:12:00', 1, NULL, 0, 2),
(198, 'Olmesan 40mg', '', '', '', '', '28', '2021-06-24 21:13:00', 1, NULL, 0, 2),
(199, 'Olmesta 40mg', '', '', '', '', '28', '2021-06-24 21:13:00', 1, NULL, 0, 2),
(200, 'Olsart 40mg', '', '', '', '', '28', '2021-06-24 21:13:00', 1, NULL, 0, 2),
(201, 'Entresto 50mg', '', '', '', '', '29', '2021-06-24 21:14:00', 1, NULL, 0, 2),
(202, 'Sabitar 50mg', '', '', '', '', '29', '2021-06-24 21:14:00', 1, NULL, 0, 2),
(203, 'Arnigen 50mg', '', '', '', '', '29', '2021-06-24 21:15:00', 1, NULL, 0, 2),
(204, 'Valmor 50mg', '', '', '', '', '29', '2021-06-24 21:15:00', 1, NULL, 0, 2),
(205, 'Arnigen 100mg', '', '', '', '', '30', '2021-06-24 21:15:00', 1, NULL, 0, 2),
(206, 'Entresto 100mg', '', '', '', '', '30', '2021-06-24 21:15:00', 1, NULL, 0, 2),
(207, 'Sabitar 100mg', '', '', '', '', '30', '2021-06-24 21:16:00', 1, NULL, 0, 2),
(208, 'Valmor 100mg', '', '', '', '', '30', '2021-06-24 21:16:00', 1, '2021-08-11 10:02:00', 2, 2),
(209, 'Arnigen 200mg', '', '', '', '', '32', '2021-06-24 21:16:00', 1, NULL, 0, 2),
(210, 'Entresto 200mg', '', '', '', '', '32', '2021-06-24 21:16:00', 1, NULL, 0, 2),
(211, 'Sabitar 200mg', '', '', '', '', '32', '2021-06-24 21:17:00', 1, NULL, 0, 2),
(212, 'Valmor 200mg', '', '', '', '', '32', '2021-06-24 21:17:00', 1, NULL, 0, 2),
(213, 'Arnigen 50mg', '', '', '', '', '33', '2021-06-24 21:18:00', 1, NULL, 0, 2),
(214, 'Entresto 50mg', '', '', '', '', '33', '2021-06-24 21:18:00', 1, NULL, 0, 2),
(215, 'Sabitar 50mg', '', '', '', '', '33', '2021-06-24 21:19:00', 1, NULL, 0, 2),
(216, 'Valmor 50mg', '', '', '', '', '33', '2021-06-24 21:19:00', 1, NULL, 0, 2),
(217, 'Arnigen 100mg', '', '', '', '', '34', '2021-06-24 21:19:00', 1, NULL, 0, 2),
(218, 'Entresto 100mg', '', '', '', '', '34', '2021-06-24 21:19:00', 1, NULL, 0, 2),
(219, 'Valmor 100mg', '', '', '', '', '34', '2021-06-24 21:20:00', 1, NULL, 0, 2),
(220, 'Sabitar 100mg', '', '', '', '', '34', '2021-06-24 21:20:00', 1, NULL, 0, 2),
(221, 'Arnigen 200mg', '', '', '', '', '35', '2021-06-24 21:21:00', 1, NULL, 0, 2),
(222, 'Entresto 200mg', '', '', '', '', '35', '2021-06-24 21:21:00', 1, NULL, 0, 2),
(223, 'Sabitar 200mg', '', '', '', '', '35', '2021-06-24 21:21:00', 1, NULL, 0, 2),
(224, 'Valmor 200mg', '', '', '', '', '35', '2021-06-24 21:22:00', 1, NULL, 0, 2),
(225, 'Fusid 20mg', '', '', '', '', '36', '2021-06-24 21:22:00', 1, NULL, 0, 2),
(226, 'Lasix 20mg', '', '', '', '', '36', '2021-06-24 21:22:00', 1, NULL, 0, 2),
(227, 'Frusin 20mg', '', '', '', '', '36', '2021-06-24 21:23:00', 1, NULL, 0, 2),
(228, 'Frusin 40mg', '', '', '', '', '37', '2021-06-24 21:23:00', 1, NULL, 0, 2),
(229, 'Fusid 40mg', '', '', '', '', '37', '2021-06-24 21:23:00', 1, NULL, 0, 2),
(230, 'Lasix 40mg', '', '', '', '', '37', '2021-06-24 21:23:00', 1, NULL, 0, 2),
(231, 'Acuren 25mg', '', '', '', '', '38', '2021-06-24 21:24:00', 1, NULL, 0, 2),
(232, 'HTZ 25mg', '', '', '', '', '38', '2021-06-24 21:24:00', 1, NULL, 0, 2),
(233, 'Acuren 50mg', '', '', '', '', '39', '2021-06-24 21:25:00', 1, NULL, 0, 2),
(234, 'HTZ 50mg', '', '', '', '', '39', '2021-06-24 21:25:00', 1, NULL, 0, 2),
(235, 'Urinide 1mg', '', '', '', '', '40', '2021-06-24 21:25:00', 1, NULL, 0, 2),
(236, 'Conart 1mg', '', '', '', '', '40', '2021-06-24 21:25:00', 1, NULL, 0, 2),
(237, 'Bumecard 1mg', '', '', '', '', '40', '2021-06-24 21:26:00', 1, NULL, 0, 2),
(238, 'Merozolyn 1mg', '', '', '', '', '40', '2021-06-24 21:26:00', 1, NULL, 0, 0),
(239, 'Bumecard  5mg', '', '', '', '', '41', '2021-06-24 21:27:00', 1, NULL, 0, 2),
(240, 'Conart  5mg', '', '', '', '', '41', '2021-06-24 21:27:00', 1, NULL, 0, 2),
(241, 'Urinide 5mg', '', '', '', '', '41', '2021-06-24 21:27:00', 1, NULL, 0, 2),
(242, 'Merozolyn 5mg', '', '', '', '', '42', '2021-06-24 21:28:00', 1, NULL, 0, 2),
(243, 'Spirocard 25mg', '', '', '', '', '43', '2021-06-24 21:28:00', 1, NULL, 0, 2),
(244, 'Inospiron 25mg', '', '', '', '', '43', '2021-06-24 21:28:00', 1, NULL, 0, 2),
(245, 'Spiretic 25mg', '', '', '', '', '43', '2021-06-24 21:28:00', 1, '2021-08-11 10:08:00', 2, 2),
(246, 'Inospiron 50mg', '', '', '', '', '44', '2021-06-24 21:29:00', 1, NULL, 0, 2),
(247, 'Spiretic 50mg', '', '', '', '', '44', '2021-06-24 21:29:00', 1, '2021-08-11 10:10:00', 2, 2),
(248, 'Spirocard 50mg', '', '', '', '', '44', '2021-06-24 21:29:00', 1, NULL, 0, 2),
(249, 'Epleron 25mg', '', '', '', '', '45', '2021-06-24 21:29:00', 1, NULL, 0, 2),
(250, 'Aldonist 25mg', '', '', '', '', '45', '2021-06-24 21:30:00', 1, NULL, 0, 2),
(251, 'Aldonist 50mg', '', '', '', '', '46', '2021-06-24 21:30:00', 1, NULL, 0, 2),
(252, 'Epleron 5omg', '', '', '', '', '46', '2021-06-24 21:30:00', 1, NULL, 0, 2),
(253, 'Frulac 25mg', '', '', '', '', '47', '2021-06-24 21:31:00', 1, NULL, 0, 0),
(254, 'Fusid Plus 25mg', '', '', '', '', '47', '2021-06-24 21:31:00', 1, NULL, 0, 0),
(255, 'Frusin Plus 25mg', '', '', '', '', '47', '2021-06-24 21:31:00', 1, NULL, 0, 0),
(256, 'Edeloss 25mg', '', '', '', '', '47', '2021-06-24 21:31:00', 1, NULL, 0, 0),
(257, 'Edeloss  25mg', '', '', '', '', '47', '2021-06-24 21:32:00', 1, NULL, 0, 0),
(258, 'plus 25mg', '', '', '', '', '47', '2021-06-24 21:32:00', 1, NULL, 0, 0),
(259, 'Edenil 25mg', '', '', '', '', '47', '2021-06-24 21:32:00', 1, NULL, 0, 0),
(260, 'Agoxin 0.25mg', '', '', '', '', '48', '2021-06-24 21:37:00', 1, NULL, 0, 2),
(261, 'Digoxen 0.25mg', '', '', '', '', '48', '2021-06-24 21:38:00', 1, NULL, 0, 2),
(262, 'Centoxin 0.25mg', '', '', '', '', '48', '2021-06-24 21:38:00', 1, '2021-08-11 10:05:00', 2, 2),
(263, 'Ecosprin 75mg', '', '', '', '', '50', '2021-06-24 21:39:00', 1, NULL, 0, 0),
(264, 'Carva 75mg', '', '', '', '', '50', '2021-06-24 21:39:00', 1, NULL, 0, 0),
(265, 'Atorvastatin 10mg', '11', '3', '', '', '1', '2021-06-27 14:40:00', 2, '2021-08-11 10:19:00', 2, 1),
(266, 'Rosuvastatin 5mg', '11', '3', '', '', '1', '2021-06-27 14:40:00', 2, '2021-06-28 12:52:00', 2, 1),
(267, 'Fenofibrate 200mg', '11', '3', '', '', '1', '2021-06-27 14:40:00', 2, '2021-06-28 16:02:00', 2, 1),
(268, 'Gemfibrozil 300mg', '11', '3', '', '', '1', '2021-06-27 14:40:00', 2, '2021-06-28 16:02:00', 2, 1),
(269, 'Amiodarone 100mg', '12', '3', '', '', '1', '2021-06-27 14:41:00', 2, NULL, 0, 1),
(270, 'Amiodarone 200mg', '12', '3', '', '', '1', '2021-06-27 14:42:00', 2, NULL, 0, 1),
(271, 'Ivabradine 5mg', '13', '3', '', '', '1', '2021-06-27 14:42:00', 2, NULL, 0, 1),
(272, 'Ivabradine 7.5mg', '13', '3', '', '', '1', '2021-06-27 14:43:00', 2, '2021-06-28 13:01:00', 2, 1),
(273, 'Nitroglycerine 2.6', '17', '3', '', '', '1', '2021-06-27 14:43:00', 2, '2021-08-12 12:10:00', 2, 1),
(274, 'Anclog 75mg', '', '', '', '', '50', '2021-06-27 18:59:00', 2, NULL, 0, 2),
(275, 'Clopid 75mg', '', '', '', '', '50', '2021-06-27 18:59:00', 2, NULL, 0, 2),
(276, 'Clognil 75mg', '', '', '', '', '50', '2021-06-27 19:00:00', 2, NULL, 0, 2),
(277, 'Lopirel 75mg', '', '', '', '', '50', '2021-06-27 19:00:00', 2, NULL, 0, 2),
(278, 'Noclog 75mg', '', '', '', '', '50', '2021-06-27 19:00:00', 2, NULL, 0, 2),
(279, 'Pladex 75mg', '', '', '', '', '50', '2021-06-27 19:01:00', 2, NULL, 0, 2),
(280, 'Plagrin 75mg', '', '', '', '', '50', '2021-06-27 19:01:00', 2, NULL, 0, 2),
(281, 'Replet 75mg', '', '', '', '', '50', '2021-06-27 19:01:00', 2, NULL, 0, 2),
(282, 'Preclot 75mg', '', '', '', '', '50', '2021-06-27 19:02:00', 2, NULL, 0, 2),
(283, 'Nevibolol 2.5mg', '1', '3', '', '', '1', '2021-06-28 11:02:00', 2, '2021-06-28 12:24:00', 2, 1),
(284, 'Nevibolol  5mg', '1', '3', '', '', '1', '2021-06-28 11:02:00', 2, '2021-06-28 12:24:00', 2, 1),
(285, 'Nevibolol 12.5mg', '1', '3', '', '', '', '2021-06-28 11:02:00', 2, '2021-06-28 12:25:00', 2, 0),
(286, 'Furesemide 20mg', '16', '3', '', '', '', '2021-06-28 12:47:00', 2, '2021-06-28 17:16:00', 2, 0),
(287, 'Ticarel 60mg', '', '', '', '', '51', '2021-06-28 12:47:00', 2, NULL, 0, 2),
(288, 'Ticalog 60mg', '', '', '', '', '51', '2021-06-28 12:47:00', 2, NULL, 0, 2),
(289, ' (Furosemide+spironolactone) (20 / 50 mg)', '16', '3', '', '', '', '2021-06-28 12:47:00', 2, '2021-08-11 09:42:00', 2, 1),
(290, '(Furosemide+spironolactone) (20mg + 50mg)', '16', '3', '', '', '', '2021-06-28 12:47:00', 2, '2021-08-11 09:43:00', 2, 1),
(291, 'Ticacard 60mg', '', '', '', '', '51', '2021-06-28 12:48:00', 2, NULL, 0, 2),
(292, 'Ticarel 90mg', '', '', '', '', '52', '2021-06-28 12:48:00', 2, NULL, 0, 2),
(293, 'Ticalog 90mg', '', '', '', '', '52', '2021-06-28 12:49:00', 2, NULL, 0, 2),
(294, 'Ticacard 90mg', '', '', '', '', '52', '2021-06-28 12:49:00', 2, NULL, 0, 2),
(295, 'Appras 5mg', '', '', '', '', '53', '2021-06-28 12:49:00', 2, '2021-08-11 10:24:00', 2, 2),
(296, 'Prasurel 5mg', '', '', '', '', '53', '2021-06-28 12:50:00', 2, NULL, 0, 2),
(297, 'Atorvastatin 20mg', '11', '3', '', '', '1', '2021-06-28 12:50:00', 2, '2021-08-11 10:51:00', 2, 1),
(298, 'Prasulet 5mg', '', '', '', '', '53', '2021-06-28 12:50:00', 2, NULL, 0, 2),
(299, 'Atorvastatin 40mg', '11', '3', '', '', '1', '2021-06-28 12:51:00', 2, '2021-08-11 10:50:00', 2, 1),
(300, 'Prasuva 5mg', '', '', '', '', '53', '2021-06-28 12:51:00', 2, NULL, 0, 2),
(301, 'Appras 10mg', '', '', '', '', '54', '2021-06-28 12:52:00', 2, NULL, 0, 2),
(302, 'Prasurel 10mg', '', '', '', '', '54', '2021-06-28 12:52:00', 2, NULL, 0, 2),
(303, 'Prasulet 10mg', '', '', '', '', '54', '2021-06-28 12:53:00', 2, NULL, 0, 2),
(304, 'Rosuvastatin 10mg', '11', '3', '', '', '1', '2021-06-28 12:53:00', 2, NULL, 0, 1),
(305, 'Prasuva 10mg', '', '', '', '', '54', '2021-06-28 12:53:00', 2, NULL, 0, 2),
(306, 'Rosuvastatin 20mg', '11', '3', '', '', '1', '2021-06-28 12:54:00', 2, NULL, 0, 1),
(307, 'Gemfibrozil 600mg', '11', '3', '', '', '1', '2021-06-28 12:57:00', 2, NULL, 0, 1),
(308, 'Prazosin 5mg', '10', '3', '', '', '1', '2021-06-28 12:59:00', 2, NULL, 0, 1),
(309, 'Amlodipin 5mg +Atenolol 50mg', '19', '3', '', '', '1', '2021-06-28 12:59:00', 2, '2021-08-11 10:42:00', 2, 1),
(310, 'Amlodipine 5mg+ Atenolol 25mg', '19', '3', '', '', '1', '2021-06-28 12:59:00', 2, '2021-08-11 10:42:00', 2, 1),
(311, 'Amlodipine 5mg + Atenolol 25mg', '19', '3', '', '', '1', '2021-06-28 13:00:00', 2, '2021-08-11 12:24:00', 2, 1),
(312, 'Amlodipine 5 + Atenolol 50mg', '17', '3', '', '', '1', '2021-06-28 13:00:00', 2, '2021-08-11 12:23:00', 2, 1),
(313, 'Amdocal 5mg', '', '', '', '', '57', '2021-06-28 13:01:00', 2, NULL, 0, 2),
(314, 'Diampa 10mg', '', '', '', '', '55', '2021-06-28 13:03:00', 2, NULL, 0, 2),
(315, 'Evania 10mg', '', '', '', '', '55', '2021-06-28 13:03:00', 2, NULL, 0, 2),
(316, 'Trimetazidine Dihydrochloride 35mg', '17', '3', '', '', '1', '2021-06-28 13:04:00', 2, NULL, 0, 1),
(317, 'Evania 25mg', '', '', '', '', '56', '2021-06-28 13:04:00', 2, NULL, 0, 2),
(318, 'Ranolazine 500mg', '17', '3', '', '', '1', '2021-06-28 13:04:00', 2, NULL, 0, 1),
(319, 'Diampa 25mg', '', '', '', '', '56', '2021-06-28 13:04:00', 2, NULL, 0, 2),
(320, 'Clonazepam .5mg', '18', '3', '', '', '1', '2021-06-28 13:04:00', 2, NULL, 0, 1),
(321, 'Levothyroxine Sodium 50mcg', '18', '3', '', '', '1', '2021-06-28 13:04:00', 2, '2021-08-11 12:22:00', 2, 1),
(322, 'Levothyroxine Sodium 50mcg', '18', '3', '', '', '1', '2021-06-28 13:04:00', 2, '2021-08-11 12:21:00', 2, 1),
(323, 'Calcium Supplement 500mg', '18', '3', '', '', '1', '2021-06-28 13:05:00', 2, NULL, 0, 1),
(324, 'Vitamin D Supplement 2000IU', '18', '3', '', '', '1', '2021-06-28 13:05:00', 2, NULL, 0, 1),
(325, 'Vitamin D Supplement 20000IU', '18', '3', '', '', '1', '2021-06-28 13:05:00', 2, NULL, 0, 1),
(326, 'Vitamin D Supplement 40000IU', '18', '3', '', '', '1', '2021-06-28 13:06:00', 2, NULL, 0, 1),
(327, 'Iron supplement', '18', '3', '', '', '1', '2021-06-28 13:06:00', 2, NULL, 0, 1),
(328, 'Amlopin 5mg', '', '', '', '', '57', '2021-06-28 13:06:00', 2, NULL, 0, 2),
(329, 'Amlopin 10mg', '', '', '', '', '58', '2021-06-28 13:06:00', 2, NULL, 0, 2),
(330, 'Folic acid supplement', '18', '3', '', '', '1', '2021-06-28 13:07:00', 2, NULL, 0, 1),
(331, 'Esomeprazole 20mg', '18', '3', '', '', '1', '2021-06-28 13:07:00', 2, NULL, 0, 1),
(332, 'Esomeprazole 40mg', '18', '3', '', '', '1', '2021-06-28 13:07:00', 2, NULL, 0, 1),
(333, 'Amdocal 10mg', '', '', '', '', '58', '2021-06-28 13:08:00', 2, NULL, 0, 2),
(334, 'Omeprazole 20mg', '18', '3', '', '', '1', '2021-06-28 13:08:00', 2, NULL, 0, 1),
(335, 'Omeprazole 40mg', '18', '3', '', '', '1', '2021-06-28 13:08:00', 2, NULL, 0, 1),
(336, 'Cildip 5mg', '', '', '', '', '59', '2021-06-28 13:09:00', 2, '2021-06-28 13:12:00', 2, 2),
(337, 'Omeprazole 40mg', '18', '3', '', '', '', '2021-06-28 13:09:00', 2, NULL, 0, 0),
(338, 'Rabeprazole 20mg', '18', '3', '', '', '1', '2021-06-28 13:09:00', 2, '2021-08-11 12:26:00', 2, 1),
(339, 'Rabeprazole 40mg', '18', '3', '', '', '1', '2021-06-28 13:10:00', 2, '2021-08-11 12:26:00', 2, 1),
(340, 'Cilnipin 5mg', '', '', '', '', '59', '2021-06-28 13:10:00', 2, '2021-06-28 13:14:00', 2, 2),
(341, 'Cilnical10mg', '', '', '', '', '60', '2021-06-28 13:11:00', 2, '2021-06-28 13:17:00', 2, 2),
(342, 'Cildip 10mg', '', '', '', '', '60', '2021-06-28 13:11:00', 2, '2021-06-28 13:16:00', 2, 2),
(343, 'Duocard 5mg', '', '', '', '', '59', '2021-06-28 13:15:00', 2, NULL, 0, 2),
(344, 'Duocard 10mg', '', '', '', '', '60', '2021-06-28 13:16:00', 2, NULL, 0, 2),
(345, 'Atova 10mg', '', '', '', '', '265', '2021-06-28 15:46:00', 2, '2021-08-11 10:12:00', 2, 2),
(346, 'Orva 10mg', '', '', '', '', '265', '2021-06-28 15:46:00', 2, NULL, 0, 2),
(347, 'Avas 10mg', '', '', '', '', '265', '2021-06-28 15:47:00', 2, NULL, 0, 2),
(348, 'Atrovast 10mg', '', '', '', '', '265', '2021-06-28 15:47:00', 2, NULL, 0, 2),
(349, 'Atasin 10mg', '', '', '', '', '265', '2021-06-28 15:53:00', 2, '2021-08-11 10:11:00', 2, 2),
(350, 'Rosuva 5mg', '', '', '', '', '266', '2021-06-28 15:54:00', 2, NULL, 0, 2),
(351, 'Rosutin 5mg', '', '', '', '', '266', '2021-06-28 15:55:00', 2, NULL, 0, 2),
(352, 'Rosugen 5mg', '', '', '', '', '266', '2021-06-28 15:55:00', 2, NULL, 0, 2),
(353, 'Rosu 5mg', '', '', '', '', '266', '2021-06-28 15:55:00', 2, NULL, 0, 2),
(354, 'Fenocap 200mg', '', '', '', '', '267', '2021-06-28 15:56:00', 2, NULL, 0, 2),
(355, 'Fenatrol 200mg', '', '', '', '', '267', '2021-06-28 15:56:00', 2, NULL, 0, 2),
(356, 'Nofiate 200mg', '', '', '', '', '267', '2021-06-28 15:57:00', 2, NULL, 0, 2),
(357, 'Tigicon 200mg', '', '', '', '', '267', '2021-06-28 15:57:00', 2, NULL, 0, 2),
(358, 'Tigirate 200mg', '', '', '', '', '267', '2021-06-28 15:57:00', 2, NULL, 0, 2),
(359, 'Gelicon 300mg', '', '', '', '', '268', '2021-06-28 15:58:00', 2, '2021-08-11 10:33:00', 2, 2),
(360, 'Fibril 300mg', '', '', '', '', '268', '2021-06-28 15:58:00', 2, '2021-08-11 10:32:00', 2, 2),
(361, 'Pacet 100mg', '', '', '', '', '269', '2021-06-28 16:01:00', 2, NULL, 0, 2),
(362, 'Cardiron 100mg', '', '', '', '', '269', '2021-06-28 16:03:00', 2, NULL, 0, 2),
(363, 'Pacet 200mg', '', '', '', '', '270', '2021-06-28 16:05:00', 2, NULL, 0, 2),
(364, 'Cardiron 200mg', '', '', '', '', '270', '2021-06-28 16:05:00', 2, NULL, 0, 2),
(365, 'Ivaprex 5mg', '', '', '', '', '271', '2021-06-28 16:06:00', 2, NULL, 0, 2),
(366, 'Ivanor 5mg', '', '', '', '', '271', '2021-06-28 16:06:00', 2, NULL, 0, 2),
(367, 'Corabid 5mg', '', '', '', '', '271', '2021-06-28 16:07:00', 2, NULL, 0, 2),
(368, 'Delpino 5mg', '', '', '', '', '271', '2021-06-28 16:07:00', 2, NULL, 0, 2),
(369, 'Ivaten 5mg', '', '', '', '', '271', '2021-06-28 16:08:00', 2, NULL, 0, 2),
(370, 'Ivaprex 7.5mg', '', '', '', '', '272', '2021-06-28 16:08:00', 2, NULL, 0, 2),
(371, 'Ivanor 7.5mg', '', '', '', '', '272', '2021-06-28 16:09:00', 2, NULL, 0, 2),
(372, 'Corabid 7.5mg', '', '', '', '', '272', '2021-06-28 16:10:00', 2, NULL, 0, 2),
(373, 'Delpino 7.5mg', '', '', '', '', '272', '2021-06-28 16:11:00', 2, NULL, 0, 2),
(374, 'Ivaten 7.5mg', '', '', '', '', '272', '2021-06-28 16:11:00', 2, NULL, 0, 2),
(375, 'Nitrin SR 2.6mg', '', '', '', '', '273', '2021-06-28 16:12:00', 2, NULL, 0, 2),
(376, 'Nidocard Rtd 2.6mg', '', '', '', '', '273', '2021-06-28 16:12:00', 2, NULL, 0, 2),
(377, 'Nitromint SR 2.6mg', '', '', '', '', '273', '2021-06-28 16:13:00', 2, NULL, 0, 2),
(378, 'Nitromint  2.6mg', '', '', '', '', '273', '2021-06-28 16:13:00', 2, NULL, 0, 2),
(379, 'Anril SR 2.6mg', '', '', '', '', '273', '2021-06-28 16:14:00', 2, '2021-08-11 10:28:00', 2, 2),
(380, 'Nitrosol 2.6mg', '', '', '', '', '273', '2021-06-28 16:14:00', 2, NULL, 0, 2),
(381, 'Trocer SR 2.6mg', '', '', '', '', '273', '2021-06-28 16:14:00', 2, '2021-08-11 10:27:00', 2, 2),
(382, 'Nebita 2.5mg', '', '', '', '', '283', '2021-06-28 16:15:00', 2, NULL, 0, 2),
(383, 'Nebicard 2.5mg', '', '', '', '', '283', '2021-06-28 16:16:00', 2, NULL, 0, 2),
(384, 'Nebiren 2.5mg', '', '', '', '', '283', '2021-06-28 16:16:00', 2, NULL, 0, 2),
(385, 'Nebipres 2.5mg', '', '', '', '', '283', '2021-06-28 16:17:00', 2, NULL, 0, 2),
(386, 'Nebilol 2.5mg', '', '', '', '', '283', '2021-06-28 16:17:00', 2, NULL, 0, 2),
(387, 'Ivolol 2.5mg', '', '', '', '', '283', '2021-06-28 16:17:00', 2, NULL, 0, 2),
(388, 'Nebita 5mg', '', '', '', '', '284', '2021-06-28 16:25:00', 2, NULL, 0, 2),
(389, 'Nebicard 5mg', '', '', '', '', '284', '2021-06-28 16:26:00', 2, NULL, 0, 2),
(390, 'Nebiren 5mg', '', '', '', '', '284', '2021-06-28 16:26:00', 2, NULL, 0, 2),
(391, 'Nebipres 5mg', '', '', '', '', '284', '2021-06-28 16:26:00', 2, NULL, 0, 2),
(392, 'Nebilol 5mg', '', '', '', '', '284', '2021-06-28 16:27:00', 2, NULL, 0, 2),
(393, 'Ivolol 5mg', '', '', '', '', '284', '2021-06-28 16:27:00', 2, NULL, 0, 2),
(394, 'Atova 20mg', '', '', '', '', '297', '2021-06-28 16:32:00', 2, NULL, 0, 2),
(395, 'Orva 20mg', '', '', '', '', '297', '2021-06-28 16:32:00', 2, NULL, 0, 2),
(396, 'Avas 20mg', '', '', '', '', '297', '2021-06-28 16:33:00', 2, NULL, 0, 2),
(397, 'Atrovast 20mg', '', '', '', '', '297', '2021-06-28 16:34:00', 2, NULL, 0, 2),
(398, 'Atrosin 20mg', '', '', '', '', '297', '2021-06-28 16:35:00', 2, NULL, 0, 2),
(399, 'Atova 40mg', '', '', '', '', '299', '2021-06-28 16:35:00', 2, NULL, 0, 2),
(400, 'Orva 40mg', '', '', '', '', '299', '2021-06-28 16:36:00', 2, NULL, 0, 2),
(401, 'Avas 40mg', '', '', '', '', '299', '2021-06-28 16:36:00', 2, NULL, 0, 2),
(402, 'Atrovast 40mg', '', '', '', '', '299', '2021-06-28 16:38:00', 2, NULL, 0, 2),
(403, 'Atrosin 40mg', '', '', '', '', '299', '2021-06-28 16:38:00', 2, NULL, 0, 2),
(404, 'Rosuva 10mg', '', '', '', '', '304', '2021-06-28 16:39:00', 2, NULL, 0, 2),
(405, 'Rosutin 10mg', '', '', '', '', '304', '2021-06-28 16:39:00', 2, NULL, 0, 2),
(406, 'Rosugen 10mg', '', '', '', '', '304', '2021-06-28 16:40:00', 2, NULL, 0, 2),
(407, 'Rosu 10mg', '', '', '', '', '304', '2021-06-28 16:40:00', 2, NULL, 0, 2),
(408, 'Rosuva 20mg', '', '', '', '', '306', '2021-06-28 16:40:00', 2, NULL, 0, 2),
(409, 'Rosutin 20mg', '', '', '', '', '306', '2021-06-28 16:41:00', 2, NULL, 0, 2),
(410, 'Rosugen 20mg', '', '', '', '', '306', '2021-06-28 16:41:00', 2, NULL, 0, 2),
(411, 'Rosu 20mg', '', '', '', '', '306', '2021-06-28 16:41:00', 2, NULL, 0, 2),
(412, 'Gelicon 300mg', '', '', '', '', '307', '2021-06-28 16:42:00', 2, '2021-08-11 10:47:00', 2, 2),
(413, 'Fibril 300mg', '', '', '', '', '307', '2021-06-28 16:43:00', 2, '2021-08-11 10:46:00', 2, 2),
(414, 'Prazopress ER 5mg', '', '', '', '', '308', '2021-06-28 16:44:00', 2, '2021-08-11 10:43:00', 2, 2),
(415, 'Alphapress 5mg', '', '', '', '', '308', '2021-06-28 16:44:00', 2, NULL, 0, 2),
(416, 'Fixocard 5mg', '', '', '', '', '309', '2021-06-28 16:45:00', 2, NULL, 0, 2),
(417, 'Amdocal plus 5mg', '', '', '', '', '309', '2021-06-28 16:45:00', 2, NULL, 0, 2),
(418, 'Fixocard 25mg', '', '', '', '', '310', '2021-06-28 16:46:00', 2, NULL, 0, 2),
(419, 'Amdocal plus 25mg', '', '', '', '', '310', '2021-06-28 16:47:00', 2, NULL, 0, 2),
(420, 'Fixocard 5mg', '', '', '', '', '311', '2021-06-28 16:48:00', 2, NULL, 0, 2),
(421, 'Amdocal plus 5mg', '', '', '', '', '311', '2021-06-28 16:48:00', 2, NULL, 0, 2),
(422, 'Fixocard 50mg', '', '', '', '', '312', '2021-06-28 16:50:00', 2, NULL, 0, 2),
(423, 'Amdocal plus 50mg', '', '', '', '', '312', '2021-06-28 16:50:00', 2, NULL, 0, 2),
(424, 'Vastarel MR 35mg', '', '', '', '', '316', '2021-06-28 16:51:00', 2, NULL, 0, 2),
(425, 'Metacard MR 35mg', '', '', '', '', '316', '2021-06-28 16:51:00', 2, NULL, 0, 2),
(426, 'Trimet MR 35mg', '', '', '', '', '316', '2021-06-28 16:51:00', 2, NULL, 0, 2),
(427, 'Vestar MR 35mg', '', '', '', '', '316', '2021-06-28 16:52:00', 2, NULL, 0, 2),
(428, 'Ranola 500mg', '', '', '', '', '318', '2021-06-28 16:52:00', 2, NULL, 0, 2),
(429, 'Ranola ER 500mg', '', '', '', '', '318', '2021-06-28 16:53:00', 2, NULL, 0, 2),
(430, 'Ralozine SR 500mg', '', '', '', '', '318', '2021-06-28 16:53:00', 2, NULL, 0, 2),
(431, 'Ranolin XR 500mg', '', '', '', '', '318', '2021-06-28 16:53:00', 2, NULL, 0, 2),
(432, 'Rivotril .5mg', '', '', '', '', '320', '2021-06-28 16:54:00', 2, NULL, 0, 2),
(433, 'Disopan .5mg', '', '', '', '', '320', '2021-06-28 16:54:00', 2, NULL, 0, 2),
(434, 'Thyrox 25mg', '', '', '', '', '321', '2021-06-28 16:54:00', 2, NULL, 0, 2),
(435, 'Thyrin 25mg', '', '', '', '', '321', '2021-06-28 16:55:00', 2, NULL, 0, 2),
(436, 'Thyrox 50mg', '', '', '', '', '322', '2021-06-28 16:55:00', 2, NULL, 0, 2),
(437, 'Thyrin 50mg', '', '', '', '', '322', '2021-06-28 16:55:00', 2, NULL, 0, 2),
(438, 'Ostocal D 500mg', '', '', '', '', '323', '2021-06-28 16:56:00', 2, NULL, 0, 2),
(439, 'Calboral D 500mg', '', '', '', '', '323', '2021-06-28 16:56:00', 2, NULL, 0, 2),
(440, 'Calboral Dx 500mg', '', '', '', '', '323', '2021-06-28 16:56:00', 2, NULL, 0, 2),
(441, 'Coralcal D 500mg', '', '', '', '', '323', '2021-06-28 16:57:00', 2, NULL, 0, 2),
(442, 'Fossical D 500mg', '', '', '', '', '323', '2021-06-28 16:57:00', 2, NULL, 0, 2),
(443, 'Marincal D 500mg', '', '', '', '', '323', '2021-06-28 16:58:00', 2, NULL, 0, 2),
(444, 'Tab. D-rise 2000IU', '', '', '', '', '324', '2021-06-28 16:59:00', 2, NULL, 0, 2),
(445, 'Cap. D-rise 2000IU', '', '', '', '', '324', '2021-06-28 16:59:00', 2, NULL, 0, 2),
(446, 'D-balance 2000IU', '', '', '', '', '324', '2021-06-28 16:59:00', 2, NULL, 0, 2),
(447, 'Osteo-D 2000IU', '', '', '', '', '324', '2021-06-28 17:00:00', 2, NULL, 0, 2),
(448, 'Osteo-D 20000IU', '', '', '', '', '325', '2021-06-28 17:00:00', 2, NULL, 0, 2),
(449, 'D-balance 20000IU', '', '', '', '', '325', '2021-06-28 17:01:00', 2, NULL, 0, 2),
(450, 'Cap. D-rise 20000IU', '', '', '', '', '325', '2021-06-28 17:01:00', 2, NULL, 0, 2),
(451, 'Tab. D-rise 20000IU', '', '', '', '', '325', '2021-06-28 17:02:00', 2, NULL, 0, 2),
(452, 'Tab. D-rise 40000IU', '', '', '', '', '326', '2021-06-28 17:02:00', 2, NULL, 0, 2),
(453, 'Cap. D-rise 40000IU', '', '', '', '', '326', '2021-06-28 17:03:00', 2, NULL, 0, 2),
(454, 'D-balance 40000IU', '', '', '', '', '326', '2021-06-28 17:03:00', 2, NULL, 0, 2),
(455, 'Osteo-D 40000IU', '', '', '', '', '326', '2021-06-28 17:03:00', 2, NULL, 0, 2),
(456, 'Ipec', '', '', '', '', '327', '2021-06-28 17:04:00', 2, NULL, 0, 2),
(457, 'Ipec plus', '', '', '', '', '327', '2021-06-28 17:04:00', 2, NULL, 0, 2),
(458, 'Zif CI', '', '', '', '', '327', '2021-06-28 17:05:00', 2, NULL, 0, 2),
(459, 'Hemofix FZ', '', '', '', '', '327', '2021-06-28 17:05:00', 2, NULL, 0, 2),
(460, 'Folison', '', '', '', '', '330', '2021-06-28 17:05:00', 2, NULL, 0, 2),
(461, 'Nexum MUPS 20mg', '', '', '', '', '331', '2021-06-28 17:05:00', 2, NULL, 0, 2),
(462, 'Sergel MUPS 20mg', '', '', '', '', '331', '2021-06-28 17:06:00', 2, NULL, 0, 2),
(463, 'Exium 20mg', '', '', '', '', '331', '2021-06-28 17:06:00', 2, NULL, 0, 2),
(464, 'Xeldrin 20mg', '', '', '', '', '331', '2021-06-28 17:07:00', 2, NULL, 0, 2),
(465, 'Nexum MUPS 40mg', '', '', '', '', '332', '2021-06-28 17:07:00', 2, NULL, 0, 2),
(466, 'Sergel MUPS 40mg', '', '', '', '', '332', '2021-06-28 17:07:00', 2, NULL, 0, 2),
(467, 'Exium 40mg', '', '', '', '', '332', '2021-06-28 17:08:00', 2, NULL, 0, 2),
(468, 'Xeldrin 40mg', '', '', '', '', '332', '2021-06-28 17:08:00', 2, NULL, 0, 2),
(469, 'Losectil 20mg', '', '', '', '', '334', '2021-06-28 17:09:00', 2, NULL, 0, 2),
(470, 'Losectil 40mg', '', '', '', '', '335', '2021-06-28 17:09:00', 2, NULL, 0, 2),
(471, 'Finix 20mg', '', '', '', '', '338', '2021-06-28 17:10:00', 2, NULL, 0, 2),
(472, 'Rabe 20mg', '', '', '', '', '338', '2021-06-28 17:10:00', 2, NULL, 0, 2),
(473, 'Rabe 40mg', '', '', '', '', '339', '2021-06-28 17:11:00', 2, NULL, 0, 2),
(474, 'Finix 40mg', '', '', '', '', '339', '2021-06-28 17:11:00', 2, NULL, 0, 2),
(475, '(Furosemide+Spironolactone) (40mg + 50mg)', '16', '3', '', '', '', '2021-06-29 13:51:00', 2, '2021-08-11 12:25:00', 2, 1),
(476, '(Furesemide+spironolactone) (40/ 50mg)', '16', '3', '', '', '', '2021-06-29 13:52:00', 2, '2021-08-11 12:55:00', 2, 1),
(477, 'Warfarin 1mg', '20', '3', '', '', '', '2021-07-07 12:51:00', 4, NULL, 0, 1),
(478, 'Warfarin 2mg', '20', '3', '', '', '', '2021-07-07 12:51:00', 4, NULL, 0, 1),
(479, 'Warfarin 5mg', '20', '3', '', '', '', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(480, 'Rivaroxaban 2.5mg', '20', '3', '', '', '', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(481, 'Rivaroxaban 10mg', '20', '3', '', '', '1', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(482, 'Rivaroxaban 20mg', '20', '3', '', '', '1', '2021-07-07 12:54:00', 4, NULL, 0, 1),
(483, 'Enoxaparin 60mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, '2021-08-11 13:02:00', 2, 1),
(484, 'Apixaban 2.5mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, NULL, 0, 1),
(485, 'Apixaban 5mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, '2021-08-11 12:28:00', 2, 1),
(486, 'Ramipril 2.5mg', '2', '3', '', '', '', '2021-07-08 13:16:00', 2, NULL, 0, 1),
(487, 'Losartan 100mg', '3', '10', '', '', '', '2021-08-11 09:49:00', 2, NULL, 0, 1),
(488, 'Nicorandil 10mg', '17', '3', '', '', '', '2021-08-11 09:51:00', 2, NULL, 0, 1),
(489, 'Nicorandil 20mg', '17', '3', '', '', '', '2021-08-11 09:52:00', 2, NULL, 0, 1),
(490, 'Tigel 60mg', '', '', '', '', '51', '2021-08-11 10:04:00', 2, NULL, 0, 2),
(491, 'Tiginor 10mg', '', '', '', '', '265', '2021-08-11 10:13:00', 2, NULL, 0, 2),
(492, 'Taven 10mg', '', '', '', '', '265', '2021-08-11 10:13:00', 2, NULL, 0, 2),
(493, 'Cilnipin 10mg', '', '', '', '', '60', '2021-08-11 10:16:00', 2, NULL, 0, 2),
(494, 'LNC 5mg', '', '', '', '', '59', '2021-08-11 10:16:00', 2, NULL, 0, 2),
(495, 'Camlodin 5 mg', '', '', '', '', '57', '2021-08-11 10:18:00', 2, NULL, 0, 2),
(496, 'Camlodin 10mg', '', '', '', '', '58', '2021-08-11 10:18:00', 2, NULL, 0, 2),
(497, 'Tigel 90mg', '', '', '', '', '52', '2021-08-11 10:21:00', 2, NULL, 0, 2),
(498, 'Lipired 200', '', '', '', '', '267', '2021-08-11 10:34:00', 2, NULL, 0, 2),
(499, 'Rostab 5mg', '', '', '', '', '266', '2021-08-11 10:36:00', 2, NULL, 0, 2),
(500, 'Ranozex ER', '', '', '', '', '318', '2021-08-11 11:02:00', 2, NULL, 0, 2),
(501, 'Pixorel 5mg', '', '', '', '', '485', '2021-08-11 12:29:00', 2, NULL, 0, 2),
(502, 'Apixan 5mg', '', '', '', '', '485', '2021-08-11 12:29:00', 2, '2021-08-11 12:30:00', 2, 2),
(503, 'Pixorel 2.5mg', '', '', '', '', '484', '2021-08-11 12:30:00', 2, NULL, 0, 2),
(504, 'Apixan 2.5mg', '', '', '', '', '484', '2021-08-11 12:31:00', 2, NULL, 0, 2),
(505, 'Rivarox 20mg', '', '', '', '', '482', '2021-08-11 12:54:00', 2, '2021-08-11 12:55:00', 2, 2),
(506, 'Rivaxa 20mg', '', '', '', '', '482', '2021-08-11 12:56:00', 2, NULL, 0, 2),
(507, 'Rivarox 10mg', '', '', '', '', '481', '2021-08-11 12:57:00', 2, NULL, 0, 2),
(508, 'Rivaxa 10mg', '', '', '', '', '481', '2021-08-11 12:58:00', 2, NULL, 0, 2),
(509, 'Clexane 60mg', '', '', '', '', '483', '2021-08-11 13:01:00', 2, NULL, 0, 2),
(510, 'Parinox 60mg', '', '', '', '', '483', '2021-08-11 13:03:00', 2, NULL, 0, 2),
(511, 'Enoxaparin 40mg', '20', '3', '', '', '1', '2021-08-11 13:06:00', 2, NULL, 0, 1),
(512, 'Clexane 40mg', '', '', '', '', '511', '2021-08-11 13:07:00', 2, NULL, 0, 2),
(513, 'Parinox 40mg', '', '', '', '', '511', '2021-08-11 13:08:00', 2, NULL, 0, 2),
(514, 'Carvedilol 6.25mg', '1', '3', '', '', '', '2021-08-12 11:20:00', 2, NULL, 0, 1),
(515, 'Mexiletine 200', '12', '3', '', '', '', '2021-08-23 18:06:00', 2, NULL, 0, 1),
(516, 'Mexiletine 150', '12', '3', '', '', '', '2021-08-23 18:07:00', 2, NULL, 0, 1),
(517, 'Mexiletine 50', '12', '3', '', '', '', '2021-08-23 18:08:00', 2, NULL, 0, 1),
(518, 'Ambrisentan 5mg', '22', '3', '', '', '', '2021-08-24 14:39:00', 2, '2021-08-24 14:39:00', 2, 1),
(519, 'Bisoprolol+ Amlodipine 2.5/5mg', '1', '3', '', '', '1', '2021-09-05 11:20:00', 2, '2021-09-05 11:23:00', 2, 1),
(520, 'Bislol Max', '', '', '', '', '519', '2021-09-05 11:23:00', 2, NULL, 0, 2),
(521, 'Bisoprolol+Hydrochlorothiazide 10+6.25mg', '1', '3', '', '', '1', '2021-09-05 11:26:00', 2, NULL, 0, 1),
(522, 'Bislol Plus', '', '', '', '', '521', '2021-09-05 11:27:00', 2, NULL, 0, 2),
(523, 'Aspirin+Clopidogrel 75+75mg', '8', '3', '', '', '1', '2021-09-06 10:49:00', 2, NULL, 0, 1),
(524, 'Anclog PLUS', '', '', '', '', '523', '2021-09-06 10:50:00', 2, NULL, 0, 2),
(525, 'Hydrochlorothiazide 25mg', '5', '3', '', '', '1', '2021-09-11 12:25:00', 2, '2021-09-11 12:33:00', 2, 1),
(526, 'Acuren  25mg', '', '', '', '', '525', '2021-09-11 12:25:00', 2, NULL, 0, 2),
(527, 'Acuren 50mg', '', '', '', '', '525', '2021-09-11 12:25:00', 2, NULL, 0, 2),
(528, 'Htz 25mg', '', '', '', '', '525', '2021-09-11 12:27:00', 2, NULL, 0, 2),
(529, 'Hypezide 50mg', '', '', '', '', '525', '2021-09-11 12:29:00', 2, NULL, 0, 2),
(530, 'Hydrochlorothiazide 50mg', '5', '3', '', '', '', '2021-09-11 12:34:00', 2, NULL, 0, 1),
(531, 'Bisopro 1.25mg', '1', '3', '', '', '', '2021-09-23 17:03:00', 2, NULL, 0, 1),
(532, 'Bisoprolol 1.25mg', '1', '3', '', '', '', '2021-09-23 17:07:00', 2, NULL, 0, 1),
(533, 'Ramipril 10mg', '2', '3', '', '', '', '2021-09-25 13:22:00', 2, NULL, 0, 1),
(534, 'Sildenafil (Edegra 100)', '22', '3', '', '', '', '2021-09-25 14:40:00', 2, NULL, 0, 1),
(535, 'Sildenafil 100', '22', '3', '', '', '', '2021-09-25 14:42:00', 2, NULL, 0, 1),
(536, 'sildenafil 50mg', '22', '3', '', '', '', '2021-09-25 14:43:00', 2, NULL, 0, 1),
(537, 'sildenafil 25mg', '22', '3', '', '', '', '2021-09-25 14:43:00', 2, NULL, 0, 1),
(538, 'Levamlodipine 2.5mg', '10', '3', '', '', '', '2021-09-25 17:43:00', 2, NULL, 0, 1),
(539, 'Levamlodipine 5mg', '10', '3', '', '', '', '2021-09-25 17:44:00', 2, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_instruction`
--

CREATE TABLE `medicine_instruction` (
  `mi_id` int(11) NOT NULL,
  `mi_title` varchar(255) NOT NULL,
  `mi_created_at` datetime NOT NULL,
  `mi_created_by` int(11) NOT NULL,
  `mi_updated_at` datetime DEFAULT NULL,
  `mi_updated_by` int(11) NOT NULL,
  `mi_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_instruction`
--

INSERT INTO `medicine_instruction` (`mi_id`, `mi_title`, `mi_created_at`, `mi_created_by`, `mi_updated_at`, `mi_updated_by`, `mi_status`) VALUES
(1, 'খাবারের পর', '2021-09-21 20:30:00', 2, NULL, 0, 1),
(2, 'চলবে', '2021-09-21 20:30:00', 2, NULL, 0, 1),
(3, 'খাওয়ার আগে', '2021-09-21 20:30:00', 2, NULL, 0, 1),
(4, 'ভরা পেটে', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(5, 'খাবার আধ ঘণ্টা আগে', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(6, '(ভরা পেটে) - চলবে ', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(7, 'সপ্তাহে 5 দিন - চলবে ', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(8, 'চাপ- চলবে নেওয়ার 10 মিনিট পর কুলি করবেন', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(9, 'প্রতি সপ্তাহে ১ করে - ৩ মাস', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(10, '১ টি করে মাংসপেশিতে - প্রতি ২ সপ্তাহে ৬ ডোজ', '2021-09-21 20:31:00', 2, NULL, 0, 1),
(11, 'পানি এক থেকে দেড় লিটার 24 ঘন্টায়', '2021-09-21 20:32:00', 2, NULL, 0, 1),
(12, 'মুখের ভেতর প্রয়োজনমতো', '2021-09-21 20:32:00', 2, NULL, 0, 1),
(13, '7 দিন', '2021-09-25 14:12:00', 2, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_rules`
--

CREATE TABLE `medicine_rules` (
  `mr_id` int(11) NOT NULL,
  `mr_title` varchar(255) NOT NULL,
  `mr_created_at` datetime NOT NULL,
  `mr_created_by` int(11) NOT NULL,
  `mr_updated_at` datetime DEFAULT NULL,
  `mr_updated_by` int(11) NOT NULL,
  `mr_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_rules`
--

INSERT INTO `medicine_rules` (`mr_id`, `mr_title`, `mr_created_at`, `mr_created_by`, `mr_updated_at`, `mr_updated_by`, `mr_status`) VALUES
(1, '1  + 1 + 0', '2021-09-21 20:27:00', 2, NULL, 0, 1),
(2, '1 + 1 + 1', '2021-09-21 20:27:00', 2, NULL, 0, 1),
(3, '0 + 0 +1', '2021-09-21 20:28:00', 2, NULL, 0, 1),
(4, '1 + 0 + 0', '2021-09-21 20:29:00', 2, NULL, 0, 1),
(5, '1 + ½ + 1', '2021-09-21 20:30:00', 2, NULL, 0, 0),
(6, '1 + 0+ 1', '2021-09-22 11:02:00', 2, NULL, 0, 1),
(7, '1+0+1/2', '2021-09-22 11:03:00', 2, NULL, 0, 0),
(8, '1+0+½', '2021-09-22 11:05:00', 2, NULL, 0, 1),
(9, '½+0+½', '2021-09-22 11:05:00', 2, NULL, 0, 1),
(10, '½+0+1', '2021-09-22 14:23:00', 2, NULL, 0, 1),
(11, '½+0+0', '2021-09-22 14:23:00', 2, NULL, 0, 1),
(12, '½+½+0', '2021-09-22 14:24:00', 2, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_category`
--

CREATE TABLE `m_category` (
  `mc_id` int(11) NOT NULL,
  `mc_title` varchar(255) NOT NULL,
  `mc_created_at` datetime NOT NULL,
  `mc_created_by` int(11) NOT NULL,
  `mc_updated_at` datetime DEFAULT NULL,
  `mc_updated_by` int(11) NOT NULL,
  `mc_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_category`
--

INSERT INTO `m_category` (`mc_id`, `mc_title`, `mc_created_at`, `mc_created_by`, `mc_updated_at`, `mc_updated_by`, `mc_status`) VALUES
(1, 'Beta Blocker', '2021-04-10 19:21:00', 2, '2021-06-23 21:12:00', 2, 1),
(2, 'ACEI', '2021-04-11 09:37:00', 2, '2021-06-23 21:12:00', 2, 1),
(3, 'ARBs', '2021-05-29 14:01:00', 2, '2021-06-23 21:12:00', 2, 1),
(4, 'ARNI', '2021-06-23 21:12:00', 2, NULL, 0, 1),
(5, 'Diuretic', '2021-06-23 21:12:00', 2, NULL, 0, 1),
(6, 'AA', '2021-06-23 21:13:00', 2, NULL, 0, 1),
(7, 'Digoxin', '2021-06-23 21:13:00', 2, NULL, 0, 1),
(8, 'Antiplatelet', '2021-06-23 21:13:00', 2, NULL, 0, 1),
(9, 'Anti Diabetic', '2021-06-23 21:13:00', 2, NULL, 0, 1),
(10, 'Anti Hypertensive', '2021-06-23 21:13:00', 2, NULL, 0, 1),
(11, 'Antilipid', '2021-06-27 14:39:00', 2, NULL, 0, 1),
(12, 'Antiarrythmic', '2021-06-27 14:39:00', 2, NULL, 0, 1),
(13, 'Ivabradine', '2021-06-27 14:39:00', 2, NULL, 0, 1),
(14, 'GTN', '2021-06-27 14:43:00', 2, NULL, 0, 1),
(15, 'ARNI Combination', '2021-06-28 12:31:00', 2, NULL, 0, 1),
(16, 'Diuretic Combination', '2021-06-28 12:31:00', 2, NULL, 0, 1),
(17, 'Anti-anginal', '2021-06-28 12:32:00', 2, NULL, 0, 1),
(18, 'Other', '2021-06-28 12:32:00', 2, NULL, 0, 1),
(19, 'Anti-Hypertensive Combination', '2021-06-28 12:34:00', 2, NULL, 0, 1),
(20, 'Anticoagulants', '2021-07-07 12:50:00', 4, NULL, 0, 1),
(21, 'SGLT2 inhibitors', '2021-08-11 16:14:00', 2, NULL, 0, 1),
(22, 'pulmonary Hypertention', '2021-08-24 14:38:00', 2, NULL, 0, 1),
(23, 'ASPIRIN + CLOPIDOGREL', '2021-09-06 10:46:00', 2, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_company`
--

CREATE TABLE `m_company` (
  `mcom_id` int(11) NOT NULL,
  `mcom_title` varchar(255) NOT NULL,
  `mcom_created_at` datetime NOT NULL,
  `mcom_created_by` int(11) NOT NULL,
  `mcom_updated_at` datetime DEFAULT NULL,
  `mcom_updated_by` int(11) NOT NULL,
  `mcom_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`mcom_id`, `mcom_title`, `mcom_created_at`, `mcom_created_by`, `mcom_updated_at`, `mcom_updated_by`, `mcom_status`) VALUES
(1, 'beximco', '2021-04-10 18:48:00', 2, '2021-04-10 18:50:00', 2, 0),
(2, 'acme', '2021-04-10 18:50:00', 2, NULL, 0, 0),
(3, 'General', '2021-04-10 18:50:00', 2, '2021-06-24 11:03:00', 2, 1),
(4, 'acme', '2021-04-10 18:50:00', 2, NULL, 0, 0),
(5, 'ACI Limited', '2021-04-11 09:29:00', 2, '2021-06-23 21:15:00', 2, 1),
(6, 'ACME Laboratories Ltd', '2021-06-23 21:14:00', 2, '2021-06-23 21:15:00', 2, 1),
(7, 'Ad-din Pharmaceuticals Ltd', '2021-06-23 21:15:00', 2, NULL, 0, 1),
(8, 'Al-Madina Pharmaceuticals Ltd', '2021-06-23 21:15:00', 2, NULL, 0, 1),
(9, 'Alco Pharma Ltd', '2021-06-23 21:15:00', 2, NULL, 0, 1),
(10, 'Square Pharmaceutical Limited', '2021-06-24 10:59:00', 2, '2021-06-24 11:03:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_specification`
--

CREATE TABLE `m_specification` (
  `ms_id` int(11) NOT NULL,
  `ms_title` varchar(255) NOT NULL,
  `ms_created_at` datetime NOT NULL,
  `ms_created_by` int(11) NOT NULL,
  `ms_updated_at` datetime NOT NULL,
  `ms_updated_by` int(11) NOT NULL,
  `ms_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_specification`
--

INSERT INTO `m_specification` (`ms_id`, `ms_title`, `ms_created_at`, `ms_created_by`, `ms_updated_at`, `ms_updated_by`, `ms_status`) VALUES
(2, '200mg', '2021-04-10 18:10:00', 2, '0000-00-00 00:00:00', 0, 1),
(3, '200mg', '2021-04-10 18:10:00', 2, '0000-00-00 00:00:00', 0, 0),
(4, '500mg', '2021-04-10 18:11:00', 2, '0000-00-00 00:00:00', 0, 1),
(5, '300mg', '2021-04-10 18:13:00', 2, '0000-00-00 00:00:00', 0, 0),
(6, '300mg', '2021-04-10 18:22:00', 2, '0000-00-00 00:00:00', 0, 1),
(7, '300mg', '2021-04-10 18:22:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `non_cardiovascular`
--

CREATE TABLE `non_cardiovascular` (
  `ncv_id` int(11) NOT NULL,
  `ncv_title` varchar(255) NOT NULL,
  `ncv_created_at` datetime NOT NULL,
  `ncv_created_by` int(11) NOT NULL,
  `ncv_updated_at` datetime NOT NULL,
  `ncv_updated_by` int(11) NOT NULL,
  `ncv_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `non_cardiovascular`
--

INSERT INTO `non_cardiovascular` (`ncv_id`, `ncv_title`, `ncv_created_at`, `ncv_created_by`, `ncv_updated_at`, `ncv_updated_by`, `ncv_status`) VALUES
(2, 'test1', '2021-03-16 18:43:00', 2, '2021-03-16 18:43:00', 2, 0),
(3, 'Pregnancy', '2021-03-20 11:15:00', 2, '0000-00-00 00:00:00', 0, 1),
(4, 'Thyroid Disease', '2021-03-20 11:15:00', 2, '0000-00-00 00:00:00', 0, 1),
(5, 'Pheochromocytoma', '2021-03-20 11:15:00', 2, '0000-00-00 00:00:00', 0, 1),
(6, 'Chronic Renal Disease', '2021-03-20 11:15:00', 2, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nyha_wise_call`
--

CREATE TABLE `nyha_wise_call` (
  `nwc_id` int(11) NOT NULL,
  `nwc_p_id` int(11) NOT NULL,
  `nwc_par_id` int(11) NOT NULL,
  `nwc_action_status` int(11) NOT NULL,
  `nwc_tel_date` date NOT NULL,
  `nwc_phy_date` date NOT NULL,
  `nwc_created_at` datetime NOT NULL,
  `nwc_created_by` int(11) NOT NULL,
  `nwc_updated_at` datetime NOT NULL,
  `nwc_updated_by` int(11) NOT NULL,
  `nwc_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nyha_wise_call`
--

INSERT INTO `nyha_wise_call` (`nwc_id`, `nwc_p_id`, `nwc_par_id`, `nwc_action_status`, `nwc_tel_date`, `nwc_phy_date`, `nwc_created_at`, `nwc_created_by`, `nwc_updated_at`, `nwc_updated_by`, `nwc_status`) VALUES
(1, 22, 9, 0, '2021-08-18', '2021-10-18', '2021-07-18 13:11:00', 3, '0000-00-00 00:00:00', 0, 1),
(3, 82, 247, 0, '2021-08-19', '2021-10-19', '2021-07-19 13:11:00', 3, '0000-00-00 00:00:00', 0, 1),
(4, 82, 248, 0, '2021-08-19', '2021-10-19', '2021-07-19 15:13:00', 3, '0000-00-00 00:00:00', 0, 1),
(5, 78, 249, 0, '2021-08-19', '2021-10-19', '2021-07-19 15:56:00', 3, '0000-00-00 00:00:00', 0, 1),
(6, 78, 250, 0, '2021-08-25', '2021-10-25', '2021-07-25 11:23:00', 3, '0000-00-00 00:00:00', 0, 1),
(7, 83, 251, 0, '2021-08-25', '2021-10-25', '2021-07-25 16:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(11, 81, 246, 0, '2021-08-26', '2021-10-26', '2021-07-26 12:41:00', 1, '0000-00-00 00:00:00', 0, 1),
(16, 68, 255, 0, '2021-08-29', '2021-10-29', '2021-07-29 11:20:00', 3, '0000-00-00 00:00:00', 0, 1),
(17, 85, 256, 0, '2021-09-16', '2022-01-29', '2021-07-29 12:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(18, 86, 257, 0, '2021-08-29', '2021-10-29', '2021-07-29 13:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(19, 87, 258, 0, '2021-09-18', '2022-01-31', '2021-07-31 11:07:00', 3, '0000-00-00 00:00:00', 0, 1),
(20, 88, 259, 0, '2021-09-18', '2022-01-31', '2021-07-31 12:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(21, 89, 260, 0, '2021-08-31', '2021-10-31', '2021-07-31 14:17:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 90, 261, 0, '2021-09-02', '2021-11-02', '2021-08-02 14:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 92, 262, 0, '2021-09-21', '2022-02-03', '2021-08-03 12:10:00', 3, '0000-00-00 00:00:00', 0, 1),
(24, 93, 263, 0, '2021-09-03', '2021-11-03', '2021-08-03 12:48:00', 3, '0000-00-00 00:00:00', 0, 1),
(25, 93, 264, 0, '2021-09-03', '2021-11-03', '2021-08-03 13:06:00', 3, '0000-00-00 00:00:00', 0, 1),
(26, 93, 265, 0, '2021-09-03', '2021-11-03', '2021-08-03 13:21:00', 3, '0000-00-00 00:00:00', 0, 1),
(27, 94, 266, 0, '2021-09-21', '2022-02-03', '2021-08-03 15:25:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 95, 267, 0, '2021-08-17', '2021-09-03', '2021-08-03 17:07:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 96, 268, 0, '2021-09-04', '2021-11-04', '2021-08-04 10:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(30, 97, 269, 0, '2021-08-18', '2021-09-04', '2021-08-04 11:07:00', 3, '0000-00-00 00:00:00', 0, 1),
(31, 67, 270, 0, '2021-09-04', '2021-11-04', '2021-08-04 14:20:00', 3, '0000-00-00 00:00:00', 0, 1),
(32, 67, 271, 0, '2021-09-04', '2021-11-04', '2021-08-04 15:54:00', 3, '0000-00-00 00:00:00', 0, 1),
(33, 67, 272, 0, '2021-09-04', '2021-11-04', '2021-08-04 16:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(34, 99, 273, 0, '2021-09-05', '2021-11-05', '2021-08-05 13:15:00', 3, '0000-00-00 00:00:00', 0, 1),
(45, 101, 274, 0, '2021-09-26', '2022-02-08', '2021-08-08 12:15:00', 3, '0000-00-00 00:00:00', 0, 1),
(46, 101, 275, 0, '2021-09-26', '2022-02-08', '2021-08-08 12:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(48, 101, 276, 0, '2021-09-26', '2022-02-08', '2021-08-08 13:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(50, 3, 8, 0, '2021-09-08', '2021-11-08', '2021-08-08 13:46:00', 1, '0000-00-00 00:00:00', 0, 1),
(51, 3, 13, 0, '2021-09-08', '2021-11-08', '2021-08-08 13:55:00', 1, '0000-00-00 00:00:00', 0, 1),
(52, 3, 14, 0, '2021-09-08', '2021-11-08', '2021-08-08 14:05:00', 1, '0000-00-00 00:00:00', 0, 1),
(54, 3, 16, 0, '2021-09-26', '2022-02-08', '2021-08-08 14:52:00', 1, '0000-00-00 00:00:00', 0, 1),
(59, 102, 277, 0, '2021-08-23', '2021-09-09', '2021-08-09 15:17:00', 3, '0000-00-00 00:00:00', 0, 1),
(60, 104, 278, 0, '2021-09-09', '2021-11-09', '2021-08-09 17:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(61, 22, 279, 0, '2021-09-28', '2022-02-10', '2021-08-10 17:34:00', 3, '0000-00-00 00:00:00', 0, 1),
(62, 22, 280, 0, '2021-08-25', '2021-09-11', '2021-08-11 13:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(63, 107, 281, 0, '2021-09-30', '2022-02-12', '2021-08-12 11:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(64, 108, 282, 0, '2021-09-12', '2021-11-12', '2021-08-12 11:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(65, 108, 283, 0, '2021-09-12', '2021-11-12', '2021-08-12 12:21:00', 3, '0000-00-00 00:00:00', 0, 1),
(66, 108, 284, 0, '2021-08-26', '2021-09-12', '2021-08-12 12:31:00', 3, '0000-00-00 00:00:00', 0, 1),
(67, 108, 285, 0, '2021-09-12', '2021-11-12', '2021-08-12 12:45:00', 3, '0000-00-00 00:00:00', 0, 1),
(68, 108, 286, 0, '2021-09-12', '2021-11-12', '2021-08-12 13:01:00', 3, '0000-00-00 00:00:00', 0, 1),
(69, 108, 287, 0, '2021-09-12', '2021-11-12', '2021-08-12 13:21:00', 3, '0000-00-00 00:00:00', 0, 1),
(70, 108, 288, 0, '2021-09-12', '2021-11-12', '2021-08-12 13:47:00', 3, '0000-00-00 00:00:00', 0, 1),
(71, 107, 289, 0, '2021-09-30', '2022-02-12', '2021-08-12 14:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(74, 109, 292, 0, '2021-09-16', '2021-11-16', '2021-08-16 11:07:00', 3, '0000-00-00 00:00:00', 0, 1),
(75, 109, 293, 0, '2021-10-04', '2022-02-16', '2021-08-16 11:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(81, 112, 299, 0, '2021-09-16', '2021-11-16', '2021-08-16 17:01:00', 3, '0000-00-00 00:00:00', 0, 1),
(82, 112, 300, 0, '2021-09-16', '2021-11-16', '2021-08-16 17:20:00', 3, '0000-00-00 00:00:00', 0, 1),
(83, 112, 301, 0, '2021-09-16', '2021-11-16', '2021-08-16 17:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(84, 78, 302, 0, '2021-09-17', '2021-11-17', '2021-08-17 11:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(86, 113, 303, 0, '2021-09-17', '2021-11-17', '2021-08-17 13:46:00', 4, '0000-00-00 00:00:00', 0, 1),
(87, 113, 304, 0, '2021-09-17', '2021-11-17', '2021-08-17 14:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(88, 113, 305, 0, '2021-10-05', '2022-02-17', '2021-08-17 14:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(89, 113, 306, 0, '2021-09-17', '2021-11-17', '2021-08-17 14:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(90, 113, 307, 0, '2021-09-17', '2021-11-17', '2021-08-17 14:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(91, 113, 308, 0, '2021-10-05', '2022-02-17', '2021-08-17 16:01:00', 3, '0000-00-00 00:00:00', 0, 1),
(92, 113, 309, 0, '2021-10-05', '2022-02-17', '2021-08-17 16:39:00', 3, '0000-00-00 00:00:00', 0, 1),
(93, 114, 310, 0, '2021-09-17', '2021-11-17', '2021-08-17 17:34:00', 3, '0000-00-00 00:00:00', 0, 1),
(94, 114, 311, 0, '2021-10-05', '2022-02-17', '2021-08-17 17:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(95, 115, 312, 0, '2021-09-01', '2021-09-18', '2021-08-18 11:10:00', 3, '0000-00-00 00:00:00', 0, 1),
(96, 115, 313, 0, '2021-09-18', '2021-11-18', '2021-08-18 11:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(97, 115, 314, 0, '2021-10-06', '2022-02-18', '2021-08-18 13:13:00', 3, '0000-00-00 00:00:00', 0, 1),
(98, 115, 315, 0, '2021-09-18', '2021-11-18', '2021-08-18 13:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(99, 115, 316, 0, '2021-09-18', '2021-11-18', '2021-08-18 13:39:00', 3, '0000-00-00 00:00:00', 0, 1),
(100, 116, 317, 0, '2021-09-18', '2021-11-18', '2021-08-18 14:30:00', 3, '0000-00-00 00:00:00', 0, 1),
(101, 116, 318, 0, '2021-10-06', '2022-02-18', '2021-08-18 14:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(102, 116, 319, 0, '2021-09-18', '2021-11-18', '2021-08-18 15:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(103, 117, 320, 0, '2021-09-18', '2021-11-18', '2021-08-18 16:37:00', 3, '0000-00-00 00:00:00', 0, 1),
(104, 117, 321, 0, '2021-09-01', '2021-09-18', '2021-08-18 18:15:00', 3, '0000-00-00 00:00:00', 0, 1),
(105, 117, 322, 0, '2021-09-01', '2021-09-18', '2021-08-19 09:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(106, 117, 323, 0, '2021-09-19', '2021-11-19', '2021-08-19 10:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(107, 120, 326, 0, '2021-09-05', '2021-09-22', '2021-08-22 13:15:00', 3, '0000-00-00 00:00:00', 0, 1),
(108, 121, 327, 0, '2021-10-10', '2022-02-22', '2021-08-22 16:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(109, 122, 328, 0, '2021-09-23', '2021-11-23', '2021-08-23 17:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(110, 106, 329, 0, '2021-10-12', '2022-02-24', '2021-08-24 11:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(111, 106, 330, 0, '2021-10-12', '2022-02-24', '2021-08-24 11:36:00', 3, '0000-00-00 00:00:00', 0, 1),
(112, 123, 331, 0, '2021-09-25', '2021-11-25', '2021-08-25 13:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(113, 123, 332, 0, '2021-10-13', '2022-02-25', '2021-08-25 14:06:00', 3, '0000-00-00 00:00:00', 0, 1),
(114, 124, 333, 0, '2021-09-25', '2021-11-25', '2021-08-25 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(115, 124, 334, 0, '2021-09-25', '2021-11-25', '2021-08-25 16:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(116, 124, 335, 0, '2021-09-25', '2021-11-25', '2021-08-25 17:19:00', 3, '0000-00-00 00:00:00', 0, 1),
(117, 119, 336, 0, '2021-09-30', '2021-11-30', '2021-08-30 16:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(118, 125, 337, 0, '2021-09-14', '2021-10-01', '2021-08-31 13:25:00', 3, '0000-00-00 00:00:00', 0, 1),
(119, 126, 338, 0, '2021-10-01', '2021-12-01', '2021-08-31 14:14:00', 3, '0000-00-00 00:00:00', 0, 1),
(120, 126, 339, 0, '2021-10-01', '2021-12-01', '2021-08-31 14:14:00', 3, '0000-00-00 00:00:00', 0, 1),
(121, 127, 340, 0, '2021-10-01', '2021-12-01', '2021-08-31 16:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(122, 128, 341, 0, '2021-10-01', '2021-12-01', '2021-08-31 17:06:00', 3, '0000-00-00 00:00:00', 0, 1),
(124, 129, 342, 0, '2021-10-01', '2021-12-01', '2021-08-31 17:44:00', 1, '0000-00-00 00:00:00', 0, 1),
(125, 130, 343, 0, '2021-09-15', '2021-10-01', '2021-09-01 10:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(126, 130, 344, 0, '2021-10-20', '2022-03-01', '2021-09-01 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(127, 131, 345, 0, '2021-10-01', '2021-12-01', '2021-09-01 15:58:00', 3, '0000-00-00 00:00:00', 0, 1),
(128, 131, 346, 0, '2021-09-15', '2021-10-01', '2021-09-01 16:24:00', 3, '0000-00-00 00:00:00', 0, 1),
(129, 131, 347, 0, '2021-10-01', '2021-12-01', '2021-09-01 16:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(130, 131, 348, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(131, 132, 349, 0, '2021-09-18', '2021-10-04', '2021-09-04 13:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(133, 133, 350, 0, '2021-09-18', '2021-10-04', '2021-09-04 15:30:00', 4, '0000-00-00 00:00:00', 0, 1),
(134, 134, 351, 0, '2021-10-04', '2021-12-04', '2021-09-05 09:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(135, 135, 352, 0, '2021-09-19', '2021-10-05', '2021-09-05 11:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(136, 136, 353, 0, '2021-10-24', '2022-03-05', '2021-09-05 12:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(137, 137, 354, 0, '2021-10-24', '2022-03-05', '2021-09-05 13:51:00', 3, '0000-00-00 00:00:00', 0, 1),
(138, 138, 355, 0, '2021-10-05', '2021-12-05', '2021-09-05 15:34:00', 3, '0000-00-00 00:00:00', 0, 1),
(139, 139, 356, 0, '2021-10-24', '2022-03-05', '2021-09-05 16:34:00', 3, '0000-00-00 00:00:00', 0, 1),
(140, 140, 357, 0, '2021-10-05', '2021-12-05', '2021-09-05 18:00:00', 3, '0000-00-00 00:00:00', 0, 1),
(141, 141, 358, 0, '2021-10-25', '2022-03-06', '2021-09-06 10:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(142, 141, 359, 0, '2021-10-06', '2021-12-06', '2021-09-06 10:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(144, 141, 360, 0, '2021-10-25', '2022-03-06', '2021-09-06 11:34:00', 4, '0000-00-00 00:00:00', 0, 1),
(145, 142, 361, 0, '2021-10-06', '2021-12-06', '2021-09-06 12:04:00', 3, '0000-00-00 00:00:00', 0, 1),
(146, 142, 362, 0, '2021-10-06', '2021-12-06', '2021-09-06 12:56:00', 3, '0000-00-00 00:00:00', 0, 1),
(147, 142, 363, 0, '2021-10-06', '2021-12-06', '2021-09-06 13:10:00', 3, '0000-00-00 00:00:00', 0, 1),
(148, 142, 364, 0, '2021-10-25', '2022-03-06', '2021-09-06 13:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(149, 143, 365, 0, '2021-10-25', '2022-03-06', '2021-09-06 15:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(150, 143, 366, 0, '2021-10-25', '2022-03-06', '2021-09-06 15:36:00', 3, '0000-00-00 00:00:00', 0, 1),
(151, 144, 367, 0, '2021-10-06', '2021-12-06', '2021-09-06 16:38:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `op_id` int(11) NOT NULL,
  `op_title` varchar(255) NOT NULL,
  `op_created_at` datetime NOT NULL,
  `op_created_by` int(11) NOT NULL,
  `op_updated_at` datetime NOT NULL,
  `op_updated_by` int(11) NOT NULL,
  `op_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`op_id`, `op_title`, `op_created_at`, `op_created_by`, `op_updated_at`, `op_updated_by`, `op_status`) VALUES
(4, 'Test', '0000-00-00 00:00:00', 2, '2021-03-16 18:35:00', 2, 0),
(5, 'Doctor', '0000-00-00 00:00:00', 2, '2021-03-20 10:19:00', 2, 1),
(6, 'Nurse', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(7, 'Teacher', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(8, 'Web Developer', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(9, 'Graphics Designer', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(10, 'Student', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(11, 'Farmer', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(12, 'Engineer', '0000-00-00 00:00:00', 2, '2021-06-23 16:02:00', 2, 1),
(13, 'Driver', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(14, 'Rikshapuller', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(15, 'House Wife', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(16, 'Businessman', '0000-00-00 00:00:00', 2, '2021-06-23 16:02:00', 2, 1),
(17, 'NOT Given', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(18, 'Service holder', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(19, 'Unemployed', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1),
(20, 'Retired Job holder', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `on_call_shedule_by_ptient_status`
--

CREATE TABLE `on_call_shedule_by_ptient_status` (
  `ocs_id` int(11) NOT NULL,
  `ocs_p_id` int(11) NOT NULL,
  `ocs_date` date NOT NULL,
  `ocs_created_at` datetime NOT NULL,
  `ocs_created_by` int(11) NOT NULL,
  `ocs_updated_at` datetime NOT NULL,
  `ocs_updated_by` int(11) NOT NULL,
  `ocs_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `on_call_shedule_by_ptient_status`
--

INSERT INTO `on_call_shedule_by_ptient_status` (`ocs_id`, `ocs_p_id`, `ocs_date`, `ocs_created_at`, `ocs_created_by`, `ocs_updated_at`, `ocs_updated_by`, `ocs_status`, `par_id`) VALUES
(1, 11, '2021-08-29', '2021-06-22 14:17:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(2, 11, '2021-08-29', '2021-06-23 15:34:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(3, 5, '2021-08-26', '2021-06-24 10:41:00', 2, '2021-08-12 13:11:00', 1, 1, 27),
(4, 3, '2021-09-05', '2021-06-26 12:21:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(5, 3, '2021-09-05', '2021-06-26 15:18:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(6, 3, '2021-09-05', '2021-06-26 15:56:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(7, 3, '2021-09-05', '2021-06-26 16:57:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(8, 22, '2021-07-18', '2021-06-27 11:56:00', 4, '0000-00-00 00:00:00', 0, 1, 280),
(9, 23, '2021-07-18', '2021-06-27 12:10:00', 4, '0000-00-00 00:00:00', 0, 1, 12),
(10, 23, '2021-07-18', '2021-06-27 12:25:00', 4, '0000-00-00 00:00:00', 0, 1, 12),
(11, 3, '2021-09-05', '2021-06-27 12:49:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(12, 3, '2021-09-05', '2021-06-27 13:00:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(13, 3, '2021-09-05', '2021-06-27 13:10:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(14, 3, '2021-09-05', '2021-06-27 13:32:00', 4, '2021-08-08 14:55:00', 1, 1, 16),
(15, 21, '2021-07-18', '2021-06-27 14:03:00', 4, '0000-00-00 00:00:00', 0, 1, 20),
(16, 21, '2021-07-25', '2021-06-27 14:24:00', 4, '0000-00-00 00:00:00', 0, 1, 20),
(17, 21, '2021-07-25', '2021-06-27 14:37:00', 4, '0000-00-00 00:00:00', 0, 1, 20),
(18, 21, '2021-07-25', '2021-06-27 15:15:00', 4, '0000-00-00 00:00:00', 0, 1, 20),
(19, 5, '2021-08-26', '2021-06-27 15:54:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(20, 5, '2021-08-26', '2021-06-27 16:11:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(21, 5, '2021-08-26', '2021-06-27 16:39:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(22, 5, '2021-08-26', '2021-06-27 16:59:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(23, 5, '2021-08-26', '2021-06-27 17:45:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(24, 5, '2021-08-26', '2021-06-28 09:58:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(25, 5, '2021-08-26', '2021-06-28 10:36:00', 4, '2021-08-12 13:11:00', 1, 1, 27),
(26, 7, '2021-09-05', '2021-06-28 12:28:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(27, 7, '2021-09-05', '2021-06-28 12:42:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(28, 7, '2021-09-05', '2021-06-28 13:01:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(29, 7, '2021-09-05', '2021-06-28 13:10:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(30, 7, '2021-09-05', '2021-06-28 13:21:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(31, 7, '2021-09-05', '2021-06-28 13:34:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(32, 7, '2021-09-05', '2021-06-28 13:52:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(33, 7, '2021-09-05', '2021-06-28 14:18:00', 4, '2021-08-08 15:08:00', 1, 1, 35),
(34, 6, '2021-07-20', '2021-06-29 10:02:00', 4, '0000-00-00 00:00:00', 0, 1, 36),
(35, 8, '2021-07-27', '2021-06-29 10:09:00', 4, '0000-00-00 00:00:00', 0, 1, 44),
(36, 8, '2021-07-27', '2021-06-29 10:20:00', 4, '0000-00-00 00:00:00', 0, 1, 44),
(37, 25, '2021-07-20', '2021-06-29 10:34:00', 4, '0000-00-00 00:00:00', 0, 1, 43),
(38, 8, '2021-07-20', '2021-06-29 11:01:00', 4, '0000-00-00 00:00:00', 0, 1, 44),
(39, 26, '2021-07-20', '2021-06-29 11:25:00', 4, '0000-00-00 00:00:00', 0, 1, 47),
(40, 26, '2021-07-20', '2021-06-29 11:33:00', 4, '0000-00-00 00:00:00', 0, 1, 47),
(41, 26, '2021-07-27', '2021-06-29 11:42:00', 4, '0000-00-00 00:00:00', 0, 1, 47),
(42, 26, '2021-07-27', '2021-06-29 11:50:00', 4, '0000-00-00 00:00:00', 0, 1, 47),
(43, 27, '2021-07-27', '2021-06-29 12:25:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(44, 27, '2021-07-27', '2021-06-29 12:40:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(45, 27, '2021-07-27', '2021-06-29 12:50:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(46, 27, '2021-07-27', '2021-06-29 13:05:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(47, 27, '2021-07-27', '2021-06-29 14:25:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(48, 27, '2021-07-27', '2021-06-29 14:41:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(49, 27, '2021-07-20', '2021-06-29 14:57:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(50, 27, '2021-07-27', '2021-06-29 15:05:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(51, 27, '2021-07-27', '2021-06-29 15:23:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(52, 27, '2021-07-27', '2021-06-29 15:36:00', 4, '0000-00-00 00:00:00', 0, 1, 56),
(53, 11, '2021-08-29', '2021-06-29 16:07:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(54, 11, '2021-08-29', '2021-06-29 16:16:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(55, 11, '2021-08-29', '2021-06-29 16:30:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(56, 11, '2021-08-29', '2021-06-29 16:36:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(57, 11, '2021-08-29', '2021-06-29 16:48:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(58, 11, '2021-08-29', '2021-06-29 17:01:00', 4, '2021-08-08 17:21:00', 1, 1, 62),
(59, 31, '2021-07-13', '2021-06-29 18:50:00', 4, '0000-00-00 00:00:00', 0, 1, 63),
(60, 28, '2021-07-28', '2021-06-30 09:14:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(61, 28, '2021-07-28', '2021-06-30 09:30:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(62, 28, '2021-07-28', '2021-06-30 09:41:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(63, 28, '2021-07-28', '2021-06-30 09:56:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(64, 28, '2021-07-28', '2021-06-30 10:12:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(65, 28, '2021-07-21', '2021-06-30 10:22:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(66, 28, '2021-07-21', '2021-06-30 10:30:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(67, 28, '2021-07-21', '2021-06-30 10:44:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(68, 28, '2021-07-21', '2021-06-30 10:55:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(69, 28, '2021-07-21', '2021-06-30 11:18:00', 4, '0000-00-00 00:00:00', 0, 1, 73),
(70, 32, '2021-07-21', '2021-06-30 12:37:00', 4, '0000-00-00 00:00:00', 0, 1, 74),
(71, 33, '2021-07-22', '2021-06-30 17:26:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(72, 33, '2021-07-22', '2021-06-30 17:42:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(73, 33, '2021-07-22', '2021-06-30 17:51:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(74, 33, '2021-07-22', '2021-07-01 09:17:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(75, 33, '2021-07-22', '2021-07-01 09:25:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(76, 33, '2021-07-22', '2021-07-01 09:33:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(77, 33, '2021-07-22', '2021-07-01 09:41:00', 4, '2021-07-01 09:42:00', 1, 1, 85),
(78, 33, '2021-07-22', '2021-07-01 09:48:00', 4, '0000-00-00 00:00:00', 0, 1, 85),
(79, 33, '2021-07-22', '2021-07-01 10:08:00', 4, '0000-00-00 00:00:00', 0, 1, 85),
(80, 33, '2021-07-29', '2021-07-01 10:25:00', 4, '0000-00-00 00:00:00', 0, 1, 85),
(81, 33, '2021-07-29', '2021-07-01 10:35:00', 4, '0000-00-00 00:00:00', 0, 1, 85),
(82, 34, '2021-07-22', '2021-07-01 11:31:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(83, 34, '2021-07-22', '2021-07-01 11:43:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(84, 34, '2021-07-22', '2021-07-01 11:55:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(85, 34, '2021-07-22', '2021-07-01 12:08:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(86, 34, '2021-07-29', '2021-07-01 12:23:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(87, 34, '2021-07-22', '2021-07-01 12:34:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(88, 34, '2021-07-29', '2021-07-01 12:45:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(89, 34, '2021-07-29', '2021-07-01 13:07:00', 4, '0000-00-00 00:00:00', 0, 1, 93),
(90, 35, '2021-07-29', '2021-07-01 16:02:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(91, 35, '2021-07-29', '2021-07-01 16:11:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(92, 35, '2021-07-29', '2021-07-01 16:19:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(93, 35, '2021-07-29', '2021-07-01 16:32:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(94, 35, '2021-07-29', '2021-07-01 16:42:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(95, 35, '2021-07-29', '2021-07-01 17:00:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(96, 35, '2021-07-29', '2021-07-01 17:16:00', 4, '0000-00-00 00:00:00', 0, 1, 100),
(97, 37, '2021-07-24', '2021-07-03 10:16:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(98, 37, '2021-07-24', '2021-07-03 10:29:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(99, 37, '2021-07-24', '2021-07-03 10:40:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(100, 37, '2021-07-24', '2021-07-03 10:54:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(101, 37, '2021-07-31', '2021-07-03 11:02:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(102, 37, '2021-07-31', '2021-07-03 11:17:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(103, 37, '2021-07-31', '2021-07-03 11:31:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(104, 37, '2021-07-24', '2021-07-03 12:00:00', 4, '0000-00-00 00:00:00', 0, 1, 109),
(105, 38, '2021-07-24', '2021-07-03 12:42:00', 4, '2021-07-03 12:54:00', 1, 1, 116),
(106, 38, '2021-07-24', '2021-07-03 12:53:00', 4, '2021-07-03 12:54:00', 1, 1, 116),
(107, 38, '2021-07-31', '2021-07-03 13:02:00', 4, '0000-00-00 00:00:00', 0, 1, 116),
(108, 38, '2021-07-31', '2021-07-03 13:12:00', 4, '0000-00-00 00:00:00', 0, 1, 116),
(109, 38, '2021-07-31', '2021-07-03 13:22:00', 4, '0000-00-00 00:00:00', 0, 1, 116),
(110, 38, '2021-07-24', '2021-07-03 13:35:00', 4, '0000-00-00 00:00:00', 0, 1, 116),
(111, 38, '2021-07-31', '2021-07-03 13:53:00', 4, '0000-00-00 00:00:00', 0, 1, 116),
(112, 39, '2021-08-01', '2021-07-04 09:27:00', 4, '0000-00-00 00:00:00', 0, 1, 120),
(113, 39, '2021-08-01', '2021-07-04 09:38:00', 4, '0000-00-00 00:00:00', 0, 1, 120),
(114, 39, '2021-08-01', '2021-07-04 10:00:00', 4, '0000-00-00 00:00:00', 0, 1, 120),
(115, 39, '2021-08-01', '2021-07-04 10:10:00', 4, '0000-00-00 00:00:00', 0, 1, 120),
(119, 41, '2021-08-01', '2021-07-04 12:21:00', 4, '0000-00-00 00:00:00', 0, 1, 125),
(120, 41, '2021-08-01', '2021-07-04 12:29:00', 4, '0000-00-00 00:00:00', 0, 1, 125),
(121, 42, '2021-08-01', '2021-07-04 12:52:00', 4, '0000-00-00 00:00:00', 0, 1, 126),
(122, 43, '2021-08-01', '2021-07-04 14:22:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(123, 43, '2021-08-01', '2021-07-04 14:27:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(124, 43, '2021-08-01', '2021-07-04 14:37:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(125, 43, '2021-08-01', '2021-07-04 14:48:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(126, 43, '2021-08-01', '2021-07-04 14:56:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(127, 43, '2021-08-01', '2021-07-04 15:27:00', 4, '0000-00-00 00:00:00', 0, 1, 133),
(128, 44, '2021-08-01', '2021-07-04 17:11:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(129, 44, '2021-08-01', '2021-07-04 17:26:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(130, 44, '2021-08-01', '2021-07-04 17:33:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(131, 44, '2021-08-01', '2021-07-04 17:43:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(132, 44, '2021-08-02', '2021-07-05 09:13:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(133, 44, '2021-08-02', '2021-07-05 09:28:00', 4, '0000-00-00 00:00:00', 0, 1, 139),
(134, 45, '2021-08-02', '2021-07-05 10:01:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(135, 45, '2021-08-02', '2021-07-05 10:11:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(136, 45, '2021-08-02', '2021-07-05 10:29:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(137, 45, '2021-08-02', '2021-07-05 10:42:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(138, 45, '2021-08-02', '2021-07-05 10:50:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(139, 45, '2021-08-02', '2021-07-05 13:09:00', 4, '0000-00-00 00:00:00', 0, 1, 145),
(140, 46, '2021-08-29', '2021-07-05 13:28:00', 4, '2021-08-08 15:38:00', 1, 1, 148),
(141, 46, '2021-08-29', '2021-07-05 13:36:00', 4, '2021-08-08 15:38:00', 1, 1, 148),
(142, 46, '2021-08-29', '2021-07-05 13:44:00', 4, '2021-08-08 15:38:00', 1, 1, 148),
(143, 47, '2021-07-26', '2021-07-05 14:04:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(144, 47, '2021-07-26', '2021-07-05 14:33:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(145, 47, '2021-08-02', '2021-07-05 14:45:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(146, 47, '2021-08-02', '2021-07-05 14:58:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(147, 47, '2021-08-02', '2021-07-05 15:09:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(148, 47, '2021-08-02', '2021-07-05 15:26:00', 4, '0000-00-00 00:00:00', 0, 1, 154),
(149, 48, '2021-07-26', '2021-07-05 16:07:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(150, 48, '2021-08-02', '2021-07-05 16:54:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(151, 48, '2021-08-02', '2021-07-05 17:02:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(152, 48, '2021-08-02', '2021-07-05 17:10:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(153, 48, '2021-08-02', '2021-07-05 17:24:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(154, 48, '2021-08-03', '2021-07-06 09:50:00', 4, '0000-00-00 00:00:00', 0, 1, 160),
(155, 49, '2021-08-03', '2021-07-06 11:30:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(156, 49, '2021-08-03', '2021-07-06 11:40:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(157, 49, '2021-08-03', '2021-07-06 11:54:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(158, 49, '2021-08-03', '2021-07-06 12:08:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(159, 49, '2021-08-03', '2021-07-06 13:40:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(160, 49, '2021-08-03', '2021-07-06 13:52:00', 4, '0000-00-00 00:00:00', 0, 1, 166),
(161, 50, '2021-08-03', '2021-07-06 16:21:00', 4, '0000-00-00 00:00:00', 0, 1, 170),
(162, 50, '2021-08-03', '2021-07-06 16:33:00', 4, '0000-00-00 00:00:00', 0, 1, 170),
(163, 50, '2021-08-03', '2021-07-06 16:43:00', 4, '0000-00-00 00:00:00', 0, 1, 170),
(164, 50, '2021-08-03', '2021-07-06 16:57:00', 4, '0000-00-00 00:00:00', 0, 1, 170),
(165, 51, '2021-07-28', '2021-07-07 10:21:00', 4, '0000-00-00 00:00:00', 0, 1, 173),
(166, 51, '2021-08-04', '2021-07-07 10:49:00', 4, '0000-00-00 00:00:00', 0, 1, 173),
(167, 51, '2021-07-28', '2021-07-07 11:02:00', 4, '0000-00-00 00:00:00', 0, 1, 173),
(168, 52, '2021-09-05', '2021-07-07 14:40:00', 4, '2021-08-08 17:12:00', 1, 1, 177),
(169, 52, '2021-09-05', '2021-07-07 14:48:00', 4, '2021-08-08 17:12:00', 1, 1, 177),
(170, 52, '2021-09-05', '2021-07-07 14:56:00', 4, '2021-08-08 17:12:00', 1, 1, 177),
(171, 52, '2021-09-05', '2021-07-07 16:14:00', 4, '2021-08-08 17:12:00', 1, 1, 177),
(172, 53, '2021-08-05', '2021-07-07 17:21:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(173, 53, '2021-08-05', '2021-07-07 17:44:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(174, 53, '2021-08-05', '2021-07-07 17:51:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(175, 22, '2021-08-10', '2021-07-07 21:24:00', 3, '0000-00-00 00:00:00', 0, 1, 280),
(176, 53, '2021-08-05', '2021-07-08 08:52:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(177, 53, '2021-08-05', '2021-07-08 09:03:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(178, 53, '2021-08-05', '2021-07-08 09:11:00', 4, '2021-07-08 09:12:00', 1, 1, 183),
(179, 54, '2021-07-29', '2021-07-08 09:42:00', 4, '0000-00-00 00:00:00', 0, 1, 187),
(180, 54, '2021-07-29', '2021-07-08 09:50:00', 4, '0000-00-00 00:00:00', 0, 1, 187),
(181, 54, '2021-07-29', '2021-07-08 09:58:00', 4, '0000-00-00 00:00:00', 0, 1, 187),
(182, 54, '2021-08-05', '2021-07-08 10:11:00', 4, '0000-00-00 00:00:00', 0, 1, 187),
(183, 55, '2021-07-29', '2021-07-08 10:54:00', 4, '0000-00-00 00:00:00', 0, 1, 192),
(184, 55, '2021-08-05', '2021-07-08 11:30:00', 4, '0000-00-00 00:00:00', 0, 1, 192),
(185, 55, '2021-08-05', '2021-07-08 11:40:00', 4, '0000-00-00 00:00:00', 0, 1, 192),
(186, 55, '2021-08-05', '2021-07-08 11:51:00', 4, '0000-00-00 00:00:00', 0, 1, 192),
(187, 55, '2021-08-05', '2021-07-08 12:10:00', 4, '0000-00-00 00:00:00', 0, 1, 192),
(188, 56, '2021-08-05', '2021-07-08 13:01:00', 4, '2021-07-08 13:33:00', 4, 1, 196),
(189, 56, '2021-08-05', '2021-07-08 13:09:00', 4, '2021-07-08 13:33:00', 4, 1, 196),
(190, 56, '2021-08-05', '2021-07-08 13:23:00', 4, '2021-07-08 13:33:00', 4, 1, 196),
(191, 56, '2021-08-05', '2021-07-08 13:32:00', 4, '2021-07-08 13:33:00', 4, 1, 196),
(192, 57, '2021-08-05', '2021-07-08 14:01:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(193, 57, '2021-08-05', '2021-07-08 14:46:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(194, 57, '2021-08-05', '2021-07-08 14:55:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(195, 57, '2021-08-05', '2021-07-08 15:14:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(196, 57, '2021-08-05', '2021-07-08 15:31:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(197, 57, '2021-08-05', '2021-07-08 15:48:00', 4, '2021-07-08 15:49:00', 1, 1, 202),
(198, 58, '2021-07-29', '2021-07-08 16:16:00', 4, '0000-00-00 00:00:00', 0, 1, 206),
(199, 58, '2021-07-29', '2021-07-08 16:30:00', 4, '0000-00-00 00:00:00', 0, 1, 206),
(200, 58, '2021-08-05', '2021-07-08 16:48:00', 4, '0000-00-00 00:00:00', 0, 1, 206),
(201, 58, '2021-08-05', '2021-07-08 17:08:00', 4, '0000-00-00 00:00:00', 0, 1, 206),
(202, 59, '2021-08-07', '2021-07-08 17:50:00', 4, '2021-07-10 12:30:00', 1, 1, 211),
(203, 30, '2021-08-06', '2021-07-09 23:58:00', 4, '0000-00-00 00:00:00', 0, 1, 208),
(204, 59, '2021-08-07', '2021-07-10 12:28:00', 4, '2021-07-10 12:30:00', 1, 1, 211),
(205, 59, '2021-08-07', '2021-07-10 12:41:00', 4, '0000-00-00 00:00:00', 0, 1, 211),
(206, 59, '2021-08-07', '2021-07-10 12:53:00', 4, '0000-00-00 00:00:00', 0, 1, 211),
(207, 60, '2021-07-31', '2021-07-10 13:31:00', 4, '0000-00-00 00:00:00', 0, 1, 215),
(208, 60, '2021-07-31', '2021-07-10 13:50:00', 4, '0000-00-00 00:00:00', 0, 1, 215),
(209, 60, '2021-07-31', '2021-07-10 14:07:00', 4, '0000-00-00 00:00:00', 0, 1, 215),
(210, 60, '2021-08-07', '2021-07-10 14:29:00', 4, '0000-00-00 00:00:00', 0, 1, 215),
(211, 61, '2021-07-24', '2021-07-10 15:06:00', 4, '0000-00-00 00:00:00', 0, 1, 216),
(212, 62, '2021-08-29', '2021-07-10 15:37:00', 4, '2021-08-08 15:24:00', 1, 1, 219),
(213, 62, '2021-08-29', '2021-07-10 15:55:00', 4, '2021-08-08 15:24:00', 1, 1, 219),
(214, 62, '2021-08-29', '2021-07-10 16:16:00', 4, '2021-08-08 15:24:00', 1, 1, 219),
(215, 63, '2021-08-07', '2021-07-10 17:14:00', 4, '0000-00-00 00:00:00', 0, 1, 221),
(216, 63, '2021-08-07', '2021-07-10 17:35:00', 4, '0000-00-00 00:00:00', 0, 1, 221),
(217, 64, '2021-08-01', '2021-07-11 09:01:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(218, 64, '2021-08-01', '2021-07-11 09:37:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(219, 64, '2021-08-01', '2021-07-11 09:52:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(220, 64, '2021-08-08', '2021-07-11 10:19:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(221, 64, '2021-08-08', '2021-07-11 10:32:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(222, 64, '2021-08-08', '2021-07-11 12:17:00', 4, '0000-00-00 00:00:00', 0, 1, 227),
(223, 65, '2021-08-01', '2021-07-11 15:12:00', 4, '2021-07-11 15:14:00', 1, 1, 229),
(224, 65, '2021-08-01', '2021-07-11 15:28:00', 4, '0000-00-00 00:00:00', 0, 1, 229),
(225, 66, '2021-08-02', '2021-07-12 10:08:00', 4, '0000-00-00 00:00:00', 0, 1, 230),
(226, 68, '2021-07-27', '2021-07-13 15:42:00', 4, '0000-00-00 00:00:00', 0, 1, 231),
(227, 70, '2021-08-04', '2021-07-14 12:07:00', 4, '0000-00-00 00:00:00', 0, 1, 233),
(228, 71, '2021-08-11', '2021-07-14 13:10:00', 4, '2021-07-14 13:12:00', 1, 1, 234),
(229, 72, '2021-08-11', '2021-07-14 14:05:00', 4, '0000-00-00 00:00:00', 0, 1, 235),
(230, 73, '2021-08-04', '2021-07-14 15:17:00', 4, '0000-00-00 00:00:00', 0, 1, 236),
(231, 74, '2021-07-29', '2021-07-15 12:41:00', 4, '0000-00-00 00:00:00', 0, 1, 237),
(232, 74, '2021-08-05', '2021-07-15 13:10:00', 4, '0000-00-00 00:00:00', 0, 1, 238),
(233, 74, '2021-07-29', '2021-07-15 15:40:00', 4, '0000-00-00 00:00:00', 0, 1, 239),
(234, 75, '2021-09-05', '2021-07-15 16:36:00', 4, '2021-08-08 17:08:00', 1, 1, 240),
(235, 75, '2021-09-05', '2021-07-15 16:49:00', 4, '2021-08-08 17:08:00', 1, 1, 241),
(236, 76, '2021-08-07', '2021-07-17 13:40:00', 4, '0000-00-00 00:00:00', 0, 1, 242),
(237, 77, '2021-08-14', '2021-07-17 14:19:00', 4, '2021-07-17 14:21:00', 1, 1, 243),
(238, 78, '2021-08-07', '2021-07-17 16:03:00', 4, '0000-00-00 00:00:00', 0, 1, 244),
(239, 79, '2021-08-07', '2021-07-17 16:53:00', 4, '0000-00-00 00:00:00', 0, 1, 245),
(240, 81, '2021-08-16', '2021-07-19 11:16:00', 4, '2021-07-26 12:42:00', 1, 1, 246),
(241, 82, '2021-08-21', '2021-07-19 14:08:00', 4, '2021-07-24 20:29:00', 1, 1, 247),
(242, 82, '2021-08-21', '2021-07-19 15:24:00', 4, '2021-07-24 20:29:00', 1, 1, 248),
(243, 78, '2021-08-02', '2021-07-19 16:06:00', 4, '0000-00-00 00:00:00', 0, 1, 249),
(244, 78, '2021-08-22', '2021-07-25 11:38:00', 4, '0000-00-00 00:00:00', 0, 1, 250),
(245, 83, '2021-08-29', '2021-07-25 16:49:00', 4, '2021-08-08 17:13:00', 1, 1, 251),
(246, 84, '2021-09-05', '2021-07-26 17:08:00', 4, '2021-08-08 17:29:00', 1, 1, 252),
(247, 84, '2021-09-05', '2021-07-29 10:27:00', 4, '2021-08-08 17:29:00', 1, 1, 253),
(248, 84, '2021-09-05', '2021-07-29 11:10:00', 4, '2021-08-08 17:29:00', 1, 1, 254),
(249, 68, '2021-08-19', '2021-07-29 11:55:00', 4, '0000-00-00 00:00:00', 0, 1, 255),
(250, 85, '2021-08-19', '2021-07-29 12:55:00', 4, '0000-00-00 00:00:00', 0, 1, 256),
(251, 86, '2021-08-26', '2021-07-29 15:36:00', 4, '0000-00-00 00:00:00', 0, 1, 257),
(252, 87, '2021-08-28', '2021-07-31 11:16:00', 4, '0000-00-00 00:00:00', 0, 1, 258),
(253, 88, '2021-08-21', '2021-07-31 12:53:00', 4, '2021-07-31 12:57:00', 1, 1, 259),
(254, 89, '2021-08-21', '2021-07-31 14:25:00', 4, '0000-00-00 00:00:00', 0, 1, 260),
(255, 90, '2021-08-23', '2021-08-02 14:37:00', 4, '0000-00-00 00:00:00', 0, 1, 261),
(256, 92, '2021-08-24', '2021-08-03 12:16:00', 4, '0000-00-00 00:00:00', 0, 1, 262),
(257, 93, '2021-08-24', '2021-08-03 12:59:00', 4, '0000-00-00 00:00:00', 0, 1, 263),
(258, 93, '2021-08-24', '2021-08-03 13:12:00', 4, '0000-00-00 00:00:00', 0, 1, 264),
(259, 93, '2021-08-24', '2021-08-03 14:17:00', 4, '0000-00-00 00:00:00', 0, 1, 265),
(260, 94, '2021-08-24', '2021-08-03 15:47:00', 4, '0000-00-00 00:00:00', 0, 1, 266),
(261, 95, '2021-08-18', '2021-08-03 17:29:00', 4, '2021-08-04 09:27:00', 1, 1, 267),
(262, 96, '2021-09-05', '2021-08-04 10:30:00', 4, '2021-08-08 15:31:00', 1, 1, 268),
(263, 97, '2021-08-25', '2021-08-04 11:18:00', 4, '0000-00-00 00:00:00', 0, 1, 269),
(264, 67, '2021-08-25', '2021-08-04 15:10:00', 4, '0000-00-00 00:00:00', 0, 1, 270),
(265, 67, '2021-08-25', '2021-08-04 16:02:00', 4, '0000-00-00 00:00:00', 0, 1, 271),
(266, 67, '2021-09-01', '2021-08-04 16:51:00', 4, '0000-00-00 00:00:00', 0, 1, 272),
(267, 99, '2021-08-26', '2021-08-05 13:32:00', 4, '2021-08-05 13:42:00', 4, 1, 273),
(268, 101, '2022-01-08', '2021-08-08 12:20:00', 4, '0000-00-00 00:00:00', 0, 1, 274),
(269, 101, '2021-09-05', '2021-08-08 12:54:00', 4, '0000-00-00 00:00:00', 0, 1, 275),
(270, 101, '2021-09-05', '2021-08-08 13:09:00', 4, '0000-00-00 00:00:00', 0, 1, 276),
(271, 102, '2021-08-30', '2021-08-09 16:05:00', 4, '0000-00-00 00:00:00', 0, 1, 277),
(272, 104, '2021-08-30', '2021-08-09 18:00:00', 4, '2021-08-09 18:01:00', 1, 1, 278),
(273, 22, '2021-08-31', '2021-08-10 17:49:00', 4, '0000-00-00 00:00:00', 0, 1, 279);

-- --------------------------------------------------------

--
-- Table structure for table `patient_6_minute_walk_test`
--

CREATE TABLE `patient_6_minute_walk_test` (
  `p6mwt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p6mwt_date` date NOT NULL,
  `p6mwt_performance` varchar(255) NOT NULL,
  `p6mwt_speed` varchar(255) NOT NULL,
  `p6mwt_borg_scale_sob` varchar(255) NOT NULL,
  `p6mwt_borg_scale_fatigue` varchar(255) NOT NULL,
  `p6mwt_distance` varchar(255) NOT NULL,
  `p6mwt_created_at` datetime NOT NULL,
  `p6mwt_created_by` int(11) NOT NULL,
  `p6mwt_updated_at` datetime NOT NULL,
  `p6mwt_updated_by` int(11) NOT NULL,
  `p6mwt_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_af_status`
--

CREATE TABLE `patient_af_status` (
  `pas_id` int(11) NOT NULL,
  `as_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pas_created_at` datetime NOT NULL,
  `pas_created_by` int(11) NOT NULL,
  `pas_updated_at` datetime NOT NULL,
  `pas_updated_by` int(11) NOT NULL,
  `pas_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_angiogram`
--

CREATE TABLE `patient_angiogram` (
  `pa_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pa_date` date NOT NULL,
  `pa_value` varchar(255) NOT NULL,
  `pa_created_at` datetime NOT NULL,
  `pa_created_by` int(11) NOT NULL,
  `pa_updated_at` datetime NOT NULL,
  `pa_updated_by` int(11) NOT NULL,
  `pa_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_angiogram_abnormal_value`
--

CREATE TABLE `patient_angiogram_abnormal_value` (
  `paab_id` int(11) NOT NULL,
  `paab_angiogram_row_id` int(11) NOT NULL,
  `paab_title` varchar(255) NOT NULL,
  `paab_created_at` datetime NOT NULL,
  `paab_created_by` int(11) NOT NULL,
  `paab_updated_at` datetime DEFAULT NULL,
  `paab_updated_by` int(11) NOT NULL,
  `paab_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointment_register`
--

CREATE TABLE `patient_appointment_register` (
  `par_id` int(11) NOT NULL,
  `par_p_id` int(11) NOT NULL,
  `par_date` date NOT NULL,
  `par_vt_type` int(11) NOT NULL,
  `par_assessment_date` date NOT NULL,
  `par_visit_no` varchar(255) NOT NULL,
  `par_age` int(11) NOT NULL,
  `par_prescription_date` varchar(255) NOT NULL,
  `par_follow_up_status` int(11) NOT NULL,
  `par_prescription_status` int(11) NOT NULL COMMENT '0=not assesment\r\n1= assesment done\r\n',
  `par_done_prescription` int(11) NOT NULL COMMENT '0=pending\r\n1=done prescription\r\n',
  `par_doctor_seen_status` int(11) NOT NULL COMMENT '0=not seen\r\n1=seen',
  `par_daily_water_limit` varchar(250) NOT NULL,
  `par_next_meet` date DEFAULT NULL,
  `par_telephone_call` date NOT NULL,
  `par_comment` varchar(255) NOT NULL,
  `par_patient_status` varchar(250) NOT NULL,
  `par_created_at` datetime NOT NULL,
  `par_created_by` int(11) NOT NULL,
  `par_updated_at` datetime NOT NULL,
  `par_updated_by` int(11) NOT NULL,
  `par_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_appointment_register`
--

INSERT INTO `patient_appointment_register` (`par_id`, `par_p_id`, `par_date`, `par_vt_type`, `par_assessment_date`, `par_visit_no`, `par_age`, `par_prescription_date`, `par_follow_up_status`, `par_prescription_status`, `par_done_prescription`, `par_doctor_seen_status`, `par_daily_water_limit`, `par_next_meet`, `par_telephone_call`, `par_comment`, `par_patient_status`, `par_created_at`, `par_created_by`, `par_updated_at`, `par_updated_by`, `par_status`) VALUES
(468, 170, '2021-10-01', 25, '2021-10-01', '4353', 345, '2021-10-13', 1, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1),
(469, 170, '2021-10-04', 25, '2021-10-04', '234', 234, '2021-10-21', 2, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1),
(470, 171, '2021-10-04', 25, '2021-10-04', '345', 3453, '2021-10-04', 1, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1),
(471, 170, '2021-10-04', 25, '2021-10-04', '345345', 0, '2021-11-24', 3, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(472, 170, '2021-10-04', 25, '2021-10-04', '234523', 0, '2021-11-30', 4, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1),
(473, 171, '2021-10-04', 25, '2021-10-04', '5345', 0, '2021-11-24', 2, 1, 0, 1, '', '1970-01-01', '0000-00-00', '', '', '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_archive_basic_info`
--

CREATE TABLE `patient_archive_basic_info` (
  `pp_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pp_par_id` int(11) NOT NULL,
  `pp_date_of_assesment` date NOT NULL,
  `pp_hf_id` varchar(255) NOT NULL,
  `pp_mr_no` varchar(255) NOT NULL,
  `pp_name` varchar(255) NOT NULL,
  `pp_age` varchar(255) NOT NULL,
  `pp_birth_date` date NOT NULL,
  `pp_address` varchar(255) NOT NULL,
  `pp_education_level` int(11) NOT NULL,
  `pp_occupation` varchar(255) NOT NULL,
  `pp_income` varchar(255) NOT NULL,
  `pp_marital_status` int(11) NOT NULL,
  `pp_no_of_children` varchar(255) NOT NULL,
  `pp_manstrul_history` varchar(255) NOT NULL,
  `pp_caregiver_name` varchar(255) NOT NULL,
  `pp_caregiver_relation` varchar(255) NOT NULL,
  `pp_caregiver_phone_no` varchar(255) NOT NULL,
  `pp_treting_cardiologist` varchar(255) NOT NULL,
  `pp_height` varchar(255) NOT NULL,
  `pp_pm_history` varchar(255) NOT NULL,
  `pp_riskfactor` varchar(255) NOT NULL,
  `pp_comorbidities` varchar(255) NOT NULL,
  `pp_diagnosis` varchar(255) NOT NULL,
  `pp_created_at` datetime NOT NULL,
  `pp_created_by` int(11) NOT NULL,
  `pp_updated_at` datetime DEFAULT NULL,
  `pp_updated_by` int(11) NOT NULL,
  `pp_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_archive_basic_info`
--

INSERT INTO `patient_archive_basic_info` (`pp_id`, `p_id`, `pp_par_id`, `pp_date_of_assesment`, `pp_hf_id`, `pp_mr_no`, `pp_name`, `pp_age`, `pp_birth_date`, `pp_address`, `pp_education_level`, `pp_occupation`, `pp_income`, `pp_marital_status`, `pp_no_of_children`, `pp_manstrul_history`, `pp_caregiver_name`, `pp_caregiver_relation`, `pp_caregiver_phone_no`, `pp_treting_cardiologist`, `pp_height`, `pp_pm_history`, `pp_riskfactor`, `pp_comorbidities`, `pp_diagnosis`, `pp_created_at`, `pp_created_by`, `pp_updated_at`, `pp_updated_by`, `pp_status`) VALUES
(1, 11, 0, '2018-01-06', '16', '9368', 'Fatema Begum', '138', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '', '', '', '2021-06-26 20:04:00', 3, NULL, 0, 1),
(2, 22, 0, '2021-06-27', '123456', '123456', 'Sojib Sorkar (TEST)', '24', '0000-00-00', '', 8, 'Doctor', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>Past Medical History</p>', '15', '13,14', '<p>Diagnosis</p>', '2021-06-27 11:54:00', 3, NULL, 0, 1),
(3, 22, 0, '2021-06-27', '123456', '123456', 'Sojib Sorkar (TEST)', '24', '0000-00-00', '', 8, 'Doctor', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>Past Medical History</p>', '15', '13,14', '<p>Diagnosis</p>', '2021-06-27 11:57:00', 3, NULL, 0, 1),
(4, 23, 0, '2021-06-27', '123123', '123123', 'TESTONE', '30', '0000-00-00', 'ABC', 8, 'Engineer', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>1234</p>', '15,28', '11,12', '<p>ABC</p>', '2021-06-27 12:22:00', 3, NULL, 0, 1),
(5, 3, 0, '2018-10-17', '46', '8542', 'Nurunnahar Begum', '60', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '6', 'Postneropcusal', '', '', '01921606453', '', '', '<p>. known of DCM</p><p>. OMI (A-S), STK-, LMWtl-(RMCH)</p><p>. H/O ALVF : 03/2007 (RMCH)</p><p>                       04/2010 (NICVD)</p><p>                       05/2010 (UHL)</p><p>. CAG: Normal (04/2005) NHF</p>', '15,17,18', '', '<p>ICM, ?OMI (A-S), Normal coronay antuies, H/O repeated HF. , ?IBS, PUD</p>', '2021-06-27 12:40:00', 3, NULL, 0, 1),
(6, 3, 0, '2018-10-17', '46', '8542', 'Nurunnahar Begum', '60', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '6', 'Postneropcusal', '', '', '01921606453', '', '', '<p>. known of DCM</p><p>. OMI (A-S), STK-, LMWtl-(RMCH)</p><p>. H/O ALVF : 03/2007 (RMCH)</p><p>                       04/2010 (NICVD)</p><p>                       05/2010 (UHL)</p><p>. CAG: Normal (04/2005) NHF</p>', '15,17,18', '', '<p>ICM, ?OMI (A-S), Normal coronay antuies, H/O repeated HF. , ?IBS, PUD</p>', '2021-06-27 12:54:00', 3, NULL, 0, 1),
(7, 3, 0, '2019-06-24', '46', '8542', 'Nurunnahar Begum', '60', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '6', 'Postneropcusal', '', '', '01921606453', '', '', '<p>. known of DCM</p><p>. OMI (A-S), STK-, LMWtl-(RMCH)</p><p>. H/O ALVF : 03/2007 (RMCH)</p><p>                       04/2010 (NICVD)</p><p>                       05/2010 (UHL)</p><p>. CAG: Normal (04/2005) NHF</p>', '15,17,18', '', '<p>ICM, ?OMI (A-S), Normal coronay antuies, H/O repeated HF. , ?IBS, PUD</p>', '2021-06-27 13:04:00', 3, NULL, 0, 1),
(8, 3, 0, '2020-02-23', '46', '8542', 'Nurunnahar Begum', '60', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '6', 'Postneropcusal', '', '', '01921606453', '', '', '<p>. known of DCM</p><p>. OMI (A-S), STK-, LMWtl-(RMCH)</p><p>. H/O ALVF : 03/2007 (RMCH)</p><p>                       04/2010 (NICVD)</p><p>                       05/2010 (UHL)</p><p>. CAG: Normal (04/2005) NHF</p>', '15,17,18', '', '<p>ICM, ?OMI (A-S), Normal coronay antuies, H/O repeated HF. , ?IBS, PUD</p>', '2021-06-27 13:24:00', 3, NULL, 0, 1),
(9, 21, 0, '2017-10-07', '44', '57123', 'Major Golam Mustofa Khan 44', '69', '0000-00-00', 'Dhaka', 8, 'Doctor', '', 0, '', '', '', '', '8414416', 'Dr Momenuzzaman', '', '<p>OMI(Ant) sTK (05/03)</p><p>CAG:DVD(2003)</p><p>H/O UA (06/03, CMH)</p><p>S/P CABG X2 GRAFTS(07/03, INDIA) LIMA TO LAD, RIMA TO RAMUS&nbsp;</p><p>H/O ACUTE PANCREATITIS (05/13 CMH)</p><p>S/P CRTD (10/14 USA)</p>', '28,17', '12', '<p>OMI,CAG DVD, H/O UA, S/P CABG X 2 GRAFTS ,ACUTE PANCREATITIS, S/P CRTD</p>', '2021-06-27 13:36:00', 3, NULL, 0, 1),
(10, 21, 0, '2017-10-07', '44', '57123', 'Major Golam Mustofa Khan 44', '69', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '', '', '', '', '8414416', 'Dr Momenuzzaman', '', '<p>OMI(Ant) sTK (05/03)</p><p>CAG:DVD(2003)</p><p>H/O UA (06/03, CMH)</p><p>S/P CABG X2 GRAFTS(07/03, INDIA) LIMA TO LAD, RIMA TO RAMUS </p><p>H/O ACUTE PANCREATITIS (05/13 CMH)</p><p>S/P CRTD (10/14 USA)</p>', '28,17', '11,12', '<p>OMI,CAG DVD, H/O UA, S/P CABG X 2 GRAFTS ,ACUTE PANCREATITIS, S/P CRTD</p>', '2021-06-27 14:11:00', 3, NULL, 0, 1),
(11, 21, 0, '2018-04-07', '44', '57123', 'Major Golam Mustofa Khan 44', '69', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '', '', '', '', '8414416', 'Dr Momenuzzaman', '', '<p>OMI(Ant) sTK (05/03)</p><p>CAG:DVD(2003)</p><p>H/O UA (06/03, CMH)</p><p>S/P CABG X2 GRAFTS(07/03, INDIA) LIMA TO LAD, RIMA TO RAMUS </p><p>H/O ACUTE PANCREATITIS (05/13 CMH)</p><p>S/P CRTD (10/14 USA)</p>', '28,17', '11,12', '<p>OMI,CAG DVD, H/O UA, S/P CABG X 2 GRAFTS ,ACUTE PANCREATITIS, S/P CRTD</p>', '2021-06-27 14:28:00', 3, NULL, 0, 1),
(12, 21, 0, '2019-07-30', '44', '57123', 'Major Golam Mustofa Khan 44', '69', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '', '', '', '', '8414416', 'Dr Momenuzzaman', '', '<p>OMI(Ant) sTK (05/03)</p><p>CAG:DVD(2003)</p><p>H/O UA (06/03, CMH)</p><p>S/P CABG X2 GRAFTS(07/03, INDIA) LIMA TO LAD, RIMA TO RAMUS </p><p>H/O ACUTE PANCREATITIS (05/13 CMH)</p><p>S/P CRTD (10/14 USA)</p>', '28,17', '11,12', '<p>OMI,CAG DVD, H/O UA, S/P CABG X 2 GRAFTS ,ACUTE PANCREATITIS, S/P CRTD</p>', '2021-06-27 14:40:00', 3, NULL, 0, 1),
(13, 5, 0, '2020-02-20', '11947', '86', 'Abdul Haque', '89', '0000-00-00', '', 8, 'Doctor', '', 0, '6', '', '', '', '01717355826', '', '', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>. hosp adm clout pain', '', '', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN, catonast</p>', '2021-06-27 15:45:00', 3, NULL, 0, 1),
(14, 5, 0, '2017-10-22', '86', '11947', 'Abdul Haque', '89', '0000-00-00', '', 8, 'Doctor', '', 0, '6', '', '', '', '01717355826', '', '', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-27 15:58:00', 3, NULL, 0, 1),
(15, 5, 0, '2018-05-02', '86', '11947', 'Abdul Haque', '89', '0000-00-00', '', 8, 'Doctor', '', 0, '6', '', '', '', '01717355826', '', '', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-27 16:26:00', 3, NULL, 0, 1),
(16, 5, 0, '2018-09-26', '86', '11947', 'Abdul Haque', '89', '0000-00-00', '', 8, 'Doctor', '', 0, '6', '', '', '', '01717355826', '', '', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-27 16:43:00', 3, NULL, 0, 1),
(17, 5, 0, '2019-01-19', '86', '11947', 'Abdul Haque', '89', '0000-00-00', '', 8, 'Doctor', '', 0, '6', '', '', '', '01717355826', '', '', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-27 17:34:00', 3, NULL, 0, 1),
(18, 5, 0, '2019-04-13', '86', '11947', 'Abdul Haque', '89', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '6', '', '', '', '01717355826', '', '165', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-28 09:50:00', 3, NULL, 0, 1),
(19, 5, 0, '2020-02-20', '86', '11947', 'Abdul Haque', '89', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '6', '', '', '', '01717355826', '', '165', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-06-28 10:22:00', 3, NULL, 0, 1),
(20, 7, 0, '2017-03-23', '70084', '96', 'Abdul Jalil', '56', '0000-00-00', '', 21, 'Engeenear', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LahAid)</p>', '', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild impareneil</p>', '2021-06-28 12:16:00', 1, NULL, 0, 1),
(21, 7, 0, '2017-03-23', '70084', '96', 'Abdul Jalil', '56', '0000-00-00', '', 21, 'Doctor', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild&nbsp; renal impairment</p>', '2021-06-28 12:32:00', 3, NULL, 0, 1),
(22, 7, 0, '2017-06-04', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 12:44:00', 3, NULL, 0, 1),
(23, 7, 0, '2017-06-04', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 12:46:00', 3, NULL, 0, 1),
(24, 7, 0, '2017-12-04', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 13:04:00', 3, NULL, 0, 1),
(25, 7, 0, '2018-03-17', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 13:13:00', 3, NULL, 0, 1),
(26, 7, 0, '2018-06-20', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 13:24:00', 3, NULL, 0, 1),
(27, 7, 0, '2018-10-24', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 13:37:00', 3, NULL, 0, 1),
(28, 7, 0, '2019-01-30', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 13:54:00', 3, NULL, 0, 1),
(29, 7, 0, '2020-12-01', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-06-28 14:07:00', 3, NULL, 0, 1),
(30, 6, 0, '2018-01-18', '68531', '94', 'Mohammad Hossain chow.', '72', '0000-00-00', '', 19, 'businessman', '', 0, '1', '', '', '', '', '', '', '<p>. known DCM</p><p>. H/O CAG: Normal (10/09)</p><p>. H/O CVD e LHP (10/14)</p>', '', '', '<p>.DCM, Normal coronay antuies, HTN, DM, H/O CVD Cischem, Nephrolithiasis</p>', '2021-06-28 14:34:00', 3, NULL, 0, 1),
(31, 6, 0, '2018-01-18', '94', '68531', 'Mohammad Hossain chow.', '72', '0000-00-00', '', 19, 'Doctor', '', 0, '1', '', '', '', '', '', '', '<p>. known DCM</p><p>. H/O CAG: Normal (10/09)</p><p>. H/O CVD e LHP (10/14)</p>', '', '', '<p>.DCM, Normal coronay antuies, HTN, DM, H/O CVD Cischem, Nephrolithiasis</p>', '2021-06-28 14:35:00', 3, NULL, 0, 1),
(32, 8, 0, '2017-10-24', '74134', '105', 'Morshed Ali', '60', '0000-00-00', '', 18, 'NOT Given', '', 0, '4', '', '', '', '01710099245', '', '', '<p>. known case of DCM (2009)</p><p>. S/P CRTD implantation (01/10, UHL)</p><p>. CT CAG: Non critical CAD (09/09)</p><p>. last CRTD cleck on 23.10.17</p>', '', '', '<p>. DCM, S/P CRTD, Non critical CAD, DM, .H/O renal inpainment</p>', '2021-06-28 15:09:00', 3, NULL, 0, 1),
(33, 26, 0, '2017-02-25', '125', '126536', 'MD FAISAL ANWAR', '42', '0000-00-00', 'Dhaka', 20, 'NOT Given', 'unknown', 0, '', '', '', '', '01717515359', 'Dr Momenuzzaman', '165', '<p>H/O UA (05/2009)NICVD</p><p>H/O ALVF (11/2010)NICVD</p><p>KNOWN CASE OF DCM (11/2010)</p><p>CAG ; NON CRITICAL CAG (04/2012 UHL)</p>', '28,17', '', '<p>H/O UA, H/O LVF, DCM,CAG:NON CRITICAL CAG DM ,DL</p>', '2021-06-28 15:30:00', 3, NULL, 0, 1),
(34, 27, 0, '2017-09-25', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-28 16:05:00', 3, NULL, 0, 1),
(35, 11, 0, '2018-01-06', '16', '9368', 'Fatema Begum', '138', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '29,18,31', '15,16,20,21', '', '2021-06-28 16:30:00', 3, NULL, 0, 1),
(36, 10, 0, '2016-12-29', '149006', '129', 'Mahamud Hassan Biplob', '80', '0000-00-00', '', 20, 'businessman', '', 0, '1', '', '', '', '01611730299', '', '', '<p>. known DCM</p><p>. H/O ALVF (12/11, NHF)</p><p>. CAG: Normal wronaries (12/11, NHF)</p><p>.S/P AlCD (VVI), (UHL, 05/14)</p><p>. H/O AlCD Shock 1 episode (02/15)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ', '', '', '<p>DCM, Normal coronaries, S/P AlCD, H/O ALVF</p>', '2021-06-28 17:16:00', 3, NULL, 0, 1),
(37, 8, 0, '2017-10-24', '105', '74134', 'Morshed Ali', '60', '0000-00-00', '', 18, 'NOT Given', '', 0, '4', '', '', '', '01710099245', '', '', '<p>. known case of DCM (2009)</p><p>. S/P CRTD implantation (01/10, UHL)</p><p>. CT CAG: Non critical CAD (09/09)</p><p>. last CRTD cleck on 23.10.17</p>', '', '', '<p>. DCM, S/P CRTD, Non critical CAD, DM, .H/O renal inpainment</p>', '2021-06-29 10:12:00', 3, NULL, 0, 1),
(38, 25, 0, '2017-10-24', '105', '74134', 'Morshed Ali ', '57', '0000-00-00', 'Dhaka', 19, 'Service holder', '', 0, '', '', '', '', '01710099245', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM (2009)</p><p>S/P CRTD IMPLANTATION (01/2010)UHL</p><p>CT CAG : NON CRITICAL CAD (09/2009)</p><p>LAST CRTD CHECK ON (23.10.2017)</p><p><br></p>', '28', '', '<p>DCM, S/P CRTD IMPLANTATION, CT CAG : NON CRITICAL CAD , DM</p>', '2021-06-29 10:27:00', 3, NULL, 0, 1),
(39, 8, 0, '2018-07-15', '105', '74134', 'Morshed Ali', '60', '0000-00-00', '', 18, 'NOT Given', '', 0, '4', '', '', '', '01710099245', '', '', '<p>. known case of DCM (2009)</p><p>. S/P CRTD implantation (01/10, UHL)</p><p>. CT CAG: Non critical CAD (09/09)</p><p>. last CRTD cleck on 23.10.17</p>', '28', '', '<p>. DCM, S/P CRTD, Non critical CAD, DM, .H/O renal inpainment</p>', '2021-06-29 10:48:00', 3, NULL, 0, 1),
(40, 26, 0, '2017-02-25', '125', '126536', 'MD FAISAL ANWAR', '42', '0000-00-00', 'Dhaka', 20, 'NOT Given', 'unknown', 0, '', '', '', '', '01717515359', 'Dr Momenuzzaman', '165', '<p>H/O UA (05/2009)NICVD</p><p>H/O ALVF (11/2010)NICVD</p><p>KNOWN CASE OF DCM (11/2010)</p><p>CAG ; NON CRITICAL CAG (04/2012 UHL)</p>', '28,17', '', '<p>H/O UA, H/O LVF, DCM,CAG:NON CRITICAL CAG DM ,DL</p>', '2021-06-29 11:27:00', 3, NULL, 0, 1),
(41, 26, 0, '2018-09-16', '125', '126536', 'MD FAISAL ANWAR', '42', '0000-00-00', 'Dhaka', 20, 'NOT Given', 'unknown', 0, '', '', '', '', '01717515359', 'Dr Momenuzzaman', '165', '<p>H/O UA (05/2009)NICVD</p><p>H/O ALVF (11/2010)NICVD</p><p>KNOWN CASE OF DCM (11/2010)</p><p>CAG ; NON CRITICAL CAG (04/2012 UHL)</p>', '28,17', '', '<p>H/O UA, H/O LVF, DCM,CAG:NON CRITICAL CAG DM ,DL</p>', '2021-06-29 11:35:00', 3, NULL, 0, 1),
(42, 26, 0, '2019-01-19', '125', '126536', 'MD FAISAL ANWAR', '42', '0000-00-00', 'Dhaka', 20, 'NOT Given', 'unknown', 0, '', '', '', '', '01717515359', 'Dr Momenuzzaman', '165', '<p>H/O UA (05/2009)NICVD</p><p>H/O ALVF (11/2010)NICVD</p><p>KNOWN CASE OF DCM (11/2010)</p><p>CAG ; NON CRITICAL CAG (04/2012 UHL)</p>', '28,17', '', '<p>H/O UA, H/O LVF, DCM,CAG:NON CRITICAL CAG DM ,DL</p>', '2021-06-29 11:44:00', 3, NULL, 0, 1),
(43, 27, 0, '2017-09-25', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:18:00', 3, NULL, 0, 1),
(44, 27, 0, '2017-09-25', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:19:00', 3, NULL, 0, 1),
(45, 27, 0, '2017-09-25', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:29:00', 3, NULL, 0, 1),
(46, 27, 0, '2018-02-06', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:43:00', 3, NULL, 0, 1),
(47, 27, 0, '2018-05-06', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:44:00', 3, NULL, 0, 1),
(48, 27, 0, '2018-05-06', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 12:58:00', 3, NULL, 0, 1),
(49, 27, 0, '2018-09-11', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 13:23:00', 3, NULL, 0, 1),
(50, 27, 0, '2018-12-08', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 14:28:00', 3, NULL, 0, 1),
(51, 27, 0, '2018-12-08', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 14:50:00', 3, NULL, 0, 1),
(52, 27, 0, '2019-04-01', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 15:00:00', 3, NULL, 0, 1),
(53, 27, 0, '2019-09-08', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 15:08:00', 3, NULL, 0, 1),
(54, 27, 0, '2020-03-07', '182', '205391', 'ROWSHAN ARA HOSSAIN', '68', '0000-00-00', 'Dhaka', 18, 'House Wife', '', 0, '', '', '', '', '01552333484', 'Dr Momenuzzaman', '160', '<p>S/P AVR DUE TO SEVERE AS (03/2014)</p><p>CAG: NON CRITICAL CAG (11/2013) APOLLO</p><p>H/O BREAST CARCINOMA (05/2015)</p><p>S/P LEFT MASTECTOMY (09/2015) CHEMOTHERAPY COMPLETED , R/T COMPLETED(01/2016)</p><p>CHEMO INDUCED CARDIOMYOPATHY, AF WITH FVR(02/', '18', '', '<p>S/P AVR DUE TO SEVERE AS(03/2014)NHF, CAG: NONCRITICAL CAD (11/2013APOLLO), BREAST CARCINOMA (05/2015), S/P LEFT MASTECTOMY (09/2015)CHEMOTHERAPY COMPLETED. R/T COMPLETED (01/2016), CHEMO INDUCED CARDIOMYOPATHY , AF WITH FVR(02/2016)APOLLO</p><p><br></', '2021-06-29 15:25:00', 3, NULL, 0, 1),
(55, 11, 0, '2018-01-06', '16', '9368', 'Fatema Begum', '138', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 15:43:00', 3, NULL, 0, 1),
(56, 11, 0, '2018-01-06', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 15:44:00', 3, NULL, 0, 1),
(57, 11, 0, '2018-01-06', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 16:09:00', 3, NULL, 0, 1),
(58, 11, 0, '2019-03-07', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 16:20:00', 3, NULL, 0, 1),
(59, 11, 0, '2019-04-21', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 16:32:00', 3, NULL, 0, 1),
(60, 11, 0, '2019-07-24', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 16:39:00', 3, NULL, 0, 1),
(61, 11, 0, '2020-02-16', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-06-29 16:51:00', 3, NULL, 0, 1),
(62, 28, 64, '2016-12-29', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 09:22:00', 3, NULL, 0, 1),
(63, 28, 65, '2017-01-23', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 09:33:00', 3, NULL, 0, 1),
(64, 28, 66, '2018-01-03', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 09:48:00', 3, NULL, 0, 1),
(65, 28, 67, '2018-04-28', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 10:00:00', 3, NULL, 0, 1),
(66, 28, 68, '2018-10-04', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 10:18:00', 3, NULL, 0, 1),
(67, 28, 69, '2019-03-07', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 10:24:00', 3, NULL, 0, 1),
(68, 28, 70, '2019-09-08', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 10:32:00', 3, NULL, 0, 1),
(69, 28, 71, '2019-09-18', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 10:50:00', 3, NULL, 0, 1),
(70, 28, 72, '2019-12-24', '129', '149006', 'Mahamud Hasan Biplob ', '36', '0000-00-00', 'Dhaka', 8, 'NOT Given', '', 0, '', '', '', '', '01611730299', 'Dr Momenuzzaman', '165', '<p>H/O KNOWN DCM</p><p>H/O ALVF(12/2011) NHF</p><p>CAG: NORMAL CORONARIES (12/2011)NHF</p><p>S/P AICD (VVI)05/2014)</p><p>H/O AICD SHOCK 1 EPISODE (02/2015), SECOND EPISODE (11/2015) </p><p>H/O RTA (04/2016)FOLLOWED BY DVT (04/2016, APOLLO TO UHL)</p>', '17,18', '', '', '2021-06-30 11:11:00', 3, NULL, 0, 1),
(71, 33, 75, '2016-11-16', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-06-30 17:34:00', 3, NULL, 0, 1),
(72, 33, 76, '2017-03-12', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-06-30 17:45:00', 3, NULL, 0, 1),
(73, 33, 77, '2017-06-15', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:09:00', 3, NULL, 0, 1),
(74, 33, 78, '2017-11-20', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:19:00', 3, NULL, 0, 1),
(75, 33, 79, '2018-05-31', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:28:00', 3, NULL, 0, 1),
(76, 33, 80, '2019-01-06', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:35:00', 3, NULL, 0, 1),
(77, 33, 81, '2019-05-27', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:44:00', 3, NULL, 0, 1),
(78, 33, 82, '2019-09-26', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 09:51:00', 3, NULL, 0, 1),
(79, 33, 83, '2020-11-16', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 10:11:00', 3, NULL, 0, 1),
(80, 33, 84, '2021-01-19', '153', '243952', 'SALEHA RAHMAN', '73', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '', '', '', '', '01711190010', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM (2009)</p><p>CAG :NORMAL CORONARIES (01/2015) NHF, RECOM:MED MX</p><p>H/O FALL 2TIMES THIS YEAR WITH LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK AND FRACTURE OF LEFT WRIST JOINT.</p><p>H/O ACCIDENTAL FRACTURE OF RIGHT ARM 10 TO 15 ', '15,30', '', '<p>DCM,CAG :NORMAL,H/O FALL 2TIMES THIS YEAR WITH E LOSS OF CONSCIOUSNESS WITH CUT INJURY AT CHECK, AND FRACTURE OF LEFT WRIST ARM 10 TO 15 YEARS BACK .HEARING IMPAIRMENT , HTN,</p>', '2021-07-01 10:28:00', 3, NULL, 0, 1),
(81, 34, 86, '2017-03-12', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 11:34:00', 3, NULL, 0, 1),
(82, 34, 87, '2017-07-23', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 11:48:00', 3, NULL, 0, 1),
(83, 34, 88, '2018-02-01', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 11:58:00', 3, NULL, 0, 1),
(84, 34, 89, '2018-06-07', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 12:14:00', 3, NULL, 0, 1),
(85, 34, 90, '2018-09-10', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 12:25:00', 3, NULL, 0, 1),
(86, 34, 91, '2019-01-01', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 12:38:00', 3, NULL, 0, 1),
(87, 34, 92, '2019-08-01', '156', '223543', 'MAINUL ISLAM KHAN ', '47', '0000-00-00', 'Dhaka', 20, 'NOT Given', '', 0, '', '', '', '', '01712523747', 'Dr Momenuzzaman', '', '<p>H/O OMI (ANT )WITH ALVF (STK)(06/2014, NICVD)</p><p>CAG :SVD , S/PPCI TO LAD (07/2014) UHL</p><p>H/O ALVF (02/2015)NHF</p><p>H/O PNEUMONIA WITH ICM (07/2015)NHF</p><p>DCM (08/2015)FMCH</p>', '15', '', '<p>OMI, ALVF, CAG; SVD , PCI TO LAD ,DCM, HTN</p>', '2021-07-01 12:54:00', 3, NULL, 0, 1),
(88, 35, 94, '2017-02-01', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:05:00', 3, NULL, 0, 1),
(89, 35, 95, '2017-04-06', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:13:00', 3, NULL, 0, 1),
(90, 35, 96, '2017-08-07', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:24:00', 3, NULL, 0, 1),
(91, 35, 97, '2018-02-24', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:34:00', 3, NULL, 0, 1),
(92, 35, 98, '2018-09-10', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:48:00', 3, NULL, 0, 1),
(93, 35, 98, '2018-09-10', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 16:51:00', 3, NULL, 0, 1),
(94, 35, 99, '2019-01-19', '157', '249697', 'MIZANUR RAHMAN ', '46', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '3', '', '', '', '01724576479', 'Dr Momenuzzaman', '165', '<p>H/O ALVF WITH CHEST TIGHTNESS(03/2015)NICVD</p><p>KNOWN CASE OF DCM</p><p>CAG :NORMAL (04/2015)UHL</p>', '28', '12', '<p>ALVF,CHEST TIGHTNESS, DCM,DM ,BA</p>', '2021-07-01 17:04:00', 3, NULL, 0, 1),
(95, 37, 102, '2021-03-18', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 10:22:00', 3, NULL, 0, 1),
(96, 37, 103, '2017-06-15', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 10:33:00', 3, NULL, 0, 1);
INSERT INTO `patient_archive_basic_info` (`pp_id`, `p_id`, `pp_par_id`, `pp_date_of_assesment`, `pp_hf_id`, `pp_mr_no`, `pp_name`, `pp_age`, `pp_birth_date`, `pp_address`, `pp_education_level`, `pp_occupation`, `pp_income`, `pp_marital_status`, `pp_no_of_children`, `pp_manstrul_history`, `pp_caregiver_name`, `pp_caregiver_relation`, `pp_caregiver_phone_no`, `pp_treting_cardiologist`, `pp_height`, `pp_pm_history`, `pp_riskfactor`, `pp_comorbidities`, `pp_diagnosis`, `pp_created_at`, `pp_created_by`, `pp_updated_at`, `pp_updated_by`, `pp_status`) VALUES
(97, 37, 104, '2017-09-29', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 10:42:00', 3, NULL, 0, 1),
(98, 37, 105, '2018-05-06', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 10:56:00', 3, NULL, 0, 1),
(99, 37, 106, '2018-09-06', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 11:06:00', 3, NULL, 0, 1),
(100, 37, 107, '2019-08-01', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 11:20:00', 3, NULL, 0, 1),
(101, 37, 108, '2020-09-01', '164', '139845', 'MD MAHBUB ALI', '62', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '2', '', '', '', '01777790493', 'Dr Momenuzzaman', '162', '<p>KNOWN CASE OF DCM</p><p>H/O LVF (08/2015)UHL</p><p>CAG :SVD, MINOR LAD (D1 70 -80%)(2012,2015,NHF)UHL( 2016, INDIA)</p><p>S/P CRTD  IMPLANTATION(04/2017, INDIA)</p>', '17,18', '12', '<p>DCM, MINOR LAD ,DL,BA,BEP</p>', '2021-07-03 11:49:00', 3, NULL, 0, 1),
(102, 38, 110, '2017-05-17', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 12:44:00', 3, NULL, 0, 1),
(103, 38, 111, '2018-02-07', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 12:57:00', 3, NULL, 0, 1),
(104, 38, 112, '2018-03-17', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 13:06:00', 3, NULL, 0, 1),
(105, 38, 113, '2018-11-21', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 13:15:00', 3, NULL, 0, 1),
(106, 38, 114, '2019-03-03', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 13:28:00', 3, NULL, 0, 1),
(107, 38, 115, '2019-08-20', '172', '177932', 'JAHID HOSSAIN', '48', '0000-00-00', 'Dhaka', 20, 'Engineer', '', 0, '', '', '', '', '01980285176', 'Dr Momenuzzaman', '162', '<p>OMI 9ANT ) ALVF (02/2013) UHL</p><p>CAG :TVD(02/2013) UHL</p><p>S/P CABG (X4GRAFTS)(03/2013) LIMA TO LAD, RSVG TO OM,OM2,RCA</p><p>KNOWN CASE OF ICM</p><p><br></p>', '18', '', '<p>ICM, OMI (ANT), H/O ALVF,TVD , S/P CABG (X4 GRAFTS) LIMA TO LAD, RSVG TO OM,RCA, H/O FUROSEMIDE INDUCED OTOTOXICITY.</p>', '2021-07-03 13:38:00', 3, NULL, 0, 1),
(108, 39, 117, '2017-09-25', '173', '282370', 'NAZRUL ISLAM', '51', '0000-00-00', 'Dhaka', 20, 'Doctor', '', 0, '2', '', '', '', '01913256575', 'Dr Momenuzzaman', '162', '<p>CAG: NO DOCOMENT, MED MX(2001,2007)</p><p>KNOWN CASE OF ICM, PAROXYMAL AF, SVTT, </p><p>S/P AICD (1.01.2015)UHL, H/O SHOCK ( SINGLE CHAMBER )</p><p>CAG: NORMAL (2007)</p><p>VT ABLATION (10/2018)INDIA</p><p><br></p>', '15', '', '<p>ICM, S/P AICD ,AF. HTN</p>', '2021-07-04 09:29:00', 3, NULL, 0, 1),
(109, 39, 118, '2018-02-24', '173', '282370', 'NAZRUL ISLAM', '51', '0000-00-00', 'Dhaka', 20, 'Doctor', '', 0, '2', '', '', '', '01913256575', 'Dr Momenuzzaman', '162', '<p>CAG: NO DOCOMENT, MED MX(2001,2007)</p><p>KNOWN CASE OF ICM, PAROXYMAL AF, SVTT, </p><p>S/P AICD (1.01.2015)UHL, H/O SHOCK ( SINGLE CHAMBER )</p><p>CAG: NORMAL (2007)</p><p>VT ABLATION (10/2018)INDIA</p><p><br></p>', '15', '', '<p>ICM, S/P AICD ,AF. HTN</p>', '2021-07-04 09:55:00', 3, NULL, 0, 1),
(110, 39, 119, '2018-06-30', '173', '282370', 'NAZRUL ISLAM', '51', '0000-00-00', 'Dhaka', 20, 'Doctor', '', 0, '2', '', '', '', '01913256575', 'Dr Momenuzzaman', '162', '<p>CAG: NO DOCOMENT, MED MX(2001,2007)</p><p>KNOWN CASE OF ICM, PAROXYMAL AF, SVTT, </p><p>S/P AICD (1.01.2015)UHL, H/O SHOCK ( SINGLE CHAMBER )</p><p>CAG: NORMAL (2007)</p><p>VT ABLATION (10/2018)INDIA</p><p><br></p>', '15', '', '<p>ICM, S/P AICD ,AF. HTN</p>', '2021-07-04 10:01:00', 3, NULL, 0, 1),
(111, 40, 121, '2017-12-25', '176', '53619', 'ZAHEDUN NABI', '64', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '', '', '', '', '01712207109', 'Dr Momenuzzaman', '162', '<p>H/O HOSPITAL ADMISSIOM WITH AMI EXT,ANT,(STK), (22.02.2003) CMH. WITH VF ,DECARDIOVERSION+, WITH PULMONARY OEDEMA.</p><p>CAG :DVD (03/2003)INDIA, LAD (60 TO 70%OSTIO, LCX 96%MID</p><p>RELOOK CAG :DVD|(10/2003)USA</p><p>S/P PTCA WITH STENTING  TO LCX,(1', '15', '14', '<p>AMI (ANT EXT), STK+, WITH VF, PULMONARY OEDEMA , CAG :DVD, S/P PCI TOLCX, HTN,CKD,S/P AICD</p>', '2021-07-04 11:22:00', 3, NULL, 0, 1),
(112, 40, 122, '2018-04-22', '176', '53619', 'ZAHEDUN NABI', '64', '0000-00-00', 'Dhaka', 20, 'Retired Job holder', '', 0, '', '', '', '', '01712207109', 'Dr Momenuzzaman', '162', '<p>H/O HOSPITAL ADMISSIOM WITH AMI EXT,ANT,(STK), (22.02.2003) CMH. WITH VF ,DECARDIOVERSION+, WITH PULMONARY OEDEMA.</p><p>CAG :DVD (03/2003)INDIA, LAD (60 TO 70%OSTIO, LCX 96%MID</p><p>RELOOK CAG :DVD|(10/2003)USA</p><p>S/P PTCA WITH STENTING  TO LCX,(1', '15', '14', '<p>AMI (ANT EXT), STK+, WITH VF, PULMONARY OEDEMA , CAG :DVD, S/P PCI TOLCX, HTN,CKD,S/P AICD</p>', '2021-07-04 11:40:00', 3, NULL, 0, 1),
(113, 41, 124, '2017-07-13', '185', '291007', 'MOHIUDDIN AHMED', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '', '', '', '', '01914984395', 'Dr Momenuzzaman', '', '<p>KNOWN CASE OF ICM SINCE 2015</p><p>RECURRENT ISCHEMIA STROKE WITHRIGHT FACIAL PALEY(2014)</p><p>H/O EECP 34 SESSION (1 YERA BAAACK)</p>', '15,17', '14,17', '<p>ICM, RECURRENT ISCHEMIA STROKE ,HTN, DL,CKD, FROZEN SHOULDER, OSTEOARTHRITIS, </p>', '2021-07-04 12:24:00', 3, NULL, 0, 1),
(114, 43, 127, '2016-12-14', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 14:23:00', 3, NULL, 0, 1),
(115, 43, 128, '2017-04-11', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 14:29:00', 3, NULL, 0, 1),
(116, 43, 129, '2018-03-17', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 14:42:00', 3, NULL, 0, 1),
(117, 43, 130, '2019-02-27', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 14:44:00', 3, NULL, 0, 1),
(118, 43, 131, '2019-02-27', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 14:50:00', 3, NULL, 0, 1),
(119, 43, 132, '2020-01-06', '143', '196407', 'SHAKHWAT HOSSAIN CHOWDURY', '47', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01731927332', 'Dr Momenuzzaman', '', '<p>OMI (LMWH+) (2011, ICHRI)</p><p>CAG: CVD (2011)ICHRI</p><p>S/P PCI TO LCX(4X23)2011 ICHRI</p><p>H/O CCF (04/2013) UHL</p><p><br></p>', '18', '', '<p>OMI, CAG:SVD, S/P PCI TO LCX , H/O CCF, MILD RENAL IMAPIRMENT , ATOPY, COLD ALLERGY</p>', '2021-07-04 15:21:00', 3, NULL, 0, 1),
(120, 44, 134, '2016-12-05', '194', '80848', 'MD FEROZ TARIK', '44', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01714231072', 'Dr Momenuzzaman', '162', '<p>OMI (A-S) , ALVF, LMWH+(12/2009)UHL</p><p>CAG:NON CRITICAL CAG,( 12/2009 UHL)</p><p>H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, (3/2016)UHL</p><p>H/O VT ,VF, REVERTED BY DC SHOCK, S/P MV SNYPORT (4/2016)UHL</p><p>CAG :SVD WITH SEVERE LMD(4/2016)', '15,28', '17', '<p>OMI, ALVF,LMWH+, CAG: NON CRITICAL CAD, H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, VT,VF, S/P MV SNYPORT, CAG SVD E SEVERE LMD,AICD IMPLANTATION, PTCA TO STENTING LM TO LAD , HTN, DM, HYPOTHYROIDISM, SCLERODERMA.</p>', '2021-07-04 17:18:00', 3, NULL, 0, 1),
(121, 44, 135, '2017-04-27', '194', '80848', 'MD FEROZ TARIK', '44', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01714231072', 'Dr Momenuzzaman', '162', '<p>OMI (A-S) , ALVF, LMWH+(12/2009)UHL</p><p>CAG:NON CRITICAL CAG,( 12/2009 UHL)</p><p>H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, (3/2016)UHL</p><p>H/O VT ,VF, REVERTED BY DC SHOCK, S/P MV SNYPORT (4/2016)UHL</p><p>CAG :SVD WITH SEVERE LMD(4/2016)', '15,28', '17', '<p>OMI, ALVF,LMWH+, CAG: NON CRITICAL CAD, H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, VT,VF, S/P MV SNYPORT, CAG SVD E SEVERE LMD,AICD IMPLANTATION, PTCA TO STENTING LM TO LAD , HTN, DM, HYPOTHYROIDISM, SCLERODERMA.</p>', '2021-07-04 17:28:00', 3, NULL, 0, 1),
(122, 44, 136, '2017-03-08', '194', '80848', 'MD FEROZ TARIK', '44', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01714231072', 'Dr Momenuzzaman', '162', '<p>OMI (A-S) , ALVF, LMWH+(12/2009)UHL</p><p>CAG:NON CRITICAL CAG,( 12/2009 UHL)</p><p>H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, (3/2016)UHL</p><p>H/O VT ,VF, REVERTED BY DC SHOCK, S/P MV SNYPORT (4/2016)UHL</p><p>CAG :SVD WITH SEVERE LMD(4/2016)', '15,28', '17', '<p>OMI, ALVF,LMWH+, CAG: NON CRITICAL CAD, H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, VT,VF, S/P MV SNYPORT, CAG SVD E SEVERE LMD,AICD IMPLANTATION, PTCA TO STENTING LM TO LAD , HTN, DM, HYPOTHYROIDISM, SCLERODERMA.</p>', '2021-07-04 17:36:00', 3, NULL, 0, 1),
(123, 44, 137, '2018-11-21', '194', '80848', 'MD FEROZ TARIK', '44', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01714231072', 'Dr Momenuzzaman', '162', '<p>OMI (A-S) , ALVF, LMWH+(12/2009)UHL</p><p>CAG:NON CRITICAL CAG,( 12/2009 UHL)</p><p>H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, (3/2016)UHL</p><p>H/O VT ,VF, REVERTED BY DC SHOCK, S/P MV SNYPORT (4/2016)UHL</p><p>CAG :SVD WITH SEVERE LMD(4/2016)', '15,28', '17', '<p>OMI, ALVF,LMWH+, CAG: NON CRITICAL CAD, H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, VT,VF, S/P MV SNYPORT, CAG SVD E SEVERE LMD,AICD IMPLANTATION, PTCA TO STENTING LM TO LAD , HTN, DM, HYPOTHYROIDISM, SCLERODERMA.</p>', '2021-07-05 09:08:00', 3, NULL, 0, 1),
(124, 44, 138, '2019-12-14', '194', '80848', 'MD FEROZ TARIK', '44', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01714231072', 'Dr Momenuzzaman', '162', '<p>OMI (A-S) , ALVF, LMWH+(12/2009)UHL</p><p>CAG:NON CRITICAL CAG,( 12/2009 UHL)</p><p>H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, (3/2016)UHL</p><p>H/O VT ,VF, REVERTED BY DC SHOCK, S/P MV SNYPORT (4/2016)UHL</p><p>CAG :SVD WITH SEVERE LMD(4/2016)', '15,28', '17', '<p>OMI, ALVF,LMWH+, CAG: NON CRITICAL CAD, H/O AF WITH FVR WITH RIGHT SIDED PLEURAL EFFUSION, VT,VF, S/P MV SNYPORT, CAG SVD E SEVERE LMD,AICD IMPLANTATION, PTCA TO STENTING LM TO LAD , HTN, DM, HYPOTHYROIDISM, SCLERODERMA.</p>', '2021-07-05 09:15:00', 3, NULL, 0, 1),
(125, 45, 140, '2017-03-06', '195', '194071', 'KAZI HUMAYUN KABIR', '65', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '2', '', '', '', '01711507012', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ), STK+(08/2013)NICVD</p><p>H/O LVF WITH CARDIAC ARREST ,S/P MU (08/2013)UHL</p><p>CAG: SVD (08/2013)UHL</p><p>S/P PCI TO LAD , BIOMATRIX 2.5X36 (08/2013)UHL</p><p>VARICOSE VEIN WITH ANEMIA AND 3 UNIT BLOOD TRANSFUSSION,(02/2015)BIRDEM</p><p>H', '15,28,18', '', '<p>OMI,(ANT ) STK+, LVF, S/P MV ,CARDIAC ARREST SURVIVOR, CAG:SVD, S/P PCI TO LAD, VARICOSE VEIN WITH ANEMIA, MILD RENAL IMAPIRMENT, HTN, DM</p>', '2021-07-05 10:04:00', 3, NULL, 0, 1),
(126, 45, 141, '2017-10-16', '195', '194071', 'KAZI HUMAYUN KABIR', '65', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '2', '', '', '', '01711507012', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ), STK+(08/2013)NICVD</p><p>H/O LVF WITH CARDIAC ARREST ,S/P MU (08/2013)UHL</p><p>CAG: SVD (08/2013)UHL</p><p>S/P PCI TO LAD , BIOMATRIX 2.5X36 (08/2013)UHL</p><p>VARICOSE VEIN WITH ANEMIA AND 3 UNIT BLOOD TRANSFUSSION,(02/2015)BIRDEM</p><p>H', '15,28,18', '', '<p>OMI,(ANT ) STK+, LVF, S/P MV ,CARDIAC ARREST SURVIVOR, CAG:SVD, S/P PCI TO LAD, VARICOSE VEIN WITH ANEMIA, MILD RENAL IMAPIRMENT, HTN, DM</p>', '2021-07-05 10:25:00', 3, NULL, 0, 1),
(127, 45, 142, '2018-02-04', '195', '194071', 'KAZI HUMAYUN KABIR', '65', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '2', '', '', '', '01711507012', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ), STK+(08/2013)NICVD</p><p>H/O LVF WITH CARDIAC ARREST ,S/P MU (08/2013)UHL</p><p>CAG: SVD (08/2013)UHL</p><p>S/P PCI TO LAD , BIOMATRIX 2.5X36 (08/2013)UHL</p><p>VARICOSE VEIN WITH ANEMIA AND 3 UNIT BLOOD TRANSFUSSION,(02/2015)BIRDEM</p><p>H', '15,28,18', '', '<p>OMI,(ANT ) STK+, LVF, S/P MV ,CARDIAC ARREST SURVIVOR, CAG:SVD, S/P PCI TO LAD, VARICOSE VEIN WITH ANEMIA, MILD RENAL IMAPIRMENT, HTN, DM</p>', '2021-07-05 10:37:00', 3, NULL, 0, 1),
(128, 45, 143, '2018-09-01', '195', '194071', 'KAZI HUMAYUN KABIR', '65', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '2', '', '', '', '01711507012', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ), STK+(08/2013)NICVD</p><p>H/O LVF WITH CARDIAC ARREST ,S/P MU (08/2013)UHL</p><p>CAG: SVD (08/2013)UHL</p><p>S/P PCI TO LAD , BIOMATRIX 2.5X36 (08/2013)UHL</p><p>VARICOSE VEIN WITH ANEMIA AND 3 UNIT BLOOD TRANSFUSSION,(02/2015)BIRDEM</p><p>H', '15,28,18', '', '<p>OMI,(ANT ) STK+, LVF, S/P MV ,CARDIAC ARREST SURVIVOR, CAG:SVD, S/P PCI TO LAD, VARICOSE VEIN WITH ANEMIA, MILD RENAL IMAPIRMENT, HTN, DM</p>', '2021-07-05 10:45:00', 3, NULL, 0, 1),
(129, 45, 144, '2019-01-02', '195', '194071', 'KAZI HUMAYUN KABIR', '65', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '2', '', '', '', '01711507012', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ), STK+(08/2013)NICVD</p><p>H/O LVF WITH CARDIAC ARREST ,S/P MU (08/2013)UHL</p><p>CAG: SVD (08/2013)UHL</p><p>S/P PCI TO LAD , BIOMATRIX 2.5X36 (08/2013)UHL</p><p>VARICOSE VEIN WITH ANEMIA AND 3 UNIT BLOOD TRANSFUSSION,(02/2015)BIRDEM</p><p>H', '15,28,18', '', '<p>OMI,(ANT ) STK+, LVF, S/P MV ,CARDIAC ARREST SURVIVOR, CAG:SVD, S/P PCI TO LAD, VARICOSE VEIN WITH ANEMIA, MILD RENAL IMAPIRMENT, HTN, DM</p>', '2021-07-05 10:52:00', 3, NULL, 0, 1),
(130, 46, 146, '2016-12-06', '198', '107969', 'Ahmed Hossain Tariq', '60', '0000-00-00', 'Dhaka', 20, 'Doctor', '', 0, '', '', '', '', '01819229333', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ) LMWH+, (CTG METROPOLI ,2000)</p><p>CAG : SEVERE TVD (SINGAPORE, 2011)</p><p>ADVISED FOR CRTD (PATIENT IS NOT WILLING TO GO FOR IT)</p>', '15,28,17,32', '', '<p>OMI(ANT), SEVERE TVD ,HTN. DM,DL,BA</p>', '2021-07-05 13:30:00', 3, NULL, 0, 1),
(131, 46, 147, '2017-11-01', '198', '107969', 'Ahmed Hossain Tariq', '60', '0000-00-00', 'Dhaka', 20, 'Doctor', '', 0, '', '', '', '', '01819229333', 'Dr Momenuzzaman', '165', '<p>OMI (ANT ) LMWH+, (CTG METROPOLI ,2000)</p><p>CAG : SEVERE TVD (SINGAPORE, 2011)</p><p>ADVISED FOR CRTD (PATIENT IS NOT WILLING TO GO FOR IT)</p>', '15,28,17,32', '', '<p>OMI(ANT), SEVERE TVD ,HTN. DM,DL,BA</p>', '2021-07-05 13:39:00', 3, NULL, 0, 1),
(132, 47, 149, '2016-11-16', '166', '215594', 'MR polash', '32', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01816383252', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM(2014)</p><p>CAG : NORMAL (04/2014 UHL) REC: MEDICAL MX</p>', '15,17,18,31', '', '<p>DCM, NORMAL CORONARIES, DL</p>', '2021-07-05 14:07:00', 3, NULL, 0, 1),
(133, 47, 150, '2017-05-16', '166', '215594', 'MR polash', '32', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01816383252', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM(2014)</p><p>CAG : NORMAL (04/2014 UHL) REC: MEDICAL MX</p>', '15,17,18,31', '', '<p>DCM, NORMAL CORONARIES, DL</p>', '2021-07-05 14:36:00', 3, NULL, 0, 1),
(134, 47, 151, '2018-05-14', '166', '215594', 'MR polash', '32', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01816383252', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM(2014)</p><p>CAG : NORMAL (04/2014 UHL) REC: MEDICAL MX</p>', '15,17,18,31', '', '<p>DCM, NORMAL CORONARIES, DL</p>', '2021-07-05 14:52:00', 3, NULL, 0, 1),
(135, 47, 152, '2019-02-07', '166', '215594', 'MR polash', '32', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01816383252', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM(2014)</p><p>CAG : NORMAL (04/2014 UHL) REC: MEDICAL MX</p>', '15,17,18,31', '', '<p>DCM, NORMAL CORONARIES, DL</p>', '2021-07-05 15:00:00', 3, NULL, 0, 1),
(136, 47, 153, '2020-01-23', '166', '215594', 'MR polash', '32', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01816383252', 'Dr Momenuzzaman', '160', '<p>KNOWN CASE OF DCM(2014)</p><p>CAG : NORMAL (04/2014 UHL) REC: MEDICAL MX</p>', '15,17,18,31', '', '<p>DCM, NORMAL CORONARIES, DL</p>', '2021-07-05 15:15:00', 3, NULL, 0, 1),
(137, 48, 155, '2016-12-20', '167', '4361', 'MD DULAL', '54', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '', '', '', '', '01920940963', 'Dr Momenuzzaman', '165', '<p>H/O PAROXYSMAL AF , PERMANENT AF(2004)</p><p>CAG:ECTATIC CORONARIES (02/2005) LAIBAID, REC:MED MX</p><p>H/O SINGLE EPISODE OF SEVERE SOB (12/2015)</p><p>KNOWN CASE OF DCM</p>', '15,17,18', '', '<p>DCM, ECTATIC CORONARY ARTERIES, PERMANAT AF ,HTN,DL, ATOPY(DUST), GOUT , H/O FISTULECTOMY</p>', '2021-07-05 16:50:00', 3, NULL, 0, 1),
(138, 48, 156, '2017-03-23', '167', '4361', 'MD DULAL', '54', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '', '', '', '', '01920940963', 'Dr Momenuzzaman', '165', '<p>H/O PAROXYSMAL AF , PERMANENT AF(2004)</p><p>CAG:ECTATIC CORONARIES (02/2005) LAIBAID, REC:MED MX</p><p>H/O SINGLE EPISODE OF SEVERE SOB (12/2015)</p><p>KNOWN CASE OF DCM</p>', '15,17,18', '', '<p>DCM, ECTATIC CORONARY ARTERIES, PERMANAT AF ,HTN,DL, ATOPY(DUST), GOUT , H/O FISTULECTOMY</p>', '2021-07-05 16:56:00', 3, NULL, 0, 1),
(139, 48, 157, '2018-05-26', '167', '4361', 'MD DULAL', '54', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '', '', '', '', '01920940963', 'Dr Momenuzzaman', '165', '<p>H/O PAROXYSMAL AF , PERMANENT AF(2004)</p><p>CAG:ECTATIC CORONARIES (02/2005) LAIBAID, REC:MED MX</p><p>H/O SINGLE EPISODE OF SEVERE SOB (12/2015)</p><p>KNOWN CASE OF DCM</p>', '15,17,18', '', '<p>DCM, ECTATIC CORONARY ARTERIES, PERMANAT AF ,HTN,DL, ATOPY(DUST), GOUT , H/O FISTULECTOMY</p>', '2021-07-05 17:05:00', 3, NULL, 0, 1),
(140, 48, 158, '2019-03-30', '167', '4361', 'MD DULAL', '54', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '', '', '', '', '01920940963', 'Dr Momenuzzaman', '165', '<p>H/O PAROXYSMAL AF , PERMANENT AF(2004)</p><p>CAG:ECTATIC CORONARIES (02/2005) LAIBAID, REC:MED MX</p><p>H/O SINGLE EPISODE OF SEVERE SOB (12/2015)</p><p>KNOWN CASE OF DCM</p>', '15,17,18', '', '<p>DCM, ECTATIC CORONARY ARTERIES, PERMANAT AF ,HTN,DL, ATOPY(DUST), GOUT , H/O FISTULECTOMY</p>', '2021-07-05 17:17:00', 3, NULL, 0, 1),
(141, 48, 159, '2020-09-23', '167', '4361', 'MD DULAL', '54', '0000-00-00', 'Dhaka', 8, 'Retired Job holder', '', 0, '', '', '', '', '01920940963', 'Dr Momenuzzaman', '165', '<p>H/O PAROXYSMAL AF , PERMANENT AF(2004)</p><p>CAG:ECTATIC CORONARIES (02/2005) LAIBAID, REC:MED MX</p><p>H/O SINGLE EPISODE OF SEVERE SOB (12/2015)</p><p>KNOWN CASE OF DCM</p>', '15,17,18', '', '<p>DCM, ECTATIC CORONARY ARTERIES, PERMANAT AF ,HTN,DL, ATOPY(DUST), GOUT , H/O FISTULECTOMY</p>', '2021-07-06 09:42:00', 3, NULL, 0, 1),
(142, 49, 161, '2016-12-29', '189', '265786', 'SHAMSUR RAHMAN', '52', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01711957685', 'Dr Momenuzzaman', '162', '<p>HOS ADMISSION WITH ALVF WITH NONCOMPACTION CM(01/2004)NHF</p><p>HOS ADM WITH ALVF (08/2015)NHF</p><p>NSTEMI, ALVF, LMWH+(09/2015)NHF</p><p>CAG: YVD , REC :MED MX(10/2015 UHL)</p><p>ALVF WITH HOSPITAL ADM(12/2016)NHF</p><p><br></p>', '28,18', '17', '<p>NSTEMI, CAG:TVD, H/O ALVF , H/O NERAL IMPAIRMENT, HYPOTHYROIDISM, PVD</p>', '2021-07-06 11:32:00', 3, NULL, 0, 1),
(143, 49, 162, '2017-06-14', '189', '265786', 'SHAMSUR RAHMAN', '52', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01711957685', 'Dr Momenuzzaman', '162', '<p>HOS ADMISSION WITH ALVF WITH NONCOMPACTION CM(01/2004)NHF</p><p>HOS ADM WITH ALVF (08/2015)NHF</p><p>NSTEMI, ALVF, LMWH+(09/2015)NHF</p><p>CAG: YVD , REC :MED MX(10/2015 UHL)</p><p>ALVF WITH HOSPITAL ADM(12/2016)NHF</p><p><br></p>', '28,18', '17', '<p>NSTEMI, CAG:TVD, H/O ALVF , H/O NERAL IMPAIRMENT, HYPOTHYROIDISM, PVD</p>', '2021-07-06 11:48:00', 3, NULL, 0, 1),
(144, 49, 163, '2018-02-14', '189', '265786', 'SHAMSUR RAHMAN', '52', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01711957685', 'Dr Momenuzzaman', '162', '<p>HOS ADMISSION WITH ALVF WITH NONCOMPACTION CM(01/2004)NHF</p><p>HOS ADM WITH ALVF (08/2015)NHF</p><p>NSTEMI, ALVF, LMWH+(09/2015)NHF</p><p>CAG: YVD , REC :MED MX(10/2015 UHL)</p><p>ALVF WITH HOSPITAL ADM(12/2016)NHF</p><p><br></p>', '28,18', '17', '<p>NSTEMI, CAG:TVD, H/O ALVF , H/O NERAL IMPAIRMENT, HYPOTHYROIDISM, PVD</p>', '2021-07-06 11:59:00', 3, NULL, 0, 1),
(145, 49, 164, '2018-02-14', '189', '265786', 'SHAMSUR RAHMAN', '52', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01711957685', 'Dr Momenuzzaman', '162', '<p>HOS ADMISSION WITH ALVF WITH NONCOMPACTION CM(01/2004)NHF</p><p>HOS ADM WITH ALVF (08/2015)NHF</p><p>NSTEMI, ALVF, LMWH+(09/2015)NHF</p><p>CAG: YVD , REC :MED MX(10/2015 UHL)</p><p>ALVF WITH HOSPITAL ADM(12/2016)NHF</p><p><br></p>', '28,18', '17', '<p>NSTEMI, CAG:TVD, H/O ALVF , H/O NERAL IMPAIRMENT, HYPOTHYROIDISM, PVD</p>', '2021-07-06 12:11:00', 3, NULL, 0, 1),
(146, 49, 165, '2018-11-20', '189', '265786', 'SHAMSUR RAHMAN', '52', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '01711957685', 'Dr Momenuzzaman', '162', '<p>HOS ADMISSION WITH ALVF WITH NONCOMPACTION CM(01/2004)NHF</p><p>HOS ADM WITH ALVF (08/2015)NHF</p><p>NSTEMI, ALVF, LMWH+(09/2015)NHF</p><p>CAG: YVD , REC :MED MX(10/2015 UHL)</p><p>ALVF WITH HOSPITAL ADM(12/2016)NHF</p><p><br></p>', '28,18', '17', '<p>NSTEMI, CAG:TVD, H/O ALVF , H/O NERAL IMPAIRMENT, HYPOTHYROIDISM, PVD</p>', '2021-07-06 13:48:00', 3, NULL, 0, 1),
(147, 50, 167, '2017-01-22', '179', '9964', 'Mohammad Chan Miah', '51', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>KNOWN CASE OF ICM WITH ORGANIZED APICAL THROMBUS (03/2008)</p><p>HOSPITAL ADMISSION WITH LVF (08/2005 UHL,),( 07/2016, 08/2016, FARIDOUR)</p><p>HOSPITAL ADM WITH HYPOGLYCEMIA (07/2016, FORIDPUR )(11/2017)FARIDPUR</p><p><br></p>', '28,17,32', '14', '<p>ICM,LVF, DM,DL,CKD,CHOLELITHIASIS, IBS,HTN. DL</p>', '2021-07-06 16:27:00', 3, NULL, 0, 1),
(148, 50, 168, '2017-08-10', '179', '9964', 'Mohammad Chan Miah', '51', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>KNOWN CASE OF ICM WITH ORGANIZED APICAL THROMBUS (03/2008)</p><p>HOSPITAL ADMISSION WITH LVF (08/2005 UHL,),( 07/2016, 08/2016, FARIDOUR)</p><p>HOSPITAL ADM WITH HYPOGLYCEMIA (07/2016, FORIDPUR )(11/2017)FARIDPUR</p><p><br></p>', '28,17,32', '14', '<p>ICM,LVF, DM,DL,CKD,CHOLELITHIASIS, IBS,HTN. DL</p>', '2021-07-06 16:38:00', 3, NULL, 0, 1),
(149, 50, 169, '2018-04-07', '179', '9964', 'Mohammad Chan Miah', '51', '0000-00-00', 'Dhaka', 20, 'Service holder', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>KNOWN CASE OF ICM WITH ORGANIZED APICAL THROMBUS (03/2008)</p><p>HOSPITAL ADMISSION WITH LVF (08/2005 UHL,),( 07/2016, 08/2016, FARIDOUR)</p><p>HOSPITAL ADM WITH HYPOGLYCEMIA (07/2016, FORIDPUR )(11/2017)FARIDPUR</p><p><br></p>', '28,17,32', '14', '<p>ICM,LVF, DM,DL,CKD,CHOLELITHIASIS, IBS,HTN. DL</p>', '2021-07-06 16:48:00', 3, NULL, 0, 1),
(150, 51, 171, '2017-01-18', '201', '215559', 'Rafiqul Islam', '39', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '1', '', '', '', '01980506023', 'Dr Momenuzzaman', '162', '<p>OMI(A/S) STK+,LMWH+(03/2014)ICHRI</p><p>CAG:TVD (03/2014)UHL</p><p>S/P PCI TO STENTING TO LAD (3.0X18) , LCX TO OM,(3X38), RCA (2.75X24)(04/2014)UHL</p><p>H/O NSTEMI (LMWH)+(06/2015)(02/2017)UHL</p><p>CAG:TVD WITH PATENT STENTS (06/2015)</p><p>H/O LVF(', '15,28,32', '17', '<p>OMI, ANT/SEP, H/O NSTEMI, H/O LVF, H/O VT, TVD, S/P PCI TO LAD, LCX TO OM, RCA WITH PATENT STENT , HTN, DM, HYPOTHYROIDISM, H/O RENAL IMPAIRMENT ,HTN, DM, ANTI HCV POSITIVE</p>', '2021-07-07 10:22:00', 3, NULL, 0, 1),
(151, 51, 172, '2017-04-25', '201', '215559', 'Rafiqul Islam', '39', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '1', '', '', '', '01980506023', 'Dr Momenuzzaman', '162', '<p>OMI(A/S) STK+,LMWH+(03/2014)ICHRI</p><p>CAG:TVD (03/2014)UHL</p><p>S/P PCI TO STENTING TO LAD (3.0X18) , LCX TO OM,(3X38), RCA (2.75X24)(04/2014)UHL</p><p>H/O NSTEMI (LMWH)+(06/2015)(02/2017)UHL</p><p>CAG:TVD WITH PATENT STENTS (06/2015)</p><p>H/O LVF(', '15,28,32', '17', '<p>OMI, ANT/SEP, H/O NSTEMI, H/O LVF, H/O VT, TVD, S/P PCI TO LAD, LCX TO OM, RCA WITH PATENT STENT , HTN, DM, HYPOTHYROIDISM, H/O RENAL IMPAIRMENT ,HTN, DM, ANTI HCV POSITIVE</p>', '2021-07-07 10:54:00', 3, NULL, 0, 1),
(152, 52, 174, '2016-11-03', '202', '248141', 'Amerendra Sarker', '66', '0000-00-00', 'Dhaka', 8, 'Businessman', '', 0, '', '', '', '', '01723332538', 'Dr Momenuzzaman', '162', '<p>OMI (A/S) LATE PRESENTATION( LMWH)+,(11.03.2015) UHL</p><p>H/O AF WIHT FVR(REVERTED)</p><p>CAG: SVD (14/03/2015),</p><p>S/P PCI TO ALD, (2.75X18) (18/03/2015) UHL</p><p>HEART FAILURE, ANAEMIA(21/04/2015)UHL</p><p>DECOMPENSATED CLD, GRADE I ESOPHAGEAL V', '15,17,18,32', '', '<p>OMI(ANT SEP), CAG :SVD. S/P PCI TO LAD, MODARATE TO SEVERE LV SYSTOLIC DYSFUNCTION, H/O AF WITHFVR, H/O HEART FAILURE, H/O DECOMPENSATED CLD, OA, PUD, BEP, ANKYLOSING , SIADH</p>', '2021-07-07 14:42:00', 3, NULL, 0, 1),
(153, 52, 175, '2018-01-03', '202', '248141', 'Amerendra Sarker', '66', '0000-00-00', 'Dhaka', 8, 'Businessman', '', 0, '', '', '', '', '01723332538', 'Dr Momenuzzaman', '162', '<p>OMI (A/S) LATE PRESENTATION( LMWH)+,(11.03.2015) UHL</p><p>H/O AF WIHT FVR(REVERTED)</p><p>CAG: SVD (14/03/2015),</p><p>S/P PCI TO ALD, (2.75X18) (18/03/2015) UHL</p><p>HEART FAILURE, ANAEMIA(21/04/2015)UHL</p><p>DECOMPENSATED CLD, GRADE I ESOPHAGEAL V', '15,17,18,32', '', '<p>OMI(ANT SEP), CAG :SVD. S/P PCI TO LAD, MODARATE TO SEVERE LV SYSTOLIC DYSFUNCTION, H/O AF WITHFVR, H/O HEART FAILURE, H/O DECOMPENSATED CLD, OA, PUD, BEP, ANKYLOSING , SIADH</p>', '2021-07-07 14:51:00', 3, NULL, 0, 1),
(154, 52, 176, '2019-04-27', '202', '248141', 'Amerendra Sarker', '66', '0000-00-00', 'Dhaka', 8, 'Businessman', '', 0, '', '', '', '', '01723332538', 'Dr Momenuzzaman', '162', '<p>OMI (A/S) LATE PRESENTATION( LMWH)+,(11.03.2015) UHL</p><p>H/O AF WIHT FVR(REVERTED)</p><p>CAG: SVD (14/03/2015),</p><p>S/P PCI TO ALD, (2.75X18) (18/03/2015) UHL</p><p>HEART FAILURE, ANAEMIA(21/04/2015)UHL</p><p>DECOMPENSATED CLD, GRADE I ESOPHAGEAL V', '15,17,18,32', '', '<p>OMI(ANT SEP), CAG :SVD. S/P PCI TO LAD, MODARATE TO SEVERE LV SYSTOLIC DYSFUNCTION, H/O AF WITHFVR, H/O HEART FAILURE, H/O DECOMPENSATED CLD, OA, PUD, BEP, ANKYLOSING , SIADH</p>', '2021-07-07 16:10:00', 3, NULL, 0, 1),
(155, 53, 178, '2017-01-02', '204', '161556', 'Nur Hossain', '61', '0000-00-00', 'chittagong', 20, 'Retired Job holder', '', 0, '02', '', '', '', '01552341899', 'Dr Momenuzzaman', '162', '<p>H/O CHEST APIN (2000, NICVD)</p><p>CAG: DVD(06/2012, ICHRI)</p><p>S/P PTCA WITH STENTING TO RCA (3X33), POBA TO D1 (12/2012) UHL</p><p>H/O HOSPITAL ADMISSION CHEST TIGHTNESS (15/3/2021) WITH NSTEMI , UHL</p>', '15,28,18,32', '12', '<p>DVD, S/P PCI TO RCA AND POBA TO D1, HTN, DM,BA,OA</p>', '2021-07-07 17:26:00', 3, NULL, 0, 1),
(156, 53, 179, '2017-01-02', '204', '161556', 'Nur Hossain', '61', '0000-00-00', 'chittagong', 20, 'Retired Job holder', '', 0, '02', '', '', '', '01552341899', 'Dr Momenuzzaman', '162', '<p>H/O CHEST APIN (2000, NICVD)</p><p>CAG: DVD(06/2012, ICHRI)</p><p>S/P PTCA WITH STENTING TO RCA (3X33), POBA TO D1 (12/2012) UHL</p><p>H/O HOSPITAL ADMISSION CHEST TIGHTNESS (15/3/2021) WITH NSTEMI , UHL</p>', '15,28,18,32', '12', '<p>DVD, S/P PCI TO RCA AND POBA TO D1, HTN, DM,BA,OA</p>', '2021-07-07 17:47:00', 3, NULL, 0, 1),
(157, 22, 10, '2021-06-27', '123456', '123456', 'Sojib Sorkar (TEST)', '24', '0000-00-00', '', 8, 'Doctor', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>Past Medical History</p>', '15', '13,14', '<p>Diagnosis</p>', '2021-07-07 21:21:00', 3, NULL, 0, 1),
(158, 53, 180, '2018-01-08', '204', '161556', 'Nur Hossain', '61', '0000-00-00', 'chittagong', 20, 'Retired Job holder', '', 0, '02', '', '', '', '01552341899', 'Dr Momenuzzaman', '162', '<p>H/O CHEST APIN (2000, NICVD)</p><p>CAG: DVD(06/2012, ICHRI)</p><p>S/P PTCA WITH STENTING TO RCA (3X33), POBA TO D1 (12/2012) UHL</p><p>H/O HOSPITAL ADMISSION CHEST TIGHTNESS (15/3/2021) WITH NSTEMI , UHL</p>', '15,28,18,32', '12', '<p>DVD, S/P PCI TO RCA AND POBA TO D1, HTN, DM,BA,OA</p>', '2021-07-08 08:40:00', 3, NULL, 0, 1),
(159, 53, 181, '2019-02-23', '204', '161556', 'Nur Hossain', '61', '0000-00-00', 'chittagong', 20, 'Retired Job holder', '', 0, '02', '', '', '', '01552341899', 'Dr Momenuzzaman', '162', '<p>H/O CHEST APIN (2000, NICVD)</p><p>CAG: DVD(06/2012, ICHRI)</p><p>S/P PTCA WITH STENTING TO RCA (3X33), POBA TO D1 (12/2012) UHL</p><p>H/O HOSPITAL ADMISSION CHEST TIGHTNESS (15/3/2021) WITH NSTEMI , UHL</p>', '15,28,18,32', '12', '<p>DVD, S/P PCI TO RCA AND POBA TO D1, HTN, DM,BA,OA</p>', '2021-07-08 08:55:00', 3, NULL, 0, 1),
(160, 53, 182, '2020-02-26', '204', '161556', 'Nur Hossain', '61', '0000-00-00', 'chittagong', 20, 'Retired Job holder', '', 0, '02', '', '', '', '01552341899', 'Dr Momenuzzaman', '162', '<p>H/O CHEST APIN (2000, NICVD)</p><p>CAG: DVD(06/2012, ICHRI)</p><p>S/P PTCA WITH STENTING TO RCA (3X33), POBA TO D1 (12/2012) UHL</p><p>H/O HOSPITAL ADMISSION CHEST TIGHTNESS (15/3/2021) WITH NSTEMI , UHL</p>', '15,28,18,32', '12', '<p>DVD, S/P PCI TO RCA AND POBA TO D1, HTN, DM,BA,OA</p>', '2021-07-08 09:06:00', 3, NULL, 0, 1),
(161, 54, 184, '2017-01-26', '206', '283383', 'Md Ariful Isalam', '50', '0000-00-00', 'Danmondi Dhaka', 20, 'Service holder', '', 0, '', '', '', 'wife', '01847200309', 'DR Momenuzzan ', '162', '<p>OMI (A/S) </p><p>CAG: DVD (1/2016), IBS</p>', '', '', '<p>OMI(A/S), CAG:DVD(01/2016) IBS</p>', '2021-07-08 09:45:00', 3, NULL, 0, 1),
(162, 54, 185, '2017-11-19', '206', '283383', 'Md Ariful Isalam', '50', '0000-00-00', 'Danmondi Dhaka', 20, 'Service holder', '', 0, '', '', '', 'wife', '01847200309', 'DR Momenuzzan ', '162', '<p>OMI (A/S) </p><p>CAG: DVD (1/2016), IBS</p>', '', '', '<p>OMI(A/S), CAG:DVD(01/2016) IBS</p>', '2021-07-08 09:53:00', 3, NULL, 0, 1),
(163, 54, 186, '2018-08-11', '206', '283383', 'Md Ariful Isalam', '50', '0000-00-00', 'Danmondi Dhaka', 20, 'Service holder', '', 0, '', '', '', 'wife', '01847200309', 'DR Momenuzzan ', '162', '<p>OMI (A/S) </p><p>CAG: DVD (1/2016), IBS</p>', '', '', '<p>OMI(A/S), CAG:DVD(01/2016) IBS</p>', '2021-07-08 10:03:00', 3, NULL, 0, 1),
(164, 55, 188, '2016-12-26', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 11:11:00', 3, NULL, 0, 1),
(165, 55, 188, '2016-12-26', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 11:25:00', 3, NULL, 0, 1),
(166, 55, 189, '2018-04-17', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 11:34:00', 3, NULL, 0, 1),
(167, 55, 190, '2016-12-29', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 11:43:00', 3, NULL, 0, 1),
(168, 55, 191, '2020-11-10', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 12:02:00', 3, NULL, 0, 1),
(169, 55, 192, '2016-12-29', '207', '282435', 'Morium Jamila ', '42', '0000-00-00', 'Dhaka', 11, 'House Wife', '', 0, '4', '', '', 'son', '01992566430', '', '160', '<p>KNOWN CASE OF DCM</p><p>S/P PDA DEVICE CLOSURE(01/2003)NHF</p><p>H/O ALVF(01/2016)UHL</p><p>CAG: NORMAL , REC: MEDICAL MANAGEMENT (01/2016) UHL</p><p>S/P TONSILLECTOMY</p><p>ECTOPIC KIDNEY (LEFT)</p>', '15', '', '<p>DCM,S/P PDA DEVICE CLOSURE, CAG:NORMAL, ECTOPIC KIDNEY LEFT, S/P TONISILLECTOMY, COLD ALLERGY, OSTEOARTHRITIS</p>', '2021-07-08 12:15:00', 3, NULL, 0, 1),
(170, 56, 193, '2017-07-04', '208', '290451', 'MD Assaduzzaman', '44', '0000-00-00', 'MIRPUR DHAKA', 21, 'Businessman', '', 0, '', '', '', '', '01711345422', '', '170', '<p>KNOWN CASE OF DCM(2016)</p><p>CAG: NON CRITICAL CAG(10/2005)NHF</p><p>S/P AICD IMPLANTATION (05/2016)UHL&nbsp;</p>', '32', '', '<p>DCM,S/P AICD IMPLANTATION, NONCRITICAL CAG, ATOPY, PUD</p>', '2021-07-08 13:04:00', 3, NULL, 0, 1),
(171, 56, 194, '2017-07-04', '208', '290451', 'MD Assaduzzaman', '44', '0000-00-00', 'MIRPUR DHAKA', 21, 'Businessman', '', 0, '', '', '', '', '01711345422', '', '170', '<p>KNOWN CASE OF DCM(2016)</p><p>CAG: NON CRITICAL CAG(10/2005)NHF</p><p>S/P AICD IMPLANTATION (05/2016)UHL </p>', '32', '', '<p>DCM,S/P AICD IMPLANTATION, NONCRITICAL CAG, ATOPY, PUD</p>', '2021-07-08 13:15:00', 3, NULL, 0, 1),
(172, 56, 195, '2017-07-04', '208', '290451', 'MD Assaduzzaman', '44', '0000-00-00', 'MIRPUR DHAKA', 21, 'Businessman', '', 0, '', '', '', '', '01711345422', '', '170', '<p>KNOWN CASE OF DCM(2016)</p><p>CAG: NON CRITICAL CAG(10/2005)NHF</p><p>S/P AICD IMPLANTATION (05/2016)UHL </p>', '32', '', '<p>DCM,S/P AICD IMPLANTATION, NONCRITICAL CAG, ATOPY, PUD</p>', '2021-07-08 13:26:00', 3, NULL, 0, 1),
(173, 57, 197, '2016-12-08', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 14:35:00', 3, NULL, 0, 1),
(174, 57, 198, '2016-12-08', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 14:50:00', 3, NULL, 0, 1),
(175, 57, 199, '2016-12-08', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 14:59:00', 3, NULL, 0, 1),
(176, 57, 199, '2019-06-09', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 15:00:00', 3, NULL, 0, 1),
(177, 57, 200, '2016-12-08', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 15:20:00', 3, NULL, 0, 1),
(178, 57, 201, '2020-11-24', '216', '36147', 'MD AbduL  MAJID', '66', '0000-00-00', 'Dhaka', 20, 'Businessman', '', 0, '04', '', '', '', '0198576260', 'DR Momenuzzan ', '', '<p>OMI (A-S) WITH ALVF (LMWH)+,(18.07.2003) NHF</p><p>CAG: SVD LAD 100%, (07/2004) INDIA, REC: MED RX</p><p>NSTEMI, ALVF, AF (LMWH) (12/2009) (ICHRI)</p><p>RELOOK CAG : DVD (LAD +OM2) (03/2010, LABAID) REC: MED RX</p><p>NSTEMI (LMWH)+(12/2015)UHL</p><p><b', '15,28', '12', '<p>CAG:DVD, OMI (A-S), H/O NSTEMI, H/O LVF, HTN, DM, S/P CHOLECYSTECTOMY, S/P HERNIOTOMY</p>', '2021-07-08 15:37:00', 3, NULL, 0, 1),
(179, 58, 203, '2016-11-23', '218', '2454', 'Razina Akter', '39', '0000-00-00', 'MOHAMMODPUR DHAKA', 21, 'Teacher', '', 0, '01', '', '', '', '01711338780', '', '', '<p>KNOWN CASE OF PARIPARTUM DCM(SINCE 2006)</p><p>H/O ALVF (04/2016)UHL</p>', '', '', '<p>PERIPARTUM  DCM, H/O ALVF</p>', '2021-07-08 16:20:00', 3, NULL, 0, 1),
(180, 58, 204, '2016-11-23', '218', '2454', 'Razina Akter', '39', '0000-00-00', 'MOHAMMODPUR DHAKA', 21, 'Teacher', '', 0, '01', '', '', '', '01711338780', '', '', '<p>KNOWN CASE OF PARIPARTUM DCM(SINCE 2006)</p><p>H/O ALVF (04/2016)UHL</p>', '', '', '<p>PERIPARTUM  DCM, H/O ALVF</p>', '2021-07-08 16:33:00', 3, NULL, 0, 1),
(181, 58, 205, '2016-11-23', '218', '2454', 'Razina Akter', '39', '0000-00-00', 'MOHAMMODPUR DHAKA', 21, 'Teacher', '', 0, '01', '', '', '', '01711338780', '', '', '<p>KNOWN CASE OF PARIPARTUM DCM(SINCE 2006)</p><p>H/O ALVF (04/2016)UHL</p>', '', '', '<p>PERIPARTUM  DCM, H/O ALVF</p>', '2021-07-08 16:54:00', 3, NULL, 0, 1),
(182, 59, 207, '2016-11-09', '219', '297780', 'MD KHALEQUZZAMAN', '63', '0000-00-00', 'KHUSHTIA', 20, 'Service holder', '', 0, '2', '', '', '', '01711080017', '', '160', '<p>OMI (LMWH)+, (2002, KUSHTIA, NO DOC</p><p>UA(05/2016) KHUSHTIA</p><p>H/O AGE WITH EI (06/2016, LABAID)</p><p>CAG : TVD (05/2016)SQUARE, REC :CABG</p><p>HTN,</p>', '15', '13', '<p>TVD, OMI, H/O UA, CALCANEAL SPUR,PUD,HTN, COPD</p>', '2021-07-10 12:19:00', 3, NULL, 0, 1),
(183, 59, 209, '2016-11-09', '219', '297780', 'MD KHALEQUZZAMAN', '63', '0000-00-00', 'KHUSHTIA', 20, 'Service holder', '', 0, '2', '', '', '', '01711080017', '', '160', '<p>OMI (LMWH)+, (2002, KUSHTIA, NO DOC</p><p>UA(05/2016) KHUSHTIA</p><p>H/O AGE WITH EI (06/2016, LABAID)</p><p>CAG : TVD (05/2016)SQUARE, REC :CABG</p><p>HTN,</p>', '15', '13', '<p>TVD, OMI, H/O UA, CALCANEAL SPUR,PUD,HTN, COPD</p>', '2021-07-10 12:33:00', 3, NULL, 0, 1),
(184, 59, 210, '2016-11-09', '219', '297780', 'MD KHALEQUZZAMAN', '63', '0000-00-00', 'KHUSHTIA', 20, 'Service holder', '', 0, '2', '', '', '', '01711080017', '', '160', '<p>OMI (LMWH)+, (2002, KUSHTIA, NO DOC</p><p>UA(05/2016) KHUSHTIA</p><p>H/O AGE WITH EI (06/2016, LABAID)</p><p>CAG : TVD (05/2016)SQUARE, REC :CABG</p><p>HTN,</p>', '15', '13', '<p>TVD, OMI, H/O UA, CALCANEAL SPUR,PUD,HTN, COPD</p>', '2021-07-10 12:42:00', 3, NULL, 0, 1),
(185, 60, 212, '2017-02-09', '221', '304363', 'Rokeya Begum ', '56', '0000-00-00', 'Norshindi', 10, 'House Wife', '', 0, '', '', '', '', '01727196925', 'DR Momenuzzan ', '156', '<p>Known case DCM</p>', '', '17', '<p>DCM,hYPOTHYROIDISM, S/P HYSTECTOMY, DEGERATIVE LUMBER AND CERVICAL SPONDYLITIS,</p>', '2021-07-10 13:35:00', 3, NULL, 0, 1),
(186, 60, 213, '2017-02-09', '221', '304363', 'Rokeya Begum ', '56', '0000-00-00', 'Norshindi', 10, 'House Wife', '', 0, '', '', '', '', '01727196925', 'DR Momenuzzan ', '156', '<p>Known case DCM</p>', '', '17', '<p>DCM,hYPOTHYROIDISM, S/P HYSTECTOMY, DEGERATIVE LUMBER AND CERVICAL SPONDYLITIS,</p>', '2021-07-10 13:56:00', 3, NULL, 0, 1),
(187, 60, 214, '2017-02-09', '221', '304363', 'Rokeya Begum ', '56', '0000-00-00', 'Norshindi', 10, 'House Wife', '', 0, '', '', '', '', '01727196925', 'DR Momenuzzan ', '156', '<p>Known case DCM</p>', '', '17', '<p>DCM,hYPOTHYROIDISM, S/P HYSTECTOMY, DEGERATIVE LUMBER AND CERVICAL SPONDYLITIS,</p>', '2021-07-10 14:11:00', 3, NULL, 0, 1),
(188, 62, 217, '2016-11-26', '224', '6671', 'ABDUL KARIM CHOWDHURY', '71', '0000-00-00', 'chittagong', 8, 'Retired Job holder', '', 0, '', '', '', '', '01812279271', 'DR Momenuzzan ', '', '<p>KNOWN CASE OF ICM </p><p>H/O ISCHEMIC CVD WITH LSH(2005)</p><p>OMI (ANT )(05/2005 CMCH)STK </p><p>CAG: SVD(04/2006)NHF</p><p>S/P PCI TO LAD (05/06)NHF</p><p>H/O HOSPITAL ADMISSION WITH VT (DC SHOCK)(02/2016) CMCH</p><p>S/P AICD IMPALNTATION (03/2016)UH', '17,32', '12,14', '<p>ICM, OMI (ANT) ,SVD, S/P PCI TO LAD, H/O VT .S/P ICD IMPLANTATION,H/O CVD, WITH LSH.BA, CKD,RIGHT CATARACT, RECURRENT HERNIA, H/O AKI</p>', '2021-07-10 15:41:00', 3, NULL, 0, 1),
(189, 62, 218, '2016-11-26', '224', '6671', 'ABDUL KARIM CHOWDHURY', '71', '0000-00-00', 'chittagong', 8, 'Retired Job holder', '', 0, '', '', '', '', '01812279271', 'DR Momenuzzan ', '', '<p>KNOWN CASE OF ICM </p><p>H/O ISCHEMIC CVD WITH LSH(2005)</p><p>OMI (ANT )(05/2005 CMCH)STK </p><p>CAG: SVD(04/2006)NHF</p><p>S/P PCI TO LAD (05/06)NHF</p><p>H/O HOSPITAL ADMISSION WITH VT (DC SHOCK)(02/2016) CMCH</p><p>S/P AICD IMPALNTATION (03/2016)UH', '17,32', '12,14', '<p>ICM, OMI (ANT) ,SVD, S/P PCI TO LAD, H/O VT .S/P ICD IMPLANTATION,H/O CVD, WITH LSH.BA, CKD,RIGHT CATARACT, RECURRENT HERNIA, H/O AKI</p>', '2021-07-10 16:06:00', 3, NULL, 0, 1),
(190, 63, 220, '2018-01-01', '225', '299586', 'MD ABDUL RAHIM', '50', '0000-00-00', 'GAZIPUR', 8, 'Businessman', '', 0, '', '', '', '', '01725009037', 'DR Momenuzzan ', '160', '<p>HOS. ADM. WITH PH , ALVF (07/2015 LAB AID)</p><p>CAG: DVD (06/2016)GAZIPUR, REC: PCI TO LAD, OM)</p><p>S/P LATERAL INTERNAL SPHIN SPHIN CTEROTORY FOR ANAL FISSURE</p><p>S/P EXCISION OF SENTINEL PILES(09/11) EDEN MULTICARE,)</p>', '15,29,17', '', '<p>LVF, DVD, HTN, DM, DL, S/P LATERAL SPHINETEROTOMY FOR ANAL FISSURE</p>', '2021-07-10 17:17:00', 3, NULL, 0, 1),
(191, 64, 222, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 09:21:00', 3, NULL, 0, 1),
(192, 64, 223, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 09:40:00', 3, NULL, 0, 1),
(193, 64, 224, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 09:56:00', 3, NULL, 0, 1);
INSERT INTO `patient_archive_basic_info` (`pp_id`, `p_id`, `pp_par_id`, `pp_date_of_assesment`, `pp_hf_id`, `pp_mr_no`, `pp_name`, `pp_age`, `pp_birth_date`, `pp_address`, `pp_education_level`, `pp_occupation`, `pp_income`, `pp_marital_status`, `pp_no_of_children`, `pp_manstrul_history`, `pp_caregiver_name`, `pp_caregiver_relation`, `pp_caregiver_phone_no`, `pp_treting_cardiologist`, `pp_height`, `pp_pm_history`, `pp_riskfactor`, `pp_comorbidities`, `pp_diagnosis`, `pp_created_at`, `pp_created_by`, `pp_updated_at`, `pp_updated_by`, `pp_status`) VALUES
(194, 64, 225, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 10:24:00', 3, NULL, 0, 1),
(195, 64, 226, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 10:34:00', 3, NULL, 0, 1),
(196, 64, 226, '2016-11-23', '227', '271481', 'REZAUL KARIM', '49', '0000-00-00', 'CHAPAINAWABGONG', 8, 'Teacher', '', 0, '2', '', '', '', '01718933173', 'DR Momenuzzan ', '160', '<p>OMI (ANT) LATE PRESENTATION, LMWH+, (31.05.15)</p><p>CAG: SVD , LAD 100%, (15.11.2015)UHL, REC: MED MX</p><p>VENTRICULAR REDUCTION SURGERY,</p><p>KNOWN CASE OF ICM .</p><p>AICD IMPALNTATION (14.7.19) UHL</p>', '', '13', '<p>ICM, OMI ANT, SVD WITH CAG, LV(APICAL+ANT)WALL ANEURYSM, H/O RENAL IMPAIRMENT , COPD,</p>', '2021-07-11 12:08:00', 3, NULL, 0, 1),
(197, 65, 228, '2021-06-17', '917', '521350', 'Mojibur Rahman ', '70', '0000-00-00', 'Dhaka Cantonment', 21, 'Retired Job holder', '', 0, '4', '', 'MONOWARA BEGUM', 'wife', '01729381798', 'DR Momenuzzan ', '178', '<p>H/O NSTEMI (2013)</p><p>S/P PCI TO LCX AND RCA(2015)CMH</p><p>H/O AMI (INF) (LMWH)+(7/03/2018)</p><p>S/P PRIMARY PCI TO RCA(DISTAL)(7.3.18)ENAM HOS</p><p>H/O NSTEMI (LMWH)+(16/05/21)</p><p>S/P CAG:TVD(31/5/21)CMH</p><p>REC:REVASCULERIZATION</p><p>S/P P', '15,28', '', '<p>NSTEMI, PCI TO LCX AND RCA, AMI (INF), S/P PRIMARY PCI TO RCA, S/P CAG:TVD, S/P PTCA WITH STENTING TO LAD AND RCA. HTN, DM</p>', '2021-07-11 15:16:00', 3, NULL, 0, 1),
(198, 65, 228, '2021-06-17', '917', '521350', 'Mojibur Rahman ', '70', '0000-00-00', 'Dhaka Cantonment', 21, 'Retired Job holder', '', 0, '4', '', 'MONOWARA BEGUM', 'wife', '01729381798', 'DR Momenuzzan ', '178', '<p>H/O NSTEMI (2013)</p><p>S/P PCI TO LCX AND RCA(2015)CMH</p><p>H/O AMI (INF) (LMWH)+(7/03/2018)</p><p>S/P PRIMARY PCI TO RCA(DISTAL)(7.3.18)ENAM HOS</p><p>H/O NSTEMI (LMWH)+(16/05/21)</p><p>S/P CAG:TVD(31/5/21)CMH</p><p>REC:REVASCULERIZATION</p><p>S/P P', '15,28', '', '<p>NSTEMI, PCI TO LCX AND RCA, AMI (INF), S/P PRIMARY PCI TO RCA, S/P CAG:TVD, S/P PTCA WITH STENTING TO LAD AND RCA. HTN, DM</p>', '2021-07-11 15:17:00', 3, NULL, 0, 1),
(199, 66, 230, '2021-06-30', '922', '229893', 'SHAMSUL HAQUE CHOWDURY', '76', '0000-00-00', 'SAGUNBAGICHA', 21, 'Retired Job holder', '', 0, '8', '', 'ADV. HELENA PARVEEN', 'wife', '01713010707', 'DR Momenuzzan ', '178', '<p>S/P PTCA WITH STENTING TO LAD, OM1, RCA (18.4.2005) INDIA</p><p>S/P PTCA WITH STENTING LAD AND RCA (10.9.2014)UHL</p><p>CAG: TVD WITH PATENT STENT IN LAD , RCA, OM (23.01.2016)UHL</p><p>CAG:TVD WITH PATEINT STENT IN LAD AND RCA (03/04/2018) UHL</p><p>H', '15,28,18', '14', '', '2021-07-11 17:35:00', 3, NULL, 0, 1),
(200, 66, 230, '2021-06-30', '922', '229893', 'SHAMSUL HAQUE CHOWDURY', '76', '0000-00-00', 'SAGUNBAGICHA', 21, 'Retired Job holder', '', 0, '8', '', 'ADV. HELENA PARVEEN', 'wife', '01713010707', 'DR Momenuzzan ', '178', '<p>S/P PTCA WITH STENTING TO LAD, OM1, RCA (18.4.2005) INDIA</p><p>S/P PTCA WITH STENTING LAD AND RCA (10.9.2014)UHL</p><p>CAG: TVD WITH PATENT STENT IN LAD , RCA, OM (23.01.2016)UHL</p><p>CAG:TVD WITH PATEINT STENT IN LAD AND RCA (03/04/2018) UHL</p><p>H', '15,28,18', '14', '', '2021-07-11 17:37:00', 3, NULL, 0, 1),
(201, 66, 230, '2021-06-30', '922', '229893', 'SHAMSUL HAQUE CHOWDURY', '76', '0000-00-00', 'SAGUNBAGICHA', 21, 'Retired Job holder', '', 0, '8', '', 'ADV. HELENA PARVEEN', 'wife', '01713010707', 'DR Momenuzzan ', '178', '<p>S/P PTCA WITH STENTING TO LAD, OM1, RCA (18.4.2005) INDIA</p><p>S/P PTCA WITH STENTING LAD AND RCA (10.9.2014)UHL</p><p>CAG: TVD WITH PATENT STENT IN LAD , RCA, OM (23.01.2016)UHL</p><p>CAG:TVD WITH PATEINT STENT IN LAD AND RCA (03/04/2018) UHL</p><p>H', '15,28,18', '14', '', '2021-07-12 09:59:00', 3, NULL, 0, 1),
(202, 66, 230, '2021-07-11', '922', '229893', 'SHAMSUL HAQUE CHOWDURY', '76', '0000-00-00', 'SAGUNBAGICHA', 21, 'Retired Job holder', '', 0, '8', '', 'ADV. HELENA PARVEEN', 'wife', '01713010707', 'DR Momenuzzan ', '178', '<p>S/P PTCA WITH STENTING TO LAD, OM1, RCA (18.4.2005) INDIA</p><p>S/P PTCA WITH STENTING LAD AND RCA (10.9.2014)UHL</p><p>CAG: TVD WITH PATENT STENT IN LAD , RCA, OM (23.01.2016)UHL</p><p>CAG:TVD WITH PATEINT STENT IN LAD AND RCA (03/04/2018) UHL</p><p>H', '15,28,18', '14', '', '2021-07-12 10:00:00', 3, NULL, 0, 1),
(203, 11, 62, '2021-01-20', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-07-13 15:24:00', 3, NULL, 0, 1),
(204, 11, 62, '2021-01-20', '16', '9368', 'Fatema Begum', '80', '0000-00-00', 'Sathkhira', 8, 'House Wife', '', 0, '6', '', 'Shekh khalid Hasan', '', '01711831784', '', '', '<p>. H/O OMI (Ant) (17.03.17)</p><p>. H/O hosp adm e dx as ALVF (Controlled) (2008.10.12)</p><p>. H/O hosp adm e dx as ICM (29.5.18, UHL)</p><p>.Old lawnar infrct in brain (03/11)</p>', '28,18,31', '15,16,20,21', '', '2021-07-13 15:25:00', 3, NULL, 0, 1),
(205, 74, 237, '2021-04-27', '887', '514519', 'MD ABUL HOSSEN', '45', '0000-00-00', 'COMILLA', 20, 'Businessman', '', 0, '2', '', 'SUMON', 'BROTHER', '01881029081', 'DR .N. A. M.  Momenuzzaman', '180', '<p>H/O ACS (08/1/2021)COMILLA</p><p>CAG:SVD(27/1/21)</p><p>S/P PCI TO LAD (27/1/21)</p><p>H/O HOSPITAL ADMISSION WITH CCF (5/5/21)</p><p>H/O HOSPITAL ADMISSION WITH CHF(27/5/21)CMH</p><p>CAG: SVD WITH PATENT STENT IN LAD (2/6/21)</p><p>S/P CABG ( X3GRAFT ', '28,18,32', '', '', '2021-07-15 12:46:00', 3, NULL, 0, 1),
(206, 74, 238, '2021-04-27', '887', '514519', 'MD ABUL HOSSEN', '45', '0000-00-00', 'COMILLA', 20, 'Businessman', '', 0, '2', '', 'SUMON', 'BROTHER', '01881029081', 'DR .N. A. M.  Momenuzzaman', '180', '<p>H/O ACS (08/1/2021)COMILLA</p><p>CAG:SVD(27/1/21)</p><p>S/P PCI TO LAD (27/1/21)</p><p>H/O HOSPITAL ADMISSION WITH CCF (5/5/21)</p><p>H/O HOSPITAL ADMISSION WITH CHF(27/5/21)CMH</p><p>CAG: SVD WITH PATENT STENT IN LAD (2/6/21)</p><p>S/P CABG ( X3GRAFT ', '28,18,32', '', '', '2021-07-15 12:50:00', 3, NULL, 0, 1),
(207, 74, 238, '2021-04-27', '887', '514519', 'MD ABUL HOSSEN', '45', '0000-00-00', 'COMILLA', 20, 'Businessman', '', 0, '2', '', 'SUMON', 'BROTHER', '01881029081', 'DR .N. A. M.  Momenuzzaman', '180', '<p>H/O ACS (08/1/2021)COMILLA</p><p>CAG:SVD(27/1/21)</p><p>S/P PCI TO LAD (27/1/21)</p><p>H/O HOSPITAL ADMISSION WITH CCF (5/5/21)</p><p>H/O HOSPITAL ADMISSION WITH CHF(27/5/21)CMH</p><p>CAG: SVD WITH PATENT STENT IN LAD (2/6/21)</p><p>S/P CABG ( X3GRAFT ', '28,18,32', '', '', '2021-07-15 15:21:00', 3, NULL, 0, 1),
(208, 75, 240, '2021-05-27', '904', '520741', 'AL AMIN EBNA ABDULLAH', '49', '0000-00-00', 'MOYMANSINGH,', 21, 'Service holder', '', 0, '02', '', 'SYLA HOSSAN', 'wife', '01715123011', 'DR .N. A. M.  Momenuzzaman', '178', '<p>H/O SOB ON EXERTION ,( CLASS -II) LAST ON YEAR (2020) WITH LEG SWELLING</p>', '28', '', '<p>DCM, HYPOTHYROIDISM</p>', '2021-07-15 16:42:00', 3, NULL, 0, 1),
(209, 82, 247, '2021-06-19', '918', '524195', 'MD TARIKUL ISLAM', '54', '0000-00-00', 'SENPARA , MIRPUR 10', 11, 'Service holder', '', 0, '02', '', 'SAFIA PARVEEN', 'wife', '01712100375', 'DR .N. A. M.  Momenuzzaman', '172', '<p>H/O KNOWN CASE OF DCM(2017)</p><p>H/O CAG : NORMAL CORONARY ARTERIES(5/2/2019) KOLKATA</p><p>REC: MED MX</p><p>S/P AICD IMPLANTATION(23/06/2021)UHL</p><p><br></p>', '32', '', '<p>DCM, CAG: NORMAL, S/P AICD IMPLANTATION (23/06/2021)UHL</p>', '2021-07-19 15:09:00', 3, NULL, 0, 1),
(210, 78, 244, '2021-05-04', '891', '468953', 'MD TAREQ HOSSAIN', '35', '0000-00-00', 'BARIDHARA DOHS, DHAKA', 12, 'Businessman', '', 0, '0', '', 'PRIYANKA', 'wife', '01739330433', 'DR .N. A. M.  Momenuzzaman', '170', '<p>H/O NSTEMI (LMWH+). (9/4/2021) WITH DCM, ALVF .(9/4/2021)</p><p>H/O SEPTICEMIA , ELECTROLYTE IMBALANCE, OBSTRUCTIVE SLEEP APNEA(15/4/2021)UHL</p>', '', '', '<p>DCM</p>', '2021-07-19 15:51:00', 3, NULL, 0, 1),
(211, 78, 249, '2021-05-04', '891', '468953', 'MD TAREQ HOSSAIN', '35', '0000-00-00', 'BARIDHARA DOHS, DHAKA', 12, 'Businessman', '', 0, '0', '', 'PRIYANKA', 'wife', '01739330433', 'DR .N. A. M.  Momenuzzaman', '170', '<p>H/O NSTEMI (LMWH+). (9/4/2021) WITH DCM, ALVF .(9/4/2021)</p><p>H/O SEPTICEMIA , ELECTROLYTE IMBALANCE, OBSTRUCTIVE SLEEP APNEA(15/4/2021)UHL</p>', '', '', '<p>DCM(9/4/2021)</p>', '2021-07-19 16:42:00', 3, NULL, 0, 1),
(212, 78, 249, '2021-05-04', '891', '468953', 'MD TAREQ HOSSAIN', '35', '0000-00-00', 'BARIDHARA DOHS, DHAKA', 12, 'Businessman', '', 0, '0', '', 'PRIYANKA', 'wife', '01739330433', 'DR .N. A. M.  Momenuzzaman', '170', '<p>H/O NSTEMI (LMWH+). (9/4/2021) WITH DCM, ALVF .(9/4/2021)</p><p>H/O SEPTICEMIA , ELECTROLYTE IMBALANCE, OBSTRUCTIVE SLEEP APNEA(15/4/2021)UHL</p>', '', '', '<p>DCM(9/4/2021)</p>', '2021-07-25 11:18:00', 3, NULL, 0, 1),
(213, 84, 252, '2021-02-23', '865', '492911', 'HARUNUR RASHID MAZUMDER ', '73', '0000-00-00', 'MIRPUR DHAKA', 19, 'Retired Job holder', '', 0, '3', '', '', '', '', 'Dr. N. A. M. Momenuzzaman', '170', '<p>H/O AMI (INF)(29.11.2020)</p><p>CAG:TVD(1.2.21) , REC:CABG</p><p>H/O HOS ADM. WITH UA (27/5/21) UHL</p><p><br></p>', '15,28', '14', '<p>ICM, CAG: TVD, REC: CABG, HTN, DM, CKD</p>', '2021-07-29 09:44:00', 3, NULL, 0, 1),
(214, 84, 253, '2021-02-23', '865', '492911', 'HARUNUR RASHID MAZUMDER ', '73', '0000-00-00', 'MIRPUR DHAKA', 19, 'Retired Job holder', '', 0, '3', '', '', '', '', 'Dr. N. A. M. Momenuzzaman', '170', '<p>H/O AMI (INF)(29.11.2020)</p><p>CAG:TVD(1.2.21) , REC:CABG</p><p>H/O HOS ADM. WITH UA (27/5/21) UHL</p><p><br></p>', '15,28', '14', '<p>ICM, CAG: TVD, REC: CABG, HTN, DM, CKD</p>', '2021-07-29 10:31:00', 3, NULL, 0, 1),
(215, 68, 231, '2021-07-13', '925', '113347', 'ATAUR RAHMAN ARZU', '59', '0000-00-00', 'BANDOR, NARAYANGONG', 20, 'Businessman', '', 0, '02', '', 'SELINA RAHMAN', 'wife', '01919261405', 'DR Momenuzzan ', '178', '<p>H/O NSTEMI (LMWH+) (<span style=\"font-size: 1rem;\">24/012009)</span></p><p><span style=\"font-size: 1rem;\">CAG:TVD (24.3.09)</span></p><p><span style=\"font-size: 1rem;\">RELOOK CAG: TVD WITH LEFT RENAL ARTERY STENOSIS(6/01/2011)</span></p><p><span style=', '15,28,32', '', '', '2021-07-29 11:15:00', 3, NULL, 0, 1),
(216, 89, 260, '2021-07-25', '930', '530225', 'TANZIR AHMED', '36', '0000-00-00', 'DHAMRAI', 20, 'Businessman', 'NOT GIVEN', 0, '', '', 'SAFINA JAHAN', 'WIFE', '01309298155', 'Dr. N. A. M. Momenuzzaman', '160', '<p>H/O HOSPITALIZATION BILATERAL PNUEMONIA SEPTIC SHOCK WITH IHD (07/2020) WITH ISCHEMIC HEPATITIS</p><p>H/O RIGHT URETERIC STONE</p>', '18,32', '', '<p>DCM</p>', '2021-08-03 11:07:00', 3, NULL, 0, 1),
(217, 93, 263, '2021-06-01', '907', '472725', 'MD AFZAL HOSSAIN', '64', '0000-00-00', 'KHULNA', 20, 'Service holder', '', 0, '02', '', 'MONAMI', 'DAUGHTER', '01951914303', 'DR. N.A.M Momenuzzaman', '170', '<p>H/O AMI (ANT) (1/8/2020)</p><p>CAG: DVD (23/9/20) UHL</p><p>S/P PCI TO LAD AND LCX TO OM (14/10/20) UHL</p>', '15', '', '', '2021-08-03 13:02:00', 3, NULL, 0, 1),
(218, 93, 264, '2021-06-01', '907', '472725', 'MD AFZAL HOSSAIN', '64', '0000-00-00', 'KHULNA', 20, 'Service holder', '', 0, '02', '', 'MONAMI', 'DAUGHTER', '01951914303', 'DR. N.A.M Momenuzzaman', '170', '<p>H/O AMI (ANT) (1/8/2020)</p><p>CAG: DVD (23/9/20) UHL</p><p>S/P PCI TO LAD AND LCX TO OM (14/10/20) UHL</p>', '15', '', '', '2021-08-03 13:17:00', 3, NULL, 0, 1),
(219, 67, 270, '2021-02-09', '864', '144908', 'RAFIQUE AHMED', '78', '0000-00-00', 'UTTARA ,DHAKA', 13, 'Retired Job holder', '', 0, '', '', 'FATEMA ', 'wife', '01843444222', 'DR Momenuzzan ', '167', '<p>H/O EXERTOINAL CHEST PAIN,ETT +VE (2002)</p><p>CAG: SVD(07/2002)ABU DHABI</p><p>S/P PTCA AND STENTING O RCA(8/07/2002)</p><p>HOSPITALIZATION WITH ACS (05/2006)USA</p><p>RELOOK CAG: DVD (05/2006) USA</p><p>S/P PTCA WITH STENTING  TO LAD (05/2006)</p><p>', '15,28,18,32', '', '<p>, HTN, DM,</p>', '2021-08-04 15:30:00', 3, NULL, 0, 1),
(220, 67, 271, '2021-05-09', '864', '144908', 'RAFIQUE AHMED', '78', '0000-00-00', 'UTTARA ,DHAKA', 13, 'Retired Job holder', '', 0, '', '', 'FATEMA ', 'wife', '01843444222', 'DR Momenuzzan ', '167', '<p>H/O EXERTOINAL CHEST PAIN,ETT +VE (2002)</p><p>CAG: SVD(07/2002)ABU DHABI</p><p>S/P PTCA AND STENTING O RCA(8/07/2002)</p><p>HOSPITALIZATION WITH ACS (05/2006)USA</p><p>RELOOK CAG: DVD (05/2006) USA</p><p>S/P PTCA WITH STENTING  TO LAD (05/2006)</p><p>', '15,28,18,32', '', '<p>, HTN, DM,</p>', '2021-08-04 16:23:00', 3, NULL, 0, 1),
(221, 5, 27, '2021-02-28', '86', '11947', 'Abdul Haque', '89', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '6', '', '', '', '01717355826', '', '165', '<p>. OMI (A/S), STK+ (2001, RSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: ISR of REA Slent Adv: Med (07/09, UHC)</p><p>. Relook: TVD, S/P PCI to OM (10/16, UHC)</p><p>. known of ICM</p><p>.</p>', '15,28,17', '11,12,17', '<p>. OMI (A/S), -STK+, TV - CAD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, Cavical spondylosis, HTN,</p>', '2021-08-07 16:01:00', 3, NULL, 0, 1),
(222, 101, 274, '2020-02-18', '763', '398205', 'MD ABDUL AZIZ', '52', '0000-00-00', 'ELEPHANT ROAD DHAKA', 20, 'Engineer', '50000', 0, '1', 'N/A', 'MAFRUZA AZIZ', 'WIFE', '01717371490', 'DR. N.A.M Momenuzzaman', '160', '<p>H/O NSTEMI(LMWH)+(2003)</p><p>CAG: SVD(2003, 2010) NICVD</p><p>S/P PTCA WITH STENTING TO LAD AND RCA(2014, LABAID)</p><p>RELOOK CAG: TVD(2014)</p><p>S/P PTCA WITH STENTING TO LAD(14.12.18)BSH.</p><p>S/P PCI TO LCX((14.11.18 BSH)</p><p>H/O HOS ADM. WITH', '15', '', '', '2021-08-08 12:24:00', 3, NULL, 0, 1),
(223, 101, 275, '2020-02-18', '763', '398205', 'MD ABDUL AZIZ', '52', '0000-00-00', 'ELEPHANT ROAD DHAKA', 20, 'Engineer', '50000', 0, '1', 'N/A', 'MAFRUZA AZIZ', 'WIFE', '01717371490', 'DR. N.A.M Momenuzzaman', '160', '<p>H/O NSTEMI(LMWH)+(2003)</p><p>CAG: SVD(2003, 2010) NICVD</p><p>S/P PTCA WITH STENTING TO LAD AND RCA(2014, LABAID)</p><p>RELOOK CAG: TVD(2014)</p><p>S/P PTCA WITH STENTING TO LAD(14.12.18)BSH.</p><p>S/P PCI TO LCX((14.11.18 BSH)</p><p>H/O HOS ADM. WITH', '15', '', '', '2021-08-08 12:58:00', 3, NULL, 0, 1),
(224, 5, 27, '2017-10-22', '86', '11947', 'Abdul Haque', '89', '0000-00-00', 'Dhaka', 8, 'Service holder', '', 0, '6', 'N/A', '', '', '01717355826', 'DR. N.A.M Momenuzzaman', '165cm', '<p>. OMI (A/S), STK+ (2001, KSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: DVD WITH PATENT STENT IN LAD AND 40% ISR IN RCA (07/2009) UHL</p><p>. Relook: TVD WITH PATENT STENT IN LAD AND RCA (10/2016) UHL, S/P P', '15,28,17,32', '11,12,17', '<p>. OMI (A/S), -STK+, CAG: TVD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, CERVICAL spondylosis, HTN,</p>', '2021-08-10 13:24:00', 3, NULL, 0, 1),
(225, 22, 10, '2021-07-14', '123456', '123456', 'Sojib Sorkar (TEST)', '24', '0000-00-00', '', 8, 'Doctor', '', 0, '', '', '', '', '', 'Dr Momenuzzaman', '', '<p>Past Medical History</p>', '15', '13,14', '<p>Diagnosis</p>', '2021-08-10 16:58:00', 2, NULL, 0, 1),
(226, 5, 27, '2017-10-22', '86', '11947', 'Abdul Haque', '89', '0000-00-00', 'Dhaka', 11, 'Service holder', '', 0, '6', 'N/A', '', '', '01717355826', 'DR. N.A.M Momenuzzaman', '165cm', '<p>. OMI (A/S), STK+ (2001, KSA)</p><p>. CAG: DVD (10/01, NHF)</p><p>. S/P PCI to LAD, RCA (11/01, NHF)</p><p>. Relook: DVD WITH PATENT STENT IN LAD AND 40% ISR IN RCA (07/2009) UHL</p><p>. Relook: TVD WITH PATENT STENT IN LAD AND RCA (10/2016) UHL, S/P P', '15,28,17,32', '11,12,17', '<p>. OMI (A/S), -STK+, CAG: TVD, S/P PCI TO CAD AND RCA, ICM, DM, DL, BA+, CERVICAL spondylosis, HTN,</p>', '2021-08-12 18:08:00', 3, NULL, 0, 1),
(227, 7, 35, '2017-03-23', '96', '70084', 'Abdul Jalil', '56', '0000-00-00', 'Dhaka', 21, 'Service holder', '', 0, '', '', '', '', '01753199424', '', '', '<p>. OMI (Ant) STK+, ALVF (03/09, NICVD)</p><p>. H/O parapaeumonic effusion (x 3 tinco)</p><p>. CAG: SVD(LCX 80, OM 70%) (06/09, LabAid)</p>', '15,28', '', '<p>. OMI (Ant) - STK+, H/O LVF, SV - CAD, H/O parapaeumonic effusion, .HTN, DM, mild  renal impairment</p>', '2021-08-12 18:09:00', 3, NULL, 0, 1),
(228, 110, 290, '2020-03-15', '794', '133811', 'AMINUL ISLAM', '60', '0000-00-00', 'DHANMONDI ,DHAKA', 21, 'Businessman', '', 0, '02', 'N/A', 'FERDOUS ARA', 'WIFE', '01726947959', 'DR. N.A.M Momenuzzaman', '170', '<p>H/O AMI(ANT) STK+(2010)NHF</p><p>CAG: TVD(15/02/2020)NHF</p><p>S/P PCI TO LAD (25/02/2010)NHF</p><p>RELOOK CAG: SVD WITH PATENT STENT (6/09/2014) UHL</p><p>H/O NSTEMI(8/9/2019)</p><p>CAG: DVD WITH PATENT STENT TO LAD (11/9/2019)</p><p>S/P PCI TO OM1 (1', '15,28,18,32', '', '', '2021-08-16 10:14:00', 3, NULL, 0, 1),
(229, 78, 250, '2021-06-01', '891', '468953', 'MD TAREQ HOSSAIN', '35', '0000-00-00', 'BARIDHARA DOHS, DHAKA', 12, 'Businessman', '', 0, '0', '', 'PRIYANKA', 'wife', '01739330433', 'DR .N. A. M.  Momenuzzaman', '170', '<p>H/O NSTEMI (LMWH+). (9/4/2021) WITH DCM, ALVF .(9/4/2021)</p><p>H/O SEPTICEMIA , ELECTROLYTE IMBALANCE, OBSTRUCTIVE SLEEP APNEA(15/4/2021)UHL</p>', '', '', '<p>DCM(9/4/2021)</p>', '2021-08-17 10:42:00', 3, NULL, 0, 1),
(230, 78, 250, '2021-06-01', '891', '468953', 'MD TAREQ HOSSAIN', '35', '0000-00-00', 'BARIDHARA DOHS, DHAKA', 12, 'Businessman', '', 0, '0', '', 'PRIYANKA', 'wife', '01739330433', 'DR .N. A. M.  Momenuzzaman', '170', '<p>H/O NSTEMI (LMWH+). (9/4/2021) WITH DCM, ALVF .(9/4/2021)</p><p>H/O SEPTICEMIA , ELECTROLYTE IMBALANCE, OBSTRUCTIVE SLEEP APNEA(15/4/2021)UHL</p><p>H/O HOS ADM WITH AKI (13/06/2021)UHL</p><p>H/O HOS ADM WITH ALVF(8/2021)UHL</p>', '', '', '<p>DCM(9/4/2021)</p>', '2021-08-17 10:57:00', 3, NULL, 0, 1),
(231, 121, 327, '2021-08-16', '938', '439066', 'SHAHADAT HOSSAIN', '41', '0000-00-00', 'TAJGAO, DHAKA', 20, 'Businessman', '', 0, '0', 'N/A', 'SUMSUNNAHAR', 'WIFE', '01534655938', 'DR. N.A.M Momenuzzaman', '165', '<p>H/O CAG:SVD(10/11/2019)UHL</p><p>S/P PCI TO LAD(01/12/2019)UHL</p>', '15,32', '', '', '2021-08-30 16:43:00', 3, NULL, 0, 1),
(232, 122, 328, '2021-08-17', '939', '105226', 'JUSTICE SYED MD DASTAGIR', '69', '0000-00-00', 'DHANMODDI DHAKA', 21, 'Retired Job holder', '', 0, '', 'N/A', 'REDWAN', 'SON', '01937455958', 'DR. N.A.M Momenuzzaman', '172', '<p>H/O OMI( LAT, ANT) (1985)</p><p>S/P CABG ( 3 GRAFT) (1991) INDIA</p><p>CAG: TVD WITH GVD(20/09/2010)UHL</p><p>S/P PTCA AND STENTING TO LAD(2 STENTS) AND LCX (2 STENTS)2010</p><p>CAG: TVD WITH GVD(17/6/2019)UHL</p><p>S/P PTCA AND STENTING TO LIMA TO LAD', '', '', '', '2021-08-30 16:58:00', 3, NULL, 0, 1),
(233, 140, 357, '2021-09-05', '955', '518709', 'ABDUL MANNAN', '48', '0000-00-00', 'UTTARA 11', 20, 'Businessman', '', 0, '', 'N/A', 'SHAHIDA AKTER', 'WIFE', '01840464202', 'DR. N.A.M Momenuzzaman', '160', '<p>H/O&nbsp; OCCASIONAL CHEST PAIN (2002)</p><p>CAG: NORMAL CORONARY(2002, INDIA ) NO DOC</p><p>H/O RELOOK CAG: NORMAL CORONARIES(2012, INDIA, NO DOC)</p><p>H/O HOS ADM WITH ALVF WITH AF WITH FVR(1/6/2021) UHL DR REYAN ANIS</p>', '', '', '', '2021-09-06 09:50:00', 3, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_basic_info`
--

CREATE TABLE `patient_basic_info` (
  `p_id` int(11) NOT NULL,
  `p_date_of_assesment` date NOT NULL,
  `p_hf_id` varchar(255) NOT NULL,
  `p_mr_no` varchar(255) NOT NULL COMMENT 'hospital id',
  `p_vt_type` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_gender` varchar(255) NOT NULL,
  `p_birth_date` date NOT NULL,
  `p_age` int(11) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  `p_education_level` int(11) NOT NULL,
  `p_occupation` varchar(255) NOT NULL,
  `p_income` varchar(255) NOT NULL,
  `p_marital_status` varchar(255) NOT NULL,
  `p_no_of_children` varchar(255) NOT NULL,
  `p_blood_group` varchar(255) NOT NULL,
  `p_manstrul_history` varchar(255) NOT NULL,
  `p_caregiver_name` varchar(255) NOT NULL,
  `p_caregiver_relation` varchar(255) NOT NULL,
  `p_caregiver_phone_no` varchar(255) NOT NULL,
  `p_treting_cardiologist` varchar(255) NOT NULL,
  `p_height` varchar(255) NOT NULL,
  `p_weight` varchar(255) NOT NULL,
  `p_bmi` varchar(255) NOT NULL,
  `p_pm_history` varchar(1000) NOT NULL,
  `p_category_of_heart_fail` varchar(255) NOT NULL,
  `p_diagnosis` varchar(1000) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_created_at` datetime NOT NULL,
  `p_created_by` int(11) NOT NULL,
  `p_updated_at` datetime NOT NULL,
  `p_updated_by` int(11) NOT NULL,
  `p_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row',
  `par_id` int(11) NOT NULL,
  `a_p_status` int(11) NOT NULL COMMENT '0=not assessed\r\n1=send for assess\r\n',
  `j_a_status` int(11) NOT NULL COMMENT '0=not asses yet\r\n1= assess done',
  `d_p_status` int(11) NOT NULL COMMENT '0=not prescrive\r\n1=prescription done',
  `p_is_date` int(11) NOT NULL COMMENT '0=alive\r\n1=death'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_basic_info`
--

INSERT INTO `patient_basic_info` (`p_id`, `p_date_of_assesment`, `p_hf_id`, `p_mr_no`, `p_vt_type`, `p_name`, `p_gender`, `p_birth_date`, `p_age`, `p_address`, `p_education_level`, `p_occupation`, `p_income`, `p_marital_status`, `p_no_of_children`, `p_blood_group`, `p_manstrul_history`, `p_caregiver_name`, `p_caregiver_relation`, `p_caregiver_phone_no`, `p_treting_cardiologist`, `p_height`, `p_weight`, `p_bmi`, `p_pm_history`, `p_category_of_heart_fail`, `p_diagnosis`, `p_image`, `p_created_at`, `p_created_by`, `p_updated_at`, `p_updated_by`, `p_status`, `par_id`, `a_p_status`, `j_a_status`, `d_p_status`, `p_is_date`) VALUES
(170, '2021-10-01', '34534', '5345345', '', 'test', 'male', '0000-00-00', 0, '', 8, 'Doctor', 'Under 20,000', 'married', '', '', '', '', '', '', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-10-01 16:20:00', 1, '0000-00-00 00:00:00', 0, 1, 472, 0, 0, 1, 0),
(171, '2021-10-04', '345', '3453', '', 'test 2', 'male', '0000-00-00', 0, '', 8, 'Doctor', 'Under 20,000', 'married', '', '', '', '', '', '', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-10-04 12:05:00', 1, '0000-00-00 00:00:00', 0, 1, 474, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_calcium`
--

CREATE TABLE `patient_calcium` (
  `pc_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pc_date` date NOT NULL,
  `pc_value` varchar(255) NOT NULL,
  `pc_created_at` datetime NOT NULL,
  `pc_created_by` int(11) NOT NULL,
  `pc_updated_at` datetime NOT NULL,
  `pc_updated_by` int(11) NOT NULL,
  `pc_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_call_rules_if_unavailable`
--

CREATE TABLE `patient_call_rules_if_unavailable` (
  `pcru_id` int(11) NOT NULL,
  `cru_id` int(11) NOT NULL,
  `pcru_p_id` int(11) NOT NULL,
  `pcru_par_id` int(11) NOT NULL,
  `pcru_created_at` datetime NOT NULL,
  `pcru_created_by` int(11) NOT NULL,
  `pcru_updated_at` datetime NOT NULL,
  `pcru_updated_by` int(11) NOT NULL,
  `pcru_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_cardiovascular`
--

CREATE TABLE `patient_cardiovascular` (
  `pcv_id` int(11) NOT NULL,
  `cv_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pcv_created_at` datetime NOT NULL,
  `pcv_created_by` int(11) NOT NULL,
  `pcv_updated_at` datetime NOT NULL,
  `pcv_updated_by` int(11) NOT NULL,
  `pcv_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_cardiovascular`
--

INSERT INTO `patient_cardiovascular` (`pcv_id`, `cv_id`, `p_id`, `pcv_created_at`, `pcv_created_by`, `pcv_updated_at`, `pcv_updated_by`, `pcv_status`, `par_id`) VALUES
(464, 9, 170, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 469),
(465, 20, 170, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 469),
(466, 14, 170, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 471);

-- --------------------------------------------------------

--
-- Table structure for table `patient_cbc`
--

CREATE TABLE `patient_cbc` (
  `pcbc_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pcbc_date` date NOT NULL,
  `pcbc_hb` varchar(255) NOT NULL,
  `pcbc_platelet` varchar(255) NOT NULL,
  `pcbc_tc` varchar(255) NOT NULL,
  `pcbc_dc` varchar(255) NOT NULL,
  `pcbc_dc_neutrophils` varchar(255) NOT NULL,
  `pcbc_dc_lymphocytes` varchar(255) NOT NULL,
  `pcbc_dc_monocytes` varchar(255) NOT NULL,
  `pcbc_dc_eosinophils` varchar(255) NOT NULL,
  `pcbc_dc_basophils` varchar(255) NOT NULL,
  `pcbc_created_at` datetime NOT NULL,
  `pcbc_created_by` int(11) NOT NULL,
  `pcbc_updated_at` datetime NOT NULL,
  `pcbc_updated_by` int(11) NOT NULL,
  `pcbc_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_chest_x_ray`
--

CREATE TABLE `patient_chest_x_ray` (
  `pcxid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pcxdate` date NOT NULL,
  `pcxFindings` varchar(255) NOT NULL,
  `pcxpulmonary_edema` varchar(255) NOT NULL,
  `pcxpvh` varchar(255) NOT NULL,
  `pcxpleural_effusion` varchar(255) NOT NULL,
  `pcxct_ratio` varchar(255) NOT NULL,
  `pcx_created_at` datetime NOT NULL,
  `pcx_created_by` int(11) NOT NULL,
  `pcx_updated_at` datetime NOT NULL,
  `pcx_updated_by` int(11) NOT NULL,
  `pcx_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_comorbidities`
--

CREATE TABLE `patient_comorbidities` (
  `pc_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `pc_created_at` datetime NOT NULL,
  `pc_created_by` int(11) NOT NULL,
  `pc_updated_at` datetime NOT NULL,
  `pc_updated_by` int(11) NOT NULL,
  `pc_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_death_report`
--

CREATE TABLE `patient_death_report` (
  `pdr_id` int(11) NOT NULL,
  `pdr_p_id` int(11) NOT NULL,
  `pdr_par_id` int(11) NOT NULL,
  `pdr_date` date NOT NULL,
  `pdr_location` varchar(255) NOT NULL,
  `pdr_reason` varchar(255) NOT NULL,
  `pdr_details` varchar(255) NOT NULL,
  `pdr_created_at` datetime NOT NULL,
  `pdr_created_by` int(11) NOT NULL,
  `pdr_updated_at` datetime NOT NULL,
  `pdr_updated_by` int(11) NOT NULL,
  `pdr_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_device`
--

CREATE TABLE `patient_device` (
  `pd_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_date` date NOT NULL,
  `pd_created_at` datetime NOT NULL,
  `pd_created_by` int(11) NOT NULL,
  `pd_updated_at` datetime NOT NULL,
  `pd_updated_by` int(11) NOT NULL,
  `pd_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet',
  `pd_active_status` int(11) NOT NULL COMMENT 'for device reporting purpose '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_ecg`
--

CREATE TABLE `patient_ecg` (
  `pecg_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pecg_date` date NOT NULL,
  `pecg_findings` varchar(255) DEFAULT NULL,
  `pecg_rhythmc_sinus` varchar(255) DEFAULT NULL,
  `pecg_qrs` varchar(255) DEFAULT NULL,
  `pecg_rbb_OR_lbb` varchar(255) DEFAULT NULL,
  `pecg_heart_block` varchar(255) DEFAULT NULL,
  `pecg_qt` varchar(255) DEFAULT NULL,
  `pecg_ex_beats` varchar(255) DEFAULT NULL,
  `pecg_ex_beats_sub_category` varchar(255) DEFAULT NULL,
  `pecg_others` varchar(255) NOT NULL,
  `pecg_created_at` datetime NOT NULL,
  `pecg_created_by` int(11) NOT NULL,
  `pecg_updated_at` datetime NOT NULL,
  `pecg_updated_by` int(11) NOT NULL,
  `pecg_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet',
  `pecg_isvalid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_ecg_bbb`
--

CREATE TABLE `patient_ecg_bbb` (
  `peb_id` int(11) NOT NULL,
  `peb_ecg_row_id` int(11) NOT NULL,
  `peb_title` varchar(255) NOT NULL,
  `peb_created_at` datetime NOT NULL,
  `peb_created_by` int(11) NOT NULL,
  `peb_updated_at` datetime NOT NULL,
  `peb_updated_by` int(11) NOT NULL,
  `peb_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_ecg_bbb`
--

INSERT INTO `patient_ecg_bbb` (`peb_id`, `peb_ecg_row_id`, `peb_title`, `peb_created_at`, `peb_created_by`, `peb_updated_at`, `peb_updated_by`, `peb_status`) VALUES
(78, 935, 'NONE', '2021-09-20 10:35:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_echo`
--

CREATE TABLE `patient_echo` (
  `pecho_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pecho_date` date NOT NULL,
  `pecho_lvid` varchar(255) NOT NULL,
  `pecho_ef` varchar(255) NOT NULL,
  `pecho_rvsp` varchar(255) NOT NULL,
  `pecho_rwma` varchar(255) NOT NULL,
  `pecho_d_by_d` varchar(255) NOT NULL,
  `pecho_mr` varchar(255) NOT NULL,
  `pecho_la` varchar(255) NOT NULL,
  `pecho_lvids` varchar(255) NOT NULL,
  `pecho_ef_by_teichholz` varchar(255) NOT NULL,
  `pecho_by_simpsons_method` varchar(255) NOT NULL,
  `pecho_mitral_annulus` varchar(255) NOT NULL,
  `pecho_vti` varchar(255) NOT NULL,
  `pecho_gls` varchar(255) NOT NULL,
  `pecho_comment` varchar(255) NOT NULL,
  `pecho_fs` varchar(255) NOT NULL,
  `pecho_created_at` datetime NOT NULL,
  `pecho_created_by` int(11) NOT NULL,
  `pecho_updated_at` datetime NOT NULL,
  `pecho_updated_by` int(11) NOT NULL,
  `pecho_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet',
  `pecho_stroke_volume` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_glucose`
--

CREATE TABLE `patient_glucose` (
  `pg_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pg_date` date NOT NULL,
  `pg_fbs` varchar(255) NOT NULL,
  `pg_rbs` varchar(255) NOT NULL,
  `pg_2hab` varchar(255) NOT NULL,
  `pg_hba1c` varchar(255) NOT NULL,
  `pg_created_at` datetime NOT NULL,
  `pg_created_by` int(11) NOT NULL,
  `pg_updated_at` datetime NOT NULL,
  `pg_updated_by` int(11) NOT NULL,
  `pg_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_having_discomfort`
--

CREATE TABLE `patient_having_discomfort` (
  `phd_id` int(11) NOT NULL,
  `phd_pswtc_id` int(11) NOT NULL,
  `phd_value` varchar(5000) NOT NULL,
  `phd_created_at` datetime NOT NULL,
  `phd_created_by` int(11) NOT NULL,
  `phd_updated_at` datetime NOT NULL,
  `phd_updated_by` int(11) NOT NULL,
  `phd_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_having_discomfort`
--

INSERT INTO `patient_having_discomfort` (`phd_id`, `phd_pswtc_id`, `phd_value`, `phd_created_at`, `phd_created_by`, `phd_updated_at`, `phd_updated_by`, `phd_status`) VALUES
(2, 24, 'Any shortness of breath', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_hf_type`
--

CREATE TABLE `patient_hf_type` (
  `phf_id` int(11) NOT NULL,
  `hf_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `phf_created_at` datetime NOT NULL,
  `phf_created_by` int(11) NOT NULL,
  `phf_updated_at` datetime NOT NULL,
  `phf_updated_by` int(11) NOT NULL,
  `phf_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_hf_type`
--

INSERT INTO `patient_hf_type` (`phf_id`, `hf_id`, `p_id`, `phf_created_at`, `phf_created_by`, `phf_updated_at`, `phf_updated_by`, `phf_status`, `par_id`) VALUES
(492, 4, 171, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 470),
(493, 4, 171, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 473);

-- --------------------------------------------------------

--
-- Table structure for table `patient_holter`
--

CREATE TABLE `patient_holter` (
  `ph_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ph_date` date NOT NULL,
  `ph_vpc` varchar(255) NOT NULL,
  `ph_atrial_arrhythmia` varchar(255) NOT NULL,
  `ph_min_hr` varchar(255) NOT NULL,
  `ph_max_hr` varchar(255) NOT NULL,
  `ph_avg_hr` varchar(255) NOT NULL,
  `ph_pulse` varchar(255) NOT NULL,
  `ph_pulse_two_point_five` varchar(255) NOT NULL,
  `ph_other` varchar(255) NOT NULL,
  `ph_created_at` datetime NOT NULL,
  `ph_created_by` int(11) NOT NULL,
  `ph_updated_at` datetime NOT NULL,
  `ph_updated_by` int(11) NOT NULL,
  `ph_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_inr`
--

CREATE TABLE `patient_inr` (
  `pinr_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pinr_date` date NOT NULL,
  `pinr_value` varchar(255) NOT NULL,
  `pinr_created_at` datetime NOT NULL,
  `pinr_created_by` int(11) NOT NULL,
  `pinr_updated_at` datetime NOT NULL,
  `pinr_updated_by` int(11) NOT NULL,
  `pinr_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_lipid`
--

CREATE TABLE `patient_lipid` (
  `pl_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pl_date` date NOT NULL,
  `pl_tc` varchar(255) NOT NULL,
  `pl_ldl` varchar(255) NOT NULL,
  `pl_hdl` varchar(255) NOT NULL,
  `pl_tc_hdl_ratio` varchar(255) NOT NULL,
  `pl_tg` varchar(255) NOT NULL,
  `pl_created_at` datetime NOT NULL,
  `pl_created_by` int(11) NOT NULL,
  `pl_updated_at` datetime NOT NULL,
  `pl_updated_by` int(11) NOT NULL,
  `pl_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_lung_ultasound`
--

CREATE TABLE `patient_lung_ultasound` (
  `plu_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `plu_date` date NOT NULL,
  `plu_rest_blinx` varchar(255) NOT NULL,
  `plu_af_blinx` varchar(255) NOT NULL,
  `plu_created_at` datetime NOT NULL,
  `plu_created_by` int(11) NOT NULL,
  `plu_updated_at` datetime NOT NULL,
  `plu_updated_by` int(11) NOT NULL,
  `plu_status` int(11) NOT NULL,
  `plu_par_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_magnesium`
--

CREATE TABLE `patient_magnesium` (
  `pm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pm_date` date NOT NULL,
  `pm_value` varchar(255) NOT NULL,
  `pm_created_at` datetime NOT NULL,
  `pm_created_by` int(11) NOT NULL,
  `pm_updated_at` datetime NOT NULL,
  `pm_updated_by` int(11) NOT NULL,
  `pm_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_major_adverse_cardiac_events`
--

CREATE TABLE `patient_major_adverse_cardiac_events` (
  `pmace_id` int(11) NOT NULL,
  `mace_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pmace_created_at` datetime NOT NULL,
  `pmace_created_by` int(11) NOT NULL,
  `pmace_updated_at` datetime NOT NULL,
  `pmace_updated_by` int(11) NOT NULL,
  `pmace_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_medication_missing`
--

CREATE TABLE `patient_medication_missing` (
  `pmm_id` int(11) NOT NULL,
  `pmm_pswtc_id` int(11) NOT NULL,
  `pmm_has_all_pill_every_day` varchar(500) NOT NULL DEFAULT '-1',
  `pmm_has_all_pill_meds` varchar(500) NOT NULL DEFAULT '-1',
  `pmm_missing_some_pills` varchar(500) NOT NULL DEFAULT '-1',
  `pmm_any_addition_medicine` varchar(500) NOT NULL DEFAULT '-1',
  `pmm_addition_medicine_name` varchar(5000) NOT NULL DEFAULT '-1',
  `pmm_created_at` datetime NOT NULL,
  `pmm_created_by` int(11) NOT NULL,
  `pmm_updated_at` datetime NOT NULL,
  `pmm_updated_by` int(11) NOT NULL,
  `pmm_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_medication_missing`
--

INSERT INTO `patient_medication_missing` (`pmm_id`, `pmm_pswtc_id`, `pmm_has_all_pill_every_day`, `pmm_has_all_pill_meds`, `pmm_missing_some_pills`, `pmm_any_addition_medicine`, `pmm_addition_medicine_name`, `pmm_created_at`, `pmm_created_by`, `pmm_updated_at`, `pmm_updated_by`, `pmm_status`) VALUES
(2, 24, 'Patient has all pill and taken all doses correctly everyday', 'Patient has all pills but misses some doses', '-1', 'Yes', '', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(3, 28, '-1', '-1', '-1', '-1', '', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_minnesota_score_count`
--

CREATE TABLE `patient_minnesota_score_count` (
  `pmsc_id` int(11) NOT NULL,
  `pmsc_pswtc_id` int(11) NOT NULL,
  `pmsc_ankles_or_less` int(11) NOT NULL,
  `pmsc_sit_or_lie_down` int(11) NOT NULL,
  `pmsc_climbing_stairs_difficult` int(11) NOT NULL,
  `pmsc_house_or_yard_difficult` int(11) NOT NULL,
  `pmsc_going_place_away_from_home` int(11) NOT NULL,
  `pmsc_sleeping_well_at_night` int(11) NOT NULL,
  `pmsc_relating_to_or_doing_thing` int(11) NOT NULL,
  `pmsc_to_earn_living` int(11) NOT NULL,
  `pmsc_sports_or_hobbies_difficult` int(11) NOT NULL,
  `pmsc_sexual_activities_difficult` int(11) NOT NULL,
  `pmsc_eat_less_of_food` int(11) NOT NULL,
  `pmsc_short_of_breath` int(11) NOT NULL,
  `pmsc_tired_fatigued_low_energy` int(11) NOT NULL,
  `pmsc_in_a_hospital` int(11) NOT NULL,
  `pmsc_money_for_medical_care` int(11) NOT NULL,
  `pmsc_side_effects_treatment` int(11) NOT NULL,
  `pmsc_burden_to_family` int(11) NOT NULL,
  `pmsc_loss_of_self_control` int(11) NOT NULL,
  `pmsc_making_worry` int(11) NOT NULL,
  `pmsc_concentrate_or_remember_thing` int(11) NOT NULL,
  `pmsc_feel_depressed` int(11) NOT NULL,
  `pmsc_total_minnesota_score` int(11) NOT NULL,
  `pmsc_minnesota_score_status` int(11) NOT NULL,
  `pmsc_created_at` datetime NOT NULL,
  `pmsc_created_by` int(11) NOT NULL,
  `pmsc_updated_at` datetime NOT NULL,
  `pmsc_updated_by` int(11) NOT NULL,
  `pmsc_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_minnesota_score_count`
--

INSERT INTO `patient_minnesota_score_count` (`pmsc_id`, `pmsc_pswtc_id`, `pmsc_ankles_or_less`, `pmsc_sit_or_lie_down`, `pmsc_climbing_stairs_difficult`, `pmsc_house_or_yard_difficult`, `pmsc_going_place_away_from_home`, `pmsc_sleeping_well_at_night`, `pmsc_relating_to_or_doing_thing`, `pmsc_to_earn_living`, `pmsc_sports_or_hobbies_difficult`, `pmsc_sexual_activities_difficult`, `pmsc_eat_less_of_food`, `pmsc_short_of_breath`, `pmsc_tired_fatigued_low_energy`, `pmsc_in_a_hospital`, `pmsc_money_for_medical_care`, `pmsc_side_effects_treatment`, `pmsc_burden_to_family`, `pmsc_loss_of_self_control`, `pmsc_making_worry`, `pmsc_concentrate_or_remember_thing`, `pmsc_feel_depressed`, `pmsc_total_minnesota_score`, `pmsc_minnesota_score_status`, `pmsc_created_at`, `pmsc_created_by`, `pmsc_updated_at`, `pmsc_updated_by`, `pmsc_status`) VALUES
(2, 24, 3, 2, 2, 1, 2, 0, 4, 5, 3, 2, 3, 2, 3, 1, 2, 1, 1, 3, 4, 3, 1, 45, 2, '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(3, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_missing_medicine_why`
--

CREATE TABLE `patient_missing_medicine_why` (
  `pmmw_id` int(11) NOT NULL,
  `pmmw_pswtc_id` int(11) NOT NULL,
  `pmmw_medicine_id` int(11) NOT NULL,
  `pmmw_reason` varchar(255) NOT NULL,
  `pmmw_created_at` datetime NOT NULL,
  `pmmw_created_by` int(11) NOT NULL,
  `pmmw_updated_at` datetime NOT NULL,
  `pmmw_updated_by` int(11) NOT NULL,
  `pmmw_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_missing_medicine_why`
--

INSERT INTO `patient_missing_medicine_why` (`pmmw_id`, `pmmw_pswtc_id`, `pmmw_medicine_id`, `pmmw_reason`, `pmmw_created_at`, `pmmw_created_by`, `pmmw_updated_at`, `pmmw_updated_by`, `pmmw_status`) VALUES
(1, 24, 2, 'Personal or no reason', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(2, 24, 2, 'Side effect', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_mpi`
--

CREATE TABLE `patient_mpi` (
  `pm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pm_date` date NOT NULL,
  `pm_involved_regions` varchar(255) NOT NULL,
  `pm_involved_coronary` varchar(255) NOT NULL,
  `pm_viable` varchar(255) NOT NULL,
  `pm_non_viable` varchar(255) NOT NULL,
  `pm_lvef` varchar(255) NOT NULL,
  `pm_territory` varchar(255) NOT NULL,
  `pm_percent` varchar(255) NOT NULL,
  `pm_scar` varchar(255) NOT NULL,
  `pm_created_at` datetime NOT NULL,
  `pm_created_by` int(11) NOT NULL,
  `pm_updated_at` datetime NOT NULL,
  `pm_updated_by` int(11) NOT NULL,
  `pm_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_non_cardiovascular`
--

CREATE TABLE `patient_non_cardiovascular` (
  `pncv_id` int(11) NOT NULL,
  `ncv_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pncv_created_at` datetime NOT NULL,
  `pncv_created_by` int(11) NOT NULL,
  `pncv_updated_at` datetime NOT NULL,
  `pncv_updated_by` int(11) NOT NULL,
  `pncv_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_nt_pro_bnp`
--

CREATE TABLE `patient_nt_pro_bnp` (
  `pnpb_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pnpb_date` date NOT NULL,
  `pnpb_value` varchar(255) NOT NULL,
  `pnpb_created_at` datetime NOT NULL,
  `pnpb_created_by` int(11) NOT NULL,
  `pnpb_updated_at` datetime NOT NULL,
  `pnpb_updated_by` int(11) NOT NULL,
  `pnpb_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_other_element`
--

CREATE TABLE `patient_other_element` (
  `po_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `po_date` date NOT NULL,
  `po_test_name` varchar(255) NOT NULL,
  `po_value` varchar(255) NOT NULL,
  `po_created_at` datetime NOT NULL,
  `po_created_by` int(11) NOT NULL,
  `po_updated_at` datetime NOT NULL,
  `po_updated_by` int(11) NOT NULL,
  `po_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_overall_status`
--

CREATE TABLE `patient_overall_status` (
  `pos_id` int(11) NOT NULL,
  `pos_pswtc_id` int(11) NOT NULL,
  `pos_normal` longtext NOT NULL DEFAULT '-1',
  `pos_able_to_carry_on_normal` longtext NOT NULL DEFAULT '-1',
  `pos_normal_activity_with_effort` longtext NOT NULL DEFAULT '-1',
  `pos_care_for_self` longtext NOT NULL DEFAULT '-1',
  `pos_able_to_care_personal` longtext NOT NULL DEFAULT '-1',
  `pos_able_to_care_medical` longtext NOT NULL DEFAULT '-1',
  `pos_cannot_do_without_assistant` longtext NOT NULL DEFAULT '-1',
  `pos_weight_gain_one_kg` longtext NOT NULL DEFAULT '-1',
  `pos_bp` longtext NOT NULL DEFAULT '-1',
  `pos_bp_status` longtext NOT NULL DEFAULT '-1',
  `pos_shortness_of_breath` longtext NOT NULL DEFAULT '-1',
  `pos_smwtd_previous` longtext NOT NULL DEFAULT '-1',
  `pos_smwtd_today` longtext NOT NULL DEFAULT '-1',
  `pos_maintain_salt_water` longtext NOT NULL DEFAULT '-1',
  `pos_exercise_everyday` longtext NOT NULL DEFAULT '-1',
  `pos_smwtd_previous_two` longtext NOT NULL DEFAULT '-1',
  `pos_smwtd_today_two` longtext NOT NULL DEFAULT '-1',
  `pos_overall_final_status` longtext NOT NULL DEFAULT '-1',
  `pos_created_at` datetime NOT NULL,
  `pos_created_by` int(11) NOT NULL,
  `pos_updated_at` datetime NOT NULL,
  `pos_updated_by` int(11) NOT NULL,
  `pos_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_overall_status`
--

INSERT INTO `patient_overall_status` (`pos_id`, `pos_pswtc_id`, `pos_normal`, `pos_able_to_carry_on_normal`, `pos_normal_activity_with_effort`, `pos_care_for_self`, `pos_able_to_care_personal`, `pos_able_to_care_medical`, `pos_cannot_do_without_assistant`, `pos_weight_gain_one_kg`, `pos_bp`, `pos_bp_status`, `pos_shortness_of_breath`, `pos_smwtd_previous`, `pos_smwtd_today`, `pos_maintain_salt_water`, `pos_exercise_everyday`, `pos_smwtd_previous_two`, `pos_smwtd_today_two`, `pos_overall_final_status`, `pos_created_at`, `pos_created_by`, `pos_updated_at`, `pos_updated_by`, `pos_status`) VALUES
(2, 24, 'Normal no complains, no evidence of disease (NYHA-I)', 'Able to carry on normal activity, minor sign or symptoms of disease (NYHA-II)', '-1', '-1', '-1', '-1', '-1', 'No', '963', '-1', 'Increased', '36', '96', 'No', 'Yes', '-1', '-1', '2', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(3, 28, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '', '', '-1', '-1', '-1', '-1', '-1', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone_no`
--

CREATE TABLE `patient_phone_no` (
  `pp_id` int(11) NOT NULL,
  `pp_number` varchar(25) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pp_created_at` datetime NOT NULL,
  `pp_created_by` int(11) NOT NULL,
  `pp_updated_at` datetime NOT NULL,
  `pp_updated_by` int(11) NOT NULL,
  `pp_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row',
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_prescription_rules`
--

CREATE TABLE `patient_prescription_rules` (
  `ppr_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL,
  `ppr_created_at` datetime NOT NULL,
  `ppr_created_by` int(11) NOT NULL,
  `ppr_updated_at` datetime NOT NULL,
  `ppr_updated_by` int(11) NOT NULL,
  `ppr_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_pulmonary`
--

CREATE TABLE `patient_pulmonary` (
  `ppm_id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ppm_created_at` datetime NOT NULL,
  `ppm_created_by` int(11) NOT NULL,
  `ppm_updated_at` datetime NOT NULL,
  `ppm_updated_by` int(11) NOT NULL,
  `ppm_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_recent_hospitalization`
--

CREATE TABLE `patient_recent_hospitalization` (
  `prh_id` int(11) NOT NULL,
  `rh_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `rh_date` date NOT NULL,
  `rh_reasons` varchar(255) NOT NULL,
  `prh_created_at` datetime NOT NULL,
  `prh_created_by` int(11) NOT NULL,
  `prh_updated_at` datetime NOT NULL,
  `prh_updated_by` int(11) NOT NULL,
  `prh_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_risk_assesment`
--

CREATE TABLE `patient_risk_assesment` (
  `pra_id` int(11) NOT NULL,
  `ra_id` int(11) NOT NULL,
  `pra_child` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pra_date` varchar(255) NOT NULL,
  `pra_created_at` datetime NOT NULL,
  `pra_created_by` int(11) NOT NULL,
  `pra_updated_at` datetime NOT NULL,
  `pra_updated_by` int(11) NOT NULL,
  `pra_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_risk_factor`
--

CREATE TABLE `patient_risk_factor` (
  `prf_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `rf_id` int(11) NOT NULL,
  `prf_created_at` datetime NOT NULL,
  `prf_created_by` int(11) NOT NULL,
  `prf_updated_at` datetime NOT NULL,
  `prf_updated_by` int(11) NOT NULL,
  `prf_status` int(11) NOT NULL,
  `rf_id_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_sign_symptom`
--

CREATE TABLE `patient_sign_symptom` (
  `pss_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_ss_id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL,
  `pss_created_at` datetime NOT NULL,
  `pss_created_by` int(11) NOT NULL,
  `pss_updated_at` datetime NOT NULL,
  `pss_updated_by` int(11) NOT NULL,
  `pss_status` int(11) NOT NULL,
  `ss_id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_sign_symptom`
--

INSERT INTO `patient_sign_symptom` (`pss_id`, `p_id`, `p_ss_id`, `par_id`, `pss_created_at`, `pss_created_by`, `pss_updated_at`, `pss_updated_by`, `pss_status`, `ss_id_status`) VALUES
(9317, 170, 18, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9318, 170, 22, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9319, 170, 24, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9320, 170, 26, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9321, 170, 29, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9322, 170, 31, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9323, 170, 32, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9324, 170, 59, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9325, 170, 58, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9326, 170, 55, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9327, 170, 52, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9328, 170, 50, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9329, 170, 47, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9330, 170, 45, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9331, 170, 42, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9332, 170, 40, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9333, 170, 61, 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1, 17),
(9334, 170, 18, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9335, 170, 23, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9336, 170, 24, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9337, 170, 27, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9338, 170, 29, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9339, 170, 31, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9340, 170, 32, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9341, 170, 59, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9342, 170, 58, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9343, 170, 55, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9344, 170, 52, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9345, 170, 50, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9346, 170, 47, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9347, 170, 44, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9348, 170, 41, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9349, 170, 38, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9350, 170, 34, 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1, 17),
(9351, 171, 18, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9352, 171, 23, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9353, 171, 24, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9354, 171, 26, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9355, 171, 28, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9356, 171, 30, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9357, 171, 32, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9358, 171, 59, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9359, 171, 57, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9360, 171, 53, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9361, 171, 52, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9362, 171, 49, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9363, 171, 46, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9364, 171, 43, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9365, 171, 42, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9366, 171, 39, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9367, 171, 35, 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1, 17),
(9368, 170, 18, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9369, 170, 22, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9370, 170, 24, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9371, 170, 26, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9372, 170, 29, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9373, 170, 30, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9374, 170, 33, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9375, 170, 60, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9376, 170, 58, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9377, 170, 54, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9378, 170, 52, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9379, 170, 50, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9380, 170, 48, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9381, 170, 45, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9382, 170, 41, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9383, 170, 40, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9384, 170, 36, 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1, 17),
(9385, 170, 18, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9386, 170, 23, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9387, 170, 25, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9388, 170, 27, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9389, 170, 28, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9390, 170, 31, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9391, 170, 33, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9392, 170, 59, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9393, 170, 58, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9394, 170, 54, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9395, 170, 52, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9396, 170, 50, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9397, 170, 48, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9398, 170, 44, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9399, 170, 41, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9400, 170, 39, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9401, 170, 34, 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 17),
(9402, 171, 18, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 1),
(9403, 171, 20, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 2),
(9404, 171, 24, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 3),
(9405, 171, 26, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 4),
(9406, 171, 29, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 5),
(9407, 171, 30, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 6),
(9408, 171, 33, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 7),
(9409, 171, 60, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 8),
(9410, 171, 57, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 9),
(9411, 171, 56, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 10),
(9412, 171, 52, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 11),
(9413, 171, 50, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 12),
(9414, 171, 46, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 13),
(9415, 171, 43, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 14),
(9416, 171, 41, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 15),
(9417, 171, 39, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 16),
(9418, 171, 34, 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `patient_status_wise_call`
--

CREATE TABLE `patient_status_wise_call` (
  `pswc_id` int(11) NOT NULL,
  `pswc_p_id` int(11) NOT NULL,
  `pswc_par_id` int(11) NOT NULL,
  `pswc_action_status` int(11) NOT NULL,
  `pswc_tel_date` date NOT NULL,
  `pswc_phy_date` date NOT NULL,
  `pswc_created_at` datetime NOT NULL,
  `pswc_created_by` int(11) NOT NULL,
  `pswc_updated_at` datetime NOT NULL,
  `pswc_updated_by` int(11) NOT NULL,
  `pswc_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_status_wise_call`
--

INSERT INTO `patient_status_wise_call` (`pswc_id`, `pswc_p_id`, `pswc_par_id`, `pswc_action_status`, `pswc_tel_date`, `pswc_phy_date`, `pswc_created_at`, `pswc_created_by`, `pswc_updated_at`, `pswc_updated_by`, `pswc_status`) VALUES
(1, 10, 41, 0, '2021-09-11', '2021-11-11', '2021-08-11 13:38:00', 4, '0000-00-00 00:00:00', 0, 1),
(2, 107, 281, 0, '2021-09-02', '2021-10-12', '2021-08-12 11:23:00', 4, '0000-00-00 00:00:00', 0, 1),
(3, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(4, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(5, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(6, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(7, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(8, 108, 0, 0, '2021-04-04', '2021-05-04', '2021-08-12 13:34:00', 1, '0000-00-00 00:00:00', 0, 1),
(9, 108, 288, 0, '2021-09-02', '2021-10-12', '2021-08-12 13:50:00', 4, '0000-00-00 00:00:00', 0, 1),
(10, 107, 289, 0, '2021-07-12', '2021-09-12', '2021-08-12 14:53:00', 4, '0000-00-00 00:00:00', 0, 1),
(11, 110, 290, 0, '2020-04-06', '2020-05-01', '2021-08-16 10:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(12, 110, 291, 0, '2021-07-06', '2021-09-10', '2021-08-16 10:51:00', 4, '0000-00-00 00:00:00', 0, 1),
(13, 109, 292, 0, '2020-03-02', '2020-04-16', '2021-08-16 11:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(14, 109, 293, 0, '2021-08-16', '2021-09-16', '2021-08-16 11:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(15, 111, 0, 0, '0000-00-00', '2021-05-28', '2021-08-16 14:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(16, 111, 0, 0, '0000-00-00', '2021-05-28', '2021-08-16 14:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(17, 111, 0, 0, '0000-00-00', '2021-05-28', '2021-08-16 14:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(18, 111, 0, 0, '0000-00-00', '2021-05-28', '2021-08-16 14:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(19, 111, 298, 0, '2021-05-06', '2021-06-16', '2021-08-16 14:29:00', 4, '0000-00-00 00:00:00', 0, 1),
(20, 112, 0, 0, '2021-07-06', '2021-09-16', '2021-08-16 17:11:00', 1, '0000-00-00 00:00:00', 0, 1),
(21, 112, 300, 0, '2020-01-01', '2020-03-05', '2021-08-16 17:29:00', 4, '0000-00-00 00:00:00', 0, 1),
(22, 112, 301, 0, '2021-02-20', '2021-04-01', '2021-08-16 17:54:00', 4, '0000-00-00 00:00:00', 0, 1),
(23, 78, 302, 0, '2021-09-07', '2021-10-17', '2021-08-17 11:16:00', 4, '0000-00-00 00:00:00', 0, 1),
(24, 113, 0, 0, '2020-11-07', '2021-01-17', '2021-08-17 15:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(25, 113, 0, 0, '2020-11-07', '2021-01-17', '2021-08-17 15:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(26, 113, 0, 0, '2020-11-07', '2021-01-17', '2021-08-17 15:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(27, 113, 0, 0, '2020-11-07', '2021-01-17', '2021-08-17 15:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(28, 113, 308, 0, '2021-08-17', '2021-10-17', '2021-08-17 16:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(29, 113, 309, 0, '2021-09-17', '2021-11-17', '2021-08-17 16:56:00', 4, '0000-00-00 00:00:00', 0, 1),
(30, 114, 310, 0, '2019-10-25', '2019-11-25', '2021-08-17 17:38:00', 4, '0000-00-00 00:00:00', 0, 1),
(31, 114, 311, 0, '2021-09-17', '2021-11-17', '2021-08-17 17:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(32, 115, 312, 0, '2017-02-17', '2017-03-18', '2021-08-18 11:18:00', 4, '0000-00-00 00:00:00', 0, 1),
(33, 115, 313, 0, '2018-03-27', '2018-04-27', '2021-08-18 13:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(34, 115, 314, 0, '2019-02-16', '2019-03-18', '2021-08-18 13:19:00', 4, '0000-00-00 00:00:00', 0, 1),
(35, 115, 315, 0, '2020-12-18', '2021-02-18', '2021-08-18 13:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(36, 115, 316, 0, '2021-09-18', '2021-11-18', '2021-08-18 13:45:00', 4, '0000-00-00 00:00:00', 0, 1),
(37, 116, 317, 0, '2020-03-17', '2020-04-18', '2021-08-18 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(38, 116, 318, 0, '2020-12-21', '2021-02-18', '2021-08-18 15:39:00', 4, '0000-00-00 00:00:00', 0, 1),
(39, 116, 319, 0, '2021-09-18', '2021-11-18', '2021-08-18 15:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(40, 117, 320, 0, '2020-03-24', '2020-04-18', '2021-08-18 16:49:00', 4, '0000-00-00 00:00:00', 0, 1),
(41, 117, 321, 0, '2020-09-01', '2020-10-18', '2021-08-18 18:26:00', 4, '0000-00-00 00:00:00', 0, 1),
(42, 117, 322, 0, '2020-11-01', '2020-12-18', '2021-08-19 10:22:00', 4, '0000-00-00 00:00:00', 0, 1),
(43, 117, 323, 0, '2021-09-02', '2021-09-19', '2021-08-19 11:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(44, 22, 280, 0, '2021-08-27', '2021-09-03', '2021-08-21 09:11:00', 4, '0000-00-00 00:00:00', 0, 1),
(45, 120, 326, 0, '2021-09-12', '2021-10-22', '2021-08-22 13:29:00', 4, '0000-00-00 00:00:00', 0, 1),
(46, 121, 0, 0, '2021-09-12', '2021-10-22', '2021-08-22 17:18:00', 1, '0000-00-00 00:00:00', 0, 1),
(47, 122, 0, 0, '0000-00-00', '2021-11-23', '2021-08-30 17:52:00', 1, '0000-00-00 00:00:00', 0, 1),
(48, 106, 0, 0, '2021-09-24', '2021-11-24', '2021-08-24 14:41:00', 1, '0000-00-00 00:00:00', 0, 1),
(49, 106, 0, 0, '2021-09-24', '2021-11-24', '2021-08-24 14:41:00', 1, '0000-00-00 00:00:00', 0, 1),
(50, 123, 331, 0, '2021-05-08', '2021-05-25', '2021-08-25 13:53:00', 4, '0000-00-00 00:00:00', 0, 1),
(51, 123, 332, 0, '2021-09-25', '2021-11-25', '2021-08-25 14:14:00', 4, '0000-00-00 00:00:00', 0, 1),
(52, 124, 333, 0, '2020-04-15', '2020-05-25', '2021-08-25 16:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(53, 124, 334, 0, '2020-05-15', '2020-06-25', '2021-08-25 17:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(54, 124, 335, 0, '2021-09-25', '2021-11-25', '2021-08-25 17:27:00', 4, '0000-00-00 00:00:00', 0, 1),
(55, 119, 336, 0, '2021-09-20', '2021-10-30', '2021-08-30 16:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(56, 125, 337, 0, '2021-09-21', '2021-10-31', '2021-08-31 13:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(57, 126, 338, 0, '2021-09-21', '2021-10-31', '2021-08-31 15:18:00', 4, '0000-00-00 00:00:00', 0, 1),
(58, 127, 340, 0, '2021-10-01', '2021-12-01', '2021-08-31 16:13:00', 4, '0000-00-00 00:00:00', 0, 1),
(59, 128, 341, 0, '2021-09-21', '2021-10-31', '2021-08-31 17:13:00', 4, '0000-00-00 00:00:00', 0, 1),
(60, 129, 342, 0, '2021-09-21', '2021-10-31', '2021-08-31 17:43:00', 4, '0000-00-00 00:00:00', 0, 1),
(61, 130, 343, 0, '2020-11-22', '2020-12-25', '2021-09-01 10:14:00', 4, '0000-00-00 00:00:00', 0, 1),
(62, 130, 344, 0, '2021-09-22', '2021-11-01', '2021-09-01 10:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(63, 131, 0, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:28:00', 1, '0000-00-00 00:00:00', 0, 1),
(64, 131, 0, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:28:00', 1, '0000-00-00 00:00:00', 0, 1),
(65, 131, 0, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:28:00', 1, '0000-00-00 00:00:00', 0, 1),
(66, 131, 0, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:28:00', 1, '0000-00-00 00:00:00', 0, 1),
(67, 132, 349, 0, '2021-09-18', '2021-10-04', '2021-09-04 13:16:00', 4, '0000-00-00 00:00:00', 0, 1),
(68, 133, 350, 0, '2021-09-25', '2021-11-04', '2021-09-04 15:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(69, 134, 351, 0, '2021-09-25', '2021-11-04', '2021-09-05 10:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(70, 135, 352, 0, '2021-09-19', '2021-10-05', '2021-09-05 11:44:00', 4, '0000-00-00 00:00:00', 0, 1),
(71, 136, 353, 0, '2021-10-05', '2021-12-05', '2021-09-05 13:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(72, 137, 354, 0, '2021-10-05', '2021-12-05', '2021-09-05 14:04:00', 4, '0000-00-00 00:00:00', 0, 1),
(73, 138, 355, 0, '2021-09-26', '2021-11-05', '2021-09-05 15:45:00', 4, '0000-00-00 00:00:00', 0, 1),
(74, 139, 356, 0, '2021-10-05', '2021-12-05', '2021-09-05 16:51:00', 4, '0000-00-00 00:00:00', 0, 1),
(75, 140, 357, 0, '2021-09-26', '2021-11-05', '2021-09-06 10:09:00', 4, '0000-00-00 00:00:00', 0, 1),
(76, 141, 0, 0, '0000-00-00', '2021-04-06', '2021-09-06 10:57:00', 1, '0000-00-00 00:00:00', 0, 1),
(77, 141, 0, 0, '0000-00-00', '2021-04-06', '2021-09-06 10:57:00', 1, '0000-00-00 00:00:00', 0, 1),
(78, 141, 360, 0, '2021-08-06', '2021-10-06', '2021-09-06 11:41:00', 4, '0000-00-00 00:00:00', 0, 1),
(79, 142, 361, 0, '2020-12-27', '2021-02-06', '2021-09-06 12:29:00', 4, '0000-00-00 00:00:00', 0, 1),
(80, 142, 362, 0, '2021-02-06', '2021-04-06', '2021-09-06 13:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(81, 142, 363, 0, '2021-03-27', '2021-04-06', '2021-09-06 13:15:00', 4, '0000-00-00 00:00:00', 0, 1),
(82, 142, 364, 0, '2021-10-06', '2021-12-06', '2021-09-06 13:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(83, 143, 365, 0, '2021-05-27', '2021-07-06', '2021-09-06 15:26:00', 4, '0000-00-00 00:00:00', 0, 1),
(84, 143, 366, 0, '2021-07-06', '2021-09-06', '2021-09-06 15:58:00', 4, '0000-00-00 00:00:00', 0, 1),
(85, 144, 367, 0, '2021-10-06', '2021-12-06', '2021-09-06 16:44:00', 4, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_status_wise_physical_call`
--

CREATE TABLE `patient_status_wise_physical_call` (
  `pswpc_id` int(11) NOT NULL,
  `pswpc_p_id` int(11) NOT NULL,
  `pswpc_par_id` int(11) NOT NULL,
  `pswpc_phy_date` date NOT NULL,
  `pswpc_created_at` datetime NOT NULL,
  `pswpc_created_by` int(11) NOT NULL,
  `pswpc_updated_at` datetime NOT NULL,
  `pswpc_updated_by` int(11) NOT NULL,
  `pswpc_status` int(11) NOT NULL,
  `pswpc_remark` int(11) NOT NULL COMMENT '0=default\r\n1=approved\r\n2=new schedule added\r\n4=death'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_status_wise_physical_call`
--

INSERT INTO `patient_status_wise_physical_call` (`pswpc_id`, `pswpc_p_id`, `pswpc_par_id`, `pswpc_phy_date`, `pswpc_created_at`, `pswpc_created_by`, `pswpc_updated_at`, `pswpc_updated_by`, `pswpc_status`, `pswpc_remark`) VALUES
(99, 170, 468, '1970-01-01', '2021-10-01 16:23:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(100, 170, 469, '1970-01-01', '2021-10-04 12:04:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(101, 171, 470, '1970-01-01', '2021-10-04 12:06:00', 1, '2021-10-04 15:27:00', 1, 5, 0),
(102, 170, 471, '1970-01-01', '2021-10-04 12:24:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(103, 170, 472, '1970-01-01', '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 0),
(104, 171, 473, '1970-01-01', '2021-10-04 12:29:00', 1, '2021-10-04 15:27:00', 1, 5, 0),
(105, 171, 474, '1970-01-01', '2021-10-04 15:27:00', 1, '0000-00-00 00:00:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_status_wise_telephone_call`
--

CREATE TABLE `patient_status_wise_telephone_call` (
  `pswtc_id` int(11) NOT NULL,
  `pswtc_p_id` int(11) NOT NULL,
  `pswtc_par_id` int(11) NOT NULL,
  `pswtc_tel_date` date NOT NULL,
  `pswtc_created_at` datetime NOT NULL,
  `pswtc_created_by` int(11) NOT NULL,
  `pswtc_updated_at` datetime NOT NULL,
  `pswtc_updated_by` int(11) NOT NULL,
  `pswtc_status` int(11) NOT NULL,
  `pswtc_remark` int(11) NOT NULL COMMENT '0=default\r\n1=busy\r\n2=no response\r\n3= call done\r\n4=death\r\n5=prescribed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_status_wise_telephone_call`
--

INSERT INTO `patient_status_wise_telephone_call` (`pswtc_id`, `pswtc_p_id`, `pswtc_par_id`, `pswtc_tel_date`, `pswtc_created_at`, `pswtc_created_by`, `pswtc_updated_at`, `pswtc_updated_by`, `pswtc_status`, `pswtc_remark`) VALUES
(109, 170, 468, '0000-00-00', '2021-10-01 16:23:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(110, 170, 469, '0000-00-00', '2021-10-04 12:04:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(111, 171, 470, '0000-00-00', '2021-10-04 12:06:00', 1, '2021-10-04 15:27:00', 1, 5, 0),
(112, 170, 471, '0000-00-00', '2021-10-04 12:24:00', 1, '2021-10-04 12:26:00', 1, 5, 0),
(113, 170, 472, '0000-00-00', '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1, 0),
(114, 171, 473, '0000-00-00', '2021-10-04 12:29:00', 1, '2021-10-04 15:27:00', 1, 5, 0),
(115, 171, 474, '0000-00-00', '2021-10-04 15:27:00', 1, '0000-00-00 00:00:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_stress_test`
--

CREATE TABLE `patient_stress_test` (
  `pst_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pst_date` date NOT NULL,
  `pst_involved_regions` varchar(255) NOT NULL,
  `pst_involved_coronary` varchar(255) NOT NULL,
  `pst_viable` varchar(255) NOT NULL,
  `pst_nonviable` varchar(255) NOT NULL,
  `pst_ischemia` varchar(255) NOT NULL,
  `pst_arrhythmias` varchar(255) NOT NULL,
  `pst_thr_achieved` varchar(255) NOT NULL,
  `pst_rest_rwma` varchar(255) NOT NULL,
  `pst_rest_e_dash` varchar(255) NOT NULL,
  `pst_rest_e_by_e_dash` varchar(255) NOT NULL,
  `pst_rest_lvot` varchar(255) NOT NULL,
  `pst_rest_mr` varchar(255) NOT NULL,
  `pst_rest_stroke_volume` varchar(255) NOT NULL,
  `pst_rest_spap` varchar(255) NOT NULL,
  `pst_after_rwma` varchar(255) NOT NULL,
  `pst_after_e_dash` varchar(255) NOT NULL,
  `pst_after_e_by_e_dash` varchar(255) NOT NULL,
  `pst_after_lvot` varchar(255) NOT NULL,
  `pst_after_mr` varchar(255) NOT NULL,
  `pst_after_stroke_volume` varchar(255) NOT NULL,
  `pst_after_spap` varchar(255) NOT NULL,
  `pst_created_at` datetime NOT NULL,
  `pst_created_by` int(11) NOT NULL,
  `pst_updated_at` datetime NOT NULL,
  `pst_updated_by` int(11) NOT NULL,
  `pst_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_s_creatinine`
--

CREATE TABLE `patient_s_creatinine` (
  `psc_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `psc_date` date NOT NULL,
  `psc_egfr_g1` varchar(255) NOT NULL,
  `psc_egfr_g2` varchar(255) NOT NULL,
  `psc_egfr_g3` varchar(255) NOT NULL,
  `psc_egfr_g4` varchar(255) NOT NULL,
  `psc_egfr_g5` varchar(255) NOT NULL,
  `psc_value` varchar(255) NOT NULL,
  `psc_created_at` datetime NOT NULL,
  `psc_created_by` int(11) NOT NULL,
  `psc_updated_at` datetime NOT NULL,
  `psc_updated_by` int(11) NOT NULL,
  `psc_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_s_electrolytes`
--

CREATE TABLE `patient_s_electrolytes` (
  `pse_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pse_date` date NOT NULL,
  `pse_sodium` varchar(255) NOT NULL,
  `pse_potassium` varchar(255) NOT NULL,
  `pse_created_at` datetime NOT NULL,
  `pse_created_by` int(11) NOT NULL,
  `pse_updated_at` datetime NOT NULL,
  `pse_updated_by` int(11) NOT NULL,
  `pse_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_t3`
--

CREATE TABLE `patient_t3` (
  `pt3_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pt3_date` date NOT NULL,
  `pt3_value` varchar(255) NOT NULL,
  `pt3_created_at` datetime NOT NULL,
  `pt3_created_by` int(11) NOT NULL,
  `pt3_updated_at` datetime NOT NULL,
  `pt3_updated_by` int(11) NOT NULL,
  `pt3_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_t4`
--

CREATE TABLE `patient_t4` (
  `pt4_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pt4_date` date NOT NULL,
  `pt4_value` varchar(255) NOT NULL,
  `pt4_created_at` datetime NOT NULL,
  `pt4_created_by` int(11) NOT NULL,
  `pt4_updated_at` datetime NOT NULL,
  `pt4_updated_by` int(11) NOT NULL,
  `pt4_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_tsh`
--

CREATE TABLE `patient_tsh` (
  `ptsh_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ptsh_date` date NOT NULL,
  `ptsh_value` varchar(255) NOT NULL,
  `ptsh_created_at` datetime NOT NULL,
  `ptsh_created_by` int(11) NOT NULL,
  `ptsh_updated_at` datetime NOT NULL,
  `ptsh_updated_by` int(11) NOT NULL,
  `ptsh_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_uric_acid`
--

CREATE TABLE `patient_uric_acid` (
  `pua_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pua_date` date NOT NULL,
  `pua_value` varchar(255) NOT NULL,
  `pua_created_at` datetime NOT NULL,
  `pua_created_by` int(11) NOT NULL,
  `pua_updated_at` datetime NOT NULL,
  `pua_updated_by` int(11) NOT NULL,
  `pua_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_vaccination`
--

CREATE TABLE `patient_vaccination` (
  `pv_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `vc_id` int(11) NOT NULL,
  `pv_created_at` datetime NOT NULL,
  `pv_created_by` int(11) NOT NULL,
  `pv_updated_at` datetime NOT NULL,
  `pv_updated_by` int(11) NOT NULL,
  `pv_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_vitamind3`
--

CREATE TABLE `patient_vitamind3` (
  `pvd3_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pvd3_date` date NOT NULL,
  `pvd3_value` varchar(255) NOT NULL,
  `pvd3_created_at` datetime NOT NULL,
  `pvd3_created_by` int(11) NOT NULL,
  `pvd3_updated_at` datetime NOT NULL,
  `pvd3_updated_by` int(11) NOT NULL,
  `pvd3_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_weight_machine`
--

CREATE TABLE `patient_weight_machine` (
  `pwm_id` int(11) NOT NULL,
  `pwm_pswtc_id` int(11) NOT NULL,
  `pwm_has_machine` varchar(255) NOT NULL DEFAULT '-1',
  `pwm_has_regular_weight_check` varchar(255) NOT NULL DEFAULT '-1',
  `pwm_previous_weight` varchar(5000) NOT NULL,
  `pwm_current_weight` varchar(5000) NOT NULL,
  `pwm_created_at` datetime NOT NULL,
  `pwm_created_by` int(11) NOT NULL,
  `pwm_updated_at` datetime NOT NULL,
  `pwm_updated_by` int(11) NOT NULL,
  `pwm_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_weight_machine`
--

INSERT INTO `patient_weight_machine` (`pwm_id`, `pwm_pswtc_id`, `pwm_has_machine`, `pwm_has_regular_weight_check`, `pwm_previous_weight`, `pwm_current_weight`, `pwm_created_at`, `pwm_created_by`, `pwm_updated_at`, `pwm_updated_by`, `pwm_status`) VALUES
(2, 24, 'Yes', 'No', '963', '', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(3, 28, '-1', '-1', '', '', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `physical_examination`
--

CREATE TABLE `physical_examination` (
  `pe_id` int(11) NOT NULL,
  `pe_p_id` int(11) NOT NULL,
  `pe_weight` varchar(11) NOT NULL,
  `pe_condition` varchar(255) NOT NULL,
  `pe_anemia` varchar(255) NOT NULL,
  `pe_jaundice` varchar(255) NOT NULL,
  `pe_cyanosis` varchar(255) NOT NULL,
  `pe_edema` varchar(255) NOT NULL,
  `pe_jvp` varchar(255) NOT NULL,
  `pe_pulse` varchar(255) NOT NULL,
  `pe_bp` varchar(255) NOT NULL,
  `pe_bp_condition` varchar(255) NOT NULL,
  `pe_heart_murmur_status` varchar(255) NOT NULL,
  `pe_heart` varchar(255) NOT NULL,
  `pe_lungs` varchar(255) NOT NULL,
  `par_id` int(11) NOT NULL,
  `pe_created_at` datetime NOT NULL,
  `pe_created_by` int(11) NOT NULL,
  `pe_updated_at` datetime NOT NULL,
  `pe_updated_by` int(11) NOT NULL,
  `pe_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physical_examination`
--

INSERT INTO `physical_examination` (`pe_id`, `pe_p_id`, `pe_weight`, `pe_condition`, `pe_anemia`, `pe_jaundice`, `pe_cyanosis`, `pe_edema`, `pe_jvp`, `pe_pulse`, `pe_bp`, `pe_bp_condition`, `pe_heart_murmur_status`, `pe_heart`, `pe_lungs`, `par_id`, `pe_created_at`, `pe_created_by`, `pe_updated_at`, `pe_updated_by`, `pe_status`) VALUES
(466, 170, '343', '', 'Present', 'Present', 'Yes', 'G-II', 'G-II', '34', '3434', 'Sub-Normal', 'No', '', '343', 468, '2021-10-01 16:21:00', 1, '0000-00-00 00:00:00', 0, 1),
(467, 170, '234', '', 'Present', 'Present', 'Yes', 'G-0', 'G-I', '2342', '2342', 'Normal', 'No', '', '234', 469, '2021-10-04 12:04:00', 1, '0000-00-00 00:00:00', 0, 1),
(468, 171, '345', '', 'Present', 'Present', 'No', 'G-I', 'G-0', '345', '345', 'Normal', 'Yes', '', '345345', 470, '2021-10-04 12:06:00', 1, '0000-00-00 00:00:00', 0, 1),
(469, 170, '3453', '', 'Present', 'Absent', 'No', 'G-I', 'G-II', '3453', '5345', 'Normal', 'Yes', '', '34534', 471, '2021-10-04 12:24:00', 1, '0000-00-00 00:00:00', 0, 1),
(470, 170, '34534', '', 'Present', 'Present', 'No', 'G-0', 'G-0', '345', '3453', 'Normal', 'Yes', '', '43', 472, '2021-10-04 12:26:00', 1, '0000-00-00 00:00:00', 0, 1),
(471, 171, '345', '', 'Present', 'Present', 'Yes', 'G-0', 'G-II', '3453', '345', 'Normal', 'Yes', '', '3453', 473, '2021-10-04 12:28:00', 1, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicine`
--

CREATE TABLE `prescription_medicine` (
  `prm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `prm_time` varchar(255) NOT NULL,
  `prm_rules` varchar(255) NOT NULL,
  `par_id` int(11) NOT NULL,
  `prm_created_at` datetime NOT NULL,
  `prm_created_by` int(11) NOT NULL,
  `prm_updated_at` datetime DEFAULT NULL,
  `prm_updated_by` int(11) NOT NULL,
  `prm_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_rules`
--

CREATE TABLE `prescription_rules` (
  `pr_id` int(11) NOT NULL,
  `pr_title` varchar(255) NOT NULL,
  `pr_created_at` datetime NOT NULL,
  `pr_created_by` int(11) NOT NULL,
  `pr_updated_at` datetime NOT NULL,
  `pr_updated_by` int(11) NOT NULL,
  `pr_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription_rules`
--

INSERT INTO `prescription_rules` (`pr_id`, `pr_title`, `pr_created_at`, `pr_created_by`, `pr_updated_at`, `pr_updated_by`, `pr_status`) VALUES
(1, 'ভাতে বাড়তি লবণ খাবেন না', '2021-04-21 11:02:00', 1, '2021-04-21 11:08:00', 1, 1),
(2, 'অপ্রয়োজনে খাবার স্যালাইন খাবেন না ', '2021-04-21 11:02:00', 1, '0000-00-00 00:00:00', 0, 1),
(3, 'বোরহানি লবণ বা মিষ্টি পানি খাবেন না', '2021-04-21 11:02:00', 1, '0000-00-00 00:00:00', 0, 1),
(4, 'চিপস চানাচুর পনির খাবেন না ', '2021-04-21 11:02:00', 1, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pulmonary`
--

CREATE TABLE `pulmonary` (
  `pm_id` int(11) NOT NULL,
  `pm_title` varchar(255) NOT NULL,
  `pm_created_at` datetime NOT NULL,
  `pm_created_by` int(11) NOT NULL,
  `pm_updated_at` datetime NOT NULL,
  `pm_updated_by` int(11) NOT NULL,
  `pm_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pulmonary`
--

INSERT INTO `pulmonary` (`pm_id`, `pm_title`, `pm_created_at`, `pm_created_by`, `pm_updated_at`, `pm_updated_by`, `pm_status`) VALUES
(3, 'test1', '2021-03-16 18:43:00', 2, '2021-03-16 18:43:00', 2, 0),
(4, 'CorPulmonale Secondary to COPD', '2021-03-20 11:17:00', 2, '2021-06-23 16:11:00', 2, 1),
(5, 'Pulmonary Hypertension', '2021-03-20 11:17:00', 2, '2021-06-23 16:11:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recent_hospitalization`
--

CREATE TABLE `recent_hospitalization` (
  `rh_id` int(11) NOT NULL,
  `rh_title` varchar(255) NOT NULL,
  `rh_child` bigint(20) NOT NULL COMMENT 'parent_id',
  `rh_created_at` datetime NOT NULL,
  `rh_created_by` int(11) NOT NULL,
  `rh_updated_at` datetime NOT NULL,
  `rh_updated_by` int(11) NOT NULL,
  `rh_status` int(11) NOT NULL COMMENT '0=deleted row\r\n1=active parent\r\n2=active=child'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recent_hospitalization`
--

INSERT INTO `recent_hospitalization` (`rh_id`, `rh_title`, `rh_child`, `rh_created_at`, `rh_created_by`, `rh_updated_at`, `rh_updated_by`, `rh_status`) VALUES
(18, 'tacd', 17, '2021-03-16 18:44:00', 2, '2021-03-16 18:44:00', 2, 2),
(19, ' History of Hospitalization for Heart Failure', 0, '2021-03-20 11:22:00', 2, '2021-06-24 12:33:00', 2, 1),
(20, 'Yes', 19, '2021-03-20 11:22:00', 2, '2021-06-23 16:15:00', 2, 2),
(21, 'No', 19, '2021-03-20 11:22:00', 2, '2021-06-23 16:15:00', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `recommended_device`
--

CREATE TABLE `recommended_device` (
  `rd_id` int(11) NOT NULL,
  `rd_p_id` int(11) NOT NULL,
  `rd_device_id` int(11) NOT NULL,
  `rd_par_id` int(11) NOT NULL,
  `rd_active_status` int(11) NOT NULL COMMENT 'for device reporting purpose ',
  `rd_created_at` datetime NOT NULL,
  `rd_created_by` int(11) NOT NULL,
  `rd_updated_at` datetime NOT NULL,
  `rd_updated_by` int(11) NOT NULL,
  `rd_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_vaccine`
--

CREATE TABLE `recommended_vaccine` (
  `rv_id` int(11) NOT NULL,
  `rv_p_id` int(11) NOT NULL,
  `rv_vaccine_id` int(11) NOT NULL,
  `rv_par_id` int(11) NOT NULL,
  `rv_created_at` datetime NOT NULL,
  `rv_created_by` int(11) NOT NULL,
  `rv_updated_at` datetime NOT NULL,
  `rv_updated_by` int(11) NOT NULL,
  `rv_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `risk_assesment`
--

CREATE TABLE `risk_assesment` (
  `ra_id` int(11) NOT NULL,
  `ra_title` varchar(255) NOT NULL,
  `ra_child` int(11) NOT NULL COMMENT 'parent_id',
  `ra_created_at` datetime NOT NULL,
  `ra_created_by` int(11) NOT NULL,
  `ra_updated_at` datetime NOT NULL,
  `ra_updated_by` int(11) NOT NULL,
  `ra_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row\r\n2= actie child'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `risk_assesment`
--

INSERT INTO `risk_assesment` (`ra_id`, `ra_title`, `ra_child`, `ra_created_at`, `ra_created_by`, `ra_updated_at`, `ra_updated_by`, `ra_status`) VALUES
(2, 'test1', 0, '2021-03-16 18:43:00', 2, '2021-03-16 18:43:00', 2, 0),
(3, 'Documented Episode of VT/VF', 0, '2021-03-20 11:18:00', 2, '2021-06-23 16:12:00', 2, 1),
(4, 'History of Syncope / Pre-syncope', 0, '2021-03-20 11:18:00', 2, '2021-08-10 17:04:00', 2, 1),
(5, 'Frequency of episodes', 0, '2021-03-20 11:19:00', 2, '2021-08-10 17:04:00', 2, 1),
(6, 'Documented Number of PVCS', 0, '2021-03-20 11:19:00', 2, '2021-08-10 17:05:00', 2, 1),
(7, ' Documented NSVT', 0, '2021-03-20 11:19:00', 2, '0000-00-00 00:00:00', 0, 1),
(8, 'Documented NSVT', 0, '2021-03-20 11:19:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `risk_factor`
--

CREATE TABLE `risk_factor` (
  `rf_id` int(11) NOT NULL,
  `rf_title` varchar(255) NOT NULL,
  `rf_child` int(11) NOT NULL COMMENT '0=no child\r\nanother=parent ID',
  `rf_created_at` datetime NOT NULL,
  `rf_created_by` int(11) NOT NULL,
  `rf_updated_at` datetime NOT NULL,
  `rf_updated_by` int(11) NOT NULL,
  `rf_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row\r\n2=active child'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `risk_factor`
--

INSERT INTO `risk_factor` (`rf_id`, `rf_title`, `rf_child`, `rf_created_at`, `rf_created_by`, `rf_updated_at`, `rf_updated_by`, `rf_status`) VALUES
(15, 'HTN', 0, '2021-03-20 10:48:00', 2, '2021-06-21 15:14:00', 1, 1),
(16, 'DM Type', 1, '2021-03-20 10:48:00', 2, '2021-06-21 15:16:00', 1, 1),
(17, 'DL', 0, '2021-03-20 10:48:00', 2, '2021-06-21 15:14:00', 1, 1),
(18, 'Positive FH', 0, '2021-03-20 10:48:00', 2, '2021-06-21 15:14:00', 1, 1),
(19, 'Smoking History', 1, '2021-03-20 10:49:00', 2, '2021-08-10 16:33:00', 2, 1),
(20, 'Alcohol', 0, '2021-03-20 10:49:00', 2, '0000-00-00 00:00:00', 0, 1),
(28, '2', 16, '2021-03-23 10:04:00', 2, '2021-06-21 15:13:00', 1, 2),
(29, '1', 16, '2021-03-23 10:04:00', 2, '2021-06-21 15:13:00', 1, 2),
(30, 'Smoker', 19, '2021-03-23 10:05:00', 2, '2021-08-10 16:31:00', 2, 2),
(31, 'Non -Smoker', 19, '2021-03-23 10:05:00', 2, '2021-08-10 16:29:00', 2, 2),
(32, 'Ex Smoker', 19, '2021-03-23 10:05:00', 2, '2021-06-23 16:04:00', 2, 2),
(34, 'Thyroidysfunction', 1, '2021-09-06 18:07:00', 2, '0000-00-00 00:00:00', 0, 1),
(35, 'Hypothyroidism', 34, '2021-09-06 18:08:00', 2, '0000-00-00 00:00:00', 0, 2),
(36, 'Hyperthyroidism', 34, '2021-09-06 18:08:00', 2, '0000-00-00 00:00:00', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `signs_symptoms`
--

CREATE TABLE `signs_symptoms` (
  `ss_id` int(11) NOT NULL,
  `ss_title` varchar(255) NOT NULL,
  `ss_child` varchar(255) NOT NULL,
  `ss_created_at` datetime NOT NULL,
  `ss_created_by` int(11) NOT NULL,
  `ss_updated_at` datetime NOT NULL,
  `ss_updated_by` int(11) NOT NULL,
  `ss_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signs_symptoms`
--

INSERT INTO `signs_symptoms` (`ss_id`, `ss_title`, `ss_child`, `ss_created_at`, `ss_created_by`, `ss_updated_at`, `ss_updated_by`, `ss_status`) VALUES
(1, 'Exertional SOB', '', '2021-04-20 12:28:00', 2, '0000-00-00 00:00:00', 0, 1),
(2, 'NYHA Classification', '', '2021-04-20 12:33:00', 2, '0000-00-00 00:00:00', 0, 1),
(3, 'Orthopnoea', '', '2021-04-20 12:34:00', 2, '2021-08-10 17:12:00', 2, 1),
(4, 'PND', '', '2021-04-20 12:34:00', 2, '0000-00-00 00:00:00', 0, 1),
(5, 'Exertional Chest Pain', '', '2021-04-20 12:34:00', 2, '2021-08-10 17:12:00', 2, 1),
(6, 'Palpitation', '', '2021-04-20 12:35:00', 2, '0000-00-00 00:00:00', 0, 1),
(7, 'Fatigue', '', '2021-04-20 12:35:00', 2, '0000-00-00 00:00:00', 0, 1),
(8, 'Dizziness', '', '2021-04-20 12:35:00', 2, '0000-00-00 00:00:00', 0, 1),
(9, 'Syncope/Presyncope', '', '2021-04-20 12:35:00', 2, '2021-08-10 17:13:00', 2, 1),
(10, 'QOL Minnesota Score', '', '2021-04-20 12:35:00', 2, '2021-09-06 18:10:00', 2, 1),
(11, 'Leg Swelling', '', '2021-04-20 12:35:00', 2, '0000-00-00 00:00:00', 0, 1),
(12, 'Sleep Disturbance', '', '2021-04-20 12:36:00', 2, '0000-00-00 00:00:00', 0, 1),
(13, 'Appetite', '', '2021-04-20 12:36:00', 2, '0000-00-00 00:00:00', 0, 1),
(14, 'Bowel Habit', '', '2021-04-20 12:36:00', 2, '0000-00-00 00:00:00', 0, 1),
(15, 'Sexual Activities:', '', '2021-04-20 12:36:00', 2, '0000-00-00 00:00:00', 0, 1),
(16, 'Mental Status', '', '2021-04-20 12:36:00', 2, '0000-00-00 00:00:00', 0, 1),
(17, 'Psychological Status', '', '2021-04-20 12:36:00', 2, '2021-04-20 15:22:00', 1, 1),
(18, 'Present', '1', '2021-04-20 14:16:00', 1, '0000-00-00 00:00:00', 0, 2),
(19, 'Absent', '1', '2021-04-20 14:23:00', 1, '0000-00-00 00:00:00', 0, 2),
(20, 'I', '2', '2021-04-20 14:28:00', 1, '0000-00-00 00:00:00', 0, 2),
(21, 'II', '2', '2021-04-20 14:28:00', 1, '0000-00-00 00:00:00', 0, 2),
(22, 'III', '2', '2021-04-20 14:29:00', 1, '0000-00-00 00:00:00', 0, 2),
(23, 'IV', '2', '2021-04-20 14:29:00', 1, '2021-06-23 16:15:00', 2, 2),
(24, 'Yes', '3', '2021-04-20 14:29:00', 1, '0000-00-00 00:00:00', 0, 2),
(25, 'No', '3', '2021-04-20 14:29:00', 1, '0000-00-00 00:00:00', 0, 2),
(26, 'Yes', '4', '2021-04-20 14:29:00', 1, '0000-00-00 00:00:00', 0, 2),
(27, 'No', '4', '2021-04-20 14:29:00', 1, '0000-00-00 00:00:00', 0, 2),
(28, 'Present', '5', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(29, 'Absent', '5', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(30, 'Present', '6', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(31, 'Absent', '6', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(32, 'Present', '7', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(33, 'Absent', '7', '2021-04-20 14:30:00', 1, '0000-00-00 00:00:00', 0, 2),
(34, 'Depression ', '17', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(35, 'Anxiety', '17', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(36, 'Loss of memory', '17', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(37, 'Anger', '17', '2021-04-20 14:31:00', 1, '2021-04-20 15:22:00', 1, 2),
(38, 'Alert ', '16', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(39, 'Confused', '16', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(40, 'Drowsy', '16', '2021-04-20 14:31:00', 1, '0000-00-00 00:00:00', 0, 2),
(41, 'Normal ', '15', '2021-04-20 14:32:00', 1, '0000-00-00 00:00:00', 0, 2),
(42, 'Hampered', '15', '2021-04-20 14:32:00', 1, '0000-00-00 00:00:00', 0, 2),
(43, 'Normal ', '14', '2021-04-20 14:33:00', 1, '0000-00-00 00:00:00', 0, 2),
(44, 'Diarrhea ', '14', '2021-04-20 14:33:00', 1, '0000-00-00 00:00:00', 0, 2),
(45, 'Constipation', '14', '2021-04-20 14:33:00', 1, '0000-00-00 00:00:00', 0, 2),
(46, 'Poor ', '13', '2021-04-20 14:33:00', 1, '0000-00-00 00:00:00', 0, 2),
(47, 'Fair ', '13', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(48, 'Good', '13', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(49, 'Present ', '12', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(50, 'Absent', '12', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(51, 'Present ', '11', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(52, 'Absent', '11', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(53, 'Poor ', '10', '2021-04-20 14:34:00', 1, '0000-00-00 00:00:00', 0, 2),
(54, 'Medium', '10', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(55, 'Fair ', '10', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(56, 'Good', '10', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(57, 'Yes ', '9', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(58, 'No', '9', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(59, 'Present', '8', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(60, 'Absent', '8', '2021-04-20 14:35:00', 1, '0000-00-00 00:00:00', 0, 2),
(61, 'Normal', '17', '2021-08-10 17:20:00', 2, '0000-00-00 00:00:00', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `treating_cardiologist`
--

CREATE TABLE `treating_cardiologist` (
  `tc_id` int(11) NOT NULL,
  `tc_title` varchar(255) NOT NULL,
  `tc_created_at` datetime NOT NULL,
  `tc_created_by` int(11) NOT NULL,
  `tc_updated_at` datetime DEFAULT NULL,
  `tc_updated_by` int(11) NOT NULL,
  `tc_status` int(11) NOT NULL COMMENT '0=not active\r\n1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treating_cardiologist`
--

INSERT INTO `treating_cardiologist` (`tc_id`, `tc_title`, `tc_created_at`, `tc_created_by`, `tc_updated_at`, `tc_updated_by`, `tc_status`) VALUES
(1, 'Dr. N A M Momenuzzaman', '2021-09-06 18:04:00', 2, NULL, 0, 1),
(2, 'Dr. Afreed Jahan', '2021-09-06 18:05:00', 2, NULL, 0, 1),
(3, 'Dr. Fatema Begum', '2021-09-06 18:05:00', 2, NULL, 0, 1),
(4, 'Dr. Kaisar Nasrullah Khan ', '2021-09-06 18:05:00', 2, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `vc_id` int(11) NOT NULL,
  `vc_title` varchar(255) NOT NULL,
  `vc_created_at` datetime NOT NULL,
  `vc_created_by` int(11) NOT NULL,
  `vc_updated_at` datetime NOT NULL,
  `vc_updated_by` int(11) NOT NULL,
  `vc_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`vc_id`, `vc_title`, `vc_created_at`, `vc_created_by`, `vc_updated_at`, `vc_updated_by`, `vc_status`) VALUES
(7, 'Neumonia', '2021-03-20 10:23:00', 2, '0000-00-00 00:00:00', 0, 0),
(8, 'Influenza', '2021-03-20 10:23:00', 2, '2021-06-23 20:16:00', 2, 1),
(9, 'Covid-19', '2021-03-20 12:28:00', 2, '2021-06-23 16:02:00', 2, 1),
(10, 'Pneumococcal', '2021-05-28 12:09:00', 2, '0000-00-00 00:00:00', 0, 1),
(11, 'Pneumonia', '2021-05-28 12:24:00', 2, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visit_type`
--

CREATE TABLE `visit_type` (
  `vt_id` int(200) NOT NULL,
  `vt_title` varchar(255) NOT NULL,
  `vt_created_at` datetime NOT NULL,
  `vt_created_by` int(11) NOT NULL,
  `vt_updated_at` datetime NOT NULL,
  `vt_updated_by` int(11) NOT NULL,
  `vt_status` int(11) NOT NULL COMMENT '0=Deleted row\r\n1=active row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit_type`
--

INSERT INTO `visit_type` (`vt_id`, `vt_title`, `vt_created_at`, `vt_created_by`, `vt_updated_at`, `vt_updated_by`, `vt_status`) VALUES
(24, 'siddique', '2021-03-16 18:31:00', 2, '2021-03-16 18:32:00', 2, 0),
(25, 'Inpatient', '2021-03-20 10:18:00', 2, '2021-06-22 21:26:00', 1, 1),
(26, 'Outpatient', '2021-03-20 10:18:00', 2, '2021-06-22 21:26:00', 1, 1),
(27, 'absiddique', '2021-03-31 17:54:00', 2, '0000-00-00 00:00:00', 0, 0),
(28, 'monirul', '2021-05-20 13:25:00', 2, '0000-00-00 00:00:00', 0, 0),
(29, 'Virtual', '2021-06-21 15:08:00', 1, '2021-06-22 21:26:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `y_id` int(11) NOT NULL,
  `y_tittle` varchar(250) NOT NULL,
  `y_status` int(11) NOT NULL,
  `y_created_at` datetime NOT NULL,
  `y_created_by` int(11) NOT NULL,
  `y_updated_at` datetime NOT NULL,
  `y_updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`y_id`, `y_tittle`, `y_status`, `y_created_at`, `y_created_by`, `y_updated_at`, `y_updated_by`) VALUES
(1, '2021', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, '2020', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `year_category`
--

CREATE TABLE `year_category` (
  `yc_id` int(11) NOT NULL,
  `yc_terget` varchar(250) NOT NULL,
  `yc_year_id` int(11) NOT NULL,
  `yc_year` varchar(255) NOT NULL,
  `yc_created_by` int(11) NOT NULL,
  `yc_created_at` datetime NOT NULL,
  `yc_updated_by` int(11) NOT NULL,
  `yc_updated_at` datetime NOT NULL,
  `yc_mc_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year_category`
--

INSERT INTO `year_category` (`yc_id`, `yc_terget`, `yc_year_id`, `yc_year`, `yc_created_by`, `yc_created_at`, `yc_updated_by`, `yc_updated_at`, `yc_mc_cat`) VALUES
(1, '10', 1, '2021', 1, '2021-08-10 00:00:00', 1, '0000-00-00 00:00:00', 2),
(2, '95', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, '20', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 3),
(4, '20', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 4),
(5, '31', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 5),
(6, '23', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 6),
(7, '14', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 7),
(8, '20', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 8),
(9, '60', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 9),
(10, '65', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 10),
(11, '63', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 11),
(12, '65', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 12),
(13, '63', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 13),
(14, '52', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 14),
(15, '65', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 15),
(16, '63', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 16),
(17, '55', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 17),
(18, '22', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 18),
(19, '11', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 19),
(20, '22', 0, '2021', 0, '2021-08-10 00:00:00', 0, '0000-00-00 00:00:00', 20),
(21, '10', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 1),
(22, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 2),
(23, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 3),
(24, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 4),
(25, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 5),
(26, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 6),
(27, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 7),
(28, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 8),
(29, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 9),
(30, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 10),
(31, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 11),
(32, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 12),
(33, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 13),
(34, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 14),
(35, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 15),
(36, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 16),
(37, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 17),
(38, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 18),
(39, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 19),
(40, '0', 0, '2020', 0, '2021-08-09 00:00:00', 0, '0000-00-00 00:00:00', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `af_status`
--
ALTER TABLE `af_status`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_rules_if_unavailable`
--
ALTER TABLE `call_rules_if_unavailable`
  ADD PRIMARY KEY (`cru_id`);

--
-- Indexes for table `cardiovascular`
--
ALTER TABLE `cardiovascular`
  ADD PRIMARY KEY (`cv_id`);

--
-- Indexes for table `comorbidities`
--
ALTER TABLE `comorbidities`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `education_level`
--
ALTER TABLE `education_level`
  ADD PRIMARY KEY (`el_id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hf_type`
--
ALTER TABLE `hf_type`
  ADD PRIMARY KEY (`hf_id`);

--
-- Indexes for table `major_adverse_cardiac_events`
--
ALTER TABLE `major_adverse_cardiac_events`
  ADD PRIMARY KEY (`mace_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `medicine_instruction`
--
ALTER TABLE `medicine_instruction`
  ADD PRIMARY KEY (`mi_id`);

--
-- Indexes for table `medicine_rules`
--
ALTER TABLE `medicine_rules`
  ADD PRIMARY KEY (`mr_id`);

--
-- Indexes for table `m_category`
--
ALTER TABLE `m_category`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `m_company`
--
ALTER TABLE `m_company`
  ADD PRIMARY KEY (`mcom_id`);

--
-- Indexes for table `m_specification`
--
ALTER TABLE `m_specification`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `non_cardiovascular`
--
ALTER TABLE `non_cardiovascular`
  ADD PRIMARY KEY (`ncv_id`);

--
-- Indexes for table `nyha_wise_call`
--
ALTER TABLE `nyha_wise_call`
  ADD PRIMARY KEY (`nwc_id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`op_id`);

--
-- Indexes for table `on_call_shedule_by_ptient_status`
--
ALTER TABLE `on_call_shedule_by_ptient_status`
  ADD PRIMARY KEY (`ocs_id`);

--
-- Indexes for table `patient_6_minute_walk_test`
--
ALTER TABLE `patient_6_minute_walk_test`
  ADD PRIMARY KEY (`p6mwt_id`);

--
-- Indexes for table `patient_af_status`
--
ALTER TABLE `patient_af_status`
  ADD PRIMARY KEY (`pas_id`);

--
-- Indexes for table `patient_angiogram`
--
ALTER TABLE `patient_angiogram`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indexes for table `patient_angiogram_abnormal_value`
--
ALTER TABLE `patient_angiogram_abnormal_value`
  ADD PRIMARY KEY (`paab_id`);

--
-- Indexes for table `patient_appointment_register`
--
ALTER TABLE `patient_appointment_register`
  ADD PRIMARY KEY (`par_id`);

--
-- Indexes for table `patient_archive_basic_info`
--
ALTER TABLE `patient_archive_basic_info`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `patient_basic_info`
--
ALTER TABLE `patient_basic_info`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `patient_calcium`
--
ALTER TABLE `patient_calcium`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `patient_call_rules_if_unavailable`
--
ALTER TABLE `patient_call_rules_if_unavailable`
  ADD PRIMARY KEY (`pcru_id`);

--
-- Indexes for table `patient_cardiovascular`
--
ALTER TABLE `patient_cardiovascular`
  ADD PRIMARY KEY (`pcv_id`);

--
-- Indexes for table `patient_cbc`
--
ALTER TABLE `patient_cbc`
  ADD PRIMARY KEY (`pcbc_id`);

--
-- Indexes for table `patient_chest_x_ray`
--
ALTER TABLE `patient_chest_x_ray`
  ADD PRIMARY KEY (`pcxid`);

--
-- Indexes for table `patient_comorbidities`
--
ALTER TABLE `patient_comorbidities`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `patient_death_report`
--
ALTER TABLE `patient_death_report`
  ADD PRIMARY KEY (`pdr_id`);

--
-- Indexes for table `patient_device`
--
ALTER TABLE `patient_device`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `patient_ecg`
--
ALTER TABLE `patient_ecg`
  ADD PRIMARY KEY (`pecg_id`);

--
-- Indexes for table `patient_ecg_bbb`
--
ALTER TABLE `patient_ecg_bbb`
  ADD PRIMARY KEY (`peb_id`);

--
-- Indexes for table `patient_echo`
--
ALTER TABLE `patient_echo`
  ADD PRIMARY KEY (`pecho_id`);

--
-- Indexes for table `patient_glucose`
--
ALTER TABLE `patient_glucose`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `patient_having_discomfort`
--
ALTER TABLE `patient_having_discomfort`
  ADD PRIMARY KEY (`phd_id`);

--
-- Indexes for table `patient_hf_type`
--
ALTER TABLE `patient_hf_type`
  ADD PRIMARY KEY (`phf_id`);

--
-- Indexes for table `patient_holter`
--
ALTER TABLE `patient_holter`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `patient_inr`
--
ALTER TABLE `patient_inr`
  ADD PRIMARY KEY (`pinr_id`);

--
-- Indexes for table `patient_lipid`
--
ALTER TABLE `patient_lipid`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `patient_lung_ultasound`
--
ALTER TABLE `patient_lung_ultasound`
  ADD PRIMARY KEY (`plu_id`);

--
-- Indexes for table `patient_magnesium`
--
ALTER TABLE `patient_magnesium`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `patient_major_adverse_cardiac_events`
--
ALTER TABLE `patient_major_adverse_cardiac_events`
  ADD PRIMARY KEY (`pmace_id`);

--
-- Indexes for table `patient_medication_missing`
--
ALTER TABLE `patient_medication_missing`
  ADD PRIMARY KEY (`pmm_id`);

--
-- Indexes for table `patient_minnesota_score_count`
--
ALTER TABLE `patient_minnesota_score_count`
  ADD PRIMARY KEY (`pmsc_id`);

--
-- Indexes for table `patient_missing_medicine_why`
--
ALTER TABLE `patient_missing_medicine_why`
  ADD PRIMARY KEY (`pmmw_id`);

--
-- Indexes for table `patient_mpi`
--
ALTER TABLE `patient_mpi`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `patient_non_cardiovascular`
--
ALTER TABLE `patient_non_cardiovascular`
  ADD PRIMARY KEY (`pncv_id`);

--
-- Indexes for table `patient_nt_pro_bnp`
--
ALTER TABLE `patient_nt_pro_bnp`
  ADD PRIMARY KEY (`pnpb_id`);

--
-- Indexes for table `patient_other_element`
--
ALTER TABLE `patient_other_element`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `patient_overall_status`
--
ALTER TABLE `patient_overall_status`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `patient_phone_no`
--
ALTER TABLE `patient_phone_no`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `patient_prescription_rules`
--
ALTER TABLE `patient_prescription_rules`
  ADD PRIMARY KEY (`ppr_id`);

--
-- Indexes for table `patient_pulmonary`
--
ALTER TABLE `patient_pulmonary`
  ADD PRIMARY KEY (`ppm_id`);

--
-- Indexes for table `patient_recent_hospitalization`
--
ALTER TABLE `patient_recent_hospitalization`
  ADD PRIMARY KEY (`prh_id`);

--
-- Indexes for table `patient_risk_assesment`
--
ALTER TABLE `patient_risk_assesment`
  ADD PRIMARY KEY (`pra_id`);

--
-- Indexes for table `patient_risk_factor`
--
ALTER TABLE `patient_risk_factor`
  ADD PRIMARY KEY (`prf_id`);

--
-- Indexes for table `patient_sign_symptom`
--
ALTER TABLE `patient_sign_symptom`
  ADD PRIMARY KEY (`pss_id`);

--
-- Indexes for table `patient_status_wise_call`
--
ALTER TABLE `patient_status_wise_call`
  ADD PRIMARY KEY (`pswc_id`);

--
-- Indexes for table `patient_status_wise_physical_call`
--
ALTER TABLE `patient_status_wise_physical_call`
  ADD PRIMARY KEY (`pswpc_id`);

--
-- Indexes for table `patient_status_wise_telephone_call`
--
ALTER TABLE `patient_status_wise_telephone_call`
  ADD PRIMARY KEY (`pswtc_id`);

--
-- Indexes for table `patient_stress_test`
--
ALTER TABLE `patient_stress_test`
  ADD PRIMARY KEY (`pst_id`);

--
-- Indexes for table `patient_s_creatinine`
--
ALTER TABLE `patient_s_creatinine`
  ADD PRIMARY KEY (`psc_id`);

--
-- Indexes for table `patient_s_electrolytes`
--
ALTER TABLE `patient_s_electrolytes`
  ADD PRIMARY KEY (`pse_id`);

--
-- Indexes for table `patient_t3`
--
ALTER TABLE `patient_t3`
  ADD PRIMARY KEY (`pt3_id`);

--
-- Indexes for table `patient_t4`
--
ALTER TABLE `patient_t4`
  ADD PRIMARY KEY (`pt4_id`);

--
-- Indexes for table `patient_tsh`
--
ALTER TABLE `patient_tsh`
  ADD PRIMARY KEY (`ptsh_id`);

--
-- Indexes for table `patient_uric_acid`
--
ALTER TABLE `patient_uric_acid`
  ADD PRIMARY KEY (`pua_id`);

--
-- Indexes for table `patient_vaccination`
--
ALTER TABLE `patient_vaccination`
  ADD PRIMARY KEY (`pv_id`);

--
-- Indexes for table `patient_vitamind3`
--
ALTER TABLE `patient_vitamind3`
  ADD PRIMARY KEY (`pvd3_id`);

--
-- Indexes for table `patient_weight_machine`
--
ALTER TABLE `patient_weight_machine`
  ADD PRIMARY KEY (`pwm_id`);

--
-- Indexes for table `physical_examination`
--
ALTER TABLE `physical_examination`
  ADD PRIMARY KEY (`pe_id`);

--
-- Indexes for table `prescription_medicine`
--
ALTER TABLE `prescription_medicine`
  ADD PRIMARY KEY (`prm_id`);

--
-- Indexes for table `prescription_rules`
--
ALTER TABLE `prescription_rules`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `pulmonary`
--
ALTER TABLE `pulmonary`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `recent_hospitalization`
--
ALTER TABLE `recent_hospitalization`
  ADD PRIMARY KEY (`rh_id`);

--
-- Indexes for table `recommended_device`
--
ALTER TABLE `recommended_device`
  ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `recommended_vaccine`
--
ALTER TABLE `recommended_vaccine`
  ADD PRIMARY KEY (`rv_id`);

--
-- Indexes for table `risk_assesment`
--
ALTER TABLE `risk_assesment`
  ADD PRIMARY KEY (`ra_id`);

--
-- Indexes for table `risk_factor`
--
ALTER TABLE `risk_factor`
  ADD PRIMARY KEY (`rf_id`);

--
-- Indexes for table `signs_symptoms`
--
ALTER TABLE `signs_symptoms`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `treating_cardiologist`
--
ALTER TABLE `treating_cardiologist`
  ADD PRIMARY KEY (`tc_id`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`vc_id`);

--
-- Indexes for table `visit_type`
--
ALTER TABLE `visit_type`
  ADD PRIMARY KEY (`vt_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`y_id`);

--
-- Indexes for table `year_category`
--
ALTER TABLE `year_category`
  ADD PRIMARY KEY (`yc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `af_status`
--
ALTER TABLE `af_status`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `call_rules_if_unavailable`
--
ALTER TABLE `call_rules_if_unavailable`
  MODIFY `cru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cardiovascular`
--
ALTER TABLE `cardiovascular`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comorbidities`
--
ALTER TABLE `comorbidities`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education_level`
--
ALTER TABLE `education_level`
  MODIFY `el_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hf_type`
--
ALTER TABLE `hf_type`
  MODIFY `hf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `major_adverse_cardiac_events`
--
ALTER TABLE `major_adverse_cardiac_events`
  MODIFY `mace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `medicine_instruction`
--
ALTER TABLE `medicine_instruction`
  MODIFY `mi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `medicine_rules`
--
ALTER TABLE `medicine_rules`
  MODIFY `mr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_category`
--
ALTER TABLE `m_category`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_company`
--
ALTER TABLE `m_company`
  MODIFY `mcom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_specification`
--
ALTER TABLE `m_specification`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `non_cardiovascular`
--
ALTER TABLE `non_cardiovascular`
  MODIFY `ncv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nyha_wise_call`
--
ALTER TABLE `nyha_wise_call`
  MODIFY `nwc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `on_call_shedule_by_ptient_status`
--
ALTER TABLE `on_call_shedule_by_ptient_status`
  MODIFY `ocs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `patient_6_minute_walk_test`
--
ALTER TABLE `patient_6_minute_walk_test`
  MODIFY `p6mwt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `patient_af_status`
--
ALTER TABLE `patient_af_status`
  MODIFY `pas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_angiogram`
--
ALTER TABLE `patient_angiogram`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `patient_angiogram_abnormal_value`
--
ALTER TABLE `patient_angiogram_abnormal_value`
  MODIFY `paab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `patient_appointment_register`
--
ALTER TABLE `patient_appointment_register`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `patient_archive_basic_info`
--
ALTER TABLE `patient_archive_basic_info`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `patient_basic_info`
--
ALTER TABLE `patient_basic_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `patient_calcium`
--
ALTER TABLE `patient_calcium`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patient_call_rules_if_unavailable`
--
ALTER TABLE `patient_call_rules_if_unavailable`
  MODIFY `pcru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_cardiovascular`
--
ALTER TABLE `patient_cardiovascular`
  MODIFY `pcv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `patient_cbc`
--
ALTER TABLE `patient_cbc`
  MODIFY `pcbc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT for table `patient_chest_x_ray`
--
ALTER TABLE `patient_chest_x_ray`
  MODIFY `pcxid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_comorbidities`
--
ALTER TABLE `patient_comorbidities`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `patient_death_report`
--
ALTER TABLE `patient_death_report`
  MODIFY `pdr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_device`
--
ALTER TABLE `patient_device`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `patient_ecg`
--
ALTER TABLE `patient_ecg`
  MODIFY `pecg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

--
-- AUTO_INCREMENT for table `patient_ecg_bbb`
--
ALTER TABLE `patient_ecg_bbb`
  MODIFY `peb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `patient_echo`
--
ALTER TABLE `patient_echo`
  MODIFY `pecho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2117;

--
-- AUTO_INCREMENT for table `patient_glucose`
--
ALTER TABLE `patient_glucose`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `patient_having_discomfort`
--
ALTER TABLE `patient_having_discomfort`
  MODIFY `phd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_hf_type`
--
ALTER TABLE `patient_hf_type`
  MODIFY `phf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `patient_holter`
--
ALTER TABLE `patient_holter`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_inr`
--
ALTER TABLE `patient_inr`
  MODIFY `pinr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `patient_lipid`
--
ALTER TABLE `patient_lipid`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `patient_lung_ultasound`
--
ALTER TABLE `patient_lung_ultasound`
  MODIFY `plu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_magnesium`
--
ALTER TABLE `patient_magnesium`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient_major_adverse_cardiac_events`
--
ALTER TABLE `patient_major_adverse_cardiac_events`
  MODIFY `pmace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `patient_medication_missing`
--
ALTER TABLE `patient_medication_missing`
  MODIFY `pmm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_minnesota_score_count`
--
ALTER TABLE `patient_minnesota_score_count`
  MODIFY `pmsc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_missing_medicine_why`
--
ALTER TABLE `patient_missing_medicine_why`
  MODIFY `pmmw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_mpi`
--
ALTER TABLE `patient_mpi`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_non_cardiovascular`
--
ALTER TABLE `patient_non_cardiovascular`
  MODIFY `pncv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `patient_nt_pro_bnp`
--
ALTER TABLE `patient_nt_pro_bnp`
  MODIFY `pnpb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `patient_other_element`
--
ALTER TABLE `patient_other_element`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `patient_overall_status`
--
ALTER TABLE `patient_overall_status`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient_phone_no`
--
ALTER TABLE `patient_phone_no`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `patient_prescription_rules`
--
ALTER TABLE `patient_prescription_rules`
  MODIFY `ppr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147;

--
-- AUTO_INCREMENT for table `patient_pulmonary`
--
ALTER TABLE `patient_pulmonary`
  MODIFY `ppm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `patient_recent_hospitalization`
--
ALTER TABLE `patient_recent_hospitalization`
  MODIFY `prh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `patient_risk_assesment`
--
ALTER TABLE `patient_risk_assesment`
  MODIFY `pra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `patient_risk_factor`
--
ALTER TABLE `patient_risk_factor`
  MODIFY `prf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- AUTO_INCREMENT for table `patient_sign_symptom`
--
ALTER TABLE `patient_sign_symptom`
  MODIFY `pss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9436;

--
-- AUTO_INCREMENT for table `patient_status_wise_call`
--
ALTER TABLE `patient_status_wise_call`
  MODIFY `pswc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient_status_wise_physical_call`
--
ALTER TABLE `patient_status_wise_physical_call`
  MODIFY `pswpc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `patient_status_wise_telephone_call`
--
ALTER TABLE `patient_status_wise_telephone_call`
  MODIFY `pswtc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `patient_stress_test`
--
ALTER TABLE `patient_stress_test`
  MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_s_creatinine`
--
ALTER TABLE `patient_s_creatinine`
  MODIFY `psc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1193;

--
-- AUTO_INCREMENT for table `patient_s_electrolytes`
--
ALTER TABLE `patient_s_electrolytes`
  MODIFY `pse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=877;

--
-- AUTO_INCREMENT for table `patient_t3`
--
ALTER TABLE `patient_t3`
  MODIFY `pt3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `patient_t4`
--
ALTER TABLE `patient_t4`
  MODIFY `pt4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient_tsh`
--
ALTER TABLE `patient_tsh`
  MODIFY `ptsh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `patient_uric_acid`
--
ALTER TABLE `patient_uric_acid`
  MODIFY `pua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `patient_vaccination`
--
ALTER TABLE `patient_vaccination`
  MODIFY `pv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `patient_vitamind3`
--
ALTER TABLE `patient_vitamind3`
  MODIFY `pvd3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `patient_weight_machine`
--
ALTER TABLE `patient_weight_machine`
  MODIFY `pwm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `physical_examination`
--
ALTER TABLE `physical_examination`
  MODIFY `pe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT for table `prescription_medicine`
--
ALTER TABLE `prescription_medicine`
  MODIFY `prm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3075;

--
-- AUTO_INCREMENT for table `prescription_rules`
--
ALTER TABLE `prescription_rules`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pulmonary`
--
ALTER TABLE `pulmonary`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recent_hospitalization`
--
ALTER TABLE `recent_hospitalization`
  MODIFY `rh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `recommended_device`
--
ALTER TABLE `recommended_device`
  MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `recommended_vaccine`
--
ALTER TABLE `recommended_vaccine`
  MODIFY `rv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT for table `risk_assesment`
--
ALTER TABLE `risk_assesment`
  MODIFY `ra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `risk_factor`
--
ALTER TABLE `risk_factor`
  MODIFY `rf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `signs_symptoms`
--
ALTER TABLE `signs_symptoms`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `treating_cardiologist`
--
ALTER TABLE `treating_cardiologist`
  MODIFY `tc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `vc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `visit_type`
--
ALTER TABLE `visit_type`
  MODIFY `vt_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `year_category`
--
ALTER TABLE `year_category`
  MODIFY `yc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
