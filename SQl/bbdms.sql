-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2024 at 01:14 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-01-01 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

DROP TABLE IF EXISTS `tblblooddonars`;
CREATE TABLE IF NOT EXISTS `tblblooddonars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Password` (`Password`),
  KEY `bgroup` (`BloodGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=2087 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Password`) VALUES
(2067, 'Jay Sharad Punekar', '9403077626', 'jayrajpunekar2003@gmail.com', 'Male', 20, 'AB-', '717,East Mangalwar peth, Solapur\r\n717, East Mangalwar peth, Solapur', ' f', '2024-04-03 17:56:12', 1, NULL),
(2072, 'shruuuuuuuuuuuuu', '9403077626', 'vpunekar793@gmail.com', 'Female', 19, 'O-', '717,East Mangalwar peth, Solapur', ' k', '2024-04-03 18:04:00', 1, NULL),
(2076, 'shruuuuuuuuuuuuu', '9403077626', 'punekar@gmail.com', 'Female', 19, 'AB-', 'Government Polytechnic,Solapur', ' wanna donate blood', '2024-04-03 18:14:33', 1, NULL),
(2077, 'nandini sarwad', '3333333333', 'nan2003@gmail.com', 'Female', 19, 'O-', 'Government Polytechnic,Solapur', '  wanna donate blood', '2024-04-03 18:15:14', 1, NULL),
(2078, 'shruti', '2322751192', 'pharmacy@two.com', 'Female', 19, 'A+', 'Government Polytechnic,Solapur', '  wanna donate blood', '2024-04-03 18:15:51', 1, NULL),
(2079, 'Yash Shah', '1111111111', 'yash793@gmail.com', 'Male', 21, 'A-', 'Government Polytechnic,Solapur', '  wanna donate blood', '2024-04-03 18:16:41', 1, NULL),
(2080, 'shubhamn Gill', '1111111111', 'shubh11@gmail.com', 'Male', 21, 'B+', '717,East Mangalwar peth, Solapur', '  wanna donate blood', '2024-04-03 18:17:56', 1, NULL),
(2081, 'Virat Kholi', '9403077626', 'vkholi18@gmail.com', 'Male', 34, 'B-', '717,East Mangalwar peth, Solapur\r\n717, East Mangalwar peth, Solapur', '  wanna donate blood', '2024-04-03 18:19:00', 1, NULL),
(2082, 'Rohit Sharma', '9403077626', 'rohitsharma45@gmail.com', 'Male', 35, 'AB+', '717,East Mangalwar peth, Solapur', '  wanna donate blood', '2024-04-03 18:20:12', 1, NULL),
(2083, 'Mahendra Shing Dhoni', '1111111111', 'msdhoni07@gmail.com', 'Male', 42, 'O+', 'Government Polytechnic,Solapur', '  wanna donate blood', '2024-04-03 18:21:42', 1, NULL),
(2084, 'Hardik Pandey', '1111111111', 'hardik11@gmail.com', 'Male', 42, 'A+', '717,East Mangalwar peth, Solapur', '  wanna donate blood', '2024-04-03 18:22:29', 1, NULL),
(2085, 'KL Rahul', '9403077626', 'klrahul01@gmail.com', 'Male', 34, 'A+', '717,East Mangalwar peth, Solapur\r\n', '  wanna donate blood', '2024-04-03 18:23:28', 1, NULL),
(2086, 'MANE  NAVNATH', '8796970692', 'navmane111@gmail.com', 'Male', 37, 'B+', 'Bale Solapur', ' I want to donate the blood', '2024-04-13 08:32:54', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

DROP TABLE IF EXISTS `tblbloodgroup`;
CREATE TABLE IF NOT EXISTS `tblbloodgroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `BloodGroup` (`BloodGroup`),
  KEY `BloodGroup_2` (`BloodGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2024-01-01 20:33:50'),
(2, 'AB-', '2024-01-01 20:33:50'),
(3, 'O-', '2024-01-01 20:33:50'),
(5, 'A+', '2024-01-01 20:33:50'),
(6, 'AB+', '2024-01-01 20:33:50'),
(9, 'B+', '2024-03-11 09:38:47'),
(10, 'B-', '2024-03-11 09:38:53'),
(11, 'O+', '2024-03-11 09:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodrequirer`
--

DROP TABLE IF EXISTS `tblbloodrequirer`;
CREATE TABLE IF NOT EXISTS `tblbloodrequirer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BloodDonarID` int DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `donorid` (`BloodDonarID`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodrequirer`
--

INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(285, NULL, 'NAN', 'vpunekar793@gmail.com', 9322751192, 'Mother', 'VVV', '2024-04-01 10:06:08'),
(286, NULL, 'Shruti Punekar', 'jayrajpunekar2003@gmail.com', 9322751192, 'Father', 'J', '2024-04-01 10:06:56'),
(287, NULL, 'shruuuuuuuuuuuuu', 'aishwaryapawar2107@gmail.com', 9403077626, 'Father', 'jjh', '2024-04-03 09:04:24'),
(288, NULL, 'shruuuuuuuuuuuuu', 'aishwaryapawar2107@gmail.com', 9403077626, '..........', 'dd', '2024-04-03 09:04:39'),
(289, NULL, 'Sharad Shanmukh Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, 'Father', 'm', '2024-04-03 15:57:11'),
(290, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', ',', '2024-04-03 15:57:42'),
(291, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'j', '2024-04-03 15:58:42'),
(292, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'l', '2024-04-03 15:59:57'),
(293, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'l', '2024-04-03 16:00:35'),
(294, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'j', '2024-04-03 16:00:44'),
(295, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'j', '2024-04-03 16:03:45'),
(296, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', ',', '2024-04-03 16:03:56'),
(297, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'k', '2024-04-03 16:04:31'),
(298, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'k', '2024-04-03 16:06:22'),
(299, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'i', '2024-04-03 16:06:34'),
(300, NULL, 'shruuuuuuuuuuuuu', 'vpunekar793@gmail.com', 9403077626, '..........', 'i', '2024-04-03 16:08:27'),
(301, NULL, 'Jayraj Sharad  Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'd', '2024-04-03 17:52:42'),
(302, NULL, 'Jayraj Sharad  Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'd', '2024-04-03 17:53:35'),
(303, NULL, 'Jayraj Sharad Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'd', '2024-04-03 17:54:00'),
(304, NULL, 'Jayraj Sharad Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'j', '2024-04-03 17:54:27'),
(305, NULL, 'Jayraj Sharad Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'j', '2024-04-03 17:55:05'),
(306, NULL, 'Jayraj Sharad Punekar', 'jayrajpunekar2003@gmail.com', 9403077626, '..........', 'k', '2024-04-03 17:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Government Polytechnic,Solapur																								', 'BeBrave@gmail.com', '9699721803');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(8, 'shruti', 'pharmacist@two.com', '92322751192', 'hiiiiiiiiii', '2024-02-24 09:19:46', 1),
(9, 'shruti', 'pharmacist@two.com', '92322751192', 'kh', '2024-02-24 15:06:37', 1),
(10, 'shruti', 'pharmacist@two.com', '92322751192', 'next', '2024-02-24 15:16:24', 1),
(11, 'shruti', 'pharmacist@two.com', '92322751192', 'next', '2024-02-24 15:20:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Welcome to the blood bank donor management system.</span></div>');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
