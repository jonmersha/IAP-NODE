-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2023 at 04:09 AM
-- Server version: 8.0.26
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beshegercom_iap`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditable_area`
--

CREATE TABLE `auditable_area` (
  `a_o_id` int DEFAULT NULL,
  `area_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auditable_area`
--

INSERT INTO `auditable_area` (`a_o_id`, `area_id`, `name`) VALUES
(1, 1, 'Cutomer Experiance');

-- --------------------------------------------------------

--
-- Table structure for table `audit_checklist`
--

CREATE TABLE `audit_checklist` (
  `a_o_id` int DEFAULT NULL,
  `c_id` int NOT NULL,
  `checking_point` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_objectives` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `riks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_eng`
--

CREATE TABLE `audit_eng` (
  `plan_id` int NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assignment_date` date DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `enagement_status` int DEFAULT NULL,
  `contact_person` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_finding`
--

CREATE TABLE `audit_finding` (
  `plan_id` int DEFAULT NULL,
  `finding_id` int NOT NULL,
  `finding_descriotion` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `criateria` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impact` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recomendation` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registered_by` int DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `auditees_id` int DEFAULT NULL,
  `auditee_response` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_date` date DEFAULT NULL,
  `rectification_status` int DEFAULT NULL,
  `rectification_date` date DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `rectification_confirmed` int DEFAULT NULL,
  `inReport` int DEFAULT NULL,
  `auditors_justification` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_object`
--

CREATE TABLE `audit_object` (
  `id` int NOT NULL,
  `audit_cat` int NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_object`
--

INSERT INTO `audit_object` (`id`, `audit_cat`, `name`, `description`) VALUES
(1, 1, 'IT service management', 'An ITSM (Information Technology Service Management) audit is a process of evaluating and assessing the effectiveness and efficiency of an organization\'s IT service management processes. The purpose of an ITSM audit is to ensure that an organization is meeting its IT service management goals and objectives, and to identify areas for improvement.\r\n\r\nThe ITSM audit typically includes a review of the organization\'s policies, procedures, and documentation related to IT service management. The audit also assesses how well the organization is implementing and adhering to these policies and procedures.');

-- --------------------------------------------------------

--
-- Table structure for table `audit_objectives`
--

CREATE TABLE `audit_objectives` (
  `object_id` int DEFAULT NULL,
  `objective_id` int NOT NULL,
  `objecive` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_plan`
--

CREATE TABLE `audit_plan` (
  `id` int NOT NULL,
  `audit_subject` int DEFAULT NULL,
  `auditees` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `audit_type` int DEFAULT NULL,
  `audit_year` int DEFAULT NULL,
  `risk_score` float DEFAULT NULL,
  `risk_level` int DEFAULT NULL,
  `plan_start_date` date DEFAULT NULL,
  `plan_end_date` date DEFAULT NULL,
  `quarter_p` int DEFAULT NULL,
  `month_p` int DEFAULT NULL,
  `rect_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rectification_percentage` double DEFAULT NULL,
  `audit_status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_plan`
--

INSERT INTO `audit_plan` (`id`, `audit_subject`, `auditees`, `team_id`, `audit_type`, `audit_year`, `risk_score`, `risk_level`, `plan_start_date`, `plan_end_date`, `quarter_p`, `month_p`, `rect_status`, `rectification_percentage`, `audit_status`) VALUES
(50, 1, 7, 5, 1, 1, 15, 3, '2023-03-15', '2023-03-22', 3, 3, '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_program`
--

CREATE TABLE `audit_program` (
  `plan_id` int NOT NULL,
  `previous_audit_status` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methodology` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `general_objectives` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submited_by` int DEFAULT NULL,
  `submission` date DEFAULT NULL,
  `isApproved` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_date` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_questioner`
--

CREATE TABLE `audit_questioner` (
  `a_o_id` int DEFAULT NULL,
  `q_id` int NOT NULL,
  `question` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objective` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linked_risk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_questioner`
--

INSERT INTO `audit_questioner` (`a_o_id`, `q_id`, `question`, `objective`, `linked_risk`) VALUES
(1, 1, 'How did you describe your procees service managemnt', 'know the levels', 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_status`
--

CREATE TABLE `audit_status` (
  `id` int NOT NULL,
  `status_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_status`
--

INSERT INTO `audit_status` (`id`, `status_name`) VALUES
(3, 'Active'),
(6, 'closed'),
(1, 'pending'),
(5, 'post-enagment'),
(2, 'pre_audit'),
(4, 'Reported');

-- --------------------------------------------------------

--
-- Table structure for table `audit_type`
--

CREATE TABLE `audit_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_type`
--

INSERT INTO `audit_type` (`id`, `name`) VALUES
(3, 'BRANCH AUDIT'),
(2, 'HEAD OFFICE AUDIT'),
(5, 'IFB AUDIT'),
(1, 'IT AUDIT'),
(4, 'SPECIAL AUDIT');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int NOT NULL,
  `emp_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firist_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `midle_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_ou` int DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_auditor` int DEFAULT NULL,
  `email_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_email_confirmed` int DEFAULT NULL,
  `organ_type` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `emp_id`, `firist_name`, `midle_name`, `last_name`, `employee_ou`, `job_title`, `is_auditor`, `email_id`, `phone_number`, `office_location`, `is_email_confirmed`, `organ_type`) VALUES
(4, '1234', 'Tafese', 'Fana', 'Biru', NULL, 'Chief Internal Audutor', 1, 'emil', '123', 'HEad', 1, 1),
(5, '676', 'Deribe', 'Asfaw', 'Hurisa', NULL, 'PResident', 1, NULL, NULL, NULL, NULL, NULL),
(6, '667', 'Chalchisa', 'Deber', 'Edae', NULL, 'Director Corporate Audit', 1, NULL, NULL, NULL, NULL, NULL),
(7, '668', 'kinfe', 'Shibiru', 'xps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '669', 'Yohannes', 'Mitike', 'Mersha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '665', 'Zelalem', 'Degefa', 'Fufa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '664', 'Addisu', 'Kamsur', 'Chibsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '777', 'Shimelis', 'Legese', 'sda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '888', 'Yogezu ', 'Balcha', 'JOro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '999', 'Mesfin', 'Service', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_ou`
--

CREATE TABLE `employee_ou` (
  `emp_id` int NOT NULL,
  `ou_id` int DEFAULT NULL,
  `active_status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_ou`
--

INSERT INTO `employee_ou` (`emp_id`, `ou_id`, `active_status`) VALUES
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `engagement_to_audtees`
--

CREATE TABLE `engagement_to_audtees` (
  `emp_id` int NOT NULL,
  `program_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `engagement_to_ou`
--

CREATE TABLE `engagement_to_ou` (
  `ou_id` int NOT NULL,
  `program_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organ_category`
--

CREATE TABLE `organ_category` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organ_category`
--

INSERT INTO `organ_category` (`id`, `name`) VALUES
(1, 'Internal Audit'),
(2, 'non internal Audit');

-- --------------------------------------------------------

--
-- Table structure for table `ou`
--

CREATE TABLE `ou` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organ_level` int DEFAULT NULL,
  `parent_ou` int DEFAULT NULL,
  `organ_type` int DEFAULT NULL,
  `ou_leader` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ou`
--

INSERT INTO `ou` (`id`, `name`, `organ_level`, `parent_ou`, `organ_type`, `ou_leader`) VALUES
(2, 'President Office', 1, NULL, 2, 5),
(3, 'Internal Audit Process', 2, 2, 1, 4),
(4, 'Corporate Adut', 3, 3, 1, 6),
(5, 'IT audit Team', 4, 4, 1, 8),
(6, 'Information System', 2, 2, 2, 11),
(7, 'ITSM', 3, 6, 2, 12),
(8, 'ITSM Team', 4, 7, 2, 13);

-- --------------------------------------------------------

--
-- Stand-in structure for view `plan_list`
-- (See below for the actual view)
--
CREATE TABLE `plan_list` (
`audit_id` int
,`audit_name` varchar(200)
,`audit_status` int
,`audit_team_id` int
,`audit_team_name` varchar(100)
,`audit_tyep` int
,`auditees_id` int
,`auditees_name` varchar(100)
,`month` int
,`plan_end_date` date
,`plan_id` int
,`plan_start_date` date
,`plan_year` varchar(200)
,`quarter` int
,`rect_status` varchar(50)
,`rectification_percentage` double
,`risk_level_id` int
,`risk_score` float
,`year_id` int
);

-- --------------------------------------------------------

--
-- Table structure for table `PLAN_RISK_ITEM`
--

CREATE TABLE `PLAN_RISK_ITEM` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `frequency` int DEFAULT NULL,
  `impact` int DEFAULT NULL,
  `audit_type` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `max_score` int DEFAULT NULL,
  `rate_` float DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PLAN_RISK_SCORE`
--

CREATE TABLE `PLAN_RISK_SCORE` (
  `plan_id` int NOT NULL,
  `risk_item_id` int NOT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_year`
--

CREATE TABLE `plan_year` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `plan_start_date` date DEFAULT NULL,
  `plan_end_date` date DEFAULT NULL,
  `curent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plan_year`
--

INSERT INTO `plan_year` (`id`, `name`, `plan_start_date`, `plan_end_date`, `curent`) VALUES
(1, '2022-23', '2022-06-30', '2023-07-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_activity`
--

CREATE TABLE `program_activity` (
  `activity_id` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `auditable_area` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_o_m`
--

CREATE TABLE `p_o_m` (
  `plan_id` int NOT NULL,
  `obj_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rectification_record`
--

CREATE TABLE `rectification_record` (
  `id` int NOT NULL,
  `plan_id` int DEFAULT NULL,
  `finding_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `risk_level`
--

CREATE TABLE `risk_level` (
  `id` int NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `short_name` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `risk_level`
--

INSERT INTO `risk_level` (`id`, `name`, `short_name`) VALUES
(1, 'LOW', 'L'),
(2, 'Medium', 'M'),
(3, 'High', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `sub_team`
--

CREATE TABLE `sub_team` (
  `id` int NOT NULL,
  `parent_team` int DEFAULT NULL,
  `team_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_team`
--

INSERT INTO `sub_team` (`id`, `parent_team`, `team_name`) VALUES
(1, 5, 'Team');

-- --------------------------------------------------------

--
-- Table structure for table `sub_team_members`
--

CREATE TABLE `sub_team_members` (
  `team_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `responsiblity` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_team_members`
--

INSERT INTO `sub_team_members` (`team_id`, `emp_id`, `responsiblity`) VALUES
(1, 9, 'team leade'),
(1, 10, 'memeber');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_ou` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `parent_ou`) VALUES
(1, 'IT audit Team', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_l`
--

CREATE TABLE `unit_l` (
  `id` int NOT NULL,
  `level_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit_l`
--

INSERT INTO `unit_l` (`id`, `level_name`) VALUES
(1, 'President'),
(2, 'Process'),
(3, 'sub-process and district'),
(4, 'Team/branch');

-- --------------------------------------------------------

--
-- Table structure for table `utable`
--

CREATE TABLE `utable` (
  `user_id` int NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `count_x` int NOT NULL DEFAULT '0',
  `lock_status` int NOT NULL DEFAULT '0',
  `pswd` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utable`
--

INSERT INTO `utable` (`user_id`, `user_name`, `is_active`, `count_x`, `lock_status`, `pswd`) VALUES
(4, 'yohannesd', 0, 0, 0, '$2b$10$ctfE79wyad3H6Avgt.recOc5Vo7AZSGkVY3HSuvGauOPdRLXLiULG');

-- --------------------------------------------------------

--
-- Structure for view `plan_list`
--
DROP TABLE IF EXISTS `plan_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hirasoftwarecom_audit`@`%` SQL SECURITY DEFINER VIEW `plan_list`  AS SELECT `audit_plan`.`id` AS `plan_id`, `audit_plan`.`audit_subject` AS `audit_id`, `audit_object`.`name` AS `audit_name`, `audit_plan`.`auditees` AS `auditees_id`, `ou`.`name` AS `auditees_name`, `audit_plan`.`team_id` AS `audit_team_id`, `audit_type`.`name` AS `audit_team_name`, `audit_plan`.`audit_type` AS `audit_tyep`, `audit_plan`.`audit_year` AS `year_id`, `plan_year`.`name` AS `plan_year`, `audit_plan`.`risk_score` AS `risk_score`, `audit_plan`.`risk_level` AS `risk_level_id`, `plan_year`.`plan_start_date` AS `plan_start_date`, `plan_year`.`plan_end_date` AS `plan_end_date`, `audit_plan`.`quarter_p` AS `quarter`, `audit_plan`.`month_p` AS `month`, `audit_plan`.`rect_status` AS `rect_status`, `audit_plan`.`rectification_percentage` AS `rectification_percentage`, `audit_plan`.`audit_status` AS `audit_status` FROM ((((`audit_plan` left join `audit_object` on((`audit_plan`.`audit_subject` = `audit_object`.`id`))) left join `ou` on((`audit_plan`.`auditees` = `ou`.`id`))) left join `plan_year` on((`audit_plan`.`audit_year` = `plan_year`.`id`))) left join `audit_type` on((`audit_object`.`audit_cat` = `audit_type`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditable_area`
--
ALTER TABLE `auditable_area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `a_o_id` (`a_o_id`);

--
-- Indexes for table `audit_checklist`
--
ALTER TABLE `audit_checklist`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `a_o_id` (`a_o_id`);

--
-- Indexes for table `audit_eng`
--
ALTER TABLE `audit_eng`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `contact_person` (`contact_person`);

--
-- Indexes for table `audit_finding`
--
ALTER TABLE `audit_finding`
  ADD PRIMARY KEY (`finding_id`),
  ADD KEY `registered_by` (`registered_by`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `audit_object`
--
ALTER TABLE `audit_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_cat` (`audit_cat`);

--
-- Indexes for table `audit_objectives`
--
ALTER TABLE `audit_objectives`
  ADD PRIMARY KEY (`objective_id`),
  ADD UNIQUE KEY `objecive` (`objecive`),
  ADD KEY `object_id` (`object_id`);

--
-- Indexes for table `audit_plan`
--
ALTER TABLE `audit_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_status` (`audit_status`),
  ADD KEY `audit_subject` (`audit_subject`),
  ADD KEY `auditees` (`auditees`),
  ADD KEY `audit_type` (`audit_type`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `audit_year` (`audit_year`),
  ADD KEY `risk_level_idx` (`risk_level`);

--
-- Indexes for table `audit_program`
--
ALTER TABLE `audit_program`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `audit_questioner`
--
ALTER TABLE `audit_questioner`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `a_o_id` (`a_o_id`);

--
-- Indexes for table `audit_status`
--
ALTER TABLE `audit_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `audit_type`
--
ALTER TABLE `audit_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_name` (`name`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD KEY `organ_type` (`organ_type`);

--
-- Indexes for table `employee_ou`
--
ALTER TABLE `employee_ou`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD KEY `ou_id` (`ou_id`);

--
-- Indexes for table `engagement_to_audtees`
--
ALTER TABLE `engagement_to_audtees`
  ADD PRIMARY KEY (`emp_id`,`program_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `engagement_to_ou`
--
ALTER TABLE `engagement_to_ou`
  ADD PRIMARY KEY (`ou_id`,`program_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `organ_category`
--
ALTER TABLE `organ_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`name`);

--
-- Indexes for table `ou`
--
ALTER TABLE `ou`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_ou` (`parent_ou`),
  ADD KEY `ou_leader` (`ou_leader`),
  ADD KEY `organ_type` (`organ_type`),
  ADD KEY `organ_level` (`organ_level`);

--
-- Indexes for table `PLAN_RISK_ITEM`
--
ALTER TABLE `PLAN_RISK_ITEM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year` (`year`),
  ADD KEY `audit_type` (`audit_type`),
  ADD KEY `frequency` (`frequency`),
  ADD KEY `impact` (`impact`);

--
-- Indexes for table `PLAN_RISK_SCORE`
--
ALTER TABLE `PLAN_RISK_SCORE`
  ADD PRIMARY KEY (`risk_item_id`,`plan_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `plan_year`
--
ALTER TABLE `plan_year`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_year` (`name`),
  ADD UNIQUE KEY `plan_start_date` (`plan_start_date`),
  ADD UNIQUE KEY `plan_end_date` (`plan_end_date`);

--
-- Indexes for table `program_activity`
--
ALTER TABLE `program_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `p_o_m`
--
ALTER TABLE `p_o_m`
  ADD PRIMARY KEY (`plan_id`,`obj_id`),
  ADD KEY `obj_id` (`obj_id`);

--
-- Indexes for table `rectification_record`
--
ALTER TABLE `rectification_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `risk_level`
--
ALTER TABLE `risk_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sub_team`
--
ALTER TABLE `sub_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_team_ibfk_1` (`parent_team`);

--
-- Indexes for table `sub_team_members`
--
ALTER TABLE `sub_team_members`
  ADD PRIMARY KEY (`team_id`,`emp_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_name` (`name`);

--
-- Indexes for table `unit_l`
--
ALTER TABLE `unit_l`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utable`
--
ALTER TABLE `utable`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name_unc` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditable_area`
--
ALTER TABLE `auditable_area`
  MODIFY `area_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_checklist`
--
ALTER TABLE `audit_checklist`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_finding`
--
ALTER TABLE `audit_finding`
  MODIFY `finding_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_object`
--
ALTER TABLE `audit_object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `audit_objectives`
--
ALTER TABLE `audit_objectives`
  MODIFY `objective_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit_plan`
--
ALTER TABLE `audit_plan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `audit_questioner`
--
ALTER TABLE `audit_questioner`
  MODIFY `q_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_status`
--
ALTER TABLE `audit_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `audit_type`
--
ALTER TABLE `audit_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `organ_category`
--
ALTER TABLE `organ_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ou`
--
ALTER TABLE `ou`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `PLAN_RISK_ITEM`
--
ALTER TABLE `PLAN_RISK_ITEM`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_year`
--
ALTER TABLE `plan_year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program_activity`
--
ALTER TABLE `program_activity`
  MODIFY `activity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rectification_record`
--
ALTER TABLE `rectification_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk_level`
--
ALTER TABLE `risk_level`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_team`
--
ALTER TABLE `sub_team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auditable_area`
--
ALTER TABLE `auditable_area`
  ADD CONSTRAINT `auditable_area_ibfk_1` FOREIGN KEY (`a_o_id`) REFERENCES `audit_object` (`id`);

--
-- Constraints for table `audit_checklist`
--
ALTER TABLE `audit_checklist`
  ADD CONSTRAINT `audit_checklist_ibfk_1` FOREIGN KEY (`a_o_id`) REFERENCES `audit_object` (`id`);

--
-- Constraints for table `audit_eng`
--
ALTER TABLE `audit_eng`
  ADD CONSTRAINT `audit_eng_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_plan` (`id`),
  ADD CONSTRAINT `audit_eng_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `sub_team` (`id`),
  ADD CONSTRAINT `audit_eng_ibfk_3` FOREIGN KEY (`contact_person`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `audit_eng_ibfk_4` FOREIGN KEY (`plan_id`) REFERENCES `audit_plan` (`id`),
  ADD CONSTRAINT `audit_eng_ibfk_5` FOREIGN KEY (`team_id`) REFERENCES `sub_team` (`id`),
  ADD CONSTRAINT `audit_eng_ibfk_6` FOREIGN KEY (`contact_person`) REFERENCES `employe` (`id`);

--
-- Constraints for table `audit_finding`
--
ALTER TABLE `audit_finding`
  ADD CONSTRAINT `audit_finding_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_program` (`plan_id`),
  ADD CONSTRAINT `audit_finding_ibfk_2` FOREIGN KEY (`registered_by`) REFERENCES `sub_team_members` (`emp_id`),
  ADD CONSTRAINT `audit_finding_ibfk_3` FOREIGN KEY (`plan_id`) REFERENCES `audit_program` (`plan_id`);

--
-- Constraints for table `audit_object`
--
ALTER TABLE `audit_object`
  ADD CONSTRAINT `audit_object_ibfk_1` FOREIGN KEY (`audit_cat`) REFERENCES `audit_type` (`id`);

--
-- Constraints for table `audit_objectives`
--
ALTER TABLE `audit_objectives`
  ADD CONSTRAINT `audit_objectives_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `audit_object` (`id`);

--
-- Constraints for table `audit_plan`
--
ALTER TABLE `audit_plan`
  ADD CONSTRAINT `audit_plan_ibfk_1` FOREIGN KEY (`audit_type`) REFERENCES `audit_type` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_10` FOREIGN KEY (`audit_year`) REFERENCES `plan_year` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_2` FOREIGN KEY (`audit_status`) REFERENCES `audit_status` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_4` FOREIGN KEY (`audit_type`) REFERENCES `audit_type` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_6` FOREIGN KEY (`audit_subject`) REFERENCES `audit_object` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_7` FOREIGN KEY (`auditees`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_8` FOREIGN KEY (`audit_type`) REFERENCES `audit_type` (`id`),
  ADD CONSTRAINT `audit_plan_ibfk_9` FOREIGN KEY (`team_id`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `risk_level` FOREIGN KEY (`risk_level`) REFERENCES `risk_level` (`id`);

--
-- Constraints for table `audit_program`
--
ALTER TABLE `audit_program`
  ADD CONSTRAINT `audit_program_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_eng` (`plan_id`);

--
-- Constraints for table `audit_questioner`
--
ALTER TABLE `audit_questioner`
  ADD CONSTRAINT `audit_questioner_ibfk_1` FOREIGN KEY (`a_o_id`) REFERENCES `audit_object` (`id`);

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`organ_type`) REFERENCES `organ_category` (`id`),
  ADD CONSTRAINT `employe_ibfk_2` FOREIGN KEY (`organ_type`) REFERENCES `organ_category` (`id`);

--
-- Constraints for table `employee_ou`
--
ALTER TABLE `employee_ou`
  ADD CONSTRAINT `employee_ou_bfk_2` FOREIGN KEY (`ou_id`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `employee_ou_bfk_3` FOREIGN KEY (`ou_id`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `employee_ou_bfk_4` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `employee_ou_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `employee_ou_ibfk_4` FOREIGN KEY (`ou_id`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `employee_ou_ibfk_5` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `engagement_to_audtees`
--
ALTER TABLE `engagement_to_audtees`
  ADD CONSTRAINT `engagement_to_audtees_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `audit_program` (`plan_id`),
  ADD CONSTRAINT `engagement_to_audtees_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `engagement_to_ou`
--
ALTER TABLE `engagement_to_ou`
  ADD CONSTRAINT `engagement_to_ou_eribfk_1` FOREIGN KEY (`ou_id`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `engagement_to_ou_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `audit_program` (`plan_id`);

--
-- Constraints for table `ou`
--
ALTER TABLE `ou`
  ADD CONSTRAINT `ou_ibfk_1` FOREIGN KEY (`parent_ou`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `ou_ibfk_2` FOREIGN KEY (`ou_leader`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `ou_ibfk_3` FOREIGN KEY (`organ_type`) REFERENCES `organ_category` (`id`),
  ADD CONSTRAINT `ou_ibfk_4` FOREIGN KEY (`organ_level`) REFERENCES `unit_l` (`id`),
  ADD CONSTRAINT `ou_ibsfk_1` FOREIGN KEY (`organ_type`) REFERENCES `organ_category` (`id`),
  ADD CONSTRAINT `ou_ibsfk_2` FOREIGN KEY (`ou_leader`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `ou_ibsfk_3` FOREIGN KEY (`parent_ou`) REFERENCES `ou` (`id`),
  ADD CONSTRAINT `ou_ibsfk_4` FOREIGN KEY (`ou_leader`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `ou_ibsfk_5` FOREIGN KEY (`organ_type`) REFERENCES `organ_category` (`id`),
  ADD CONSTRAINT `ou_ibsfk_6` FOREIGN KEY (`organ_level`) REFERENCES `unit_l` (`id`);

--
-- Constraints for table `PLAN_RISK_ITEM`
--
ALTER TABLE `PLAN_RISK_ITEM`
  ADD CONSTRAINT `plan_risk_item_ibfk_1` FOREIGN KEY (`year`) REFERENCES `plan_year` (`id`),
  ADD CONSTRAINT `plan_risk_item_ibfk_2` FOREIGN KEY (`audit_type`) REFERENCES `audit_type` (`id`),
  ADD CONSTRAINT `plan_risk_item_ibfk_3` FOREIGN KEY (`frequency`) REFERENCES `risk_level` (`id`),
  ADD CONSTRAINT `plan_risk_item_ibfk_4` FOREIGN KEY (`impact`) REFERENCES `risk_level` (`id`);

--
-- Constraints for table `PLAN_RISK_SCORE`
--
ALTER TABLE `PLAN_RISK_SCORE`
  ADD CONSTRAINT `plan_risk_score_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_plan` (`id`),
  ADD CONSTRAINT `plan_risk_score_ibfk_2` FOREIGN KEY (`risk_item_id`) REFERENCES `PLAN_RISK_ITEM` (`id`);

--
-- Constraints for table `program_activity`
--
ALTER TABLE `program_activity`
  ADD CONSTRAINT `program_activity_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `audit_program` (`plan_id`),
  ADD CONSTRAINT `program_activity_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `auditable_area` (`area_id`);

--
-- Constraints for table `p_o_m`
--
ALTER TABLE `p_o_m`
  ADD CONSTRAINT `p_o_m_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_program` (`plan_id`),
  ADD CONSTRAINT `p_o_m_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `audit_program` (`plan_id`),
  ADD CONSTRAINT `p_o_m_ibfk_3` FOREIGN KEY (`obj_id`) REFERENCES `audit_objectives` (`objective_id`);

--
-- Constraints for table `rectification_record`
--
ALTER TABLE `rectification_record`
  ADD CONSTRAINT `rectification_record_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `audit_plan` (`id`);

--
-- Constraints for table `sub_team`
--
ALTER TABLE `sub_team`
  ADD CONSTRAINT `sub_team_ibfk_1` FOREIGN KEY (`parent_team`) REFERENCES `ou` (`id`);

--
-- Constraints for table `sub_team_members`
--
ALTER TABLE `sub_team_members`
  ADD CONSTRAINT `sub_team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `sub_team` (`id`),
  ADD CONSTRAINT `sub_team_members_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `sub_team` (`id`),
  ADD CONSTRAINT `sub_team_members_ibfk_4` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `utable`
--
ALTER TABLE `utable`
  ADD CONSTRAINT `utable_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `utable_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `employe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
