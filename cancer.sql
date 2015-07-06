-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2015 at 04:28 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancer`
--

CREATE TABLE IF NOT EXISTS `cancer` (
  `cancerid` int(11) NOT NULL,
  `cancername` varchar(50) NOT NULL,
  `cancertype` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancer`
--

INSERT INTO `cancer` (`cancerid`, `cancername`, `cancertype`) VALUES
(1, 'Breast Cancer', 'Breast'),
(2, 'Cervical Cancer', 'Cervix');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE IF NOT EXISTS `diagnosis` (
  `diagnosisid` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `diagnosis` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patientID` int(20) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `BirthPlace` varchar(50) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `tribe` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `village` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `subCounty` varchar(50) DEFAULT NULL,
  `parish` varchar(50) DEFAULT NULL,
  `othername` text,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `fname`, `lname`, `sex`, `BirthPlace`, `DOB`, `occupation`, `tribe`, `district`, `region`, `contact`, `village`, `county`, `subCounty`, `parish`, `othername`, `email`) VALUES
(1, 'wert', 'rty', 'female', 'qwer', '2015-06-03', 'rtyu', 'ui', 'yui', '678', 'tyu', NULL, 'rty', 'ty', 'null', NULL, NULL),
(2, 'wert', 'rty', 'female', 'qwer', '2015-06-03', 'rtyu', 'ui', 'yui', '678', 'tyu', NULL, 'rty', 'ty', 'null', NULL, NULL),
(3, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(4, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(5, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(6, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(7, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(8, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(9, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(10, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(11, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(12, 'Kenneth', 'Onek', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(13, 'Kenneth', 'Onek', 'male', 'Gulu', '2013-06-06', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(14, 'Kenneth', 'Onek', 'male', 'Gulu', '2013-06-06', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(15, 'Kenneth', 'Onek', 'male', 'Gulu', '2013-07-06', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(16, 'Kenneth', 'Onek', 'male', 'Gulu', '2013-07-06', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(17, 'Kenneth', 'Onek', 'male', 'Gulu', '2013-07-07', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(18, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(19, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(20, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(21, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(22, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(23, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(24, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(25, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(26, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(27, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(28, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(29, 'weee', 'eeee', 'female', '1234567', '2015-06-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(30, 'emma', 'styler', 'female', '1234567', '2015-05-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(31, 'emma', 'styler', 'female', '1234567', '2015-05-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(32, 'emma', 'styler', 'female', '1234567', '2015-05-23', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(33, 'emma', 'Ohio', 'male', '1234567', '2015-05-19', '4567y', '5567', 'sdfrg', 'dfgh', 'hahaha', 'null', 'sdfgh', 'fgh', 'null', 'Stroem', 'stroem@gmail.com'),
(34, 'emma', 'styler', 'female', '1234567', '2015-05-18', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(35, 'emma', 'styler', 'female', '1234567', '2015-05-21', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(36, 'emma', 'styler', 'female', '1234567', '2015-05-12', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(37, 'emma', 'styler', 'female', '1234567', '2015-05-27', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(38, 'emma', 'styler', 'female', '1234567', '2015-05-20', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(39, 'emma', 'styler', 'female', '1234567', '2015-05-01', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(40, 'emma', 'styler', 'female', '1234567', '2015-05-01', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(41, 'emma', 'styler', 'female', '1234567', '2015-05-01', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(42, 'emma', 'styler', 'female', '1234567', '2015-05-01', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(43, 'emma', 'styler', 'female', '1234567', '2015-05-11', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(44, 'emma', 'styler', 'female', '1234567', '2015-05-26', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(45, 'Kivumbi', 'Alex', 'male', 'Gulu', '2010-12-31', 'Programmer', 'Acholi', 'Gulu', 'Catholic', '0772345678', NULL, 'Techo', 'Haha', 'null', NULL, NULL),
(46, 'Nabagereka', 'Princess', 'female', '1234567', '2015-05-18', '4567y', '5567', 'sdfrg', 'dfgh', 'gthj', NULL, 'sdfgh', 'fgh', 'null', NULL, NULL),
(47, 'rrer', 'nn', 'male', 'naanaana', '2015-06-09', 'null', 'null', 'null', 'null', 'dfhfghgfhfg', 'null', 'hdfdsfs', 'null', 'Hehehaha', NULL, NULL),
(48, 'rrer', 'nn', 'male', 'naanaana', '2015-06-09', 'null', 'null', 'null', 'null', 'dfhfghgfhfg', 'null', 'hdfdsfs', 'null', 'Hehehaha', NULL, NULL),
(49, 'Karl', 'Pritchard', 'male', 'England', '1964-09-08', 'null', 'null', 'null', 'null', '0792123456', 'null', 'Makindye', 'null', 'Mkaind', NULL, NULL),
(51, 'Emmanuel', 'Opio', 'male', 'Lira', '12/12/12', 'null', 'Langi', 'Lira', 'North', '077212341234', 'Adyel', 'LMC', 'Ojwina', 'Kasubi', 'Stroem', 'emmanuel@gmail.com'),
(52, 'Mirriammmmm', 'Mary', 'female', 'Mulago', '1/1/93', 'Accountant', 'English', 'Kampala', 'Central', '9857463', 'Kiwafu', 'Kansanga', 'Kansangaaaa', 'Kawempe', 'Emmanuel', 'mirriam@gmail.com'),
(53, 'Eric', 'Sekizifkdfmbfgio', 'male', 'Kla', '1/1/95', 'Consultant', 'Muganda', 'Kampala', 'Eastern', '04148595056', 'Ebbs', 'Entebbe', 'Kawen', '', 'Mathew', 'eric@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `prescriptionid` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `prescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `screensrequest`
--

CREATE TABLE IF NOT EXISTS `screensrequest` (
  `screeningid` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `cancerid` int(11) NOT NULL,
  `cancertype` varchar(300) NOT NULL,
  `staffid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screensrequest`
--

INSERT INTO `screensrequest` (`screeningid`, `PatientID`, `cancerid`, `cancertype`, `staffid`) VALUES
(1, 1, 1, 'Breast', '101'),
(2, 3, 2, 'Cervi', '101');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE IF NOT EXISTS `staffs` (
  `staffid` varchar(50) NOT NULL,
  `first_Name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `other_name` varchar(50) DEFAULT NULL,
  `Department` varchar(100) NOT NULL,
  `Mobile_phone` varchar(15) NOT NULL,
  `Office_phone` varchar(15) NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `Next_of_Kin` varchar(100) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `pass_Word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staffid`, `first_Name`, `last_name`, `other_name`, `Department`, `Mobile_phone`, `Office_phone`, `e_mail`, `Next_of_Kin`, `User_Name`, `pass_Word`) VALUES
('', 'emma', 'emma', 'emma', 'Reception', '1234567', '1234', 'asdfgh', 'asdfghk', 'emma', 'emma'),
('101', 'Kenneth', 'Onelaw', 'Onekalit', 'Screening', '0414912345', '0414123454', 'ken@onelaw.com', 'Kenn Junior', 'ken', 'ken'),
('1246575', 'onekalit', 'kenneth', '', 'Pharmacy', '19999919991', '7737373737', '8884848848', 'kent', 'oneklaw', 'kenene'),
('125', 'Demo', 'Nstration', NULL, 'Pharmacy', '2567732433', '776323583', 'demo@nstration.com', 'Beans', 'demo', 'demo'),
('Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin'),
('consultant', 'consultant', 'consultant', 'consultant', 'Consultant', 'consultant', 'consultant', 'consultant', 'consultant', 'consultant', 'consultant'),
('Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor', 'Doctor'),
('Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy', 'Pharmacy'),
('reception', 'reception', 'reception', 'reception', 'reception', 'reception', 'reception', 'reception', 'reception', 'reception', 'reception');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(16) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `triage`
--

CREATE TABLE IF NOT EXISTS `triage` (
  `triageid` int(20) NOT NULL,
  `patientID` int(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `pulse` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `triage`
--

INSERT INTO `triage` (`triageid`, `patientID`, `temperature`, `weight`, `height`, `bp`, `pulse`) VALUES
(1, 1, 43, 234, 675, '12/98', 45),
(2, 1, 43, 234, 675, '12/98', 45),
(3, 3, 45, 134, 1023, '89/30', 76),
(4, 1, 435, 265, 789, '139/98', 87),
(5, 6, 6, 6, 6, '6', 6),
(6, 2, 22, 33, 33, '333', 33),
(7, 2, 34, 564, 454, '23/676', 45),
(8, 2, 34, 56, 200, '120/60', 45),
(9, 2, 34, 56, 200, '120/60', 45),
(10, 2, 36, 89, 178, '134/86', 89),
(11, 2, 36, 89, 178, '134/86', 89);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancer`
--
ALTER TABLE `cancer`
  ADD PRIMARY KEY (`cancerid`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnosisid`),
  ADD UNIQUE KEY `PatientID` (`PatientID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `screensrequest`
--
ALTER TABLE `screensrequest`
  ADD PRIMARY KEY (`screeningid`),
  ADD KEY `cancerid` (`cancerid`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staffid`,`User_Name`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `triage`
--
ALTER TABLE `triage`
  ADD PRIMARY KEY (`triageid`),
  ADD KEY `PatientID` (`patientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancer`
--
ALTER TABLE `cancer`
  MODIFY `cancerid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosisid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientID` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `screensrequest`
--
ALTER TABLE `screensrequest`
  MODIFY `screeningid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `triage`
--
ALTER TABLE `triage`
  MODIFY `triageid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `screensrequest`
--
ALTER TABLE `screensrequest`
  ADD CONSTRAINT `screensrequest_ibfk_1` FOREIGN KEY (`cancerid`) REFERENCES `cancer` (`cancerid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `triage`
--
ALTER TABLE `triage`
  ADD CONSTRAINT `triage_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
