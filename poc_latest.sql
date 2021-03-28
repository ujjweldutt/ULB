-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 07:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poc`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_component`
--

CREATE TABLE `mst_component` (
  `id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_component`
--

INSERT INTO `mst_component` (`id`, `component`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'SCPS', 'Y', '2021-03-24 12:06:16', '2021-03-24 12:06:16'),
(2, 'Normal', 'Y', '2021-03-24 12:06:16', '2021-03-24 12:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `mst_financial_year`
--

CREATE TABLE `mst_financial_year` (
  `id` int(11) NOT NULL,
  `financial_year` varchar(55) NOT NULL,
  `end_year` varchar(55) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `is_deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_financial_year`
--

INSERT INTO `mst_financial_year` (`id`, `financial_year`, `end_year`, `created_on`, `updated_on`, `is_deleted`, `is_active`) VALUES
(1, '2018-19', '', '2021-03-24 11:47:12', '2021-03-24 11:47:12', 'N', 'Y'),
(2, '2019-20', '', '2021-03-24 11:47:12', '2021-03-24 11:47:12', 'N', 'Y'),
(3, '2020-21', '', '2021-03-24 11:47:12', '2021-03-24 11:47:12', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mst_items`
--

CREATE TABLE `mst_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_items`
--

INSERT INTO `mst_items` (`id`, `item_name`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'Item 1', 'Y', '2021-03-25 11:13:49', '2021-03-25 11:13:49'),
(2, 'Item 2', 'Y', '2021-03-25 11:13:49', '2021-03-25 11:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `mst_rate_type`
--

CREATE TABLE `mst_rate_type` (
  `id` int(11) NOT NULL,
  `rate_type` varchar(155) NOT NULL,
  `rate` int(11) NOT NULL,
  `premium_rate` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_rate_type`
--

INSERT INTO `mst_rate_type` (`id`, `rate_type`, `rate`, `premium_rate`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'Commertial', 12, 10, 'Y', '2021-03-25 11:50:35', '2021-03-25 11:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `mst_role`
--

CREATE TABLE `mst_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_role_mapping`
--

CREATE TABLE `mst_role_mapping` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mst_scheme`
--

CREATE TABLE `mst_scheme` (
  `id` int(11) NOT NULL,
  `scheme` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_scheme`
--

INSERT INTO `mst_scheme` (`id`, `scheme`, `is_active`, `created_on`, `updated_in`) VALUES
(1, 'Pradhan Mantri Awas Yojana (PMAY)', 'Y', '2021-03-24 12:02:14', '2021-03-24 12:02:14'),
(2, 'pradhan mantri awas yojana list 2020', 'Y', '2021-03-24 12:02:14', '2021-03-24 12:02:14'),
(3, 'gram panchayat yojana list 2020', 'Y', '2021-03-24 12:02:14', '2021-03-24 12:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `mst_ulb`
--

CREATE TABLE `mst_ulb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_ulb`
--

INSERT INTO `mst_ulb` (`id`, `name`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'Uklana', 'Y', '2021-03-24 15:25:02', '2021-03-24 15:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `mst_ward`
--

CREATE TABLE `mst_ward` (
  `id` int(11) NOT NULL,
  `ward_number` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_ward`
--

INSERT INTO `mst_ward` (`id`, `ward_number`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'Ward 1', 'Y', '2021-03-24 15:30:20', '2021-03-24 15:30:20'),
(2, 'Ward 2', 'Y', '2021-03-24 15:30:20', '2021-03-24 15:30:20'),
(3, 'Ward 3', 'Y', '2021-03-24 15:30:20', '2021-03-24 15:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `trans_budget`
--

CREATE TABLE `trans_budget` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `financial_year_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `uploaded_file` varchar(400) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_budget`
--

INSERT INTO `trans_budget` (`id`, `user_id`, `scheme_id`, `component_id`, `financial_year_id`, `amount`, `remarks`, `uploaded_file`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 0, 1, 1, 2, '500.00', '', '', 'Y', '2021-03-24 08:46:11', '2021-03-24 08:46:11'),
(2, 0, 1, 1, 1, '50000.00', 'Health', '', 'Y', '2021-03-25 07:54:32', '2021-03-25 07:54:32'),
(3, 0, 1, 1, 1, '533333.00', '', '', 'Y', '2021-03-25 12:53:30', '2021-03-25 12:53:30'),
(4, 0, 1, 1, 2, '7000.00', '', '', 'Y', '2021-03-25 13:46:01', '2021-03-25 13:46:01'),
(5, 0, 2, 1, 2, '40000.00', '', '', 'Y', '2021-03-25 13:49:58', '2021-03-25 13:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `trans_budget_proposal`
--

CREATE TABLE `trans_budget_proposal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `budget_id` int(11) NOT NULL,
  `ulb_id` int(11) NOT NULL,
  `amount_demanded` decimal(18,2) NOT NULL,
  `allocation_type` varchar(100) NOT NULL,
  `status` enum('1','2','3','4') NOT NULL,
  `approved_by` int(11) NOT NULL,
  `uploaded_file` varchar(400) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_budget_proposal`
--

INSERT INTO `trans_budget_proposal` (`id`, `user_id`, `budget_id`, `ulb_id`, `amount_demanded`, `allocation_type`, `status`, `approved_by`, `uploaded_file`, `created_on`, `updated_on`) VALUES
(1, NULL, 1, 1, '100.00', 'Auto', '1', 1, '', '2021-03-25 06:45:41', '2021-03-25 06:45:41'),
(2, NULL, 2, 1, '20000.00', 'Auto', '', 0, '', '2021-03-25 10:04:42', '2021-03-25 10:04:42'),
(3, NULL, 2, 1, '50000.00', 'Auto', '1', 1, '', '2021-03-25 12:55:16', '2021-03-25 12:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `trans_wms`
--

CREATE TABLE `trans_wms` (
  `id` int(11) NOT NULL,
  `work_code_number` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ulb_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `financial_year_id` int(11) NOT NULL,
  `work_name` varchar(255) NOT NULL,
  `work_type` varchar(255) NOT NULL,
  `work_sub_type` varchar(255) NOT NULL,
  `work_scope` varchar(255) NOT NULL,
  `announcement_type` varchar(255) NOT NULL,
  `announcement_no` varchar(255) NOT NULL,
  `announcement_date` datetime NOT NULL,
  `site_plan_file` varchar(255) NOT NULL,
  `cross_section_file` varchar(255) NOT NULL,
  `l_section_file` varchar(255) NOT NULL,
  `google_map_file` varchar(255) NOT NULL,
  `city_map_file` varchar(255) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_revised` enum('Y','N') NOT NULL DEFAULT 'N',
  `remarks` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_wms`
--

INSERT INTO `trans_wms` (`id`, `work_code_number`, `user_id`, `ulb_id`, `ward_id`, `scheme_id`, `component_id`, `financial_year_id`, `work_name`, `work_type`, `work_sub_type`, `work_scope`, `announcement_type`, `announcement_no`, `announcement_date`, `site_plan_file`, `cross_section_file`, `l_section_file`, `google_map_file`, `city_map_file`, `is_active`, `is_revised`, `remarks`, `created_on`, `updated_on`) VALUES
(1, 'Testcode ', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:33:48', '2021-03-24 17:33:48'),
(2, 'Testcode', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:34:39', '2021-03-24 17:34:39'),
(3, 'Testcode', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:35:56', '2021-03-24 17:35:56'),
(4, 'Testcode', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:37:07', '2021-03-24 17:37:07'),
(5, 'dsad', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:48:16', '2021-03-24 17:48:16'),
(6, 'Testcode', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 17:51:44', '2021-03-24 17:51:44'),
(7, 'dsad', 0, 1, 3, 1, 1, 3, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 18:06:06', '2021-03-24 18:06:06'),
(8, 'Testcode', 0, 1, 1, 1, 1, 3, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-24 18:07:39', '2021-03-24 18:07:39'),
(9, 'UK002021-03-25', 0, 1, 1, 1, 2, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-25 10:47:44', '2021-03-25 10:47:44'),
(10, 'UK002021-03-25 06:19:22am', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-25 10:49:22', '2021-03-25 10:49:22'),
(11, 'UK002021-03-25 06:20', 0, 1, 1, 1, 1, 1, 'dfdsf', 'dsfds', 'dsfds', 'dfds', 'sfsf', 'fsfsdfdf32432', '2020-03-12 00:00:00', '', '', '', '', '', 'Y', 'N', NULL, '2021-03-25 10:50:08', '2021-03-25 10:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `trans_wms_approval_level`
--

CREATE TABLE `trans_wms_approval_level` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `wms_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `status` enum('0','1','2','3') NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trans_wms_work_items`
--

CREATE TABLE `trans_wms_work_items` (
  `id` int(11) NOT NULL,
  `wms_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `number1` decimal(18,2) DEFAULT NULL,
  `number2` decimal(18,2) DEFAULT NULL,
  `number3` decimal(18,2) DEFAULT NULL,
  `length` decimal(18,2) NOT NULL,
  `breadth` decimal(18,2) NOT NULL,
  `height` decimal(18,2) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate_type_id` int(11) DEFAULT NULL,
  `total_rate` decimal(18,2) DEFAULT NULL,
  `total_amount` decimal(18,2) DEFAULT NULL,
  `status` enum('1','2','3','4') NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_assign_work`
--

CREATE TABLE `vendor_assign_work` (
  `id` int(11) NOT NULL,
  `vendor_registration_id` int(11) NOT NULL,
  `reference_no` varchar(200) NOT NULL,
  `agency_period_months` int(11) NOT NULL,
  `agency_tendor_no` varchar(200) NOT NULL,
  `estimated_amount` bigint(20) NOT NULL,
  `work_start_date` date NOT NULL,
  `work_completion_date` date NOT NULL,
  `liability_period_days` int(11) NOT NULL,
  `brief_work_details` varchar(200) NOT NULL,
  `note_other_conditions` varchar(200) NOT NULL,
  `security_deposit` bigint(20) NOT NULL,
  `earnest_money_deposit` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` enum('N','Y') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_assign_work`
--

INSERT INTO `vendor_assign_work` (`id`, `vendor_registration_id`, `reference_no`, `agency_period_months`, `agency_tendor_no`, `estimated_amount`, `work_start_date`, `work_completion_date`, `liability_period_days`, `brief_work_details`, `note_other_conditions`, `security_deposit`, `earnest_money_deposit`, `created_at`, `is_active`) VALUES
(1, 1, 'asas', 12, 'sdsd', 1212, '2021-03-25', '2021-03-30', 12, 'sdsd', 'sdsd', 2121, 2323, '2021-03-25 10:06:15', 'Y'),
(2, 1, '1212', 5, '12', 200000, '0000-00-00', '0000-00-00', 12, 'test', 'test', 100, 2000, '2021-03-25 10:35:28', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank_account_type`
--

CREATE TABLE `vendor_bank_account_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` datetime NOT NULL,
  `is_active` enum('N','Y') DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_bank_account_type`
--

INSERT INTO `vendor_bank_account_type` (`id`, `name`, `created_at`, `modified_at`, `is_active`) VALUES
(1, 'Current Account', '2021-03-24 13:44:33', '2021-03-24 19:14:33', 'Y'),
(2, 'Saving Account', '2021-03-24 13:44:33', '2021-03-24 19:14:33', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_branch_office_country`
--

CREATE TABLE `vendor_branch_office_country` (
  `id` int(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `is_active` enum('N','Y') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_branch_office_country`
--

INSERT INTO `vendor_branch_office_country` (`id`, `country_name`, `is_active`) VALUES
(1, 'Afghanistan', 'Y'),
(2, 'Albania', 'Y'),
(3, 'Algeria', 'Y'),
(4, 'American Samoa', 'Y'),
(5, 'Angola', 'Y'),
(6, 'Anguilla', 'Y'),
(7, 'Antartica', 'Y'),
(8, 'Antigua and Barbuda', 'Y'),
(9, 'Argentina', 'Y'),
(10, 'Armenia', 'Y'),
(11, 'Aruba', 'Y'),
(12, 'Ashmore and Cartier Island', 'Y'),
(13, 'Australia', 'Y'),
(14, 'Austria', 'Y'),
(15, 'Azerbaijan', 'Y'),
(16, 'Bahamas', 'Y'),
(17, 'Bahrain', 'Y'),
(18, 'Bangladesh', 'Y'),
(19, 'Barbados', 'Y'),
(20, 'Belarus', 'Y'),
(21, 'Belgium', 'Y'),
(22, 'Belize', 'Y'),
(23, 'Benin', 'Y'),
(24, 'Bermuda', 'Y'),
(25, 'Burundi', 'Y'),
(26, 'Cambodia', 'Y'),
(27, 'Cameroon', 'Y'),
(28, 'Canada', 'Y'),
(29, 'Cape Verde', 'Y'),
(30, 'Cayman Islands', 'Y'),
(31, 'Central African Republic', 'Y'),
(32, 'Chad', 'Y'),
(33, 'Chile', 'Y'),
(34, 'China', 'Y'),
(35, 'Christmas Island', 'Y'),
(36, 'Clipperton Island', 'Y'),
(37, 'Cocos (Keeling) Islands', 'Y'),
(38, 'Colombia', 'Y'),
(39, 'Comoros', 'Y'),
(40, 'Congo, Democratic Republic of the', 'Y'),
(41, 'Congo, Republic of the', 'Y'),
(42, 'Cook Islands', 'Y'),
(43, 'Costa Rica', 'Y'),
(44, 'Cote d\'Ivoire', 'Y'),
(45, 'Croatia', 'Y'),
(46, 'Cuba', 'Y'),
(47, 'Cyprus', 'Y'),
(48, 'Czeck Republic', 'Y'),
(49, 'Denmark', 'Y'),
(50, 'Djibouti', 'Y'),
(51, 'Djibouti', 'Y'),
(52, 'Dominica', 'Y'),
(53, 'Dominican Republic', 'Y'),
(54, 'Ecuador', 'Y'),
(55, 'Egypt', 'Y'),
(56, 'El Salvador', 'Y'),
(57, 'Equatorial Guinea', 'Y'),
(58, 'Eritrea', 'Y'),
(59, 'Estonia', 'Y'),
(60, 'Ethiopia', 'Y'),
(61, 'Europa Island', 'Y'),
(62, 'Falkland Islands (Islas Malvinas)', 'Y'),
(63, 'Faroe Islands', 'Y'),
(64, 'Fiji', 'Y'),
(65, 'Finland', 'Y'),
(66, 'France', 'Y'),
(67, 'French Guiana', 'Y'),
(68, 'French Polynesia', 'Y'),
(69, 'French Southern and Antarctic Lands', 'Y'),
(70, 'Gabon', 'Y'),
(71, 'Gambia, The', 'Y'),
(72, 'Gaza Strip', 'Y'),
(73, 'Georgia', 'Y'),
(82, 'Germany', 'Y'),
(83, 'Ghana', 'Y'),
(84, 'Gibraltar', 'Y'),
(85, 'Glorioso Islands', 'Y'),
(86, 'Greece', 'Y'),
(87, 'Greenland', 'Y'),
(88, 'Grenada', 'Y'),
(89, 'Guadeloupe', 'Y'),
(90, 'Guam', 'Y'),
(91, 'Guatemala', 'Y'),
(92, 'Guernsey', 'Y'),
(93, 'Guinea', 'Y'),
(94, 'Guinea-Bissau', 'Y'),
(95, 'Guyana', 'Y'),
(96, 'Haiti', 'Y'),
(97, 'Heard Island and McDonald Islands', 'Y'),
(98, 'Holy See (Vatican City)', 'Y'),
(99, 'Honduras', 'Y'),
(100, 'Hong Kong', 'Y'),
(101, 'Howland Island', 'Y'),
(102, 'Hungary', 'Y'),
(103, 'Iceland', 'Y'),
(104, 'India', 'Y'),
(105, 'Indonesia', 'Y'),
(106, 'Iran', 'Y'),
(107, 'Iraq', 'Y'),
(108, 'Ireland', 'Y'),
(109, 'Ireland, Northern', 'Y'),
(110, 'Israel', 'Y'),
(111, 'Italy', 'Y'),
(112, 'Jamaica', 'Y'),
(113, 'Jan Mayen', 'Y'),
(114, 'Japan', 'Y'),
(115, 'Jarvis Island', 'Y'),
(116, 'Jersey', 'Y'),
(117, 'Johnston Atoll', 'Y'),
(118, 'Jordan', 'Y'),
(119, 'Juan de Nova Island', 'Y'),
(120, 'Kazakhstan', 'Y'),
(121, 'Kenya', 'Y'),
(122, 'Kiribati', 'Y'),
(123, 'Korea, North', 'Y'),
(124, 'Korea, South', 'Y'),
(125, 'Kuwait', 'Y'),
(126, 'Kyrgyzstan', 'Y'),
(127, 'Laos', 'Y'),
(128, 'Latvia', 'Y'),
(129, 'Lebanon', 'Y'),
(130, 'Lesotho', 'Y'),
(131, 'Liberia', 'Y'),
(132, 'Libya', 'Y'),
(133, 'Liechtenstein', 'Y'),
(134, 'Lithuania', 'Y'),
(135, 'Luxembourg', 'Y'),
(136, 'Macau', 'Y'),
(137, 'Macedonia, Former Yugoslav Republic of', 'Y'),
(138, 'Madagascar', 'Y'),
(139, 'Malawi', 'Y'),
(140, 'Malaysia', 'Y'),
(141, 'Maldives', 'Y'),
(142, 'Mali', 'Y'),
(143, 'Malta', 'Y'),
(144, 'Man, Isle of', 'Y'),
(145, 'Marshall Islands', 'Y'),
(146, 'Martinique', 'Y'),
(147, 'Mauritania', 'Y'),
(148, 'Mauritius', 'Y'),
(149, 'Mayotte', 'Y'),
(150, 'Mexico', 'Y'),
(151, 'Micronesia, Federated States of', 'Y'),
(152, 'Midway Islands', 'Y'),
(153, 'Moldova', 'Y'),
(154, 'Monaco', 'Y'),
(155, 'Mongolia', 'Y'),
(156, 'Montserrat', 'Y'),
(157, 'Morocco', 'Y'),
(158, 'Mozambique', 'Y'),
(159, 'Namibia', 'Y'),
(160, 'Nauru', 'Y'),
(161, 'Nepal', 'Y'),
(162, 'Netherlands', 'Y'),
(163, 'Netherlands Antilles', 'Y'),
(164, 'New Caledonia', 'Y'),
(165, 'New Zealand', 'Y'),
(166, 'Nicaragua', 'Y'),
(167, 'Niger', 'Y'),
(168, 'Nigeria', 'Y'),
(169, 'Niue', 'Y'),
(170, 'Norfolk Island', 'Y'),
(171, 'Northern Mariana Islands', 'Y'),
(172, 'Norway', 'Y'),
(173, 'Oman', 'Y'),
(174, 'Pakistan', 'Y'),
(175, 'Palau', 'Y'),
(176, 'Panama', 'Y'),
(177, 'Papua New Guinea', 'Y'),
(178, 'Paraguay', 'Y'),
(179, 'Peru', 'Y'),
(180, 'Philippines', 'Y'),
(181, 'Pitcaim Islands', 'Y'),
(182, 'Poland', 'Y'),
(183, 'Portugal', 'Y'),
(184, 'Puerto Rico', 'Y'),
(185, 'Qatar', 'Y'),
(186, 'Reunion', 'Y'),
(187, 'Romainia', 'Y'),
(188, 'Russia', 'Y'),
(189, 'Rwanda', 'Y'),
(190, 'Saint Helena', 'Y'),
(191, 'Saint Kitts and Nevis', 'Y'),
(192, 'Saint Lucia', 'Y'),
(193, 'Saint Pierre and Miquelon', 'Y'),
(194, 'Saint Vincent and the Grenadines', 'Y'),
(195, 'Samoa', 'Y'),
(196, 'San Marino', 'Y'),
(197, 'Sao Tome and Principe', 'Y'),
(198, 'Saudi Arabia', 'Y'),
(199, 'Scotland', 'Y'),
(200, 'Senegal', 'Y'),
(201, 'Seychelles', 'Y'),
(202, 'Sierra Leone', 'Y'),
(203, 'Sierra Leone', 'Y'),
(204, 'Singapore', 'Y'),
(205, 'Slovakia', 'Y'),
(206, 'Slovenia', 'Y'),
(207, 'Solomon Islands', 'Y'),
(208, 'Somalia', 'Y'),
(209, 'South Africa', 'Y'),
(210, 'South Georgia and South Sandwich Islands', 'Y'),
(211, 'Spain', 'Y'),
(212, 'Spratly Islands', 'Y'),
(213, 'Sri Lanka', 'Y'),
(214, 'Sudan', 'Y'),
(215, 'Suriname', 'Y'),
(216, 'Svalbard', 'Y'),
(217, 'Swaziland', 'Y'),
(218, 'Sweden', 'Y'),
(219, 'Switzerland', 'Y'),
(220, 'Syria', 'Y'),
(221, 'Taiwan', 'Y'),
(222, 'Tajikistan', 'Y'),
(223, 'Tanzania', 'Y'),
(224, 'Thailand', 'Y'),
(225, 'Tobago', 'Y'),
(226, 'Toga', 'Y'),
(227, 'Tokelau', 'Y'),
(228, 'Tonga', 'Y'),
(229, 'Trinidad', 'Y'),
(230, 'Tunisia', 'Y'),
(231, 'Turkey', 'Y'),
(232, 'Turkmenistan', 'Y'),
(233, 'Tuvalu', 'Y'),
(234, 'Uganda', 'Y'),
(235, 'Ukraine', 'Y'),
(236, 'United Arab Emirates', 'Y'),
(237, 'United Kingdom', 'Y'),
(238, 'Uruguay', 'Y'),
(239, 'USA', 'Y'),
(240, 'Uzbekistan', 'Y'),
(241, 'Vanuatu', 'Y'),
(242, 'Venezuela', 'Y'),
(243, 'Vietnam', 'Y'),
(244, 'Virgin Islands', 'Y'),
(245, 'Wales', 'Y'),
(246, 'Wallis and Futuna', 'Y'),
(247, 'West Bank', 'Y'),
(248, 'Western Sahara', 'Y'),
(249, 'Yemen', 'Y'),
(250, 'Yugoslavia', 'Y'),
(251, 'Zambia', 'Y'),
(252, 'Zimbabwe', 'Y'),
(253, 'Afghanistan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_branch_office_district`
--

CREATE TABLE `vendor_branch_office_district` (
  `id` int(11) NOT NULL,
  `district_code` int(11) DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `state_code` int(11) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vendor_branch_office_district`
--

INSERT INTO `vendor_branch_office_district` (`id`, `district_code`, `district_name`, `state_code`, `is_active`) VALUES
(1, 603, 'NICOBARS', 35, 'Y'),
(2, 632, 'NORTH AND MIDDLE ANDAMAN', 35, 'Y'),
(3, 602, 'SOUTH ANDAMANS', 35, 'Y'),
(4, 502, 'ANANTAPUR', 28, 'Y'),
(5, 503, 'CHITTOOR', 28, 'Y'),
(6, 505, 'EAST GODAVARI', 28, 'Y'),
(7, 506, 'GUNTUR', 28, 'Y'),
(8, 510, 'KRISHNA', 28, 'Y'),
(9, 511, 'KURNOOL', 28, 'Y'),
(10, 517, 'PRAKASAM', 28, 'Y'),
(11, 515, 'SPSR NELLORE', 28, 'Y'),
(12, 519, 'SRIKAKULAM', 28, 'Y'),
(13, 520, 'VISAKHAPATANAM', 28, 'Y'),
(14, 521, 'VIZIANAGARAM', 28, 'Y'),
(15, 523, 'WEST GODAVARI', 28, 'Y'),
(16, 504, 'Y.S.R.', 28, 'Y'),
(17, 628, 'ANJAW', 12, 'Y'),
(18, 229, 'CHANGLANG', 12, 'Y'),
(19, 230, 'DIBANG VALLEY', 12, 'Y'),
(20, 231, 'EAST KAMENG', 12, 'Y'),
(21, 232, 'EAST SIANG', 12, 'Y'),
(22, 677, 'Kra Daadi', 12, 'Y'),
(23, 233, 'KURUNG KUMEY', 12, 'Y'),
(24, 234, 'LOHIT', 12, 'Y'),
(25, 666, 'LONGDING', 12, 'Y'),
(26, 235, 'LOWER DIBANG VALLEY', 12, 'Y'),
(27, 236, 'LOWER SUBANSIRI', 12, 'Y'),
(28, 678, 'NAMSAI', 12, 'Y'),
(29, 237, 'PAPUM PARE', 12, 'Y'),
(30, 679, 'SIANG', 12, 'Y'),
(31, 238, 'TAWANG', 12, 'Y'),
(32, 239, 'TIRAP', 12, 'Y'),
(33, 240, 'UPPER SIANG', 12, 'Y'),
(34, 241, 'UPPER SUBANSIRI', 12, 'Y'),
(35, 242, 'WEST KAMENG', 12, 'Y'),
(36, 243, 'WEST SIANG', 12, 'Y'),
(37, 616, 'BAKSA', 18, 'Y'),
(38, 280, 'BARPETA', 18, 'Y'),
(39, 705, 'Biswanath', 18, 'Y'),
(40, 281, 'BONGAIGAON', 18, 'Y'),
(41, 282, 'CACHAR', 18, 'Y'),
(42, 708, 'CHARAIDEO', 18, 'Y'),
(43, 612, 'CHIRANG', 18, 'Y'),
(44, 283, 'DARRANG', 18, 'Y'),
(45, 284, 'DHEMAJI', 18, 'Y'),
(46, 285, 'DHUBRI', 18, 'Y'),
(47, 286, 'DIBRUGARH', 18, 'Y'),
(48, 299, 'DIMA HASAO', 18, 'Y'),
(49, 287, 'GOALPARA', 18, 'Y'),
(50, 288, 'GOLAGHAT', 18, 'Y'),
(51, 289, 'HAILAKANDI', 18, 'Y'),
(52, 709, 'HOJAI', 18, 'Y'),
(53, 290, 'JORHAT', 18, 'Y'),
(54, 291, 'KAMRUP', 18, 'Y'),
(55, 618, 'KAMRUP METRO', 18, 'Y'),
(56, 292, 'KARBI ANGLONG', 18, 'Y'),
(57, 293, 'KARIMGANJ', 18, 'Y'),
(58, 294, 'KOKRAJHAR', 18, 'Y'),
(59, 295, 'LAKHIMPUR', 18, 'Y'),
(60, 706, 'MAJULI', 18, 'Y'),
(61, 296, 'MARIGAON', 18, 'Y'),
(62, 297, 'NAGAON', 18, 'Y'),
(63, 298, 'NALBARI', 18, 'Y'),
(64, 300, 'SIVASAGAR', 18, 'Y'),
(65, 301, 'SONITPUR', 18, 'Y'),
(66, 707, 'SOUTH SALMARA MANCACHAR', 18, 'Y'),
(67, 302, 'TINSUKIA', 18, 'Y'),
(68, 617, 'UDALGURI', 18, 'Y'),
(69, 710, 'WEST KARBI ANGLONG', 18, 'Y'),
(70, 188, 'ARARIA', 10, 'Y'),
(71, 611, 'ARWAL', 10, 'Y'),
(72, 189, 'AURANGABAD', 10, 'Y'),
(73, 190, 'BANKA', 10, 'Y'),
(74, 191, 'BEGUSARAI', 10, 'Y'),
(75, 192, 'BHAGALPUR', 10, 'Y'),
(76, 193, 'BHOJPUR', 10, 'Y'),
(77, 194, 'BUXAR', 10, 'Y'),
(78, 195, 'DARBHANGA', 10, 'Y'),
(79, 196, 'GAYA', 10, 'Y'),
(80, 197, 'GOPALGANJ', 10, 'Y'),
(81, 198, 'JAMUI', 10, 'Y'),
(82, 199, 'JEHANABAD', 10, 'Y'),
(83, 200, 'KAIMUR (BHABUA)', 10, 'Y'),
(84, 201, 'KATIHAR', 10, 'Y'),
(85, 202, 'KHAGARIA', 10, 'Y'),
(86, 203, 'KISHANGANJ', 10, 'Y'),
(87, 204, 'LAKHISARAI', 10, 'Y'),
(88, 205, 'MADHEPURA', 10, 'Y'),
(89, 206, 'MADHUBANI', 10, 'Y'),
(90, 207, 'MUNGER', 10, 'Y'),
(91, 208, 'MUZAFFARPUR', 10, 'Y'),
(92, 209, 'NALANDA', 10, 'Y'),
(93, 210, 'NAWADA', 10, 'Y'),
(94, 211, 'PASHCHIM CHAMPARAN', 10, 'Y'),
(95, 212, 'PATNA', 10, 'Y'),
(96, 213, 'PURBI CHAMPARAN', 10, 'Y'),
(97, 214, 'PURNIA', 10, 'Y'),
(98, 215, 'ROHTAS', 10, 'Y'),
(99, 216, 'SAHARSA', 10, 'Y'),
(100, 217, 'SAMASTIPUR', 10, 'Y'),
(101, 218, 'SARAN', 10, 'Y'),
(102, 219, 'SHEIKHPURA', 10, 'Y'),
(103, 220, 'SHEOHAR', 10, 'Y'),
(104, 221, 'SITAMARHI', 10, 'Y'),
(105, 222, 'SIWAN', 10, 'Y'),
(106, 223, 'SUPAUL', 10, 'Y'),
(107, 224, 'VAISHALI', 10, 'Y'),
(108, 44, 'CHANDIGARH', 4, 'Y'),
(109, 646, 'BALOD', 22, 'Y'),
(110, 644, 'BALODA BAZAR', 22, 'Y'),
(111, 649, 'BALRAMPUR', 22, 'Y'),
(112, 374, 'BASTAR', 22, 'Y'),
(113, 650, 'BEMETARA', 22, 'Y'),
(114, 636, 'BIJAPUR', 22, 'Y'),
(115, 375, 'BILASPUR', 22, 'Y'),
(116, 376, 'DANTEWADA', 22, 'Y'),
(117, 377, 'DHAMTARI', 22, 'Y'),
(118, 378, 'DURG', 22, 'Y'),
(119, 645, 'GARIYABAND', 22, 'Y'),
(120, 379, 'JANJGIR-CHAMPA', 22, 'Y'),
(121, 380, 'JASHPUR', 22, 'Y'),
(122, 382, 'KABIRDHAM', 22, 'Y'),
(123, 381, 'KANKER', 22, 'Y'),
(124, 643, 'KONDAGAON', 22, 'Y'),
(125, 383, 'KORBA', 22, 'Y'),
(126, 384, 'KOREA', 22, 'Y'),
(127, 385, 'MAHASAMUND', 22, 'Y'),
(128, 647, 'MUNGELI', 22, 'Y'),
(129, 637, 'NARAYANPUR', 22, 'Y'),
(130, 386, 'RAIGARH', 22, 'Y'),
(131, 387, 'RAIPUR', 22, 'Y'),
(132, 388, 'RAJNANDGAON', 22, 'Y'),
(133, 642, 'SUKMA', 22, 'Y'),
(134, 648, 'SURAJPUR', 22, 'Y'),
(135, 389, 'SURGUJA', 22, 'Y'),
(136, 465, 'DADRA AND NAGAR HAVELI', 26, 'Y'),
(137, 463, 'DAMAN', 25, 'Y'),
(138, 464, 'DIU', 25, 'Y'),
(139, 77, 'CENTRAL', 7, 'Y'),
(140, 78, 'EAST', 7, 'Y'),
(141, 79, 'NEW DELHI', 7, 'Y'),
(142, 80, 'NORTH', 7, 'Y'),
(143, 81, 'NORTH EAST', 7, 'Y'),
(144, 82, 'NORTH WEST', 7, 'Y'),
(145, 671, 'SHAHDARA', 7, 'Y'),
(146, 83, 'SOUTH', 7, 'Y'),
(147, 670, 'South East', 7, 'Y'),
(148, 84, 'SOUTH WEST', 7, 'Y'),
(149, 85, 'WEST', 7, 'Y'),
(150, 551, 'NORTH GOA', 30, 'Y'),
(151, 552, 'SOUTH GOA', 30, 'Y'),
(152, 438, 'AHMADABAD', 24, 'Y'),
(153, 439, 'AMRELI', 24, 'Y'),
(154, 440, 'ANAND', 24, 'Y'),
(155, 672, 'ARVALLI', 24, 'Y'),
(156, 441, 'BANAS KANTHA', 24, 'Y'),
(157, 442, 'BHARUCH', 24, 'Y'),
(158, 443, 'BHAVNAGAR', 24, 'Y'),
(159, 676, 'BOTAD', 24, 'Y'),
(160, 668, 'CHHOTAUDEPUR', 24, 'Y'),
(161, 444, 'DANG', 24, 'Y'),
(162, 674, 'DEVBHUMI DWARKA', 24, 'Y'),
(163, 445, 'DOHAD', 24, 'Y'),
(164, 446, 'GANDHINAGAR', 24, 'Y'),
(165, 675, 'GIR SOMNATH', 24, 'Y'),
(166, 447, 'JAMNAGAR', 24, 'Y'),
(167, 448, 'JUNAGADH', 24, 'Y'),
(168, 449, 'KACHCHH', 24, 'Y'),
(169, 450, 'KHEDA', 24, 'Y'),
(170, 451, 'MAHESANA', 24, 'Y'),
(171, 669, 'Mahisagar', 24, 'Y'),
(172, 673, 'MORBI', 24, 'Y'),
(173, 452, 'NARMADA', 24, 'Y'),
(174, 453, 'NAVSARI', 24, 'Y'),
(175, 454, 'PANCH MAHALS', 24, 'Y'),
(176, 455, 'PATAN', 24, 'Y'),
(177, 456, 'PORBANDAR', 24, 'Y'),
(178, 457, 'RAJKOT', 24, 'Y'),
(179, 458, 'SABAR KANTHA', 24, 'Y'),
(180, 459, 'SURAT', 24, 'Y'),
(181, 460, 'SURENDRANAGAR', 24, 'Y'),
(182, 641, 'TAPI', 24, 'Y'),
(183, 461, 'VADODARA', 24, 'Y'),
(184, 462, 'VALSAD', 24, 'Y'),
(185, 330, 'GODDA', 20, 'Y'),
(186, 58, 'AMBALA', 6, 'Y'),
(187, 59, 'BHIWANI', 6, 'Y'),
(188, 701, 'CHARKI DADRI', 6, 'Y'),
(189, 60, 'FARIDABAD', 6, 'Y'),
(190, 61, 'FATEHABAD', 6, 'Y'),
(191, 62, 'GURUGRAM', 6, 'Y'),
(192, 63, 'HISAR', 6, 'Y'),
(193, 64, 'JHAJJAR', 6, 'Y'),
(194, 65, 'JIND', 6, 'Y'),
(195, 66, 'KAITHAL', 6, 'Y'),
(196, 67, 'KARNAL', 6, 'Y'),
(197, 68, 'KURUKSHETRA', 6, 'Y'),
(198, 69, 'MAHENDRAGARH', 6, 'Y'),
(199, 604, 'MEWAT', 6, 'Y'),
(200, 619, 'PALWAL', 6, 'Y'),
(201, 70, 'PANCHKULA', 6, 'Y'),
(202, 71, 'PANIPAT', 6, 'Y'),
(203, 72, 'REWARI', 6, 'Y'),
(204, 73, 'ROHTAK', 6, 'Y'),
(205, 74, 'SIRSA', 6, 'Y'),
(206, 75, 'SONIPAT', 6, 'Y'),
(207, 76, 'YAMUNANAGAR', 6, 'Y'),
(208, 15, 'BILASPUR', 2, 'Y'),
(209, 16, 'CHAMBA', 2, 'Y'),
(210, 17, 'HAMIRPUR', 2, 'Y'),
(211, 18, 'KANGRA', 2, 'Y'),
(212, 19, 'KINNAUR', 2, 'Y'),
(213, 20, 'KULLU', 2, 'Y'),
(214, 21, 'LAHUL AND SPITI', 2, 'Y'),
(215, 22, 'MANDI', 2, 'Y'),
(216, 23, 'SHIMLA', 2, 'Y'),
(217, 24, 'SIRMAUR', 2, 'Y'),
(218, 25, 'SOLAN', 2, 'Y'),
(219, 26, 'UNA', 2, 'Y'),
(220, 1, 'ANANTNAG', 1, 'Y'),
(221, 2, 'BADGAM', 1, 'Y'),
(222, 623, 'BANDIPORA', 1, 'Y'),
(223, 3, 'BARAMULLA', 1, 'Y'),
(224, 4, 'DODA', 1, 'Y'),
(225, 626, 'GANDERBAL', 1, 'Y'),
(226, 5, 'JAMMU', 1, 'Y'),
(227, 6, 'KARGIL', 1, 'Y'),
(228, 7, 'KATHUA', 1, 'Y'),
(229, 620, 'KISHTWAR', 1, 'Y'),
(230, 622, 'KULGAM', 1, 'Y'),
(231, 8, 'KUPWARA', 1, 'Y'),
(232, 9, 'LEH LADAKH', 1, 'Y'),
(233, 10, 'POONCH', 1, 'Y'),
(234, 11, 'PULWAMA', 1, 'Y'),
(235, 12, 'RAJAURI', 1, 'Y'),
(236, 621, 'RAMBAN', 1, 'Y'),
(237, 627, 'REASI', 1, 'Y'),
(238, 624, 'SAMBA', 1, 'Y'),
(239, 625, 'SHOPIAN', 1, 'Y'),
(240, 13, 'SRINAGAR', 1, 'Y'),
(241, 14, 'UDHAMPUR', 1, 'Y'),
(242, 322, 'BOKARO', 20, 'Y'),
(243, 323, 'CHATRA', 20, 'Y'),
(244, 324, 'DEOGHAR', 20, 'Y'),
(245, 325, 'DHANBAD', 20, 'Y'),
(246, 326, 'DUMKA', 20, 'Y'),
(247, 327, 'EAST SINGHBUM', 20, 'Y'),
(248, 328, 'GARHWA', 20, 'Y'),
(249, 329, 'GIRIDIH', 20, 'Y'),
(250, 331, 'GUMLA', 20, 'Y'),
(251, 332, 'HAZARIBAGH', 20, 'Y'),
(252, 333, 'JAMTARA', 20, 'Y'),
(253, 606, 'KHUNTI', 20, 'Y'),
(254, 334, 'KODERMA', 20, 'Y'),
(255, 335, 'LATEHAR', 20, 'Y'),
(256, 336, 'LOHARDAGA', 20, 'Y'),
(257, 337, 'PAKUR', 20, 'Y'),
(258, 338, 'PALAMU', 20, 'Y'),
(259, 607, 'RAMGARH', 20, 'Y'),
(260, 339, 'RANCHI', 20, 'Y'),
(261, 340, 'SAHEBGANJ', 20, 'Y'),
(262, 341, 'SARAIKELA KHARSAWAN', 20, 'Y'),
(263, 342, 'SIMDEGA', 20, 'Y'),
(264, 343, 'WEST SINGHBHUM', 20, 'Y'),
(265, 524, 'BAGALKOT', 29, 'Y'),
(266, 528, 'BALLARI', 29, 'Y'),
(267, 527, 'BELAGAVI', 29, 'Y'),
(268, 526, 'BENGALURU RURAL', 29, 'Y'),
(269, 525, 'BENGALURU URBAN', 29, 'Y'),
(270, 529, 'BIDAR', 29, 'Y'),
(271, 531, 'CHAMARAJANAGAR', 29, 'Y'),
(272, 630, 'CHIKBALLAPUR', 29, 'Y'),
(273, 532, 'CHIKKAMAGALURU', 29, 'Y'),
(274, 533, 'CHITRADURGA', 29, 'Y'),
(275, 534, 'DAKSHIN KANNAD', 29, 'Y'),
(276, 535, 'DAVANGERE', 29, 'Y'),
(277, 536, 'DHARWAD', 29, 'Y'),
(278, 537, 'GADAG', 29, 'Y'),
(279, 539, 'HASSAN', 29, 'Y'),
(280, 540, 'HAVERI', 29, 'Y'),
(281, 538, 'KALABURAGI', 29, 'Y'),
(282, 541, 'KODAGU', 29, 'Y'),
(283, 542, 'KOLAR', 29, 'Y'),
(284, 543, 'KOPPAL', 29, 'Y'),
(285, 544, 'MANDYA', 29, 'Y'),
(286, 545, 'MYSURU', 29, 'Y'),
(287, 546, 'RAICHUR', 29, 'Y'),
(288, 631, 'RAMANAGARA', 29, 'Y'),
(289, 547, 'SHIVAMOGGA', 29, 'Y'),
(290, 548, 'TUMAKURU', 29, 'Y'),
(291, 549, 'UDUPI', 29, 'Y'),
(292, 550, 'UTTAR KANNAD', 29, 'Y'),
(293, 530, 'VIJAYAPURA', 29, 'Y'),
(294, 635, 'YADGIR', 29, 'Y'),
(295, 554, 'ALAPPUZHA', 32, 'Y'),
(296, 555, 'ERNAKULAM', 32, 'Y'),
(297, 556, 'IDUKKI', 32, 'Y'),
(298, 557, 'KANNUR', 32, 'Y'),
(299, 558, 'KASARAGOD', 32, 'Y'),
(300, 559, 'KOLLAM', 32, 'Y'),
(301, 560, 'KOTTAYAM', 32, 'Y'),
(302, 561, 'KOZHIKODE', 32, 'Y'),
(303, 562, 'MALAPPURAM', 32, 'Y'),
(304, 563, 'PALAKKAD', 32, 'Y'),
(305, 564, 'PATHANAMTHITTA', 32, 'Y'),
(306, 565, 'THIRUVANANTHAPURAM', 32, 'Y'),
(307, 566, 'THRISSUR', 32, 'Y'),
(308, 567, 'WAYANAD', 32, 'Y'),
(309, 553, 'LAKSHADWEEP DISTRICT', 31, 'Y'),
(310, 667, 'AGAR MALWA', 23, 'Y'),
(311, 639, 'ALIRAJPUR', 23, 'Y'),
(312, 390, 'ANUPPUR', 23, 'Y'),
(313, 391, 'ASHOKNAGAR', 23, 'Y'),
(314, 392, 'BALAGHAT', 23, 'Y'),
(315, 393, 'BARWANI', 23, 'Y'),
(316, 394, 'BETUL', 23, 'Y'),
(317, 395, 'BHIND', 23, 'Y'),
(318, 396, 'BHOPAL', 23, 'Y'),
(319, 397, 'BURHANPUR', 23, 'Y'),
(320, 398, 'CHHATARPUR', 23, 'Y'),
(321, 399, 'CHHINDWARA', 23, 'Y'),
(322, 400, 'DAMOH', 23, 'Y'),
(323, 401, 'DATIA', 23, 'Y'),
(324, 402, 'DEWAS', 23, 'Y'),
(325, 403, 'DHAR', 23, 'Y'),
(326, 404, 'DINDORI', 23, 'Y'),
(327, 405, 'EAST NIMAR', 23, 'Y'),
(328, 406, 'GUNA', 23, 'Y'),
(329, 407, 'GWALIOR', 23, 'Y'),
(330, 408, 'HARDA', 23, 'Y'),
(331, 409, 'HOSHANGABAD', 23, 'Y'),
(332, 410, 'INDORE', 23, 'Y'),
(333, 411, 'JABALPUR', 23, 'Y'),
(334, 412, 'JHABUA', 23, 'Y'),
(335, 413, 'KATNI', 23, 'Y'),
(336, 414, 'KHARGONE', 23, 'Y'),
(337, 415, 'MANDLA', 23, 'Y'),
(338, 416, 'MANDSAUR', 23, 'Y'),
(339, 417, 'MORENA', 23, 'Y'),
(340, 418, 'NARSINGHPUR', 23, 'Y'),
(341, 419, 'NEEMUCH', 23, 'Y'),
(342, 420, 'PANNA', 23, 'Y'),
(343, 421, 'RAISEN', 23, 'Y'),
(344, 422, 'RAJGARH', 23, 'Y'),
(345, 423, 'RATLAM', 23, 'Y'),
(346, 424, 'REWA', 23, 'Y'),
(347, 425, 'SAGAR', 23, 'Y'),
(348, 426, 'SATNA', 23, 'Y'),
(349, 427, 'SEHORE', 23, 'Y'),
(350, 428, 'SEONI', 23, 'Y'),
(351, 429, 'SHAHDOL', 23, 'Y'),
(352, 430, 'SHAJAPUR', 23, 'Y'),
(353, 431, 'SHEOPUR', 23, 'Y'),
(354, 432, 'SHIVPURI', 23, 'Y'),
(355, 433, 'SIDHI', 23, 'Y'),
(356, 638, 'SINGRAULI', 23, 'Y'),
(357, 434, 'TIKAMGARH', 23, 'Y'),
(358, 435, 'UJJAIN', 23, 'Y'),
(359, 436, 'UMARIA', 23, 'Y'),
(360, 437, 'VIDISHA', 23, 'Y'),
(361, 466, 'AHMEDNAGAR', 27, 'Y'),
(362, 467, 'AKOLA', 27, 'Y'),
(363, 468, 'AMRAVATI', 27, 'Y'),
(364, 469, 'AURANGABAD', 27, 'Y'),
(365, 470, 'BEED', 27, 'Y'),
(366, 471, 'BHANDARA', 27, 'Y'),
(367, 472, 'BULDHANA', 27, 'Y'),
(368, 473, 'CHANDRAPUR', 27, 'Y'),
(369, 474, 'DHULE', 27, 'Y'),
(370, 475, 'GADCHIROLI', 27, 'Y'),
(371, 476, 'GONDIA', 27, 'Y'),
(372, 477, 'HINGOLI', 27, 'Y'),
(373, 478, 'JALGAON', 27, 'Y'),
(374, 479, 'JALNA', 27, 'Y'),
(375, 480, 'KOLHAPUR', 27, 'Y'),
(376, 481, 'LATUR', 27, 'Y'),
(377, 482, 'MUMBAI', 27, 'Y'),
(378, 483, 'MUMBAI SUBURBAN', 27, 'Y'),
(379, 484, 'NAGPUR', 27, 'Y'),
(380, 485, 'NANDED', 27, 'Y'),
(381, 486, 'NANDURBAR', 27, 'Y'),
(382, 487, 'NASHIK', 27, 'Y'),
(383, 488, 'OSMANABAD', 27, 'Y'),
(384, 665, 'PALGHAR', 27, 'Y'),
(385, 489, 'PARBHANI', 27, 'Y'),
(386, 490, 'PUNE', 27, 'Y'),
(387, 491, 'RAIGAD', 27, 'Y'),
(388, 492, 'RATNAGIRI', 27, 'Y'),
(389, 493, 'SANGLI', 27, 'Y'),
(390, 494, 'SATARA', 27, 'Y'),
(391, 495, 'SINDHUDURG', 27, 'Y'),
(392, 496, 'SOLAPUR', 27, 'Y'),
(393, 497, 'THANE', 27, 'Y'),
(394, 498, 'WARDHA', 27, 'Y'),
(395, 499, 'WASHIM', 27, 'Y'),
(396, 500, 'YAVATMAL', 27, 'Y'),
(397, 252, 'BISHNUPUR', 14, 'Y'),
(398, 253, 'CHANDEL', 14, 'Y'),
(399, 254, 'CHURACHANDPUR', 14, 'Y'),
(400, 255, 'IMPHAL EAST', 14, 'Y'),
(401, 256, 'IMPHAL WEST', 14, 'Y'),
(402, 713, 'JIRIBAM', 14, 'Y'),
(403, 711, 'KAKCHING', 14, 'Y'),
(404, 717, 'KAMJONG', 14, 'Y'),
(405, 712, 'KANGPOKPI', 14, 'Y'),
(406, 714, 'NONEY', 14, 'Y'),
(407, 715, 'PHERZAWL', 14, 'Y'),
(408, 257, 'SENAPATI', 14, 'Y'),
(409, 258, 'TAMENGLONG', 14, 'Y'),
(410, 716, 'TENGNOUPAL', 14, 'Y'),
(411, 259, 'THOUBAL', 14, 'Y'),
(412, 260, 'UKHRUL', 14, 'Y'),
(413, 273, 'EAST GARO HILLS', 17, 'Y'),
(414, 657, 'EAST JAINTIA HILLS', 17, 'Y'),
(415, 274, 'EAST KHASI HILLS', 17, 'Y'),
(416, 656, 'NORTH GARO HILLS', 17, 'Y'),
(417, 276, 'RI BHOI', 17, 'Y'),
(418, 277, 'SOUTH GARO HILLS', 17, 'Y'),
(419, 663, 'SOUTH WEST GARO HILLS', 17, 'Y'),
(420, 658, 'SOUTH WEST KHASI HILLS', 17, 'Y'),
(421, 278, 'WEST GARO HILLS', 17, 'Y'),
(422, 275, 'WEST JAINTIA HILLS', 17, 'Y'),
(423, 279, 'WEST KHASI HILLS', 17, 'Y'),
(424, 261, 'AIZAWL', 15, 'Y'),
(425, 262, 'CHAMPHAI', 15, 'Y'),
(426, 263, 'KOLASIB', 15, 'Y'),
(427, 264, 'LAWNGTLAI', 15, 'Y'),
(428, 265, 'LUNGLEI', 15, 'Y'),
(429, 266, 'MAMIT', 15, 'Y'),
(430, 267, 'SAIHA', 15, 'Y'),
(431, 268, 'SERCHHIP', 15, 'Y'),
(432, 244, 'DIMAPUR', 13, 'Y'),
(433, 614, 'KIPHIRE', 13, 'Y'),
(434, 245, 'KOHIMA', 13, 'Y'),
(435, 615, 'LONGLENG', 13, 'Y'),
(436, 246, 'MOKOKCHUNG', 13, 'Y'),
(437, 247, 'MON', 13, 'Y'),
(438, 613, 'PEREN', 13, 'Y'),
(439, 248, 'PHEK', 13, 'Y'),
(440, 249, 'TUENSANG', 13, 'Y'),
(441, 250, 'WOKHA', 13, 'Y'),
(442, 251, 'ZUNHEBOTO', 13, 'Y'),
(443, 344, 'ANUGUL', 21, 'Y'),
(444, 345, 'BALANGIR', 21, 'Y'),
(445, 346, 'BALESHWAR', 21, 'Y'),
(446, 347, 'BARGARH', 21, 'Y'),
(447, 348, 'BHADRAK', 21, 'Y'),
(448, 349, 'BOUDH', 21, 'Y'),
(449, 350, 'CUTTACK', 21, 'Y'),
(450, 351, 'DEOGARH', 21, 'Y'),
(451, 352, 'DHENKANAL', 21, 'Y'),
(452, 353, 'GAJAPATI', 21, 'Y'),
(453, 354, 'GANJAM', 21, 'Y'),
(454, 355, 'JAGATSINGHAPUR', 21, 'Y'),
(455, 356, 'JAJAPUR', 21, 'Y'),
(456, 357, 'JHARSUGUDA', 21, 'Y'),
(457, 358, 'KALAHANDI', 21, 'Y'),
(458, 359, 'KANDHAMAL', 21, 'Y'),
(459, 360, 'KENDRAPARA', 21, 'Y'),
(460, 361, 'KENDUJHAR', 21, 'Y'),
(461, 362, 'KHORDHA', 21, 'Y'),
(462, 363, 'KORAPUT', 21, 'Y'),
(463, 364, 'MALKANGIRI', 21, 'Y'),
(464, 365, 'MAYURBHANJ', 21, 'Y'),
(465, 366, 'NABARANGPUR', 21, 'Y'),
(466, 367, 'NAYAGARH', 21, 'Y'),
(467, 368, 'NUAPADA', 21, 'Y'),
(468, 369, 'PURI', 21, 'Y'),
(469, 370, 'RAYAGADA', 21, 'Y'),
(470, 371, 'SAMBALPUR', 21, 'Y'),
(471, 372, 'SONEPUR', 21, 'Y'),
(472, 373, 'SUNDARGARH', 21, 'Y'),
(473, 598, 'KARAIKAL', 34, 'Y'),
(474, 599, 'MAHE', 34, 'Y'),
(475, 600, 'PONDICHERRY', 34, 'Y'),
(476, 601, 'YANAM', 34, 'Y'),
(477, 27, 'AMRITSAR', 3, 'Y'),
(478, 605, 'BARNALA', 3, 'Y'),
(479, 28, 'BATHINDA', 3, 'Y'),
(480, 29, 'FARIDKOT', 3, 'Y'),
(481, 30, 'FATEHGARH SAHIB', 3, 'Y'),
(482, 651, 'FAZILKA', 3, 'Y'),
(483, 31, 'FIROZEPUR', 3, 'Y'),
(484, 32, 'GURDASPUR', 3, 'Y'),
(485, 33, 'HOSHIARPUR', 3, 'Y'),
(486, 34, 'JALANDHAR', 3, 'Y'),
(487, 35, 'KAPURTHALA', 3, 'Y'),
(488, 36, 'LUDHIANA', 3, 'Y'),
(489, 37, 'MANSA', 3, 'Y'),
(490, 38, 'MOGA', 3, 'Y'),
(491, 662, 'PATHANKOT', 3, 'Y'),
(492, 41, 'PATIALA', 3, 'Y'),
(493, 42, 'RUPNAGAR', 3, 'Y'),
(494, 43, 'SANGRUR', 3, 'Y'),
(495, 608, 'S.A.S Nagar', 3, 'Y'),
(496, 40, 'Shahid Bhagat Singh Nagar', 3, 'Y'),
(497, 39, 'SRI MUKTSAR SAHIB', 3, 'Y'),
(498, 609, 'Tarn Taran', 3, 'Y'),
(499, 86, 'AJMER', 8, 'Y'),
(500, 87, 'ALWAR', 8, 'Y'),
(501, 88, 'BANSWARA', 8, 'Y'),
(502, 89, 'BARAN', 8, 'Y'),
(503, 90, 'BARMER', 8, 'Y'),
(504, 91, 'BHARATPUR', 8, 'Y'),
(505, 92, 'BHILWARA', 8, 'Y'),
(506, 93, 'BIKANER', 8, 'Y'),
(507, 94, 'BUNDI', 8, 'Y'),
(508, 95, 'CHITTORGARH', 8, 'Y'),
(509, 96, 'CHURU', 8, 'Y'),
(510, 97, 'DAUSA', 8, 'Y'),
(511, 98, 'DHOLPUR', 8, 'Y'),
(512, 99, 'DUNGARPUR', 8, 'Y'),
(513, 100, 'GANGANAGAR', 8, 'Y'),
(514, 101, 'HANUMANGARH', 8, 'Y'),
(515, 102, 'JAIPUR', 8, 'Y'),
(516, 103, 'JAISALMER', 8, 'Y'),
(517, 104, 'JALORE', 8, 'Y'),
(518, 105, 'JHALAWAR', 8, 'Y'),
(519, 106, 'JHUNJHUNU', 8, 'Y'),
(520, 107, 'JODHPUR', 8, 'Y'),
(521, 108, 'KARAULI', 8, 'Y'),
(522, 109, 'KOTA', 8, 'Y'),
(523, 110, 'NAGAUR', 8, 'Y'),
(524, 111, 'PALI', 8, 'Y'),
(525, 629, 'PRATAPGARH', 8, 'Y'),
(526, 112, 'RAJSAMAND', 8, 'Y'),
(527, 113, 'SAWAI MADHOPUR', 8, 'Y'),
(528, 114, 'SIKAR', 8, 'Y'),
(529, 115, 'SIROHI', 8, 'Y'),
(530, 116, 'TONK', 8, 'Y'),
(531, 117, 'UDAIPUR', 8, 'Y'),
(532, 225, 'EAST DISTRICT', 11, 'Y'),
(533, 226, 'NORTH DISTRICT', 11, 'Y'),
(534, 227, 'SOUTH DISTRICT', 11, 'Y'),
(535, 228, 'WEST DISTRICT', 11, 'Y'),
(536, 610, 'Ariyalur', 33, 'Y'),
(537, 568, 'CHENNAI', 33, 'Y'),
(538, 569, 'COIMBATORE', 33, 'Y'),
(539, 570, 'CUDDALORE', 33, 'Y'),
(540, 571, 'DHARMAPURI', 33, 'Y'),
(541, 572, 'DINDIGUL', 33, 'Y'),
(542, 573, 'ERODE', 33, 'Y'),
(543, 574, 'KANCHIPURAM', 33, 'Y'),
(544, 575, 'KANNIYAKUMARI', 33, 'Y'),
(545, 576, 'KARUR', 33, 'Y'),
(546, 577, 'KRISHNAGIRI', 33, 'Y'),
(547, 578, 'MADURAI', 33, 'Y'),
(548, 579, 'NAGAPATTINAM', 33, 'Y'),
(549, 580, 'NAMAKKAL', 33, 'Y'),
(550, 581, 'PERAMBALUR', 33, 'Y'),
(551, 582, 'PUDUKKOTTAI', 33, 'Y'),
(552, 583, 'RAMANATHAPURAM', 33, 'Y'),
(553, 584, 'SALEM', 33, 'Y'),
(554, 585, 'SIVAGANGA', 33, 'Y'),
(555, 586, 'THANJAVUR', 33, 'Y'),
(556, 588, 'THENI', 33, 'Y'),
(557, 587, 'THE NILGIRIS', 33, 'Y'),
(558, 589, 'THIRUVALLUR', 33, 'Y'),
(559, 590, 'THIRUVARUR', 33, 'Y'),
(560, 591, 'TIRUCHIRAPPALLI', 33, 'Y'),
(561, 592, 'TIRUNELVELI', 33, 'Y'),
(562, 634, 'TIRUPPUR', 33, 'Y'),
(563, 593, 'TIRUVANNAMALAI', 33, 'Y'),
(564, 594, 'TUTICORIN', 33, 'Y'),
(565, 595, 'VELLORE', 33, 'Y'),
(566, 596, 'VILLUPURAM', 33, 'Y'),
(567, 597, 'VIRUDHUNAGAR', 33, 'Y'),
(568, 501, 'ADILABAD', 36, 'Y'),
(569, 690, 'BHADRADRI KOTHAGUDEM', 36, 'Y'),
(570, 507, 'HYDERABAD', 36, 'Y'),
(571, 681, 'Jagitial', 36, 'Y'),
(572, 689, 'JANGOAN', 36, 'Y'),
(573, 687, 'JAYASHANKAR BHUPALAPALLY', 36, 'Y'),
(574, 695, 'JOGULAMBA GADWAL', 36, 'Y'),
(575, 685, 'KAMAREDDY', 36, 'Y'),
(576, 508, 'KARIMNAGAR', 36, 'Y'),
(577, 509, 'KHAMMAM', 36, 'Y'),
(578, 699, 'KUMURAM BHEEM ASIFABAD', 36, 'Y'),
(579, 688, 'MAHABUBABAD', 36, 'Y'),
(580, 512, 'MAHABUBNAGAR', 36, 'Y'),
(581, 684, 'MANCHERIAL', 36, 'Y'),
(582, 513, 'MEDAK', 36, 'Y'),
(583, 700, 'MEDCHAL MALKAJGIRI', 36, 'Y'),
(584, 694, 'NAGARKURNOOL', 36, 'Y'),
(585, 514, 'NALGONDA', 36, 'Y'),
(586, 680, 'Nirmal', 36, 'Y'),
(587, 516, 'NIZAMABAD', 36, 'Y'),
(588, 682, 'PEDDAPALLI', 36, 'Y'),
(589, 683, 'RAJANNA SIRCILLA', 36, 'Y'),
(590, 518, 'RANGA REDDY', 36, 'Y'),
(591, 691, 'SANGAREDDY', 36, 'Y'),
(592, 692, 'SIDDIPET', 36, 'Y'),
(593, 696, 'SURYAPET', 36, 'Y'),
(594, 698, 'VIKARABAD', 36, 'Y'),
(595, 693, 'WANAPARTHY', 36, 'Y'),
(596, 522, 'WARANGAL RURAL', 36, 'Y'),
(597, 686, 'WARANGAL URBAN', 36, 'Y'),
(598, 697, 'YADADRI BHUVANAGIRI', 36, 'Y'),
(599, 269, 'Dhalai', 16, 'Y'),
(600, 654, 'Gomati', 16, 'Y'),
(601, 652, 'Khowai', 16, 'Y'),
(602, 270, 'North Tripura', 16, 'Y'),
(603, 653, 'Sepahijala', 16, 'Y'),
(604, 271, 'South Tripura', 16, 'Y'),
(605, 655, 'Unakoti', 16, 'Y'),
(606, 272, 'West Tripura', 16, 'Y'),
(607, 45, 'ALMORA', 5, 'Y'),
(608, 46, 'BAGESHWAR', 5, 'Y'),
(609, 47, 'CHAMOLI', 5, 'Y'),
(610, 48, 'CHAMPAWAT', 5, 'Y'),
(611, 49, 'DEHRADUN', 5, 'Y'),
(612, 50, 'HARIDWAR', 5, 'Y'),
(613, 51, 'NAINITAL', 5, 'Y'),
(614, 52, 'PAURI GARHWAL', 5, 'Y'),
(615, 53, 'PITHORAGARH', 5, 'Y'),
(616, 54, 'RUDRA PRAYAG', 5, 'Y'),
(617, 55, 'TEHRI GARHWAL', 5, 'Y'),
(618, 56, 'UDAM SINGH NAGAR', 5, 'Y'),
(619, 57, 'UTTAR KASHI', 5, 'Y'),
(620, 118, 'AGRA', 9, 'Y'),
(621, 119, 'ALIGARH', 9, 'Y'),
(622, 120, 'ALLAHABAD', 9, 'Y'),
(623, 121, 'AMBEDKAR NAGAR', 9, 'Y'),
(624, 640, 'Amethi', 9, 'Y'),
(625, 154, 'AMROHA', 9, 'Y'),
(626, 122, 'AURAIYA', 9, 'Y'),
(627, 123, 'AZAMGARH', 9, 'Y'),
(628, 124, 'BAGHPAT', 9, 'Y'),
(629, 125, 'BAHRAICH', 9, 'Y'),
(630, 126, 'BALLIA', 9, 'Y'),
(631, 127, 'BALRAMPUR', 9, 'Y'),
(632, 128, 'BANDA', 9, 'Y'),
(633, 129, 'BARABANKI', 9, 'Y'),
(634, 130, 'BAREILLY', 9, 'Y'),
(635, 131, 'BASTI', 9, 'Y'),
(636, 179, 'BHADOHI', 9, 'Y'),
(637, 132, 'BIJNOR', 9, 'Y'),
(638, 133, 'BUDAUN', 9, 'Y'),
(639, 134, 'BULANDSHAHR', 9, 'Y'),
(640, 135, 'CHANDAULI', 9, 'Y'),
(641, 136, 'CHITRAKOOT', 9, 'Y'),
(642, 137, 'DEORIA', 9, 'Y'),
(643, 138, 'ETAH', 9, 'Y'),
(644, 139, 'ETAWAH', 9, 'Y'),
(645, 140, 'FAIZABAD', 9, 'Y'),
(646, 141, 'FARRUKHABAD', 9, 'Y'),
(647, 142, 'FATEHPUR', 9, 'Y'),
(648, 143, 'FIROZABAD', 9, 'Y'),
(649, 144, 'GAUTAM BUDDHA NAGAR', 9, 'Y'),
(650, 145, 'GHAZIABAD', 9, 'Y'),
(651, 146, 'GHAZIPUR', 9, 'Y'),
(652, 147, 'GONDA', 9, 'Y'),
(653, 148, 'GORAKHPUR', 9, 'Y'),
(654, 149, 'HAMIRPUR', 9, 'Y'),
(655, 661, 'HAPUR', 9, 'Y'),
(656, 150, 'HARDOI', 9, 'Y'),
(657, 163, 'HATHRAS', 9, 'Y'),
(658, 151, 'JALAUN', 9, 'Y'),
(659, 152, 'JAUNPUR', 9, 'Y'),
(660, 153, 'JHANSI', 9, 'Y'),
(661, 155, 'KANNAUJ', 9, 'Y'),
(662, 156, 'KANPUR DEHAT', 9, 'Y'),
(663, 157, 'KANPUR NAGAR', 9, 'Y'),
(664, 633, 'Kasganj', 9, 'Y'),
(665, 158, 'KAUSHAMBI', 9, 'Y'),
(666, 159, 'KHERI', 9, 'Y'),
(667, 160, 'KUSHI NAGAR', 9, 'Y'),
(668, 161, 'LALITPUR', 9, 'Y'),
(669, 162, 'LUCKNOW', 9, 'Y'),
(670, 164, 'MAHARAJGANJ', 9, 'Y'),
(671, 165, 'MAHOBA', 9, 'Y'),
(672, 166, 'MAINPURI', 9, 'Y'),
(673, 167, 'MATHURA', 9, 'Y'),
(674, 168, 'MAU', 9, 'Y'),
(675, 169, 'MEERUT', 9, 'Y'),
(676, 170, 'MIRZAPUR', 9, 'Y'),
(677, 171, 'MORADABAD', 9, 'Y'),
(678, 172, 'MUZAFFARNAGAR', 9, 'Y'),
(679, 173, 'PILIBHIT', 9, 'Y'),
(680, 174, 'PRATAPGARH', 9, 'Y'),
(681, 175, 'RAE BARELI', 9, 'Y'),
(682, 176, 'RAMPUR', 9, 'Y'),
(683, 177, 'SAHARANPUR', 9, 'Y'),
(684, 659, 'SAMBHAL', 9, 'Y'),
(685, 178, 'SANT KABEER NAGAR', 9, 'Y'),
(686, 180, 'SHAHJAHANPUR', 9, 'Y'),
(687, 660, 'SHAMLI', 9, 'Y'),
(688, 181, 'SHRAVASTI', 9, 'Y'),
(689, 182, 'SIDDHARTH NAGAR', 9, 'Y'),
(690, 183, 'SITAPUR', 9, 'Y'),
(691, 184, 'SONBHADRA', 9, 'Y'),
(692, 185, 'SULTANPUR', 9, 'Y'),
(693, 186, 'UNNAO', 9, 'Y'),
(694, 187, 'VARANASI', 9, 'Y'),
(695, 303, '24 PARAGANAS NORTH', 19, 'Y'),
(696, 304, '24 PARAGANAS SOUTH', 19, 'Y'),
(697, 664, 'Alipurduar', 19, 'Y'),
(698, 305, 'BANKURA', 19, 'Y'),
(699, 307, 'BIRBHUM', 19, 'Y'),
(700, 308, 'COOCHBEHAR', 19, 'Y'),
(701, 309, 'DARJEELING', 19, 'Y'),
(702, 310, 'DINAJPUR DAKSHIN', 19, 'Y'),
(703, 311, 'DINAJPUR UTTAR', 19, 'Y'),
(704, 312, 'HOOGHLY', 19, 'Y'),
(705, 313, 'HOWRAH', 19, 'Y'),
(706, 314, 'JALPAIGURI', 19, 'Y'),
(707, 703, 'Jhargram', 19, 'Y'),
(708, 702, 'KALIMPONG', 19, 'Y'),
(709, 315, 'KOLKATA', 19, 'Y'),
(710, 316, 'MALDAH', 19, 'Y'),
(711, 317, 'MEDINIPUR EAST', 19, 'Y'),
(712, 318, 'MEDINIPUR WEST', 19, 'Y'),
(713, 319, 'MURSHIDABAD', 19, 'Y'),
(714, 320, 'NADIA', 19, 'Y'),
(715, 704, 'PASCHIM BARDHAMAN', 19, 'Y'),
(716, 306, 'PURBA BARDHAMAN', 19, 'Y'),
(717, 321, 'PURULIA', 19, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_branch_office_state`
--

CREATE TABLE `vendor_branch_office_state` (
  `id` int(11) NOT NULL,
  `state_code` int(11) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_branch_office_state`
--

INSERT INTO `vendor_branch_office_state` (`id`, `state_code`, `state_name`, `is_active`) VALUES
(1, 35, 'Andaman And Nicobar Islands', 'Y'),
(2, 28, 'Andhra Pradesh', 'Y'),
(3, 12, 'Arunachal Pradesh', 'Y'),
(4, 18, 'Assam', 'Y'),
(5, 10, 'Bihar', 'Y'),
(6, 4, 'Chandigarh', 'Y'),
(7, 22, 'Chhattisgarh', 'Y'),
(8, 26, 'Dadra And Nagar Haveli', 'Y'),
(9, 25, 'Daman And Diu', 'Y'),
(10, 7, 'Delhi', 'Y'),
(11, 30, 'Goa', 'Y'),
(12, 24, 'Gujarat', 'Y'),
(13, 6, 'Haryana', 'Y'),
(14, 2, 'Himachal Pradesh', 'Y'),
(15, 1, 'Jammu And Kashmir', 'Y'),
(16, 20, 'Jharkhand', 'Y'),
(17, 29, 'Karnataka', 'Y'),
(18, 32, 'Kerala', 'Y'),
(19, 31, 'Lakshadweep', 'Y'),
(20, 23, 'Madhya Pradesh', 'Y'),
(21, 27, 'Maharashtra', 'Y'),
(22, 14, 'Manipur', 'Y'),
(23, 17, 'Meghalaya', 'Y'),
(24, 15, 'Mizoram', 'Y'),
(25, 13, 'Nagaland', 'Y'),
(26, 21, 'Odisha', 'Y'),
(27, 34, 'Puducherry', 'Y'),
(28, 3, 'Punjab', 'Y'),
(29, 8, 'Rajasthan', 'Y'),
(30, 11, 'Sikkim', 'Y'),
(31, 33, 'Tamil Nadu', 'Y'),
(32, 36, 'Telangana', 'Y'),
(33, 16, 'Tripura', 'Y'),
(34, 5, 'Uttarakhand', 'Y'),
(35, 9, 'Uttar Pradesh', 'Y'),
(36, 19, 'West Bengal', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_head_office_country`
--

CREATE TABLE `vendor_head_office_country` (
  `id` int(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `is_active` enum('N','Y') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_head_office_country`
--

INSERT INTO `vendor_head_office_country` (`id`, `country_name`, `is_active`) VALUES
(1, 'Afghanistan', 'Y'),
(2, 'Albania', 'Y'),
(3, 'Algeria', 'Y'),
(4, 'American Samoa', 'Y'),
(5, 'Angola', 'Y'),
(6, 'Anguilla', 'Y'),
(7, 'Antartica', 'Y'),
(8, 'Antigua and Barbuda', 'Y'),
(9, 'Argentina', 'Y'),
(10, 'Armenia', 'Y'),
(11, 'Aruba', 'Y'),
(12, 'Ashmore and Cartier Island', 'Y'),
(13, 'Australia', 'Y'),
(14, 'Austria', 'Y'),
(15, 'Azerbaijan', 'Y'),
(16, 'Bahamas', 'Y'),
(17, 'Bahrain', 'Y'),
(18, 'Bangladesh', 'Y'),
(19, 'Barbados', 'Y'),
(20, 'Belarus', 'Y'),
(21, 'Belgium', 'Y'),
(22, 'Belize', 'Y'),
(23, 'Benin', 'Y'),
(24, 'Bermuda', 'Y'),
(25, 'Burundi', 'Y'),
(26, 'Cambodia', 'Y'),
(27, 'Cameroon', 'Y'),
(28, 'Canada', 'Y'),
(29, 'Cape Verde', 'Y'),
(30, 'Cayman Islands', 'Y'),
(31, 'Central African Republic', 'Y'),
(32, 'Chad', 'Y'),
(33, 'Chile', 'Y'),
(34, 'China', 'Y'),
(35, 'Christmas Island', 'Y'),
(36, 'Clipperton Island', 'Y'),
(37, 'Cocos (Keeling) Islands', 'Y'),
(38, 'Colombia', 'Y'),
(39, 'Comoros', 'Y'),
(40, 'Congo, Democratic Republic of the', 'Y'),
(41, 'Congo, Republic of the', 'Y'),
(42, 'Cook Islands', 'Y'),
(43, 'Costa Rica', 'Y'),
(44, 'Cote d\'Ivoire', 'Y'),
(45, 'Croatia', 'Y'),
(46, 'Cuba', 'Y'),
(47, 'Cyprus', 'Y'),
(48, 'Czeck Republic', 'Y'),
(49, 'Denmark', 'Y'),
(50, 'Djibouti', 'Y'),
(51, 'Djibouti', 'Y'),
(52, 'Dominica', 'Y'),
(53, 'Dominican Republic', 'Y'),
(54, 'Ecuador', 'Y'),
(55, 'Egypt', 'Y'),
(56, 'El Salvador', 'Y'),
(57, 'Equatorial Guinea', 'Y'),
(58, 'Eritrea', 'Y'),
(59, 'Estonia', 'Y'),
(60, 'Ethiopia', 'Y'),
(61, 'Europa Island', 'Y'),
(62, 'Falkland Islands (Islas Malvinas)', 'Y'),
(63, 'Faroe Islands', 'Y'),
(64, 'Fiji', 'Y'),
(65, 'Finland', 'Y'),
(66, 'France', 'Y'),
(67, 'French Guiana', 'Y'),
(68, 'French Polynesia', 'Y'),
(69, 'French Southern and Antarctic Lands', 'Y'),
(70, 'Gabon', 'Y'),
(71, 'Gambia, The', 'Y'),
(72, 'Gaza Strip', 'Y'),
(73, 'Georgia', 'Y'),
(82, 'Germany', 'Y'),
(83, 'Ghana', 'Y'),
(84, 'Gibraltar', 'Y'),
(85, 'Glorioso Islands', 'Y'),
(86, 'Greece', 'Y'),
(87, 'Greenland', 'Y'),
(88, 'Grenada', 'Y'),
(89, 'Guadeloupe', 'Y'),
(90, 'Guam', 'Y'),
(91, 'Guatemala', 'Y'),
(92, 'Guernsey', 'Y'),
(93, 'Guinea', 'Y'),
(94, 'Guinea-Bissau', 'Y'),
(95, 'Guyana', 'Y'),
(96, 'Haiti', 'Y'),
(97, 'Heard Island and McDonald Islands', 'Y'),
(98, 'Holy See (Vatican City)', 'Y'),
(99, 'Honduras', 'Y'),
(100, 'Hong Kong', 'Y'),
(101, 'Howland Island', 'Y'),
(102, 'Hungary', 'Y'),
(103, 'Iceland', 'Y'),
(104, 'India', 'Y'),
(105, 'Indonesia', 'Y'),
(106, 'Iran', 'Y'),
(107, 'Iraq', 'Y'),
(108, 'Ireland', 'Y'),
(109, 'Ireland, Northern', 'Y'),
(110, 'Israel', 'Y'),
(111, 'Italy', 'Y'),
(112, 'Jamaica', 'Y'),
(113, 'Jan Mayen', 'Y'),
(114, 'Japan', 'Y'),
(115, 'Jarvis Island', 'Y'),
(116, 'Jersey', 'Y'),
(117, 'Johnston Atoll', 'Y'),
(118, 'Jordan', 'Y'),
(119, 'Juan de Nova Island', 'Y'),
(120, 'Kazakhstan', 'Y'),
(121, 'Kenya', 'Y'),
(122, 'Kiribati', 'Y'),
(123, 'Korea, North', 'Y'),
(124, 'Korea, South', 'Y'),
(125, 'Kuwait', 'Y'),
(126, 'Kyrgyzstan', 'Y'),
(127, 'Laos', 'Y'),
(128, 'Latvia', 'Y'),
(129, 'Lebanon', 'Y'),
(130, 'Lesotho', 'Y'),
(131, 'Liberia', 'Y'),
(132, 'Libya', 'Y'),
(133, 'Liechtenstein', 'Y'),
(134, 'Lithuania', 'Y'),
(135, 'Luxembourg', 'Y'),
(136, 'Macau', 'Y'),
(137, 'Macedonia, Former Yugoslav Republic of', 'Y'),
(138, 'Madagascar', 'Y'),
(139, 'Malawi', 'Y'),
(140, 'Malaysia', 'Y'),
(141, 'Maldives', 'Y'),
(142, 'Mali', 'Y'),
(143, 'Malta', 'Y'),
(144, 'Man, Isle of', 'Y'),
(145, 'Marshall Islands', 'Y'),
(146, 'Martinique', 'Y'),
(147, 'Mauritania', 'Y'),
(148, 'Mauritius', 'Y'),
(149, 'Mayotte', 'Y'),
(150, 'Mexico', 'Y'),
(151, 'Micronesia, Federated States of', 'Y'),
(152, 'Midway Islands', 'Y'),
(153, 'Moldova', 'Y'),
(154, 'Monaco', 'Y'),
(155, 'Mongolia', 'Y'),
(156, 'Montserrat', 'Y'),
(157, 'Morocco', 'Y'),
(158, 'Mozambique', 'Y'),
(159, 'Namibia', 'Y'),
(160, 'Nauru', 'Y'),
(161, 'Nepal', 'Y'),
(162, 'Netherlands', 'Y'),
(163, 'Netherlands Antilles', 'Y'),
(164, 'New Caledonia', 'Y'),
(165, 'New Zealand', 'Y'),
(166, 'Nicaragua', 'Y'),
(167, 'Niger', 'Y'),
(168, 'Nigeria', 'Y'),
(169, 'Niue', 'Y'),
(170, 'Norfolk Island', 'Y'),
(171, 'Northern Mariana Islands', 'Y'),
(172, 'Norway', 'Y'),
(173, 'Oman', 'Y'),
(174, 'Pakistan', 'Y'),
(175, 'Palau', 'Y'),
(176, 'Panama', 'Y'),
(177, 'Papua New Guinea', 'Y'),
(178, 'Paraguay', 'Y'),
(179, 'Peru', 'Y'),
(180, 'Philippines', 'Y'),
(181, 'Pitcaim Islands', 'Y'),
(182, 'Poland', 'Y'),
(183, 'Portugal', 'Y'),
(184, 'Puerto Rico', 'Y'),
(185, 'Qatar', 'Y'),
(186, 'Reunion', 'Y'),
(187, 'Romainia', 'Y'),
(188, 'Russia', 'Y'),
(189, 'Rwanda', 'Y'),
(190, 'Saint Helena', 'Y'),
(191, 'Saint Kitts and Nevis', 'Y'),
(192, 'Saint Lucia', 'Y'),
(193, 'Saint Pierre and Miquelon', 'Y'),
(194, 'Saint Vincent and the Grenadines', 'Y'),
(195, 'Samoa', 'Y'),
(196, 'San Marino', 'Y'),
(197, 'Sao Tome and Principe', 'Y'),
(198, 'Saudi Arabia', 'Y'),
(199, 'Scotland', 'Y'),
(200, 'Senegal', 'Y'),
(201, 'Seychelles', 'Y'),
(202, 'Sierra Leone', 'Y'),
(203, 'Sierra Leone', 'Y'),
(204, 'Singapore', 'Y'),
(205, 'Slovakia', 'Y'),
(206, 'Slovenia', 'Y'),
(207, 'Solomon Islands', 'Y'),
(208, 'Somalia', 'Y'),
(209, 'South Africa', 'Y'),
(210, 'South Georgia and South Sandwich Islands', 'Y'),
(211, 'Spain', 'Y'),
(212, 'Spratly Islands', 'Y'),
(213, 'Sri Lanka', 'Y'),
(214, 'Sudan', 'Y'),
(215, 'Suriname', 'Y'),
(216, 'Svalbard', 'Y'),
(217, 'Swaziland', 'Y'),
(218, 'Sweden', 'Y'),
(219, 'Switzerland', 'Y'),
(220, 'Syria', 'Y'),
(221, 'Taiwan', 'Y'),
(222, 'Tajikistan', 'Y'),
(223, 'Tanzania', 'Y'),
(224, 'Thailand', 'Y'),
(225, 'Tobago', 'Y'),
(226, 'Toga', 'Y'),
(227, 'Tokelau', 'Y'),
(228, 'Tonga', 'Y'),
(229, 'Trinidad', 'Y'),
(230, 'Tunisia', 'Y'),
(231, 'Turkey', 'Y'),
(232, 'Turkmenistan', 'Y'),
(233, 'Tuvalu', 'Y'),
(234, 'Uganda', 'Y'),
(235, 'Ukraine', 'Y'),
(236, 'United Arab Emirates', 'Y'),
(237, 'United Kingdom', 'Y'),
(238, 'Uruguay', 'Y'),
(239, 'USA', 'Y'),
(240, 'Uzbekistan', 'Y'),
(241, 'Vanuatu', 'Y'),
(242, 'Venezuela', 'Y'),
(243, 'Vietnam', 'Y'),
(244, 'Virgin Islands', 'Y'),
(245, 'Wales', 'Y'),
(246, 'Wallis and Futuna', 'Y'),
(247, 'West Bank', 'Y'),
(248, 'Western Sahara', 'Y'),
(249, 'Yemen', 'Y'),
(250, 'Yugoslavia', 'Y'),
(251, 'Zambia', 'Y'),
(252, 'Zimbabwe', 'Y'),
(253, 'Afghanistan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_head_office_district`
--

CREATE TABLE `vendor_head_office_district` (
  `id` int(11) NOT NULL,
  `district_code` int(11) DEFAULT NULL,
  `district_name` varchar(255) DEFAULT NULL,
  `state_code` int(11) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vendor_head_office_district`
--

INSERT INTO `vendor_head_office_district` (`id`, `district_code`, `district_name`, `state_code`, `is_active`) VALUES
(1, 603, 'NICOBARS', 35, 'Y'),
(2, 632, 'NORTH AND MIDDLE ANDAMAN', 35, 'Y'),
(3, 602, 'SOUTH ANDAMANS', 35, 'Y'),
(4, 502, 'ANANTAPUR', 28, 'Y'),
(5, 503, 'CHITTOOR', 28, 'Y'),
(6, 505, 'EAST GODAVARI', 28, 'Y'),
(7, 506, 'GUNTUR', 28, 'Y'),
(8, 510, 'KRISHNA', 28, 'Y'),
(9, 511, 'KURNOOL', 28, 'Y'),
(10, 517, 'PRAKASAM', 28, 'Y'),
(11, 515, 'SPSR NELLORE', 28, 'Y'),
(12, 519, 'SRIKAKULAM', 28, 'Y'),
(13, 520, 'VISAKHAPATANAM', 28, 'Y'),
(14, 521, 'VIZIANAGARAM', 28, 'Y'),
(15, 523, 'WEST GODAVARI', 28, 'Y'),
(16, 504, 'Y.S.R.', 28, 'Y'),
(17, 628, 'ANJAW', 12, 'Y'),
(18, 229, 'CHANGLANG', 12, 'Y'),
(19, 230, 'DIBANG VALLEY', 12, 'Y'),
(20, 231, 'EAST KAMENG', 12, 'Y'),
(21, 232, 'EAST SIANG', 12, 'Y'),
(22, 677, 'Kra Daadi', 12, 'Y'),
(23, 233, 'KURUNG KUMEY', 12, 'Y'),
(24, 234, 'LOHIT', 12, 'Y'),
(25, 666, 'LONGDING', 12, 'Y'),
(26, 235, 'LOWER DIBANG VALLEY', 12, 'Y'),
(27, 236, 'LOWER SUBANSIRI', 12, 'Y'),
(28, 678, 'NAMSAI', 12, 'Y'),
(29, 237, 'PAPUM PARE', 12, 'Y'),
(30, 679, 'SIANG', 12, 'Y'),
(31, 238, 'TAWANG', 12, 'Y'),
(32, 239, 'TIRAP', 12, 'Y'),
(33, 240, 'UPPER SIANG', 12, 'Y'),
(34, 241, 'UPPER SUBANSIRI', 12, 'Y'),
(35, 242, 'WEST KAMENG', 12, 'Y'),
(36, 243, 'WEST SIANG', 12, 'Y'),
(37, 616, 'BAKSA', 18, 'Y'),
(38, 280, 'BARPETA', 18, 'Y'),
(39, 705, 'Biswanath', 18, 'Y'),
(40, 281, 'BONGAIGAON', 18, 'Y'),
(41, 282, 'CACHAR', 18, 'Y'),
(42, 708, 'CHARAIDEO', 18, 'Y'),
(43, 612, 'CHIRANG', 18, 'Y'),
(44, 283, 'DARRANG', 18, 'Y'),
(45, 284, 'DHEMAJI', 18, 'Y'),
(46, 285, 'DHUBRI', 18, 'Y'),
(47, 286, 'DIBRUGARH', 18, 'Y'),
(48, 299, 'DIMA HASAO', 18, 'Y'),
(49, 287, 'GOALPARA', 18, 'Y'),
(50, 288, 'GOLAGHAT', 18, 'Y'),
(51, 289, 'HAILAKANDI', 18, 'Y'),
(52, 709, 'HOJAI', 18, 'Y'),
(53, 290, 'JORHAT', 18, 'Y'),
(54, 291, 'KAMRUP', 18, 'Y'),
(55, 618, 'KAMRUP METRO', 18, 'Y'),
(56, 292, 'KARBI ANGLONG', 18, 'Y'),
(57, 293, 'KARIMGANJ', 18, 'Y'),
(58, 294, 'KOKRAJHAR', 18, 'Y'),
(59, 295, 'LAKHIMPUR', 18, 'Y'),
(60, 706, 'MAJULI', 18, 'Y'),
(61, 296, 'MARIGAON', 18, 'Y'),
(62, 297, 'NAGAON', 18, 'Y'),
(63, 298, 'NALBARI', 18, 'Y'),
(64, 300, 'SIVASAGAR', 18, 'Y'),
(65, 301, 'SONITPUR', 18, 'Y'),
(66, 707, 'SOUTH SALMARA MANCACHAR', 18, 'Y'),
(67, 302, 'TINSUKIA', 18, 'Y'),
(68, 617, 'UDALGURI', 18, 'Y'),
(69, 710, 'WEST KARBI ANGLONG', 18, 'Y'),
(70, 188, 'ARARIA', 10, 'Y'),
(71, 611, 'ARWAL', 10, 'Y'),
(72, 189, 'AURANGABAD', 10, 'Y'),
(73, 190, 'BANKA', 10, 'Y'),
(74, 191, 'BEGUSARAI', 10, 'Y'),
(75, 192, 'BHAGALPUR', 10, 'Y'),
(76, 193, 'BHOJPUR', 10, 'Y'),
(77, 194, 'BUXAR', 10, 'Y'),
(78, 195, 'DARBHANGA', 10, 'Y'),
(79, 196, 'GAYA', 10, 'Y'),
(80, 197, 'GOPALGANJ', 10, 'Y'),
(81, 198, 'JAMUI', 10, 'Y'),
(82, 199, 'JEHANABAD', 10, 'Y'),
(83, 200, 'KAIMUR (BHABUA)', 10, 'Y'),
(84, 201, 'KATIHAR', 10, 'Y'),
(85, 202, 'KHAGARIA', 10, 'Y'),
(86, 203, 'KISHANGANJ', 10, 'Y'),
(87, 204, 'LAKHISARAI', 10, 'Y'),
(88, 205, 'MADHEPURA', 10, 'Y'),
(89, 206, 'MADHUBANI', 10, 'Y'),
(90, 207, 'MUNGER', 10, 'Y'),
(91, 208, 'MUZAFFARPUR', 10, 'Y'),
(92, 209, 'NALANDA', 10, 'Y'),
(93, 210, 'NAWADA', 10, 'Y'),
(94, 211, 'PASHCHIM CHAMPARAN', 10, 'Y'),
(95, 212, 'PATNA', 10, 'Y'),
(96, 213, 'PURBI CHAMPARAN', 10, 'Y'),
(97, 214, 'PURNIA', 10, 'Y'),
(98, 215, 'ROHTAS', 10, 'Y'),
(99, 216, 'SAHARSA', 10, 'Y'),
(100, 217, 'SAMASTIPUR', 10, 'Y'),
(101, 218, 'SARAN', 10, 'Y'),
(102, 219, 'SHEIKHPURA', 10, 'Y'),
(103, 220, 'SHEOHAR', 10, 'Y'),
(104, 221, 'SITAMARHI', 10, 'Y'),
(105, 222, 'SIWAN', 10, 'Y'),
(106, 223, 'SUPAUL', 10, 'Y'),
(107, 224, 'VAISHALI', 10, 'Y'),
(108, 44, 'CHANDIGARH', 4, 'Y'),
(109, 646, 'BALOD', 22, 'Y'),
(110, 644, 'BALODA BAZAR', 22, 'Y'),
(111, 649, 'BALRAMPUR', 22, 'Y'),
(112, 374, 'BASTAR', 22, 'Y'),
(113, 650, 'BEMETARA', 22, 'Y'),
(114, 636, 'BIJAPUR', 22, 'Y'),
(115, 375, 'BILASPUR', 22, 'Y'),
(116, 376, 'DANTEWADA', 22, 'Y'),
(117, 377, 'DHAMTARI', 22, 'Y'),
(118, 378, 'DURG', 22, 'Y'),
(119, 645, 'GARIYABAND', 22, 'Y'),
(120, 379, 'JANJGIR-CHAMPA', 22, 'Y'),
(121, 380, 'JASHPUR', 22, 'Y'),
(122, 382, 'KABIRDHAM', 22, 'Y'),
(123, 381, 'KANKER', 22, 'Y'),
(124, 643, 'KONDAGAON', 22, 'Y'),
(125, 383, 'KORBA', 22, 'Y'),
(126, 384, 'KOREA', 22, 'Y'),
(127, 385, 'MAHASAMUND', 22, 'Y'),
(128, 647, 'MUNGELI', 22, 'Y'),
(129, 637, 'NARAYANPUR', 22, 'Y'),
(130, 386, 'RAIGARH', 22, 'Y'),
(131, 387, 'RAIPUR', 22, 'Y'),
(132, 388, 'RAJNANDGAON', 22, 'Y'),
(133, 642, 'SUKMA', 22, 'Y'),
(134, 648, 'SURAJPUR', 22, 'Y'),
(135, 389, 'SURGUJA', 22, 'Y'),
(136, 465, 'DADRA AND NAGAR HAVELI', 26, 'Y'),
(137, 463, 'DAMAN', 25, 'Y'),
(138, 464, 'DIU', 25, 'Y'),
(139, 77, 'CENTRAL', 7, 'Y'),
(140, 78, 'EAST', 7, 'Y'),
(141, 79, 'NEW DELHI', 7, 'Y'),
(142, 80, 'NORTH', 7, 'Y'),
(143, 81, 'NORTH EAST', 7, 'Y'),
(144, 82, 'NORTH WEST', 7, 'Y'),
(145, 671, 'SHAHDARA', 7, 'Y'),
(146, 83, 'SOUTH', 7, 'Y'),
(147, 670, 'South East', 7, 'Y'),
(148, 84, 'SOUTH WEST', 7, 'Y'),
(149, 85, 'WEST', 7, 'Y'),
(150, 551, 'NORTH GOA', 30, 'Y'),
(151, 552, 'SOUTH GOA', 30, 'Y'),
(152, 438, 'AHMADABAD', 24, 'Y'),
(153, 439, 'AMRELI', 24, 'Y'),
(154, 440, 'ANAND', 24, 'Y'),
(155, 672, 'ARVALLI', 24, 'Y'),
(156, 441, 'BANAS KANTHA', 24, 'Y'),
(157, 442, 'BHARUCH', 24, 'Y'),
(158, 443, 'BHAVNAGAR', 24, 'Y'),
(159, 676, 'BOTAD', 24, 'Y'),
(160, 668, 'CHHOTAUDEPUR', 24, 'Y'),
(161, 444, 'DANG', 24, 'Y'),
(162, 674, 'DEVBHUMI DWARKA', 24, 'Y'),
(163, 445, 'DOHAD', 24, 'Y'),
(164, 446, 'GANDHINAGAR', 24, 'Y'),
(165, 675, 'GIR SOMNATH', 24, 'Y'),
(166, 447, 'JAMNAGAR', 24, 'Y'),
(167, 448, 'JUNAGADH', 24, 'Y'),
(168, 449, 'KACHCHH', 24, 'Y'),
(169, 450, 'KHEDA', 24, 'Y'),
(170, 451, 'MAHESANA', 24, 'Y'),
(171, 669, 'Mahisagar', 24, 'Y'),
(172, 673, 'MORBI', 24, 'Y'),
(173, 452, 'NARMADA', 24, 'Y'),
(174, 453, 'NAVSARI', 24, 'Y'),
(175, 454, 'PANCH MAHALS', 24, 'Y'),
(176, 455, 'PATAN', 24, 'Y'),
(177, 456, 'PORBANDAR', 24, 'Y'),
(178, 457, 'RAJKOT', 24, 'Y'),
(179, 458, 'SABAR KANTHA', 24, 'Y'),
(180, 459, 'SURAT', 24, 'Y'),
(181, 460, 'SURENDRANAGAR', 24, 'Y'),
(182, 641, 'TAPI', 24, 'Y'),
(183, 461, 'VADODARA', 24, 'Y'),
(184, 462, 'VALSAD', 24, 'Y'),
(185, 330, 'GODDA', 20, 'Y'),
(186, 58, 'AMBALA', 6, 'Y'),
(187, 59, 'BHIWANI', 6, 'Y'),
(188, 701, 'CHARKI DADRI', 6, 'Y'),
(189, 60, 'FARIDABAD', 6, 'Y'),
(190, 61, 'FATEHABAD', 6, 'Y'),
(191, 62, 'GURUGRAM', 6, 'Y'),
(192, 63, 'HISAR', 6, 'Y'),
(193, 64, 'JHAJJAR', 6, 'Y'),
(194, 65, 'JIND', 6, 'Y'),
(195, 66, 'KAITHAL', 6, 'Y'),
(196, 67, 'KARNAL', 6, 'Y'),
(197, 68, 'KURUKSHETRA', 6, 'Y'),
(198, 69, 'MAHENDRAGARH', 6, 'Y'),
(199, 604, 'MEWAT', 6, 'Y'),
(200, 619, 'PALWAL', 6, 'Y'),
(201, 70, 'PANCHKULA', 6, 'Y'),
(202, 71, 'PANIPAT', 6, 'Y'),
(203, 72, 'REWARI', 6, 'Y'),
(204, 73, 'ROHTAK', 6, 'Y'),
(205, 74, 'SIRSA', 6, 'Y'),
(206, 75, 'SONIPAT', 6, 'Y'),
(207, 76, 'YAMUNANAGAR', 6, 'Y'),
(208, 15, 'BILASPUR', 2, 'Y'),
(209, 16, 'CHAMBA', 2, 'Y'),
(210, 17, 'HAMIRPUR', 2, 'Y'),
(211, 18, 'KANGRA', 2, 'Y'),
(212, 19, 'KINNAUR', 2, 'Y'),
(213, 20, 'KULLU', 2, 'Y'),
(214, 21, 'LAHUL AND SPITI', 2, 'Y'),
(215, 22, 'MANDI', 2, 'Y'),
(216, 23, 'SHIMLA', 2, 'Y'),
(217, 24, 'SIRMAUR', 2, 'Y'),
(218, 25, 'SOLAN', 2, 'Y'),
(219, 26, 'UNA', 2, 'Y'),
(220, 1, 'ANANTNAG', 1, 'Y'),
(221, 2, 'BADGAM', 1, 'Y'),
(222, 623, 'BANDIPORA', 1, 'Y'),
(223, 3, 'BARAMULLA', 1, 'Y'),
(224, 4, 'DODA', 1, 'Y'),
(225, 626, 'GANDERBAL', 1, 'Y'),
(226, 5, 'JAMMU', 1, 'Y'),
(227, 6, 'KARGIL', 1, 'Y'),
(228, 7, 'KATHUA', 1, 'Y'),
(229, 620, 'KISHTWAR', 1, 'Y'),
(230, 622, 'KULGAM', 1, 'Y'),
(231, 8, 'KUPWARA', 1, 'Y'),
(232, 9, 'LEH LADAKH', 1, 'Y'),
(233, 10, 'POONCH', 1, 'Y'),
(234, 11, 'PULWAMA', 1, 'Y'),
(235, 12, 'RAJAURI', 1, 'Y'),
(236, 621, 'RAMBAN', 1, 'Y'),
(237, 627, 'REASI', 1, 'Y'),
(238, 624, 'SAMBA', 1, 'Y'),
(239, 625, 'SHOPIAN', 1, 'Y'),
(240, 13, 'SRINAGAR', 1, 'Y'),
(241, 14, 'UDHAMPUR', 1, 'Y'),
(242, 322, 'BOKARO', 20, 'Y'),
(243, 323, 'CHATRA', 20, 'Y'),
(244, 324, 'DEOGHAR', 20, 'Y'),
(245, 325, 'DHANBAD', 20, 'Y'),
(246, 326, 'DUMKA', 20, 'Y'),
(247, 327, 'EAST SINGHBUM', 20, 'Y'),
(248, 328, 'GARHWA', 20, 'Y'),
(249, 329, 'GIRIDIH', 20, 'Y'),
(250, 331, 'GUMLA', 20, 'Y'),
(251, 332, 'HAZARIBAGH', 20, 'Y'),
(252, 333, 'JAMTARA', 20, 'Y'),
(253, 606, 'KHUNTI', 20, 'Y'),
(254, 334, 'KODERMA', 20, 'Y'),
(255, 335, 'LATEHAR', 20, 'Y'),
(256, 336, 'LOHARDAGA', 20, 'Y'),
(257, 337, 'PAKUR', 20, 'Y'),
(258, 338, 'PALAMU', 20, 'Y'),
(259, 607, 'RAMGARH', 20, 'Y'),
(260, 339, 'RANCHI', 20, 'Y'),
(261, 340, 'SAHEBGANJ', 20, 'Y'),
(262, 341, 'SARAIKELA KHARSAWAN', 20, 'Y'),
(263, 342, 'SIMDEGA', 20, 'Y'),
(264, 343, 'WEST SINGHBHUM', 20, 'Y'),
(265, 524, 'BAGALKOT', 29, 'Y'),
(266, 528, 'BALLARI', 29, 'Y'),
(267, 527, 'BELAGAVI', 29, 'Y'),
(268, 526, 'BENGALURU RURAL', 29, 'Y'),
(269, 525, 'BENGALURU URBAN', 29, 'Y'),
(270, 529, 'BIDAR', 29, 'Y'),
(271, 531, 'CHAMARAJANAGAR', 29, 'Y'),
(272, 630, 'CHIKBALLAPUR', 29, 'Y'),
(273, 532, 'CHIKKAMAGALURU', 29, 'Y'),
(274, 533, 'CHITRADURGA', 29, 'Y'),
(275, 534, 'DAKSHIN KANNAD', 29, 'Y'),
(276, 535, 'DAVANGERE', 29, 'Y'),
(277, 536, 'DHARWAD', 29, 'Y'),
(278, 537, 'GADAG', 29, 'Y'),
(279, 539, 'HASSAN', 29, 'Y'),
(280, 540, 'HAVERI', 29, 'Y'),
(281, 538, 'KALABURAGI', 29, 'Y'),
(282, 541, 'KODAGU', 29, 'Y'),
(283, 542, 'KOLAR', 29, 'Y'),
(284, 543, 'KOPPAL', 29, 'Y'),
(285, 544, 'MANDYA', 29, 'Y'),
(286, 545, 'MYSURU', 29, 'Y'),
(287, 546, 'RAICHUR', 29, 'Y'),
(288, 631, 'RAMANAGARA', 29, 'Y'),
(289, 547, 'SHIVAMOGGA', 29, 'Y'),
(290, 548, 'TUMAKURU', 29, 'Y'),
(291, 549, 'UDUPI', 29, 'Y'),
(292, 550, 'UTTAR KANNAD', 29, 'Y'),
(293, 530, 'VIJAYAPURA', 29, 'Y'),
(294, 635, 'YADGIR', 29, 'Y'),
(295, 554, 'ALAPPUZHA', 32, 'Y'),
(296, 555, 'ERNAKULAM', 32, 'Y'),
(297, 556, 'IDUKKI', 32, 'Y'),
(298, 557, 'KANNUR', 32, 'Y'),
(299, 558, 'KASARAGOD', 32, 'Y'),
(300, 559, 'KOLLAM', 32, 'Y'),
(301, 560, 'KOTTAYAM', 32, 'Y'),
(302, 561, 'KOZHIKODE', 32, 'Y'),
(303, 562, 'MALAPPURAM', 32, 'Y'),
(304, 563, 'PALAKKAD', 32, 'Y'),
(305, 564, 'PATHANAMTHITTA', 32, 'Y'),
(306, 565, 'THIRUVANANTHAPURAM', 32, 'Y'),
(307, 566, 'THRISSUR', 32, 'Y'),
(308, 567, 'WAYANAD', 32, 'Y'),
(309, 553, 'LAKSHADWEEP DISTRICT', 31, 'Y'),
(310, 667, 'AGAR MALWA', 23, 'Y'),
(311, 639, 'ALIRAJPUR', 23, 'Y'),
(312, 390, 'ANUPPUR', 23, 'Y'),
(313, 391, 'ASHOKNAGAR', 23, 'Y'),
(314, 392, 'BALAGHAT', 23, 'Y'),
(315, 393, 'BARWANI', 23, 'Y'),
(316, 394, 'BETUL', 23, 'Y'),
(317, 395, 'BHIND', 23, 'Y'),
(318, 396, 'BHOPAL', 23, 'Y'),
(319, 397, 'BURHANPUR', 23, 'Y'),
(320, 398, 'CHHATARPUR', 23, 'Y'),
(321, 399, 'CHHINDWARA', 23, 'Y'),
(322, 400, 'DAMOH', 23, 'Y'),
(323, 401, 'DATIA', 23, 'Y'),
(324, 402, 'DEWAS', 23, 'Y'),
(325, 403, 'DHAR', 23, 'Y'),
(326, 404, 'DINDORI', 23, 'Y'),
(327, 405, 'EAST NIMAR', 23, 'Y'),
(328, 406, 'GUNA', 23, 'Y'),
(329, 407, 'GWALIOR', 23, 'Y'),
(330, 408, 'HARDA', 23, 'Y'),
(331, 409, 'HOSHANGABAD', 23, 'Y'),
(332, 410, 'INDORE', 23, 'Y'),
(333, 411, 'JABALPUR', 23, 'Y'),
(334, 412, 'JHABUA', 23, 'Y'),
(335, 413, 'KATNI', 23, 'Y'),
(336, 414, 'KHARGONE', 23, 'Y'),
(337, 415, 'MANDLA', 23, 'Y'),
(338, 416, 'MANDSAUR', 23, 'Y'),
(339, 417, 'MORENA', 23, 'Y'),
(340, 418, 'NARSINGHPUR', 23, 'Y'),
(341, 419, 'NEEMUCH', 23, 'Y'),
(342, 420, 'PANNA', 23, 'Y'),
(343, 421, 'RAISEN', 23, 'Y'),
(344, 422, 'RAJGARH', 23, 'Y'),
(345, 423, 'RATLAM', 23, 'Y'),
(346, 424, 'REWA', 23, 'Y'),
(347, 425, 'SAGAR', 23, 'Y'),
(348, 426, 'SATNA', 23, 'Y'),
(349, 427, 'SEHORE', 23, 'Y'),
(350, 428, 'SEONI', 23, 'Y'),
(351, 429, 'SHAHDOL', 23, 'Y'),
(352, 430, 'SHAJAPUR', 23, 'Y'),
(353, 431, 'SHEOPUR', 23, 'Y'),
(354, 432, 'SHIVPURI', 23, 'Y'),
(355, 433, 'SIDHI', 23, 'Y'),
(356, 638, 'SINGRAULI', 23, 'Y'),
(357, 434, 'TIKAMGARH', 23, 'Y'),
(358, 435, 'UJJAIN', 23, 'Y'),
(359, 436, 'UMARIA', 23, 'Y'),
(360, 437, 'VIDISHA', 23, 'Y'),
(361, 466, 'AHMEDNAGAR', 27, 'Y'),
(362, 467, 'AKOLA', 27, 'Y'),
(363, 468, 'AMRAVATI', 27, 'Y'),
(364, 469, 'AURANGABAD', 27, 'Y'),
(365, 470, 'BEED', 27, 'Y'),
(366, 471, 'BHANDARA', 27, 'Y'),
(367, 472, 'BULDHANA', 27, 'Y'),
(368, 473, 'CHANDRAPUR', 27, 'Y'),
(369, 474, 'DHULE', 27, 'Y'),
(370, 475, 'GADCHIROLI', 27, 'Y'),
(371, 476, 'GONDIA', 27, 'Y'),
(372, 477, 'HINGOLI', 27, 'Y'),
(373, 478, 'JALGAON', 27, 'Y'),
(374, 479, 'JALNA', 27, 'Y'),
(375, 480, 'KOLHAPUR', 27, 'Y'),
(376, 481, 'LATUR', 27, 'Y'),
(377, 482, 'MUMBAI', 27, 'Y'),
(378, 483, 'MUMBAI SUBURBAN', 27, 'Y'),
(379, 484, 'NAGPUR', 27, 'Y'),
(380, 485, 'NANDED', 27, 'Y'),
(381, 486, 'NANDURBAR', 27, 'Y'),
(382, 487, 'NASHIK', 27, 'Y'),
(383, 488, 'OSMANABAD', 27, 'Y'),
(384, 665, 'PALGHAR', 27, 'Y'),
(385, 489, 'PARBHANI', 27, 'Y'),
(386, 490, 'PUNE', 27, 'Y'),
(387, 491, 'RAIGAD', 27, 'Y'),
(388, 492, 'RATNAGIRI', 27, 'Y'),
(389, 493, 'SANGLI', 27, 'Y'),
(390, 494, 'SATARA', 27, 'Y'),
(391, 495, 'SINDHUDURG', 27, 'Y'),
(392, 496, 'SOLAPUR', 27, 'Y'),
(393, 497, 'THANE', 27, 'Y'),
(394, 498, 'WARDHA', 27, 'Y'),
(395, 499, 'WASHIM', 27, 'Y'),
(396, 500, 'YAVATMAL', 27, 'Y'),
(397, 252, 'BISHNUPUR', 14, 'Y'),
(398, 253, 'CHANDEL', 14, 'Y'),
(399, 254, 'CHURACHANDPUR', 14, 'Y'),
(400, 255, 'IMPHAL EAST', 14, 'Y'),
(401, 256, 'IMPHAL WEST', 14, 'Y'),
(402, 713, 'JIRIBAM', 14, 'Y'),
(403, 711, 'KAKCHING', 14, 'Y'),
(404, 717, 'KAMJONG', 14, 'Y'),
(405, 712, 'KANGPOKPI', 14, 'Y'),
(406, 714, 'NONEY', 14, 'Y'),
(407, 715, 'PHERZAWL', 14, 'Y'),
(408, 257, 'SENAPATI', 14, 'Y'),
(409, 258, 'TAMENGLONG', 14, 'Y'),
(410, 716, 'TENGNOUPAL', 14, 'Y'),
(411, 259, 'THOUBAL', 14, 'Y'),
(412, 260, 'UKHRUL', 14, 'Y'),
(413, 273, 'EAST GARO HILLS', 17, 'Y'),
(414, 657, 'EAST JAINTIA HILLS', 17, 'Y'),
(415, 274, 'EAST KHASI HILLS', 17, 'Y'),
(416, 656, 'NORTH GARO HILLS', 17, 'Y'),
(417, 276, 'RI BHOI', 17, 'Y'),
(418, 277, 'SOUTH GARO HILLS', 17, 'Y'),
(419, 663, 'SOUTH WEST GARO HILLS', 17, 'Y'),
(420, 658, 'SOUTH WEST KHASI HILLS', 17, 'Y'),
(421, 278, 'WEST GARO HILLS', 17, 'Y'),
(422, 275, 'WEST JAINTIA HILLS', 17, 'Y'),
(423, 279, 'WEST KHASI HILLS', 17, 'Y'),
(424, 261, 'AIZAWL', 15, 'Y'),
(425, 262, 'CHAMPHAI', 15, 'Y'),
(426, 263, 'KOLASIB', 15, 'Y'),
(427, 264, 'LAWNGTLAI', 15, 'Y'),
(428, 265, 'LUNGLEI', 15, 'Y'),
(429, 266, 'MAMIT', 15, 'Y'),
(430, 267, 'SAIHA', 15, 'Y'),
(431, 268, 'SERCHHIP', 15, 'Y'),
(432, 244, 'DIMAPUR', 13, 'Y'),
(433, 614, 'KIPHIRE', 13, 'Y'),
(434, 245, 'KOHIMA', 13, 'Y'),
(435, 615, 'LONGLENG', 13, 'Y'),
(436, 246, 'MOKOKCHUNG', 13, 'Y'),
(437, 247, 'MON', 13, 'Y'),
(438, 613, 'PEREN', 13, 'Y'),
(439, 248, 'PHEK', 13, 'Y'),
(440, 249, 'TUENSANG', 13, 'Y'),
(441, 250, 'WOKHA', 13, 'Y'),
(442, 251, 'ZUNHEBOTO', 13, 'Y'),
(443, 344, 'ANUGUL', 21, 'Y'),
(444, 345, 'BALANGIR', 21, 'Y'),
(445, 346, 'BALESHWAR', 21, 'Y'),
(446, 347, 'BARGARH', 21, 'Y'),
(447, 348, 'BHADRAK', 21, 'Y'),
(448, 349, 'BOUDH', 21, 'Y'),
(449, 350, 'CUTTACK', 21, 'Y'),
(450, 351, 'DEOGARH', 21, 'Y'),
(451, 352, 'DHENKANAL', 21, 'Y'),
(452, 353, 'GAJAPATI', 21, 'Y'),
(453, 354, 'GANJAM', 21, 'Y'),
(454, 355, 'JAGATSINGHAPUR', 21, 'Y'),
(455, 356, 'JAJAPUR', 21, 'Y'),
(456, 357, 'JHARSUGUDA', 21, 'Y'),
(457, 358, 'KALAHANDI', 21, 'Y'),
(458, 359, 'KANDHAMAL', 21, 'Y'),
(459, 360, 'KENDRAPARA', 21, 'Y'),
(460, 361, 'KENDUJHAR', 21, 'Y'),
(461, 362, 'KHORDHA', 21, 'Y'),
(462, 363, 'KORAPUT', 21, 'Y'),
(463, 364, 'MALKANGIRI', 21, 'Y'),
(464, 365, 'MAYURBHANJ', 21, 'Y'),
(465, 366, 'NABARANGPUR', 21, 'Y'),
(466, 367, 'NAYAGARH', 21, 'Y'),
(467, 368, 'NUAPADA', 21, 'Y'),
(468, 369, 'PURI', 21, 'Y'),
(469, 370, 'RAYAGADA', 21, 'Y'),
(470, 371, 'SAMBALPUR', 21, 'Y'),
(471, 372, 'SONEPUR', 21, 'Y'),
(472, 373, 'SUNDARGARH', 21, 'Y'),
(473, 598, 'KARAIKAL', 34, 'Y'),
(474, 599, 'MAHE', 34, 'Y'),
(475, 600, 'PONDICHERRY', 34, 'Y'),
(476, 601, 'YANAM', 34, 'Y'),
(477, 27, 'AMRITSAR', 3, 'Y'),
(478, 605, 'BARNALA', 3, 'Y'),
(479, 28, 'BATHINDA', 3, 'Y'),
(480, 29, 'FARIDKOT', 3, 'Y'),
(481, 30, 'FATEHGARH SAHIB', 3, 'Y'),
(482, 651, 'FAZILKA', 3, 'Y'),
(483, 31, 'FIROZEPUR', 3, 'Y'),
(484, 32, 'GURDASPUR', 3, 'Y'),
(485, 33, 'HOSHIARPUR', 3, 'Y'),
(486, 34, 'JALANDHAR', 3, 'Y'),
(487, 35, 'KAPURTHALA', 3, 'Y'),
(488, 36, 'LUDHIANA', 3, 'Y'),
(489, 37, 'MANSA', 3, 'Y'),
(490, 38, 'MOGA', 3, 'Y'),
(491, 662, 'PATHANKOT', 3, 'Y'),
(492, 41, 'PATIALA', 3, 'Y'),
(493, 42, 'RUPNAGAR', 3, 'Y'),
(494, 43, 'SANGRUR', 3, 'Y'),
(495, 608, 'S.A.S Nagar', 3, 'Y'),
(496, 40, 'Shahid Bhagat Singh Nagar', 3, 'Y'),
(497, 39, 'SRI MUKTSAR SAHIB', 3, 'Y'),
(498, 609, 'Tarn Taran', 3, 'Y'),
(499, 86, 'AJMER', 8, 'Y'),
(500, 87, 'ALWAR', 8, 'Y'),
(501, 88, 'BANSWARA', 8, 'Y'),
(502, 89, 'BARAN', 8, 'Y'),
(503, 90, 'BARMER', 8, 'Y'),
(504, 91, 'BHARATPUR', 8, 'Y'),
(505, 92, 'BHILWARA', 8, 'Y'),
(506, 93, 'BIKANER', 8, 'Y'),
(507, 94, 'BUNDI', 8, 'Y'),
(508, 95, 'CHITTORGARH', 8, 'Y'),
(509, 96, 'CHURU', 8, 'Y'),
(510, 97, 'DAUSA', 8, 'Y'),
(511, 98, 'DHOLPUR', 8, 'Y'),
(512, 99, 'DUNGARPUR', 8, 'Y'),
(513, 100, 'GANGANAGAR', 8, 'Y'),
(514, 101, 'HANUMANGARH', 8, 'Y'),
(515, 102, 'JAIPUR', 8, 'Y'),
(516, 103, 'JAISALMER', 8, 'Y'),
(517, 104, 'JALORE', 8, 'Y'),
(518, 105, 'JHALAWAR', 8, 'Y'),
(519, 106, 'JHUNJHUNU', 8, 'Y'),
(520, 107, 'JODHPUR', 8, 'Y'),
(521, 108, 'KARAULI', 8, 'Y'),
(522, 109, 'KOTA', 8, 'Y'),
(523, 110, 'NAGAUR', 8, 'Y'),
(524, 111, 'PALI', 8, 'Y'),
(525, 629, 'PRATAPGARH', 8, 'Y'),
(526, 112, 'RAJSAMAND', 8, 'Y'),
(527, 113, 'SAWAI MADHOPUR', 8, 'Y'),
(528, 114, 'SIKAR', 8, 'Y'),
(529, 115, 'SIROHI', 8, 'Y'),
(530, 116, 'TONK', 8, 'Y'),
(531, 117, 'UDAIPUR', 8, 'Y'),
(532, 225, 'EAST DISTRICT', 11, 'Y'),
(533, 226, 'NORTH DISTRICT', 11, 'Y'),
(534, 227, 'SOUTH DISTRICT', 11, 'Y'),
(535, 228, 'WEST DISTRICT', 11, 'Y'),
(536, 610, 'Ariyalur', 33, 'Y'),
(537, 568, 'CHENNAI', 33, 'Y'),
(538, 569, 'COIMBATORE', 33, 'Y'),
(539, 570, 'CUDDALORE', 33, 'Y'),
(540, 571, 'DHARMAPURI', 33, 'Y'),
(541, 572, 'DINDIGUL', 33, 'Y'),
(542, 573, 'ERODE', 33, 'Y'),
(543, 574, 'KANCHIPURAM', 33, 'Y'),
(544, 575, 'KANNIYAKUMARI', 33, 'Y'),
(545, 576, 'KARUR', 33, 'Y'),
(546, 577, 'KRISHNAGIRI', 33, 'Y'),
(547, 578, 'MADURAI', 33, 'Y'),
(548, 579, 'NAGAPATTINAM', 33, 'Y'),
(549, 580, 'NAMAKKAL', 33, 'Y'),
(550, 581, 'PERAMBALUR', 33, 'Y'),
(551, 582, 'PUDUKKOTTAI', 33, 'Y'),
(552, 583, 'RAMANATHAPURAM', 33, 'Y'),
(553, 584, 'SALEM', 33, 'Y'),
(554, 585, 'SIVAGANGA', 33, 'Y'),
(555, 586, 'THANJAVUR', 33, 'Y'),
(556, 588, 'THENI', 33, 'Y'),
(557, 587, 'THE NILGIRIS', 33, 'Y'),
(558, 589, 'THIRUVALLUR', 33, 'Y'),
(559, 590, 'THIRUVARUR', 33, 'Y'),
(560, 591, 'TIRUCHIRAPPALLI', 33, 'Y'),
(561, 592, 'TIRUNELVELI', 33, 'Y'),
(562, 634, 'TIRUPPUR', 33, 'Y'),
(563, 593, 'TIRUVANNAMALAI', 33, 'Y'),
(564, 594, 'TUTICORIN', 33, 'Y'),
(565, 595, 'VELLORE', 33, 'Y'),
(566, 596, 'VILLUPURAM', 33, 'Y'),
(567, 597, 'VIRUDHUNAGAR', 33, 'Y'),
(568, 501, 'ADILABAD', 36, 'Y'),
(569, 690, 'BHADRADRI KOTHAGUDEM', 36, 'Y'),
(570, 507, 'HYDERABAD', 36, 'Y'),
(571, 681, 'Jagitial', 36, 'Y'),
(572, 689, 'JANGOAN', 36, 'Y'),
(573, 687, 'JAYASHANKAR BHUPALAPALLY', 36, 'Y'),
(574, 695, 'JOGULAMBA GADWAL', 36, 'Y'),
(575, 685, 'KAMAREDDY', 36, 'Y'),
(576, 508, 'KARIMNAGAR', 36, 'Y'),
(577, 509, 'KHAMMAM', 36, 'Y'),
(578, 699, 'KUMURAM BHEEM ASIFABAD', 36, 'Y'),
(579, 688, 'MAHABUBABAD', 36, 'Y'),
(580, 512, 'MAHABUBNAGAR', 36, 'Y'),
(581, 684, 'MANCHERIAL', 36, 'Y'),
(582, 513, 'MEDAK', 36, 'Y'),
(583, 700, 'MEDCHAL MALKAJGIRI', 36, 'Y'),
(584, 694, 'NAGARKURNOOL', 36, 'Y'),
(585, 514, 'NALGONDA', 36, 'Y'),
(586, 680, 'Nirmal', 36, 'Y'),
(587, 516, 'NIZAMABAD', 36, 'Y'),
(588, 682, 'PEDDAPALLI', 36, 'Y'),
(589, 683, 'RAJANNA SIRCILLA', 36, 'Y'),
(590, 518, 'RANGA REDDY', 36, 'Y'),
(591, 691, 'SANGAREDDY', 36, 'Y'),
(592, 692, 'SIDDIPET', 36, 'Y'),
(593, 696, 'SURYAPET', 36, 'Y'),
(594, 698, 'VIKARABAD', 36, 'Y'),
(595, 693, 'WANAPARTHY', 36, 'Y'),
(596, 522, 'WARANGAL RURAL', 36, 'Y'),
(597, 686, 'WARANGAL URBAN', 36, 'Y'),
(598, 697, 'YADADRI BHUVANAGIRI', 36, 'Y'),
(599, 269, 'Dhalai', 16, 'Y'),
(600, 654, 'Gomati', 16, 'Y'),
(601, 652, 'Khowai', 16, 'Y'),
(602, 270, 'North Tripura', 16, 'Y'),
(603, 653, 'Sepahijala', 16, 'Y'),
(604, 271, 'South Tripura', 16, 'Y'),
(605, 655, 'Unakoti', 16, 'Y'),
(606, 272, 'West Tripura', 16, 'Y'),
(607, 45, 'ALMORA', 5, 'Y'),
(608, 46, 'BAGESHWAR', 5, 'Y'),
(609, 47, 'CHAMOLI', 5, 'Y'),
(610, 48, 'CHAMPAWAT', 5, 'Y'),
(611, 49, 'DEHRADUN', 5, 'Y'),
(612, 50, 'HARIDWAR', 5, 'Y'),
(613, 51, 'NAINITAL', 5, 'Y'),
(614, 52, 'PAURI GARHWAL', 5, 'Y'),
(615, 53, 'PITHORAGARH', 5, 'Y'),
(616, 54, 'RUDRA PRAYAG', 5, 'Y'),
(617, 55, 'TEHRI GARHWAL', 5, 'Y'),
(618, 56, 'UDAM SINGH NAGAR', 5, 'Y'),
(619, 57, 'UTTAR KASHI', 5, 'Y'),
(620, 118, 'AGRA', 9, 'Y'),
(621, 119, 'ALIGARH', 9, 'Y'),
(622, 120, 'ALLAHABAD', 9, 'Y'),
(623, 121, 'AMBEDKAR NAGAR', 9, 'Y'),
(624, 640, 'Amethi', 9, 'Y'),
(625, 154, 'AMROHA', 9, 'Y'),
(626, 122, 'AURAIYA', 9, 'Y'),
(627, 123, 'AZAMGARH', 9, 'Y'),
(628, 124, 'BAGHPAT', 9, 'Y'),
(629, 125, 'BAHRAICH', 9, 'Y'),
(630, 126, 'BALLIA', 9, 'Y'),
(631, 127, 'BALRAMPUR', 9, 'Y'),
(632, 128, 'BANDA', 9, 'Y'),
(633, 129, 'BARABANKI', 9, 'Y'),
(634, 130, 'BAREILLY', 9, 'Y'),
(635, 131, 'BASTI', 9, 'Y'),
(636, 179, 'BHADOHI', 9, 'Y'),
(637, 132, 'BIJNOR', 9, 'Y'),
(638, 133, 'BUDAUN', 9, 'Y'),
(639, 134, 'BULANDSHAHR', 9, 'Y'),
(640, 135, 'CHANDAULI', 9, 'Y'),
(641, 136, 'CHITRAKOOT', 9, 'Y'),
(642, 137, 'DEORIA', 9, 'Y'),
(643, 138, 'ETAH', 9, 'Y'),
(644, 139, 'ETAWAH', 9, 'Y'),
(645, 140, 'FAIZABAD', 9, 'Y'),
(646, 141, 'FARRUKHABAD', 9, 'Y'),
(647, 142, 'FATEHPUR', 9, 'Y'),
(648, 143, 'FIROZABAD', 9, 'Y'),
(649, 144, 'GAUTAM BUDDHA NAGAR', 9, 'Y'),
(650, 145, 'GHAZIABAD', 9, 'Y'),
(651, 146, 'GHAZIPUR', 9, 'Y'),
(652, 147, 'GONDA', 9, 'Y'),
(653, 148, 'GORAKHPUR', 9, 'Y'),
(654, 149, 'HAMIRPUR', 9, 'Y'),
(655, 661, 'HAPUR', 9, 'Y'),
(656, 150, 'HARDOI', 9, 'Y'),
(657, 163, 'HATHRAS', 9, 'Y'),
(658, 151, 'JALAUN', 9, 'Y'),
(659, 152, 'JAUNPUR', 9, 'Y'),
(660, 153, 'JHANSI', 9, 'Y'),
(661, 155, 'KANNAUJ', 9, 'Y'),
(662, 156, 'KANPUR DEHAT', 9, 'Y'),
(663, 157, 'KANPUR NAGAR', 9, 'Y'),
(664, 633, 'Kasganj', 9, 'Y'),
(665, 158, 'KAUSHAMBI', 9, 'Y'),
(666, 159, 'KHERI', 9, 'Y'),
(667, 160, 'KUSHI NAGAR', 9, 'Y'),
(668, 161, 'LALITPUR', 9, 'Y'),
(669, 162, 'LUCKNOW', 9, 'Y'),
(670, 164, 'MAHARAJGANJ', 9, 'Y'),
(671, 165, 'MAHOBA', 9, 'Y'),
(672, 166, 'MAINPURI', 9, 'Y'),
(673, 167, 'MATHURA', 9, 'Y'),
(674, 168, 'MAU', 9, 'Y'),
(675, 169, 'MEERUT', 9, 'Y'),
(676, 170, 'MIRZAPUR', 9, 'Y'),
(677, 171, 'MORADABAD', 9, 'Y'),
(678, 172, 'MUZAFFARNAGAR', 9, 'Y'),
(679, 173, 'PILIBHIT', 9, 'Y'),
(680, 174, 'PRATAPGARH', 9, 'Y'),
(681, 175, 'RAE BARELI', 9, 'Y'),
(682, 176, 'RAMPUR', 9, 'Y'),
(683, 177, 'SAHARANPUR', 9, 'Y'),
(684, 659, 'SAMBHAL', 9, 'Y'),
(685, 178, 'SANT KABEER NAGAR', 9, 'Y'),
(686, 180, 'SHAHJAHANPUR', 9, 'Y'),
(687, 660, 'SHAMLI', 9, 'Y'),
(688, 181, 'SHRAVASTI', 9, 'Y'),
(689, 182, 'SIDDHARTH NAGAR', 9, 'Y'),
(690, 183, 'SITAPUR', 9, 'Y'),
(691, 184, 'SONBHADRA', 9, 'Y'),
(692, 185, 'SULTANPUR', 9, 'Y'),
(693, 186, 'UNNAO', 9, 'Y'),
(694, 187, 'VARANASI', 9, 'Y'),
(695, 303, '24 PARAGANAS NORTH', 19, 'Y'),
(696, 304, '24 PARAGANAS SOUTH', 19, 'Y'),
(697, 664, 'Alipurduar', 19, 'Y'),
(698, 305, 'BANKURA', 19, 'Y'),
(699, 307, 'BIRBHUM', 19, 'Y'),
(700, 308, 'COOCHBEHAR', 19, 'Y'),
(701, 309, 'DARJEELING', 19, 'Y'),
(702, 310, 'DINAJPUR DAKSHIN', 19, 'Y'),
(703, 311, 'DINAJPUR UTTAR', 19, 'Y'),
(704, 312, 'HOOGHLY', 19, 'Y'),
(705, 313, 'HOWRAH', 19, 'Y'),
(706, 314, 'JALPAIGURI', 19, 'Y'),
(707, 703, 'Jhargram', 19, 'Y'),
(708, 702, 'KALIMPONG', 19, 'Y'),
(709, 315, 'KOLKATA', 19, 'Y'),
(710, 316, 'MALDAH', 19, 'Y'),
(711, 317, 'MEDINIPUR EAST', 19, 'Y'),
(712, 318, 'MEDINIPUR WEST', 19, 'Y'),
(713, 319, 'MURSHIDABAD', 19, 'Y'),
(714, 320, 'NADIA', 19, 'Y'),
(715, 704, 'PASCHIM BARDHAMAN', 19, 'Y'),
(716, 306, 'PURBA BARDHAMAN', 19, 'Y'),
(717, 321, 'PURULIA', 19, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_head_office_state`
--

CREATE TABLE `vendor_head_office_state` (
  `id` int(11) NOT NULL,
  `state_code` int(11) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_head_office_state`
--

INSERT INTO `vendor_head_office_state` (`id`, `state_code`, `state_name`, `is_active`) VALUES
(1, 35, 'Andaman And Nicobar Islands', 'Y'),
(2, 28, 'Andhra Pradesh', 'Y'),
(3, 12, 'Arunachal Pradesh', 'Y'),
(4, 18, 'Assam', 'Y'),
(5, 10, 'Bihar', 'Y'),
(6, 4, 'Chandigarh', 'Y'),
(7, 22, 'Chhattisgarh', 'Y'),
(8, 26, 'Dadra And Nagar Haveli', 'Y'),
(9, 25, 'Daman And Diu', 'Y'),
(10, 7, 'Delhi', 'Y'),
(11, 30, 'Goa', 'Y'),
(12, 24, 'Gujarat', 'Y'),
(13, 6, 'Haryana', 'Y'),
(14, 2, 'Himachal Pradesh', 'Y'),
(15, 1, 'Jammu And Kashmir', 'Y'),
(16, 20, 'Jharkhand', 'Y'),
(17, 29, 'Karnataka', 'Y'),
(18, 32, 'Kerala', 'Y'),
(19, 31, 'Lakshadweep', 'Y'),
(20, 23, 'Madhya Pradesh', 'Y'),
(21, 27, 'Maharashtra', 'Y'),
(22, 14, 'Manipur', 'Y'),
(23, 17, 'Meghalaya', 'Y'),
(24, 15, 'Mizoram', 'Y'),
(25, 13, 'Nagaland', 'Y'),
(26, 21, 'Odisha', 'Y'),
(27, 34, 'Puducherry', 'Y'),
(28, 3, 'Punjab', 'Y'),
(29, 8, 'Rajasthan', 'Y'),
(30, 11, 'Sikkim', 'Y'),
(31, 33, 'Tamil Nadu', 'Y'),
(32, 36, 'Telangana', 'Y'),
(33, 16, 'Tripura', 'Y'),
(34, 5, 'Uttarakhand', 'Y'),
(35, 9, 'Uttar Pradesh', 'Y'),
(36, 19, 'West Bengal', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_registration`
--

CREATE TABLE `vendor_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gst_no` varchar(200) NOT NULL,
  `pan_no` varchar(200) NOT NULL,
  `tin_no` varchar(200) NOT NULL,
  `permanent_address` text NOT NULL,
  `head_office_address1` varchar(200) NOT NULL,
  `head_office_address2` varchar(200) NOT NULL,
  `vendor_head_office_country_id` int(11) NOT NULL,
  `vendor_head_office_state_id` int(11) NOT NULL,
  `vendor_head_office_district_id` int(11) NOT NULL,
  `head_office_pin_code` bigint(20) NOT NULL,
  `head_office_telephone_no` bigint(20) NOT NULL,
  `head_office_mobile_no` bigint(20) NOT NULL,
  `head_office_company_url` varchar(500) NOT NULL,
  `head_office_business_established_year` varchar(200) NOT NULL,
  `branch_office_address1` varchar(500) NOT NULL,
  `branch_office_address2` varchar(500) NOT NULL,
  `vendor_branch_office_country_id` int(11) NOT NULL,
  `vendor_branch_office_state_id` int(11) NOT NULL,
  `vendor_branch_office_district_id` int(11) NOT NULL,
  `branch_office_pin_no` bigint(20) NOT NULL,
  `branch_office_telephone_no` bigint(20) NOT NULL,
  `branch_office_mobile_no` bigint(20) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `bank_account_no` bigint(20) NOT NULL,
  `vendor_bank_account_type_id` int(11) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `vendor_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` datetime DEFAULT NULL,
  `is_active` enum('N','Y') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_registration`
--

INSERT INTO `vendor_registration` (`id`, `name`, `email`, `gst_no`, `pan_no`, `tin_no`, `permanent_address`, `head_office_address1`, `head_office_address2`, `vendor_head_office_country_id`, `vendor_head_office_state_id`, `vendor_head_office_district_id`, `head_office_pin_code`, `head_office_telephone_no`, `head_office_mobile_no`, `head_office_company_url`, `head_office_business_established_year`, `branch_office_address1`, `branch_office_address2`, `vendor_branch_office_country_id`, `vendor_branch_office_state_id`, `vendor_branch_office_district_id`, `branch_office_pin_no`, `branch_office_telephone_no`, `branch_office_mobile_no`, `bank_name`, `bank_account_no`, `vendor_bank_account_type_id`, `ifsc_code`, `vendor_description`, `created_at`, `modified_at`, `is_active`) VALUES
(1, 'Pankaj', 'pankaj@email.com', 'kdhsdh', 'skhdsdh', 'ksdkshd', 'skdksd shkshd', 'hdksh', 'skdhskhd', 104, 20, 339, 898989, 479273927, 329329379, 'hkahskah', '2021', 'akjnka', 'kajka', 104, 5, 49, 72917927, 917271927, 9791729, 'hkash', 77979797, 1, 'wjewej', 'wkejwjewkje wkjewje description', '2021-03-25 07:40:41', NULL, 'Y'),
(2, 'Test', 'test@gmail.com', '13213', 'bropk1234', 'dfsf32', 'Test', 'dsfdsf', 'fsdfsd', 16, 29, 628, 3213123213213, 1212121222, 2313213, 'test', '2021', 'test', 'test', 1, 35, 603, 5557575755765, 57657657657, 57657567567, 'test', 6876868686868, 1, 'jg565565', 'testsdad', '2021-03-25 10:28:58', NULL, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_component`
--
ALTER TABLE `mst_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_financial_year`
--
ALTER TABLE `mst_financial_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_items`
--
ALTER TABLE `mst_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_rate_type`
--
ALTER TABLE `mst_rate_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_role`
--
ALTER TABLE `mst_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_role_mapping`
--
ALTER TABLE `mst_role_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `mst_scheme`
--
ALTER TABLE `mst_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_ulb`
--
ALTER TABLE `mst_ulb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_ward`
--
ALTER TABLE `mst_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_budget`
--
ALTER TABLE `trans_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_budget_proposal`
--
ALTER TABLE `trans_budget_proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `budget_id` (`budget_id`);

--
-- Indexes for table `trans_wms`
--
ALTER TABLE `trans_wms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_wms_ibfk_1` (`ulb_id`),
  ADD KEY `scheme_id` (`scheme_id`),
  ADD KEY `component_id` (`component_id`),
  ADD KEY `ward_id` (`ward_id`);

--
-- Indexes for table `trans_wms_approval_level`
--
ALTER TABLE `trans_wms_approval_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `tbl_wms_approval_level_ibfk_2` (`wms_id`);

--
-- Indexes for table `trans_wms_work_items`
--
ALTER TABLE `trans_wms_work_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wms_id` (`wms_id`),
  ADD KEY `rate_type_id` (`rate_type_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `vendor_assign_work`
--
ALTER TABLE `vendor_assign_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_bank_account_type`
--
ALTER TABLE `vendor_bank_account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_branch_office_country`
--
ALTER TABLE `vendor_branch_office_country`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vendor_branch_office_district`
--
ALTER TABLE `vendor_branch_office_district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `district_code` (`district_code`),
  ADD KEY `district_code_2` (`district_code`),
  ADD KEY `state_code` (`state_code`);

--
-- Indexes for table `vendor_branch_office_state`
--
ALTER TABLE `vendor_branch_office_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `state_code` (`state_code`);

--
-- Indexes for table `vendor_head_office_country`
--
ALTER TABLE `vendor_head_office_country`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vendor_head_office_district`
--
ALTER TABLE `vendor_head_office_district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `district_code` (`district_code`),
  ADD KEY `district_code_2` (`district_code`),
  ADD KEY `state_code` (`state_code`);

--
-- Indexes for table `vendor_head_office_state`
--
ALTER TABLE `vendor_head_office_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `state_code` (`state_code`);

--
-- Indexes for table `vendor_registration`
--
ALTER TABLE `vendor_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_component`
--
ALTER TABLE `mst_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_items`
--
ALTER TABLE `mst_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_rate_type`
--
ALTER TABLE `mst_rate_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_role`
--
ALTER TABLE `mst_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_role_mapping`
--
ALTER TABLE `mst_role_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_scheme`
--
ALTER TABLE `mst_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_ulb`
--
ALTER TABLE `mst_ulb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_ward`
--
ALTER TABLE `mst_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trans_budget`
--
ALTER TABLE `trans_budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trans_budget_proposal`
--
ALTER TABLE `trans_budget_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trans_wms`
--
ALTER TABLE `trans_wms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trans_wms_approval_level`
--
ALTER TABLE `trans_wms_approval_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_wms_work_items`
--
ALTER TABLE `trans_wms_work_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_assign_work`
--
ALTER TABLE `vendor_assign_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_bank_account_type`
--
ALTER TABLE `vendor_bank_account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_branch_office_country`
--
ALTER TABLE `vendor_branch_office_country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `vendor_branch_office_district`
--
ALTER TABLE `vendor_branch_office_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `vendor_branch_office_state`
--
ALTER TABLE `vendor_branch_office_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `vendor_head_office_country`
--
ALTER TABLE `vendor_head_office_country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `vendor_head_office_district`
--
ALTER TABLE `vendor_head_office_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `vendor_head_office_state`
--
ALTER TABLE `vendor_head_office_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `vendor_registration`
--
ALTER TABLE `vendor_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_role_mapping`
--
ALTER TABLE `mst_role_mapping`
  ADD CONSTRAINT `mst_role_mapping_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `mst_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trans_budget_proposal`
--
ALTER TABLE `trans_budget_proposal`
  ADD CONSTRAINT `trans_budget_proposal_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `trans_budget` (`id`);

--
-- Constraints for table `trans_wms`
--
ALTER TABLE `trans_wms`
  ADD CONSTRAINT `trans_wms_ibfk_1` FOREIGN KEY (`ulb_id`) REFERENCES `mst_ulb` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trans_wms_ibfk_2` FOREIGN KEY (`scheme_id`) REFERENCES `mst_scheme` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trans_wms_ibfk_3` FOREIGN KEY (`component_id`) REFERENCES `mst_component` (`id`);

--
-- Constraints for table `trans_wms_approval_level`
--
ALTER TABLE `trans_wms_approval_level`
  ADD CONSTRAINT `trans_wms_approval_level_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `mst_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trans_wms_approval_level_ibfk_2` FOREIGN KEY (`wms_id`) REFERENCES `trans_wms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trans_wms_work_items`
--
ALTER TABLE `trans_wms_work_items`
  ADD CONSTRAINT `trans_wms_work_items_ibfk_1` FOREIGN KEY (`wms_id`) REFERENCES `trans_wms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trans_wms_work_items_ibfk_2` FOREIGN KEY (`rate_type_id`) REFERENCES `mst_rate_type` (`id`),
  ADD CONSTRAINT `trans_wms_work_items_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `mst_items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
