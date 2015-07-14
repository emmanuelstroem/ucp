# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.24)
# Database: cancer
# Generation Time: 2015-07-14 16:35:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cancer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cancer`;

CREATE TABLE `cancer` (
  `cancerid` int(11) NOT NULL AUTO_INCREMENT,
  `cancername` varchar(100) NOT NULL DEFAULT '',
  `cancertype` varchar(100) NOT NULL DEFAULT '',
  `icdcode` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`cancerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cancer` WRITE;
/*!40000 ALTER TABLE `cancer` DISABLE KEYS */;

INSERT INTO `cancer` (`cancerid`, `cancername`, `cancertype`, `icdcode`)
VALUES
	(1,'Malignant Neoplasm of Lip','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C00'),
	(2,'Malignant Neoplasm of Base of Tongue','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C01'),
	(3,'Malignant Neoplasm of Other and Unspecified parts of Tongue','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C02'),
	(4,'Malignant Neoplasm of Gum','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C03'),
	(5,'Malignant Neoplasm of Floor of Mouth','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C04'),
	(6,'Malignant Neoplasm of Palate','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C05'),
	(7,'Malignant Neoplasm of Other and Unspecified parts of Mouth','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C06'),
	(8,'Malignant Neoplasm of Paroid Gland','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C07'),
	(9,'Malignant Neoplasm of Other and Unspecified major salivary glands','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C08'),
	(10,'Malignant Neoplasm of Tonsil','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C09'),
	(11,'Malignant Neoplasm of Oropharynx','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C10'),
	(12,'Malignant Neoplasm of Nasopharynx','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C11'),
	(13,'Malignant Neoplasm of Pyriform Sinus','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C12'),
	(14,'Malignant Neoplasm of Hypopharynx','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C13'),
	(15,'Malignant Neoplasm of Other and ill-defined sites in the Lip, Oral Cavity and Pharynx','Malignant Neoplasms of Lip, Oral Cavity and Pharynx','C14'),
	(16,'Malignant Neoplasm of Esophagus','Malignant Neoplasms of Digestive Organs','C15'),
	(17,'Malignant Neoplasm of Stomach','Malignant Neoplasms of Digestive Organs','C16'),
	(18,'Malignant Neoplasm of Small Intestine','Malignant Neoplasms of Digestive Organs','C17'),
	(19,'Malignant Neoplasm of Colon','Malignant Neoplasms of Digestive Organs','C18'),
	(20,'Malignant Neoplasm of Rectosigmoid Junction','Malignant Neoplasms of Digestive Organs','C19'),
	(21,'Malignant Neoplasm of Rectum','Malignant Neoplasms of Digestive Organs','C20'),
	(22,'Malignant Neoplasm of Anus and Anal Canal','Malignant Neoplasms of Digestive Organs','C21'),
	(23,'Malignant Neoplasm of Liver and Intrahepatic Bile Ducts','Malignant Neoplasms of Digestive Organs','C22'),
	(24,'Malignant Neoplasm of Gallbladder','Malignant Neoplasms of Digestive Organs','C23'),
	(25,'Malignant Neoplasm of Other and Unspecified parts of Biliary Tract','Malignant Neoplasms of Digestive Organs','C24'),
	(26,'Malignant Neoplasm of Pancreas','Malignant Neoplasms of Digestive Organs','C25'),
	(27,'Malignant Neoplasm of Other and ill-defined Digestive Organs','Malignant Neoplasms of Digestive Organs','C26'),
	(31,'Malignant Neoplasm of Nasal Cavity and Middle Ear','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C30'),
	(32,'Malignant Neoplasm of Accessory Sinuses','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C31'),
	(33,'Malignant Neoplasm of Larynx','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C32'),
	(34,'Malignant Neoplasm of Trachea','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C33'),
	(35,'Malignant Neoplasm of Bronchus and Lung','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C34'),
	(38,'Malignant Neoplasm of Thymus','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C37'),
	(39,'Malignant Neoplasm of Heart, Mediastinum and Pleura','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C38'),
	(40,'Malignant Neoplasm of Other and ill-defined Sites in the Respiratory System and Intrathoracic','Malignant Neoplasms of Respiratory and Intrathoracic Organs','C39'),
	(41,'Malignant Neoplasm of Bone and Articular Cartilage of Limbs','Malignant Neoplasms of Bone and Articular Cartilage','C40'),
	(42,'Malignant Neoplasm of Bone and Articular Cartilage of Other and Unspecified Sites','Malignant Neoplasms of Bone and Articular Cartilage','C41'),
	(44,'Malignant Melanoma of Skin','Melanoma and Other Malignant Neoplasms of Skin','C43'),
	(45,'Merkel Cell Carcinoma','Melanoma and Other Malignant Neoplasms of Skin','C4A'),
	(46,'Other and Unspecified Malignant Neoplasm of Skin','Melanoma and Other Malignant Neoplasms of Skin','C44'),
	(47,'Mesothelioma','Malignant Neoplasms of Mesothelial and Soft Tissue','C45'),
	(48,'Kaposi\'s Sarcoma','Malignant Neoplasms of Mesothelial and Soft Tissue','C46'),
	(49,'Malignant Neoplasm of Peripheral Nerves and Autonomic Nervous System','Malignant Neoplasms of Mesothelial and Soft Tissue','C47'),
	(50,'Malignant Neoplasm of Retroperitoneum and Peritoneum','Malignant Neoplasms of Mesothelial and Soft Tissue','C48'),
	(51,'Malignant Neoplasm of Other Connective and Soft Tissue','Malignant Neoplasms of Mesothelial and Soft Tissue','C49'),
	(52,'Malignant Neoplasm of Breast','Malignant Neoplasms of Breast','C50'),
	(53,'Malignant Neoplasm of Vulva','Malignant Neoplasms of Female Genital Organs','C51'),
	(54,'Malignant Neoplasm of Vagina','Malignant Neoplasms of Female Genital Organs','C52'),
	(55,'Malignant Neoplasm of Cervix of Uteri','Malignant Neoplasms of Female Genital Organs','C53'),
	(56,'Malignant Neoplasm of Corpus Uteri','Malignant Neoplasms of Female Genital Organs','C54'),
	(57,'Malignant Neoplasm of Uterus, part Unspecified','Malignant Neoplasms of Female Genital Organs','C55'),
	(58,'Malignant Neoplasm of Ovary','Malignant Neoplasms of Female Genital Organs','C56'),
	(59,'Malignant Neoplasm of Other and Unspecified Female Genital Organda','Malignant Neoplasms of Female Genital Organs','C57'),
	(60,'Malignant Neoplasm of Placenta','Malignant Neoplasms of Female Genital Organs','C58'),
	(62,'Malignant Neoplasm of Penis','Malignant Neoplasms of Male Genital Organs','C60'),
	(63,'Malignant Neoplasm of Prostate','Malignant Neoplasms of Male Genital Organs','C61'),
	(64,'Malignant Neoplasm of Testis','Malignant Neoplasms of Male Genital Organs','C62'),
	(65,'Malignant Neoplasm of Other and Unspecified Male Genital Organs','Malignant Neoplasms of Male Genital Organs','C63'),
	(66,'Malignant Neoplasm of Kidney, EXCEPT Renal Pelvis','Malignant Neoplasms of Urinary Tract','C64'),
	(67,'Malignant Neoplasm of Renal Pelvis','Malignant Neoplasms of Urinary Tract','C65'),
	(68,'Malignant Neoplasm of Ureter','Malignant Neoplasms of Urinary Tract','C66'),
	(69,'Malignant Neoplasm of Bladder','Malignant Neoplasms of Urinary Tract','C67'),
	(70,'Malignant Neoplasm of Other and Unspecified Urinary Organs','Malignant Neoplasms of Urinary Tract','C68'),
	(71,'Malignant Neoplasm of Eye and Adnexa','Malignant Neoplasms of Eye, Brain and Other parts of Central Nervous System','C69'),
	(72,'Malignant Neoplasm of Meninges','Malignant Neoplasms of Eye, Brain and Other parts of Central Nervous System','C70'),
	(73,'Malignant Neoplasm of Brain','Malignant Neoplasms of Eye, Brain and Other parts of Central Nervous System','C71'),
	(74,'Malignant Neoplasm of Spinal Cord, Cranial Nerves and Other parts of Central Nervous System','Malignant Neoplasms of Eye, Brain and Other parts of Central Nervous System','C72'),
	(75,'Malignant Neoplasm of Thyroid Gland','Malignant Neoplasms of Thyroid and Other Endocrine Glands','C73'),
	(76,'Malignant Neoplasm of Adrenal Gland','Malignant Neoplasms of Thyroid and Other Endocrine Glands','C74'),
	(77,'Malignant Neoplasm of Other Endocrine Glands and Related Structures','Malignant Neoplasms of Thyroid and Other Endocrine Glands','C75'),
	(78,'Malignant Neuroendocrine Tumors','Malignant Neuroendocrine Tumors','C7A'),
	(79,'Secondary Neuroendocrine Tumors','Secondary Neuroendocrine Tumors','C7B'),
	(80,'Other and ill-defined Sites','Malignant Neoplasms of ill-defined, Other Secondary and Unspecified Sites','C76'),
	(81,'Secondary Malignant Neoplasm of Lymph Nodes','Malignant Neoplasms of ill-defined, Other Secondary and Unspecified Sites','C77'),
	(82,'Secondary Malignant Neoplasm of Respiratory and Digestive Organs','Malignant Neoplasms of ill-defined, Other Secondary and Unspecified Sites','C78'),
	(83,'Secondary Malignant Neoplasm of Other and Unspecified Sites','Malignant Neoplasms of ill-defined, Other Secondary and Unspecified Sites','C79'),
	(84,'Malignant Neoplasm Without Specification of Site','Malignant Neoplasms of ill-defined, Other Secondary and Unspecified Sites','C80'),
	(85,'Hodgkin Lymphoma','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C81'),
	(86,'Follicular Lymphoma','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C82'),
	(87,'Non-Follicular Lymphoma','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C83'),
	(88,'Mature T/NK-Cell Lymphomas','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C84'),
	(89,'Other Specified and Unspecified Types of Non-Hodgkin Lymphoma','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C85'),
	(90,'Other Specified Types of T/NK-Cell Lymphoma','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C86'),
	(92,'Malignant Immunoproliferative Diseases and certain other B-Cell Lymphomas','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C88'),
	(94,'Multiple Myeloma and Malignant Plasma Cell Neoplasms','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C90'),
	(95,'Lymphoid Leukemia','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C91'),
	(96,'Myeloid Leukemia','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C92'),
	(97,'Monocytic Leukemia','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C93'),
	(98,'Other Leukemias of Specified Cell Type','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C94'),
	(99,'Leukemia of Unspecified Cell Type','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C95'),
	(100,'Other and Unspecified Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','Malignant Neoplasms of Lymphoid, Hematopoietic and Related Tissue','C96'),
	(101,'Carcinoma in situ of Oral Cavity, Esophagus and Stomach','In situ Neoplasms','D00'),
	(102,'Carcinoma in situ of Other and Unspecified Digestive Organs','In situ Neoplasms','D01'),
	(103,'Carcinoma in situ of Middle Ear and Respiratory System','In situ Neoplasms','D02'),
	(104,'Melanoma in situ','In situ Neoplasms','D03'),
	(105,'Carcinoma in situ of Skin','In situ Neoplasms','D04'),
	(106,'Carcinoma in situ of Breast','In situ Neoplasms','D05'),
	(107,'Carcinoma in situ of Cervix Uteri','In situ Neoplasms','D06'),
	(108,'Carcinoma in situ of Other and Unspecified Genital Organs','In situ Neoplasms','D07'),
	(109,'Carcinoma in situ of Other and Unspecified Sites','In situ Neoplasms','D09'),
	(110,'Benign Neoplasm of Mouth and Pharynx','Benign Neoplasms except Benign Neuroendocrine Tumor','D10'),
	(111,'Benign Neoplasm of Major Salivary Glands','Benign Neoplasms except Benign Neuroendocrine Tumor','D11'),
	(112,'Benign Neoplasm of Colon, Rectum, Anus and Anal Canal','Benign Neoplasms except Benign Neuroendocrine Tumor','D12'),
	(113,'Benign Neoplasm of Other and ill-defined parts of Digestive System','Benign Neoplasms except Benign Neuroendocrine Tumor','D13'),
	(114,'Benign Neoplasm of Middle Ear and Respiratory System','Benign Neoplasms except Benign Neuroendocrine Tumor','D14'),
	(115,'Benign Neoplasm of Other and Unspecified Intrathoracic Organs','Benign Neoplasms except Benign Neuroendocrine TumorBenign Neoplasms except Benign Neuroendocrine Tum','D15'),
	(116,'Benign Neoplasm of Bone and Articular Cartilage','Benign Neoplasms except Benign Neuroendocrine TumorBenign Neoplasms except Benign Neuroendocrine Tum','D16'),
	(117,'Benign Limpomatous Neoplasm','Benign Neoplasms except Benign Neuroendocrine Tumor','D17'),
	(118,'Hemangioma and Lymphangioma, any site','Benign Neoplasms except Benign Neuroendocrine Tumor','D18'),
	(119,'Benign Neoplasm of Mesothelial Tissue','Benign Neoplasms except Benign Neuroendocrine Tumor','D19'),
	(120,'Benign Neoplasm of Soft Tissue of Retroperitoneum and Peritoneum','Benign Neoplasms except Benign Neuroendocrine Tumor','D20'),
	(121,'Other Benign Neoplasms of Connective and Other Soft Tissue','Benign Neoplasms except Benign Neuroendocrine Tumor','D21'),
	(122,'Melanocytic Nevi','Benign Neoplasms except Benign Neuroendocrine Tumor','D22'),
	(123,'Other Benign Neoplasms of Skin','Benign Neoplasms except Benign Neuroendocrine Tumor','D23'),
	(124,'Benign Neoplasm of Breast','Benign Neoplasms except Benign Neuroendocrine Tumor','D24'),
	(125,'Leiomyoma of Uterus','Benign Neoplasms except Benign Neuroendocrine Tumor','D25'),
	(126,'Other Benign Neoplasms of Uterus','Benign Neoplasms except Benign Neuroendocrine Tumor','D26'),
	(127,'Benign Neoplasm of Ovary','Benign Neoplasms except Benign Neuroendocrine TumorBenign Neoplasms except Benign Neuroendocrine Tum','D27'),
	(128,'Benign Neoplasm of Other and Unspecified Female Genital Organs','Benign Neoplasms except Benign Neuroendocrine Tumor','D28'),
	(129,'Benign Neoplasm of Male Genital Organs','Benign Neoplasms except Benign Neuroendocrine Tumor','D29'),
	(130,'Benign Neoplasm of Urinary Organs','Benign Neoplasms except Benign Neuroendocrine Tumor','D30'),
	(131,'Benign Neoplasm of Eye and Adnexa','Benign Neoplasms except Benign Neuroendocrine Tumor','D31'),
	(132,'Benign Neoplasm of Meninges','Benign Neoplasms except Benign Neuroendocrine Tumor','D32'),
	(133,'Benign Neoplasm of Brain and Other Parts of Central Nervous System','Benign Neoplasms except Benign Neuroendocrine Tumor','D33'),
	(134,'Benign Neoplasm of Thyroid Gland','Benign Neoplasms except Benign Neuroendocrine Tumor','D34'),
	(135,'Benign Neoplasm of Other and Unspecified Endocrine Glands','Benign Neoplasms except Benign Neuroendocrine Tumor','D35'),
	(136,'Benign Neoplasm of Other and Unspecified Sites','Benign Neoplasms except Benign Neuroendocrine Tumor','D36'),
	(137,'Benign Neuroendocrine Tumors','Benign Neuroendocrine Tumors','D3A'),
	(138,'Neoplasm of Uncertain Behavior of Oral Cavity and Digestive Organs','Polycythemia Vera and Myelodysplastic Syndromes','D37'),
	(139,'Neoplasm of Uncertain Behavior of Middle Ear and Respiratory and Intrathoracic Organs','Polycythemia Vera and Myelodysplastic Syndromes','D38'),
	(140,'Neoplasm of Uncertain Behavior of Female Genital Organs','Polycythemia Vera and Myelodysplastic Syndromes','D39'),
	(141,'Neoplasm of Uncertain Behavior of Male Genital Organs','Polycythemia Vera and Myelodysplastic Syndromes','D40'),
	(142,'Neoplasm of Uncertain Behavior of Urinary Organs','Polycythemia Vera and Myelodysplastic Syndromes','D41'),
	(143,'Neoplasm of Uncertain Behavior of Meninges','Polycythemia Vera and Myelodysplastic Syndromes','D42'),
	(144,'Neoplasm of Uncertain Behavior of Brain and Central Nervous System','Polycythemia Vera and Myelodysplastic Syndromes','D43'),
	(145,'Neoplasm of Uncertain Behavior of Endocrine Glands','Polycythemia Vera and Myelodysplastic Syndromes','D44'),
	(146,'Polycythemia Vera','Polycythemia Vera and Myelodysplastic Syndromes','D45'),
	(147,'Myelodysplastic Syndromes','Polycythemia Vera and Myelodysplastic Syndromes','D46'),
	(148,'Other Neoplasms of Uncertain Behavior of Lymphoid, Hematopoietic and Related Tissue','Polycythemia Vera and Myelodysplastic Syndromes','D47'),
	(149,'Neoplasm of Uncertain Behavior of Other and Unspecified Sites','Polycythemia Vera and Myelodysplastic Syndromes','D48'),
	(150,'Neoplasms of Unspecified Behavior','Unspecified Behavior','D49');

/*!40000 ALTER TABLE `cancer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table diagnosis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `diagnosis`;

CREATE TABLE `diagnosis` (
  `diagnosisid` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `diagnosis` varchar(500) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  PRIMARY KEY (`diagnosisid`),
  UNIQUE KEY `PatientID` (`PatientID`),
  UNIQUE KEY `staffid` (`staffid`),
  CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`staffid`) REFERENCES `staffs` (`staffid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table patient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `patientID` int(20) NOT NULL AUTO_INCREMENT,
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
  `email` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `staffid` int(11) DEFAULT NULL,
  PRIMARY KEY (`patientID`),
  UNIQUE KEY `staffid` (`staffid`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`staffid`) REFERENCES `staffs` (`staffid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;

INSERT INTO `patient` (`patientID`, `fname`, `lname`, `sex`, `BirthPlace`, `DOB`, `occupation`, `tribe`, `district`, `region`, `contact`, `village`, `county`, `subCounty`, `parish`, `othername`, `email`, `date`, `staffid`)
VALUES
	(1,'Vincent','Kiberu','female','Kampala','2015-06-03','Facilitator','ui','yui','678','0772123456',NULL,'rty','ty','null',NULL,NULL,'2015-07-14 02:49:56',NULL),
	(2,'Angee','George William','female','Soroti','2015-06-03','Student','ui','yui','678','0791000912',NULL,'rty','ty','null',NULL,NULL,'2015-07-14 02:53:49',NULL),
	(3,'Joshua','Tenywa','male','Masaka','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,'2015-07-14 03:03:28',NULL),
	(4,'Eric','Umar','male','Mbale','2010-12-31','Analyst','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,'2015-07-14 03:05:14',NULL),
	(5,'Jamal','Yakubu','male','Mukono','2010-12-31','Intensivist','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,'2015-07-14 03:25:46',NULL),
	(6,'Lorna','Twenomugisha','male','Mbarara','2010-12-31','Designer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(7,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(8,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(9,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(10,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(11,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(12,'Kenneth','Onek','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(13,'Kenneth','Onek','male','Gulu','2013-06-06','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(14,'Kenneth','Onek','male','Gulu','2013-06-06','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(15,'Kenneth','Onek','male','Gulu','2013-07-06','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(16,'Kenneth','Onek','male','Gulu','2013-07-06','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(17,'Kenneth','Onek','male','Gulu','2013-07-07','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(18,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(19,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(20,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(21,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(22,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(23,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(24,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(25,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(26,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(27,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(28,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(29,'weee','eeee','female','1234567','2015-06-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(30,'emma','styler','female','1234567','2015-05-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(31,'emma','styler','female','1234567','2015-05-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(32,'emma','styler','female','1234567','2015-05-23','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(33,'emma','Ohio','male','1234567','2015-05-19','4567y','5567','sdfrg','dfgh','hahaha','null','sdfgh','fgh','null','Stroem','stroem@gmail.com',NULL,NULL),
	(34,'emma','styler','female','10/1/1990','2015-05-18','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(35,'emma','styler','female','1234567','2015-05-21','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(36,'emma','styler','female','1234567','2015-05-12','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(37,'emma','styler','female','1234567','2015-05-27','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(38,'emma','styler','female','1234567','2015-05-20','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(39,'emma','styler','female','1234567','2015-05-01','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(40,'emma','styler','female','12/12/2004','2015-05-01','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(41,'emma','styler','female','1234567','2015-05-01','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(42,'emma','styler','female','1234567','2015-05-01','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(43,'emma','styler','female','1234567','2015-05-11','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(44,'emma','styler','female','11/12/1997','2015-05-26','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(45,'Kivumbi','Alex','male','Gulu','2010-12-31','Programmer','Acholi','Gulu','Catholic','0772345678',NULL,'Techo','Haha','null',NULL,NULL,NULL,NULL),
	(46,'Nabagereka','Princess','female','1234567','2015-05-18','4567y','5567','sdfrg','dfgh','gthj',NULL,'sdfgh','fgh','null',NULL,NULL,NULL,NULL),
	(47,'rrer','nn','male','naanaana','2015-06-09','null','null','null','null','dfhfghgfhfg','null','hdfdsfs','null','Hehehaha',NULL,NULL,NULL,NULL),
	(48,'rrer','nn','male','naanaana','2015-06-09','null','null','null','null','dfhfghgfhfg','null','hdfdsfs','null','Hehehaha',NULL,NULL,NULL,NULL),
	(49,'Karl','Pritchard','male','England','1964-09-08','null','null','null','null','0792123456','null','Makindye','null','Mkaind',NULL,NULL,NULL,NULL),
	(51,'Emmanuel','Opio','male','Lira','12/12/12','null','Langi','Lira','North','077212341234','Adyel','LMC','Ojwina','Kasubi','Stroem','emmanuel@gmail.com',NULL,NULL),
	(52,'Mirriammmmm','Mary','female','Mulago','1/1/93','Accountant','English','Kampala','Central','9857463','Kiwafu','Kansanga','Kansangaaaa','Kawempe','Emmanuel','mirriam@gmail.com',NULL,NULL),
	(53,'Eric','Sekizifkdfmbfgio','male','Kla','1/1/95','Consultant','Muganda','Kampala','Eastern','04148595056','Ebbs','Entebbe','Kawen','','Mathew','eric@gmail.com',NULL,NULL),
	(54,'Steve','Human','male','Kampala','2000-07-02','Reporter','Kampalan','Kampala','Central','0771545652','-','-','-','-','','steve@monitor.co.ug',NULL,NULL);

/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table prescription
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `prescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `prescription` varchar(200) DEFAULT '',
  `drug` varchar(11) DEFAULT NULL,
  `duration` varchar(11) DEFAULT NULL,
  `checkup` date DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prescriptionid`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;

INSERT INTO `prescription` (`prescriptionid`, `PatientID`, `prescription`, `drug`, `duration`, `checkup`, `staffid`, `date`)
VALUES
	(1,2,'2x3','Paracetamol','5','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(6,17,'2x4','null','null','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(7,17,'2x4','null','null','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(8,17,'1x1','curamol','7','2015-07-25',NULL,'2015-07-13 23:51:12'),
	(9,17,'2x3','quinine','5','2015-07-25',NULL,'2015-07-13 23:51:12'),
	(10,2,'3x1','Hedex','3','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(11,17,'1x2','camaquin','4','2015-07-25',NULL,'2015-07-13 23:51:12'),
	(12,17,'2x1','Nomadol','2','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(13,17,'2x1','Nomadol','2','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(14,17,'500','angee','3','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(15,17,'2x3','paracetamol','4','2016-01-01',NULL,'2015-07-13 23:51:12'),
	(16,17,'2x1','Apislin','2','2014-03-03',NULL,'2015-07-13 23:51:12'),
	(17,17,'2x3','karl','3','2016-03-04',NULL,'2015-07-13 23:51:12'),
	(18,17,'2x3','panadil','5','2015-07-25',NULL,'2015-07-13 23:51:12'),
	(19,17,'2x5','curamol','3','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(20,17,'2x2','deuces','1','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(21,17,'2x2','deuces','1','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(22,17,'1x1','toilet','14','2015-08-30',NULL,'2015-07-13 23:51:12'),
	(23,17,'2x1','pee','1','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(24,17,'2','haha','1','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(25,17,'2','haha','1','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(26,32,'12','haha','1','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(27,3,'22','toilet','2','2015-07-25',NULL,'2015-07-13 23:51:12'),
	(28,49,'2x1','hedex','1','2015-07-20',NULL,'2015-07-13 23:51:12'),
	(29,8,'2x1','josh','34','2015-07-20',3,'2015-07-13 23:51:12'),
	(39,45,'1x3','Pepsi','12','2015-07-20',3,'2015-07-14 04:53:27'),
	(40,45,'2x1','Pepsi','12','2015-07-20',3,'2015-07-14 04:58:38'),
	(41,45,'2x1','Pepsi','12','2015-07-20',3,'2015-07-14 04:59:21');

/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table screens_result
# ------------------------------------------------------------

DROP TABLE IF EXISTS `screens_result`;

CREATE TABLE `screens_result` (
  `resultid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `requestid` int(11) DEFAULT NULL,
  `patientID` int(11) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `cancerid` int(11) DEFAULT NULL,
  `primarysite` varchar(50) DEFAULT NULL,
  `histology` varchar(200) DEFAULT NULL,
  `seqnum` varchar(11) DEFAULT NULL,
  `behavior` varchar(50) DEFAULT NULL,
  `grade` varchar(11) DEFAULT NULL,
  `laterality` varchar(11) DEFAULT NULL,
  `diagconfirm` varchar(11) DEFAULT NULL,
  `clinict` int(11) DEFAULT NULL,
  `clinicn` int(11) DEFAULT NULL,
  `clinicm` int(11) DEFAULT NULL,
  `clinstagegrp` int(11) DEFAULT NULL,
  `patht` int(11) DEFAULT NULL,
  `pathn` int(11) DEFAULT NULL,
  `pathm` int(11) DEFAULT NULL,
  `pathstagegrp` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultid`),
  UNIQUE KEY `patientID` (`patientID`,`requestid`,`staffid`,`cancerid`),
  KEY `requestid` (`requestid`),
  KEY `cancerid` (`cancerid`),
  KEY `staffid` (`staffid`),
  CONSTRAINT `screens_result_ibfk_1` FOREIGN KEY (`requestid`) REFERENCES `screensrequest` (`requestid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `screens_result_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `screens_result_ibfk_3` FOREIGN KEY (`cancerid`) REFERENCES `cancer` (`cancerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `screens_result_ibfk_4` FOREIGN KEY (`staffid`) REFERENCES `staffs` (`staffid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `screens_result` WRITE;
/*!40000 ALTER TABLE `screens_result` DISABLE KEYS */;

INSERT INTO `screens_result` (`resultid`, `requestid`, `patientID`, `staffid`, `cancerid`, `primarysite`, `histology`, `seqnum`, `behavior`, `grade`, `laterality`, `diagconfirm`, `clinict`, `clinicn`, `clinicm`, `clinstagegrp`, `patht`, `pathn`, `pathm`, `pathstagegrp`)
VALUES
	(1,NULL,NULL,NULL,NULL,NULL,'this is a demo result',NULL,'ai oum thei',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `screens_result` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table screensrequest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `screensrequest`;

CREATE TABLE `screensrequest` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `PatientID` int(11) NOT NULL,
  `cancerid` int(11) DEFAULT NULL,
  `staffid` int(11) DEFAULT NULL,
  `allergy` varchar(50) DEFAULT NULL,
  `hiv` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`requestid`),
  UNIQUE KEY `PatientID` (`PatientID`,`cancerid`,`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `screensrequest` WRITE;
/*!40000 ALTER TABLE `screensrequest` DISABLE KEYS */;

INSERT INTO `screensrequest` (`requestid`, `PatientID`, `cancerid`, `staffid`, `allergy`, `hiv`, `date`)
VALUES
	(1,1,1,101,NULL,NULL,NULL),
	(2,3,2,101,NULL,NULL,NULL),
	(3,2,NULL,3,'dust','positive',NULL),
	(4,17,NULL,3,'agag','Negative',NULL),
	(5,3,3,3,'flu','Negative','2015-07-14 04:36:41'),
	(8,54,2,3,'asdshaha','Positive',NULL),
	(14,0,3,3,'haha','Negative','2015-07-14 04:38:30'),
	(15,4,16,3,'haha','Positive','2015-07-14 04:43:19'),
	(16,46,41,3,'Pollen','Positive','2015-07-14 04:44:16'),
	(17,46,5,3,'','Negative','2015-07-14 04:49:00'),
	(20,46,24,3,'haha','Negative','2015-07-14 04:50:15'),
	(21,46,22,3,'kiki','Dont Know','2015-07-14 04:50:35'),
	(22,45,15,3,'Cocacola','Negative','2015-07-14 04:58:19');

/*!40000 ALTER TABLE `screensrequest` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staffs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staffs`;

CREATE TABLE `staffs` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `first_Name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `other_name` varchar(50) DEFAULT NULL,
  `Department` varchar(15) NOT NULL DEFAULT '',
  `Mobile_phone` varchar(15) NOT NULL,
  `Office_phone` varchar(15) NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `Next_of_Kin` varchar(100) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `pass_Word` varchar(50) NOT NULL,
  PRIMARY KEY (`staffid`,`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;

INSERT INTO `staffs` (`staffid`, `first_Name`, `last_name`, `other_name`, `Department`, `Mobile_phone`, `Office_phone`, `e_mail`, `Next_of_Kin`, `User_Name`, `pass_Word`)
VALUES
	(1,'Admin','Admin','Admin','Admin','Admin','Admin','Admin','Admin','Admin','Admin'),
	(2,'consultant','consultant','consultant','Consultant','consultant','consultant','consultant','consultant','consultant','consultant'),
	(3,'Ian','Clerk','Doctor','Doctor','Doctor','Doctor','Doctor','Doctor','Doctor','Doctor'),
	(4,'Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy','Pharmacy'),
	(5,'reception','reception','reception','reception','reception','reception','reception','reception','reception','reception'),
	(101,'Kenneth','Onelaw','Onekalit','Screening','0414912345','0414123454','ken@onelaw.com','Kenn Junior','ken','ken'),
	(125,'Demo','Nstration',NULL,'Pharmacy','2567732433','776323583','demo@nstration.com','Beans','demo','demo'),
	(583,'emma','emma','emma','Reception','1234567','1234','asdfgh','asdfghk','emma','emma'),
	(1246575,'onekalit','kenneth','','Pharmacy','19999919991','7737373737','8884848848','kent','oneklaw','kenene');

/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table triage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `triage`;

CREATE TABLE `triage` (
  `triageid` int(20) NOT NULL AUTO_INCREMENT,
  `patientID` int(20) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `bp` varchar(10) DEFAULT NULL,
  `pulse` int(5) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `staffid` int(11) DEFAULT NULL,
  PRIMARY KEY (`triageid`),
  KEY `PatientID` (`patientID`),
  CONSTRAINT `triage_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `triage` WRITE;
/*!40000 ALTER TABLE `triage` DISABLE KEYS */;

INSERT INTO `triage` (`triageid`, `patientID`, `temperature`, `weight`, `height`, `bp`, `pulse`, `date`, `staffid`)
VALUES
	(1,1,43,234,675,'12/98',45,'2015-07-07 00:00:00',NULL),
	(2,1,43,234,675,'12/98',45,'2013-01-02 00:00:00',NULL),
	(3,3,45,134,1023,'89/30',76,'2015-10-12 00:00:00',NULL),
	(4,1,435,265,789,'139/98',87,'2009-09-23 00:00:00',NULL),
	(5,6,6,6,6,'6',6,'2000-01-01 00:00:00',NULL),
	(6,2,22,33,33,'333',33,NULL,NULL),
	(7,2,34,564,454,'23/676',45,'1999-12-03 00:00:00',NULL),
	(8,2,34,56,200,'120/60',45,NULL,NULL),
	(9,2,34,56,200,'120/60',45,NULL,NULL),
	(10,2,36,89,178,'134/86',89,NULL,NULL),
	(11,2,36,89,178,'134/86',89,NULL,NULL),
	(12,8,98,54,123,'454/34',323,'2015-07-09 20:16:35',NULL),
	(13,49,37,85,190,'165/80',75,'2015-07-10 07:19:01',NULL),
	(14,2,36,87,123,'125/56',74,NULL,NULL),
	(15,54,23,34,124,'126/65',56,NULL,NULL),
	(16,54,56,76,155,'130/67',34,NULL,NULL),
	(17,54,23,54,123,'3435',123,NULL,NULL),
	(18,54,32,34,12,'12/13',23,NULL,NULL),
	(19,14,34,232,213,'123',45,'2015-07-14 02:07:10',583),
	(21,49,36,90,198,'165/44',90,'2015-07-14 02:09:39',583),
	(22,49,34,87,197,'145/41',78,'2015-07-14 02:14:30',583),
	(23,49,35,88,199,'134/43',87,'2015-07-14 02:15:53',583),
	(24,4,40,89,167,'135/45',67,'2015-07-14 03:05:47',583),
	(25,5,35,78,165,'163/65',76,'2015-07-14 03:26:13',583);

/*!40000 ALTER TABLE `triage` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
