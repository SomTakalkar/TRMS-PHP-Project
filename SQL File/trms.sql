-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 01:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555555, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-07-01 06:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblquery`
--

CREATE TABLE `tblquery` (
  `id` int(11) NOT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `fName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `mobileNumber` bigint(10) DEFAULT NULL,
  `Query` mediumtext DEFAULT NULL,
  `queryDate` timestamp NULL DEFAULT current_timestamp(),
  `teacherNote` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblquery`
--

INSERT INTO `tblquery` (`id`, `teacherId`, `fName`, `emailId`, `mobileNumber`, `Query`, `queryDate`, `teacherNote`) VALUES
(2, 1, 'Amit Kumar', 'amitk43@gmail.com', 1122336655, 'This is for testing purpose. Test Query', '2024-07-31 10:03:49', 'This is for testing. Test notes'),
(3, 3, 'Sanjeev', 'sanjeev@gmail.com', 4758963214, 'Test query', '2024-08-06 17:03:03', 'Test notes');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `ID` int(10) NOT NULL,
  `Subject` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`ID`, `Subject`, `CreationDate`) VALUES
(1, 'Mathmetics', '2024-07-10 06:11:06'),
(2, 'Physics', '2024-07-10 06:11:06'),
(3, 'Chemistry', '2024-07-10 06:11:06'),
(4, 'Biology', '2024-07-10 06:11:06'),
(5, 'Hindi', '2024-07-10 06:11:06'),
(6, 'English', '2024-07-10 06:11:06'),
(7, 'Science', '2024-07-10 06:11:06'),
(8, 'Social Science', '2024-07-10 06:11:06'),
(9, 'Accounts', '2024-07-10 06:11:06'),
(10, 'Arts', '2024-07-10 06:11:06'),
(13, 'Operating System (OS)', '2024-07-10 06:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Picture` varchar(200) NOT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Qualifications` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `TeacherSub` varchar(120) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `teachingExp` varchar(10) DEFAULT NULL,
  `JoiningDate` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `isPublic` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `Name`, `Picture`, `Email`, `MobileNumber`, `password`, `Qualifications`, `Address`, `TeacherSub`, `description`, `teachingExp`, `JoiningDate`, `RegDate`, `isPublic`) VALUES
(1, 'Anuj kumar', '171bb7da1ad6f5b744af8e1693225e661647076737.png', 'ak@gmail.com', 1234567890, '5c428d8875d2948607f3e3fe134d71b4', 'B.Tech, M.tech', 'H 343 Wisdom Society Noida 20301', 'Chemistry', 'NA', '5', '2022-01-01', '2024-07-20 12:41:37', 1),
(2, 'John Doe', 'ebcd036a0db50db993ae98ce380f64191647072141.png', 'jogoe12@yourdomain.com', 1425369874, 'f925916e2754e5e03f75dd58a5733251', 'BSC, MSC', 'New Delhi India', 'Science', 'NA', '10', '2018-01-01', '2024-08-02 08:02:21', 1),
(3, 'Amit kumar', 'ebcd036a0db50db993ae98ce380f64191647277294.png', 'amitkr12@gmail.com', 1425366958, 'f925916e2754e5e03f75dd58a5733251', 'BSC,MSC', 'H 32325 XYZ COlony Raj Nagar Ghaziabad', 'Chemistry', 'I have 10 year exp in chemistry', '10', '2022-02-28', '2024-08-15 17:01:04', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblquery`
--
ALTER TABLE `tblquery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`teacherId`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Subject` (`Subject`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `subname` (`TeacherSub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblquery`
--
ALTER TABLE `tblquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblquery`
--
ALTER TABLE `tblquery`
  ADD CONSTRAINT `tid` FOREIGN KEY (`teacherId`) REFERENCES `tblteacher` (`ID`);

--
-- Constraints for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD CONSTRAINT `subname` FOREIGN KEY (`TeacherSub`) REFERENCES `tblsubjects` (`Subject`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
