-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 07:58 AM
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
-- Database: `heart_fail_demo`
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
  `a_name` varchar(255) NOT NULL,
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

INSERT INTO `authority` (`id`, `a_name`, `credential`, `a_key`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `cash_on_hand`, `owner_id`, `user_type`) VALUES
(1, 'Consultant', '01711529539', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-12-01 19:49:00', 1, 2, '1', 1, 1),
(2, 'Administrator', '01674514400', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-12-01 19:49:00', 1, 2, '1', 1, 0),
(3, 'Paramedics', '01674514401', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-12-01 19:49:00', 1, 2, '1', 1, 3),
(4, 'Specialist', '01674514402', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-07 11:36:55', '2021-12-01 19:49:00', 1, 2, '1', 1, 4);

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
(16, 'Valvular Heart Disease', 0, '2021-03-20 11:06:00', 2, '2021-12-11 21:29:00', 2, 1),
(17, 'Hypothyroidism', 0, '2021-03-20 11:07:00', 2, '2021-12-11 21:29:00', 2, 1),
(18, 'Anaemia', 0, '2021-03-20 11:07:00', 2, '2021-08-10 16:36:00', 2, 1),
(19, 'Obstructive Sleep Apnoea', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:39:00', 1, 1),
(20, 'Cerebrovascular Accident', 0, '2021-03-20 11:07:00', 2, '2021-06-21 15:38:00', 1, 1),
(21, 'connective tissue disease', 0, '2021-03-20 11:07:00', 2, '2021-10-31 15:58:00', 2, 1),
(22, 'Cancer', 0, '2021-03-20 11:07:00', 2, '0000-00-00 00:00:00', 0, 1),
(23, 'Bleeding diathesis', 0, '2021-03-20 11:08:00', 2, '2021-06-21 15:30:00', 1, 1),
(24, 'Peripheral Vascular Disease', 0, '2021-03-20 11:08:00', 2, '2021-06-21 15:42:00', 1, 1),
(25, 'i', 11, '2021-04-17 15:34:00', 2, '0000-00-00 00:00:00', 0, 0),
(26, 'CKD', 0, '2021-05-26 10:24:00', 2, '0000-00-00 00:00:00', 0, 0),
(27, 'Hyperthyroidism', 0, '2021-11-03 11:31:00', 2, '2021-12-11 21:29:00', 2, 1);

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
(16, 'Ramipril 2.25mg', '2', '3', '', '', '1', '2021-06-24 12:10:00', 2, NULL, 0, 0),
(17, 'Ramipril 5mg', '2', '3', '', '', '1', '2021-06-24 12:12:00', 2, NULL, 0, 1),
(18, 'Valsartan 40mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, '2021-12-11 16:32:00', 2, 1),
(19, 'Valsartan 80mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, '2021-12-11 16:33:00', 2, 1),
(20, 'Valsartan 160mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, '2021-12-11 16:33:00', 2, 1),
(21, 'Losartan 25mg', '3', '3', '', '', '1', '2021-06-24 12:13:00', 2, NULL, 0, 1),
(22, 'Losartan 50mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, NULL, 0, 1),
(23, 'Telmisartan 20mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, '2021-12-05 11:54:00', 2, 1),
(24, 'Telmisartan 40mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, '2021-12-05 11:54:00', 2, 1),
(25, 'Telmisartan 80mg', '3', '3', '', '', '1', '2021-06-24 12:14:00', 2, '2021-12-05 11:54:00', 2, 1),
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
(57, 'Amlodipin 5mg', '27', '3', '', '', '1', '2021-06-24 12:52:00', 2, '2021-12-05 19:03:00', 2, 1),
(58, 'Amlodipin 10mg', '27', '3', '', '', '1', '2021-06-24 12:52:00', 2, '2021-12-05 19:04:00', 2, 1),
(59, 'Cilnidipin 5mg', '27', '3', '', '', '1', '2021-06-24 12:52:00', 2, '2021-12-05 19:05:00', 2, 1),
(60, 'Cilnidipin 10mg', '27', '3', '', '', '1', '2021-06-24 12:52:00', 2, '2021-12-05 19:08:00', 2, 1),
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
(141, 'Valsartil 40mg', '', '', '', '', '18', '2021-06-24 20:43:00', 1, '2021-12-11 16:32:00', 2, 2),
(142, 'Disys 40mg', '', '', '', '', '18', '2021-06-24 20:45:00', 1, NULL, 0, 2),
(143, 'Cardovan 40mg', '', '', '', '', '18', '2021-06-24 20:46:00', 1, NULL, 0, 2),
(144, 'Disys 80mg', '', '', '', '', '19', '2021-06-24 20:46:00', 1, '2021-06-24 20:48:00', 1, 2),
(145, 'Diovan 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-06-24 20:50:00', 1, 2),
(146, 'Valsartil 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-12-11 16:32:00', 2, 2),
(147, 'Cardovan 80mg', '', '', '', '', '19', '2021-06-24 20:47:00', 1, '2021-06-24 20:49:00', 1, 2),
(148, 'Cardovan 160mg', '', '', '', '', '20', '2021-06-24 20:50:00', 1, NULL, 0, 2),
(149, 'Diovan 160mg', '', '', '', '', '20', '2021-06-24 20:51:00', 1, NULL, 0, 2),
(150, 'Disys 160mg', '', '', '', '', '20', '2021-06-24 20:52:00', 1, NULL, 0, 2),
(151, 'Valsartil 160mg', '', '', '', '', '20', '2021-06-24 20:52:00', 1, '2021-12-11 16:33:00', 2, 2),
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
(289, ' (Furosemide+spironolactone) (20 / 50 mg)', '16', '3', '', '', '', '2021-06-28 12:47:00', 2, '2021-08-11 09:42:00', 2, 0),
(290, '(Furosemide+spironolactone) (20mg + 50mg)', '16', '3', '', '', '1', '2021-06-28 12:47:00', 2, '2021-08-11 09:43:00', 2, 1),
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
(308, 'Prazosin 5mg', '30', '3', '', '', '1', '2021-06-28 12:59:00', 2, '2021-12-05 19:14:00', 2, 1),
(309, 'Amlodipin 5mg +Atenolol 50mg', '24', '3', '', '', '1', '2021-06-28 12:59:00', 2, '2021-12-05 19:21:00', 2, 0),
(310, 'Amlodipine 5mg+ Atenolol 25mg', '24', '3', '', '', '1', '2021-06-28 12:59:00', 2, '2021-12-05 19:21:00', 2, 1),
(311, 'Amlodipine 5mg + Atenolol 25mg', '24', '3', '', '', '1', '2021-06-28 13:00:00', 2, '2021-12-05 19:22:00', 2, 0),
(312, 'Amlodipine 5mg + Atenolol 50mg', '17', '3', '', '', '1', '2021-06-28 13:00:00', 2, '2021-12-11 22:03:00', 2, 1),
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
(416, 'Fixocard 5mg', '', '', '', '', '309', '2021-06-28 16:45:00', 2, NULL, 0, 0),
(417, 'Amdocal plus 5mg', '', '', '', '', '309', '2021-06-28 16:45:00', 2, NULL, 0, 0),
(418, 'Fixocard 25mg', '', '', '', '', '310', '2021-06-28 16:46:00', 2, NULL, 0, 2),
(419, 'Amdocal plus 25mg', '', '', '', '', '310', '2021-06-28 16:47:00', 2, NULL, 0, 2),
(420, 'Fixocard 5mg', '', '', '', '', '311', '2021-06-28 16:48:00', 2, NULL, 0, 0),
(421, 'Amdocal plus 5mg', '', '', '', '', '311', '2021-06-28 16:48:00', 2, NULL, 0, 0),
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
(475, '(Furosemide+Spironolactone) (40mg + 50mg)', '16', '3', '', '', '1', '2021-06-29 13:51:00', 2, '2021-08-11 12:25:00', 2, 1),
(476, '(Furesemide+spironolactone) (40/ 50mg)', '16', '3', '', '', '', '2021-06-29 13:52:00', 2, '2021-08-11 12:55:00', 2, 0),
(477, 'Warfarin 1mg', '20', '3', '', '', '1', '2021-07-07 12:51:00', 4, NULL, 0, 1),
(478, 'Warfarin 2mg', '20', '3', '', '', '1', '2021-07-07 12:51:00', 4, NULL, 0, 1),
(479, 'Warfarin 5mg', '20', '3', '', '', '1', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(480, 'Rivaroxaban 2.5mg', '20', '3', '', '', '1', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(481, 'Rivaroxaban 10mg', '20', '3', '', '', '1', '2021-07-07 12:52:00', 4, NULL, 0, 1),
(482, 'Rivaroxaban 20mg', '20', '3', '', '', '1', '2021-07-07 12:54:00', 4, NULL, 0, 1),
(483, 'Inj. Enoxaparin 60mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, '2021-12-05 12:59:00', 2, 1),
(484, 'Apixaban 2.5mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, NULL, 0, 1),
(485, 'Apixaban 5mg', '20', '3', '', '', '1', '2021-07-07 12:55:00', 4, '2021-08-11 12:28:00', 2, 1),
(486, 'Ramipril 2.5mg', '2', '3', '', '', '1', '2021-07-08 13:16:00', 2, NULL, 0, 1),
(487, 'Losartan 100mg', '3', '10', '', '', '1', '2021-08-11 09:49:00', 2, NULL, 0, 1),
(488, 'Nicorandil 10mg', '17', '3', '', '', '1', '2021-08-11 09:51:00', 2, NULL, 0, 1),
(489, 'Nicorandil 20mg', '17', '3', '', '', '1', '2021-08-11 09:52:00', 2, NULL, 0, 1),
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
(511, 'Inj. Enoxaparin 40mg', '20', '3', '', '', '1', '2021-08-11 13:06:00', 2, '2021-12-05 12:59:00', 2, 1),
(512, 'Clexane 40mg', '', '', '', '', '511', '2021-08-11 13:07:00', 2, NULL, 0, 2),
(513, 'Parinox 40mg', '', '', '', '', '511', '2021-08-11 13:08:00', 2, NULL, 0, 2),
(514, 'Carvedilol 6.25mg', '1', '3', '', '', '1', '2021-08-12 11:20:00', 2, NULL, 0, 1),
(515, 'Mexiletine 200', '12', '3', '', '', '', '2021-08-23 18:06:00', 2, NULL, 0, 1),
(516, 'Mexiletine 150', '12', '3', '', '', '', '2021-08-23 18:07:00', 2, NULL, 0, 1),
(517, 'Mexiletine 50', '12', '3', '', '', '', '2021-08-23 18:08:00', 2, NULL, 0, 1),
(518, 'Ambrisentan 5mg', '22', '3', '', '', '1', '2021-08-24 14:39:00', 2, '2021-08-24 14:39:00', 2, 1),
(519, 'Bisoprolol+ Amlodipine 2.5/5mg', '24', '3', '', '', '1', '2021-09-05 11:20:00', 2, '2021-11-29 18:22:00', 2, 1),
(520, 'Bislol Max', '', '', '', '', '519', '2021-09-05 11:23:00', 2, NULL, 0, 2),
(521, 'Bisoprolol+Hydrochlorothiazide 10+6.25mg', '25', '3', '', '', '1', '2021-09-05 11:26:00', 2, '2021-11-29 18:23:00', 2, 1),
(522, 'Bislol Plus', '', '', '', '', '521', '2021-09-05 11:27:00', 2, NULL, 0, 2),
(523, 'Aspirin+Clopidogrel 75+75mg', '8', '3', '', '', '1', '2021-09-06 10:49:00', 2, NULL, 0, 1),
(524, 'Anclog PLUS', '', '', '', '', '523', '2021-09-06 10:50:00', 2, NULL, 0, 2),
(525, 'Hydrochlorothiazide 25mg', '5', '3', '', '', '1', '2021-09-11 12:25:00', 2, '2021-09-11 12:33:00', 2, 1),
(526, 'Acuren  25mg', '', '', '', '', '525', '2021-09-11 12:25:00', 2, NULL, 0, 2),
(527, 'Acuren 50mg', '', '', '', '', '525', '2021-09-11 12:25:00', 2, NULL, 0, 2),
(528, 'Htz 25mg', '', '', '', '', '525', '2021-09-11 12:27:00', 2, NULL, 0, 2),
(529, 'Hypezide 50mg', '', '', '', '', '525', '2021-09-11 12:29:00', 2, NULL, 0, 2),
(530, 'Hydrochlorothiazide 50mg', '5', '3', '', '', '', '2021-09-11 12:34:00', 2, NULL, 0, 1),
(531, 'Bisopro 1.25mg', '1', '3', '', '', '1', '2021-09-23 17:03:00', 2, NULL, 0, 0),
(532, 'Bisoprolol 1.25mg', '1', '3', '', '', '1', '2021-09-23 17:07:00', 2, NULL, 0, 1),
(533, 'Ramipril 10mg', '2', '3', '', '', '1', '2021-09-25 13:22:00', 2, NULL, 0, 1),
(534, 'Sildenafil (Edegra 100)_dont_use', '22', '3', '', '', '', '2021-09-25 14:40:00', 2, '2021-12-05 15:29:00', 2, 0),
(535, 'Sildenafil 100mg', '22', '3', '', '', '1', '2021-09-25 14:42:00', 2, '2021-12-05 15:26:00', 2, 1),
(536, 'sildenafil 50mg', '22', '3', '', '', '1', '2021-09-25 14:43:00', 2, NULL, 0, 1),
(537, 'sildenafil 25mg', '22', '3', '', '', '1', '2021-09-25 14:43:00', 2, NULL, 0, 1),
(538, 'Levamlodipine 2.5mg', '27', '3', '', '', '1', '2021-09-25 17:43:00', 2, '2021-12-05 19:09:00', 2, 1),
(539, 'Levamlodipine 5mg', '27', '3', '', '', '1', '2021-09-25 17:44:00', 2, '2021-12-05 19:09:00', 2, 1),
(540, 'Metformin Hydrpchloride+Vildagliptin 500/50', '9', '3', '', '', '', '2021-09-26 12:59:00', 2, NULL, 0, 1),
(541, 'Telcardis 40mg', '3', '3', '', '', '', '2021-09-27 13:03:00', 2, NULL, 0, 0),
(542, 'Telmisartan 40mg', '3', '3', '', '', '', '2021-09-27 13:03:00', 2, NULL, 0, 0),
(543, 'Telmisartan 80mg', '1', '3', '', '', '', '2021-09-27 13:05:00', 2, NULL, 0, 0),
(544, 'Telmisartan+ Hydrochlorothiazide 80/12.5 mg', '3', '3', '', '', '1', '2021-09-27 13:05:00', 2, NULL, 0, 1),
(545, 'Nefidipine 20mg', '27', '3', '', '', '1', '2021-10-26 12:43:00', 2, '2021-12-05 19:24:00', 2, 1),
(546, 'Torasemide 5mg', '5', '3', '', '', '1', '2021-10-27 12:05:00', 2, NULL, 0, 1),
(547, 'Torasemide 2.5mg', '1', '3', '', '', '', '2021-10-27 12:06:00', 2, NULL, 0, 0),
(548, 'Torasemide 2.5mg', '5', '3', '', '', '1', '2021-10-27 12:06:00', 2, NULL, 0, 1),
(549, 'Torasemide 10mg', '5', '3', '', '', '1', '2021-10-27 12:07:00', 2, NULL, 0, 1),
(550, 'CAVAPRO 75mg', '10', '3', '', '', '', '2021-10-28 11:34:00', 2, NULL, 0, 0),
(551, 'CAVAPRO 300mg', '10', '3', '', '', '', '2021-10-28 11:34:00', 2, NULL, 0, 0),
(552, 'Cavapro 75mg', '10', '3', '', '', '', '2021-10-28 11:35:00', 2, NULL, 0, 0),
(553, 'prazosin 2.5mg', '30', '3', '', '', '1', '2021-10-28 11:35:00', 2, '2021-12-05 19:15:00', 2, 1),
(554, 'Irbesartan 300mg', '10', '3', '', '', '', '2021-10-28 11:39:00', 2, NULL, 0, 0),
(555, 'Irbesartan 300mg', '3', '3', '', '', '1', '2021-10-28 11:40:00', 2, NULL, 0, 1),
(556, 'Irbesartan 75mg', '3', '3', '', '', '1', '2021-10-28 11:40:00', 2, NULL, 0, 1),
(557, 'Irbesartan 150mg', '3', '3', '', '', '1', '2021-10-28 11:40:00', 2, NULL, 0, 1),
(558, 'Sotalol hydrochloride 80mg', '1', '3', '', '', '1', '2021-11-01 14:38:00', 2, NULL, 0, 1),
(559, 'Tadalafil 5 mg', '22', '3', '', '', '1', '2021-11-07 14:37:00', 2, NULL, 0, 1),
(560, 'Tadalafil 10mg', '22', '3', '', '', '1', '2021-11-07 14:37:00', 2, NULL, 0, 1),
(561, 'Tadalafil 20mg', '22', '3', '', '', '1', '2021-11-07 14:38:00', 2, NULL, 0, 1),
(562, 'Inj: Lasix  40mg', '5', '3', '', '', '', '2021-11-07 14:52:00', 2, NULL, 0, 1),
(563, 'Metaprolol 100 mg', '1', '3', '', '', '1', '2021-11-20 17:22:00', 2, NULL, 0, 1),
(564, 'Lacidipine 2 mg', '27', '3', '', '', '1', '2021-11-21 16:17:00', 2, '2021-12-05 19:11:00', 2, 1),
(565, 'Lacidipine 4mg', '27', '3', '', '', '1', '2021-11-21 16:17:00', 2, '2021-12-05 19:12:00', 2, 1),
(566, 'Ramipril 2.5mg', '2', '3', '', '', '', '2021-11-21 17:19:00', 2, NULL, 0, 0),
(567, 'Warfarin 2.5mg', '20', '3', '', '', '1', '2021-11-22 16:28:00', 2, NULL, 0, 1),
(568, 'Tadalafil 2.5mg', '22', '3', '', '', '1', '2021-11-24 16:31:00', 2, '2021-12-05 17:21:00', 2, 1),
(569, 'Bisoprolol + Hydrochlorothiazide 2.5+6.25mg', '1', '3', '', '', '', '2021-11-27 14:11:00', 2, '2021-11-27 14:12:00', 2, 1),
(570, 'Propranolol hydrochloride 10mg', '1', '3', '', '', '', '2021-11-27 14:28:00', 2, NULL, 0, 1),
(571, 'Propranolol Hydrochloride 40mg', '1', '3', '', '', '', '2021-11-27 14:29:00', 2, NULL, 0, 1);
INSERT INTO `medicine` (`m_id`, `m_title`, `m_category_id`, `m_company_id`, `m_specification_id`, `m_description`, `m_trade_status`, `m_created_at`, `m_created_by`, `m_updated_at`, `m_updated_by`, `m_status`) VALUES
(572, 'Propantheline Bromide 15 mg', '18', '3', '', '', '', '2021-11-28 11:04:00', 2, NULL, 0, 1),
(573, 'Prazosin 1mg', '30', '3', '', '', '1', '2021-11-28 11:05:00', 2, '2021-12-05 19:16:00', 2, 1),
(574, 'Warfarin 10mg', '20', '3', '', '', '1', '2021-12-01 18:06:00', 2, '2021-12-01 18:08:00', 2, 1),
(575, 'Tab. Warin 1mg', '', '', '', '', '477', '2021-12-05 11:43:00', 2, NULL, 0, 2),
(576, 'Tab. Vanifarin 1mg', '', '', '', '', '477', '2021-12-05 11:44:00', 2, NULL, 0, 2),
(577, 'Tab. Farin 1 mg', '', '', '', '', '477', '2021-12-05 11:45:00', 2, NULL, 0, 2),
(578, 'Tab. Farevan 1mg', '', '', '', '', '477', '2021-12-05 11:45:00', 2, NULL, 0, 2),
(579, 'Tab. warin 2mg', '', '', '', '', '478', '2021-12-05 11:46:00', 2, NULL, 0, 2),
(580, 'Tab. Warin 5mg', '', '', '', '', '479', '2021-12-05 11:47:00', 2, NULL, 0, 2),
(581, 'Tab. Warin 2.5mg', '', '', '', '', '567', '2021-12-05 11:47:00', 2, NULL, 0, 2),
(582, 'Tab. Warin 10mg', '', '', '', '', '574', '2021-12-05 11:47:00', 2, NULL, 0, 2),
(583, 'Tab. Vanifarin 2mg', '', '', '', '', '478', '2021-12-05 11:48:00', 2, NULL, 0, 2),
(584, 'Tab. Vanifarin 5mg', '', '', '', '', '479', '2021-12-05 11:48:00', 2, NULL, 0, 2),
(585, 'Tab. Vanifarin 2.5mg', '', '', '', '', '567', '2021-12-05 11:49:00', 2, NULL, 0, 2),
(586, 'Tab. Vanifarin 10mg', '', '', '', '', '574', '2021-12-05 11:49:00', 2, NULL, 0, 2),
(587, 'Tab. Farin 2mg', '', '', '', '', '478', '2021-12-05 11:50:00', 2, NULL, 0, 2),
(588, 'Tab. Farin 5mg', '', '', '', '', '479', '2021-12-05 11:50:00', 2, NULL, 0, 2),
(589, 'Tab. Farin 2.5mg', '', '', '', '', '567', '2021-12-05 11:50:00', 2, NULL, 0, 2),
(590, 'Tab. Farin 10mg', '', '', '', '', '574', '2021-12-05 11:51:00', 2, NULL, 0, 2),
(591, 'Tab. Farevan 2mg', '', '', '', '', '478', '2021-12-05 11:51:00', 2, NULL, 0, 2),
(592, 'Tab. Farevan 5mg', '', '', '', '', '479', '2021-12-05 11:51:00', 2, NULL, 0, 2),
(593, 'Tab. Farevan 2.5mg', '', '', '', '', '567', '2021-12-05 11:51:00', 2, NULL, 0, 2),
(594, 'Tab. Farevan 10mg', '', '', '', '', '574', '2021-12-05 11:52:00', 2, NULL, 0, 2),
(595, 'Presart 20mg', '', '', '', '', '23', '2021-12-05 11:57:00', 2, NULL, 0, 2),
(596, 'Presart 40mg', '', '', '', '', '24', '2021-12-05 11:57:00', 2, NULL, 0, 2),
(597, 'Presart 80mg', '', '', '', '', '25', '2021-12-05 11:58:00', 2, NULL, 0, 2),
(598, 'Torasemide 20mg', '5', '3', '', '', '1', '2021-12-05 12:06:00', 2, NULL, 0, 1),
(599, 'Dytor 5mg', '', '', '', '', '546', '2021-12-05 12:07:00', 2, NULL, 0, 2),
(600, 'Dilast 20mg', '', '', '', '', '598', '2021-12-05 12:07:00', 2, NULL, 0, 2),
(601, 'Dytor 2.5mg', '', '', '', '', '548', '2021-12-05 12:08:00', 2, NULL, 0, 2),
(602, 'Dytor 10mg', '', '', '', '', '549', '2021-12-05 12:08:00', 2, NULL, 0, 2),
(603, 'Torsid 20mg', '', '', '', '', '598', '2021-12-05 12:09:00', 2, NULL, 0, 2),
(604, 'Torsid 5mg', '', '', '', '', '546', '2021-12-05 12:09:00', 2, NULL, 0, 2),
(605, 'Luretic 5mg', '', '', '', '', '546', '2021-12-05 12:14:00', 2, NULL, 0, 2),
(606, 'Luretic 20mg', '', '', '', '', '598', '2021-12-05 12:15:00', 2, NULL, 0, 2),
(607, 'Aldactone 25mg', '', '', '', '', '43', '2021-12-05 12:17:00', 2, NULL, 0, 2),
(608, 'Aldactone 50mg', '', '', '', '', '44', '2021-12-05 12:17:00', 2, NULL, 0, 2),
(609, 'Pladex Plus', '', '', '', '', '523', '2021-12-05 12:21:00', 2, NULL, 0, 2),
(610, 'Clopid-AS', '', '', '', '', '523', '2021-12-05 12:23:00', 2, NULL, 0, 2),
(611, 'Plagrin Plus', '', '', '', '', '523', '2021-12-05 12:23:00', 2, NULL, 0, 2),
(612, 'Ecosprin Plus', '', '', '', '', '523', '2021-12-05 12:24:00', 2, NULL, 0, 2),
(613, 'Dorel Plus', '', '', '', '', '523', '2021-12-05 12:24:00', 2, NULL, 0, 2),
(614, 'Replet Plus', '', '', '', '', '523', '2021-12-05 12:25:00', 2, NULL, 0, 2),
(615, 'Lopirel Plus', '', '', '', '', '523', '2021-12-05 12:26:00', 2, NULL, 0, 2),
(616, 'Pladex A', '', '', '', '', '523', '2021-12-05 12:26:00', 2, NULL, 0, 2),
(617, 'Lopirel Plus', '', '', '', '', '523', '2021-12-05 12:26:00', 2, NULL, 0, 2),
(618, 'Noclog Plus', '', '', '', '', '523', '2021-12-05 12:27:00', 2, NULL, 0, 2),
(619, 'Odrel Plus', '', '', '', '', '523', '2021-12-05 12:27:00', 2, NULL, 0, 2),
(620, 'Dilatrend 12.5mg', '', '', '', '', '2', '2021-12-05 12:32:00', 2, NULL, 0, 2),
(621, 'Dilatrend 25mg', '', '', '', '', '3', '2021-12-05 12:32:00', 2, NULL, 0, 2),
(622, 'Dilatrend 6.25mg', '', '', '', '', '514', '2021-12-05 12:32:00', 2, NULL, 0, 2),
(623, 'Betabis 2.5mg', '', '', '', '', '4', '2021-12-05 12:33:00', 2, NULL, 0, 2),
(624, 'Betabis 5mg', '', '', '', '', '5', '2021-12-05 12:33:00', 2, NULL, 0, 2),
(625, 'Bislol 1.25mg', '', '', '', '', '531', '2021-12-05 12:39:00', 2, NULL, 0, 0),
(626, 'Selomet 25mg', '', '', '', '', '6', '2021-12-05 12:49:00', 2, NULL, 0, 2),
(627, 'Selomet 50mg', '', '', '', '', '7', '2021-12-05 12:49:00', 2, NULL, 0, 2),
(628, 'Presonil 25mg', '', '', '', '', '6', '2021-12-05 12:51:00', 2, NULL, 0, 2),
(629, 'Presonil 50mg', '', '', '', '', '7', '2021-12-05 12:51:00', 2, NULL, 0, 2),
(630, 'Sotalex 80mg', '', '', '', '', '558', '2021-12-05 12:52:00', 2, NULL, 0, 2),
(631, 'Metoprol XL 100mg', '', '', '', '', '563', '2021-12-05 12:52:00', 2, NULL, 0, 2),
(632, 'Betaloc XL 100mg', '', '', '', '', '563', '2021-12-05 12:53:00', 2, NULL, 0, 2),
(633, 'Inj. Enoxaparin 20mg', '20', '3', '', '', '1', '2021-12-05 12:59:00', 2, '2021-12-05 13:00:00', 2, 1),
(634, 'Inj. Enoxaparin 80mg', '20', '3', '', '', '1', '2021-12-05 12:59:00', 2, '2021-12-05 13:00:00', 2, 1),
(635, 'Parinox 20mg', '', '', '', '', '633', '2021-12-05 13:14:00', 2, NULL, 0, 2),
(636, 'Parinox 80mg', '', '', '', '', '634', '2021-12-05 13:14:00', 2, NULL, 0, 2),
(637, 'Alexa 60mg', '', '', '', '', '483', '2021-12-05 13:14:00', 2, NULL, 0, 2),
(638, 'Alexa 40mg', '', '', '', '', '511', '2021-12-05 13:15:00', 2, NULL, 0, 2),
(639, 'Alexa 20mg', '', '', '', '', '633', '2021-12-05 13:15:00', 2, NULL, 0, 2),
(640, 'Alexa 80mg', '', '', '', '', '634', '2021-12-05 13:15:00', 2, NULL, 0, 2),
(641, 'Clexane 20mg', '', '', '', '', '633', '2021-12-05 13:18:00', 2, NULL, 0, 2),
(642, 'Clexane 80mg', '', '', '', '', '634', '2021-12-05 13:18:00', 2, NULL, 0, 2),
(643, 'Cardinex 20mg', '', '', '', '', '633', '2021-12-05 13:19:00', 2, NULL, 0, 2),
(644, 'Cardinex 60mg', '', '', '', '', '483', '2021-12-05 13:19:00', 2, NULL, 0, 2),
(645, 'Cardinex 40mg', '', '', '', '', '511', '2021-12-05 13:20:00', 2, NULL, 0, 2),
(646, 'Cardinex 80mg', '', '', '', '', '634', '2021-12-05 15:19:00', 2, NULL, 0, 2),
(647, 'Cleven 60mg', '', '', '', '', '483', '2021-12-05 15:20:00', 2, NULL, 0, 2),
(648, 'Cleven 40mg', '', '', '', '', '511', '2021-12-05 15:20:00', 2, NULL, 0, 2),
(649, 'Cleven 20mg', '', '', '', '', '633', '2021-12-05 15:21:00', 2, NULL, 0, 2),
(650, 'Cleven 80mg', '', '', '', '', '634', '2021-12-05 15:21:00', 2, NULL, 0, 2),
(651, 'Enoparin 60mg', '', '', '', '', '483', '2021-12-05 15:21:00', 2, NULL, 0, 2),
(652, 'Enoparin 40mg', '', '', '', '', '511', '2021-12-05 15:22:00', 2, NULL, 0, 2),
(653, 'Enoparin 20mg', '', '', '', '', '633', '2021-12-05 15:22:00', 2, NULL, 0, 2),
(654, 'Enoparin 80mg', '', '', '', '', '634', '2021-12-05 15:22:00', 2, NULL, 0, 2),
(655, 'Intravas 60mg', '', '', '', '', '483', '2021-12-05 15:23:00', 2, NULL, 0, 2),
(656, 'Intravas 40mg', '', '', '', '', '511', '2021-12-05 15:23:00', 2, NULL, 0, 2),
(657, 'Intravas 20mg', '', '', '', '', '633', '2021-12-05 15:23:00', 2, NULL, 0, 2),
(658, 'Intravas 80mg', '', '', '', '', '634', '2021-12-05 15:23:00', 2, NULL, 0, 2),
(659, 'Noxarin 60mg', '', '', '', '', '483', '2021-12-05 15:24:00', 2, NULL, 0, 2),
(660, 'Noxarin 40mg', '', '', '', '', '511', '2021-12-05 15:24:00', 2, NULL, 0, 2),
(661, 'Noxarin 20mg', '', '', '', '', '633', '2021-12-05 15:25:00', 2, NULL, 0, 2),
(662, 'Noxarin 80mg', '', '', '', '', '634', '2021-12-05 15:25:00', 2, NULL, 0, 2),
(663, 'Ambrisan 5mg', '', '', '', '', '518', '2021-12-05 15:26:00', 2, NULL, 0, 2),
(664, 'Edegra 100mg', '', '', '', '', '535', '2021-12-05 15:29:00', 2, NULL, 0, 2),
(665, 'Edegra 50mg', '', '', '', '', '536', '2021-12-05 15:34:00', 2, NULL, 0, 2),
(666, 'Edegra 25mg', '', '', '', '', '537', '2021-12-05 15:34:00', 2, NULL, 0, 2),
(667, 'Silagra 100mg', '', '', '', '', '535', '2021-12-05 15:37:00', 2, NULL, 0, 2),
(668, 'Silagra 50mg', '', '', '', '', '536', '2021-12-05 15:37:00', 2, NULL, 0, 2),
(669, 'Silagra 25mg', '', '', '', '', '537', '2021-12-05 15:37:00', 2, NULL, 0, 2),
(670, 'Adegra 100mg', '', '', '', '', '535', '2021-12-05 15:38:00', 2, NULL, 0, 2),
(671, 'Adegra 50mg', '', '', '', '', '536', '2021-12-05 15:38:00', 2, NULL, 0, 2),
(672, 'Adegra 25mg', '', '', '', '', '537', '2021-12-05 15:38:00', 2, NULL, 0, 2),
(673, 'Corestin 5mg', '', '', '', '', '266', '2021-12-05 15:42:00', 2, NULL, 0, 2),
(674, 'Corestin 10mg', '', '', '', '', '304', '2021-12-05 15:43:00', 2, NULL, 0, 2),
(675, 'Lipitor 20mg', '', '', '', '', '297', '2021-12-05 16:51:00', 2, NULL, 0, 2),
(676, 'Lipitor 40mg', '', '', '', '', '299', '2021-12-05 16:52:00', 2, NULL, 0, 2),
(677, 'Tiginor 40mg', '', '', '', '', '299', '2021-12-05 16:52:00', 2, NULL, 0, 2),
(678, 'Tiginor 20mg', '', '', '', '', '297', '2021-12-05 16:52:00', 2, NULL, 0, 2),
(679, 'Tiginor 10mg', '', '', '', '', '265', '2021-12-05 16:52:00', 2, NULL, 0, 0),
(680, 'Frulac', '', '', '', '', '290', '2021-12-05 17:03:00', 2, NULL, 0, 2),
(681, 'Diretic', '', '', '', '', '290', '2021-12-05 17:03:00', 2, NULL, 0, 2),
(682, 'Eleloss', '', '', '', '', '290', '2021-12-05 17:04:00', 2, NULL, 0, 2),
(683, 'Eleloss Plus', '', '', '', '', '475', '2021-12-05 17:05:00', 2, NULL, 0, 2),
(684, 'Edemide', '', '', '', '', '290', '2021-12-05 17:05:00', 2, NULL, 0, 2),
(685, 'Edemide', '', '', '', '', '475', '2021-12-05 17:06:00', 2, NULL, 0, 2),
(686, 'Frusin Plus', '', '', '', '', '290', '2021-12-05 17:07:00', 2, NULL, 0, 2),
(687, 'Frusin Plus', '', '', '', '', '475', '2021-12-05 17:07:00', 2, NULL, 0, 2),
(688, 'Frusin Plus', '', '', '', '', '475', '2021-12-05 17:08:00', 2, NULL, 0, 0),
(689, 'Fusid 40mg', '', '', '', '', '475', '2021-12-05 17:08:00', 2, NULL, 0, 2),
(690, 'Fusid Plus', '', '', '', '', '475', '2021-12-05 17:09:00', 2, NULL, 0, 2),
(691, 'Spirocard Plus', '', '', '', '', '290', '2021-12-05 17:09:00', 2, NULL, 0, 2),
(692, 'Spirocard Plus', '', '', '', '', '475', '2021-12-05 17:09:00', 2, NULL, 0, 2),
(693, 'Edenil', '', '', '', '', '290', '2021-12-05 17:10:00', 2, NULL, 0, 2),
(694, 'Edenil', '', '', '', '', '475', '2021-12-05 17:10:00', 2, NULL, 0, 2),
(695, 'Frucard', '', '', '', '', '290', '2021-12-05 17:12:00', 2, NULL, 0, 2),
(696, 'Frucard', '', '', '', '', '290', '2021-12-05 17:13:00', 2, NULL, 0, 2),
(697, 'Frucard', '', '', '', '', '475', '2021-12-05 17:13:00', 2, NULL, 0, 2),
(698, 'Nidocard Spray 0.40mg/dose', '', '', '', '', '273', '2021-12-05 17:15:00', 2, '2021-12-05 17:15:00', 2, 2),
(699, 'Nitrin Sublingual Spray 400mcg', '', '', '', '', '273', '2021-12-05 17:15:00', 2, NULL, 0, 2),
(700, 'Trocer Spray 400mcg', '', '', '', '', '273', '2021-12-05 17:16:00', 2, NULL, 0, 2),
(701, 'Amlovas Plus', '', '', '', '', '310', '2021-12-05 17:17:00', 2, NULL, 0, 2),
(702, 'Amlovas Plus', '', '', '', '', '311', '2021-12-05 17:18:00', 2, NULL, 0, 0),
(703, 'Amlovas Plus', '', '', '', '', '312', '2021-12-05 17:18:00', 2, NULL, 0, 2),
(704, 'Tadalis 5mg', '', '', '', '', '559', '2021-12-05 17:22:00', 2, NULL, 0, 2),
(705, 'Tadalis 10mg', '', '', '', '', '560', '2021-12-05 17:22:00', 2, NULL, 0, 2),
(706, 'Tadalis 20mg', '', '', '', '', '561', '2021-12-05 17:22:00', 2, NULL, 0, 2),
(707, 'Tadalis 2.5mg', '', '', '', '', '568', '2021-12-05 17:22:00', 2, NULL, 0, 2),
(708, 'Adafil 5mg', '', '', '', '', '559', '2021-12-05 17:23:00', 2, NULL, 0, 2),
(709, 'Adafil 10mg', '', '', '', '', '560', '2021-12-05 17:23:00', 2, NULL, 0, 2),
(710, 'Adafil 20mg', '', '', '', '', '561', '2021-12-05 17:23:00', 2, NULL, 0, 2),
(711, 'Adafil 2.5mg', '', '', '', '', '568', '2021-12-05 17:24:00', 2, NULL, 0, 2),
(712, 'Ciafil 5mg', '', '', '', '', '559', '2021-12-05 17:24:00', 2, NULL, 0, 2),
(713, 'Ciafil 10mg', '', '', '', '', '560', '2021-12-05 17:43:00', 2, NULL, 0, 2),
(714, 'Ciafil 20mg', '', '', '', '', '561', '2021-12-05 17:43:00', 2, NULL, 0, 2),
(715, 'Ciafil 2.5mg', '', '', '', '', '568', '2021-12-05 17:43:00', 2, NULL, 0, 2),
(716, 'Dystal 5mg', '', '', '', '', '559', '2021-12-05 17:44:00', 2, NULL, 0, 2),
(717, 'Dystal 10mg', '', '', '', '', '560', '2021-12-05 17:44:00', 2, NULL, 0, 2),
(718, 'Dystal 20mg', '', '', '', '', '561', '2021-12-05 17:45:00', 2, NULL, 0, 2),
(719, 'Dystal 2.5mg', '', '', '', '', '568', '2021-12-05 17:45:00', 2, NULL, 0, 2),
(720, 'Megafil 5mg', '', '', '', '', '559', '2021-12-05 17:45:00', 2, NULL, 0, 2),
(721, 'Megafil 10mg', '', '', '', '', '560', '2021-12-05 17:45:00', 2, NULL, 0, 2),
(722, 'Megafil 20mg', '', '', '', '', '561', '2021-12-05 17:46:00', 2, NULL, 0, 2),
(723, 'Megafil 2.5mg', '', '', '', '', '568', '2021-12-05 17:46:00', 2, NULL, 0, 2),
(724, 'Tadafil 5mg', '', '', '', '', '559', '2021-12-05 17:46:00', 2, NULL, 0, 2),
(725, 'Tadafil 10mg', '', '', '', '', '560', '2021-12-05 17:46:00', 2, NULL, 0, 2),
(726, 'Tadafil 20mg', '', '', '', '', '561', '2021-12-05 17:47:00', 2, NULL, 0, 2),
(727, 'Tadafil 2.5mg', '', '', '', '', '568', '2021-12-05 17:47:00', 2, NULL, 0, 2),
(728, 'Levamlodipine 1.5mg', '27', '3', '', '', '1', '2021-12-05 17:53:00', 2, '2021-12-05 19:23:00', 2, 1),
(729, 'Amlevo 2.5mg', '', '', '', '', '538', '2021-12-05 17:53:00', 2, NULL, 0, 2),
(730, 'Amlevo 5mg', '', '', '', '', '539', '2021-12-05 17:53:00', 2, NULL, 0, 2),
(731, 'Amlevo 1.5mg', '', '', '', '', '728', '2021-12-05 17:54:00', 2, NULL, 0, 2),
(732, 'L-Amlo  2.5mg', '', '', '', '', '538', '2021-12-05 17:54:00', 2, NULL, 0, 2),
(733, 'L-Amlo  5mg', '', '', '', '', '539', '2021-12-05 17:55:00', 2, NULL, 0, 2),
(734, 'L-Amlo  1.5mg', '', '', '', '', '728', '2021-12-05 17:55:00', 2, NULL, 0, 2),
(735, 'Tab. nidipine SR 20mg', '', '', '', '', '545', '2021-12-05 17:56:00', 2, NULL, 0, 2),
(736, 'Lacicard 2mg', '', '', '', '', '564', '2021-12-05 17:58:00', 2, NULL, 0, 2),
(737, 'Lacicard 4mg', '', '', '', '', '565', '2021-12-05 17:58:00', 2, NULL, 0, 2),
(738, 'Lacidip 2mg', '', '', '', '', '564', '2021-12-05 17:59:00', 2, NULL, 0, 2),
(739, 'Lacidip 4mg', '', '', '', '', '565', '2021-12-05 17:59:00', 2, NULL, 0, 2),
(740, 'Angilock 100mg', '', '', '', '', '487', '2021-12-05 18:40:00', 2, NULL, 0, 2),
(741, 'Larb 100mg', '', '', '', '', '487', '2021-12-05 18:40:00', 2, NULL, 0, 2),
(742, 'Losan 100mg', '', '', '', '', '487', '2021-12-05 18:40:00', 2, NULL, 0, 2),
(743, 'Losardil 100mg', '', '', '', '', '487', '2021-12-05 18:41:00', 2, NULL, 0, 2),
(744, 'Losart 100mg', '', '', '', '', '487', '2021-12-05 18:41:00', 2, NULL, 0, 2),
(745, 'Osartan 100mg', '', '', '', '', '487', '2021-12-05 18:41:00', 2, NULL, 0, 2),
(746, 'Osartil 100mg', '', '', '', '', '487', '2021-12-05 18:42:00', 2, NULL, 0, 2),
(747, 'Ostan 100mg', '', '', '', '', '487', '2021-12-05 18:42:00', 2, NULL, 0, 2),
(748, 'Acecard 2.5mg', '', '', '', '', '486', '2021-12-05 18:44:00', 2, NULL, 0, 2),
(749, 'Acecard 10mg', '', '', '', '', '533', '2021-12-05 18:44:00', 2, NULL, 0, 2),
(750, 'Aceril 2.5mg', '', '', '', '', '486', '2021-12-05 18:44:00', 2, NULL, 0, 2),
(751, 'Piramil 2.5mg', '', '', '', '', '486', '2021-12-05 18:45:00', 2, NULL, 0, 2),
(752, 'Ramace 2.5mg', '', '', '', '', '486', '2021-12-05 18:45:00', 2, NULL, 0, 2),
(753, 'Ramicard 2.5mg', '', '', '', '', '486', '2021-12-05 18:45:00', 2, NULL, 0, 2),
(754, 'Ramipril 2.5mg', '', '', '', '', '486', '2021-12-05 18:46:00', 2, NULL, 0, 2),
(755, 'Ramoril 2.5mg', '', '', '', '', '486', '2021-12-05 18:46:00', 2, NULL, 0, 2),
(756, 'Ripril 2.5mg', '', '', '', '', '486', '2021-12-05 18:46:00', 2, NULL, 0, 2),
(757, 'Tritace 2.5mg', '', '', '', '', '486', '2021-12-05 18:47:00', 2, NULL, 0, 2),
(758, 'Aceril 10mg', '', '', '', '', '533', '2021-12-05 18:49:00', 2, NULL, 0, 2),
(759, 'Piramil 10mg', '', '', '', '', '533', '2021-12-05 18:49:00', 2, NULL, 0, 2),
(760, 'Ramace 10mg', '', '', '', '', '533', '2021-12-05 18:50:00', 2, NULL, 0, 2),
(761, 'Ramicard 10mg', '', '', '', '', '533', '2021-12-05 18:50:00', 2, NULL, 0, 2),
(762, 'Ramipril 10mg', '', '', '', '', '533', '2021-12-05 18:50:00', 2, NULL, 0, 2),
(763, 'Ramoril 10mg', '', '', '', '', '533', '2021-12-05 18:52:00', 2, NULL, 0, 2),
(764, 'Ripril 10mg', '', '', '', '', '533', '2021-12-05 18:52:00', 2, NULL, 0, 2),
(765, 'Tritace 10mg', '', '', '', '', '533', '2021-12-05 18:52:00', 2, NULL, 0, 2),
(766, 'Inj. Lasix 20mg', '', '', '', '', '36', '2021-12-05 18:54:00', 2, NULL, 0, 2),
(767, 'Inj. Lasix 40mg', '', '', '', '', '37', '2021-12-05 18:54:00', 2, NULL, 0, 2),
(768, 'Rosuvastatin 10mg', '11', '3', '', '', '', '2021-12-05 18:59:00', 2, NULL, 0, 0),
(769, 'Rosuvastatin 20mg', '1', '3', '', '', '', '2021-12-05 19:00:00', 2, NULL, 0, 0),
(770, 'Alphapress 2.5mg', '', '', '', '', '553', '2021-12-05 19:17:00', 2, NULL, 0, 2),
(771, 'Prazopress ER 2.5mg', '', '', '', '', '553', '2021-12-05 19:18:00', 2, NULL, 0, 2),
(772, 'Prazopress ER 1mg', '', '', '', '', '573', '2021-12-05 19:20:00', 2, NULL, 0, 2),
(773, 'Alphapress 1mg', '', '', '', '', '573', '2021-12-05 19:20:00', 2, NULL, 0, 2),
(774, 'Rivarox 2.5mg', '', '', '', '', '480', '2021-12-07 15:33:00', 2, NULL, 0, 2),
(775, 'Rivaxa 2.5mg', '', '', '', '', '480', '2021-12-07 15:33:00', 2, NULL, 0, 2),
(776, 'Cardex 6.25mg', '', '', '', '', '514', '2021-12-07 15:39:00', 2, NULL, 0, 2),
(777, 'Carvista 6.25mg', '', '', '', '', '514', '2021-12-07 15:39:00', 2, NULL, 0, 2),
(778, 'Dilapress 6.25mg', '', '', '', '', '514', '2021-12-07 15:39:00', 2, NULL, 0, 2),
(779, 'Bisopro 1.25mg', '', '', '', '', '532', '2021-12-10 19:50:00', 2, NULL, 0, 2),
(780, 'Ancor 1.25mg', '', '', '', '', '532', '2021-12-10 19:50:00', 2, NULL, 0, 2),
(781, 'Betabis 1.25mg', '', '', '', '', '532', '2021-12-10 19:51:00', 2, NULL, 0, 2),
(782, 'Betafix 1.25mg', '', '', '', '', '532', '2021-12-10 19:51:00', 2, NULL, 0, 2),
(783, 'Bislol 1.25mg', '', '', '', '', '532', '2021-12-10 19:52:00', 2, NULL, 0, 2),
(784, 'Bisocor 1.25mg', '', '', '', '', '532', '2021-12-10 19:52:00', 2, NULL, 0, 2),
(785, 'Bisoren 1.25mg', '', '', '', '', '532', '2021-12-10 19:53:00', 2, NULL, 0, 2),
(786, 'Cardinor 1.25mg', '', '', '', '', '532', '2021-12-10 19:54:00', 2, NULL, 0, 2),
(787, 'Telpro 40mg', '', '', '', '', '24', '2021-12-10 19:59:00', 2, NULL, 0, 2),
(788, 'Telmicard 40mg', '', '', '', '', '24', '2021-12-10 19:59:00', 2, NULL, 0, 2),
(789, 'Presart HZ', '', '', '', '', '544', '2021-12-10 20:03:00', 2, NULL, 0, 2),
(790, 'Mitosan Plus', '', '', '', '', '544', '2021-12-10 20:03:00', 2, NULL, 0, 2),
(791, 'Telcardis Plus', '', '', '', '', '544', '2021-12-10 20:03:00', 2, NULL, 0, 2),
(792, 'Telmilok Plus', '', '', '', '', '544', '2021-12-10 20:04:00', 2, NULL, 0, 2),
(793, 'Telmipres plus', '', '', '', '', '544', '2021-12-10 20:04:00', 2, NULL, 0, 2),
(794, 'Telmitan Plus', '', '', '', '', '544', '2021-12-10 20:04:00', 2, NULL, 0, 2),
(795, 'Telma Plus', '', '', '', '', '544', '2021-12-10 20:05:00', 2, NULL, 0, 2),
(796, 'Arbitel Plus', '', '', '', '', '544', '2021-12-10 20:05:00', 2, NULL, 0, 2),
(797, 'Tab- Cavapro', '', '', '', '', '555', '2021-12-10 20:06:00', 2, NULL, 0, 2),
(798, 'Tab- Cavapro', '', '', '', '', '556', '2021-12-10 20:06:00', 2, NULL, 0, 2),
(799, 'Tab- Cavapro', '', '', '', '', '557', '2021-12-10 20:06:00', 2, NULL, 0, 2),
(800, 'Corangi', '', '', '', '', '488', '2021-12-10 20:22:00', 2, NULL, 0, 2),
(801, 'Corangi', '', '', '', '', '489', '2021-12-10 20:22:00', 2, NULL, 0, 2),
(802, 'Nicor', '', '', '', '', '488', '2021-12-10 20:23:00', 2, NULL, 0, 2),
(803, 'Nicoral', '', '', '', '', '488', '2021-12-10 20:23:00', 2, NULL, 0, 2),
(804, 'Nictoris', '', '', '', '', '488', '2021-12-10 20:23:00', 2, NULL, 0, 2),
(805, 'Nicor', '', '', '', '', '489', '2021-12-10 20:24:00', 2, NULL, 0, 2),
(806, 'Nicoral', '', '', '', '', '489', '2021-12-10 20:24:00', 2, NULL, 0, 2),
(807, 'Nictoris', '', '', '', '', '489', '2021-12-10 20:24:00', 2, NULL, 0, 2),
(808, 'Frulac', '', '', '', '', '475', '2021-12-11 21:55:00', 2, NULL, 0, 2),
(809, 'Irbesartan + Hydrochlorothiazide', '3', '3', '', '', '1', '2021-12-11 21:57:00', 2, NULL, 0, 1),
(810, 'Cavazide 300/12.5', '', '', '', '', '809', '2021-12-11 21:57:00', 2, NULL, 0, 2),
(811, 'Cavazide 150/12.5', '', '', '', '', '809', '2021-12-11 21:57:00', 2, NULL, 0, 2),
(812, 'Cavazide 75/12.5', '', '', '', '', '809', '2021-12-11 21:58:00', 2, NULL, 0, 2);

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
(13, '7 দিন', '2021-09-25 14:12:00', 2, NULL, 0, 1),
(14, '4 DAYS', '2021-10-21 15:17:00', 2, NULL, 0, 0),
(15, 'প্রতি সপ্তাহে 4 দিন', '2021-10-21 15:20:00', 2, NULL, 0, 0),
(16, 'প্রতি সপ্তাহে 3  দিন', '2021-10-21 15:20:00', 2, NULL, 0, 0),
(17, 'প্রতি সপ্তাহে চার দিন', '2021-10-21 15:21:00', 2, NULL, 0, 1),
(18, 'প্রতি সপ্তাহে তিন দিন', '2021-10-21 15:22:00', 2, NULL, 0, 1),
(19, 'সাত দিন', '2021-10-21 15:23:00', 2, NULL, 0, 1),
(20, '1 মাস', '2021-10-21 16:15:00', 2, NULL, 0, 1),
(21, 'প্রতি সপ্তাহে ২ দিন', '2021-11-24 18:24:00', 2, NULL, 0, 1);

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
(12, '½+½+0', '2021-09-22 14:24:00', 2, NULL, 0, 1),
(13, '2+1+0', '2021-10-18 15:21:00', 2, NULL, 0, 1),
(14, '½+', '2021-10-18 15:22:00', 2, NULL, 0, 0),
(15, '½+½+0', '2021-10-18 15:22:00', 2, NULL, 0, 1),
(16, '0+0+½', '2021-10-18 15:23:00', 2, NULL, 0, 1),
(17, '0+1+0', '2021-10-19 12:22:00', 2, NULL, 0, 1),
(18, '0+½+0', '2021-10-19 12:22:00', 2, NULL, 0, 1),
(19, '1+½+0', '2021-10-19 12:22:00', 2, NULL, 0, 1),
(20, '0+0+1+0', '2021-10-21 15:01:00', 2, NULL, 0, 1),
(21, '0+0+½+0', '2021-10-21 15:02:00', 2, NULL, 0, 1),
(22, '1+0+1+0', '2021-10-21 15:13:00', 2, NULL, 0, 1),
(23, '1+0+½+0', '2021-10-21 15:14:00', 2, NULL, 0, 1),
(24, '½+0+½+0', '2021-10-21 15:14:00', 2, NULL, 0, 1),
(25, '2+0+1+0', '2021-10-21 15:14:00', 2, NULL, 0, 1),
(26, '2+0+½+0', '2021-10-21 15:15:00', 2, NULL, 0, 1),
(27, '0+0+2', '2021-10-24 10:53:00', 2, NULL, 0, 1),
(28, '(0+0+1+0)', '2021-10-27 12:38:00', 2, NULL, 0, 1),
(29, '0 + 0 +  3⁄4', '2021-10-30 13:56:00', 2, NULL, 0, 1),
(30, '2 ampule  12 hourly for 3 days', '2021-11-07 14:53:00', 2, '2021-11-07 14:54:00', 2, 1),
(31, '2 ampule for 12 hourly for 5 days', '2021-11-07 14:54:00', 2, '2021-11-07 14:56:00', 2, 1),
(32, '2 ampule for 12 hourly for 7 days', '2021-11-07 14:55:00', 2, NULL, 0, 1),
(33, '1½+0+1', '2021-11-22 12:26:00', 2, NULL, 0, 1),
(34, '2+0+0', '2021-11-23 11:31:00', 2, NULL, 0, 1),
(35, '2+0+2+0', '2021-11-24 16:45:00', 2, NULL, 0, 1),
(36, '0+0+1½+0', '2021-12-02 18:17:00', 2, NULL, 0, 1);

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
  `mc_status` int(11) NOT NULL,
  `mc_is_report_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_category`
--

INSERT INTO `m_category` (`mc_id`, `mc_title`, `mc_created_at`, `mc_created_by`, `mc_updated_at`, `mc_updated_by`, `mc_status`, `mc_is_report_status`) VALUES
(1, 'Beta Blocker', '2021-04-10 19:21:00', 2, '2021-06-23 21:12:00', 2, 1, 0),
(2, 'ACEI', '2021-04-11 09:37:00', 2, '2021-06-23 21:12:00', 2, 1, 0),
(3, 'ARBs', '2021-05-29 14:01:00', 2, '2021-06-23 21:12:00', 2, 1, 0),
(4, 'ARNI', '2021-06-23 21:12:00', 2, NULL, 0, 0, 0),
(5, 'Diuretic', '2021-06-23 21:12:00', 2, NULL, 0, 1, 0),
(6, 'AA', '2021-06-23 21:13:00', 2, NULL, 0, 1, 0),
(7, 'Digoxin', '2021-06-23 21:13:00', 2, NULL, 0, 1, 0),
(8, 'Antiplatelet', '2021-06-23 21:13:00', 2, NULL, 0, 1, 0),
(9, 'Anti Diabetic', '2021-06-23 21:13:00', 2, NULL, 0, 1, 0),
(10, 'Anti Hypertensive', '2021-06-23 21:13:00', 2, NULL, 0, 1, 0),
(11, 'Antilipid', '2021-06-27 14:39:00', 2, NULL, 0, 1, 0),
(12, 'Antiarrythmic', '2021-06-27 14:39:00', 2, NULL, 0, 1, 0),
(13, 'Ivabradine', '2021-06-27 14:39:00', 2, NULL, 0, 1, 0),
(14, 'GTN', '2021-06-27 14:43:00', 2, NULL, 0, 1, 0),
(15, 'ARNI', '2021-06-28 12:31:00', 2, '2021-11-29 17:56:00', 2, 1, 0),
(16, 'Diuretic Combination', '2021-06-28 12:31:00', 2, NULL, 0, 1, 0),
(17, 'Anti-anginal', '2021-06-28 12:32:00', 2, NULL, 0, 1, 0),
(18, 'Other', '2021-06-28 12:32:00', 2, NULL, 0, 1, 0),
(19, 'Anti-Hypertensive Combination', '2021-06-28 12:34:00', 2, NULL, 0, 1, 0),
(20, 'Anticoagulants', '2021-07-07 12:50:00', 4, NULL, 0, 1, 0),
(21, 'SGLT2 inhibitors', '2021-08-11 16:14:00', 2, NULL, 0, 1, 0),
(22, 'Anti pulmonary Hypertention', '2021-08-24 14:38:00', 2, '2021-12-07 15:35:00', 2, 1, 0),
(23, 'ASPIRIN + CLOPIDOGREL', '2021-09-06 10:46:00', 2, NULL, 0, 0, 0),
(24, 'BB + CCB', '2021-11-29 18:19:00', 2, NULL, 0, 1, 0),
(25, 'BB + HCT', '2021-11-29 18:21:00', 2, NULL, 0, 1, 0),
(26, 'Warin 10mg', '2021-12-01 18:05:00', 2, NULL, 0, 0, 0),
(27, 'CCB', '2021-12-05 18:31:00', 2, NULL, 0, 1, 0),
(28, 'ARB + CCB', '2021-12-05 18:32:00', 2, NULL, 0, 1, 0),
(29, 'ARB + HCT', '2021-12-05 18:32:00', 2, NULL, 0, 1, 0),
(30, 'Alpha Blocker', '2021-12-05 19:13:00', 2, NULL, 0, 1, 0);

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
(4, 82, 248, 0, '2021-08-19', '2021-10-19', '2021-07-19 15:13:00', 3, '0000-00-00 00:00:00', 0, 1),
(5, 78, 249, 0, '2021-08-19', '2021-10-19', '2021-07-19 15:56:00', 3, '0000-00-00 00:00:00', 0, 1),
(6, 78, 250, 0, '2021-08-25', '2021-10-25', '2021-07-25 11:23:00', 3, '0000-00-00 00:00:00', 0, 1),
(7, 83, 251, 0, '2021-08-25', '2021-10-25', '2021-07-25 16:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(16, 68, 255, 0, '2021-08-29', '2021-10-29', '2021-07-29 11:20:00', 3, '0000-00-00 00:00:00', 0, 1),
(18, 86, 257, 0, '2021-08-29', '2021-10-29', '2021-07-29 13:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 90, 261, 0, '2021-09-02', '2021-11-02', '2021-08-02 14:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 92, 262, 0, '2021-09-21', '2022-02-03', '2021-08-03 12:10:00', 3, '0000-00-00 00:00:00', 0, 1),
(24, 93, 263, 0, '2021-09-03', '2021-11-03', '2021-08-03 12:48:00', 3, '0000-00-00 00:00:00', 0, 1),
(27, 94, 266, 0, '2021-09-21', '2022-02-03', '2021-08-03 15:25:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 95, 267, 0, '2021-08-17', '2021-09-03', '2021-08-03 17:07:00', 3, '0000-00-00 00:00:00', 0, 1),
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
(100, 116, 317, 0, '2021-09-18', '2021-11-18', '2021-08-18 14:30:00', 3, '0000-00-00 00:00:00', 0, 1),
(101, 116, 318, 0, '2021-10-06', '2022-02-18', '2021-08-18 14:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(102, 116, 319, 0, '2021-09-18', '2021-11-18', '2021-08-18 15:53:00', 3, '0000-00-00 00:00:00', 0, 1),
(103, 117, 320, 0, '2021-09-18', '2021-11-18', '2021-08-18 16:37:00', 3, '0000-00-00 00:00:00', 0, 1),
(104, 117, 321, 0, '2021-09-01', '2021-09-18', '2021-08-18 18:15:00', 3, '0000-00-00 00:00:00', 0, 1),
(105, 117, 322, 0, '2021-09-01', '2021-09-18', '2021-08-19 09:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(106, 117, 323, 0, '2021-09-19', '2021-11-19', '2021-08-19 10:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(108, 121, 327, 0, '2021-10-10', '2022-02-22', '2021-08-22 16:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(110, 106, 329, 0, '2021-10-12', '2022-02-24', '2021-08-24 11:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(111, 106, 330, 0, '2021-10-12', '2022-02-24', '2021-08-24 11:36:00', 3, '0000-00-00 00:00:00', 0, 1),
(112, 123, 331, 0, '2021-09-25', '2021-11-25', '2021-08-25 13:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(113, 123, 332, 0, '2021-10-13', '2022-02-25', '2021-08-25 14:06:00', 3, '0000-00-00 00:00:00', 0, 1),
(114, 124, 333, 0, '2021-09-25', '2021-11-25', '2021-08-25 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(115, 124, 334, 0, '2021-09-25', '2021-11-25', '2021-08-25 16:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(116, 124, 335, 0, '2021-09-25', '2021-11-25', '2021-08-25 17:19:00', 3, '0000-00-00 00:00:00', 0, 1),
(118, 125, 337, 0, '2021-09-14', '2021-10-01', '2021-08-31 13:25:00', 3, '0000-00-00 00:00:00', 0, 1),
(120, 126, 339, 0, '2021-10-01', '2021-12-01', '2021-08-31 14:14:00', 3, '0000-00-00 00:00:00', 0, 1),
(122, 128, 341, 0, '2021-10-01', '2021-12-01', '2021-08-31 17:06:00', 3, '0000-00-00 00:00:00', 0, 1),
(124, 129, 342, 0, '2021-10-01', '2021-12-01', '2021-08-31 17:44:00', 1, '0000-00-00 00:00:00', 0, 1),
(125, 130, 343, 0, '2021-09-15', '2021-10-01', '2021-09-01 10:05:00', 3, '0000-00-00 00:00:00', 0, 1),
(126, 130, 344, 0, '2021-10-20', '2022-03-01', '2021-09-01 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(127, 131, 345, 0, '2021-10-01', '2021-12-01', '2021-09-01 15:58:00', 3, '0000-00-00 00:00:00', 0, 1),
(128, 131, 346, 0, '2021-09-15', '2021-10-01', '2021-09-01 16:24:00', 3, '0000-00-00 00:00:00', 0, 1),
(129, 131, 347, 0, '2021-10-01', '2021-12-01', '2021-09-01 16:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(130, 131, 348, 0, '2021-10-01', '2021-12-01', '2021-09-01 17:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(131, 132, 349, 0, '2021-09-18', '2021-10-04', '2021-09-04 13:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(134, 134, 351, 0, '2021-10-04', '2021-12-04', '2021-09-05 09:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(136, 136, 353, 0, '2021-10-24', '2022-03-05', '2021-09-05 12:52:00', 3, '0000-00-00 00:00:00', 0, 1),
(137, 137, 354, 0, '2021-10-24', '2022-03-05', '2021-09-05 13:51:00', 3, '0000-00-00 00:00:00', 0, 1),
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
(116, 40, '2021-08-01', '2021-07-04 10:53:00', 4, '0000-00-00 00:00:00', 0, 1, 123),
(117, 40, '2021-08-01', '2021-07-04 11:37:00', 4, '0000-00-00 00:00:00', 0, 1, 123),
(118, 40, '2021-08-01', '2021-07-04 11:47:00', 4, '0000-00-00 00:00:00', 0, 1, 123),
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

--
-- Dumping data for table `patient_6_minute_walk_test`
--

INSERT INTO `patient_6_minute_walk_test` (`p6mwt_id`, `p_id`, `p6mwt_date`, `p6mwt_performance`, `p6mwt_speed`, `p6mwt_borg_scale_sob`, `p6mwt_borg_scale_fatigue`, `p6mwt_distance`, `p6mwt_created_at`, `p6mwt_created_by`, `p6mwt_updated_at`, `p6mwt_updated_by`, `p6mwt_status`, `par_id`) VALUES
(1046, 330, '2019-09-11', '', '', '0,0', '0,0', '1260', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1047, 330, '2020-02-26', '', '', '0,0', '0,0', '1740', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1048, 330, '2021-10-04', '', '', '0,0', '0,0', '1800', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1051, 332, '2019-09-29', '', '', '0,0', '0,0', '1500', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1052, 332, '2021-10-05', '', '', '0,0', '0,0', '1400', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1053, 331, '2019-09-08', '', '', '0,0', '0,0', '1320', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1054, 331, '2020-02-18', '', '', '0,0', '0,0', '1620', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1055, 331, '2021-01-13', '', '', '0,0', '0,0', '1620', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1056, 331, '2021-06-06', '', '', '0,0', '0,0', '1800', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1065, 337, '2020-10-11', '', '', '0,0', '0,0', '1020', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(1066, 337, '2021-01-12', '', '', '0,0', '0,0', '1320', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(1071, 340, '2020-12-15', '', '', '0,0', '0,0', '1020', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1072, 340, '2020-03-09', '', '', '0,1', '1,1', '1500', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1076, 334, '2019-01-16', '', '', '0,1', '0,0', '1560', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1247, 339, '2021-02-02', '', '', '0,0', '0,0', '1140', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_angiogram`
--

INSERT INTO `patient_angiogram` (`pa_id`, `p_id`, `pa_date`, `pa_value`, `pa_created_at`, `pa_created_by`, `pa_updated_at`, `pa_updated_by`, `pa_status`, `par_id`) VALUES
(869, 330, '2019-08-07', 'NORMAL', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(871, 332, '2019-03-21', 'Abnormal', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(872, 331, '2019-05-09', 'Abnormal', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(878, 336, '2019-10-05', 'Abnormal', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(880, 337, '2020-06-26', 'Abnormal', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(883, 340, '2010-04-08', 'Abnormal', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(889, 334, '2017-06-01', 'Abnormal', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(961, 339, '2018-10-05', 'Abnormal', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_angiogram_abnormal_value`
--

INSERT INTO `patient_angiogram_abnormal_value` (`paab_id`, `paab_angiogram_row_id`, `paab_title`, `paab_created_at`, `paab_created_by`, `paab_updated_at`, `paab_updated_by`, `paab_status`) VALUES
(755, 871, 'DVD', '2021-11-29 15:38:00', 3, NULL, 0, 1),
(756, 872, 'DVD', '2021-11-29 17:19:00', 3, NULL, 0, 1),
(762, 878, 'SVD', '2021-11-30 14:15:00', 3, NULL, 0, 1),
(764, 880, 'DVD', '2021-11-30 16:27:00', 3, NULL, 0, 1),
(768, 883, 'TVD', '2021-12-01 10:43:00', 3, NULL, 0, 1),
(776, 889, 'NON-CRITICAL', '2021-12-02 02:41:00', 3, NULL, 0, 1),
(834, 961, 'NON-CRITICAL', '2021-12-08 19:18:00', 3, NULL, 0, 1);

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
  `par_chief_complaint` text NOT NULL,
  `par_prescription_date` varchar(255) NOT NULL,
  `par_prescription_datetime_report` datetime NOT NULL,
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

INSERT INTO `patient_appointment_register` (`par_id`, `par_p_id`, `par_date`, `par_vt_type`, `par_assessment_date`, `par_visit_no`, `par_age`, `par_chief_complaint`, `par_prescription_date`, `par_prescription_datetime_report`, `par_follow_up_status`, `par_prescription_status`, `par_done_prescription`, `par_doctor_seen_status`, `par_daily_water_limit`, `par_next_meet`, `par_telephone_call`, `par_comment`, `par_patient_status`, `par_created_at`, `par_created_by`, `par_updated_at`, `par_updated_by`, `par_status`) VALUES
(801, 330, '2021-11-29', 26, '2019-09-11', '1', 48, '', '2019-09-11', '2019-09-11 12:06:03', 1, 1, 0, 1, '1.5', '2019-11-11', '2019-10-02', '', '3', '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(802, 331, '2021-11-29', 26, '2019-09-08', '1', 56, '', '2019-09-08', '2019-09-08 12:00:34', 1, 1, 0, 1, '1.5', '2019-11-09', '2019-09-29', '', '3', '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1),
(803, 330, '2021-11-29', 26, '2020-02-26', '2', 0, '', '2020-02-26', '2020-02-26 14:37:43', 2, 1, 0, 1, '1.5', '2020-05-26', '2020-03-26', '', '4', '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1),
(804, 331, '2021-11-29', 26, '2020-02-18', '2', 57, '', '2020-02-18', '2020-02-18 14:32:38', 2, 1, 0, 1, '1.5', '2020-05-18', '2020-03-18', '', '4', '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1),
(805, 330, '2021-11-29', 26, '2021-10-04', '3', 50, '', '2021-10-04', '2021-10-04 15:06:05', 3, 1, 0, 1, '1.5', '2022-01-04', '2021-11-04', '', '4', '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1),
(806, 331, '2021-11-29', 26, '2021-06-06', '3', 59, '', '2021-06-06', '2021-06-06 14:59:41', 3, 1, 0, 1, '1.5', '2021-09-06', '2021-07-06', '', '4', '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(807, 332, '2021-11-29', 26, '2019-09-29', '1', 59, '', '2019-09-29', '2019-09-29 16:28:07', 1, 1, 0, 1, '1.5', '2019-11-30', '2019-10-20', '', '3', '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1),
(808, 333, '2021-11-29', 26, '2019-09-16', '1', 57, '', '2019-09-16', '2019-09-16 16:31:45', 1, 1, 0, 1, '1.5', '2019-11-16', '2019-10-07', '', '3', '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1),
(809, 332, '2021-11-29', 26, '2021-10-05', '2', 61, '', '', '0000-00-00 00:00:00', 2, 1, 0, 0, '', NULL, '0000-00-00', '', '', '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(810, 333, '2021-11-29', 26, '2021-01-13', '2', 59, '', '', '0000-00-00 00:00:00', 2, 1, 0, 0, '', NULL, '0000-00-00', '', '', '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1),
(811, 334, '2021-11-30', 26, '2017-04-06', '1', 44, '', '2021-12-01', '2021-12-01 03:21:04', 1, 1, 0, 1, '1.25', '2022-02-01', '2021-12-22', '', '3', '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(812, 335, '2021-11-30', 26, '2020-03-09', '1', 77, '', '2020-03-09', '2020-03-09 11:08:41', 1, 1, 0, 1, '1.25', '2020-05-09', '2020-03-30', '', '3', '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1),
(813, 335, '2021-11-30', 29, '2020-11-21', '2', 77, '', '2020-11-21', '2020-11-21 11:47:41', 2, 1, 0, 1, '1.25', '2021-01-21', '2020-12-12', '', '3', '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1),
(814, 335, '2021-11-30', 29, '2021-11-13', '3', 78, '', '2021-11-13', '2021-11-13 12:02:24', 3, 1, 0, 1, '1.25', '2022-01-13', '2021-12-04', '', '3', '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1),
(818, 336, '2021-11-30', 26, '2020-10-28', '1', 51, '', '2020-10-28', '2020-10-28 03:48:45', 1, 1, 0, 1, '1.25', '2020-12-28', '2020-11-18', '', '3', '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(823, 337, '2021-11-30', 26, '2020-07-01', '1', 50, '', '2020-07-01', '2020-07-01 16:40:02', 1, 1, 0, 1, '1.5', '2020-09-01', '2020-07-22', '', '3', '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1),
(824, 337, '2021-11-30', 26, '2021-01-12', '2', 50, '', '2021-01-12', '2021-01-12 16:59:43', 2, 1, 0, 0, '1.5', '2021-03-13', '2021-02-02', '', '3', '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1),
(825, 338, '2021-11-30', 26, '2018-09-20', '1', 47, '', '2021-12-01', '2021-12-01 03:36:00', 1, 1, 0, 1, '1', '2022-02-01', '2021-12-22', '', '3', '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1),
(826, 340, '2021-12-01', 26, '2020-12-15', '1', 73, '', '2020-12-15', '2020-12-15 10:55:19', 1, 1, 0, 1, '1.5', '2021-02-15', '2021-01-05', 'CAG', '3', '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(827, 340, '2021-12-01', 26, '2020-03-09', '2', 73, '', '2020-03-09', '2020-03-09 11:10:35', 2, 1, 0, 1, '1.5', '2020-05-09', '2020-03-30', 'CAG ', '3', '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1),
(916, 339, '2021-12-08', 26, '2021-02-02', '1', 65, '', '2021-02-02', '2021-02-02 20:12:10', 1, 1, 0, 1, '1.25', '2021-04-03', '2021-02-23', '', '3', '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1);

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
  `p_cabg` varchar(255) NOT NULL,
  `p_valve_surgery` varchar(255) NOT NULL,
  `p_valve_surgery_value` varchar(255) NOT NULL,
  `p_pci_lab` varchar(2552) NOT NULL,
  `p_lcx_lab` varchar(255) NOT NULL,
  `p_rca_lab` varchar(255) NOT NULL,
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

INSERT INTO `patient_basic_info` (`p_id`, `p_date_of_assesment`, `p_hf_id`, `p_mr_no`, `p_vt_type`, `p_name`, `p_gender`, `p_birth_date`, `p_age`, `p_address`, `p_education_level`, `p_occupation`, `p_income`, `p_marital_status`, `p_no_of_children`, `p_blood_group`, `p_manstrul_history`, `p_caregiver_name`, `p_caregiver_relation`, `p_caregiver_phone_no`, `p_treting_cardiologist`, `p_height`, `p_weight`, `p_bmi`, `p_pm_history`, `p_category_of_heart_fail`, `p_cabg`, `p_valve_surgery`, `p_valve_surgery_value`, `p_pci_lab`, `p_lcx_lab`, `p_rca_lab`, `p_diagnosis`, `p_image`, `p_created_at`, `p_created_by`, `p_updated_at`, `p_updated_by`, `p_status`, `par_id`, `a_p_status`, `j_a_status`, `d_p_status`, `p_is_date`) VALUES
(330, '2019-09-11', '669', '427443', '', 'Fleta Conn', 'male', '0000-00-00', 48, '2186 Rippin Spurs\nEast Quinten, ID 75928', 20, 'Businessman', '40,000-60,000', 'married', '2', 'A+', 'N/A', 'SHAHEDA AKTER', 'WIFE', '01912989492', 'Dr. N A M Momenuzzaman', '168', '62', '21.97', '<p>H/O HOS ADM WITH ALVF (LMWH+)(4/8/2019)</p><p>CAG: NORMAL (8/2019)</p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-29 09:52:00', 3, '2021-11-29 10:12:00', 3, 1, 805, 0, 0, 1, 0),
(331, '2019-09-08', '666', '410785', '', 'Prof. Crawford Feest', 'male', '0000-00-00', 56, '461 Rhiannon Divide\nLake Kelli, PA 15938', 21, 'Doctor', 'Up to 60,000', 'married', '2', 'O+', 'N/A', 'DR AFROZA YESMIN', 'WIFE', '01745487218', 'Dr. N A M Momenuzzaman', '166', '68', '24.68', '<p>H/O CHEST DISCOMFORT FOR 6 MONTH</p><p>H/O CAG: DVD (2/4/2019)</p><p>S/P PTCA WITH STENTING IN RCA (9/5/2019), RCA :( 3.5X48), (3.5X16)(2.25X 18)</p><p><br></p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-29 10:31:00', 3, '2021-11-29 17:19:00', 3, 1, 0, 0, 0, 1, 0),
(332, '2019-09-29', '680', '409238', '', 'Andre Fay', 'male', '0000-00-00', 59, '5811 Pouros Rapid\nLake Leolaberg, NH 47922', 11, 'Businessman', 'Up to 60,000', 'married', '2', 'O+', 'N/A', 'A K M SHAH RIYAD', 'SON', '01716071141', 'Dr. N A M Momenuzzaman', '168', '83', '29.41', '<p>H/O CAG: DVD (21/3/2019)</p><p>S/P PTCA WITH STENTING TO LAD (3.0X 34)(21/3/2019)</p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-29 15:21:00', 3, '2021-11-29 15:38:00', 3, 1, 809, 1, 0, 1, 0),
(333, '2019-09-16', '675', '399586', '', 'Consuelo Willms Sr.', 'male', '0000-00-00', 57, '894 Julie Squares Suite 563\nErdmanhaven, CA 06764', 20, 'Engineer', '40,000-60,000', 'married', '2', 'O+', 'N/A', 'MITA SAHA', 'WIFE', '01744564164', 'Dr. N A M Momenuzzaman', '172', '61', '20.62', '', '', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-29 15:55:00', 3, '0000-00-00 00:00:00', 0, 1, 810, 1, 0, 1, 0),
(334, '2017-04-06', '290', '326424', '', 'Shanny Brown DDS', 'male', '0000-00-00', 44, '8732 Runolfsdottir Estate Apt. 564\nEmanuelview, VT 65258', 20, 'Doctor', 'Under 20,000', 'married', '1', 'A+', '', '', 'SPOUSE', '01757078007', 'Dr. N A M Momenuzzaman', '168', '79', '27.99', '<p>H/O UA hypertensive LVF (03/17)<br>H/O fever + urinary incontinence (05/170<br>CAG : non critical CAD (06/27)</p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 10:05:00', 3, '2021-12-02 02:41:00', 3, 1, 0, 0, 0, 1, 0),
(335, '2020-03-09', '805', '450759', '', 'Curt Hahn', 'male', '0000-00-00', 77, '1209 Jaskolski Turnpike Apt. 174\nNorth Wilford, PA 90123-6456', 20, 'Retired Job holder', 'Up to 60,000', 'married', '2', 'B+', 'N/A', 'BABU', 'SON', '01730338549', 'Dr. N A M Momenuzzaman', '154', '85', '35.84', '<p>H/O AF (PERMANANT) WITH FVR WITH ALVF (1/2020) </p><p>H/O CVD (2010)</p><p>KNOWN CASE OF DCM</p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 10:25:00', 3, '2021-11-30 10:35:00', 3, 1, 814, 0, 0, 1, 0),
(336, '2021-11-30', '806', '435461', '', 'Miss Jany Towne V', 'male', '0000-00-00', 50, '124 Melyssa Unions\nSouth Mollieside, ID 27471-8240', 20, 'Service holder', '40,000-60,000', 'married', '3', '', '', 'Sharmin sultana', 'spouse', '01957337721', 'Dr. N A M Momenuzzaman', '165', '57', '20.94', '<p>AMI (Extensive anterior ) (9/2019)<br>CAD-SVD (10/19)</p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818, 0, 0, 1, 0),
(337, '2020-07-01', '817', '467014', '', 'Cristobal Emard', 'male', '0000-00-00', 50, '576 Jamel Shoal Suite 754\nNorth Mayefurt, CA 51917-4796', 11, 'Farmer', '40,000-60,000', 'married', '3', 'B+', 'N/A', 'MIM', 'DAUGHTER', '01775575303', 'Dr. N A M Momenuzzaman', '170', '64', '22.15', '<p>H/O OCCASINAL CHEST PAIN</p><p>H/O CAG:&nbsp; DVD (6/2020)APOLLO, REC: PCI TO LAD, LCX</p><p><br></p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824, 0, 1, 0, 0),
(338, '1969-12-31', '486', '204229', '', 'Gideon Murazik', 'male', '0000-00-00', 47, '296 D\'Amore Squares Apt. 066\nPurdyville, CO 01335-4407', 20, 'Service holder', 'Up to 60,000', 'married', '1', '', '', 'RABEYA ALAM', 'SPOUSE', '01726880230', 'Dr. N A M Momenuzzaman', '174', '71', '23.45', '<p>H/O AMI (inf) (11/13) NHF<br>H/O AMI (Ext-Ant)NSTK+ (12/17) e ALVF e AF e FVR (UHL)<br>H/O CAD-DVD (2/18) INDIA<br>H/O hosp adm e hypovolimic shock e AGE (corrected) UHL<br>Electrolyte Imbalance e Metabolic Acidosis (7/19) UHL<br>H/O Hosp adm e SOB e COVID (6/20) UHL<br>H/O Hosp adm e ALVF (11/21) UHL<br><br></p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 825, 0, 0, 1, 0),
(339, '2020-08-28', '818', '388836', '', 'Santiago Brown', 'male', '0000-00-00', 65, '818 Parker Trail\nCletusborough, AZ 05717', 11, 'Retired Job holder', '20,000-40,000', 'married', '3', 'A+', 'N/A', 'KAMAL', 'SON', '01717852501', 'Dr. N A M Momenuzzaman', '', '', '', '<p>H/O SA(10/2018)</p><p>H/O CAG: NON CRITICAL CAG (10/2018)</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 'HFmEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-11-30 17:59:00', 3, '2021-12-08 19:18:00', 3, 1, 916, 0, 0, 1, 0),
(340, '2020-12-15', '853', '92940', '', 'Ivah Pagac DDS', 'male', '0000-00-00', 73, '49613 Wilber Springs\nEast Araceli, LA 41346-5372', 20, 'Businessman', '40,000-60,000', 'married', '2', 'O-', 'N/A', 'RAZINA', 'WIFE', '01951253878', 'Dr. N A M Momenuzzaman', '168', '69', '24.45', '<p>H/O OMI(ANT) (4/2010)</p><p>H/O   CAG: TVD (4/2020)</p><p>S/P CABG (X GRAFT)(4/2010) UHL</p><p><br></p>', 'HFrEF', '', '', '', '', '', '', '', 'assets/uploads/patients/', '2021-12-01 10:29:00', 3, '2021-12-01 10:43:00', 3, 1, 827, 0, 0, 1, 0);

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

--
-- Dumping data for table `patient_calcium`
--

INSERT INTO `patient_calcium` (`pc_id`, `p_id`, `pc_date`, `pc_value`, `pc_created_at`, `pc_created_by`, `pc_updated_at`, `pc_updated_by`, `pc_status`, `par_id`) VALUES
(75, 335, '2020-11-15', '8.79', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814);

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
(792, 10, 330, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 801),
(793, 8, 331, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 802),
(794, 10, 330, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 803),
(795, 8, 331, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 804),
(796, 10, 330, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(797, 8, 331, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 806),
(798, 8, 332, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 807),
(799, 8, 333, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 808),
(800, 8, 332, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(801, 8, 333, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 810),
(802, 8, 334, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 811),
(803, 10, 335, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 812),
(804, 10, 335, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 813),
(805, 19, 335, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 813),
(806, 10, 335, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(807, 19, 335, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(811, 8, 336, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(816, 8, 337, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 823),
(817, 8, 337, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(818, 8, 338, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 825),
(819, 8, 340, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 826),
(820, 8, 340, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 827);

-- --------------------------------------------------------

--
-- Table structure for table `patient_cbc`
--

CREATE TABLE `patient_cbc` (
  `pcbc_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pcbc_date` date NOT NULL,
  `pcbc_date_report` datetime NOT NULL,
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

--
-- Dumping data for table `patient_cbc`
--

INSERT INTO `patient_cbc` (`pcbc_id`, `p_id`, `pcbc_date`, `pcbc_date_report`, `pcbc_hb`, `pcbc_platelet`, `pcbc_tc`, `pcbc_dc`, `pcbc_dc_neutrophils`, `pcbc_dc_lymphocytes`, `pcbc_dc_monocytes`, `pcbc_dc_eosinophils`, `pcbc_dc_basophils`, `pcbc_created_at`, `pcbc_created_by`, `pcbc_updated_at`, `pcbc_updated_by`, `pcbc_status`, `par_id`) VALUES
(1217, 330, '2019-08-07', '2019-08-07 10:10:57', '14', '195000', '1110', '', '59', '32', '6', '0', '0', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1218, 332, '2020-12-06', '2020-12-06 15:37:48', '12', '131000', '6300', '', '54', '36', '9', '3', '0', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1219, 331, '2019-04-05', '2019-04-05 17:18:42', '12', '341000', '6300', '', '63', '31', '2', '2', '0', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1227, 335, '2020-01-07', '2020-01-07 10:25:25', '13', '187000', '9000', '', '54', '', '', '', '', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1230, 336, '2019-05-01', '2019-05-01 14:15:13', '12.6', '564000', '10400', '', '', '', '', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(1232, 340, '2021-03-05', '2021-03-05 10:43:19', '12', '113000', '6100', '', '55', '31', '10', '2', '0', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1240, 334, '2017-05-01', '2017-05-01 10:03:12', '13.3', '200000', '4000', '', '55', '39', '4', '2', '0', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1241, 334, '2019-01-01', '2019-01-01 10:04:20', '16.5', '227000', '7000', '', '61', '31', '3', '3', '0', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1304, 339, '2018-10-28', '2018-10-28 19:17:55', '15.6', '211000', '7400', '', '', '', '', '', '', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_comorbidities`
--

INSERT INTO `patient_comorbidities` (`pc_id`, `p_id`, `c_id`, `pc_created_at`, `pc_created_by`, `pc_updated_at`, `pc_updated_by`, `pc_status`, `par_id`) VALUES
(876, 331, 15, '2021-11-29 10:31:00', 3, '0000-00-00 00:00:00', 0, 0, 806),
(877, 332, 15, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 809),
(878, 332, 15, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 809),
(879, 332, 15, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(880, 331, 15, '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(883, 335, 14, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0, 0, 814),
(884, 335, 14, '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(886, 336, 15, '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(888, 337, 13, '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(889, 337, 15, '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(890, 338, 14, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 825),
(891, 338, 27, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 825),
(892, 339, 15, '2021-11-30 17:59:00', 3, '0000-00-00 00:00:00', 0, 0, 916),
(896, 340, 14, '2021-12-01 10:29:00', 3, '0000-00-00 00:00:00', 0, 0, 827),
(897, 340, 15, '2021-12-01 10:29:00', 3, '0000-00-00 00:00:00', 0, 0, 827),
(898, 340, 14, '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(899, 340, 15, '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1006, 339, 15, '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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
  `pecg_date_report` datetime NOT NULL,
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

--
-- Dumping data for table `patient_ecg`
--

INSERT INTO `patient_ecg` (`pecg_id`, `p_id`, `pecg_date`, `pecg_date_report`, `pecg_findings`, `pecg_rhythmc_sinus`, `pecg_qrs`, `pecg_rbb_OR_lbb`, `pecg_heart_block`, `pecg_qt`, `pecg_ex_beats`, `pecg_ex_beats_sub_category`, `pecg_others`, `pecg_created_at`, `pecg_created_by`, `pecg_updated_at`, `pecg_updated_by`, `pecg_status`, `par_id`, `pecg_isvalid`) VALUES
(1948, 330, '2019-09-13', '2019-09-13 09:58:37', 'Sinus Bradycardia', 'SINUS', '108', NULL, '0', '448/466', 'No', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, 0),
(1949, 330, '2021-09-16', '2021-09-16 09:59:29', 'Sinus Bradycardia', 'SINUS', '108', NULL, '0', '414/411', 'No', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, 0),
(1954, 332, '2019-03-07', '2019-03-07 15:18:34', 'OMI(INF)', 'SINUS', '120', NULL, '0', '370/446', 'No', '', '', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809, 0),
(1955, 332, '2021-10-06', '2021-10-06 15:19:42', 'OMI(INF)', 'SINUS', '120', NULL, '0', '384/421', 'No', '', '', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809, 0),
(1956, 331, '2019-09-08', '2019-09-08 17:03:23', 'OMI(INF)', 'SINUS', '124', NULL, '0', '424/440', 'No', '', '', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(1957, 331, '2021-01-20', '2021-01-20 17:04:14', 'OMI(INF)', 'SINUS', '130', NULL, '0', '424/440', 'No', '', '', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(1964, 335, '2020-03-09', '2020-03-09 10:12:24', '', 'AF', '', NULL, '0', '', 'No', '', '', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814, 0),
(1967, 336, '2019-09-01', '2019-09-01 13:38:25', '', 'SINUS', '92', NULL, '0', '364/502', 'No', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818, 0),
(1968, 336, '2021-06-01', '2021-06-01 13:39:30', '', 'SINUS', '100', NULL, '0', '416/456', 'No', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818, 0),
(1970, 337, '2020-09-07', '2020-09-07 16:19:58', 'S. BRADYCARDIA', 'SINUS', '90', NULL, '0', '458/391', 'No', '', '', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824, 0),
(1971, 337, '2021-01-07', '2021-01-07 16:20:52', 'OMI(ANT), ', 'SINUS', '98', NULL, '0', '440/429', 'No', '', '', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824, 0),
(1977, 340, '2020-12-15', '2020-12-15 10:21:23', 'QMI(ANT)', 'SINUS', '110', NULL, '0', '', 'No', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, 0),
(1990, 334, '2017-03-12', '2017-03-12 09:39:21', '', 'SINUS', '94', NULL, '0', '', 'No', '', 'LVH', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(1991, 334, '2019-01-17', '2019-01-17 09:39:44', '', 'SINUS', '94', NULL, '0', '', 'No', '', '', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(2139, 339, '2021-01-04', '2021-01-04 17:52:54', 'LBBB', 'SINUS', '154', NULL, '0', '158', 'No', '', '430/460', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916, 0);

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
(78, 935, 'NONE', '2021-09-20 10:35:00', 3, '0000-00-00 00:00:00', 0, 1),
(705, 2139, 'LBBB', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_echo`
--

CREATE TABLE `patient_echo` (
  `pecho_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pecho_date` date NOT NULL,
  `pecho_date_report` datetime NOT NULL,
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

--
-- Dumping data for table `patient_echo`
--

INSERT INTO `patient_echo` (`pecho_id`, `p_id`, `pecho_date`, `pecho_date_report`, `pecho_lvid`, `pecho_ef`, `pecho_rvsp`, `pecho_rwma`, `pecho_d_by_d`, `pecho_mr`, `pecho_la`, `pecho_lvids`, `pecho_ef_by_teichholz`, `pecho_by_simpsons_method`, `pecho_mitral_annulus`, `pecho_vti`, `pecho_gls`, `pecho_comment`, `pecho_fs`, `pecho_created_at`, `pecho_created_by`, `pecho_updated_at`, `pecho_updated_by`, `pecho_status`, `par_id`, `pecho_stroke_volume`) VALUES
(4190, 330, '2019-08-05', '2019-08-05 09:59:57', '53', '47', '', '', '', '', '', '40', '', '', '', '', '', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, ''),
(4191, 330, '2019-11-04', '2019-11-04 10:01:35', '57', '30', '', '', '', '', '', '49', '', '', '', '', '', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, ''),
(4192, 330, '2019-12-04', '2019-12-04 10:02:03', '53', '45', '', '', '', '', '', '41', '', '', '', '', '', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, ''),
(4193, 330, '2021-09-08', '2021-09-08 10:02:27', '55', '56', '', '', '', '', '', '38', '', '', '', '', '', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805, ''),
(4199, 332, '2019-03-08', '2019-03-08 15:20:23', '64', '35', '', '', '', '', '', '54', '', '', '', '', '', '', '', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809, ''),
(4200, 332, '2019-09-06', '2019-09-06 15:21:40', '62', '45', '', '', '', '', '', '55', '', '', '', '', '', '', '', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809, ''),
(4201, 332, '2021-10-11', '2021-10-11 15:26:42', '59', '45', '27', '', '', '', '', '45', '', '', '', '', '', '', '', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809, ''),
(4202, 331, '2019-03-06', '2019-03-06 17:04:41', '70', '26', '', '', '', '', '', '62', '', '', '', '', '', '', '', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4203, 331, '2019-05-06', '2019-05-06 17:05:18', '61', '30', '', '', '', '', '', '54', '', '', '', '', '', '', '', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4204, 331, '2019-09-09', '2019-09-09 17:05:46', '61', '38', '', '', '', '', '', '50', '', '', '', '', '', '', '', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4219, 335, '2020-01-06', '2020-01-06 10:13:01', '56', '33', '50', '', '', '', '', '47', '', '', '', '', '', '', '', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814, ''),
(4220, 335, '2021-05-06', '2021-05-06 10:14:12', '57', '39', '', '', '', '', '', '46', '', '', '', '', '', '', '', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814, ''),
(4225, 336, '1969-12-31', '1969-12-31 13:41:02', '50', '33', '35', '+', '', '', '35', '32', '', '', '', '', '', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818, ''),
(4226, 336, '2021-06-03', '2021-06-03 13:43:23', '51', '20', '33', '', '', '1', '', '41', '', '', '', '', '', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818, ''),
(4228, 337, '2020-06-06', '2020-06-06 16:21:28', '63', '28', '', '', '', '', '', '54', '', '', '', '', '', '', '', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824, ''),
(4229, 337, '2020-10-03', '2020-10-03 16:21:58', '55', '30', '', '', '', '', '', '48', '', '', '', '', '', '', '', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824, ''),
(4240, 340, '2010-02-03', '2010-02-03 10:27:49', '66', '40', '', '', '', '', '', '53', '', '', '', '', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, ''),
(4241, 340, '2019-02-06', '2019-02-06 10:29:06', '77', '35', '', '', '', '', '', '64', '', '', '', '', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, ''),
(4242, 340, '2019-04-03', '2019-04-03 10:34:08', '71', '34', '23', '', '', '', '', '60', '', '', '', '', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, ''),
(4243, 340, '2020-03-07', '2020-03-07 10:35:28', '71', '35', '50', '', '', '', '', '59', '', '', '', '', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, ''),
(4244, 340, '2021-03-04', '2021-03-04 10:35:55', '71', '33', '36', '', '', '', '', '59', '', '', '', '', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827, ''),
(4267, 334, '2017-04-12', '2017-04-12 09:43:50', '59', '45', '25', '+', '', '', '', '45', '', '', '', '', '', '', '', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4268, 334, '2017-05-01', '2017-05-01 09:50:49', '57', '49', '', '+', '', '', '', '42', '', '', '', '', '', '', '', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4269, 334, '2017-06-01', '2017-06-01 09:51:11', '45', '55', '', '+', '', '', '', '33', '', '', '', '', '', '', '', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4270, 334, '2019-01-17', '2019-01-17 09:55:24', '55', '55', '38', '', '', '', '', '39', '', '', '', '', '', '', '', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, ''),
(4556, 339, '2018-10-05', '2018-10-05 17:54:06', '59', '44', '', '', '', '1+', '', '49', '', '', '', '', '', '', '', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916, ''),
(4557, 339, '2021-01-07', '2021-01-07 17:54:55', '59', '44', '', '+', '', '1+', '', '47', '', '', '', '', '', '', '', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916, '');

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

--
-- Dumping data for table `patient_glucose`
--

INSERT INTO `patient_glucose` (`pg_id`, `p_id`, `pg_date`, `pg_fbs`, `pg_rbs`, `pg_2hab`, `pg_hba1c`, `pg_created_at`, `pg_created_by`, `pg_updated_at`, `pg_updated_by`, `pg_status`, `par_id`) VALUES
(440, 330, '2021-01-10', '7', '9.4', '', '', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(443, 335, '2020-06-08', '10', '', '', '6.2', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(444, 335, '2021-01-04', '', '', '', '7.46', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(445, 336, '2019-10-01', '', '5.23', '', '', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(446, 340, '2021-03-07', '5.59', '', '', '', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(496, 339, '2018-10-28', '', '18.51', '', '', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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
(2, 24, 'Any shortness of breath', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(6, 91, 'Any shortness of breath', '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(7, 91, 'Decreasing tolerance to daily activities', '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(11, 116, 'Decreasing tolerance to daily activities', '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(12, 116, 'Loss of appetite', '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(13, 121, 'Low BP', '2021-10-27 09:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(17, 162, 'Loss of appetite', '2021-11-04 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 502, 'Loss of appetite', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(30, 502, 'Fainting', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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
(802, 4, 330, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 801),
(803, 4, 331, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 802),
(804, 4, 330, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 803),
(805, 4, 331, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 804),
(806, 4, 330, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(807, 4, 331, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 806),
(808, 4, 332, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 807),
(809, 4, 333, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 808),
(810, 4, 332, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(811, 4, 333, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 810),
(812, 4, 334, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 811),
(813, 4, 335, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 812),
(814, 4, 335, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 813),
(815, 4, 335, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(819, 4, 336, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(824, 4, 337, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 823),
(825, 4, 337, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(826, 4, 338, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 825),
(827, 4, 340, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 826),
(828, 4, 340, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(923, 4, 339, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 916),
(924, 5, 339, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_lipid`
--

INSERT INTO `patient_lipid` (`pl_id`, `p_id`, `pl_date`, `pl_tc`, `pl_ldl`, `pl_hdl`, `pl_tc_hdl_ratio`, `pl_tg`, `pl_created_at`, `pl_created_by`, `pl_updated_at`, `pl_updated_by`, `pl_status`, `par_id`) VALUES
(1576, 330, '2019-08-07', '230', '135', '41', '230:41', '175', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1577, 330, '2019-09-09', '91', '53', '25', '91:25', '97', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1578, 332, '2019-09-09', '103', '55', '34', '103:34', '52', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1579, 332, '2020-12-05', '115', '62', '46', '5:2', '63', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1580, 331, '2019-03-06', '167', '112', '35', '167:35', '98', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1581, 331, '2020-08-06', '168', '93', '40', '21:5', '175', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1591, 335, '2020-06-06', '145', '71', '32', '145:32', '209', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1592, 335, '2021-11-07', '129', '61', '30', '43:10', '199', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1596, 336, '2019-09-01', '141', '73', '27', '47:9', '203', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(1597, 336, '2021-06-03', '174', '108', '25', '174:25', '331', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(1600, 340, '2010-11-11', '121', '69', '23', '121:23', '254', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1601, 340, '2021-03-02', '104', '62', '28', '26:7', '168', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1608, 334, '2017-07-01', '106', '45', '24', '53:12', '186', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1609, 334, '2021-11-29', '176', '129', '25', '176:25', '174', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

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

--
-- Dumping data for table `patient_magnesium`
--

INSERT INTO `patient_magnesium` (`pm_id`, `p_id`, `pm_date`, `pm_value`, `pm_created_at`, `pm_created_by`, `pm_updated_at`, `pm_updated_by`, `pm_status`, `par_id`) VALUES
(57, 335, '2020-11-15', '2.27', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814);

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
(3, 28, '-1', '-1', '-1', '-1', '', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(8, 91, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(9, 22, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-10-13 10:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(12, 107, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-10-19 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(19, 116, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', 'No', '', '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(20, 115, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', 'No', '', '2021-10-27 09:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(21, 121, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', 'No', '', '2021-10-27 09:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 72, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-10-27 09:35:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 120, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', 'No', '', '2021-10-28 10:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(26, 239, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-11-01 15:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 180, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-11-04 16:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 162, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-11-04 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(30, 174, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', '-1', '', '2021-11-08 15:45:00', 3, '0000-00-00 00:00:00', 0, 1),
(31, 260, 'Patient has all pill and taken all doses correctly everyday', '-1', '-1', 'No', '', '2021-11-13 18:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(65, 502, '-1', 'Patient has all pills but misses some doses', '-1', 'No', '', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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
(3, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(8, 91, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 2, 1, 5, 2, 0, 0, 0, 4, 5, 0, 5, 44, 2, '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(9, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2021-10-13 10:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(12, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2021-10-19 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(19, 116, 2, 2, 2, 1, 1, 3, 2, 2, 2, 0, 4, 4, 5, 5, 3, 0, 1, 5, 5, 3, 5, 57, 3, '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(20, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2021-10-27 09:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(21, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2021-10-27 09:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, '2021-10-27 09:35:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2021-10-28 10:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(26, 239, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, '2021-11-01 15:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2021-11-04 16:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 162, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1, 4, 0, 0, 0, 0, 0, 1, 0, 1, 20, 1, '2021-11-04 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(30, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2021-11-08 15:45:00', 3, '0000-00-00 00:00:00', 0, 1),
(31, 260, 0, 1, 1, 1, 2, 0, 0, 0, 0, 3, 0, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, '2021-11-13 18:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(65, 502, 2, 1, 1, 2, 2, 0, 0, 1, 3, 2, 1, 4, 3, 2, 1, 2, 3, 3, 1, 2, 4, 40, 2, '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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
(2, 24, 2, 'Side effect', '2021-09-16 18:02:00', 3, '0000-00-00 00:00:00', 0, 1),
(8, 502, 49, 'Side effect', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(9, 502, 487, 'Financial Condition', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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

--
-- Dumping data for table `patient_nt_pro_bnp`
--

INSERT INTO `patient_nt_pro_bnp` (`pnpb_id`, `p_id`, `pnpb_date`, `pnpb_value`, `pnpb_created_at`, `pnpb_created_by`, `pnpb_updated_at`, `pnpb_updated_by`, `pnpb_status`, `par_id`) VALUES
(206, 330, '2019-11-08', '643', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(210, 335, '2020-09-08', '187', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(211, 335, '2021-10-12', '4290', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814);

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
(3, 28, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '', '', '-1', '-1', '-1', '-1', '-1', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(8, 91, '-1', '-1', '-1', '-1', '-1', 'Required occasional assistance and frequent medical care (NYHA-III)', '-1', 'No', '100/60', 'Low', 'As loafer', '', '', 'Yes', 'No', '-1', '-1', '2', '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(9, 22, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '', '-1', 'Dearly', '', '', 'Yes', 'Yes', '-1', '-1', '5', '2021-10-13 10:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(12, 107, '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '', '-1', '-1', '', '', 'Yes', 'Irregular', '-1', '-1', '5', '2021-10-19 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(19, 116, '-1', '-1', '-1', '-1', '-1', '-1', 'Can\'t do any work without assistant (NYHA-IV)', '-1', '', '-1', 'As loafer', '', '', 'Yes', 'No', '-1', '-1', '1', '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(20, 115, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '', '-1', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-10-27 09:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(21, 121, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '100/70', 'Normal', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-10-27 09:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 72, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '100/79', 'Normal', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-10-27 09:35:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 120, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '100/70', 'Normal', 'Dearly', '', '', 'Yes', 'Yes', '-1', '-1', '4', '2021-10-28 10:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(26, 239, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-11-01 15:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 180, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '110/80', '-1', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-11-04 16:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 162, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', 'No', '80/60', 'Low', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '3', '2021-11-04 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(30, 174, 'Normal no complains, no evidence of disease (NYHA-I)', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '140/60', 'Normal', 'Dearly', '', '', 'Yes', 'Irregular', '-1', '-1', '4', '2021-11-08 15:45:00', 3, '0000-00-00 00:00:00', 0, 1),
(31, 260, '-1', 'Able to carry on normal activity, minor sign or symptoms of disease (NYHA-II)', '-1', '-1', '-1', '-1', '-1', 'No', '', '-1', 'As before', '', '', 'Yes', 'Irregular', '-1', '-1', '3', '2021-11-13 18:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(65, 502, '-1', '-1', 'Normal Activity with effort, some sign or symptoms of disease (NYHA-II)', '-1', '-1', '-1', '-1', 'No', '80/120', 'Normal', 'As before', '5', '4', 'Yes', 'No', '-1', '-1', '4', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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

--
-- Dumping data for table `patient_phone_no`
--

INSERT INTO `patient_phone_no` (`pp_id`, `pp_number`, `p_id`, `pp_created_at`, `pp_created_by`, `pp_updated_at`, `pp_updated_by`, `pp_status`, `par_id`) VALUES
(1306, '01762539988', 330, '2021-11-29 09:52:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1307, '01762539988', 330, '2021-11-29 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1308, '01762539988', 330, '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1309, '01556308014', 331, '2021-11-29 10:31:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1310, '01718388159', 332, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1311, '01718388159', 332, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1312, '01718388159', 332, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1313, '01707793986', 333, '2021-11-29 15:55:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1314, '01556308014', 331, '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1317, '01732000000', 334, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1318, '01713190095', 335, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1319, '01713190095', 335, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1320, '01713190095', 335, '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1321, '01713190095', 335, '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1323, '01985004422', 336, '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1325, '01931043330', 337, '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1326, '01712941619', 338, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1327, '01717852501', 339, '2021-11-30 17:59:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1329, '01726904575', 340, '2021-12-01 10:29:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(1330, '01726904575', 340, '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1343, '01732000000', 334, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1458, '01717852501', 339, '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

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

--
-- Dumping data for table `patient_prescription_rules`
--

INSERT INTO `patient_prescription_rules` (`ppr_id`, `p_id`, `pr_id`, `par_id`, `ppr_created_at`, `ppr_created_by`, `ppr_updated_at`, `ppr_updated_by`, `ppr_status`) VALUES
(4150, 331, 1, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(4151, 331, 2, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(4152, 331, 3, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(4153, 331, 4, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(4154, 330, 1, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4155, 330, 2, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4156, 330, 3, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4157, 330, 4, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4158, 331, 1, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(4159, 331, 2, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(4160, 331, 3, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(4161, 331, 4, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(4162, 330, 1, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(4163, 330, 2, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(4164, 330, 3, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(4165, 330, 4, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(4166, 331, 1, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4167, 331, 2, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4168, 331, 3, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4169, 331, 4, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4170, 330, 1, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4171, 330, 2, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4172, 330, 3, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4173, 330, 4, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(4174, 332, 1, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(4175, 332, 2, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(4176, 332, 3, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(4177, 332, 4, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(4178, 333, 1, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(4179, 333, 2, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(4180, 333, 3, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(4181, 333, 4, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(4182, 335, 1, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(4183, 335, 2, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(4184, 335, 3, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(4185, 335, 4, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(4186, 335, 1, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(4187, 335, 2, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(4188, 335, 3, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(4189, 335, 4, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(4190, 335, 1, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(4191, 335, 2, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(4192, 335, 3, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(4193, 335, 4, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(4194, 335, 1, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(4195, 335, 2, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(4196, 335, 3, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(4197, 335, 4, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(4234, 337, 1, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(4235, 337, 2, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(4236, 337, 3, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(4237, 337, 4, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(4238, 337, 1, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4239, 337, 2, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4240, 337, 3, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4241, 337, 4, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(4242, 340, 1, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(4243, 340, 2, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(4244, 340, 3, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(4245, 340, 4, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(4246, 340, 1, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(4247, 340, 2, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(4248, 340, 3, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(4249, 340, 4, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(4287, 334, 1, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(4288, 334, 2, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(4289, 334, 3, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(4290, 334, 4, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(4291, 338, 1, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(4292, 338, 2, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(4293, 338, 3, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(4294, 338, 4, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(4295, 336, 1, 818, '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(4296, 336, 2, 818, '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(4297, 336, 3, 818, '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(4298, 336, 4, 818, '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1),
(4635, 339, 1, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(4636, 339, 2, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(4637, 339, 3, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(4638, 339, 4, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(4639, 339, 1, 916, '2021-12-08 20:12:00', 4, '0000-00-00 00:00:00', 0, 1),
(4640, 339, 2, 916, '2021-12-08 20:12:00', 4, '0000-00-00 00:00:00', 0, 1),
(4641, 339, 3, 916, '2021-12-08 20:12:00', 4, '0000-00-00 00:00:00', 0, 1),
(4642, 339, 4, 916, '2021-12-08 20:12:00', 4, '0000-00-00 00:00:00', 0, 1);

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

--
-- Dumping data for table `patient_recent_hospitalization`
--

INSERT INTO `patient_recent_hospitalization` (`prh_id`, `rh_id`, `p_id`, `rh_date`, `rh_reasons`, `prh_created_at`, `prh_created_by`, `prh_updated_at`, `prh_updated_by`, `prh_status`, `par_id`) VALUES
(698, 20, 330, '2019-08-07', 'ALVF', '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 801),
(699, 21, 331, '0000-00-00', '', '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 802),
(700, 21, 330, '0000-00-00', '', '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 803),
(701, 21, 331, '0000-00-00', '', '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 804),
(702, 21, 330, '0000-00-00', '', '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(703, 21, 331, '0000-00-00', '', '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 806),
(704, 21, 332, '0000-00-00', '', '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 807),
(705, 21, 333, '0000-00-00', '', '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 808),
(706, 21, 332, '0000-00-00', '', '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(707, 21, 333, '0000-00-00', '', '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 810),
(708, 20, 335, '2020-01-02', 'AE WITH ALVF', '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 812),
(709, 21, 335, '0000-00-00', '', '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 813),
(710, 21, 335, '0000-00-00', '', '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(714, 21, 336, '0000-00-00', '', '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(719, 21, 337, '0000-00-00', '', '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 823),
(720, 21, 337, '0000-00-00', '', '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(721, 21, 340, '0000-00-00', '', '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 826),
(722, 21, 340, '0000-00-00', '', '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(794, 21, 339, '0000-00-00', '', '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_risk_factor`
--

INSERT INTO `patient_risk_factor` (`prf_id`, `p_id`, `rf_id`, `prf_created_at`, `prf_created_by`, `prf_updated_at`, `prf_updated_by`, `prf_status`, `rf_id_status`, `par_id`) VALUES
(2285, 330, 15, '2021-11-29 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 805),
(2286, 330, 28, '2021-11-29 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 16, 805),
(2287, 330, 18, '2021-11-29 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 805),
(2288, 330, 15, '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 805),
(2289, 330, 28, '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 805),
(2290, 330, 18, '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 805),
(2291, 332, 15, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 809),
(2292, 332, 28, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 16, 809),
(2293, 332, 18, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 809),
(2294, 332, 32, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0, 0, 19, 809),
(2295, 332, 15, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 809),
(2296, 332, 28, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 16, 809),
(2297, 332, 18, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 809),
(2298, 332, 32, '2021-11-29 15:32:00', 3, '0000-00-00 00:00:00', 0, 0, 19, 809),
(2299, 332, 15, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 809),
(2300, 332, 28, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 809),
(2301, 332, 18, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 809),
(2302, 332, 32, '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 19, 809),
(2310, 334, 15, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 811),
(2311, 334, 28, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 16, 811),
(2312, 334, 17, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 811),
(2313, 334, 18, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 811),
(2314, 334, 30, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 19, 811),
(2315, 334, 20, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 811),
(2316, 335, 28, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0, 0, 16, 814),
(2317, 335, 35, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0, 0, 34, 814),
(2318, 335, 28, '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 814),
(2319, 335, 35, '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 34, 814),
(2322, 336, 30, '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 19, 818),
(2325, 337, 28, '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 824),
(2326, 338, 15, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 825),
(2327, 338, 28, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 825),
(2328, 338, 17, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 825),
(2329, 338, 18, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 825),
(2330, 338, 32, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 19, 825),
(2331, 339, 15, '2021-11-30 17:59:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 916),
(2335, 340, 15, '2021-12-01 10:29:00', 3, '0000-00-00 00:00:00', 0, 0, 0, 827),
(2336, 340, 15, '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 827),
(2351, 334, 15, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(2352, 334, 28, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 16, 0),
(2353, 334, 17, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(2354, 334, 18, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(2355, 334, 30, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 19, 0),
(2356, 334, 20, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 0),
(2582, 339, 15, '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 0, 916);

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
(18208, 330, 19, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18209, 330, 20, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18210, 330, 25, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18211, 330, 27, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18212, 330, 29, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18213, 330, 31, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18214, 330, 32, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18215, 330, 60, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18216, 330, 58, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18217, 330, 55, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18218, 330, 52, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18219, 330, 50, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18220, 330, 47, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18221, 330, 43, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18222, 330, 41, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18223, 330, 38, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18224, 330, 61, 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18225, 331, 19, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18226, 331, 20, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18227, 331, 25, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18228, 331, 27, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18229, 331, 29, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18230, 331, 31, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18231, 331, 32, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18232, 331, 60, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18233, 331, 58, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18234, 331, 55, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18235, 331, 52, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18236, 331, 50, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18237, 331, 47, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18238, 331, 43, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18239, 331, 41, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18240, 331, 38, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18241, 331, 61, 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18242, 330, 19, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18243, 330, 20, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18244, 330, 25, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18245, 330, 27, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18246, 330, 29, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18247, 330, 31, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18248, 330, 33, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18249, 330, 60, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18250, 330, 58, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18251, 330, 55, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18252, 330, 52, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18253, 330, 49, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18254, 330, 47, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18255, 330, 43, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18256, 330, 41, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18257, 330, 38, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18258, 330, 61, 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18259, 331, 19, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18260, 331, 20, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18261, 331, 25, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18262, 331, 27, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18263, 331, 29, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18264, 331, 31, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18265, 331, 33, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18266, 331, 60, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18267, 331, 58, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18268, 331, 55, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18269, 331, 52, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18270, 331, 49, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18271, 331, 47, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18272, 331, 43, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18273, 331, 41, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18274, 331, 38, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18275, 331, 61, 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18276, 330, 19, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18277, 330, 20, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18278, 330, 25, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18279, 330, 27, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18280, 330, 29, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18281, 330, 31, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18282, 330, 33, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18283, 330, 60, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18284, 330, 58, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18285, 330, 56, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18286, 330, 52, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18287, 330, 49, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18288, 330, 48, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18289, 330, 45, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18290, 330, 41, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18291, 330, 38, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18292, 330, 61, 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18293, 331, 19, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18294, 331, 20, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18295, 331, 25, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18296, 331, 27, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18297, 331, 29, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18298, 331, 31, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18299, 331, 33, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18300, 331, 60, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18301, 331, 58, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18302, 331, 56, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18303, 331, 52, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18304, 331, 50, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18305, 331, 48, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18306, 331, 43, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18307, 331, 41, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18308, 331, 38, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18309, 331, 61, 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18310, 332, 19, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18311, 332, 20, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18312, 332, 25, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18313, 332, 27, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18314, 332, 29, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18315, 332, 31, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18316, 332, 33, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18317, 332, 60, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18318, 332, 58, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18319, 332, 55, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18320, 332, 52, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18321, 332, 50, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18322, 332, 47, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18323, 332, 43, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18324, 332, 41, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18325, 332, 38, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18326, 332, 61, 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18327, 333, 19, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18328, 333, 20, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18329, 333, 25, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18330, 333, 27, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18331, 333, 29, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18332, 333, 31, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18333, 333, 33, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18334, 333, 60, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18335, 333, 58, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18336, 333, 55, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18337, 333, 52, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18338, 333, 50, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18339, 333, 48, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18340, 333, 43, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18341, 333, 41, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18342, 333, 38, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18343, 333, 61, 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18344, 332, 19, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18345, 332, 20, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18346, 332, 25, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18347, 332, 27, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18348, 332, 29, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18349, 332, 31, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18350, 332, 32, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18351, 332, 59, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18352, 332, 58, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18353, 332, 56, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18354, 332, 52, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18355, 332, 50, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18356, 332, 48, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18357, 332, 45, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18358, 332, 41, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18359, 332, 38, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18360, 332, 61, 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18361, 333, 19, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18362, 333, 20, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18363, 333, 25, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18364, 333, 27, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18365, 333, 29, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18366, 333, 31, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18367, 333, 32, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18368, 333, 60, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18369, 333, 58, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18370, 333, 56, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18371, 333, 52, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18372, 333, 50, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18373, 333, 48, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18374, 333, 43, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18375, 333, 41, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18376, 333, 38, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18377, 333, 61, 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18378, 334, 18, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18379, 334, 22, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18380, 334, 25, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18381, 334, 27, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18382, 334, 29, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18383, 334, 31, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18384, 334, 32, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18385, 334, 60, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18386, 334, 58, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18387, 334, 55, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18388, 334, 52, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18389, 334, 49, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18390, 334, 47, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18391, 334, 45, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18392, 334, 41, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18393, 334, 38, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18394, 334, 61, 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18395, 335, 18, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18396, 335, 21, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18397, 335, 25, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18398, 335, 27, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18399, 335, 29, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18400, 335, 31, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18401, 335, 32, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18402, 335, 60, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18403, 335, 58, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18404, 335, 55, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18405, 335, 52, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18406, 335, 50, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18407, 335, 47, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18408, 335, 43, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18409, 335, 42, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18410, 335, 38, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18411, 335, 61, 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18412, 335, 18, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18413, 335, 22, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18414, 335, 25, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18415, 335, 27, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18416, 335, 29, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18417, 335, 30, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18418, 335, 32, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18419, 335, 59, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18420, 335, 58, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18421, 335, 54, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18422, 335, 52, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18423, 335, 49, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18424, 335, 46, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18425, 335, 45, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18426, 335, 42, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18427, 335, 38, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18428, 335, 61, 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18429, 335, 18, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18430, 335, 21, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18431, 335, 25, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18432, 335, 27, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18433, 335, 29, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18434, 335, 31, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18435, 335, 32, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18436, 335, 59, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18437, 335, 58, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18438, 335, 55, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18439, 335, 52, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18440, 335, 50, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18441, 335, 48, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18442, 335, 45, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18443, 335, 41, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18444, 335, 38, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18445, 335, 61, 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18497, 336, 18, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18498, 336, 22, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18499, 336, 25, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18500, 336, 27, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18501, 336, 29, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18502, 336, 31, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18503, 336, 32, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18504, 336, 60, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18505, 336, 58, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18506, 336, 55, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18507, 336, 52, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18508, 336, 49, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18509, 336, 47, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18510, 336, 45, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18511, 336, 42, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18512, 336, 38, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18513, 336, 61, 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18582, 337, 19, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18583, 337, 20, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18584, 337, 25, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18585, 337, 27, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18586, 337, 29, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18587, 337, 31, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18588, 337, 33, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18589, 337, 60, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18590, 337, 58, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18591, 337, 55, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18592, 337, 52, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18593, 337, 50, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18594, 337, 48, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18595, 337, 43, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18596, 337, 41, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18597, 337, 38, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18598, 337, 61, 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18599, 337, 19, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18600, 337, 20, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18601, 337, 25, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18602, 337, 27, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18603, 337, 29, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18604, 337, 31, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18605, 337, 32, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18606, 337, 59, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18607, 337, 58, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18608, 337, 55, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18609, 337, 52, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18610, 337, 49, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18611, 337, 46, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18612, 337, 43, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18613, 337, 41, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18614, 337, 38, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18615, 337, 61, 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18616, 338, 18, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18617, 338, 21, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18618, 338, 25, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18619, 338, 26, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18620, 338, 29, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18621, 338, 31, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18622, 338, 32, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18623, 338, 60, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18624, 338, 58, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18625, 338, 53, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18626, 338, 51, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18627, 338, 50, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18628, 338, 46, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18629, 338, 43, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18630, 338, 42, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18631, 338, 38, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18632, 338, 61, 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18633, 340, 18, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18634, 340, 21, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18635, 340, 25, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18636, 340, 27, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18637, 340, 28, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18638, 340, 31, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18639, 340, 32, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18640, 340, 59, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18641, 340, 57, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18642, 340, 55, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18643, 340, 52, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18644, 340, 50, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18645, 340, 48, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18646, 340, 43, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18647, 340, 42, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18648, 340, 38, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18649, 340, 35, 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(18650, 340, 18, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(18651, 340, 21, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(18652, 340, 25, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(18653, 340, 27, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(18654, 340, 28, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(18655, 340, 31, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(18656, 340, 32, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(18657, 340, 60, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(18658, 340, 58, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(18659, 340, 55, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(18660, 340, 52, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(18661, 340, 50, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(18662, 340, 47, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(18663, 340, 44, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(18664, 340, 42, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(18665, 340, 38, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(18666, 340, 35, 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1, 17),
(20282, 339, 19, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 1),
(20283, 339, 20, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 2),
(20284, 339, 25, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 3),
(20285, 339, 27, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 4),
(20286, 339, 28, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 5),
(20287, 339, 30, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 6),
(20288, 339, 33, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 7),
(20289, 339, 60, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 8),
(20290, 339, 58, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 9),
(20291, 339, 55, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 10),
(20292, 339, 52, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 11),
(20293, 339, 50, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 12),
(20294, 339, 47, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 13),
(20295, 339, 43, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 14),
(20296, 339, 42, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 15),
(20297, 339, 38, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 16),
(20298, 339, 61, 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1, 17);

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
(433, 331, 802, '2019-11-09', '2021-11-29 12:00:00', 4, '2021-11-29 14:59:00', 4, 0, 0),
(434, 330, 801, '1969-12-31', '2021-11-29 12:02:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(435, 330, 801, '2019-11-11', '2021-11-29 12:06:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(436, 331, 804, '2020-05-18', '2021-11-29 14:32:00', 4, '2021-11-29 14:59:00', 4, 0, 0),
(437, 330, 803, '2020-05-26', '2021-11-29 14:37:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(438, 331, 806, '2021-09-06', '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(439, 330, 805, '2022-01-04', '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(440, 332, 807, '2019-11-30', '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(441, 333, 808, '2019-11-16', '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(442, 335, 812, '2021-01-21', '2021-11-30 11:08:00', 4, '2021-11-30 12:02:00', 4, 0, 0),
(443, 335, 813, '2021-01-21', '2021-11-30 11:45:00', 4, '2021-11-30 12:02:00', 4, 0, 0),
(444, 335, 814, '2022-01-13', '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(452, 337, 823, '2020-09-01', '2021-11-30 16:40:00', 4, '2021-11-30 16:59:00', 4, 0, 0),
(453, 337, 824, '2021-03-13', '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(454, 340, 826, '2021-02-15', '2021-12-01 10:55:00', 4, '2021-12-01 11:10:00', 4, 0, 0),
(455, 340, 827, '2020-05-09', '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(463, 334, 811, '2022-02-01', '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(464, 338, 825, '2022-02-01', '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(465, 336, 818, '2020-12-28', '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(539, 339, 916, '2021-04-03', '2021-12-08 20:09:00', 4, '2021-12-08 20:12:00', 4, 1, 0);

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
(496, 331, 802, '2019-09-29', '2021-11-29 12:00:00', 4, '2021-11-29 14:59:00', 4, 0, 0),
(497, 330, 801, '1969-12-31', '2021-11-29 12:02:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(498, 330, 801, '2019-10-02', '2021-11-29 12:06:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(499, 331, 804, '2020-03-18', '2021-11-29 14:32:00', 4, '2021-11-29 14:59:00', 4, 0, 0),
(500, 330, 803, '2020-03-26', '2021-11-29 14:37:00', 4, '2021-11-29 15:06:00', 4, 0, 0),
(501, 331, 806, '2021-07-06', '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(502, 330, 805, '2021-11-04', '2021-11-29 15:06:00', 4, '2021-12-18 12:55:00', 3, 0, 3),
(503, 332, 807, '2019-10-20', '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(504, 333, 808, '2019-10-07', '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(508, 335, 812, '2020-12-12', '2021-11-30 11:08:00', 4, '2021-11-30 12:02:00', 4, 0, 0),
(509, 335, 813, '2020-12-12', '2021-11-30 11:45:00', 4, '2021-11-30 12:02:00', 4, 0, 0),
(510, 335, 814, '2021-12-04', '2021-11-30 12:02:00', 4, '2021-12-04 17:05:00', 3, 0, 2),
(518, 337, 823, '2020-07-22', '2021-11-30 16:40:00', 4, '2021-11-30 16:59:00', 4, 0, 0),
(519, 337, 824, '2021-02-02', '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(522, 340, 826, '2021-01-05', '2021-12-01 10:55:00', 4, '2021-12-01 11:10:00', 4, 0, 0),
(523, 340, 827, '2020-03-30', '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(532, 334, 811, '2021-12-22', '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(533, 338, 825, '2021-12-22', '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(534, 336, 818, '2020-11-18', '2021-12-02 03:48:00', 4, '0000-00-00 00:00:00', 0, 1, 0),
(562, 335, 814, '1969-12-31', '2021-12-04 17:05:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(619, 339, 916, '2021-02-23', '2021-12-08 20:09:00', 4, '2021-12-08 20:12:00', 4, 1, 0),
(637, 330, 805, '2022-01-18', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

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
  `psc_date_report` datetime NOT NULL,
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

--
-- Dumping data for table `patient_s_creatinine`
--

INSERT INTO `patient_s_creatinine` (`psc_id`, `p_id`, `psc_date`, `psc_date_report`, `psc_egfr_g1`, `psc_egfr_g2`, `psc_egfr_g3`, `psc_egfr_g4`, `psc_egfr_g5`, `psc_value`, `psc_created_at`, `psc_created_by`, `psc_updated_at`, `psc_updated_by`, `psc_status`, `par_id`) VALUES
(2371, 330, '2019-08-05', '2019-08-05 10:08:01', '', '81', '', '', '', '1.08', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(2372, 330, '2019-09-07', '2019-09-07 10:08:25', '90', '', '', '', '', '0.99', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(2373, 332, '2020-12-05', '2020-12-05 15:34:34', '94', '', '', '', '', '0.87', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(2374, 331, '2019-04-03', '2019-04-03 17:13:05', '', '64', '', '', '', '1.25', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(2375, 331, '2020-07-13', '2020-07-13 17:13:37', '', '', '56', '', '', '1.4', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(2386, 335, '2020-02-04', '2020-02-04 10:16:15', '', '', '36', '', '', '1.9', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(2387, 335, '2020-06-07', '2020-06-07 10:17:02', '', '', '47', '', '', '1.57', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(2388, 335, '2021-11-04', '2021-11-04 10:17:34', '', '', '48', '', '', '1.5', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(2392, 336, '2019-05-01', '2019-05-01 14:12:05', '92', '', '', '', '', '1', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(2393, 336, '2021-06-03', '2021-06-03 14:13:03', '96', '', '', '', '', '.96', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(2394, 336, '2020-03-01', '2020-03-01 14:13:29', '', '72', '', '', '', '1.23', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(2396, 337, '2020-06-01', '2020-06-01 16:25:15', '97', '', '', '', '', '0.92', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(2397, 337, '2021-01-01', '2021-01-01 16:26:35', '', '80', '', '', '', '1.22', '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0, 1, 824),
(2398, 338, '2021-07-29', '2021-07-29 17:55:50', '', '', '39', '', '', '2.05', '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 825),
(2402, 340, '2017-06-07', '2017-06-07 10:40:10', '', '', '37', '', '', '1.92', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(2403, 340, '2021-03-06', '2021-03-06 10:40:35', '', '', '', '27', '', '2.28', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(2418, 334, '2017-05-01', '2017-05-01 10:00:35', '', '85', '', '', '', '1.1', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(2419, 334, '2019-01-01', '2019-01-01 10:01:11', '110', '', '', '', '', '.85', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(2552, 339, '2018-10-28', '2018-10-28 19:17:29', '', '77', '', '', '', '0.84', '2021-12-08 19:18:00', 3, '0000-00-00 00:00:00', 0, 1, 916);

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

--
-- Dumping data for table `patient_s_electrolytes`
--

INSERT INTO `patient_s_electrolytes` (`pse_id`, `p_id`, `pse_date`, `pse_sodium`, `pse_potassium`, `pse_created_at`, `pse_created_by`, `pse_updated_at`, `pse_updated_by`, `pse_status`, `par_id`) VALUES
(1687, 330, '2019-08-07', '137', '3.01', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1688, 330, '2019-09-06', '142', '3.32', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(1689, 332, '2019-09-07', '142', '4.70', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(1690, 331, '2021-07-06', '141', '4.9', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1701, 335, '2020-01-26', '136', '3.8', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1702, 335, '2020-03-10', '132', '5.67', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1703, 335, '2021-05-06', '137', '4.2', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1704, 335, '2021-11-07', '134', '5.36', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(1709, 336, '2021-06-03', '138', '3.9', '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 818),
(1712, 340, '2021-03-06', '130', '5.29', '2021-12-01 10:43:00', 3, '0000-00-00 00:00:00', 0, 1, 827),
(1720, 334, '2017-05-01', '139', '4.5', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(1721, 334, '2019-01-01', '140', '3.9', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_t3`
--

CREATE TABLE `patient_t3` (
  `pt3_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pt3_date` date NOT NULL,
  `pt3_date_report` datetime NOT NULL,
  `pt3_value` varchar(255) NOT NULL,
  `pt3_created_at` datetime NOT NULL,
  `pt3_created_by` int(11) NOT NULL,
  `pt3_updated_at` datetime NOT NULL,
  `pt3_updated_by` int(11) NOT NULL,
  `pt3_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_t3`
--

INSERT INTO `patient_t3` (`pt3_id`, `p_id`, `pt3_date`, `pt3_date_report`, `pt3_value`, `pt3_created_at`, `pt3_created_by`, `pt3_updated_at`, `pt3_updated_by`, `pt3_status`, `par_id`) VALUES
(55, 335, '2020-07-08', '2020-07-08 10:30:55', '1.21', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814);

-- --------------------------------------------------------

--
-- Table structure for table `patient_t4`
--

CREATE TABLE `patient_t4` (
  `pt4_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pt4_date` date NOT NULL,
  `pt4_date_report` datetime NOT NULL,
  `pt4_value` varchar(255) NOT NULL,
  `pt4_created_at` datetime NOT NULL,
  `pt4_created_by` int(11) NOT NULL,
  `pt4_updated_at` datetime NOT NULL,
  `pt4_updated_by` int(11) NOT NULL,
  `pt4_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_t4`
--

INSERT INTO `patient_t4` (`pt4_id`, `p_id`, `pt4_date`, `pt4_date_report`, `pt4_value`, `pt4_created_at`, `pt4_created_by`, `pt4_updated_at`, `pt4_updated_by`, `pt4_status`, `par_id`) VALUES
(49, 335, '2020-07-08', '2020-07-08 10:31:35', '10.8', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814);

-- --------------------------------------------------------

--
-- Table structure for table `patient_tsh`
--

CREATE TABLE `patient_tsh` (
  `ptsh_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ptsh_date` date NOT NULL,
  `ptsh_date_report` datetime NOT NULL,
  `ptsh_value` varchar(255) NOT NULL,
  `ptsh_created_at` datetime NOT NULL,
  `ptsh_created_by` int(11) NOT NULL,
  `ptsh_updated_at` datetime NOT NULL,
  `ptsh_updated_by` int(11) NOT NULL,
  `ptsh_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_tsh`
--

INSERT INTO `patient_tsh` (`ptsh_id`, `p_id`, `ptsh_date`, `ptsh_date_report`, `ptsh_value`, `ptsh_created_at`, `ptsh_created_by`, `ptsh_updated_at`, `ptsh_updated_by`, `ptsh_status`, `par_id`) VALUES
(334, 330, '2019-11-08', '2019-11-08 10:11:51', '0.91', '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 805),
(335, 332, '2020-12-22', '2020-12-22 15:38:18', '1.20', '2021-11-29 15:38:00', 3, '0000-00-00 00:00:00', 0, 1, 809),
(339, 335, '2020-06-08', '2020-06-08 10:29:49', '6.1', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(340, 335, '2021-02-11', '2021-02-11 10:30:23', '5.39', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(343, 334, '2017-07-01', '2017-07-01 10:04:52', '.9', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_uric_acid`
--

CREATE TABLE `patient_uric_acid` (
  `pua_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pua_date` date NOT NULL,
  `pua_date_report` datetime NOT NULL,
  `pua_value` varchar(255) NOT NULL,
  `pua_created_at` datetime NOT NULL,
  `pua_created_by` int(11) NOT NULL,
  `pua_updated_at` datetime NOT NULL,
  `pua_updated_by` int(11) NOT NULL,
  `pua_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_uric_acid`
--

INSERT INTO `patient_uric_acid` (`pua_id`, `p_id`, `pua_date`, `pua_date_report`, `pua_value`, `pua_created_at`, `pua_created_by`, `pua_updated_at`, `pua_updated_by`, `pua_status`, `par_id`) VALUES
(210, 335, '2020-08-06', '2020-08-06 10:28:46', '8.9', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(211, 335, '2021-11-06', '2021-11-06 10:29:14', '8.0', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(213, 334, '2017-07-01', '2017-07-01 10:05:08', '5.56', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

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

--
-- Dumping data for table `patient_vaccination`
--

INSERT INTO `patient_vaccination` (`pv_id`, `p_id`, `vc_id`, `pv_created_at`, `pv_created_by`, `pv_updated_at`, `pv_updated_by`, `pv_status`, `par_id`) VALUES
(288, 330, 9, '2021-11-29 09:52:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(289, 330, 9, '2021-11-29 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(290, 330, 9, '2021-11-29 10:12:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(291, 331, 9, '2021-11-29 10:31:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(292, 331, 9, '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(296, 334, 8, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(297, 334, 9, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(298, 334, 10, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0, 0, 0),
(299, 336, 9, '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(300, 338, 8, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(301, 338, 9, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(302, 338, 10, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(309, 334, 8, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(310, 334, 9, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(311, 334, 10, '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_vitamind3`
--

CREATE TABLE `patient_vitamind3` (
  `pvd3_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pvd3_date` date NOT NULL,
  `pvd3_date_report` datetime NOT NULL,
  `pvd3_value` varchar(255) NOT NULL,
  `pvd3_created_at` datetime NOT NULL,
  `pvd3_created_by` int(11) NOT NULL,
  `pvd3_updated_at` datetime NOT NULL,
  `pvd3_updated_by` int(11) NOT NULL,
  `pvd3_status` int(11) NOT NULL,
  `par_id` int(11) NOT NULL COMMENT '0=not assessment yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_vitamind3`
--

INSERT INTO `patient_vitamind3` (`pvd3_id`, `p_id`, `pvd3_date`, `pvd3_date_report`, `pvd3_value`, `pvd3_created_at`, `pvd3_created_by`, `pvd3_updated_at`, `pvd3_updated_by`, `pvd3_status`, `par_id`) VALUES
(142, 331, '2019-07-13', '2019-07-13 17:19:07', '38', '2021-11-29 17:19:00', 3, '0000-00-00 00:00:00', 0, 1, 0),
(145, 335, '2020-06-08', '2020-06-08 10:27:36', '12', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(146, 335, '2020-10-30', '2020-10-30 10:28:05', '49', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(147, 335, '2021-11-07', '2021-11-07 10:28:26', '22', '2021-11-30 10:35:00', 3, '0000-00-00 00:00:00', 0, 1, 814),
(150, 334, '2019-01-18', '2019-01-18 10:04:40', '12', '2021-12-02 02:41:00', 3, '0000-00-00 00:00:00', 0, 1, 0);

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
(3, 28, '-1', '-1', '', '', '2021-09-18 12:27:00', 3, '0000-00-00 00:00:00', 0, 1),
(8, 91, 'Yes', 'No', '69', '', '2021-09-30 13:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(9, 22, 'No', '-1', '', '', '2021-10-13 10:44:00', 3, '0000-00-00 00:00:00', 0, 1),
(12, 107, 'Yes', 'No', '', '', '2021-10-19 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(19, 116, 'No', '-1', '', '', '2021-10-25 10:41:00', 3, '0000-00-00 00:00:00', 0, 1),
(20, 115, 'No', '-1', '', '', '2021-10-27 09:26:00', 3, '0000-00-00 00:00:00', 0, 1),
(21, 121, 'Yes', 'Yes', '79', '80', '2021-10-27 09:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(22, 72, 'Yes', 'Yes', '109', '105', '2021-10-27 09:35:00', 3, '0000-00-00 00:00:00', 0, 1),
(23, 120, 'Yes', 'No', '62', '', '2021-10-28 10:16:00', 3, '0000-00-00 00:00:00', 0, 1),
(26, 239, 'Yes', 'Yes', '55', '55', '2021-11-01 15:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(28, 180, 'No', '-1', '', '', '2021-11-04 16:40:00', 3, '0000-00-00 00:00:00', 0, 1),
(29, 162, 'Yes', 'Yes', '44', '44', '2021-11-04 16:42:00', 3, '0000-00-00 00:00:00', 0, 1),
(30, 174, 'Yes', 'No', '58', '', '2021-11-08 15:45:00', 3, '0000-00-00 00:00:00', 0, 1),
(31, 260, 'No', '-1', '', '', '2021-11-13 18:09:00', 3, '0000-00-00 00:00:00', 0, 1),
(65, 502, 'Yes', 'Yes', '45', '44', '2021-12-18 12:55:00', 3, '0000-00-00 00:00:00', 0, 1);

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
(799, 330, '62', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '130/90', 'Normal', 'No', '', 'CLEAR', 801, '2021-11-29 10:18:00', 3, '0000-00-00 00:00:00', 0, 1),
(800, 331, '68', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '120/60', 'Normal', 'No', '', 'CLEAR', 802, '2021-11-29 10:57:00', 3, '0000-00-00 00:00:00', 0, 1),
(801, 330, '62', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '100/70', 'Sub-Normal', 'No', '', 'CLEAR', 803, '2021-11-29 13:58:00', 3, '0000-00-00 00:00:00', 0, 1),
(802, 331, '68', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '120/70', 'Normal', 'No', '', 'CLEAR', 804, '2021-11-29 14:03:00', 3, '0000-00-00 00:00:00', 0, 1),
(803, 330, '63', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '55', '120/80', 'Normal', 'No', '', 'CLEAR', 805, '2021-11-29 14:47:00', 3, '0000-00-00 00:00:00', 0, 1),
(804, 331, '67', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '120/80', 'Normal', 'No', '', 'CLEAR', 806, '2021-11-29 14:55:00', 3, '0000-00-00 00:00:00', 0, 1),
(805, 332, '83', '', 'Absent', 'Absent', 'No', 'G-0', 'G-I', '84', '140/80', 'Normal', 'No', '', 'CLEAR', 807, '2021-11-29 15:48:00', 3, '0000-00-00 00:00:00', 0, 1),
(806, 333, '61', '', 'Absent', 'Absent', 'No', 'G-0', 'G-I', '72', '90/60', 'Low', 'No', '', 'CLEAR', 808, '2021-11-29 16:19:00', 3, '0000-00-00 00:00:00', 0, 1),
(807, 332, '81', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '48', '120/80', 'Normal', 'No', '', 'CLEAR', 809, '2021-11-29 16:43:00', 3, '0000-00-00 00:00:00', 0, 1),
(808, 333, '68', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '72', '95/65', 'Low', 'No', '', 'CLEAR', 810, '2021-11-29 16:59:00', 3, '0000-00-00 00:00:00', 0, 1),
(809, 334, '79', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '72', '110/70', 'Normal', 'No', '', 'clear', 811, '2021-11-30 10:32:00', 3, '0000-00-00 00:00:00', 0, 1),
(810, 335, '85', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '88', '110/70', 'Sub-Normal', 'No', '', 'CLEAR', 812, '2021-11-30 11:00:00', 3, '0000-00-00 00:00:00', 0, 1),
(811, 335, '71', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '83', '72/50', 'Low', 'No', '', 'CLEAR', 813, '2021-11-30 11:36:00', 3, '0000-00-00 00:00:00', 0, 1),
(812, 335, '75', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '100', '76/58', 'Low', 'No', '', 'CLEAR', 814, '2021-11-30 11:54:00', 3, '0000-00-00 00:00:00', 0, 1),
(816, 336, '59', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '95', '110/75', 'Normal', 'No', '', 'clear', 818, '2021-11-30 14:22:00', 3, '0000-00-00 00:00:00', 0, 1),
(821, 337, '64', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '60', '130/80', 'Normal', 'No', '', 'CLEAR', 823, '2021-11-30 16:30:00', 3, '0000-00-00 00:00:00', 0, 1),
(822, 337, '61', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '72', '120/70', 'Normal', 'No', '', 'CLEAR', 824, '2021-11-30 16:54:00', 3, '0000-00-00 00:00:00', 0, 1),
(823, 338, '71', '', 'Absent', 'Absent', 'No', 'G-I', 'G-II', '94', '90/70', 'Sub-Normal', 'No', '', 'clear', 825, '2021-11-30 18:00:00', 3, '0000-00-00 00:00:00', 0, 1),
(824, 340, '69', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '62', '130/80', 'Normal', 'No', '', 'CLEAR', 826, '2021-12-01 10:49:00', 3, '0000-00-00 00:00:00', 0, 1),
(825, 340, '67', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '62', '120/80', 'Normal', 'No', '', 'CLEAR', 827, '2021-12-01 11:01:00', 3, '0000-00-00 00:00:00', 0, 1),
(914, 339, '61', '', 'Absent', 'Absent', 'No', 'G-0', 'G-0', '72', '120/80', 'High', 'No', '', 'CLEAR', 916, '2021-12-08 19:19:00', 3, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicine`
--

CREATE TABLE `prescription_medicine` (
  `prm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `me_id` int(11) NOT NULL,
  `prm_medicine_trade_id` int(11) NOT NULL,
  `prm_time` varchar(255) NOT NULL,
  `prm_rules` varchar(255) NOT NULL,
  `par_id` int(11) NOT NULL,
  `prm_created_at` datetime NOT NULL,
  `prm_created_by` int(11) NOT NULL,
  `prm_updated_at` datetime DEFAULT NULL,
  `prm_updated_by` int(11) NOT NULL,
  `prm_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription_medicine`
--

INSERT INTO `prescription_medicine` (`prm_id`, `p_id`, `me_id`, `prm_medicine_trade_id`, `prm_time`, `prm_rules`, `par_id`, `prm_created_at`, `prm_created_by`, `prm_updated_at`, `prm_updated_by`, `prm_status`) VALUES
(6198, 331, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6199, 331, 54, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6200, 331, 32, -1, '½+0+½', '(ভরা পেটে) - চলবে ', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6201, 331, 4, -1, '1 + 0 + 0', 'চলবে', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6202, 331, 290, -1, '½+0+0', 'চলবে', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6203, 331, 297, -1, '0 + 0 +1', 'চলবে', 802, '2021-11-29 12:00:00', 4, NULL, 0, 1),
(6204, 330, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 801, '2021-11-29 12:06:00', 4, NULL, 0, 1),
(6205, 330, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 801, '2021-11-29 12:06:00', 4, NULL, 0, 1),
(6206, 330, 30, -1, '½+0+1', '(ভরা পেটে) - চলবে ', 801, '2021-11-29 12:06:00', 4, NULL, 0, 1),
(6207, 330, 290, -1, '½+0+0', 'চলবে', 801, '2021-11-29 12:06:00', 4, NULL, 0, 1),
(6208, 331, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6209, 331, 54, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6210, 331, 4, -1, '1 + 0 + 0', 'চলবে', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6211, 331, 290, -1, '½+0+0', 'চলবে', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6212, 331, 297, -1, '0 + 0 +1', 'চলবে', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6213, 331, 32, -1, '1 + 0+ 1', 'চলবে', 804, '2021-11-29 14:32:00', 4, NULL, 0, 1),
(6214, 330, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 803, '2021-11-29 14:37:00', 4, NULL, 0, 1),
(6215, 330, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 803, '2021-11-29 14:37:00', 4, NULL, 0, 1),
(6216, 330, 290, -1, '½+0+0', 'চলবে', 803, '2021-11-29 14:37:00', 4, NULL, 0, 1),
(6217, 330, 20, -1, '½+0+1', 'চলবে', 803, '2021-11-29 14:37:00', 4, NULL, 0, 1),
(6218, 330, 266, -1, '0 + 0 +1', 'চলবে', 803, '2021-11-29 14:37:00', 4, NULL, 0, 1),
(6219, 331, 50, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 806, '2021-11-29 14:59:00', 4, NULL, 0, 1),
(6220, 331, 4, -1, '1 + 0 + 0', 'চলবে', 806, '2021-11-29 14:59:00', 4, NULL, 0, 1),
(6221, 331, 19, -1, '1 + 0+ 1', 'চলবে', 806, '2021-11-29 14:59:00', 4, NULL, 0, 1),
(6222, 331, 290, -1, '½+0+0', 'চলবে', 806, '2021-11-29 14:59:00', 4, NULL, 0, 1),
(6223, 331, 297, -1, '0 + 0 +1', 'চলবে', 806, '2021-11-29 14:59:00', 4, NULL, 0, 1),
(6224, 330, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 805, '2021-11-29 15:06:00', 4, NULL, 0, 1),
(6225, 330, 532, -1, '1 + 0 + 0', 'চলবে', 805, '2021-11-29 15:06:00', 4, NULL, 0, 1),
(6226, 330, 487, -1, '0 + 0 +1', 'চলবে', 805, '2021-11-29 15:06:00', 4, NULL, 0, 1),
(6227, 330, 55, -1, '1 + 0 + 0', 'চলবে', 805, '2021-11-29 15:06:00', 4, NULL, 0, 1),
(6228, 330, 265, -1, '0 + 0 +1', 'চলবে', 805, '2021-11-29 15:06:00', 4, NULL, 0, 1),
(6229, 332, 54, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 807, '2021-11-29 16:28:00', 4, NULL, 0, 1),
(6230, 332, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 807, '2021-11-29 16:28:00', 4, NULL, 0, 1),
(6231, 332, 3, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 807, '2021-11-29 16:28:00', 4, NULL, 0, 1),
(6232, 332, 32, -1, '1 + 0+ 1', 'চলবে', 807, '2021-11-29 16:28:00', 4, NULL, 0, 1),
(6233, 332, 266, -1, '0 + 0 +1', 'চলবে', 807, '2021-11-29 16:28:00', 4, NULL, 0, 1),
(6234, 333, 523, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 808, '2021-11-29 16:31:00', 4, NULL, 0, 1),
(6235, 333, 4, -1, '1 + 0 + 0', 'চলবে', 808, '2021-11-29 16:31:00', 4, NULL, 0, 1),
(6236, 333, 29, -1, '½+0+1', 'চলবে', 808, '2021-11-29 16:31:00', 4, NULL, 0, 1),
(6237, 333, 290, -1, '½+0+0', 'চলবে', 808, '2021-11-29 16:31:00', 4, NULL, 0, 1),
(6238, 333, 306, -1, '0 + 0 +1', 'চলবে', 808, '2021-11-29 16:31:00', 4, NULL, 0, 1),
(6239, 335, 481, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 812, '2021-11-30 11:08:00', 4, NULL, 0, 1),
(6240, 335, 48, -1, '1 + 0 + 0', '(ভরা পেটে) - চলবে ', 812, '2021-11-30 11:08:00', 4, NULL, 0, 1),
(6241, 335, 514, -1, '1 + 0+ 1', 'চলবে', 812, '2021-11-30 11:08:00', 4, NULL, 0, 1),
(6242, 335, 475, -1, '1 + 0 + 0', 'চলবে', 812, '2021-11-30 11:08:00', 4, NULL, 0, 1),
(6243, 335, 322, -1, '1 + 0 + 0', 'চলবে', 812, '2021-11-30 11:08:00', 4, NULL, 0, 1),
(6244, 335, 481, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6245, 335, 48, -1, '1 + 0 + 0', 'সপ্তাহে 5 দিন - চলবে ', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6246, 335, 514, -1, '½+0+½', 'চলবে', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6247, 335, 29, -1, '½+0+½', 'চলবে', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6248, 335, 37, -1, '1 + 0 + 0', 'চলবে', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6249, 335, 265, -1, '0 + 0 +1', 'চলবে', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6250, 335, 518, -1, '0 + 0 +1', 'চলবে', 813, '2021-11-30 11:45:00', 4, NULL, 0, 0),
(6251, 335, 481, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6252, 335, 48, -1, '1 + 0 + 0', 'সপ্তাহে 5 দিন - চলবে ', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6253, 335, 514, -1, '½+0+½', 'চলবে', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6254, 335, 29, -1, '½+0+½', 'চলবে', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6255, 335, 37, -1, '1 + 0 + 0', 'চলবে', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6256, 335, 265, -1, '0 + 0 +1', 'চলবে', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6257, 335, 518, -1, '0 + 0 +1', 'চলবে', 813, '2021-11-30 11:47:00', 1, NULL, 0, 1),
(6258, 335, 481, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6259, 335, 265, -1, '0 + 0 +1', 'চলবে', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6260, 335, 518, -1, '0 + 0 +1', 'চলবে', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6261, 335, 29, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6262, 335, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6263, 335, 48, -1, '1 + 0 + 0', 'সপ্তাহে 5 দিন - চলবে ', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6264, 335, 37, -1, '1  + 1 + 0', 'চলবে', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6265, 335, 322, -1, '1 + 0 + 0', 'চলবে', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6266, 335, 325, -1, '1 + 0 + 0', 'প্রতি সপ্তাহে ১ করে - ৩ মাস', 814, '2021-11-30 12:02:00', 4, NULL, 0, 1),
(6329, 337, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6330, 337, 30, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6331, 337, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6332, 337, 299, -1, '0 + 0 +1', 'চলবে', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6333, 337, 273, -1, '1  + 1 + 0', 'চলবে', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6334, 337, 4, -1, '1 + 0 + 0', 'চলবে', 823, '2021-11-30 16:40:00', 4, NULL, 0, 1),
(6335, 337, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 824, '2021-11-30 16:59:00', 4, NULL, 0, 1),
(6336, 337, 32, -1, '½+0+1', 'চলবে', 824, '2021-11-30 16:59:00', 4, NULL, 0, 1),
(6337, 337, 290, -1, '½+0+0', 'চলবে', 824, '2021-11-30 16:59:00', 4, NULL, 0, 1),
(6338, 337, 297, -1, '0 + 0 +1', 'চলবে', 824, '2021-11-30 16:59:00', 4, NULL, 0, 1),
(6339, 337, 326, -1, '1 + 0 + 0', 'প্রতি সপ্তাহে ১ করে - ৩ মাস', 824, '2021-11-30 16:59:00', 4, NULL, 0, 1),
(6340, 340, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6341, 340, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6342, 340, 29, -1, '½+0+½', 'চলবে', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6343, 340, 273, -1, '1  + 1 + 0', 'চলবে', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6344, 340, 265, -1, '0 + 0 +1', 'চলবে', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6345, 340, 290, -1, '½+0+0', 'চলবে', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6346, 340, 316, -1, '1 + 0+ 1', 'চলবে', 826, '2021-12-01 10:55:00', 4, NULL, 0, 1),
(6347, 340, 49, -1, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6348, 340, 514, -1, '1 + 0+ 1', '(ভরা পেটে) - চলবে ', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6349, 340, 273, -1, '1  + 1 + 0', 'চলবে', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6350, 340, 316, -1, '1 + 0+ 1', 'চলবে', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6351, 340, 265, -1, '0 + 0 +1', 'চলবে', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6352, 340, 36, -1, '1 + 0 + 0', 'চলবে', 827, '2021-12-01 11:10:00', 4, NULL, 0, 1),
(6419, 334, 523, 524, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 811, '2021-12-02 03:21:00', 4, NULL, 0, 1),
(6420, 334, 5, 96, '1 + 0 + 0', 'চলবে', 811, '2021-12-02 03:21:00', 4, NULL, 0, 1),
(6421, 334, 297, 395, '0 + 0 +1', 'চলবে', 811, '2021-12-02 03:21:00', 4, NULL, 0, 1),
(6422, 334, 475, -1, '1 + 0 + 0', 'চলবে', 811, '2021-12-02 03:21:00', 4, NULL, 0, 1),
(6423, 334, 540, -1, '0 + 0 +1', 'চলবে', 811, '2021-12-02 03:21:00', 4, NULL, 0, 1),
(6424, 338, 49, 76, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6425, 338, 40, 235, '1  + 1 + 0', 'চলবে', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6426, 338, 45, 250, '1 + 0+ 1', 'চলবে', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6427, 338, 29, 201, '½+0+½', 'চলবে', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6428, 338, 4, 88, '½+0+0', 'চলবে', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6429, 338, 323, 438, '1 + 0 + 0', '(ভরা পেটে) - চলবে ', 825, '2021-12-02 03:36:00', 4, NULL, 0, 1),
(6430, 336, 523, 524, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6431, 336, 2, 15, '1 + 0+ 1', 'চলবে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6432, 336, 30, 206, '½+0+½', 'চলবে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6433, 336, 265, 345, '0 + 0 +1', 'চলবে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6434, 336, 290, -1, '1 + 0 + 0', 'চলবে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6435, 336, 332, 466, '1 + 0+ 1', 'খাবার আধ ঘণ্টা আগে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6436, 336, 273, 375, '1  + 1 + 0', 'চলবে', 818, '2021-12-02 03:48:00', 4, NULL, 0, 1),
(6931, 339, 49, 76, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6932, 339, 2, 15, '1 + 0+ 1', 'চলবে', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6933, 339, 266, 350, '0 + 0 +1', 'চলবে', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6934, 339, 22, 166, '0 + 0 +1', 'চলবে', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6935, 339, 290, 680, '½+0+0', 'চলবে', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6936, 339, 325, 450, '0 + 0 +1', 'প্রতি সপ্তাহে ১ করে - ৩ মাস', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6937, 339, 323, 438, '0+1+0', 'চলবে', 916, '2021-12-08 20:09:00', 4, NULL, 0, 0),
(6938, 339, 49, 76, '0 + 0 +1', '(ভরা পেটে) - চলবে ', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6939, 339, 2, 15, '1 + 0+ 1', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6940, 339, 266, 350, '0 + 0 +1', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6941, 339, 22, 166, '0 + 0 +1', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6942, 339, 290, 680, '½+0+0', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6943, 339, 325, 450, '0 + 0 +1', 'প্রতি সপ্তাহে ১ করে - ৩ মাস', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6944, 339, 323, 438, '0+1+0', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1),
(6945, 339, 55, 70, '1 + 0 + 0', 'চলবে', 916, '2021-12-08 20:12:00', 4, NULL, 0, 1);

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

--
-- Dumping data for table `recommended_device`
--

INSERT INTO `recommended_device` (`rd_id`, `rd_p_id`, `rd_device_id`, `rd_par_id`, `rd_active_status`, `rd_created_at`, `rd_created_by`, `rd_updated_at`, `rd_updated_by`, `rd_status`) VALUES
(83, 340, 2, 827, 0, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1);

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

--
-- Dumping data for table `recommended_vaccine`
--

INSERT INTO `recommended_vaccine` (`rv_id`, `rv_p_id`, `rv_vaccine_id`, `rv_par_id`, `rv_created_at`, `rv_created_by`, `rv_updated_at`, `rv_updated_by`, `rv_status`) VALUES
(1622, 331, 8, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(1623, 331, 10, 802, '2021-11-29 12:00:00', 4, '0000-00-00 00:00:00', 0, 1),
(1624, 330, 8, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(1625, 330, 10, 801, '2021-11-29 12:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(1626, 331, 8, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(1627, 331, 10, 804, '2021-11-29 14:32:00', 4, '0000-00-00 00:00:00', 0, 1),
(1628, 330, 8, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(1629, 330, 10, 803, '2021-11-29 14:37:00', 4, '0000-00-00 00:00:00', 0, 1),
(1630, 331, 8, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(1631, 331, 10, 806, '2021-11-29 14:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(1632, 330, 8, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(1633, 330, 10, 805, '2021-11-29 15:06:00', 4, '0000-00-00 00:00:00', 0, 1),
(1634, 332, 8, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(1635, 332, 10, 807, '2021-11-29 16:28:00', 4, '0000-00-00 00:00:00', 0, 1),
(1636, 333, 8, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(1637, 333, 10, 808, '2021-11-29 16:31:00', 4, '0000-00-00 00:00:00', 0, 1),
(1638, 335, 8, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(1639, 335, 10, 812, '2021-11-30 11:08:00', 4, '0000-00-00 00:00:00', 0, 1),
(1640, 335, 8, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(1641, 335, 10, 813, '2021-11-30 11:45:00', 4, '0000-00-00 00:00:00', 0, 0),
(1642, 335, 8, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(1643, 335, 10, 813, '2021-11-30 11:47:00', 1, '0000-00-00 00:00:00', 0, 1),
(1644, 335, 8, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(1645, 335, 10, 814, '2021-11-30 12:02:00', 4, '0000-00-00 00:00:00', 0, 1),
(1662, 337, 8, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(1663, 337, 10, 823, '2021-11-30 16:40:00', 4, '0000-00-00 00:00:00', 0, 1),
(1664, 337, 8, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(1665, 337, 10, 824, '2021-11-30 16:59:00', 4, '0000-00-00 00:00:00', 0, 1),
(1666, 340, 8, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(1667, 340, 10, 826, '2021-12-01 10:55:00', 4, '0000-00-00 00:00:00', 0, 1),
(1668, 340, 8, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(1669, 340, 10, 827, '2021-12-01 11:10:00', 4, '0000-00-00 00:00:00', 0, 1),
(1692, 334, 8, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(1693, 334, 9, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(1694, 334, 10, 811, '2021-12-02 03:21:00', 4, '0000-00-00 00:00:00', 0, 1),
(1695, 338, 8, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(1696, 338, 10, 825, '2021-12-02 03:36:00', 4, '0000-00-00 00:00:00', 0, 1),
(1871, 339, 8, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(1872, 339, 10, 916, '2021-12-08 20:09:00', 4, '0000-00-00 00:00:00', 0, 0),
(1873, 339, 8, 916, '0000-00-00 00:00:00', 0, '2021-12-08 20:12:00', 4, 1),
(1874, 339, 10, 916, '0000-00-00 00:00:00', 0, '2021-12-08 20:12:00', 4, 1);

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
(36, 'Hyperthyroidism', 34, '2021-09-06 18:08:00', 2, '0000-00-00 00:00:00', 0, 2),
(37, 'None', 0, '2021-12-07 12:44:00', 2, '0000-00-00 00:00:00', 0, 1);

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
-- Table structure for table `user_panel_login`
--

CREATE TABLE `user_panel_login` (
  `upl_id` int(11) NOT NULL,
  `upl_p_id` int(11) NOT NULL,
  `upl_name` varchar(255) NOT NULL,
  `upl_credential` varchar(255) NOT NULL,
  `upl_key` varchar(255) NOT NULL,
  `upl_status` int(11) NOT NULL COMMENT '0=inactive\r\n1=active',
  `upl_created_at` datetime NOT NULL,
  `upl_created_by` int(11) NOT NULL,
  `upl_updated_at` datetime NOT NULL,
  `upl_updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_panel_login`
--

INSERT INTO `user_panel_login` (`upl_id`, `upl_p_id`, `upl_name`, `upl_credential`, `upl_key`, `upl_status`, `upl_created_at`, `upl_created_by`, `upl_updated_at`, `upl_updated_by`) VALUES
(1, 3, 'Nurunnahar Begum', '01731480263', '267f16acf341242a06f97963be07026b', 1, '2021-05-25 17:49:00', 2, '2021-06-27 13:24:00', 3),
(2, 5, 'Abdul Haque', '01716504264', 'b30b5c03a5eaf4453e44577b01b9517e', 1, '2021-05-26 11:42:00', 2, '2021-11-01 09:58:00', 3),
(3, 6, 'Mohammad Hossain chow.', '01816908170', '2fa93c1b18a7cf5291f6270626503f81', 1, '2021-05-27 10:24:00', 3, '2021-06-28 14:35:00', 3),
(4, 7, 'Abdul Jalil', '01733519944', '6728e9dc069392dec3b569653876f292', 1, '2021-05-28 10:49:00', 3, '2021-11-01 09:59:00', 3),
(5, 8, 'Morshed Ali', '01911369636', '2d84a5e0b4c60cab475b0764f5ab1f71', 1, '2021-05-28 11:12:00', 2, '2021-06-29 10:48:00', 3),
(6, 11, 'Fatema Begum', '01721942783', 'ea4c0d6ec9059e6abd411ed852f078e0', 1, '2021-05-28 12:18:00', 2, '2021-11-01 11:04:00', 3),
(7, 21, 'Major Golam Mustofa Khan ', '01822989844', '22d05c232a43505e75d5d3b25206f1ad', 1, '2021-06-24 11:51:00', 3, '2021-11-01 11:39:00', 3),
(8, 22, 'Sojib Sorkar (TEST)', '01737499550', 'd57f26ed34faef75a71308171c081429', 1, '2021-06-27 11:54:00', 3, '2021-08-10 16:58:00', 2),
(9, 26, 'MD FAISAL ANWAR', '01711820982', '43f96eb718bc2b66f31150404ed21a12', 1, '2021-06-28 15:29:00', 3, '2021-10-13 11:38:00', 3),
(10, 27, 'ROWSHAN ARA HOSSAIN', '01711505046', 'cb38a9a483e6cb1e8715074aad4edcf0', 1, '2021-06-28 16:04:00', 3, '2021-06-29 15:25:00', 3),
(11, 28, 'Mahamud Hasan Biplob ', '01731345046', '0e01a2bf657a635eee6eaa7f9502dfad', 1, '2021-06-28 17:12:00', 3, '2021-11-01 11:42:00', 3),
(12, 32, 'Mohammad Sahin Iqbal', '01717585851', '92a9aacec95c64fc9f751e9e09245550', 1, '2021-06-30 12:25:00', 3, '2021-06-30 12:25:00', 3),
(13, 33, 'SALEHA RAHMAN', '01715661508', 'ae8a31f48aeac039811ae8a4db1f331d', 1, '2021-06-30 15:27:00', 3, '2021-07-01 10:28:00', 3),
(14, 34, 'MAINUL ISLAM KHAN ', '01726523274', 'd41eb96d8b84a1b364dcb8ab9fede887', 1, '2021-07-01 11:20:00', 3, '2021-11-01 11:41:00', 3),
(15, 35, 'MIZANUR RAHMAN ', '01716358813', '77f2d0a8ade3aa1abfe434708d19f8a8', 1, '2021-07-01 15:12:00', 3, '2021-07-01 17:04:00', 3),
(16, 37, 'MD MAHBUB ALI', '01913086650', '90f81941b6412d4f027dacd89a981a29', 1, '2021-07-03 09:59:00', 3, '2021-10-13 14:58:00', 3),
(17, 38, 'JAHID HOSSAIN', '01917030305', '1b4d196f773629f4264b666eab1df514', 1, '2021-07-03 12:31:00', 3, '2021-11-01 10:50:00', 3),
(18, 39, 'NAZRUL ISLAM', '01777610994', 'f8bcdb323355f5683275db8aad7110f8', 1, '2021-07-03 17:38:00', 3, '2021-07-04 10:01:00', 3),
(19, 40, 'ZAHEDUN NABI', '01732708094', 'a9083ac3150a079f65bf1eeae3f2d003', 1, '2021-07-04 10:41:00', 3, '2021-07-04 11:40:00', 3),
(20, 41, 'MOHIUDDIN AHMED', '01937442418', 'd914fe731c5074d1fe4bd98dedbd70ad', 1, '2021-07-04 12:13:00', 3, '2021-07-04 12:24:00', 3),
(21, 42, 'SELIMA KHATUN', '01728357075', '53b0d85737ec86a0a384a9f5dc04779d', 1, '2021-07-04 12:41:00', 3, '2021-07-04 12:47:00', 3),
(22, 43, 'SHAKHWAT HOSSAIN CHOWDURY', '01747164781', '09755f23a2f92be809667d2de488ce83', 1, '2021-07-04 14:04:00', 3, '2021-10-13 17:35:00', 3),
(23, 44, 'MD FEROZ TARIK', '01712049915', '1ca4e2ccad2c4cb8f47c42a0581ebed7', 1, '2021-07-04 16:15:00', 3, '2021-10-13 11:57:00', 3),
(24, 45, 'KAZI HUMAYUN KABIR', '01552352450', '403c9310f4204c43871ccb18318785ca', 1, '2021-07-05 09:53:00', 3, '2021-11-01 11:24:00', 3),
(25, 46, 'Ahmed Hossain Tariq', '01711771221', '8c0a02f6f5d9892b69031f8e5f5db424', 1, '2021-07-05 13:22:00', 3, '2021-11-01 10:19:00', 3),
(26, 47, 'MR polash', '01816383253', '4dc79960799f3544c877d9787c33f682', 1, '2021-07-05 13:59:00', 3, '2021-07-05 15:15:00', 3),
(27, 48, 'MD DULAL', '01819480519', 'd94f9f9d901254d479bda8bd6d635fba', 1, '2021-07-05 16:01:00', 3, '2021-10-12 17:23:00', 3),
(28, 49, 'SHAMSUR RAHMAN', '01711965985', 'b015e15bb613e216ccb0dfeb794b1311', 1, '2021-07-06 10:51:00', 3, '2021-10-14 09:59:00', 3),
(29, 50, 'Mohammad Chan Miah', '01729931710', '94a8b747aac762906c133a3ae162546d', 1, '2021-07-06 16:10:00', 3, '2021-07-06 16:48:00', 3),
(30, 51, 'Rafiqul Islam', '01726372680', '65d5bc5c7af0690bd73992873a559203', 1, '2021-07-07 10:03:00', 3, '2021-07-07 10:54:00', 3),
(31, 52, 'Amerendra Sarker', '01711195408', 'f052c2a724e2b0605f4f5b5a2f257c63', 1, '2021-07-07 13:35:00', 3, '2021-11-01 10:23:00', 3),
(32, 53, 'Nur Hossain', '01918128136', '9f2c74047d56a77f0a693c610aa946cf', 1, '2021-07-07 17:08:00', 3, '2021-07-08 09:06:00', 3),
(33, 54, 'Md Ariful Isalam', '01713607580', '96b20d3fd2ebc332ab912200e755358e', 1, '2021-07-08 09:36:00', 3, '2021-10-13 14:51:00', 3),
(34, 55, 'Morium Jamila ', '01927676480', 'c0d7001b0c0710ccfb036ecdd4619350', 1, '2021-07-08 10:46:00', 3, '2021-07-08 12:15:00', 3),
(35, 56, 'MD Assaduzzaman', '01921561666', '518fc70d41a1928f9f80c6114fe15918', 1, '2021-07-08 12:53:00', 3, '2021-10-12 17:04:00', 3),
(36, 57, 'MD AbduL  MAJID', '01985766260', '37ffb5dad147def1e2af936bb4bd2821', 1, '2021-07-08 13:47:00', 3, '2021-10-12 15:54:00', 3),
(37, 58, 'Razina Akter', '01713061558', '0c0fe744688887e07832684a6ac752e9', 1, '2021-07-08 16:09:00', 3, '2021-07-08 16:54:00', 3),
(38, 59, 'MD KHALEQUZZAMAN', '01712049642', '4ed77d5093712b26955dc1d8b6d4818a', 1, '2021-07-08 17:42:00', 3, '2021-10-13 14:46:00', 3),
(39, 60, 'Rokeya Begum ', '01711512948', '23280b1d64eb07ae235a8c02da410a86', 1, '2021-07-10 13:17:00', 3, '2021-07-10 14:11:00', 3),
(40, 61, 'RUKSANA BEGUM', '01922701559', '6b375ad9edea1d4a00bacb30f34eaccc', 1, '2021-07-10 14:51:00', 3, '2021-07-10 14:53:00', 3),
(41, 62, 'ABDUL KARIM CHOWDHURY', '01843578801', 'dc572440aaa90e12ba7ed6384516da9f', 1, '2021-07-10 15:31:00', 3, '2021-11-01 10:01:00', 3),
(42, 63, 'MD ABDUL RAHIM', '01711474930', '5fe0908754b91af655a8d0618cf249af', 1, '2021-07-10 16:36:00', 3, '2021-11-01 12:07:00', 3),
(43, 64, 'REZAUL KARIM', '01719403612', 'd243241eb9ba166383121f12be5d1e1a', 1, '2021-07-10 17:52:00', 3, '2021-07-11 12:08:00', 3),
(44, 65, 'Mojibur Rahman ', '01769007810', '3033df9d6c9341f52c8d2a82ceb06952', 1, '2021-07-11 14:40:00', 3, '2021-07-11 15:17:00', 3),
(45, 66, 'SHAMSUL HAQUE CHOWDURY', '01715437719', '91b3a18f0262c314eaef45e69580439c', 1, '2021-07-11 17:25:00', 3, '2021-10-27 16:01:00', 3),
(46, 67, 'RAFIQUE AHMED', '01847339838', 'f4aa7ef796762831223614f98813b75d', 1, '2021-07-12 10:34:00', 3, '2021-08-04 16:23:00', 3),
(47, 68, 'ATAUR RAHMAN ARZU', '01711261405', '0ac379508ac9781e51742225a0c3af87', 1, '2021-07-13 15:15:00', 3, '2021-11-01 10:28:00', 3),
(48, 70, 'SHAHID HOSSEN KHAN', '01714117863', 'f2f634b4304fb3583d10c0e153ec2cb3', 1, '2021-07-14 09:59:00', 3, '2021-07-14 10:00:00', 3),
(49, 71, 'SYED KAMAL UDDIN HAIDER', '01925694126', '07f437c57646ec90181465b8e062b44d', 1, '2021-07-14 12:49:00', 3, '2021-10-14 10:30:00', 3),
(50, 72, 'MD SIRAZ HAWLADER', '0192273316', '2c7c7e2786d962c741f758e51fff4464', 1, '2021-07-14 13:30:00', 3, '2021-10-13 16:59:00', 3),
(51, 73, 'KAZI BELAYET HOSSEN', '01715889365', 'f5bba120670d3740c6390274aacc5d08', 1, '2021-07-14 14:40:00', 3, '2021-11-01 11:26:00', 3),
(52, 74, 'MD ABUL HOSSEN', '01825190825', 'd5a8018afdddc357696c69f5b55dd769', 1, '2021-07-15 12:05:00', 3, '2021-10-12 16:23:00', 3),
(53, 75, 'AL AMIN EBNA ABDULLAH', '01727153689', '9492bfba78ec02bf33b4fd67bef117ea', 1, '2021-07-15 16:17:00', 3, '2021-11-01 10:20:00', 3),
(54, 76, 'MD KAMRUL ALAM MOLLA', '01772490579', 'eb0e286fe68f6fad543d15cb8316745b', 1, '2021-07-17 13:20:00', 3, '2021-10-13 12:05:00', 3),
(55, 77, 'MOFFAKHARUL ISLAM', '01712120668', '719839af28e91accdb30bef45a43e925', 1, '2021-07-17 14:07:00', 3, '2021-07-17 14:09:00', 3),
(56, 78, 'MD TAREQ HOSSAIN', '01675572495', 'faa918e4dc383543851743834ff21f76', 1, '2021-07-17 15:28:00', 3, '2021-10-13 17:04:00', 3),
(57, 79, 'MRS SHAHIDA PARVEEN ', '01617436040', '25f250f6fd580f7ed9944dc504b3b02e', 1, '2021-07-17 16:44:00', 3, '2021-07-17 16:44:00', 3),
(58, 80, 'MASUDA PARVEEN', '01684964177', '3f13e3a8c37fab60d47115fa53b50fb0', 1, '2021-07-18 12:01:00', 3, '2021-10-12 13:14:00', 3),
(59, 81, 'HABIBUR RAHMAN', '01670700400', '71e940cc68e15ccaa9de6309e78c35ba', 1, '2021-07-19 10:57:00', 3, '2021-11-01 10:52:00', 3),
(60, 82, 'MD TARIKUL ISLAM', '01716908728', '3ee05c43826491d48c97f918e2c9dc7f', 1, '2021-07-19 12:57:00', 3, '2021-07-19 15:09:00', 3),
(61, 83, 'ANINDYA BARUA', '01820860464', 'f7babe6bdba95128cf3d5ab2d703d855', 1, '2021-07-25 15:01:00', 3, '2021-11-01 10:26:00', 3),
(62, 84, 'HARUNUR RASHID MAZUMDER ', '01711272975', '60d23168c1e1c6f28d817b3050ca8e0e', 1, '2021-07-26 16:06:00', 3, '2021-11-01 10:51:00', 3),
(63, 85, 'MRS . MORIUM ARA', '01983240580', 'fe67044bb50334b90d4d1bae72713d19', 1, '2021-07-29 12:33:00', 3, '2021-07-29 12:34:00', 3),
(64, 86, 'ABUL KHAYER', '01673911601', '2a6fc315b4f5ca24a9a1e11801b87c5c', 1, '2021-07-29 13:33:00', 3, '2021-11-01 10:11:00', 3),
(65, 87, 'MOHAMMAD AKHTERUZZAMAN', '01712067174', 'e80142600c0911afb6fc1ec958b60828', 1, '2021-07-29 16:04:00', 3, '2021-07-31 10:30:00', 3),
(66, 88, 'LOKMAN KHAN', '01716501685', 'fc0e82a71c760648714b568dcbce7017', 1, '2021-07-31 12:39:00', 3, '2021-11-01 12:02:00', 3),
(67, 89, 'TANZIR AHMED', '01734929207', '8c724fc5b0d726fd2d1d8d48460a82d9', 1, '2021-07-31 13:17:00', 3, '2021-10-28 12:41:00', 3),
(68, 90, 'ADV. ABDUS SOBHAN', '01711124489', '8bf2f5595aa8c9e8498e812fa0e807f1', 1, '2021-08-02 13:50:00', 3, '2021-11-01 10:17:00', 3),
(69, 91, 'MD AMINUL ISLAM', '01719547027', '40ef9ad7c53ac2c9d31a8a28787a292b', 1, '2021-08-02 17:09:00', 3, '2021-10-12 13:23:00', 3),
(70, 92, 'KHOHINUR AKTER', '01839911652', '87bb1dfc7a24234ce6d91ae901c4a084', 1, '2021-08-03 12:05:00', 3, '2021-11-01 11:30:00', 3),
(71, 93, 'MD AFZAL HOSSAIN', '01730076041', '2e6a1cb83e8a87e5f405b5c400836947', 1, '2021-08-03 12:42:00', 3, '2021-10-12 16:36:00', 3),
(72, 94, 'MD NAZRUL ISLAM', '01711200243', '80f0056df59d562c305fa8c0f33fb7f0', 1, '2021-08-03 15:03:00', 3, '2021-10-13 12:53:00', 3),
(73, 95, 'MD FAYSAL AHMED', '01790060361', 'c1259f0979f8620bdd6ebbf9b9b9fb95', 1, '2021-08-03 16:55:00', 3, '2021-10-13 11:49:00', 3),
(74, 96, 'ABDUR RAHMAN', '01971767676', '564e914ad96431fd5768aef0c542663f', 1, '2021-08-04 10:08:00', 1, '2021-11-01 10:08:00', 3),
(75, 97, 'SWAPON SARKER', '01737317875', 'fd03dfc7743865c900742d2669a7965d', 1, '2021-08-04 10:58:00', 3, '2021-10-14 10:27:00', 3),
(76, 98, 'SAMSUN NAHAR KHANOM', '01770982905', 'a2efd9c02f4d683a160ff707193b0985', 1, '2021-08-05 11:52:00', 3, '2021-10-12 13:40:00', 3),
(77, 99, 'SAMSUN NAHAR KHANOM', '01770982905', 'a2efd9c02f4d683a160ff707193b0985', 1, '2021-08-05 11:52:00', 3, '2021-08-05 13:06:00', 3),
(78, 100, 'MD ABDUL AZIZ', '01711195218', 'e2cc70cd32fa2ca4f030f7716ca79f20', 1, '2021-08-08 11:59:00', 3, '2021-10-12 13:18:00', 3),
(79, 101, 'MD ABDUL AZIZ', '01711195218', 'e2cc70cd32fa2ca4f030f7716ca79f20', 1, '2021-08-08 11:59:00', 3, '2021-11-01 12:11:00', 3),
(80, 102, 'EARMIN HOSSAIN KANTA', '01717032437', 'c49cd81f13c1fe5bcf1a1179389c8098', 1, '2021-08-09 15:03:00', 3, '2021-11-01 10:31:00', 3),
(81, 104, 'MD ANWARUL ISLAM', '01977277315', '27562469faf3a1f10a456c74793871de', 1, '2021-08-09 17:50:00', 3, '2021-10-12 16:43:00', 3),
(82, 105, 'MASUDA KHATUN', '01824410291', '8c339216f05c90df94efa4e3bfddba0d', 1, '2021-08-10 11:22:00', 3, '2021-10-12 15:48:00', 3),
(83, 106, 'Ronju Ahmed', '01321661203', 'be13c65b6a1b74fdab988181549e08a7', 1, '2021-08-10 15:37:00', 3, '2021-08-24 10:44:00', 3),
(84, 107, 'SHARIFUL ISLAM', '01924425841', 'a50accd4b9716cb38f0dc15d5bba195f', 1, '2021-08-12 11:10:00', 3, '2021-10-14 10:14:00', 3),
(85, 108, 'MOBARAK HOSSAIN MALIICK', '01716461637', 'bbf157f276921728f51fa383adb15e4e', 1, '2021-08-12 11:47:00', 3, '0000-00-00 00:00:00', 0),
(86, 109, 'MD KHALED AHMED KHONDOKER', '01715431731', '0c1db658ee3573323cabdd81f9a8825a', 1, '2021-08-14 17:38:00', 3, '2021-10-13 12:24:00', 3),
(87, 110, 'AMINUL ISLAM', '01711563292', 'bf573d0280eabd1c9d58a88c69602eba', 1, '2021-08-14 17:42:00', 3, '2021-11-01 10:25:00', 3),
(88, 111, 'DELOWER HOSSAIN', '01711533831', 'cd924530c688411a5b46d8d81f7b6220', 1, '2021-08-16 11:43:00', 3, '2021-11-01 10:34:00', 3),
(89, 112, 'YUNUS UDDIN MIA', '01712665077', '2a879783bd72128d9f6c4d3bf4e1dab4', 1, '2021-08-16 15:20:00', 3, '2021-08-16 16:50:00', 3),
(90, 113, 'SYED JALIL', '01712517409', 'c18c36c356338b292bc74fca10391d0b', 1, '2021-08-17 11:30:00', 3, '2021-08-17 12:37:00', 3),
(91, 114, 'MD MONIRUL ISLAM', '01716389775', '8f017a9b159a2e3f54e1ba78ff1bbe26', 1, '2021-08-17 17:06:00', 3, '2021-10-13 12:43:00', 3),
(92, 115, 'NUR ALAM', '01780285788', '8125394ed43105c2d30e767da6cf605c', 1, '2021-08-18 10:49:00', 3, '2021-08-18 11:03:00', 3),
(93, 116, 'KHONDOKAR ZAKIR HOSSAIN', '01716182051', '8cc8d1d8c92f91962b50b41d7792ef73', 1, '2021-08-18 14:08:00', 3, '2021-11-01 11:19:00', 3),
(94, 117, 'SYEDA HASINA BEGUM', '01843923253', '03653d3c9c967398500379d5f0d554ae', 1, '2021-08-18 16:21:00', 3, '2021-08-18 16:30:00', 3),
(95, 119, 'ABDUR RAZZAK', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-08-21 12:17:00', 3, '2021-11-01 10:08:00', 3),
(96, 120, 'KAMAL UDDIN AHMED', '01550150641', '8f80de69b5101251d28330102c025587', 1, '2021-08-22 10:24:00', 3, '2021-11-01 11:28:00', 3),
(97, 121, 'SHAHADAT HOSSAIN', '01534655938', '16dda6b4ee704d948ad392bd15faa66a', 1, '2021-08-22 13:46:00', 3, '2021-08-30 16:43:00', 3),
(98, 122, 'JUSTICE SYED MD DASTAGIR', '01716043078', '3868fc794ab1d51d132a9bfb13478b11', 1, '2021-08-23 16:21:00', 3, '2021-11-01 11:33:00', 3),
(99, 123, 'MD MESER ALI', '01716163931', 'b341841ed274c6cd1fd8acf101d93fef', 1, '2021-08-24 16:03:00', 3, '2021-10-13 12:37:00', 3),
(100, 124, 'REZAUL KARIM', '01719985085', '3d4d459fae2808f516a61a74e6ad8d4c', 1, '2021-08-25 14:47:00', 3, '2021-08-25 16:16:00', 3),
(101, 125, 'MOHAMMAD EKHLASUR RAHMAN', '01731306998', '9a7ba9f595a36a0684d038bb023e8253', 1, '2021-08-31 13:03:00', 3, '2021-10-27 16:26:00', 3),
(102, 126, 'BILKIS NAHAR SHAPLA', '01557760917', '9e78683c0d62938b8e6b1d5d73526f95', 1, '2021-08-31 13:40:00', 3, '2021-11-01 10:42:00', 3),
(103, 127, 'NAZRUL ISLAM', '01784366368', '8830deb8f8b311a0ced3022836ce7866', 1, '2021-08-31 15:29:00', 3, '2021-08-31 15:52:00', 3),
(104, 128, 'SHAHRIAR MARUF', '01819215111', '5ed330673aff073f234f85cfacda1900', 1, '2021-08-31 16:23:00', 3, '2021-10-13 17:29:00', 3),
(105, 129, 'MD SHAHJAHAN MIA', '01711696982', '2fad796b0fb54ab3f15cce8bf3ed900b', 1, '2021-08-31 17:20:00', 3, '2021-10-13 15:34:00', 3),
(106, 130, 'MD HAMIDUR RAHMAN', '01711390377', 'acaf1e1894b247d2cd0ebe94e4d69cad', 1, '2021-09-01 09:47:00', 3, '2021-10-13 11:59:00', 3),
(107, 131, 'MOHAMMAD MOFAZZAL', '01764343009', '3a09681b653ab7a71aee93371575b3a3', 1, '2021-09-01 12:02:00', 3, '2021-10-23 11:07:00', 3),
(108, 132, 'MD BASHIR UDDIN', '01711955641', '56400a4eb39fc7b1deb3c9985342a005', 1, '2021-09-04 12:51:00', 3, '2021-10-12 17:13:00', 3),
(109, 133, 'GOLAM MUHIT KHAN', '01711346570', '0e62e5a33d9098b491ee44d5cad7f9fa', 1, '2021-09-04 14:43:00', 3, '2021-11-01 10:53:00', 3),
(110, 134, 'FARID AHMED', '01819612130', 'e20269e4dccacad0b41d6a1c3ab853cb', 1, '2021-09-04 17:43:00', 3, '2021-11-01 10:29:00', 3),
(111, 135, 'NURUL ALAMIN', '01812585980', '1cde4eb12e2a4d9d17b699905ba6ffab', 1, '2021-09-05 10:06:00', 3, '2021-09-05 10:16:00', 3),
(112, 136, 'SOHEL UDDIN', '01815082791', '718654afa8dff2c37246c0bb218e07f9', 1, '2021-09-05 12:37:00', 3, '2021-10-14 10:16:00', 3),
(113, 137, 'TAHMINA KHATUN', '01764095106', 'aa06015db20c681cbf452960c3112c40', 1, '2021-09-05 13:08:00', 3, '2021-09-05 13:45:00', 3),
(114, 138, 'N. M.SHARIF HASNAT', '01795776361', 'b4f3a2a9c07f179e5a15cc0523484f1c', 1, '2021-09-05 14:55:00', 3, '2021-09-05 15:18:00', 3),
(115, 139, 'MD NAZIBUR RAHMAN', '01711528530', 'bbad31680bae1907a1052a808ef8ae4a', 1, '2021-09-05 16:20:00', 3, '2021-10-13 12:47:00', 3),
(116, 140, 'ABDUL MANNAN', '01713031420', '62068f0a6e1d4e85b6feab57edaaa37a', 1, '2021-09-05 17:30:00', 3, '2021-11-01 10:03:00', 3),
(117, 141, 'SHAHRIAT HOSSAIN', '01786492431', '32b4f690e798a33baa61e6a5533477dc', 1, '2021-09-06 10:15:00', 3, '2021-10-13 17:32:00', 3),
(118, 142, 'MANNANUL KABIR', '01818228418', 'e0b66e734c86a1a6843ff003e413feee', 1, '2021-09-06 11:46:00', 3, '2021-10-12 15:44:00', 3),
(119, 143, 'MD ABDUL MATIN', '01741368614', 'ff18f36f18e23e05c99839c15ad903f0', 1, '2021-09-06 13:36:00', 3, '2021-11-01 12:08:00', 3),
(120, 144, 'MD KAMRUL ISLAM', '01711533657', 'e8b78353d0c414a725d5743c2e6c9b5e', 1, '2021-09-06 16:10:00', 3, '2021-10-28 12:17:00', 3),
(121, 145, 'ASHISH BONIK', '01746241962', 'dd7fedf12e5524d21e7473e702080a3e', 1, '2021-09-07 16:13:00', 3, '2021-11-01 10:27:00', 3),
(122, 146, 'ABDUR RAHIM', '01795820609', 'b15053d2c8270e47edfcfbc401108d05', 1, '2021-09-09 11:55:00', 3, '2021-11-01 10:06:00', 3),
(123, 147, 'MD HASANUR RAHMAN', '01712780176', 'f5c0d03a8958d932baff261461dc5cbb', 1, '2021-09-09 13:49:00', 3, '2021-10-13 12:01:00', 3),
(124, 148, 'GAZI MD NASIR UDDIN', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-09-11 09:43:00', 3, '2021-11-01 10:57:00', 3),
(125, 149, 'DIPON BISWAS', '01717821094', 'e58ff86135f875c1b11c016d782a7c1a', 1, '2021-09-11 11:09:00', 3, '2021-11-01 11:13:00', 3),
(126, 150, 'MD NURUL ISLAM TALUKDER', '01785449546', '12a95859c2c1e78060f8d764a11774c7', 1, '2021-09-11 14:28:00', 3, '2021-10-13 14:53:00', 3),
(127, 151, 'MD FAYRUL KARIM MOYUN', '01711869407', 'a700b4711b03982deee92f721ed9a16e', 1, '2021-09-14 10:16:00', 3, '2021-10-12 17:16:00', 3),
(128, 152, 'MR SHAHIDULLAH', '01943656375', '4e214b89bb9f82d2e5d3fba2de4b9645', 1, '2021-09-15 14:15:00', 3, '2021-10-13 10:59:00', 3),
(129, 153, 'JOYNAL ABBEDIN', '01718669016', '352d04145287f3a0d973206112bbb1b7', 1, '2021-09-21 10:13:00', 3, '2021-11-01 11:35:00', 3),
(130, 154, 'MD SHAHID KHAN', '01671717879', '4d2e95a3e2e9f0a764b1864c96085a2f', 1, '2021-09-21 13:05:00', 3, '2021-10-13 15:31:00', 3),
(131, 155, 'SYEDA SHAMSI ARA AHMED', '01720487491', '1215e85f846c1aa25ae4beff9888a619', 1, '2021-09-21 17:21:00', 3, '2021-09-22 10:16:00', 3),
(132, 157, 'MD ENAMUL RAZZAKE', '01818222703', '8ea435311649d7225f8585fada9d1644', 1, '2021-09-22 13:16:00', 3, '2021-09-22 14:06:00', 3),
(133, 158, 'MD EKRAMUL HAQUE', '01711234618', 'e0dbcbd2a5c8dafb129e2429cfe92eba', 1, '2021-09-22 17:41:00', 3, '2021-09-23 10:39:00', 3),
(134, 159, 'MR ASHRAFUL HAQUE', '01711822625', '35241fe7de5ff9aea36079d77a482c6b', 1, '2021-09-23 12:55:00', 3, '2021-09-23 15:51:00', 3),
(135, 160, 'MD ABDUL HAMID ', '01815019488', 'd7001a76eee3226cf927a12218a9a352', 1, '2021-09-25 11:09:00', 3, '2021-11-01 12:09:00', 3),
(136, 161, 'ALHAJ  SHAHJAHAN HAWLADER', '01728153076', 'de7aaf883d16dcac9b27014208baa743', 1, '2021-09-25 14:53:00', 3, '2021-11-01 10:21:00', 3),
(137, 162, 'MD ABU BAKAR SIDDIQUE', '01713383598', 'a1aefe10bfeea604ee55fcb1af9251a6', 1, '2021-09-25 17:52:00', 3, '2021-09-25 18:14:00', 3),
(138, 163, 'ADV ABDUL LATIF', '01712053654', 'f5cda57ba4d2b4f124c182d879183b3f', 1, '2021-09-26 12:28:00', 3, '2021-11-01 10:15:00', 3),
(139, 164, 'EKRAMUL HAQUE', '01814362177', '207e6aa0d8ef63cb12d36cfa8545336d', 1, '2021-09-26 12:48:00', 3, '2021-11-01 10:30:00', 3),
(140, 165, 'BADSHA MIAH', '01865224324', '8021f55b84d63506125978b3f503d10c', 1, '2021-09-26 16:50:00', 3, '2021-11-01 10:45:00', 3),
(141, 166, 'ROKEYA BEGUM', '01777617778', '6beb0c9503e4c05d451f6791124f386f', 1, '2021-09-27 12:01:00', 3, '2021-09-27 12:30:00', 3),
(142, 167, ' MR RINTO', '01712111855', '632ed1a1cc78a1d3df60ab35dc0224cf', 1, '2021-09-27 14:04:00', 3, '2021-11-01 09:55:00', 3),
(143, 168, 'MOSABBIR HOSSAIN', '01711033738', '5e315ad9a68f444b9030f91ed35bc2f2', 1, '2021-09-27 15:53:00', 3, '2021-09-27 16:17:00', 3),
(144, 169, 'SHAHIN AFSHAR ', '01917157575', 'f2943b8fc5e56a43f794e7b68a11b1e1', 1, '2021-09-28 10:14:00', 3, '2021-09-28 10:55:00', 3),
(145, 170, 'ABDUL KARIM', '01720265211', '93bd795ea8b127f2c9a23e1c2394950e', 1, '2021-09-28 12:12:00', 3, '2021-11-01 10:00:00', 3),
(146, 171, 'MD MASUDUZZAMAN', '01716589111', '0497651ca7bcf8ba4609acca3bdceb79', 1, '2021-09-28 13:48:00', 3, '2021-09-28 14:12:00', 3),
(147, 172, 'FAKHRUL ISLAM KHONDOKER', '01832697303', '155646cb3e5e08938b5cf8c2adf7380d', 1, '2021-09-28 16:00:00', 3, '2021-11-01 10:29:00', 3),
(148, 173, 'TAPAN KUMAR SARKER', '01726504146', '5edebed75fe26036c520452b11bab084', 1, '2021-09-29 16:46:00', 3, '2021-09-30 13:12:00', 3),
(149, 175, 'LILY  AKTER BEGUM', '01741329502', 'a20ba4cbb253afb1b3415c0a16add7ba', 1, '2021-10-14 11:23:00', 3, '0000-00-00 00:00:00', 0),
(150, 176, 'SHAHJAHAN KHAN ', '01829143567', 'eeecfd51c678508bcaaacd5370877c84', 1, '2021-10-14 12:06:00', 3, '2021-10-14 12:30:00', 3),
(151, 177, 'MD ABUL KHAYER', '01734300481', '7e5830e60bbf54790328d15786d24902', 1, '2021-10-14 12:50:00', 3, '0000-00-00 00:00:00', 0),
(152, 178, 'BINOY KUNDO', '01686812550', '0f4808de38c714111423dbcd04acfff7', 1, '2021-10-14 13:16:00', 3, '2021-11-01 10:35:00', 3),
(153, 179, 'FAISAL M RAHMAN', '01715106707', '2aad072fd38ba43f160655a3a13531ec', 1, '2021-10-14 13:41:00', 3, '2021-11-01 10:30:00', 3),
(154, 180, 'SHAHABUDDIN HOWLADER', '01723848594', 'ed02e6797ca440a9d1dd90054adba37e', 1, '2021-10-14 14:13:00', 3, '0000-00-00 00:00:00', 0),
(155, 181, 'MD SAIFUDDIN', '01838510510', '042b934f8ecd11ce035e1ff055a50495', 1, '2021-10-14 14:39:00', 3, '0000-00-00 00:00:00', 0),
(156, 182, 'MAJOR MURSALIN IBNE SIDDIQUE', '01769669999', 'b7d431b14f7f746407d2b340910c827d', 1, '2021-10-14 15:01:00', 3, '2021-11-01 11:36:00', 3),
(157, 183, 'MD SAIFUL ISLAM', '01714686310', '829e9220afc6d37371dc865a56212f94', 1, '2021-10-14 15:23:00', 3, '2021-10-14 15:27:00', 3),
(158, 184, 'MD IBRAHIM SHARKER', '01819255095', 'c862f01d86ba2d72d801fc51b421384d', 1, '2021-10-14 15:55:00', 3, '0000-00-00 00:00:00', 0),
(159, 185, 'S A SAIFUL', '01747906007', '9273d7b8aa5d9f0959d386d4d8d69dbd', 1, '2021-10-14 16:18:00', 3, '2021-10-14 16:34:00', 3),
(160, 186, 'ROKEYA BEGUM', '01819307653', 'fc806908459e2b69103be4c646d2221f', 1, '2021-10-14 16:48:00', 3, '0000-00-00 00:00:00', 0),
(161, 187, 'FOWZIA NAHID', '01919851001', 'e8afa3dfabbaa658f7997be57f05d0f7', 1, '2021-10-14 17:03:00', 3, '2021-11-01 10:58:00', 3),
(162, 188, 'ABDUR RAZZAK', '01712323512', 'fda05f290b3226324db6d1f0c0394ef9', 1, '2021-10-18 10:10:00', 3, '2021-11-01 10:09:00', 3),
(163, 189, 'MRS KHALEDA PARVEEN', '01712835281', '313a209923545cfae8a045b9b97376d1', 1, '2021-10-18 10:48:00', 3, '0000-00-00 00:00:00', 0),
(164, 190, 'RAIYAN ADIB', '01712161559', '2b83e55a62673d4c1e0bc6b5a4748178', 1, '2021-10-18 11:10:00', 3, '2021-10-18 11:11:00', 3),
(165, 191, 'LUTFAN NESA', '01746688524', 'efc5efc49b8e1fcdee61fc36165f5382', 1, '2021-10-18 11:35:00', 3, '2021-11-01 11:51:00', 3),
(166, 192, 'ADV REZIA BEGUM', '01938862420', 'd3ebf067660a86f5ee3ec1a20d33d19e', 1, '2021-10-18 12:49:00', 3, '2021-11-01 10:16:00', 3),
(167, 193, 'RAFIQUL ISLAM', '01712418956', '7d4ad7036b25b668d875b61757124b49', 1, '2021-10-18 13:25:00', 3, '2021-10-18 14:02:00', 3),
(168, 194, 'ABDUL HAMID', '01715169377', '14c32b4f77fa377d2c607337a953bcde', 1, '2021-10-18 14:30:00', 3, '2021-11-01 09:57:00', 3),
(169, 195, 'MD ROBIUL ALAM', '01818683075', 'b55f44ec30c4bbdec48b86e4697e4a01', 1, '2021-10-18 15:10:00', 3, '0000-00-00 00:00:00', 0),
(170, 196, 'AMATUL GANI', '01789776671', 'b7e55567d957f2099d48b9a8705db9bc', 1, '2021-10-18 15:39:00', 3, '2021-11-01 10:22:00', 3),
(171, 197, 'AMINA BINTE OMER', '01833063691', '47df4d93143884ac008488d884d16c9f', 1, '2021-10-18 16:06:00', 3, '2021-11-01 10:24:00', 3),
(172, 198, 'MD ZAHANGIR ALAM SHIKDER', '01711842843', 'e16aaf5ee9689b95b6686a2ba3d84067', 1, '2021-10-18 16:26:00', 3, '2021-10-18 17:19:00', 3),
(173, 199, 'NUR ALAM', '01613567251', 'd62bde30062c127eda0299721817585a', 1, '2021-10-18 17:54:00', 3, '2021-10-19 10:23:00', 3),
(174, 200, 'MUHAMMAD AMINUL ISLAM', '01951137035', '0aed4e72c11e8348e028acf5941bc673', 1, '2021-10-19 10:49:00', 3, '0000-00-00 00:00:00', 0),
(175, 201, 'MD BAHA  UDDIN SIKDER', '01711233065', 'b1c727244ea9aea00bd46156091d4730', 1, '2021-10-19 11:33:00', 3, '0000-00-00 00:00:00', 0),
(176, 202, 'MRS REZIA BEGUM', '01516760012', 'ea3f95219c909c837ffd9d77a5039255', 1, '2021-10-19 12:11:00', 3, '0000-00-00 00:00:00', 0),
(177, 203, 'MD MOBARAK HOSSAIN', '01716510528', '1365e21497999cae6ec352b60a3a3f48', 1, '2021-10-19 12:38:00', 3, '2021-10-19 13:42:00', 3),
(178, 204, 'GOLAM MAHIUDDIN SWAPON', '01727024575', '22401027b1ae71f39df04c34d5c9e8d8', 1, '2021-10-19 14:04:00', 3, '2021-11-01 10:54:00', 3),
(179, 205, 'NAZIM UDDIN', '01716930839', '5ce2f11a18db464bf8d5b76f2d02198c', 1, '2021-10-19 14:30:00', 3, '0000-00-00 00:00:00', 0),
(180, 206, 'ABDUL KUDDUS', '01735014518', '456ebc4cebcaadf1431a70618a3f077c', 1, '2021-10-19 15:12:00', 3, '2021-11-01 10:02:00', 3),
(181, 207, 'SYED NIZAMUDDIN', '01822340165', '3c302eeceaa86d91aac30edb2af66033', 1, '2021-10-19 15:45:00', 3, '2021-10-19 15:50:00', 3),
(182, 208, 'KHORSHED ALAM', '01711375864', 'c7d8d447596dc8aed257a5f554543fcd', 1, '2021-10-21 10:15:00', 3, '2021-11-01 11:18:00', 3),
(183, 209, 'MAZEDA KHATUN', '01813644642', '0f067441e2f47f02f03ed005f9937683', 1, '2021-10-21 12:07:00', 3, '2021-10-21 15:37:00', 3),
(184, 210, 'LT COL PERVERUL ALAM', '01717940192', '459f90c9b2ba9b0750d59fe71be65ec3', 1, '2021-10-23 11:37:00', 3, '2021-11-01 12:01:00', 3),
(185, 211, 'KAZI TIPU MIA', '01711127906', 'aa42c6b5d7a6e25718852adbbd3d0aab', 1, '2021-10-23 12:35:00', 3, '2021-11-01 11:30:00', 3),
(186, 212, 'MD MAHBUBUL ISLAM', '01712801433', '009702c239bbc241f9439e554678c016', 1, '2021-10-23 15:30:00', 3, '2021-10-23 17:20:00', 3),
(187, 213, 'A K M MUSA', '01711843280', '02ea509c2801a1b0a40a984f8ec1c8e9', 1, '2021-10-24 10:04:00', 3, '2021-11-01 09:56:00', 3),
(188, 214, 'MD KHURSHEDUR RAHMAN', '01924082482', '89970b988b812cfb487c8a354668d6e5', 1, '2021-10-24 13:20:00', 3, '2021-10-24 14:43:00', 3),
(189, 215, 'MD HUMAYAN KABIR HOWLADER', '01716707795', '4c513655adf0a6b3d3303f013cc75b62', 1, '2021-10-24 17:13:00', 3, '2021-10-25 11:49:00', 3),
(190, 216, 'MD SHAHIDUL ISLAM', '01713506162', '1aeabdb6d131ef49335a87423949d97e', 1, '2021-10-25 12:48:00', 3, '0000-00-00 00:00:00', 0),
(191, 217, 'MD SHORIF', '01712738436', '8caf6461fadca98a36f5204f7c3fd691', 1, '2021-10-25 13:38:00', 3, '0000-00-00 00:00:00', 0),
(192, 218, 'GOLAM  MD KIBRIA', '01711634548', '11c31a30db432535d92601eab8f7aab1', 1, '2021-10-25 14:28:00', 3, '2021-11-07 17:14:00', 3),
(193, 219, 'ABDUS SALAM', '01766388131', '194f0d65411ea73a5c12ec215aad0fdb', 1, '2021-10-25 15:16:00', 3, '2021-11-01 10:11:00', 3),
(194, 220, 'ABDUL MOTALEB', '01869737369', '2561439396dc5b688a3056c94ecad6c3', 1, '2021-10-25 17:57:00', 3, '2021-11-01 10:05:00', 3),
(195, 221, 'MAJOR HABIB RAIS UDDIN', '01713069060', 'dfea2972ebecbf23d4b04e7cee96cdbf', 1, '2021-10-26 12:52:00', 3, '2021-11-01 11:38:00', 3),
(196, 222, 'SIDDIQUE AZAD BABUL', '01811576161', '2426054190f6c57b4419f34e02a280a7', 1, '2021-10-26 14:41:00', 3, '2021-10-26 15:57:00', 3),
(197, 223, 'MD SHAHEED HOSSAN', '01819433048', 'ffdf8253d1284fcb37d9afbac72eb8b0', 1, '2021-10-26 16:21:00', 3, '2021-10-27 09:47:00', 3),
(198, 224, 'LIAKOT ALI MOLLAH', '01711042670', 'b470a1001fa94fe89587ba8b6b9c3a96', 1, '2021-10-27 10:31:00', 3, '2021-11-01 11:16:00', 3),
(199, 225, 'MD ABU ISHAQUR SIKDER', '01711351219', '609c65a4a998715f0c2b333568027101', 1, '2021-10-27 12:57:00', 3, '2021-10-27 13:27:00', 3),
(200, 226, 'MD MOJAMMEL HAQUE', '01740837492', '5004c6cdc810736ffde3a3992f1a51b9', 1, '2021-10-27 14:16:00', 3, '2021-10-27 14:45:00', 3),
(201, 227, 'ROKON UDDIN ', '01878452793', 'f5eaf354a34f84d03bac6372f2402ace', 1, '2021-10-27 16:42:00', 3, '2021-10-27 17:07:00', 3),
(202, 228, 'JOBADA RAHMAN', '01713768380', '7eef63b8cd766306c4a50b52815df69b', 1, '2021-10-28 10:43:00', 3, '2021-11-01 10:48:00', 3),
(203, 229, 'SHREE RATAN KUMAR SARKER', '01724384471', '83122f92b30dd1f3d80fa195e61e72a5', 1, '2021-10-28 11:52:00', 3, '2021-10-28 11:59:00', 3),
(204, 230, 'M. A . A. ZAKARIAH', '01911333348', 'c7bb8d977a520c02319a561be3d8043c', 1, '2021-10-28 12:50:00', 3, '2021-11-01 11:45:00', 3),
(205, 231, 'MOHIUDDIN BHUIYAN', '01922115565', '624ebdd25bf51be0c68ed0bc911306d6', 1, '2021-10-28 16:28:00', 3, '0000-00-00 00:00:00', 0),
(206, 232, 'ADV. G.M  ANWAR HOSSAIN', '01718758376', '3d9a103286f4a21182952919707ac311', 1, '2021-11-01 09:22:00', 3, '2021-11-01 12:32:00', 3),
(207, 233, 'MUSTAFIZUR RAHMAN', '01751854181', '50d4052fc92093097d0609e826b62a9b', 1, '2021-11-01 13:58:00', 3, '2021-11-01 14:39:00', 3),
(208, 234, 'MRS JOBAYRA BEGUM', '01786770832', '04de156b154bf542a56784fb84e2df32', 1, '2021-11-01 15:31:00', 3, '2021-11-01 16:39:00', 3),
(209, 235, 'NASIR AHMED', '01818906060', '55c2d021336132138782a0ec56cc3907', 1, '2021-11-01 16:53:00', 3, '2021-11-08 10:39:00', 3),
(210, 236, 'NURUNNAHAR BEGUM', '01647461547', 'e1be3de4b8ae2153c639f038ac862b73', 1, '2021-11-01 17:37:00', 3, '2021-11-01 17:56:00', 3),
(211, 237, 'NURUL ISLAM', '0172056362', 'b31ce050d42ba577e7f87d8332fe419e', 1, '2021-11-02 09:55:00', 3, '0000-00-00 00:00:00', 0),
(212, 238, 'SHIBANI RANI DAS', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-11-02 10:07:00', 3, '2021-11-02 10:49:00', 3),
(213, 239, 'MD GOLAM RASHID KHAN', '01710723336', '9706051381a0958d71d548be03d3c538', 1, '2021-11-02 11:03:00', 3, '2021-11-02 11:26:00', 3),
(214, 240, 'BELLAL', '01947104249', 'ff1dfe6308e97a8f4d43e467b55ecfb2', 1, '2021-11-02 11:44:00', 3, '2021-11-02 12:03:00', 3),
(215, 241, 'WASIM REZA', '01716682540', '8597a53e32a37c515eaa9165dd75d17c', 1, '2021-11-02 12:24:00', 3, '0000-00-00 00:00:00', 0),
(216, 242, 'GOUR CHANDRA', '01831337521', 'e45f4c8659f06d86bca1a8d1a69ce166', 1, '2021-11-02 12:37:00', 3, '2021-11-02 12:45:00', 3),
(217, 243, 'SAMSUN NAHAR', '01725507458', 'd9198750573116b0f8eb3ffe02ff2c68', 1, '2021-11-02 14:10:00', 3, '2021-11-02 14:23:00', 3),
(218, 244, 'ZAHIDUL KARIM', '01716002987', '7eec345336589c3c2fb0ce03f383548a', 1, '2021-11-02 14:40:00', 3, '2021-11-02 16:27:00', 3),
(219, 245, 'ASIA BEGUM', '01771629507', '13c0223e86f62ec4c8e79284d6fe8d80', 1, '2021-11-02 17:01:00', 3, '2021-11-02 17:19:00', 3),
(220, 246, 'SALMA AHMED', '01674091051', 'fa9c4cf573efd11f79d9d05077393592', 1, '2021-11-03 09:39:00', 3, '0000-00-00 00:00:00', 0),
(221, 247, 'SHAFIQUR RAHMAN', '01712780803', 'e544ef8b6c8af4e45cff4c946b4dee82', 1, '2021-11-03 09:58:00', 3, '2021-11-03 11:19:00', 3),
(222, 248, 'GOUTAM CHWDHURY', '01712547094', 'e70a446d62238a93b2693de6907f3e4f', 1, '2021-11-03 11:28:00', 3, '2021-11-03 12:04:00', 3),
(223, 249, 'ALI AHMED ', '01815382938', 'c6f219a62ac4efcb05ef58b7460f0b8c', 1, '2021-11-03 12:29:00', 3, '2021-11-03 13:16:00', 3),
(224, 250, 'AMIN ULLAH', '01728130243', '4fe357626a3d861f354b735d54a21fe1', 1, '2021-11-03 13:41:00', 3, '2021-11-03 13:58:00', 3),
(225, 251, 'RAHIMA KHATUN', '01728575962', '8e07b6297cc03f0025f89423531a0fc2', 1, '2021-11-03 14:31:00', 3, '2021-11-03 15:11:00', 3),
(226, 252, 'MD SHAJAHAN MIAH', '01713681619', '4bdf9371b86a7e84d01f7d7283ab3967', 1, '2021-11-03 15:43:00', 3, '2021-11-03 16:11:00', 3),
(227, 253, 'MD AHMED HOSSAIN', '01711440470', '740e9d725fec8e4e0939a0316e52f163', 1, '2021-11-03 16:52:00', 3, '2021-11-04 12:35:00', 3),
(228, 255, 'MD ALAUDDIN', '01740603162', '7f9432348748f01aa85b5fee8ccc1e1f', 1, '2021-11-04 09:24:00', 3, '2021-11-04 11:18:00', 3),
(229, 256, 'MRS  HASNA HENA', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-11-04 15:10:00', 3, '2021-11-08 14:53:00', 3),
(230, 257, 'MD SHAMSUR RAHMAN', '01710290290', '4c1a0315fcba25638d2ad74b6336032e', 1, '2021-11-04 15:49:00', 3, '2021-11-04 16:10:00', 3),
(231, 258, 'SHOAB AHMED HASEEB', '01919159926', 'e534ff9abb710a470426711bed206a93', 1, '2021-11-04 16:30:00', 3, '0000-00-00 00:00:00', 0),
(232, 259, 'NURJAHAN BEGUM', '01627273423', '4f3149fff2f5496ee0fc4467171cd5a9', 1, '2021-11-04 17:26:00', 3, '0000-00-00 00:00:00', 0),
(233, 260, 'ISTEAK HOSSAIN', '01911393785', '295ac62ebe579a7083f0dcdd42e98e55', 1, '2021-11-06 13:19:00', 3, '0000-00-00 00:00:00', 0),
(234, 261, 'SHAHID MRIDHA', '01741182535', '11956c4221dca1d4e383ca71dd4dc449', 1, '2021-11-06 14:19:00', 3, '2021-11-08 16:35:00', 3),
(235, 262, 'NILIMA NASREEN', '01772472497', '4025837e2124841cdb52a85a748264e1', 1, '2021-11-06 15:04:00', 3, '2021-11-08 17:02:00', 3),
(236, 263, 'KAZI SHAHNAWAZ', '01711287436', 'e51cd247f9e76cdea495995b69f1f198', 1, '2021-11-07 09:44:00', 3, '2021-11-07 11:46:00', 3),
(237, 264, 'ABDUL JABBAR SIKDER', '01753834156', '7197d2c70ee8f32f84d14cf461403536', 1, '2021-11-07 12:07:00', 3, '2021-11-07 12:41:00', 3),
(238, 265, 'MOLY', '01909964813', '11e029208c302651244212d92344fa27', 1, '2021-11-07 14:20:00', 3, '0000-00-00 00:00:00', 0),
(239, 266, 'SUMON', '01712095673', 'af4445d332eb222f175628576ad7a704', 1, '2021-11-07 15:18:00', 3, '2021-11-07 15:57:00', 3),
(240, 267, 'ALHAZ MD ASHRAFUL ALAM', '01819119569', '1f03e1e0e8840709a600cf39d32579df', 1, '2021-11-07 17:45:00', 3, '2021-11-08 17:51:00', 3),
(241, 268, 'MD SHAHDAT HOSSAIN', '01712934447', '8916b7d7bd202dd4703f4b913ec681c6', 1, '2021-11-08 11:05:00', 3, '2021-11-08 12:02:00', 3),
(242, 269, 'HAMIDA BEGUM', '01727111676', '1517a71d161e360d673abfb8638b1bbc', 1, '2021-11-08 12:20:00', 3, '2021-11-08 13:44:00', 3),
(243, 270, 'S M SELIM', '01711356152', '7629051f75a3a6b94bcf14f4a0f96dde', 1, '2021-11-08 14:27:00', 3, '2021-11-08 15:29:00', 3),
(244, 3, 'Nurunnahar Begum', '01731480263', '267f16acf341242a06f97963be07026b', 1, '2021-05-25 17:49:00', 2, '2021-06-27 13:24:00', 3),
(245, 5, 'Abdul Haque', '01716504264', 'b30b5c03a5eaf4453e44577b01b9517e', 1, '2021-05-26 11:42:00', 2, '2021-11-01 09:58:00', 3),
(246, 6, 'Mohammad Hossain chow.', '01816908170', '2fa93c1b18a7cf5291f6270626503f81', 1, '2021-05-27 10:24:00', 3, '2021-06-28 14:35:00', 3),
(247, 7, 'Abdul Jalil', '01733519944', '6728e9dc069392dec3b569653876f292', 1, '2021-05-28 10:49:00', 3, '2021-11-01 09:59:00', 3),
(248, 8, 'Morshed Ali', '01911369636', '2d84a5e0b4c60cab475b0764f5ab1f71', 1, '2021-05-28 11:12:00', 2, '2021-06-29 10:48:00', 3),
(249, 11, 'Fatema Begum', '01721942783', 'ea4c0d6ec9059e6abd411ed852f078e0', 1, '2021-05-28 12:18:00', 2, '2021-11-01 11:04:00', 3),
(250, 21, 'Major Golam Mustofa Khan ', '01822989844', '22d05c232a43505e75d5d3b25206f1ad', 1, '2021-06-24 11:51:00', 3, '2021-11-01 11:39:00', 3),
(251, 22, 'Sojib Sorkar (TEST)', '01737499550', 'd57f26ed34faef75a71308171c081429', 1, '2021-06-27 11:54:00', 3, '2021-08-10 16:58:00', 2),
(252, 26, 'MD FAISAL ANWAR', '01711820982', '43f96eb718bc2b66f31150404ed21a12', 1, '2021-06-28 15:29:00', 3, '2021-10-13 11:38:00', 3),
(253, 27, 'ROWSHAN ARA HOSSAIN', '01711505046', 'cb38a9a483e6cb1e8715074aad4edcf0', 1, '2021-06-28 16:04:00', 3, '2021-06-29 15:25:00', 3),
(254, 28, 'Mahamud Hasan Biplob ', '01731345046', '0e01a2bf657a635eee6eaa7f9502dfad', 1, '2021-06-28 17:12:00', 3, '2021-11-01 11:42:00', 3),
(255, 32, 'Mohammad Sahin Iqbal', '01717585851', '92a9aacec95c64fc9f751e9e09245550', 1, '2021-06-30 12:25:00', 3, '2021-06-30 12:25:00', 3),
(256, 33, 'SALEHA RAHMAN', '01715661508', 'ae8a31f48aeac039811ae8a4db1f331d', 1, '2021-06-30 15:27:00', 3, '2021-07-01 10:28:00', 3),
(257, 34, 'MAINUL ISLAM KHAN ', '01726523274', 'd41eb96d8b84a1b364dcb8ab9fede887', 1, '2021-07-01 11:20:00', 3, '2021-11-01 11:41:00', 3),
(258, 35, 'MIZANUR RAHMAN ', '01716358813', '77f2d0a8ade3aa1abfe434708d19f8a8', 1, '2021-07-01 15:12:00', 3, '2021-07-01 17:04:00', 3),
(259, 37, 'MD MAHBUB ALI', '01913086650', '90f81941b6412d4f027dacd89a981a29', 1, '2021-07-03 09:59:00', 3, '2021-10-13 14:58:00', 3),
(260, 38, 'JAHID HOSSAIN', '01917030305', '1b4d196f773629f4264b666eab1df514', 1, '2021-07-03 12:31:00', 3, '2021-11-01 10:50:00', 3),
(261, 39, 'NAZRUL ISLAM', '01777610994', 'f8bcdb323355f5683275db8aad7110f8', 1, '2021-07-03 17:38:00', 3, '2021-07-04 10:01:00', 3),
(262, 40, 'ZAHEDUN NABI', '01732708094', 'a9083ac3150a079f65bf1eeae3f2d003', 1, '2021-07-04 10:41:00', 3, '2021-07-04 11:40:00', 3),
(263, 41, 'MOHIUDDIN AHMED', '01937442418', 'd914fe731c5074d1fe4bd98dedbd70ad', 1, '2021-07-04 12:13:00', 3, '2021-07-04 12:24:00', 3),
(264, 42, 'SELIMA KHATUN', '01728357075', '53b0d85737ec86a0a384a9f5dc04779d', 1, '2021-07-04 12:41:00', 3, '2021-07-04 12:47:00', 3),
(265, 43, 'SHAKHWAT HOSSAIN CHOWDURY', '01747164781', '09755f23a2f92be809667d2de488ce83', 1, '2021-07-04 14:04:00', 3, '2021-10-13 17:35:00', 3),
(266, 44, 'MD FEROZ TARIK', '01712049915', '1ca4e2ccad2c4cb8f47c42a0581ebed7', 1, '2021-07-04 16:15:00', 3, '2021-10-13 11:57:00', 3),
(267, 45, 'KAZI HUMAYUN KABIR', '01552352450', '403c9310f4204c43871ccb18318785ca', 1, '2021-07-05 09:53:00', 3, '2021-11-01 11:24:00', 3),
(268, 46, 'Ahmed Hossain Tariq', '01711771221', '8c0a02f6f5d9892b69031f8e5f5db424', 1, '2021-07-05 13:22:00', 3, '2021-11-01 10:19:00', 3),
(269, 47, 'MR polash', '01816383253', '4dc79960799f3544c877d9787c33f682', 1, '2021-07-05 13:59:00', 3, '2021-07-05 15:15:00', 3),
(270, 48, 'MD DULAL', '01819480519', 'd94f9f9d901254d479bda8bd6d635fba', 1, '2021-07-05 16:01:00', 3, '2021-10-12 17:23:00', 3),
(271, 49, 'SHAMSUR RAHMAN', '01711965985', 'b015e15bb613e216ccb0dfeb794b1311', 1, '2021-07-06 10:51:00', 3, '2021-10-14 09:59:00', 3),
(272, 50, 'Mohammad Chan Miah', '01729931710', '94a8b747aac762906c133a3ae162546d', 1, '2021-07-06 16:10:00', 3, '2021-07-06 16:48:00', 3),
(273, 51, 'Rafiqul Islam', '01726372680', '65d5bc5c7af0690bd73992873a559203', 1, '2021-07-07 10:03:00', 3, '2021-07-07 10:54:00', 3),
(274, 52, 'Amerendra Sarker', '01711195408', 'f052c2a724e2b0605f4f5b5a2f257c63', 1, '2021-07-07 13:35:00', 3, '2021-11-01 10:23:00', 3),
(275, 53, 'Nur Hossain', '01918128136', '9f2c74047d56a77f0a693c610aa946cf', 1, '2021-07-07 17:08:00', 3, '2021-07-08 09:06:00', 3),
(276, 54, 'Md Ariful Isalam', '01713607580', '96b20d3fd2ebc332ab912200e755358e', 1, '2021-07-08 09:36:00', 3, '2021-10-13 14:51:00', 3),
(277, 55, 'Morium Jamila ', '01927676480', 'c0d7001b0c0710ccfb036ecdd4619350', 1, '2021-07-08 10:46:00', 3, '2021-07-08 12:15:00', 3),
(278, 56, 'MD Assaduzzaman', '01921561666', '518fc70d41a1928f9f80c6114fe15918', 1, '2021-07-08 12:53:00', 3, '2021-10-12 17:04:00', 3),
(279, 57, 'MD AbduL  MAJID', '01985766260', '37ffb5dad147def1e2af936bb4bd2821', 1, '2021-07-08 13:47:00', 3, '2021-10-12 15:54:00', 3),
(280, 58, 'Razina Akter', '01713061558', '0c0fe744688887e07832684a6ac752e9', 1, '2021-07-08 16:09:00', 3, '2021-07-08 16:54:00', 3),
(281, 59, 'MD KHALEQUZZAMAN', '01712049642', '4ed77d5093712b26955dc1d8b6d4818a', 1, '2021-07-08 17:42:00', 3, '2021-10-13 14:46:00', 3),
(282, 60, 'Rokeya Begum ', '01711512948', '23280b1d64eb07ae235a8c02da410a86', 1, '2021-07-10 13:17:00', 3, '2021-07-10 14:11:00', 3),
(283, 61, 'RUKSANA BEGUM', '01922701559', '6b375ad9edea1d4a00bacb30f34eaccc', 1, '2021-07-10 14:51:00', 3, '2021-07-10 14:53:00', 3),
(284, 62, 'ABDUL KARIM CHOWDHURY', '01843578801', 'dc572440aaa90e12ba7ed6384516da9f', 1, '2021-07-10 15:31:00', 3, '2021-11-01 10:01:00', 3),
(285, 63, 'MD ABDUL RAHIM', '01711474930', '5fe0908754b91af655a8d0618cf249af', 1, '2021-07-10 16:36:00', 3, '2021-11-01 12:07:00', 3),
(286, 64, 'REZAUL KARIM', '01719403612', 'd243241eb9ba166383121f12be5d1e1a', 1, '2021-07-10 17:52:00', 3, '2021-07-11 12:08:00', 3),
(287, 65, 'Mojibur Rahman ', '01769007810', '3033df9d6c9341f52c8d2a82ceb06952', 1, '2021-07-11 14:40:00', 3, '2021-07-11 15:17:00', 3),
(288, 66, 'SHAMSUL HAQUE CHOWDURY', '01715437719', '91b3a18f0262c314eaef45e69580439c', 1, '2021-07-11 17:25:00', 3, '2021-10-27 16:01:00', 3),
(289, 67, 'RAFIQUE AHMED', '01847339838', 'f4aa7ef796762831223614f98813b75d', 1, '2021-07-12 10:34:00', 3, '2021-08-04 16:23:00', 3),
(290, 68, 'ATAUR RAHMAN ARZU', '01711261405', '0ac379508ac9781e51742225a0c3af87', 1, '2021-07-13 15:15:00', 3, '2021-11-01 10:28:00', 3),
(291, 70, 'SHAHID HOSSEN KHAN', '01714117863', 'f2f634b4304fb3583d10c0e153ec2cb3', 1, '2021-07-14 09:59:00', 3, '2021-07-14 10:00:00', 3),
(292, 71, 'SYED KAMAL UDDIN HAIDER', '01925694126', '07f437c57646ec90181465b8e062b44d', 1, '2021-07-14 12:49:00', 3, '2021-10-14 10:30:00', 3),
(293, 72, 'MD SIRAZ HAWLADER', '0192273316', '2c7c7e2786d962c741f758e51fff4464', 1, '2021-07-14 13:30:00', 3, '2021-10-13 16:59:00', 3),
(294, 73, 'KAZI BELAYET HOSSEN', '01715889365', 'f5bba120670d3740c6390274aacc5d08', 1, '2021-07-14 14:40:00', 3, '2021-11-01 11:26:00', 3),
(295, 74, 'MD ABUL HOSSEN', '01825190825', 'd5a8018afdddc357696c69f5b55dd769', 1, '2021-07-15 12:05:00', 3, '2021-10-12 16:23:00', 3),
(296, 75, 'AL AMIN EBNA ABDULLAH', '01727153689', '9492bfba78ec02bf33b4fd67bef117ea', 1, '2021-07-15 16:17:00', 3, '2021-11-01 10:20:00', 3),
(297, 76, 'MD KAMRUL ALAM MOLLA', '01772490579', 'eb0e286fe68f6fad543d15cb8316745b', 1, '2021-07-17 13:20:00', 3, '2021-10-13 12:05:00', 3),
(298, 77, 'MOFFAKHARUL ISLAM', '01712120668', '719839af28e91accdb30bef45a43e925', 1, '2021-07-17 14:07:00', 3, '2021-07-17 14:09:00', 3),
(299, 78, 'MD TAREQ HOSSAIN', '01675572495', 'faa918e4dc383543851743834ff21f76', 1, '2021-07-17 15:28:00', 3, '2021-10-13 17:04:00', 3),
(300, 79, 'MRS SHAHIDA PARVEEN ', '01617436040', '25f250f6fd580f7ed9944dc504b3b02e', 1, '2021-07-17 16:44:00', 3, '2021-07-17 16:44:00', 3),
(301, 80, 'MASUDA PARVEEN', '01684964177', '3f13e3a8c37fab60d47115fa53b50fb0', 1, '2021-07-18 12:01:00', 3, '2021-10-12 13:14:00', 3),
(302, 81, 'HABIBUR RAHMAN', '01670700400', '71e940cc68e15ccaa9de6309e78c35ba', 1, '2021-07-19 10:57:00', 3, '2021-11-01 10:52:00', 3),
(303, 82, 'MD TARIKUL ISLAM', '01716908728', '3ee05c43826491d48c97f918e2c9dc7f', 1, '2021-07-19 12:57:00', 3, '2021-07-19 15:09:00', 3),
(304, 83, 'ANINDYA BARUA', '01820860464', 'f7babe6bdba95128cf3d5ab2d703d855', 1, '2021-07-25 15:01:00', 3, '2021-11-01 10:26:00', 3),
(305, 84, 'HARUNUR RASHID MAZUMDER ', '01711272975', '60d23168c1e1c6f28d817b3050ca8e0e', 1, '2021-07-26 16:06:00', 3, '2021-11-01 10:51:00', 3),
(306, 85, 'MRS . MORIUM ARA', '01983240580', 'fe67044bb50334b90d4d1bae72713d19', 1, '2021-07-29 12:33:00', 3, '2021-07-29 12:34:00', 3),
(307, 86, 'ABUL KHAYER', '01673911601', '2a6fc315b4f5ca24a9a1e11801b87c5c', 1, '2021-07-29 13:33:00', 3, '2021-11-01 10:11:00', 3),
(308, 87, 'MOHAMMAD AKHTERUZZAMAN', '01712067174', 'e80142600c0911afb6fc1ec958b60828', 1, '2021-07-29 16:04:00', 3, '2021-07-31 10:30:00', 3),
(309, 88, 'LOKMAN KHAN', '01716501685', 'fc0e82a71c760648714b568dcbce7017', 1, '2021-07-31 12:39:00', 3, '2021-11-01 12:02:00', 3),
(310, 89, 'TANZIR AHMED', '01734929207', '8c724fc5b0d726fd2d1d8d48460a82d9', 1, '2021-07-31 13:17:00', 3, '2021-10-28 12:41:00', 3),
(311, 90, 'ADV. ABDUS SOBHAN', '01711124489', '8bf2f5595aa8c9e8498e812fa0e807f1', 1, '2021-08-02 13:50:00', 3, '2021-11-01 10:17:00', 3),
(312, 91, 'MD AMINUL ISLAM', '01719547027', '40ef9ad7c53ac2c9d31a8a28787a292b', 1, '2021-08-02 17:09:00', 3, '2021-10-12 13:23:00', 3),
(313, 92, 'KHOHINUR AKTER', '01839911652', '87bb1dfc7a24234ce6d91ae901c4a084', 1, '2021-08-03 12:05:00', 3, '2021-11-01 11:30:00', 3),
(314, 93, 'MD AFZAL HOSSAIN', '01730076041', '2e6a1cb83e8a87e5f405b5c400836947', 1, '2021-08-03 12:42:00', 3, '2021-10-12 16:36:00', 3),
(315, 94, 'MD NAZRUL ISLAM', '01711200243', '80f0056df59d562c305fa8c0f33fb7f0', 1, '2021-08-03 15:03:00', 3, '2021-10-13 12:53:00', 3),
(316, 95, 'MD FAYSAL AHMED', '01790060361', 'c1259f0979f8620bdd6ebbf9b9b9fb95', 1, '2021-08-03 16:55:00', 3, '2021-10-13 11:49:00', 3),
(317, 96, 'ABDUR RAHMAN', '01971767676', '564e914ad96431fd5768aef0c542663f', 1, '2021-08-04 10:08:00', 1, '2021-11-01 10:08:00', 3),
(318, 97, 'SWAPON SARKER', '01737317875', 'fd03dfc7743865c900742d2669a7965d', 1, '2021-08-04 10:58:00', 3, '2021-10-14 10:27:00', 3),
(319, 98, 'SAMSUN NAHAR KHANOM', '01770982905', 'a2efd9c02f4d683a160ff707193b0985', 1, '2021-08-05 11:52:00', 3, '2021-10-12 13:40:00', 3),
(320, 99, 'SAMSUN NAHAR KHANOM', '01770982905', 'a2efd9c02f4d683a160ff707193b0985', 1, '2021-08-05 11:52:00', 3, '2021-08-05 13:06:00', 3),
(321, 100, 'MD ABDUL AZIZ', '01711195218', 'e2cc70cd32fa2ca4f030f7716ca79f20', 1, '2021-08-08 11:59:00', 3, '2021-10-12 13:18:00', 3),
(322, 101, 'MD ABDUL AZIZ', '01711195218', 'e2cc70cd32fa2ca4f030f7716ca79f20', 1, '2021-08-08 11:59:00', 3, '2021-11-01 12:11:00', 3),
(323, 102, 'EARMIN HOSSAIN KANTA', '01717032437', 'c49cd81f13c1fe5bcf1a1179389c8098', 1, '2021-08-09 15:03:00', 3, '2021-11-01 10:31:00', 3),
(324, 104, 'MD ANWARUL ISLAM', '01977277315', '27562469faf3a1f10a456c74793871de', 1, '2021-08-09 17:50:00', 3, '2021-10-12 16:43:00', 3),
(325, 105, 'MASUDA KHATUN', '01824410291', '8c339216f05c90df94efa4e3bfddba0d', 1, '2021-08-10 11:22:00', 3, '2021-10-12 15:48:00', 3),
(326, 106, 'Ronju Ahmed', '01321661203', 'be13c65b6a1b74fdab988181549e08a7', 1, '2021-08-10 15:37:00', 3, '2021-08-24 10:44:00', 3),
(327, 107, 'SHARIFUL ISLAM', '01924425841', 'a50accd4b9716cb38f0dc15d5bba195f', 1, '2021-08-12 11:10:00', 3, '2021-10-14 10:14:00', 3),
(328, 108, 'MOBARAK HOSSAIN MALIICK', '01716461637', 'bbf157f276921728f51fa383adb15e4e', 1, '2021-08-12 11:47:00', 3, '0000-00-00 00:00:00', 0),
(329, 109, 'MD KHALED AHMED KHONDOKER', '01715431731', '0c1db658ee3573323cabdd81f9a8825a', 1, '2021-08-14 17:38:00', 3, '2021-10-13 12:24:00', 3),
(330, 110, 'AMINUL ISLAM', '01711563292', 'bf573d0280eabd1c9d58a88c69602eba', 1, '2021-08-14 17:42:00', 3, '2021-11-01 10:25:00', 3),
(331, 111, 'DELOWER HOSSAIN', '01711533831', 'cd924530c688411a5b46d8d81f7b6220', 1, '2021-08-16 11:43:00', 3, '2021-11-01 10:34:00', 3),
(332, 112, 'YUNUS UDDIN MIA', '01712665077', '2a879783bd72128d9f6c4d3bf4e1dab4', 1, '2021-08-16 15:20:00', 3, '2021-08-16 16:50:00', 3),
(333, 113, 'SYED JALIL', '01712517409', 'c18c36c356338b292bc74fca10391d0b', 1, '2021-08-17 11:30:00', 3, '2021-08-17 12:37:00', 3),
(334, 114, 'MD MONIRUL ISLAM', '01716389775', '8f017a9b159a2e3f54e1ba78ff1bbe26', 1, '2021-08-17 17:06:00', 3, '2021-10-13 12:43:00', 3),
(335, 115, 'NUR ALAM', '01780285788', '8125394ed43105c2d30e767da6cf605c', 1, '2021-08-18 10:49:00', 3, '2021-08-18 11:03:00', 3),
(336, 116, 'KHONDOKAR ZAKIR HOSSAIN', '01716182051', '8cc8d1d8c92f91962b50b41d7792ef73', 1, '2021-08-18 14:08:00', 3, '2021-11-01 11:19:00', 3),
(337, 117, 'SYEDA HASINA BEGUM', '01843923253', '03653d3c9c967398500379d5f0d554ae', 1, '2021-08-18 16:21:00', 3, '2021-08-18 16:30:00', 3),
(338, 119, 'ABDUR RAZZAK', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-08-21 12:17:00', 3, '2021-11-01 10:08:00', 3),
(339, 120, 'KAMAL UDDIN AHMED', '01550150641', '8f80de69b5101251d28330102c025587', 1, '2021-08-22 10:24:00', 3, '2021-11-01 11:28:00', 3),
(340, 121, 'SHAHADAT HOSSAIN', '01534655938', '16dda6b4ee704d948ad392bd15faa66a', 1, '2021-08-22 13:46:00', 3, '2021-08-30 16:43:00', 3),
(341, 122, 'JUSTICE SYED MD DASTAGIR', '01716043078', '3868fc794ab1d51d132a9bfb13478b11', 1, '2021-08-23 16:21:00', 3, '2021-11-01 11:33:00', 3),
(342, 123, 'MD MESER ALI', '01716163931', 'b341841ed274c6cd1fd8acf101d93fef', 1, '2021-08-24 16:03:00', 3, '2021-10-13 12:37:00', 3),
(343, 124, 'REZAUL KARIM', '01719985085', '3d4d459fae2808f516a61a74e6ad8d4c', 1, '2021-08-25 14:47:00', 3, '2021-08-25 16:16:00', 3),
(344, 125, 'MOHAMMAD EKHLASUR RAHMAN', '01731306998', '9a7ba9f595a36a0684d038bb023e8253', 1, '2021-08-31 13:03:00', 3, '2021-10-27 16:26:00', 3),
(345, 126, 'BILKIS NAHAR SHAPLA', '01557760917', '9e78683c0d62938b8e6b1d5d73526f95', 1, '2021-08-31 13:40:00', 3, '2021-11-01 10:42:00', 3),
(346, 127, 'NAZRUL ISLAM', '01784366368', '8830deb8f8b311a0ced3022836ce7866', 1, '2021-08-31 15:29:00', 3, '2021-08-31 15:52:00', 3),
(347, 128, 'SHAHRIAR MARUF', '01819215111', '5ed330673aff073f234f85cfacda1900', 1, '2021-08-31 16:23:00', 3, '2021-10-13 17:29:00', 3),
(348, 129, 'MD SHAHJAHAN MIA', '01711696982', '2fad796b0fb54ab3f15cce8bf3ed900b', 1, '2021-08-31 17:20:00', 3, '2021-10-13 15:34:00', 3),
(349, 130, 'MD HAMIDUR RAHMAN', '01711390377', 'acaf1e1894b247d2cd0ebe94e4d69cad', 1, '2021-09-01 09:47:00', 3, '2021-10-13 11:59:00', 3),
(350, 131, 'MOHAMMAD MOFAZZAL', '01764343009', '3a09681b653ab7a71aee93371575b3a3', 1, '2021-09-01 12:02:00', 3, '2021-10-23 11:07:00', 3),
(351, 132, 'MD BASHIR UDDIN', '01711955641', '56400a4eb39fc7b1deb3c9985342a005', 1, '2021-09-04 12:51:00', 3, '2021-10-12 17:13:00', 3),
(352, 133, 'GOLAM MUHIT KHAN', '01711346570', '0e62e5a33d9098b491ee44d5cad7f9fa', 1, '2021-09-04 14:43:00', 3, '2021-11-01 10:53:00', 3),
(353, 134, 'FARID AHMED', '01819612130', 'e20269e4dccacad0b41d6a1c3ab853cb', 1, '2021-09-04 17:43:00', 3, '2021-11-01 10:29:00', 3),
(354, 135, 'NURUL ALAMIN', '01812585980', '1cde4eb12e2a4d9d17b699905ba6ffab', 1, '2021-09-05 10:06:00', 3, '2021-09-05 10:16:00', 3),
(355, 136, 'SOHEL UDDIN', '01815082791', '718654afa8dff2c37246c0bb218e07f9', 1, '2021-09-05 12:37:00', 3, '2021-10-14 10:16:00', 3),
(356, 137, 'TAHMINA KHATUN', '01764095106', 'aa06015db20c681cbf452960c3112c40', 1, '2021-09-05 13:08:00', 3, '2021-09-05 13:45:00', 3),
(357, 138, 'N. M.SHARIF HASNAT', '01795776361', 'b4f3a2a9c07f179e5a15cc0523484f1c', 1, '2021-09-05 14:55:00', 3, '2021-09-05 15:18:00', 3),
(358, 139, 'MD NAZIBUR RAHMAN', '01711528530', 'bbad31680bae1907a1052a808ef8ae4a', 1, '2021-09-05 16:20:00', 3, '2021-10-13 12:47:00', 3),
(359, 140, 'ABDUL MANNAN', '01713031420', '62068f0a6e1d4e85b6feab57edaaa37a', 1, '2021-09-05 17:30:00', 3, '2021-11-01 10:03:00', 3),
(360, 141, 'SHAHRIAT HOSSAIN', '01786492431', '32b4f690e798a33baa61e6a5533477dc', 1, '2021-09-06 10:15:00', 3, '2021-10-13 17:32:00', 3),
(361, 142, 'MANNANUL KABIR', '01818228418', 'e0b66e734c86a1a6843ff003e413feee', 1, '2021-09-06 11:46:00', 3, '2021-10-12 15:44:00', 3),
(362, 143, 'MD ABDUL MATIN', '01741368614', 'ff18f36f18e23e05c99839c15ad903f0', 1, '2021-09-06 13:36:00', 3, '2021-11-01 12:08:00', 3),
(363, 144, 'MD KAMRUL ISLAM', '01711533657', 'e8b78353d0c414a725d5743c2e6c9b5e', 1, '2021-09-06 16:10:00', 3, '2021-10-28 12:17:00', 3),
(364, 145, 'ASHISH BONIK', '01746241962', 'dd7fedf12e5524d21e7473e702080a3e', 1, '2021-09-07 16:13:00', 3, '2021-11-01 10:27:00', 3),
(365, 146, 'ABDUR RAHIM', '01795820609', 'b15053d2c8270e47edfcfbc401108d05', 1, '2021-09-09 11:55:00', 3, '2021-11-01 10:06:00', 3),
(366, 147, 'MD HASANUR RAHMAN', '01712780176', 'f5c0d03a8958d932baff261461dc5cbb', 1, '2021-09-09 13:49:00', 3, '2021-10-13 12:01:00', 3),
(367, 148, 'GAZI MD NASIR UDDIN', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-09-11 09:43:00', 3, '2021-11-01 10:57:00', 3),
(368, 149, 'DIPON BISWAS', '01717821094', 'e58ff86135f875c1b11c016d782a7c1a', 1, '2021-09-11 11:09:00', 3, '2021-11-01 11:13:00', 3),
(369, 150, 'MD NURUL ISLAM TALUKDER', '01785449546', '12a95859c2c1e78060f8d764a11774c7', 1, '2021-09-11 14:28:00', 3, '2021-10-13 14:53:00', 3);
INSERT INTO `user_panel_login` (`upl_id`, `upl_p_id`, `upl_name`, `upl_credential`, `upl_key`, `upl_status`, `upl_created_at`, `upl_created_by`, `upl_updated_at`, `upl_updated_by`) VALUES
(370, 151, 'MD FAYRUL KARIM MOYUN', '01711869407', 'a700b4711b03982deee92f721ed9a16e', 1, '2021-09-14 10:16:00', 3, '2021-10-12 17:16:00', 3),
(371, 152, 'MR SHAHIDULLAH', '01943656375', '4e214b89bb9f82d2e5d3fba2de4b9645', 1, '2021-09-15 14:15:00', 3, '2021-10-13 10:59:00', 3),
(372, 153, 'JOYNAL ABBEDIN', '01718669016', '352d04145287f3a0d973206112bbb1b7', 1, '2021-09-21 10:13:00', 3, '2021-11-01 11:35:00', 3),
(373, 154, 'MD SHAHID KHAN', '01671717879', '4d2e95a3e2e9f0a764b1864c96085a2f', 1, '2021-09-21 13:05:00', 3, '2021-10-13 15:31:00', 3),
(374, 155, 'SYEDA SHAMSI ARA AHMED', '01720487491', '1215e85f846c1aa25ae4beff9888a619', 1, '2021-09-21 17:21:00', 3, '2021-09-22 10:16:00', 3),
(375, 157, 'MD ENAMUL RAZZAKE', '01818222703', '8ea435311649d7225f8585fada9d1644', 1, '2021-09-22 13:16:00', 3, '2021-09-22 14:06:00', 3),
(376, 158, 'MD EKRAMUL HAQUE', '01711234618', 'e0dbcbd2a5c8dafb129e2429cfe92eba', 1, '2021-09-22 17:41:00', 3, '2021-09-23 10:39:00', 3),
(377, 159, 'MR ASHRAFUL HAQUE', '01711822625', '35241fe7de5ff9aea36079d77a482c6b', 1, '2021-09-23 12:55:00', 3, '2021-09-23 15:51:00', 3),
(378, 160, 'MD ABDUL HAMID ', '01815019488', 'd7001a76eee3226cf927a12218a9a352', 1, '2021-09-25 11:09:00', 3, '2021-11-01 12:09:00', 3),
(379, 161, 'ALHAJ  SHAHJAHAN HAWLADER', '01728153076', 'de7aaf883d16dcac9b27014208baa743', 1, '2021-09-25 14:53:00', 3, '2021-11-01 10:21:00', 3),
(380, 162, 'MD ABU BAKAR SIDDIQUE', '01713383598', 'a1aefe10bfeea604ee55fcb1af9251a6', 1, '2021-09-25 17:52:00', 3, '2021-09-25 18:14:00', 3),
(381, 163, 'ADV ABDUL LATIF', '01712053654', 'f5cda57ba4d2b4f124c182d879183b3f', 1, '2021-09-26 12:28:00', 3, '2021-11-01 10:15:00', 3),
(382, 164, 'EKRAMUL HAQUE', '01814362177', '207e6aa0d8ef63cb12d36cfa8545336d', 1, '2021-09-26 12:48:00', 3, '2021-11-01 10:30:00', 3),
(383, 165, 'BADSHA MIAH', '01865224324', '8021f55b84d63506125978b3f503d10c', 1, '2021-09-26 16:50:00', 3, '2021-11-01 10:45:00', 3),
(384, 166, 'ROKEYA BEGUM', '01777617778', '6beb0c9503e4c05d451f6791124f386f', 1, '2021-09-27 12:01:00', 3, '2021-09-27 12:30:00', 3),
(385, 167, ' MR RINTO', '01712111855', '632ed1a1cc78a1d3df60ab35dc0224cf', 1, '2021-09-27 14:04:00', 3, '2021-11-01 09:55:00', 3),
(386, 168, 'MOSABBIR HOSSAIN', '01711033738', '5e315ad9a68f444b9030f91ed35bc2f2', 1, '2021-09-27 15:53:00', 3, '2021-09-27 16:17:00', 3),
(387, 169, 'SHAHIN AFSHAR ', '01917157575', 'f2943b8fc5e56a43f794e7b68a11b1e1', 1, '2021-09-28 10:14:00', 3, '2021-09-28 10:55:00', 3),
(388, 170, 'ABDUL KARIM', '01720265211', '93bd795ea8b127f2c9a23e1c2394950e', 1, '2021-09-28 12:12:00', 3, '2021-11-01 10:00:00', 3),
(389, 171, 'MD MASUDUZZAMAN', '01716589111', '0497651ca7bcf8ba4609acca3bdceb79', 1, '2021-09-28 13:48:00', 3, '2021-09-28 14:12:00', 3),
(390, 172, 'FAKHRUL ISLAM KHONDOKER', '01832697303', '155646cb3e5e08938b5cf8c2adf7380d', 1, '2021-09-28 16:00:00', 3, '2021-11-01 10:29:00', 3),
(391, 173, 'TAPAN KUMAR SARKER', '01726504146', '5edebed75fe26036c520452b11bab084', 1, '2021-09-29 16:46:00', 3, '2021-09-30 13:12:00', 3),
(392, 175, 'LILY  AKTER BEGUM', '01741329502', 'a20ba4cbb253afb1b3415c0a16add7ba', 1, '2021-10-14 11:23:00', 3, '0000-00-00 00:00:00', 0),
(393, 176, 'SHAHJAHAN KHAN ', '01829143567', 'eeecfd51c678508bcaaacd5370877c84', 1, '2021-10-14 12:06:00', 3, '2021-10-14 12:30:00', 3),
(394, 177, 'MD ABUL KHAYER', '01734300481', '7e5830e60bbf54790328d15786d24902', 1, '2021-10-14 12:50:00', 3, '0000-00-00 00:00:00', 0),
(395, 178, 'BINOY KUNDO', '01686812550', '0f4808de38c714111423dbcd04acfff7', 1, '2021-10-14 13:16:00', 3, '2021-11-01 10:35:00', 3),
(396, 179, 'FAISAL M RAHMAN', '01715106707', '2aad072fd38ba43f160655a3a13531ec', 1, '2021-10-14 13:41:00', 3, '2021-11-01 10:30:00', 3),
(397, 180, 'SHAHABUDDIN HOWLADER', '01723848594', 'ed02e6797ca440a9d1dd90054adba37e', 1, '2021-10-14 14:13:00', 3, '0000-00-00 00:00:00', 0),
(398, 181, 'MD SAIFUDDIN', '01838510510', '042b934f8ecd11ce035e1ff055a50495', 1, '2021-10-14 14:39:00', 3, '0000-00-00 00:00:00', 0),
(399, 182, 'MAJOR MURSALIN IBNE SIDDIQUE', '01769669999', 'b7d431b14f7f746407d2b340910c827d', 1, '2021-10-14 15:01:00', 3, '2021-11-01 11:36:00', 3),
(400, 183, 'MD SAIFUL ISLAM', '01714686310', '829e9220afc6d37371dc865a56212f94', 1, '2021-10-14 15:23:00', 3, '2021-10-14 15:27:00', 3),
(401, 184, 'MD IBRAHIM SHARKER', '01819255095', 'c862f01d86ba2d72d801fc51b421384d', 1, '2021-10-14 15:55:00', 3, '0000-00-00 00:00:00', 0),
(402, 185, 'S A SAIFUL', '01747906007', '9273d7b8aa5d9f0959d386d4d8d69dbd', 1, '2021-10-14 16:18:00', 3, '2021-10-14 16:34:00', 3),
(403, 186, 'ROKEYA BEGUM', '01819307653', 'fc806908459e2b69103be4c646d2221f', 1, '2021-10-14 16:48:00', 3, '0000-00-00 00:00:00', 0),
(404, 187, 'FOWZIA NAHID', '01919851001', 'e8afa3dfabbaa658f7997be57f05d0f7', 1, '2021-10-14 17:03:00', 3, '2021-11-01 10:58:00', 3),
(405, 188, 'ABDUR RAZZAK', '01712323512', 'fda05f290b3226324db6d1f0c0394ef9', 1, '2021-10-18 10:10:00', 3, '2021-11-01 10:09:00', 3),
(406, 189, 'MRS KHALEDA PARVEEN', '01712835281', '313a209923545cfae8a045b9b97376d1', 1, '2021-10-18 10:48:00', 3, '0000-00-00 00:00:00', 0),
(407, 190, 'RAIYAN ADIB', '01712161559', '2b83e55a62673d4c1e0bc6b5a4748178', 1, '2021-10-18 11:10:00', 3, '2021-10-18 11:11:00', 3),
(408, 191, 'LUTFAN NESA', '01746688524', 'efc5efc49b8e1fcdee61fc36165f5382', 1, '2021-10-18 11:35:00', 3, '2021-11-01 11:51:00', 3),
(409, 192, 'ADV REZIA BEGUM', '01938862420', 'd3ebf067660a86f5ee3ec1a20d33d19e', 1, '2021-10-18 12:49:00', 3, '2021-11-01 10:16:00', 3),
(410, 193, 'RAFIQUL ISLAM', '01712418956', '7d4ad7036b25b668d875b61757124b49', 1, '2021-10-18 13:25:00', 3, '2021-10-18 14:02:00', 3),
(411, 194, 'ABDUL HAMID', '01715169377', '14c32b4f77fa377d2c607337a953bcde', 1, '2021-10-18 14:30:00', 3, '2021-11-01 09:57:00', 3),
(412, 195, 'MD ROBIUL ALAM', '01818683075', 'b55f44ec30c4bbdec48b86e4697e4a01', 1, '2021-10-18 15:10:00', 3, '0000-00-00 00:00:00', 0),
(413, 196, 'AMATUL GANI', '01789776671', 'b7e55567d957f2099d48b9a8705db9bc', 1, '2021-10-18 15:39:00', 3, '2021-11-01 10:22:00', 3),
(414, 197, 'AMINA BINTE OMER', '01833063691', '47df4d93143884ac008488d884d16c9f', 1, '2021-10-18 16:06:00', 3, '2021-11-01 10:24:00', 3),
(415, 198, 'MD ZAHANGIR ALAM SHIKDER', '01711842843', 'e16aaf5ee9689b95b6686a2ba3d84067', 1, '2021-10-18 16:26:00', 3, '2021-10-18 17:19:00', 3),
(416, 199, 'NUR ALAM', '01613567251', 'd62bde30062c127eda0299721817585a', 1, '2021-10-18 17:54:00', 3, '2021-10-19 10:23:00', 3),
(417, 200, 'MUHAMMAD AMINUL ISLAM', '01951137035', '0aed4e72c11e8348e028acf5941bc673', 1, '2021-10-19 10:49:00', 3, '0000-00-00 00:00:00', 0),
(418, 201, 'MD BAHA  UDDIN SIKDER', '01711233065', 'b1c727244ea9aea00bd46156091d4730', 1, '2021-10-19 11:33:00', 3, '0000-00-00 00:00:00', 0),
(419, 202, 'MRS REZIA BEGUM', '01516760012', 'ea3f95219c909c837ffd9d77a5039255', 1, '2021-10-19 12:11:00', 3, '0000-00-00 00:00:00', 0),
(420, 203, 'MD MOBARAK HOSSAIN', '01716510528', '1365e21497999cae6ec352b60a3a3f48', 1, '2021-10-19 12:38:00', 3, '2021-10-19 13:42:00', 3),
(421, 204, 'GOLAM MAHIUDDIN SWAPON', '01727024575', '22401027b1ae71f39df04c34d5c9e8d8', 1, '2021-10-19 14:04:00', 3, '2021-11-01 10:54:00', 3),
(422, 205, 'NAZIM UDDIN', '01716930839', '5ce2f11a18db464bf8d5b76f2d02198c', 1, '2021-10-19 14:30:00', 3, '0000-00-00 00:00:00', 0),
(423, 206, 'ABDUL KUDDUS', '01735014518', '456ebc4cebcaadf1431a70618a3f077c', 1, '2021-10-19 15:12:00', 3, '2021-11-01 10:02:00', 3),
(424, 207, 'SYED NIZAMUDDIN', '01822340165', '3c302eeceaa86d91aac30edb2af66033', 1, '2021-10-19 15:45:00', 3, '2021-10-19 15:50:00', 3),
(425, 208, 'KHORSHED ALAM', '01711375864', 'c7d8d447596dc8aed257a5f554543fcd', 1, '2021-10-21 10:15:00', 3, '2021-11-01 11:18:00', 3),
(426, 209, 'MAZEDA KHATUN', '01813644642', '0f067441e2f47f02f03ed005f9937683', 1, '2021-10-21 12:07:00', 3, '2021-10-21 15:37:00', 3),
(427, 210, 'LT COL PERVERUL ALAM', '01717940192', '459f90c9b2ba9b0750d59fe71be65ec3', 1, '2021-10-23 11:37:00', 3, '2021-11-01 12:01:00', 3),
(428, 211, 'KAZI TIPU MIA', '01711127906', 'aa42c6b5d7a6e25718852adbbd3d0aab', 1, '2021-10-23 12:35:00', 3, '2021-11-01 11:30:00', 3),
(429, 212, 'MD MAHBUBUL ISLAM', '01712801433', '009702c239bbc241f9439e554678c016', 1, '2021-10-23 15:30:00', 3, '2021-10-23 17:20:00', 3),
(430, 213, 'A K M MUSA', '01711843280', '02ea509c2801a1b0a40a984f8ec1c8e9', 1, '2021-10-24 10:04:00', 3, '2021-11-01 09:56:00', 3),
(431, 214, 'MD KHURSHEDUR RAHMAN', '01924082482', '89970b988b812cfb487c8a354668d6e5', 1, '2021-10-24 13:20:00', 3, '2021-10-24 14:43:00', 3),
(432, 215, 'MD HUMAYAN KABIR HOWLADER', '01716707795', '4c513655adf0a6b3d3303f013cc75b62', 1, '2021-10-24 17:13:00', 3, '2021-10-25 11:49:00', 3),
(433, 216, 'MD SHAHIDUL ISLAM', '01713506162', '1aeabdb6d131ef49335a87423949d97e', 1, '2021-10-25 12:48:00', 3, '0000-00-00 00:00:00', 0),
(434, 217, 'MD SHORIF', '01712738436', '8caf6461fadca98a36f5204f7c3fd691', 1, '2021-10-25 13:38:00', 3, '0000-00-00 00:00:00', 0),
(435, 218, 'GOLAM  MD KIBRIA', '01711634548', '11c31a30db432535d92601eab8f7aab1', 1, '2021-10-25 14:28:00', 3, '2021-11-07 17:14:00', 3),
(436, 219, 'ABDUS SALAM', '01766388131', '194f0d65411ea73a5c12ec215aad0fdb', 1, '2021-10-25 15:16:00', 3, '2021-11-01 10:11:00', 3),
(437, 220, 'ABDUL MOTALEB', '01869737369', '2561439396dc5b688a3056c94ecad6c3', 1, '2021-10-25 17:57:00', 3, '2021-11-01 10:05:00', 3),
(438, 221, 'MAJOR HABIB RAIS UDDIN', '01713069060', 'dfea2972ebecbf23d4b04e7cee96cdbf', 1, '2021-10-26 12:52:00', 3, '2021-11-01 11:38:00', 3),
(439, 222, 'SIDDIQUE AZAD BABUL', '01811576161', '2426054190f6c57b4419f34e02a280a7', 1, '2021-10-26 14:41:00', 3, '2021-10-26 15:57:00', 3),
(440, 223, 'MD SHAHEED HOSSAN', '01819433048', 'ffdf8253d1284fcb37d9afbac72eb8b0', 1, '2021-10-26 16:21:00', 3, '2021-10-27 09:47:00', 3),
(441, 224, 'LIAKOT ALI MOLLAH', '01711042670', 'b470a1001fa94fe89587ba8b6b9c3a96', 1, '2021-10-27 10:31:00', 3, '2021-11-01 11:16:00', 3),
(442, 225, 'MD ABU ISHAQUR SIKDER', '01711351219', '609c65a4a998715f0c2b333568027101', 1, '2021-10-27 12:57:00', 3, '2021-10-27 13:27:00', 3),
(443, 226, 'MD MOJAMMEL HAQUE', '01740837492', '5004c6cdc810736ffde3a3992f1a51b9', 1, '2021-10-27 14:16:00', 3, '2021-10-27 14:45:00', 3),
(444, 227, 'ROKON UDDIN ', '01878452793', 'f5eaf354a34f84d03bac6372f2402ace', 1, '2021-10-27 16:42:00', 3, '2021-10-27 17:07:00', 3),
(445, 228, 'JOBADA RAHMAN', '01713768380', '7eef63b8cd766306c4a50b52815df69b', 1, '2021-10-28 10:43:00', 3, '2021-11-01 10:48:00', 3),
(446, 229, 'SHREE RATAN KUMAR SARKER', '01724384471', '83122f92b30dd1f3d80fa195e61e72a5', 1, '2021-10-28 11:52:00', 3, '2021-10-28 11:59:00', 3),
(447, 230, 'M. A . A. ZAKARIAH', '01911333348', 'c7bb8d977a520c02319a561be3d8043c', 1, '2021-10-28 12:50:00', 3, '2021-11-01 11:45:00', 3),
(448, 231, 'MOHIUDDIN BHUIYAN', '01922115565', '624ebdd25bf51be0c68ed0bc911306d6', 1, '2021-10-28 16:28:00', 3, '0000-00-00 00:00:00', 0),
(449, 232, 'ADV. G.M  ANWAR HOSSAIN', '01718758376', '3d9a103286f4a21182952919707ac311', 1, '2021-11-01 09:22:00', 3, '2021-11-01 12:32:00', 3),
(450, 233, 'MUSTAFIZUR RAHMAN', '01751854181', '50d4052fc92093097d0609e826b62a9b', 1, '2021-11-01 13:58:00', 3, '2021-11-01 14:39:00', 3),
(451, 234, 'MRS JOBAYRA BEGUM', '01786770832', '04de156b154bf542a56784fb84e2df32', 1, '2021-11-01 15:31:00', 3, '2021-11-01 16:39:00', 3),
(452, 235, 'NASIR AHMED', '01818906060', '55c2d021336132138782a0ec56cc3907', 1, '2021-11-01 16:53:00', 3, '2021-11-08 10:39:00', 3),
(453, 236, 'NURUNNAHAR BEGUM', '01647461547', 'e1be3de4b8ae2153c639f038ac862b73', 1, '2021-11-01 17:37:00', 3, '2021-11-01 17:56:00', 3),
(454, 237, 'NURUL ISLAM', '0172056362', 'b31ce050d42ba577e7f87d8332fe419e', 1, '2021-11-02 09:55:00', 3, '0000-00-00 00:00:00', 0),
(455, 238, 'SHIBANI RANI DAS', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-11-02 10:07:00', 3, '2021-11-02 10:49:00', 3),
(456, 239, 'MD GOLAM RASHID KHAN', '01710723336', '9706051381a0958d71d548be03d3c538', 1, '2021-11-02 11:03:00', 3, '2021-11-02 11:26:00', 3),
(457, 240, 'BELLAL', '01947104249', 'ff1dfe6308e97a8f4d43e467b55ecfb2', 1, '2021-11-02 11:44:00', 3, '2021-11-02 12:03:00', 3),
(458, 241, 'WASIM REZA', '01716682540', '8597a53e32a37c515eaa9165dd75d17c', 1, '2021-11-02 12:24:00', 3, '0000-00-00 00:00:00', 0),
(459, 242, 'GOUR CHANDRA', '01831337521', 'e45f4c8659f06d86bca1a8d1a69ce166', 1, '2021-11-02 12:37:00', 3, '2021-11-02 12:45:00', 3),
(460, 243, 'SAMSUN NAHAR', '01725507458', 'd9198750573116b0f8eb3ffe02ff2c68', 1, '2021-11-02 14:10:00', 3, '2021-11-02 14:23:00', 3),
(461, 244, 'ZAHIDUL KARIM', '01716002987', '7eec345336589c3c2fb0ce03f383548a', 1, '2021-11-02 14:40:00', 3, '2021-11-02 16:27:00', 3),
(462, 245, 'ASIA BEGUM', '01771629507', '13c0223e86f62ec4c8e79284d6fe8d80', 1, '2021-11-02 17:01:00', 3, '2021-11-02 17:19:00', 3),
(463, 246, 'SALMA AHMED', '01674091051', 'fa9c4cf573efd11f79d9d05077393592', 1, '2021-11-03 09:39:00', 3, '0000-00-00 00:00:00', 0),
(464, 247, 'SHAFIQUR RAHMAN', '01712780803', 'e544ef8b6c8af4e45cff4c946b4dee82', 1, '2021-11-03 09:58:00', 3, '2021-11-03 11:19:00', 3),
(465, 248, 'GOUTAM CHWDHURY', '01712547094', 'e70a446d62238a93b2693de6907f3e4f', 1, '2021-11-03 11:28:00', 3, '2021-11-03 12:04:00', 3),
(466, 249, 'ALI AHMED ', '01815382938', 'c6f219a62ac4efcb05ef58b7460f0b8c', 1, '2021-11-03 12:29:00', 3, '2021-11-03 13:16:00', 3),
(467, 250, 'AMIN ULLAH', '01728130243', '4fe357626a3d861f354b735d54a21fe1', 1, '2021-11-03 13:41:00', 3, '2021-11-03 13:58:00', 3),
(468, 251, 'RAHIMA KHATUN', '01728575962', '8e07b6297cc03f0025f89423531a0fc2', 1, '2021-11-03 14:31:00', 3, '2021-11-03 15:11:00', 3),
(469, 252, 'MD SHAJAHAN MIAH', '01713681619', '4bdf9371b86a7e84d01f7d7283ab3967', 1, '2021-11-03 15:43:00', 3, '2021-11-03 16:11:00', 3),
(470, 253, 'MD AHMED HOSSAIN', '01711440470', '740e9d725fec8e4e0939a0316e52f163', 1, '2021-11-03 16:52:00', 3, '2021-11-04 12:35:00', 3),
(471, 255, 'MD ALAUDDIN', '01740603162', '7f9432348748f01aa85b5fee8ccc1e1f', 1, '2021-11-04 09:24:00', 3, '2021-11-04 11:18:00', 3),
(472, 256, 'MRS  HASNA HENA', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-11-04 15:10:00', 3, '2021-11-08 14:53:00', 3),
(473, 257, 'MD SHAMSUR RAHMAN', '01710290290', '4c1a0315fcba25638d2ad74b6336032e', 1, '2021-11-04 15:49:00', 3, '2021-11-04 16:10:00', 3),
(474, 258, 'SHOAB AHMED HASEEB', '01919159926', 'e534ff9abb710a470426711bed206a93', 1, '2021-11-04 16:30:00', 3, '0000-00-00 00:00:00', 0),
(475, 259, 'NURJAHAN BEGUM', '01627273423', '4f3149fff2f5496ee0fc4467171cd5a9', 1, '2021-11-04 17:26:00', 3, '0000-00-00 00:00:00', 0),
(476, 260, 'ISTEAK HOSSAIN', '01911393785', '295ac62ebe579a7083f0dcdd42e98e55', 1, '2021-11-06 13:19:00', 3, '0000-00-00 00:00:00', 0),
(477, 261, 'SHAHID MRIDHA', '01741182535', '11956c4221dca1d4e383ca71dd4dc449', 1, '2021-11-06 14:19:00', 3, '2021-11-08 16:35:00', 3),
(478, 262, 'NILIMA NASREEN', '01772472497', '4025837e2124841cdb52a85a748264e1', 1, '2021-11-06 15:04:00', 3, '2021-11-08 17:02:00', 3),
(479, 263, 'KAZI SHAHNAWAZ', '01711287436', 'e51cd247f9e76cdea495995b69f1f198', 1, '2021-11-07 09:44:00', 3, '2021-11-07 11:46:00', 3),
(480, 264, 'ABDUL JABBAR SIKDER', '01753834156', '7197d2c70ee8f32f84d14cf461403536', 1, '2021-11-07 12:07:00', 3, '2021-11-07 12:41:00', 3),
(481, 265, 'MOLY', '01909964813', '11e029208c302651244212d92344fa27', 1, '2021-11-07 14:20:00', 3, '0000-00-00 00:00:00', 0),
(482, 266, 'SUMON', '01712095673', 'af4445d332eb222f175628576ad7a704', 1, '2021-11-07 15:18:00', 3, '2021-11-07 15:57:00', 3),
(483, 267, 'ALHAZ MD ASHRAFUL ALAM', '01819119569', '1f03e1e0e8840709a600cf39d32579df', 1, '2021-11-07 17:45:00', 3, '2021-11-08 17:51:00', 3),
(484, 268, 'MD SHAHDAT HOSSAIN', '01712934447', '8916b7d7bd202dd4703f4b913ec681c6', 1, '2021-11-08 11:05:00', 3, '2021-11-08 12:02:00', 3),
(485, 269, 'HAMIDA BEGUM', '01727111676', '1517a71d161e360d673abfb8638b1bbc', 1, '2021-11-08 12:20:00', 3, '2021-11-08 13:44:00', 3),
(486, 270, 'S M SELIM', '01711356152', '7629051f75a3a6b94bcf14f4a0f96dde', 1, '2021-11-08 14:27:00', 3, '2021-11-08 15:29:00', 3),
(487, 271, 'New Test Data', '345345345', 'f0111585ccd190ba548c806a843f487a', 1, '2021-11-08 20:40:00', 3, '0000-00-00 00:00:00', 0),
(488, 272, 'New Test', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-11-08 20:55:00', 3, '0000-00-00 00:00:00', 0),
(489, 273, 'alfa_test', '01750002020', 'd89355c06bc7ed417aad068431b3cefe', 1, '2021-11-08 20:58:00', 3, '0000-00-00 00:00:00', 0),
(490, 274, 'NEW TEST', '234234234234', 'dc748e626aee0ca9111bae791ca76c37', 1, '2021-11-08 21:04:00', 3, '0000-00-00 00:00:00', 0),
(491, 275, 'alfa_test', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-11-08 21:16:00', 3, '0000-00-00 00:00:00', 0),
(492, 276, 'alfa_test', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-11-09 10:12:00', 3, '0000-00-00 00:00:00', 0),
(493, 277, 'Shah E Alam', '01819483687', '6c7d516027670e47595f648c9f0aa50b', 1, '2021-11-13 16:25:00', 3, '0000-00-00 00:00:00', 0),
(494, 278, 'Moshiur Rahman', '01715650680', 'b6fc3e44fbae6cbf7d6de7f4e26417cc', 1, '2021-11-13 18:34:00', 3, '0000-00-00 00:00:00', 0),
(495, 279, 'Monirul Islam', '01716389775', '8f017a9b159a2e3f54e1ba78ff1bbe26', 1, '2021-11-13 19:24:00', 3, '0000-00-00 00:00:00', 0),
(496, 280, 'Mahmudul Karim', '01819178441', '0280db3b5d539e3683e7f96cfaad574b', 1, '2021-11-14 09:24:00', 3, '0000-00-00 00:00:00', 0),
(497, 281, 'Khaleda Begum', '01815603154', '6a48fb24442336c0342cb4773d521752', 1, '2021-11-14 16:35:00', 3, '0000-00-00 00:00:00', 0),
(498, 282, 'Shahanara Parvin ', '01757399390', 'b3ca1ac3cadcbb1438e4efc1fa3b8cd6', 1, '2021-11-14 17:03:00', 3, '0000-00-00 00:00:00', 0),
(499, 283, 'Motiur Rahman', '01816234004', '8b44acd39f7a9bcbf47e3d8bfbb223d7', 1, '2021-11-14 17:55:00', 3, '0000-00-00 00:00:00', 0),
(500, 284, 'Md. Shamim', '01852-525600', 'd0c087e26b63526cb77b984aa48fbb7c', 1, '2021-11-15 21:29:00', 3, '0000-00-00 00:00:00', 0),
(501, 285, 'Abdus Sattar', '+880 1716-886750', '6fbfa91aefa40ea1b25a18dbe67eb41f', 1, '2021-11-15 22:24:00', 3, '0000-00-00 00:00:00', 0),
(502, 286, 'Kazi abdul mukith', '01712-580796', 'f3cd14e664731ae9d1cdc5abd8392248', 1, '2021-11-15 23:35:00', 3, '0000-00-00 00:00:00', 0),
(503, 287, 'Amin Uddin Ahmed ', '01714269000', '9b4563fe660c684591e9193e3364280c', 1, '2021-11-17 17:55:00', 3, '0000-00-00 00:00:00', 0),
(504, 288, 'Moinuddin Ahmed', '01714236391', 'a1052d6d87a6f1a0d81dc80f044c605d', 1, '2021-11-17 18:15:00', 3, '0000-00-00 00:00:00', 0),
(505, 289, 'Kazi Mahbubul Haque', '01716319006', '829c78d95121bb19a092dca83d45f33b', 1, '2021-11-17 19:07:00', 3, '0000-00-00 00:00:00', 0),
(506, 290, 'Golam Mostafa', '01832931190', '61fe60f2bd074c1a6ce2ac5a26b56199', 1, '2021-11-17 19:37:00', 3, '0000-00-00 00:00:00', 0),
(507, 291, 'Mokbul Hossain', '01711421341', '5a3e27b37c6422961749ed7a78533a6e', 1, '2021-11-18 10:00:00', 3, '0000-00-00 00:00:00', 0),
(508, 292, 'Nazim Uddin', '01678060176', 'cd5a9f7a09e2afea9edfd60dd2f9ccf1', 1, '2021-11-18 10:28:00', 3, '0000-00-00 00:00:00', 0),
(509, 293, 'test_rhythm', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-11-18 10:43:00', 3, '0000-00-00 00:00:00', 0),
(510, 294, 'test_patient', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-11-19 01:22:00', 3, '0000-00-00 00:00:00', 0),
(511, 295, 'test_patient', '01780805503', '42542f518e6581cd76a6303ad429962c', 1, '2021-11-19 01:30:00', 3, '0000-00-00 00:00:00', 0),
(512, 296, 'S I SHAHJAHAN', '01727660506', '43d2a2f3706455deb7aebeacea1cb441', 1, '2021-11-21 09:34:00', 3, '0000-00-00 00:00:00', 0),
(513, 297, 'SHAH ALAM MOLLICK', '01716569601', 'e937d7dc4abf891285465b7e2fc2e4c7', 1, '2021-11-21 12:50:00', 3, '0000-00-00 00:00:00', 0),
(514, 298, 'MD ASADUZZAMAN', '01912933255', 'f53b25edb405cc2089213d3499043414', 1, '2021-11-21 14:13:00', 3, '0000-00-00 00:00:00', 0),
(515, 299, 'HEDAYET ULLAH ', '01842788332', '13f2b960d49c2157cbad8ca29451b48f', 1, '2021-11-22 14:34:00', 3, '0000-00-00 00:00:00', 0),
(516, 300, 'TOPON MOHONTA', '01716960717', 'ccd9390f98c1a804a6cc8add3b29dc73', 1, '2021-11-22 18:05:00', 3, '0000-00-00 00:00:00', 0),
(517, 301, 'AIR COM. ZAKIUL ISLAM', '01714046138', '2536955b5cfd33ed1e47a4a9c7170e44', 1, '2021-11-23 11:41:00', 3, '0000-00-00 00:00:00', 0),
(518, 302, 'MONG KYAW', '01976373432', '9a4adacb04dd9dc70a9cfa955dc4be84', 1, '2021-11-23 11:48:00', 3, '0000-00-00 00:00:00', 0),
(519, 303, 'S. M. JAIDUL ISLAM', '01717789598', '1522a07e849decfae08afdc7ca989447', 1, '2021-11-23 16:13:00', 3, '0000-00-00 00:00:00', 0),
(520, 304, 'ABDULLAH AL MAMOON', '01819229300', '553e28fc9b1392c791bb1a4feb5a8b77', 1, '2021-11-23 17:20:00', 3, '0000-00-00 00:00:00', 0),
(521, 305, 'ENGR. TOFFAZZEL HOSSAIN', '01729077099', '2c2c14d586d7a7192b089214a9cf6393', 1, '2021-11-24 10:45:00', 3, '0000-00-00 00:00:00', 0),
(522, 306, 'HASINA AKTER', '01911345301', 'fa8b226f5ab08bcc9b3400a1750a35fb', 1, '2021-11-24 11:34:00', 3, '0000-00-00 00:00:00', 0),
(523, 307, 'MD SALAM', '01726907288', '242c39827daa82ac4167e29ea59b461e', 1, '2021-11-24 17:08:00', 3, '0000-00-00 00:00:00', 0),
(524, 308, 'NASIMA BEGUM', '01847162658', '9b7c1a3056811e9985213868887842d4', 1, '2021-11-24 17:27:00', 3, '0000-00-00 00:00:00', 0),
(525, 309, 'AROBINDO SAHA', '01552382321', '35b2756b350d558d0b2b3d08c6f6b1e7', 1, '2021-11-24 17:56:00', 3, '0000-00-00 00:00:00', 0),
(526, 310, 'JOHURUL ALAM CHOWDHURY', '01819877475', '9ee42fcf2c4eb0674e9c428e7ea0daf6', 1, '2021-11-25 01:25:00', 3, '0000-00-00 00:00:00', 0),
(527, 311, 'SELINA BEGUM', '01710940451', '0a93435a065f7aec2be7f2ac7674a7ad', 1, '2021-11-25 01:29:00', 3, '0000-00-00 00:00:00', 0),
(528, 312, 'ATAUR RAHMAN', '01876555555', 'e3e4c5367c95be7fed7f504eea2f4dad', 1, '2021-11-25 01:33:00', 3, '0000-00-00 00:00:00', 0),
(529, 313, 'MD SOHRAB HOSSAIN', '01716679388', 'c37df8da6b7ca53a49d67f5cfdbdee2f', 1, '2021-11-25 12:33:00', 3, '0000-00-00 00:00:00', 0),
(530, 314, 'HARIPADA SUTRADHAR', '01819028838', 'a20aba25c4aa0451c6d914df79313ea0', 1, '2021-11-25 13:28:00', 3, '0000-00-00 00:00:00', 0),
(531, 315, 'MD REZAUL KARIM', '01793421364', '1ab65fa8d5eba23eeb93d296176f606b', 1, '2021-11-25 16:55:00', 3, '0000-00-00 00:00:00', 0),
(532, 316, 'TAMANNA ISLAM', '01718096113', '76b3d80c07f01780875223a870ea3794', 1, '2021-11-25 17:30:00', 3, '0000-00-00 00:00:00', 0),
(533, 317, 'ABBAS ALI', '01715843166', '5aa89989d5566c4cd4e21eb5cd13097d', 1, '2021-11-25 17:50:00', 3, '0000-00-00 00:00:00', 0),
(534, 318, 'K A M SHAHADAT HOSSAIN', '01729605939', '0a76ee50fe304f22001dc15bd300a298', 1, '2021-11-27 09:35:00', 3, '0000-00-00 00:00:00', 0),
(535, 319, 'MD IQBAL HOSSAIN', '01989929350', '9fdf6fdf4f5c913574117c37ca94870c', 1, '2021-11-27 10:15:00', 3, '0000-00-00 00:00:00', 0),
(536, 320, 'HARUNUR RASHID ', '01711172381', '6a352371bcfa043cdd6079df805259b1', 1, '2021-11-27 12:18:00', 3, '0000-00-00 00:00:00', 0),
(537, 321, 'GAZI ABDUL HAQUE', '01711484336', '01af00aad4bf09fcdae592f12a413e0a', 1, '2021-11-27 12:46:00', 3, '0000-00-00 00:00:00', 0),
(538, 322, 'SHOPON GOMES', '01711541026', 'd37314561c7f8267ce3c731a22ecd82c', 1, '2021-11-27 15:41:00', 3, '0000-00-00 00:00:00', 0),
(539, 323, 'GOLAM KIBRIA', '01687629011', '92fe9c888884e164715db706a294145e', 1, '2021-11-27 15:54:00', 3, '0000-00-00 00:00:00', 0),
(540, 324, 'YUBRAJ SHAHODEB', '01833729666', '1ce6d18f4b755e87cccd4ec3c47bdb06', 1, '2021-11-27 16:40:00', 3, '0000-00-00 00:00:00', 0),
(541, 325, 'MD RIPON AHMED', '01912296937', 'bd299f75c6bb8378a9e51cd22c02ef94', 1, '2021-11-27 16:59:00', 3, '0000-00-00 00:00:00', 0),
(542, 326, 'MD ATAHAR ALI', '01713009539', 'c723d2498bfbbf2aeb3fe6ad32e5eb37', 1, '2021-11-28 09:36:00', 3, '0000-00-00 00:00:00', 0),
(543, 327, 'ABDUS SATTAR', '01711058663', '35a6126549af3c66f84c224bb1cacfbf', 1, '2021-11-28 10:28:00', 3, '0000-00-00 00:00:00', 0),
(544, 328, 'NILUFAR RAHMAN', '01767703831', '58ce1f6b31b41ae7089cb35e91a5d7fb', 1, '2021-11-28 11:25:00', 3, '0000-00-00 00:00:00', 0),
(545, 329, 'DR A F M AKHTERUZZAMAN', '01715899787', 'a3628f57659120d4f5cbc3c6ccceaa30', 1, '2021-11-28 12:13:00', 3, '0000-00-00 00:00:00', 0),
(546, 330, 'MD MOHIUDDIN', '01762539988', '73af12cb2eabf9882421b172a70081ff', 1, '2021-11-29 09:52:00', 3, '0000-00-00 00:00:00', 0),
(547, 331, 'DR AHAD ALI', '01556308014', 'b52b1c2694403cb2bb6ca0cb58d91603', 1, '2021-11-29 10:31:00', 3, '0000-00-00 00:00:00', 0),
(548, 332, 'A K M SHAH NEWAZ', '01718388159', 'aae473cf370bafb7bfe936298ea4b382', 1, '2021-11-29 15:21:00', 3, '0000-00-00 00:00:00', 0),
(549, 333, 'SONJOY KUMAR SAHA', '01707793986', 'cd8dcb6cf60e745c6127f723d1b0d80e', 1, '2021-11-29 15:55:00', 3, '0000-00-00 00:00:00', 0),
(550, 334, 'PARVEZ REZA KAKON', '01732000000', '73deb9b6e4147f72b541f72486abf40b', 1, '2021-11-30 10:05:00', 3, '0000-00-00 00:00:00', 0),
(551, 335, 'SHARIF UDDIN AHMED', '01713190095', '2ac3193b2d4b0a838031fb30f8e5e780', 1, '2021-11-30 10:25:00', 3, '0000-00-00 00:00:00', 0),
(552, 336, 'MAHBUB RAHMAN ', '01985004422', 'f4d5e52369fa6797adec86db2e5c6206', 1, '2021-11-30 14:15:00', 3, '0000-00-00 00:00:00', 0),
(553, 337, 'SHAMIM  MAHMUD ', '01931043330', 'c62b6b615c93e6ed1be56df199fe2d34', 1, '2021-11-30 16:27:00', 3, '0000-00-00 00:00:00', 0),
(554, 338, 'KHORSHED ALAM', '01712941619', 'd293f78d392bac4f70b70a55d27ea9a2', 1, '2021-11-30 17:57:00', 3, '0000-00-00 00:00:00', 0),
(555, 339, 'MOHAMMOD ALI', '01717852501', 'c947992ffc9b4ad8ed1d697ccbb466e4', 1, '2021-11-30 17:59:00', 3, '0000-00-00 00:00:00', 0),
(556, 340, 'MD ALI MANSUR KHAN', '01726904575', 'd7e3a105bf61e18f5beba3aa5f1f499d', 1, '2021-12-01 10:29:00', 3, '0000-00-00 00:00:00', 0),
(557, 341, 'MOHAMMAD RUHUL AMIN', '01552381991', '300feae7d46b260691779b4e271f6b07', 1, '2021-12-01 11:31:00', 3, '0000-00-00 00:00:00', 0),
(558, 342, 'MD SHAFIUL ALAM', '01712204324', '4fd6526646153302c7ac1f170a516ec3', 1, '2021-12-01 12:05:00', 3, '0000-00-00 00:00:00', 0),
(559, 343, 'MR SHAHDAT HOSSAIN', '01303620194', 'cb7c6041a374086698913b921c154490', 1, '2021-12-01 17:12:00', 3, '0000-00-00 00:00:00', 0),
(560, 344, 'ABDUL HAKIM', '01781910148', 'e95755113d2b2bd37b542bdfcc7bb9e7', 1, '2021-12-01 18:02:00', 3, '0000-00-00 00:00:00', 0),
(561, 345, 'Test data', '234', '289dff07669d7a23de0ef88d2f7129e7', 1, '2021-12-01 19:47:00', 3, '0000-00-00 00:00:00', 0),
(562, 346, 'Test data', '345345', '0c0b3da4ac402bd86191d959be081114', 1, '2021-12-01 19:52:00', 3, '0000-00-00 00:00:00', 0),
(563, 347, 'Test data', '35', '1c383cd30b7c298ab50293adfecb7b18', 1, '2021-12-01 19:58:00', 3, '0000-00-00 00:00:00', 0),
(564, 348, 'AMZAD HOSSAIN', '01719719118', '28f2100ef4b90e07fee6855fdf7cd262', 1, '2021-12-02 10:52:00', 3, '0000-00-00 00:00:00', 0),
(565, 349, 'SHAFIQUL ISLAM', '01711287964', '6283f654e0aa25fdf94dbf27a6f37728', 1, '2021-12-02 11:12:00', 3, '0000-00-00 00:00:00', 0),
(566, 350, 'ANJUMAN ARA ABU', '01717311664', '142c053380b5bf2f56dafaec0d776385', 1, '2021-12-02 11:52:00', 3, '0000-00-00 00:00:00', 0),
(567, 351, 'JASHIM UDDIN CHOWDHURY', '01862777736', '1a6a18b0ee34bc935dc66889f32f0386', 1, '2021-12-02 18:58:00', 3, '0000-00-00 00:00:00', 0),
(568, 352, 'DIN MOHAMMAD FARUK', '01711117044', 'ebb037853c0b13900d39bb58c9c229eb', 1, '2021-12-02 19:06:00', 3, '0000-00-00 00:00:00', 0),
(569, 353, 'BADRUDDIN AHMED ', '01716280846', 'e08a0dad0692456ed36ada25e732b4c5', 1, '2021-12-04 09:02:00', 3, '0000-00-00 00:00:00', 0),
(570, 354, 'A.T.M. SAHIDULLAH CHOWDHURY ', '01882782571', '02a2b72880511d6f5b5a971c8cb656bc', 1, '2021-12-04 09:20:00', 3, '0000-00-00 00:00:00', 0),
(571, 355, 'JAINAL ABEDIN', '01712979377', '5738a4e5e1897acaed341c7d59966d76', 1, '2021-12-04 09:24:00', 3, '0000-00-00 00:00:00', 0),
(572, 356, 'S M A JALIL', '01724624561', 'ab003d693527389d58f47dd82d01e7f3', 1, '2021-12-04 10:32:00', 3, '0000-00-00 00:00:00', 0),
(573, 357, 'LIAQUAT ALI SARDER', '01740590015', 'd5d6889854989f7a3bb0a6f6cae61606', 1, '2021-12-04 11:13:00', 3, '0000-00-00 00:00:00', 0),
(574, 358, 'Kamrul Hasan ', '01727744708', 'de33375da7743e32105392a6edefa289', 1, '2021-12-04 11:48:00', 3, '0000-00-00 00:00:00', 0),
(575, 359, 'DR SHEIKH MD TOZUL ISLAM', '01712619644', '892e04accebd8b0b05e3bbac080fbe0f', 1, '2021-12-04 12:55:00', 3, '0000-00-00 00:00:00', 0),
(576, 360, 'AFZALUR RAHMAN', '01721019026', 'e067fcd7aa4e0e45631141cf60de73c4', 1, '2021-12-04 14:25:00', 3, '0000-00-00 00:00:00', 0),
(577, 361, 'ALAL UDDIN', '01915603528', 'd89e551c05853f310ff2eb1e10ccef21', 1, '2021-12-04 15:08:00', 3, '0000-00-00 00:00:00', 0),
(578, 362, 'HOSNE ARA BEGUM', '01834062023', '62d6fae99bf7e58eec4ae8a43a7faf2d', 1, '2021-12-05 09:39:00', 3, '0000-00-00 00:00:00', 0),
(579, 363, 'MR ENAMUL HAQUE', '01913623288', 'c6bafb1910a12d0b02a7e38166b5a5f2', 1, '2021-12-05 12:47:00', 3, '0000-00-00 00:00:00', 0),
(580, 364, 'NASIR UDDIN', '01828042274', 'f6c136f00e9d964959ec7deecbcc1d93', 1, '2021-12-05 14:28:00', 3, '0000-00-00 00:00:00', 0),
(581, 365, 'Dr. Rebeca Sultana', '01972363454', '2b3743655a7e88360614eab4425d571c', 1, '2021-12-05 15:43:00', 3, '0000-00-00 00:00:00', 0),
(582, 366, 'Anwara Begum', '01914873196', '127c02f2d66811eae863feaf9c2fd52c', 1, '2021-12-05 15:49:00', 3, '0000-00-00 00:00:00', 0),
(583, 367, 'Shahinul Alam Mridha', '01718476580', 'b9fe285c4162f7bbc05f581ef093ea05', 1, '2021-12-06 10:52:00', 3, '0000-00-00 00:00:00', 0),
(584, 368, 'Tota Mia ', '01712697059', 'b109055bb10d8b10eca8046759c624d3', 1, '2021-12-06 11:02:00', 3, '0000-00-00 00:00:00', 0),
(585, 369, 'Yusuf Ali Khan', '01711537116', 'bbe2ad43762af035a99dce4b1969c118', 1, '2021-12-06 11:15:00', 3, '0000-00-00 00:00:00', 0),
(586, 370, 'JAMILA KHATUN', '01746404290', '1c3efd4fb4c9bbef3f27f23af5f9e376', 1, '2021-12-06 12:12:00', 3, '0000-00-00 00:00:00', 0),
(587, 371, 'MOHAMMAD ALI KHAN', '01715384029', 'de4dd198bbbef8e22b478abcccc9b4f9', 1, '2021-12-06 14:37:00', 3, '0000-00-00 00:00:00', 0),
(588, 372, 'SHETARA BEGUM', '01777290955', '36ca9a1e0427d03d64231ee4599b58b9', 1, '2021-12-06 14:56:00', 3, '0000-00-00 00:00:00', 0),
(589, 373, 'TARIKUL ALAM TALUKDER', '01922158821', 'c25289e1ef102a9136b5aab883d372ec', 1, '2021-12-06 15:16:00', 3, '0000-00-00 00:00:00', 0),
(590, 374, 'ABDUS SALAM ', '01711531582', 'd69f0319a3d0c51f9fe403c91c434638', 1, '2021-12-06 15:40:00', 3, '0000-00-00 00:00:00', 0),
(591, 375, 'LUTFUN NESA', '01672836179', '1a0667b3fc0738ab154ab5740432e280', 1, '2021-12-06 17:18:00', 3, '0000-00-00 00:00:00', 0),
(592, 376, 'MANIK PRASHADI', '01720628662', '448d967d44325a69bbe6da82a52d926c', 1, '2021-12-06 19:06:00', 3, '0000-00-00 00:00:00', 0),
(593, 377, 'Selina Begum', '01794008081', '27de95e77069c4091f69d3b79d78074c', 1, '2021-12-07 10:12:00', 3, '0000-00-00 00:00:00', 0),
(594, 378, 'Khondaker Sirajul  Islam', '01986593006', '113393f430d3e452d0fdaf1b9ffa19a2', 1, '2021-12-07 10:21:00', 3, '0000-00-00 00:00:00', 0),
(595, 379, 'ABDUL MATIN MIAH', '01799441176', 'f5862c00b87e8aa5a36052519335a64a', 1, '2021-12-07 12:56:00', 3, '0000-00-00 00:00:00', 0),
(596, 380, 'M.A. Rashid', '01731511275', 'c7c825b08d4e421f8718cd80ca096ebf', 1, '2021-12-07 13:39:00', 3, '0000-00-00 00:00:00', 0),
(597, 381, 'TOFAZZOL HOSSAIN', '01715405161', '85ddf1f28b7bf8a6f3385fa0dacf3ba7', 1, '2021-12-07 16:24:00', 3, '0000-00-00 00:00:00', 0),
(598, 382, 'MD MUHAIMEN BHUIYAN ', '01711505182', 'd67b5e87bc4abcbd5176a38cc62b4362', 1, '2021-12-07 19:39:00', 3, '0000-00-00 00:00:00', 0),
(599, 383, 'MD TOFAZZAL HOSSAIN', '01973519543', '23fe236a77bb40078c6d111023271b23', 1, '2021-12-08 09:24:00', 3, '0000-00-00 00:00:00', 0),
(600, 384, 'Adv Abdur Rashid Sarker', '02711617673', '21a63f62316a88539bbe68cd21ca9ca6', 1, '2021-12-08 09:35:00', 3, '0000-00-00 00:00:00', 0),
(601, 385, 'Jashim Uddin Khan', '01712137366', 'c8afad6604c17794207f6050f62fbb01', 1, '2021-12-08 09:50:00', 3, '0000-00-00 00:00:00', 0),
(602, 386, 'Pof Abdul Rasul', '01717783961', '2b58a24f5eb87a10a924bd3fa69b18b5', 1, '2021-12-08 09:57:00', 3, '0000-00-00 00:00:00', 0),
(603, 387, 'SK Nurul Islam ', '01770333826', '2da6fa78e634bbdb78bb11c03aa37894', 1, '2021-12-08 10:02:00', 3, '0000-00-00 00:00:00', 0),
(604, 388, 'MD ROBIULLAH KHANDOKER', '01730175600', 'b8cb444a27e811cd1aad6efe9005ba14', 1, '2021-12-08 17:28:00', 3, '0000-00-00 00:00:00', 0),
(605, 389, 'SIRAJUL HAQUE', '01625960070', 'a5c31672fa312e300dcbbfa7d05e1d48', 1, '2021-12-08 19:01:00', 3, '0000-00-00 00:00:00', 0),
(606, 390, 'Shishir Chakrabarty ', '01711134223', 'ec26c8d921abb348f1535fc875255a96', 1, '2021-12-09 07:54:00', 3, '0000-00-00 00:00:00', 0),
(607, 391, 'SURUJ MIA', '01718412601', '706df5143134b287d392e147e7cce273', 1, '2021-12-09 11:27:00', 3, '0000-00-00 00:00:00', 0),
(608, 392, 'JAHANARA BEGUM', '01755533577', 'b27f7d98f158290cde23da487c9436e3', 1, '2021-12-09 12:49:00', 3, '0000-00-00 00:00:00', 0),
(609, 393, 'Hazi Mohammad Ullah', '01812759611', '680071ed0633fa5803d29a6be281fb62', 1, '2021-12-09 16:07:00', 3, '0000-00-00 00:00:00', 0),
(610, 394, 'NAZRUL ISLAM', '01924291685', 'aa28800f59729227405a39fdf56c4591', 1, '2021-12-09 17:07:00', 3, '0000-00-00 00:00:00', 0),
(611, 395, 'RUNA HAIDER', '01747226688', '585a5a014301967f92b06c627428871d', 1, '2021-12-09 17:41:00', 3, '0000-00-00 00:00:00', 0),
(612, 396, 'ABDUL HI', '01934214743', '456c13ac15a9ff05326e4b1e5e9b4983', 1, '2021-12-09 17:54:00', 3, '0000-00-00 00:00:00', 0),
(613, 397, 'MD ABUL KASHEM ', '01710535423', '008eea4f3a1bf5ba9cd8a232ac991c1e', 1, '2021-12-11 10:07:00', 3, '0000-00-00 00:00:00', 0),
(614, 398, 'MOSLEH UDDIN FARUK', '01672900857', 'bf8e043d520cc50c81fa6a6da1b922cd', 1, '2021-12-11 13:16:00', 3, '0000-00-00 00:00:00', 0),
(615, 399, 'MOSLEH UDDIN FARUK', '01672900857', 'bf8e043d520cc50c81fa6a6da1b922cd', 1, '2021-12-11 13:58:00', 3, '0000-00-00 00:00:00', 0),
(616, 400, 'MOHAMMAD ANWARULLAH', '01816775445', '221c0ecc2b35796ea6f4e58b9a71acf2', 1, '2021-12-11 17:11:00', 3, '0000-00-00 00:00:00', 0),
(617, 401, 'new_module_test', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-12-15 13:20:00', 4, '0000-00-00 00:00:00', 0),
(618, 402, 'new_test_module_set', '', 'd41d8cd98f00b204e9800998ecf8427e', 1, '2021-12-15 13:40:00', 3, '0000-00-00 00:00:00', 0);

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
(25, 'Inpatient', '2021-03-20 10:18:00', 2, '2021-06-22 21:26:00', 1, 1),
(26, 'Outpatient', '2021-03-20 10:18:00', 2, '2021-06-22 21:26:00', 1, 1),
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
-- Indexes for table `user_panel_login`
--
ALTER TABLE `user_panel_login`
  ADD PRIMARY KEY (`upl_id`);

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
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;

--
-- AUTO_INCREMENT for table `medicine_instruction`
--
ALTER TABLE `medicine_instruction`
  MODIFY `mi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `medicine_rules`
--
ALTER TABLE `medicine_rules`
  MODIFY `mr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `m_category`
--
ALTER TABLE `m_category`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `p6mwt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1292;

--
-- AUTO_INCREMENT for table `patient_af_status`
--
ALTER TABLE `patient_af_status`
  MODIFY `pas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_angiogram`
--
ALTER TABLE `patient_angiogram`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

--
-- AUTO_INCREMENT for table `patient_angiogram_abnormal_value`
--
ALTER TABLE `patient_angiogram_abnormal_value`
  MODIFY `paab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856;

--
-- AUTO_INCREMENT for table `patient_appointment_register`
--
ALTER TABLE `patient_appointment_register`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT for table `patient_archive_basic_info`
--
ALTER TABLE `patient_archive_basic_info`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `patient_basic_info`
--
ALTER TABLE `patient_basic_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `patient_calcium`
--
ALTER TABLE `patient_calcium`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `patient_call_rules_if_unavailable`
--
ALTER TABLE `patient_call_rules_if_unavailable`
  MODIFY `pcru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_cardiovascular`
--
ALTER TABLE `patient_cardiovascular`
  MODIFY `pcv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=930;

--
-- AUTO_INCREMENT for table `patient_cbc`
--
ALTER TABLE `patient_cbc`
  MODIFY `pcbc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1328;

--
-- AUTO_INCREMENT for table `patient_chest_x_ray`
--
ALTER TABLE `patient_chest_x_ray`
  MODIFY `pcxid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patient_comorbidities`
--
ALTER TABLE `patient_comorbidities`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;

--
-- AUTO_INCREMENT for table `patient_death_report`
--
ALTER TABLE `patient_death_report`
  MODIFY `pdr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_device`
--
ALTER TABLE `patient_device`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `patient_ecg`
--
ALTER TABLE `patient_ecg`
  MODIFY `pecg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2189;

--
-- AUTO_INCREMENT for table `patient_ecg_bbb`
--
ALTER TABLE `patient_ecg_bbb`
  MODIFY `peb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;

--
-- AUTO_INCREMENT for table `patient_echo`
--
ALTER TABLE `patient_echo`
  MODIFY `pecho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4638;

--
-- AUTO_INCREMENT for table `patient_glucose`
--
ALTER TABLE `patient_glucose`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `patient_having_discomfort`
--
ALTER TABLE `patient_having_discomfort`
  MODIFY `phd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patient_hf_type`
--
ALTER TABLE `patient_hf_type`
  MODIFY `phf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=946;

--
-- AUTO_INCREMENT for table `patient_holter`
--
ALTER TABLE `patient_holter`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `patient_inr`
--
ALTER TABLE `patient_inr`
  MODIFY `pinr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `patient_lipid`
--
ALTER TABLE `patient_lipid`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1723;

--
-- AUTO_INCREMENT for table `patient_lung_ultasound`
--
ALTER TABLE `patient_lung_ultasound`
  MODIFY `plu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `patient_magnesium`
--
ALTER TABLE `patient_magnesium`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `patient_major_adverse_cardiac_events`
--
ALTER TABLE `patient_major_adverse_cardiac_events`
  MODIFY `pmace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `patient_medication_missing`
--
ALTER TABLE `patient_medication_missing`
  MODIFY `pmm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `patient_minnesota_score_count`
--
ALTER TABLE `patient_minnesota_score_count`
  MODIFY `pmsc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `patient_missing_medicine_why`
--
ALTER TABLE `patient_missing_medicine_why`
  MODIFY `pmmw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient_mpi`
--
ALTER TABLE `patient_mpi`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patient_non_cardiovascular`
--
ALTER TABLE `patient_non_cardiovascular`
  MODIFY `pncv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `patient_nt_pro_bnp`
--
ALTER TABLE `patient_nt_pro_bnp`
  MODIFY `pnpb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `patient_other_element`
--
ALTER TABLE `patient_other_element`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `patient_overall_status`
--
ALTER TABLE `patient_overall_status`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `patient_phone_no`
--
ALTER TABLE `patient_phone_no`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489;

--
-- AUTO_INCREMENT for table `patient_prescription_rules`
--
ALTER TABLE `patient_prescription_rules`
  MODIFY `ppr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4715;

--
-- AUTO_INCREMENT for table `patient_pulmonary`
--
ALTER TABLE `patient_pulmonary`
  MODIFY `ppm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient_recent_hospitalization`
--
ALTER TABLE `patient_recent_hospitalization`
  MODIFY `prh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT for table `patient_risk_assesment`
--
ALTER TABLE `patient_risk_assesment`
  MODIFY `pra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `patient_risk_factor`
--
ALTER TABLE `patient_risk_factor`
  MODIFY `prf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2656;

--
-- AUTO_INCREMENT for table `patient_sign_symptom`
--
ALTER TABLE `patient_sign_symptom`
  MODIFY `pss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20707;

--
-- AUTO_INCREMENT for table `patient_status_wise_call`
--
ALTER TABLE `patient_status_wise_call`
  MODIFY `pswc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient_status_wise_physical_call`
--
ALTER TABLE `patient_status_wise_physical_call`
  MODIFY `pswpc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `patient_status_wise_telephone_call`
--
ALTER TABLE `patient_status_wise_telephone_call`
  MODIFY `pswtc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=638;

--
-- AUTO_INCREMENT for table `patient_stress_test`
--
ALTER TABLE `patient_stress_test`
  MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `patient_s_creatinine`
--
ALTER TABLE `patient_s_creatinine`
  MODIFY `psc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2587;

--
-- AUTO_INCREMENT for table `patient_s_electrolytes`
--
ALTER TABLE `patient_s_electrolytes`
  MODIFY `pse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1812;

--
-- AUTO_INCREMENT for table `patient_t3`
--
ALTER TABLE `patient_t3`
  MODIFY `pt3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `patient_t4`
--
ALTER TABLE `patient_t4`
  MODIFY `pt4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `patient_tsh`
--
ALTER TABLE `patient_tsh`
  MODIFY `ptsh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `patient_uric_acid`
--
ALTER TABLE `patient_uric_acid`
  MODIFY `pua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `patient_vaccination`
--
ALTER TABLE `patient_vaccination`
  MODIFY `pv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `patient_vitamind3`
--
ALTER TABLE `patient_vitamind3`
  MODIFY `pvd3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `patient_weight_machine`
--
ALTER TABLE `patient_weight_machine`
  MODIFY `pwm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `physical_examination`
--
ALTER TABLE `physical_examination`
  MODIFY `pe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT for table `prescription_medicine`
--
ALTER TABLE `prescription_medicine`
  MODIFY `prm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7074;

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
  MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `recommended_vaccine`
--
ALTER TABLE `recommended_vaccine`
  MODIFY `rv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1911;

--
-- AUTO_INCREMENT for table `risk_assesment`
--
ALTER TABLE `risk_assesment`
  MODIFY `ra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `risk_factor`
--
ALTER TABLE `risk_factor`
  MODIFY `rf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
-- AUTO_INCREMENT for table `user_panel_login`
--
ALTER TABLE `user_panel_login`
  MODIFY `upl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

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
