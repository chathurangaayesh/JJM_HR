-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 04:38 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jjm_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplicant_cv`
--

CREATE TABLE `aplicant_cv` (
  `id` int(11) NOT NULL,
  `request_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cu_parth` varchar(100) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `interview_date` date DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `interview_Address` varchar(200) DEFAULT NULL,
  `approve_in_status` int(1) DEFAULT '0',
  `is_read` int(1) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aplicant_cv`
--

INSERT INTO `aplicant_cv` (`id`, `request_id`, `name`, `email`, `cu_parth`, `comment`, `status`, `interview_date`, `interview_time`, `interview_Address`, `approve_in_status`, `is_read`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'RPL01', 'Chathuranga Ayesh', 'chathurangaaysh@gmail.com', '12072520191501chathuranga.pdf', NULL, 1, '2019-07-13', '10:00:00', '', 1, 0, '2019-07-15 15:55:01', 'jchathuranga', '2019-07-18 08:56:37'),
(2, 'RPL01', 'Chathuranga Jayasinghe', 'chathurangaaysh@gmail.com', '12072620191501Chathuranga Jayasinghe.pdf', NULL, 1, '2019-07-13', NULL, NULL, 1, 0, '2019-07-15 15:56:01', 'jchathuranga', '2019-07-18 08:56:38'),
(3, 'RPL05', 'kasun ariyadasa', 'chathurangaaysh@gmail.com', '12072720191558kasun ariyadasa.svg', NULL, 1, '2019-07-13', NULL, NULL, 0, 0, '2019-07-15 15:57:58', 'jchathuranga', '2019-07-18 08:56:38'),
(4, 'RPL05', 'Susantha', 'chathurangaaysh@gmail.com', '05075720191716Susantha.pdf', NULL, 0, NULL, NULL, NULL, 0, 0, '2019-07-17 09:27:16', 'jchathuranga', '2019-07-18 08:56:39'),
(5, 'RPL09', 'abcd', 'abcd@gmail.com', '07073720191820abcd.pdf', NULL, 1, '2019-07-18', '13:00:00', '', 0, 0, '2019-07-18 11:07:20', 'bayesh', '2019-07-18 09:03:55'),
(6, 'RPL09', 'abcde', 'abcde@gmail.com', '07073720191844abcde.pdf', NULL, 0, NULL, NULL, NULL, 0, 0, '2019-07-18 11:07:44', 'bayesh', '2019-07-18 08:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_code` varchar(96) DEFAULT NULL,
  `dept_name` varchar(384) DEFAULT NULL,
  `Existing_carder` int(5) DEFAULT NULL,
  `allowed_carder` int(5) DEFAULT NULL,
  `description` varchar(768) DEFAULT NULL,
  `cluster_code` varchar(48) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_code`, `dept_name`, `Existing_carder`, `allowed_carder`, `description`, `cluster_code`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'MIS', 'Management Information System ', 14, 15, 'MIS', 'US002', '2019-06-25 08:54:19', 'SysAuto', '2019-06-25 03:24:19'),
(5, 'Planing', 'Planing', 98, 100, 'Planing ', 'US002', '2019-07-01 08:55:27', 'SysAuto', '2019-07-01 03:25:27'),
(6, 'FGS', 'Finishing Good Shipment', 14, 15, '', 'US002', '2019-07-01 15:24:03', 'cayesh', '2019-07-01 09:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `local_code` varchar(32) DEFAULT NULL,
  `e_from` varchar(64) DEFAULT NULL,
  `e_to` text,
  `replyto` varchar(64) DEFAULT NULL,
  `cc` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  `attachment` text,
  `images` text,
  `attachment_path` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '1 : failed',
  `error_details` text,
  `create_date` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_replacment`
--

CREATE TABLE `emp_replacment` (
  `id` int(11) NOT NULL,
  `request_id` varchar(10) NOT NULL,
  `epf` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_replacment`
--

INSERT INTO `emp_replacment` (`id`, `request_id`, `epf`, `name`, `designation`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'RPL012', 1233, 'abcd', 'abcd', '2019-07-12 14:47:40', 'cayesh', '2019-07-12 09:17:40'),
(2, 'RPL012', 1234, 'www', '', '2019-07-12 14:47:40', 'cayesh', '2019-07-12 09:17:40'),
(3, 'RPL013', 0, '', '', '2019-07-18 11:00:48', 'Lthilakshi', '2019-07-18 05:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `jjm_cluster`
--

CREATE TABLE `jjm_cluster` (
  `id` int(11) NOT NULL,
  `cluster_code` varchar(48) NOT NULL,
  `cluster_name` varchar(5) NOT NULL,
  `description` varchar(768) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jjm_cluster`
--

INSERT INTO `jjm_cluster` (`id`, `cluster_code`, `cluster_name`, `description`, `create_date`, `create_user`, `last_update`) VALUES
(2, 'US002', 'US', 'United States', '2019-06-24 14:33:39', 'SysAuto', '2019-06-24 09:58:06'),
(3, 'UK001', 'UK', 'United Kingdom', '2019-06-24 15:23:57', 'SysAuto', '2019-06-26 11:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `jjm_company`
--

CREATE TABLE `jjm_company` (
  `id` int(11) NOT NULL,
  `company_code` varchar(48) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `description` varchar(768) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jjm_company`
--

INSERT INTO `jjm_company` (`id`, `company_code`, `company_name`, `description`, `create_date`, `create_user`, `last_update`) VALUES
(1, '100', 'Jay Jay Mills Lanka (Pvt) Ltd', '', '2019-06-25 12:19:12', NULL, '2019-06-26 11:31:12'),
(2, '101', 'Jay Jay Childrenswear (Pvt) Ltd', 'JJM', '2019-06-25 12:19:12', 'SysAuto', '2019-06-26 11:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `jjm_plant`
--

CREATE TABLE `jjm_plant` (
  `id` int(11) NOT NULL,
  `plant_code` varchar(48) NOT NULL,
  `plant_name` varchar(5) NOT NULL,
  `description` varchar(768) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jjm_plant`
--

INSERT INTO `jjm_plant` (`id`, `plant_code`, `plant_name`, `description`, `create_date`, `create_user`, `last_update`) VALUES
(1, '100C5', 'C5', 'C5', NULL, NULL, '2019-06-25 04:55:13'),
(2, '100A6', 'A6', 'A6', NULL, NULL, '2019-06-25 04:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `manpower_request`
--

CREATE TABLE `manpower_request` (
  `id` int(5) NOT NULL,
  `request_id` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `no_of_employees` int(10) NOT NULL,
  `budget_provision` decimal(10,0) NOT NULL,
  `available_carder` int(5) NOT NULL,
  `plant_code` varchar(48) NOT NULL,
  `cluster_code` varchar(5) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `comments` varchar(769) NOT NULL,
  `Approve_status` varchar(5) DEFAULT 'A',
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manpower_request`
--

INSERT INTO `manpower_request` (`id`, `request_id`, `designation`, `no_of_employees`, `budget_provision`, `available_carder`, `plant_code`, `cluster_code`, `request_date`, `comments`, `Approve_status`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'RPL01', 'Execative', 0, '0', 12, '', 'UK001', '2019-06-11', '232', 'OM-A', '2019-06-29 08:15:19', 'SysAuto', '2019-07-17 07:07:34'),
(2, 'NEW01', 'Execative', 0, '231', 23223, '', 'US002', NULL, '232', 'MD-A', '2019-06-29 08:15:19', 'SysAuto', '2019-07-15 04:33:52'),
(3, 'RPL02', 'Execative', 0, '231', 23223, '', 'US002', NULL, '232', 'IE-A', '2019-06-29 08:15:19', 'SysAuto', '2019-07-03 04:49:47'),
(4, 'RPL03', 'Execative', 0, '231', 23223, '', NULL, NULL, '232', 'A', '2019-06-29 08:15:19', 'SysAuto', '2019-07-02 03:47:50'),
(5, 'NEW02', 'Execative', 0, '231', 23223, '', 'US002', NULL, '232', 'A', '2019-06-29 08:15:19', 'SysAuto', '2019-07-09 10:27:35'),
(6, 'NEW011', 'Execative', 2, '0', 12, '', 'US002', NULL, 'sdsa', 'OM-A', '2019-06-29 14:12:15', 'SysAuto', '2019-07-03 05:27:39'),
(9, 'NEW03', 'Execative', 2, '0', 12, '', 'US002', NULL, 'sdsa', 'HR-A', '2019-06-29 14:24:26', 'SysAuto', '2019-07-09 10:27:47'),
(13, 'RPL04', 'Execative', 2, '0', 12, '', NULL, NULL, 'sda', 'A', '2019-06-29 14:43:35', 'SysAuto', '2019-07-02 03:47:47'),
(14, 'RPL05', 'Execative', 2, '0', 2, '100C5', 'US002', '2019-06-11', 'sadasd', 'OM-A', '2019-06-29 14:58:01', 'SysAuto', '2019-07-15 04:52:36'),
(18, 'RPL06', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'HR-A', '2019-06-29 15:16:46', 'SysAuto', '2019-07-03 04:49:43'),
(19, 'RPL07', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'HR-A', '2019-06-29 15:17:34', 'SysAuto', '2019-07-03 04:49:42'),
(20, 'RPL08', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'HR-A', '2019-06-29 15:18:09', 'SysAuto', '2019-07-03 04:49:41'),
(21, 'RPL09', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'OM-A', '2019-06-29 15:21:17', 'SysAuto', '2019-07-18 05:35:10'),
(22, 'NEW04', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'HR-A', '2019-06-29 15:24:08', 'SysAuto', '2019-07-03 04:49:39'),
(23, 'NEW05', 'Execative', 2, '0', 34, '100C5', 'UK001', '2019-06-05', 'ewrr', 'OM-A', '2019-06-29 15:35:28', 'SysAuto', '2019-07-03 05:28:56'),
(24, 'NEW06', 'Execative', 2, '0', 34, '100C5', 'US002', '2019-06-05', 'ewrr', 'HR-A', '2019-06-29 15:36:37', 'SysAuto', '2019-07-09 08:43:01'),
(25, 'NEW07', 'Executive', 12, '0', 22323, '100C5', 'US002', '2019-06-11', 'wewedw', 'A', '2019-06-29 15:38:33', 'SysAuto', '2019-07-03 04:49:57'),
(26, 'NEW08', 'Executive', 12, '0', 22323, '100C5', NULL, '2019-06-11', 'wewedw', 'A', '2019-06-29 15:40:28', 'SysAuto', '2019-07-02 03:47:41'),
(27, 'NEW09', 'Execative', 12, '231', 12, '100C5', 'US002', '2019-07-10', 'asdasd', 'A', '2019-07-03 10:12:11', 'cayesh', '2019-07-03 04:42:11'),
(28, 'NEW010', 'funtional', 22, '231', 12, '100C5', 'US002', '2019-07-10', '', 'MD-A', '2019-07-03 10:12:42', 'cayesh', '2019-07-18 05:36:16'),
(41, 'NEW012', 'Execative', 2, '0', 23, '100A6', 'US002', '2019-07-10', '', 'HR-A', '2019-07-10 08:06:06', 'jchathuranga', '2019-07-10 03:12:56'),
(42, 'NEW013', 'Execative', 12, '0', 11, '100A6', 'US002', '2019-07-17', '', 'A', '2019-07-10 08:06:58', 'jchathuranga', '2019-07-10 02:36:58'),
(43, 'NEW014', 'Execative', 12, '0', 11, '100A6', 'US002', '2019-07-17', '', 'A', '2019-07-10 08:07:38', 'jchathuranga', '2019-07-10 02:37:38'),
(44, 'NEW015', 'Execative', 12, '0', 12, '100C5', 'US002', '2019-07-11', '', 'A', '2019-07-10 09:01:04', 'cayesh', '2019-07-10 03:31:04'),
(50, 'NEW016', 'Execative', 12, '123', 11, '100A6', 'US002', '2019-07-17', '', 'A', '2019-07-10 09:36:37', 'jchathuranga', '2019-07-10 04:06:37'),
(51, 'NEW017', 'Execative', 12, '123', 11, '100A6', 'US002', '2019-07-17', '', 'A', '2019-07-10 09:37:50', 'jchathuranga', '2019-07-10 04:07:50'),
(52, 'NEW018', '', 12, '232', 12, '100C5', 'US002', '2019-07-18', '', 'A', '2019-07-10 12:30:54', 'cayesh', '2019-07-10 07:00:54'),
(53, 'NEW019', '', 23, '0', 12, '100C5', 'US002', '2019-07-17', '', 'HR-A', '2019-07-10 12:31:44', 'cayesh', '2019-07-18 05:31:46'),
(54, 'NEW020', '', 12, '0', 2, '100C5', 'US002', '2019-07-17', '', 'A', '2019-07-10 12:33:02', 'cayesh', '2019-07-10 07:03:02'),
(55, 'NEW021', '', 21, '0', 12, '100C5', 'US002', '2019-07-17', '', 'A', '2019-07-10 12:34:49', 'cayesh', '2019-07-10 07:04:49'),
(56, 'NEW022', '', 12, '0', 11, '100C5', 'US002', '2019-07-10', '', 'A', '2019-07-10 12:36:18', 'cayesh', '2019-07-10 07:06:18'),
(57, 'NEW023', '', 21, '123', 12, '100C5', 'US002', '2019-07-25', '12', 'A', '2019-07-10 12:38:33', 'cayesh', '2019-07-10 07:08:33'),
(58, 'NEW024', 'Execative', 12, '0', 2, '100C5', 'US002', '2019-07-19', '', 'A', '2019-07-10 12:40:31', 'cayesh', '2019-07-10 07:10:31'),
(59, 'NEW025', 'Execative', 22, '0', 2, '100C5', 'US002', '2019-07-18', '', 'A', '2019-07-10 12:43:59', 'cayesh', '2019-07-10 07:13:59'),
(60, 'NEW026', '', 12, '2323', 12, '100C5', 'US002', '2019-07-25', '', 'A', '2019-07-10 12:46:51', 'cayesh', '2019-07-10 07:16:51'),
(61, 'NEW027', 'Execative', 23, '0', 23, '100C5', 'US002', '2019-07-24', 'asd', 'A', '2019-07-10 12:53:24', 'cayesh', '2019-07-10 07:23:24'),
(63, 'NEW028', 'Execative', 12, '231', 12, '100C5', 'US002', '2019-07-18', '', 'A', '2019-07-10 13:01:20', 'cayesh', '2019-07-10 07:31:20'),
(64, 'NEW029', 'Execative', 12, '0', 12, '100C5', 'US002', '2019-07-11', '', 'A', '2019-07-10 13:01:52', 'cayesh', '2019-07-10 07:31:52'),
(65, 'NEW030', 'funtional', 23, '0', 12, '100C5', 'US002', '2019-07-18', '', 'A', '2019-07-10 13:02:49', 'cayesh', '2019-07-10 07:32:49'),
(66, 'RPL010', 'null', 2, '0', 12, '100C5', 'US002', '2019-07-25', '', 'A', '2019-07-12 14:38:55', 'cayesh', '2019-07-12 09:08:55'),
(68, 'RPL011', 'null', 2, '231', 12, '100C5', 'US002', '2019-07-12', '', 'A', '2019-07-12 14:43:02', 'cayesh', '2019-07-12 09:13:02'),
(69, 'RPL012', 'null', 2, '231', 12, '100C5', 'US002', '2019-07-12', '', 'A', '2019-07-12 14:47:38', 'cayesh', '2019-07-12 09:17:38'),
(70, 'RPL013', 'null', 2, '0', 12, '100C5', 'US002', '2019-07-25', '', 'A', '2019-07-18 11:00:46', 'Lthilakshi', '2019-07-18 05:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `code` varchar(90) NOT NULL,
  `code_2` varchar(16) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `link_script` varchar(32) DEFAULT NULL,
  `link_param` text,
  `notification_header` varchar(128) DEFAULT NULL,
  `notification` text,
  `is_enable` int(1) DEFAULT NULL,
  `is_read` int(1) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `display_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_notification`
--

INSERT INTO `system_notification` (`id`, `code`, `code_2`, `user_name`, `link_script`, `link_param`, `notification_header`, `notification`, `is_enable`, `is_read`, `icon`, `display_date`, `create_date`, `last_update`) VALUES
(2, 'RPL06', 'HR-A', 'jchathuranga', 'Request_action.php', NULL, 'HR Accepted', '<a class="dropdown-item d-flex align-items-center" href="Request_action.php">\r\n        <div class="mr-3">\r\n            <div class="icon-circle bg-primary">\r\n                <i class="fas fa-file-alt text-white"></i>\r\n            </div>\r\n        </div>\r\n        <div>\r\n            <div class="small text-gray-500">December 20, 2019</div>\r\n            <span class="font-weight-bold">A new monthly report is ready to download!</span>\r\n        </div>\r\n    </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 14:42:48', NULL, '2019-07-09 03:20:22'),
(3, 'RPL02', 'IE-A', 'susantha', 'Request_action.php', '', 'IE Accepted', '<a class="dropdown-item d-flex align-items-center" href="Request_action.php">\r\n        <div class="mr-3">\r\n            <div class="icon-circle bg-primary">\r\n                <i class="fas fa-file-alt text-white"></i>\r\n            </div>\r\n        </div>\r\n        <div>\r\n            <div class="small text-gray-500">December 20, 2019</div>\r\n            <span class="font-weight-bold">A new monthly report is ready to download!</span>\r\n        </div>\r\n    </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 14:42:48', '2019-07-03 14:42:48', '2019-07-09 03:20:26'),
(4, 'NEW011', 'OM-A', 'bayesh', 'Request_action.php', '', 'New Request', '<a class="dropdown-item d-flex align-items-center" href="Request_action.php">\r\n        <div class="mr-3">\r\n            <div class="icon-circle bg-primary">\r\n                <i class="fas fa-file-alt text-white"></i>\r\n            </div>\r\n        </div>\r\n        <div>\r\n            <div class="small text-gray-500">December 20, 2019</div>\r\n            <span class="font-weight-bold">A new monthly report is ready to download!</span>\r\n        </div>\r\n    </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 14:42:48', '2019-07-03 14:42:48', '2019-07-09 03:20:30'),
(7, 'NEW010', 'IE-A', 'jchathuranga', 'Request_action.php', '', 'IE-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From IE-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-09 15:48:05', '2019-07-09 10:18:43'),
(8, 'NEW03', 'HR-A', 'cayesh', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW03 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-09 15:57:49', '2019-07-09 10:27:49'),
(9, 'NEW03', 'HR-A', 'jchathuranga', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW03 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-09 15:57:49', '2019-07-09 10:27:49'),
(10, 'NEW012', 'HR-A', 'cayesh', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW012 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-10 08:42:58', '2019-07-10 03:12:58'),
(11, 'NEW012', 'HR-A', 'jchathuranga', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW012 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-10 08:42:58', '2019-07-10 03:12:58'),
(12, 'NEW017', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW017 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 09:37:50', '2019-07-10 09:37:52', '2019-07-10 04:07:52'),
(13, 'NEW018', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW018 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:30:54', '2019-07-10 12:30:56', '2019-07-10 07:00:56'),
(14, 'NEW019', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW019 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:31:44', '2019-07-10 12:31:46', '2019-07-10 07:01:46'),
(15, 'NEW020', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW020 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:33:02', '2019-07-10 12:33:04', '2019-07-10 07:03:04'),
(16, 'NEW021', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW021 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:34:49', '2019-07-10 12:34:51', '2019-07-10 07:04:51'),
(17, 'NEW022', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW022 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:36:18', '2019-07-10 12:36:20', '2019-07-10 07:06:20'),
(18, 'NEW023', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW023 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:38:33', '2019-07-10 12:38:35', '2019-07-10 07:08:35'),
(19, 'NEW024', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW024 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:40:31', '2019-07-10 12:40:33', '2019-07-10 07:10:33'),
(20, 'NEW025', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW025 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:43:59', '2019-07-10 12:44:01', '2019-07-10 07:14:01'),
(21, 'NEW026', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW026 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:46:51', '2019-07-10 12:46:53', '2019-07-10 07:16:53'),
(22, 'NEW027', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW027 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:53:24', '2019-07-10 12:53:26', '2019-07-10 07:23:26'),
(23, 'NEW028', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW028 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:55:08', '2019-07-10 12:55:10', '2019-07-10 07:25:10'),
(25, 'NEW029', 'A', 'cayesh', 'Request_action.php', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW029 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 13:01:52', '2019-07-10 13:01:54', '2019-07-10 07:31:54'),
(26, 'NEW01', 'MD-A', 'bayesh', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW01 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 08:15:19', '2019-07-15 10:17:51', '2019-07-15 04:47:51'),
(27, 'NEW01', 'MD-A', 'cayesh', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW01 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 08:15:19', '2019-07-15 10:17:51', '2019-07-15 04:47:51'),
(28, 'NEW01', 'MD-A', 'jchathuranga', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW01 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 08:15:19', '2019-07-15 10:17:51', '2019-07-15 04:47:51'),
(29, 'NEW01', 'MD-A', 'kasun', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW01 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 08:15:19', '2019-07-15 10:17:51', '2019-07-15 04:47:51'),
(34, 'RPL01', 'CV_A', 'cayesh', '', '', 'CV-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>January 01 , 70</div>\r\n                                <span class=''font-weight-bold''>A CV Accepted on Request [ RPL01 ] By  jchathuranga</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-17 11:02:42', '2019-07-17 05:32:42'),
(35, 'RPL01', 'CV_A', 'jchathuranga', '', '', 'CV-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>January 01 , 70</div>\r\n                                <span class=''font-weight-bold''>A CV Accepted on Request [ RPL01 ] By  jchathuranga</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-17 11:02:42', '2019-07-17 05:32:42'),
(36, 'RPL013', 'A', 'cayesh', '', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL013 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-18 11:00:46', '2019-07-18 11:00:48', '2019-07-18 05:30:48'),
(37, 'RPL013', 'A', 'susantha', '', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL013 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-18 11:00:46', '2019-07-18 11:00:48', '2019-07-18 05:30:48'),
(38, 'RPL013', 'A', 'Lthilakshi', '', '', 'New Request', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL013 ] Aprove From New Request</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-18 11:00:46', '2019-07-18 11:00:48', '2019-07-18 05:30:48'),
(39, 'NEW019', 'HR-A', 'cayesh', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW019 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:31:44', '2019-07-18 11:01:48', '2019-07-18 05:31:48'),
(40, 'NEW019', 'HR-A', 'jchathuranga', 'Request_action.php', '', 'HR-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 10 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW019 ] Aprove From HR-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-10 12:31:44', '2019-07-18 11:01:48', '2019-07-18 05:31:48'),
(41, 'RPL09', 'OM-A', 'cayesh', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL09 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 15:21:17', '2019-07-18 11:05:12', '2019-07-18 05:35:12'),
(42, 'RPL09', 'OM-A', 'kasun', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL09 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 15:21:17', '2019-07-18 11:05:12', '2019-07-18 05:35:12'),
(43, 'RPL09', 'OM-A', 'bayesh', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>June 29 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ RPL09 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-06-29 15:21:17', '2019-07-18 11:05:12', '2019-07-18 05:35:12'),
(44, 'NEW010', 'OM-A', 'cayesh', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:05:28', '2019-07-18 05:35:28'),
(45, 'NEW010', 'OM-A', 'kasun', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:05:28', '2019-07-18 05:35:28'),
(46, 'NEW010', 'OM-A', 'bayesh', 'Request_action.php', '', 'OM-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From OM-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:05:28', '2019-07-18 05:35:28'),
(47, 'NEW010', 'MD-A', 'cayesh', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:06:18', '2019-07-18 05:36:18'),
(48, 'NEW010', 'MD-A', 'susantha', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:06:18', '2019-07-18 05:36:18'),
(49, 'NEW010', 'MD-A', 'Lthilakshi', 'Request_action.php', '', 'MD-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 03 , 19</div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ NEW010 ] Aprove From MD-Accepted</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '2019-07-03 10:12:42', '2019-07-18 11:06:18', '2019-07-18 05:36:18'),
(50, 'RPL09', 'CV_A', 'cayesh', '#', '', 'CV-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>January 01 , 70</div>\r\n                                <span class=''font-weight-bold''>A CV Accepted on Request [ RPL09 ] By  Chathuranga Jayasinghe</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 11:35:27', '2019-07-18 06:05:27'),
(51, 'RPL09', 'CV_A', 'susantha', '#', '', 'CV-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>January 01 , 70</div>\r\n                                <span class=''font-weight-bold''>A CV Accepted on Request [ RPL09 ] By  Chathuranga Jayasinghe</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 11:35:27', '2019-07-18 06:05:27'),
(52, 'RPL09', 'CV_A', 'Lthilakshi', '#', '', 'CV-Accepted', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>January 01 , 70</div>\r\n                                <span class=''font-weight-bold''>A CV Accepted on Request [ RPL09 ] By  Chathuranga Jayasinghe</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 11:35:27', '2019-07-18 06:05:27'),
(53, '', '', '', '', '', '', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''></div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ 1 ] Aprove From </span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 12:17:39', '2019-07-18 06:47:39'),
(54, '', '', 'jchathuranga', '', '', '', '<a class=''dropdown-item d-flex align-items-center'' href=''Request_action.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''></div>\r\n                                <span class=''font-weight-bold''>A new request in request ID [ 1 ] Aprove From </span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 12:23:13', '2019-07-18 06:53:13'),
(55, 'RPL09', '', 'jchathuranga', 'inteview_shedule_approve.php', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''inteview_shedule_approve.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>2019-07-18</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 12:33:27', '2019-07-18 08:46:45'),
(56, 'RPL09', '', 'jchathuranga', 'inteview_shedule_approve.php', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''inteview_shedule_approve.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>2019-07-18</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 12:34:09', '2019-07-18 08:46:41'),
(57, 'RPL09', '', 'jchathuranga', 'inteview_shedule_approve.php', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''inteview_shedule_approve.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>2019-07-18</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 12:34:30', '2019-07-18 08:46:40'),
(60, 'RPL01', '', 'susantha', 'calling_interview.php', '', 'Interview Schedule Approv', '<a class=''dropdown-item d-flex align-items-center'' href=''inteview_shedule_approve.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>2019-07-18</div>\r\n                                <span class=''font-weight-bold''> A Scheduled interview has Approve [ RPL01 ] By - jchathuranga</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:11:05', '2019-07-18 08:46:25'),
(61, 'RPL01', '', 'Lthilakshi', 'calling_interview.php', '', 'Interview Schedule Approv', '<a class=''dropdown-item d-flex align-items-center'' href=''inteview_shedule_approve.php''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>2019-07-18</div>\r\n                                <span class=''font-weight-bold''> A Scheduled interview has Approve [ RPL01 ] By - jchathuranga</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:11:05', '2019-07-18 08:46:49'),
(62, 'RPL09', '', 'susantha', '', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:30:18', '2019-07-18 09:00:18'),
(63, 'RPL09', '', 'Lthilakshi', '', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:30:18', '2019-07-18 09:00:18'),
(64, 'RPL09', '', 'susantha', '', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:33:55', '2019-07-18 09:03:55'),
(65, 'RPL09', '', 'Lthilakshi', '', '', 'Interview Schedule', '<a class=''dropdown-item d-flex align-items-center'' href=''#''>\r\n                            <div class=''mr-3''''>\r\n                                <div class=''icon-circle bg-primary''>\r\n                                    <i class=''fas fa-info fa-fw text-white''></i>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <div class=''small text-gray-500''>July 18 , 19</div>\r\n                                <span class=''font-weight-bold''>A new Interview has schedule on[  ] at [ ] By - susantha</span>\r\n                            </div>\r\n                        </a>', 1, 0, 'fas fa-info fa-fw', '0000-00-00 00:00:00', '2019-07-18 14:33:55', '2019-07-18 09:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(96) DEFAULT NULL,
  `password` varchar(768) DEFAULT NULL,
  `calling_name` varchar(96) DEFAULT NULL,
  `full_name` varchar(768) DEFAULT NULL,
  `email_address` varchar(192) DEFAULT NULL,
  `emp_id` varchar(48) DEFAULT NULL,
  `sex` char(18) DEFAULT NULL,
  `designation` varchar(192) DEFAULT NULL,
  `role` varchar(96) DEFAULT NULL,
  `privilege_code` varchar(96) DEFAULT NULL,
  `company_code` varchar(48) DEFAULT NULL,
  `cluster_code` varchar(48) DEFAULT NULL,
  `dept_code` varchar(96) DEFAULT NULL,
  `plant_code` varchar(48) DEFAULT NULL,
  `tel_1` varchar(96) DEFAULT NULL,
  `tel_2` varchar(96) DEFAULT NULL,
  `nic` varchar(48) DEFAULT NULL,
  `profile_pic` varchar(192) DEFAULT 'user.png',
  `login_status` int(1) DEFAULT NULL,
  `is_enable` int(1) DEFAULT NULL,
  `Approve_level_1` int(1) DEFAULT NULL,
  `Approve_level_2` int(1) DEFAULT NULL,
  `Approve_level_3` int(1) DEFAULT NULL,
  `Approve_level_4` int(1) DEFAULT NULL,
  `Approve_US` int(1) DEFAULT NULL,
  `Approve_UK` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `user_name`, `password`, `calling_name`, `full_name`, `email_address`, `emp_id`, `sex`, `designation`, `role`, `privilege_code`, `company_code`, `cluster_code`, `dept_code`, `plant_code`, `tel_1`, `tel_2`, `nic`, `profile_pic`, `login_status`, `is_enable`, `Approve_level_1`, `Approve_level_2`, `Approve_level_3`, `Approve_level_4`, `Approve_US`, `Approve_UK`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'cayesh', '202cb962ac59075b964b07152d234b70', NULL, 'Supper Admin', 'bayesh@jayjaymills.lk', '18626', 'male', 'Execative', 'SupperAdmin', '', '100', 'US002', 'MIS', '100C5', '0779796410', '', '', '11075220191809cayesh .png', 1, 1, 1, 1, NULL, 1, 1, NULL, '2019-06-25 12:27:27', 'SysAuto', '2019-07-18 10:00:50'),
(3, 'jchathuranga', '202cb962ac59075b964b07152d234b70', NULL, 'Chathuranga Jayasinghe', 'jchathuranga@jayjaymills.lk', '1231', 'male', 'Executive', 'DPTHead', '', '100', 'US002', 'MIS', '100A6', '0715536668', '', '', 'user.png', 1, 1, 0, 1, 0, NULL, 1, NULL, '2019-06-26 08:45:18', 'SysAuto', '2019-07-18 02:38:28'),
(5, 'susantha', '202cb962ac59075b964b07152d234b70', NULL, 'Susantha', 'jchathuranga@jayjaymills.lk', '1212', 'male', 'Execative', 'HROfficer', '', '100', 'US002', 'MIS', '100C5', '0779796410', '', '', 'user.png', 1, 1, 1, NULL, 0, NULL, 1, NULL, '2019-07-01 14:49:12', 'cayesh', '2019-07-18 02:38:27'),
(6, 'kasun', '202cb962ac59075b964b07152d234b70', NULL, 'kasun ariyadasa', 'Akasun@jayjaymils.lk', '2112', 'male', 'Executive', 'Approve', '', '100', 'US002', 'MIS', '100C5', '0111111111', '', '', 'user.png', 1, 1, 0, 0, 1, 1, 1, 0, '2019-07-02 11:48:45', 'cayesh', '2019-07-18 05:34:18'),
(7, 'bayesh', '202cb962ac59075b964b07152d234b70', NULL, 'Ayesh Bandara', 'cayesh@jayjaymils.lk', '2112', 'male', 'MD', 'Approve', '', '100', 'US002', 'MIS', '100C5', '0111111111', '', '', 'user.png', 1, 1, 0, 0, 0, 1, 1, 0, '2019-07-02 11:48:45', 'cayesh', '2019-07-18 10:00:04'),
(8, 'Lthilakshi', '202cb962ac59075b964b07152d234b70', NULL, 'Thilakshi Liyanaarachchi', 'lthilakshi@jayjaymills.lk', '1242', 'female', 'Programmer', 'HROfficer', '', '100', 'US002', 'MIS', '100C5', '0112124121', '', '', 'user.png', 1, 1, 1, 0, 0, 0, 1, 1, '2019-07-18 10:56:11', 'susantha', '2019-07-18 10:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `system_user_privilege`
--

CREATE TABLE `system_user_privilege` (
  `id` int(11) NOT NULL,
  `role_code` varchar(96) DEFAULT NULL,
  `privilege_code` varchar(96) NOT NULL,
  `is_enable` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_code` varchar(96) DEFAULT NULL,
  `description` varchar(384) DEFAULT NULL,
  `is_enable` int(1) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(96) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_code`, `description`, `is_enable`, `create_date`, `create_user`, `last_update`) VALUES
(1, 'Admin', 'Administrator', 1, '2019-06-25 10:06:32', 'Ayesh', '2019-06-25 04:36:32'),
(2, 'SupperAdmin', 'Supper Admin', 1, '2019-06-25 15:05:14', 'SysAuto', '2019-06-26 11:14:41'),
(3, 'HROfficer', 'HR Officer', 1, '2019-07-01 11:01:44', 'cayesh', '2019-07-01 05:31:44'),
(4, 'DPTHead', 'Department Head', 1, '2019-06-25 10:06:32', 'Ayesh', '2019-06-25 04:36:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplicant_cv`
--
ALTER TABLE `aplicant_cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dept_code` (`dept_code`);

--
-- Indexes for table `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `local_code` (`local_code`);

--
-- Indexes for table `emp_replacment`
--
ALTER TABLE `emp_replacment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjm_cluster`
--
ALTER TABLE `jjm_cluster`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cluster_code` (`cluster_code`);

--
-- Indexes for table `jjm_company`
--
ALTER TABLE `jjm_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_code` (`company_code`);

--
-- Indexes for table `jjm_plant`
--
ALTER TABLE `jjm_plant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plant_code` (`plant_code`);

--
-- Indexes for table `manpower_request`
--
ALTER TABLE `manpower_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `request_id` (`request_id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `system_user_privilege`
--
ALTER TABLE `system_user_privilege`
  ADD PRIMARY KEY (`privilege_code`),
  ADD KEY `id` (`id`),
  ADD KEY `role_code` (`role_code`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_code` (`role_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplicant_cv`
--
ALTER TABLE `aplicant_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_replacment`
--
ALTER TABLE `emp_replacment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jjm_cluster`
--
ALTER TABLE `jjm_cluster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jjm_company`
--
ALTER TABLE `jjm_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jjm_plant`
--
ALTER TABLE `jjm_plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `manpower_request`
--
ALTER TABLE `manpower_request`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `system_user_privilege`
--
ALTER TABLE `system_user_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `system_user_privilege`
--
ALTER TABLE `system_user_privilege`
  ADD CONSTRAINT `system_user_privilege_ibfk_1` FOREIGN KEY (`role_code`) REFERENCES `user_roles` (`role_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
