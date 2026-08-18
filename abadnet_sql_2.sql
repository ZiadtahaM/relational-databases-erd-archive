-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 05:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abadnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorydepartments`
--

CREATE TABLE `categorydepartments` (
  `CategoryID` int(11) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorydepartments`
--

INSERT INTO `categorydepartments` (`CategoryID`, `DepartmentID`) VALUES
(5, 1),
(6, 7),
(7, 2),
(8, 4),
(9, 3),
(10, 5),
(13, 6),
(14, 7),
(16, 5),
(18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `coursecategories`
--

CREATE TABLE `coursecategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `CategoryDescription` varchar(255) DEFAULT NULL,
  `CategoryImgUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursecategories`
--

INSERT INTO `coursecategories` (`CategoryID`, `CategoryName`, `CategoryDescription`, `CategoryImgUrl`) VALUES
(5, 'Cisco', '', ''),
(6, 'COMPITA', '', ''),
(7, 'RedHat', '', ''),
(8, 'Microsoft', '', ''),
(9, 'Oracle', '', ''),
(10, 'EC-Council', '', ''),
(11, 'ITIL service lifecycle', '', ''),
(12, '(ISC)²', '', ''),
(13, 'Programming', '', ''),
(14, 'VMware', '', ''),
(15, 'Graphic', '', ''),
(16, 'Security', '', ''),
(17, 'Accounting', '', ''),
(18, 'Project Management', '', ''),
(19, 'Enterprise Infrastructure Networks', '', ''),
(20, 'Offers', '', ''),
(21, 'Juniper', '', ''),
(22, 'SANS', '', ''),
(23, 'Azure', '', ''),
(24, 'Amazon', '', ''),
(25, 'تجريبي', 'r3gr', 'wfqewgrt'),
(26, 'test category', 'test category', '/uploads/categories/category-1739742450791-817024487.png');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `CourseCode` varchar(20) NOT NULL,
  `Description` text DEFAULT NULL,
  `courseImgUrl` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `CourseType` enum('OnSite','Online') DEFAULT 'OnSite',
  `CourseLink` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `StartingTime` timestamp NULL DEFAULT NULL,
  `EndingTime` timestamp NULL DEFAULT NULL,
  `LessonsTime` varchar(255) DEFAULT NULL,
  `InstructorID` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `CourseCode`, `Description`, `courseImgUrl`, `Price`, `CourseType`, `CourseLink`, `CategoryID`, `StartingTime`, `EndingTime`, `LessonsTime`, `InstructorID`, `CreatedAt`) VALUES
(8122, 'Governance, Risk, And Compliance – Professional (GRCP) الاحترافية في الحوكمة وإدارة المخاطر والإلتزا', 'COURSE-08122', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-10-15 18:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8124, 'Governance, Risk, And Compliance – Professional (GRCP) الاحترافية في الحوكمة وإدارة المخاطر والإلتزا', 'COURSE-08124', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-11-12 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8126, 'Governance, Risk, And Compliance – Professional (GRCP) الاحترافية في الحوكمة وإدارة المخاطر والإلتزا', 'COURSE-08126', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-30 20:00:00', '2024-12-10 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8127, 'Governance, Risk, And Compliance – Auditor (GRCA) مدقق في الحوكمة وإدارة المخاطر والإلتزام', 'COURSE-08127', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-07 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8128, 'CompTIA A+ صيانة الحاسب الآلي', 'COURSE-08128', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-03 18:00:00', '2024-10-29 18:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8129, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08129', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-10 18:00:00', '2024-11-08 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8130, 'CompTIA A+ صيانة الحاسب الآلي', 'COURSE-08130', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-10-29 18:00:00', 'من 02:00 مساءً حتى 04:00 مساءً', 1, '2025-02-02 18:34:46'),
(8131, 'CompTIA Linux+ أساسيات أنظمة تشغيل لينكس ', 'COURSE-08131', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-03 18:00:00', '2024-10-29 18:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8132, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08132', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-24 18:00:00', '2024-11-29 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8134, 'CompTIA Network+ أساسيات الشبكات', 'COURSE-08134', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8137, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08137', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8138, ' CCNP Enterprise ENCOR 350-401 شهادة سيسكو للمحترفين', 'COURSE-08138', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-12-03 20:00:00', 'من 05:00 مساءً حتى 07:30 مساءً', 1, '2025-02-02 18:34:46'),
(8140, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08140', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-16 20:00:00', '2024-11-26 20:00:00', 'من 09:30 مساءً حتى 11:30 مساءً', 1, '2025-02-02 18:34:46'),
(8141, 'CCNP Enterprise – Advanced Routing and Services ENARSI (300-410)  شهادة سيسكو للمحترفين', 'COURSE-08141', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8142, ' CCNP Security SCOR 350-701 شهادة سيسكو لمحترفي أمن الشبكات', 'COURSE-08142', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8143, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08143', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-11-26 20:00:00', 'من 05:00 مساءً حتى 07:00 مساءً', 1, '2025-02-02 18:34:46'),
(8144, ' PMP – Project Management Professional دورة إدارة المشاريع الإحترافية', 'COURSE-08144', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-11-26 20:00:00', 'من 07:00 مساءً حتى 09:00 مساءً', 1, '2025-02-02 18:34:46'),
(8145, 'ITIL 4 Foundation مكتبة البنية التحتية لتقنية المعلومات', 'COURSE-08145', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-11-12 20:00:00', 'من 09:00 مساءً حتى 11:00 مساءً', 1, '2025-02-02 18:34:46'),
(8147, 'ITIL 4 Foundation مكتبة البنية التحتية لتقنية المعلومات', 'COURSE-08147', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-31 19:00:00', '2024-11-08 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8148, 'Digital Practitioner Body of Knowledge (DPBoK) شهادة ممارس ادارة التحول الرقمي', 'COURSE-08148', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-05 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8149, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08149', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-05 20:00:00', '2025-01-10 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8150, ' CCNP Enterprise ENCOR 350-401 شهادة سيسكو للمحترفين', 'COURSE-08150', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-31 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8151, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08151', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-30 20:00:00', '2024-12-31 20:00:00', 'من 05:00 مساءً حتى 07:30 مساءً', 1, '2025-02-02 18:34:46'),
(8152, 'VMware Certified Professional VCP-DCV شهادة محترفي الحوسبة السحابية ', 'COURSE-08152', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-07 20:00:00', 'من 07:30 مساءً حتى 09:30 مساءً', 1, '2025-02-02 18:34:46'),
(8153, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08153', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-02-04 20:00:00', 'من 09:30 مساءً حتى 11:30 مساءً', 1, '2025-02-02 18:34:46'),
(8154, ' PMP – Project Management Professional دورة إدارة المشاريع الإحترافية', 'COURSE-08154', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-20 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8155, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08155', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-31 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8157, '(CISM) مدير أمن المعلومات المعتمد ', 'COURSE-08157', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-03 18:00:00', '2024-11-01 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8158, 'CISSP - مهندس أمن نظم معلومات معتمد ', 'COURSE-08158', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-03 18:00:00', '2024-11-01 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8159, '(CISM) مدير أمن المعلومات المعتمد ', 'COURSE-08159', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-11-05 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8160, 'CISA مدقق نظم معلومات معتمد', 'COURSE-08160', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-11-05 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8161, '(CISM) مدير أمن المعلومات المعتمد ', 'COURSE-08161', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8162, 'CISA مدقق نظم معلومات معتمد ', 'COURSE-08162', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8163, 'COBIT 5 Foundation حوكمة تقنية المعلومات ', 'COURSE-08163', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-11-19 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8164, 'CISSP - مهندس أمن نظم معلومات معتمد ', 'COURSE-08164', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-12-10 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8165, '(CISM) مدير أمن المعلومات المعتمد ', 'COURSE-08165', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-24 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8166, 'CISSP - مهندس أمن نظم معلومات معتمد ', 'COURSE-08166', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-24 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8167, '(CISM) مدير أمن المعلومات المعتمد ', 'COURSE-08167', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8168, 'CISA مدقق نظم معلومات معتمد', 'COURSE-08168', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8169, 'شهادة أخصائي برامج مايكروسوفت أوفيس (MOS) Microsoft Office Specialist', 'COURSE-08169', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-11-05 20:00:00', 'من 05:00 مساءً حتى 07:00 مساءً', 1, '2025-02-02 18:34:46'),
(8170, 'Certified Ethical Hacker (CEHv13) دورة الهاكر الأخلاقي المعتمد', 'COURSE-08170', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-17 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8171, 'Certified Ethical Hacker (CEHv13) دورة الهاكر الأخلاقي المعتمد', 'COURSE-08171', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-11-05 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8172, 'ISO/IEC 27001 Lead Implementer إدارة أمن المعلومات ', 'COURSE-08172', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-10-29 18:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8173, 'Fortinet NSE4 خبير أمن شبكات فورتينت', 'COURSE-08173', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-24 18:00:00', '2024-11-22 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8174, 'Certified Ethical Hacker (CEHv13) دورة الهاكر الأخلاقي المعتمد', 'COURSE-08174', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-24 18:00:00', '2024-11-22 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8175, ' Microsoft Power BI–Business data analytics تحليلات بيانات الأعمال', 'COURSE-08175', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-24 18:00:00', '2024-11-22 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8176, 'Data Analysis Microsoft Excel تحليل البيانات ببرنامج مايكروسوفت إكسل	', 'COURSE-08176', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-24 18:00:00', '2024-11-15 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8177, 'CompTIA Data+ أساسيات تحليل البيانات', 'COURSE-08177', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-19 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8178, 'ECBA - Entry certification of business analysis شهادة الدخول لتحليل الأعمال', 'COURSE-08178', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-19 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8179, ' Microsoft Power BI–Business data analytics تحليلات بيانات الأعمال', 'COURSE-08179', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8180, 'RedHat v9 RHCSA مدير نظام ريدهات لينكس المعتمد	', 'COURSE-08180', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-11-22 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8181, 'MCSA Windows Server 2019 + Windows Server Hybrid Administrator Associate خوادم مايكروسوفت ', 'COURSE-08181', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-12-03 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8185, 'CCNA 200-301 شهادة سيسكو المعتمدة', 'COURSE-08185', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-30 20:00:00', '2024-12-31 20:00:00', 'من 06:00 مساءً حتى 08:30 مساءً', 1, '2025-02-02 18:34:46'),
(8187, 'CompTIA A+ صيانة الحاسب الآلي', 'COURSE-08187', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-30 20:00:00', '2024-12-24 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8188, ' Microsoft Power BI–Business data analytics تحليلات بيانات الأعمال', 'COURSE-08188', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8189, 'شهادة أخصائي برامج مايكروسوفت أوفيس (MOS) Microsoft Office Specialist', 'COURSE-08189', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8191, 'شهادة أخصائي برامج مايكروسوفت أوفيس (MOS) Microsoft Office Specialist', 'COURSE-08191', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-11-26 20:00:00', 'من 07:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8192, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08192', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8193, 'Python - لغة برمجة بايثون', 'COURSE-08193', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8194, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08194', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-16 20:00:00', '2024-12-03 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8195, 'Python - لغة برمجة بايثون', 'COURSE-08195', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-12-03 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8196, 'C# لغـــة برمجــــة ', 'COURSE-08196', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-02 20:00:00', '2024-12-03 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8197, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08197', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-24 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8198, 'Python - لغة برمجة بايثون', 'COURSE-08198', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-24 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8199, 'ASP.NET دورة برمجة تطبيقات الويب بلغة', 'COURSE-08199', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8200, 'C# لغـــة برمجــــة ', 'COURSE-08200', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8201, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08201', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8202, 'Implementing Cisco SD-WAN Solutions (CCNP 300-415) شهادة سيسكو للمحترفين لإدارة شبكة الاتصال واسعة ا', 'COURSE-08202', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8203, 'CyberSecurity Roadmap Level 1 المسار التأسيسي للأمن السيبراني', 'COURSE-08203', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-12-31 20:00:00', 'من 07:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8207, 'CyberSecurity Roadmap Level 1 المسار التأسيسي للأمن السيبراني', 'COURSE-08207', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-12-24 20:00:00', 'من 07:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8209, 'CyberSecurity Roadmap Level 1 المسار التأسيسي للأمن السيبراني', 'COURSE-08209', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-05 18:00:00', '2024-12-24 20:00:00', 'من 07:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8210, 'CyberSecurity Roadmap Level 1 المسار التأسيسي للأمن السيبراني من 4-7', 'COURSE-08210', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-12 18:00:00', '2024-12-31 20:00:00', 'من 04:00 مساءً حتى 07:00 مساءً', 1, '2025-02-02 18:34:46'),
(8211, 'شهادة أخصائي برامج مايكروسوفت أوفيس (MOS) Microsoft Office Specialist', 'COURSE-08211', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 07:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8212, ' Microsoft Power BI–Business data analytics تحليلات بيانات الأعمال', 'COURSE-08212', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8215, 'شهادة أخصائي برامج مايكروسوفت أوفيس (MOS) Microsoft Office Specialist', 'COURSE-08215', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8216, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل ', 'COURSE-08216', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8217, 'Python - لغة برمجة بايثون', 'COURSE-08217', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8218, 'C# لغـــة برمجــــة ', 'COURSE-08218', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-11-26 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8219, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08219', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8220, 'Python - لغة برمجة بايثون', 'COURSE-08220', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-07 20:00:00', '2024-12-06 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8221, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08221', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-10 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8222, 'Python - لغة برمجة بايثون', 'COURSE-08222', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-26 20:00:00', '2025-01-10 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8223, 'ASP.NET دورة برمجة تطبيقات الويب بلغة', 'COURSE-08223', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8224, 'C# لغـــة برمجــــة ', 'COURSE-08224', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8225, 'Oracle Database 12c SQL -1Z0-071 شهادة قواعد بيانات أوراكل', 'COURSE-08225', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-28 20:00:00', '2025-01-28 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8226, 'CRISC | معتمد في إدارة المخاطر ونظم المعلومات', 'COURSE-08226', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-12-24 20:00:00', 'من 09:00 مساءً حتى 11:00 مساءً', 1, '2025-02-02 18:34:46'),
(8227, 'ITIL Practitioner', 'COURSE-08227', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-26 18:00:00', '2024-10-30 18:00:00', 'من 09:00 صباحأ حتى 01:00 صباحأ', 1, '2025-02-02 18:34:46'),
(8228, 'CGRC – Governance, Risk and Compliance Certification', 'COURSE-08228', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-10-21 18:00:00', '2024-10-27 18:00:00', 'من 04:00 مساءً حتى 09:00 مساءً', 1, '2025-02-02 18:34:46'),
(8229, 'eJPT – Junior Penetration Tester اختبار اختراق المبتدئين ', 'COURSE-08229', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-12-10 20:00:00', 'من 06:00 مساءً حتى 08:00 مساءً', 1, '2025-02-02 18:34:46'),
(8230, 'Blue Team Level 1 (BTL1) شهادة عمليات الأمن السيبراني للمبتدئين ', 'COURSE-08230', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-27 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8231, 'eJPT – Junior Penetration Tester اختبار اختراق المبتدئين ', 'COURSE-08231', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-27 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8232, 'CompTIA Security+ أســاسيات أمن المعلومات ', 'COURSE-08232', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-23 20:00:00', '2024-12-17 20:00:00', 'من 04:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8233, ' MCSA: SQL 2019 Database Administration إدارة قواعد بيانات مايكروسوفت', 'COURSE-08233', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-11-13 20:00:00', 'من 09:00 صباحأ حتى 05:00 مساءً', 1, '2025-02-02 18:34:46'),
(8234, 'Flutter برمجة تطبيقات الجوال باستخدام لغة ', 'COURSE-08234', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-11-13 20:00:00', 'من 09:00 صباحأ حتى 05:00 مساءً', 1, '2025-02-02 18:34:46'),
(8235, 'CompTIA Network+ أساسيات الشبكات', 'COURSE-08235', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-09 20:00:00', '2024-11-13 20:00:00', 'من 09:00 صباحأ حتى 05:00 مساءً', 1, '2025-02-02 18:34:46'),
(8236, 'CompTIA Security+ أســاسيات أمن المعلومات ', 'COURSE-08236', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-16 20:00:00', '2024-12-10 20:00:00', 'من 08:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8237, 'CompTIA Network+ أساسيات الشبكات', 'COURSE-08237', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-20 20:00:00', 'من 06:00 مساءً حتى 10:00 مساءً', 1, '2025-02-02 18:34:46'),
(8239, 'CompTIA Network+ أساسيات الشبكات', 'COURSE-08239', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-30 20:00:00', '2024-12-24 20:00:00', 'من 07:30 مساءً حتى 09:30 مساءً', 1, '2025-02-02 18:34:46'),
(8240, 'CompTIA Network+ أساسيات الشبكات', 'COURSE-08240', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-11-28 20:00:00', '2024-12-20 20:00:00', 'من 02:00 مساءً حتى 06:00 مساءً', 1, '2025-02-02 18:34:46'),
(8241, 'CompTIA A+ صيانة الحاسب الآلي', 'COURSE-08241', NULL, '', 0.00, 'OnSite', NULL, 5, '2024-12-07 20:00:00', '2024-12-31 20:00:00', 'من 08:30 مساءً حتى 10:30 مساءً', 1, '2025-02-02 18:34:46'),
(8243, 'خالد محمد', 'MT50', 'دورة تجريبية', 'https://abadnet.com.sa/uploaded_files/header_images/2-4.png', 1500.00, 'OnSite', NULL, 5, '2025-02-16 19:57:00', '2025-02-18 19:57:00', '123', 136, '2025-02-16 19:58:10'),
(8244, 'r1324reht', '(ISC)²', 'fwqewre', '/uploads/categories/category-1739803768569-975267040.png', 15000.00, 'OnSite', '', 14, '2025-02-14 14:48:00', '2025-02-28 14:48:00', '123', 136, '2025-02-17 14:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `DepartmentDescription` varchar(255) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `DepartmentDescription`, `CreatedAt`) VALUES
(1, 'Cisco', NULL, '2025-02-02 18:50:04'),
(2, 'Linux', NULL, '2025-02-02 18:50:04'),
(3, 'Oracle', NULL, '2025-02-02 18:50:04'),
(4, 'Microsoft', NULL, '2025-02-02 18:50:04'),
(5, 'Security', NULL, '2025-02-02 18:50:04'),
(6, 'Program', NULL, '2025-02-02 18:50:04'),
(7, 'Technology', NULL, '2025-02-02 18:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `InvoiceID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `RegistrationID` int(11) DEFAULT NULL,
  `InvoiceDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `DueDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Status` enum('Pending','Paid','Cancelled','Refunded') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`InvoiceID`, `UserID`, `RegistrationID`, `InvoiceDate`, `DueDate`, `TotalAmount`, `Status`) VALUES
(7, 1, 9, '2025-02-02 12:44:10', '2025-03-01', 200.00, 'Pending'),
(8, 2, 9, '2025-02-02 12:44:10', '2025-03-05', 150.00, 'Paid'),
(9, 3, 9, '2025-02-02 12:44:10', '2025-03-10', 300.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `LogID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ActionType` varchar(50) NOT NULL,
  `ActionDetails` text DEFAULT NULL,
  `IsRead` tinyint(1) DEFAULT 0,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`LogID`, `UserID`, `ActionType`, `ActionDetails`, `IsRead`, `CreatedAt`) VALUES
(1, 1, 'Login', 'User logged in successfully.', 0, '2025-02-02 10:36:41'),
(2, 2, 'Course Registration', 'User registered for course COURSE-08122.', 0, '2025-02-02 10:36:41'),
(3, 3, 'Invoice Payment', 'User paid invoice #7.', 0, '2025-02-02 10:36:41'),
(4, 1, 'Course Completion', 'User completed course COURSE-08128.', 0, '2025-02-02 10:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Message` text NOT NULL,
  `IsRead` tinyint(1) DEFAULT 0,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NotificationID`, `UserID`, `Message`, `IsRead`, `CreatedAt`) VALUES
(4, 1, 'Your course has been approved.', 1, '2025-02-02 12:36:41'),
(5, 2, 'Your invoice is due.', 0, '2025-02-02 12:36:41'),
(6, 3, 'New course available.', 0, '2025-02-02 12:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `OTPID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `OTP` varchar(6) NOT NULL,
  `OTPExpiresAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `RegistrationID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` enum('Pending','Approved','Rejected') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`RegistrationID`, `UserID`, `CourseID`, `RegistrationDate`, `Status`) VALUES
(9, 1, 8244, '2025-02-02 10:36:41', 'Approved'),
(10, 2, 8244, '2025-02-02 10:36:41', 'Pending'),
(11, 3, 8244, '2025-02-02 10:36:41', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `NationalId` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `Role` enum('admin','manager','accountant','sales','student','trainer') DEFAULT 'sales',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `NationalId`, `Username`, `Password`, `FullName`, `Email`, `PhoneNumber`, `Role`, `CreatedAt`) VALUES
(1, '123456789', 'john_doe', 'e10adc3949ba59abbe56e057f20f883e', 'John Doe', 'john.doe@example.com', '1234567890', 'student', '2025-02-02 12:36:41'),
(2, '987654321', 'jane_smith', 'hashed_password', 'Jane Smith', 'jane.smith@example.com', '0987654321', '', '2025-02-02 12:36:41'),
(3, '456789123', 'mohamed', 'e10adc3949ba59abbe56e057f20f883e', 'Mohamed Hesham', 'mohamedhoshame@gmails.com', '4567891230', 'admin', '2025-02-02 12:36:41'),
(9, '1234567833', 'john_d3e', '482c811da5d5b4bc6d497ffa98491e38', 'John Doe', 'mazenmohamed.bfg@gmail.com', '1234567890', 'student', '2025-02-02 14:07:28'),
(134, '1234567890', 'flepooo', '482c811da5d5b4bc6d497ffa98491e38', 'John Doe', 'john.doe@fqefqef.com', '1234567890', 'manager', '2025-02-16 19:22:21'),
(135, '897465132658', 'ahmed00', 'b5cc6d7e5a37a4d5946c32494e2a4f7e', 'احمد هشام', 'mo@momo.comcom', '01285203642', 'sales', '2025-02-16 19:33:55'),
(136, '8974651320', 'kk', 'e10adc3949ba59abbe56e057f20f883e', 'Mohamed Hesham', 'mohamedhoshame@gmail.com', '02654654', 'trainer', '2025-02-16 19:44:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorydepartments`
--
ALTER TABLE `categorydepartments`
  ADD PRIMARY KEY (`CategoryID`,`DepartmentID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `coursecategories`
--
ALTER TABLE `coursecategories`
  ADD PRIMARY KEY (`CategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD UNIQUE KEY `CourseCode` (`CourseCode`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `InstructorID` (`InstructorID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `RegistrationID` (`RegistrationID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`OTPID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`RegistrationID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `NationalId` (`NationalId`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursecategories`
--
ALTER TABLE `coursecategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8245;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `OTPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `RegistrationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorydepartments`
--
ALTER TABLE `categorydepartments`
  ADD CONSTRAINT `categorydepartments_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `coursecategories` (`CategoryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorydepartments_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `coursecategories` (`CategoryID`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`InstructorID`) REFERENCES `users` (`UserID`) ON DELETE SET NULL;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE SET NULL,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`RegistrationID`) REFERENCES `registrations` (`RegistrationID`) ON DELETE SET NULL;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
