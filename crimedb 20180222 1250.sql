-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.13-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema crime
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ crime;
USE crime;

--
-- Table structure for table `crime`.`complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints` (
  `complaintID` int(50) unsigned NOT NULL auto_increment,
  `complainant` varchar(50) default NULL,
  `complainee` varchar(50) default NULL,
  `complaintDetails` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  PRIMARY KEY  (`complaintID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`complaints`
--

/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` (`complaintID`,`complainant`,`complainee`,`complaintDetails`,`address`,`phone`) VALUES 
 (1,'ravish','putty','car robbery','yalavatty','38539754845'),
 (2,'arun','meghana','hosa bike robbery','shimoga','75878838387'),
 (3,'arun','meghana','hosa bike robbery','shimoga','75878838387'),
 (4,'ravi','meghana','robbefgslg','shimoga','4456536'),
 (5,'gdgd','sdfgsd','sdfgsdfg','dsghsd','34535'),
 (6,'gdgd','sdfgsd','sdfgsdfg','dsghsd','34535'),
 (7,'','','','',''),
 (8,'','','','','');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;


--
-- Table structure for table `crime`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `crime`.`logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `officer` varchar(50) default NULL,
  `date` varchar(50) default NULL,
  KEY `FK_logs_officer` (`officer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`logs`
--

/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`officer`,`date`) VALUES 
 ('ravi','Sun Nov 26 17:42:43 IST 2017'),
 ('admin','Sun Nov 26 17:47:23 IST 2017'),
 ('ravi','Sun Nov 26 17:52:48 IST 2017'),
 ('admin','Sun Nov 26 17:53:36 IST 2017'),
 ('admin','Wed Dec 06 15:22:50 IST 2017'),
 ('admin','Wed Dec 06 15:24:39 IST 2017'),
 ('admin','Thu Jan 04 10:55:27 IST 2018'),
 ('admin','Thu Jan 11 11:11:45 IST 2018'),
 ('admin','Thu Jan 18 11:35:08 IST 2018'),
 ('admin','Thu Feb 01 14:50:36 IST 2018'),
 ('admin','Sat Feb 03 09:41:48 IST 2018'),
 ('admin','Sun Feb 04 11:02:01 IST 2018'),
 ('admin','Wed Feb 07 16:49:20 IST 2018'),
 ('admin','Fri Feb 16 16:04:46 IST 2018'),
 ('admin','Sat Feb 17 12:14:32 IST 2018'),
 ('admin','Tue Feb 20 16:11:46 IST 2018'),
 ('ravi','Tue Feb 20 16:12:55 IST 2018'),
 ('admin','Wed Feb 21 11:55:13 IST 2018'),
 ('admin','Wed Feb 21 12:45:50 IST 2018'),
 ('admin','Wed Feb 21 12:46:38 IST 2018'),
 ('kumar','Wed Feb 21 12:49:50 IST 2018'),
 ('kumar','Wed Feb 21 12:50:33 IST 2018'),
 ('kumar','Wed Feb 21 12:53:36 IST 2018'),
 ('admin','Wed Feb 21 22:44:39 IST 2018');
INSERT INTO `logs` (`officer`,`date`) VALUES 
 ('kumar','Wed Feb 21 22:46:25 IST 2018'),
 ('kumar','Wed Feb 21 22:51:10 IST 2018'),
 ('admin','Wed Feb 21 23:06:16 IST 2018'),
 ('kumar','Wed Feb 21 23:13:43 IST 2018'),
 ('admin','Wed Feb 21 23:23:17 IST 2018'),
 ('admin','Thu Feb 22 11:26:22 IST 2018'),
 ('kumar','Thu Feb 22 11:28:20 IST 2018'),
 ('kumar','Thu Feb 22 11:29:47 IST 2018');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


--
-- Table structure for table `crime`.`officer`
--

DROP TABLE IF EXISTS `officer`;
CREATE TABLE `officer` (
  `id` int(11) NOT NULL auto_increment,
  `officername` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `designation` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `contactno` varchar(50) default NULL,
  PRIMARY KEY  (`officername`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`officer`
--

/*!40000 ALTER TABLE `officer` DISABLE KEYS */;
INSERT INTO `officer` (`id`,`officername`,`password`,`designation`,`location`,`contactno`) VALUES 
 (2,'kumar','kumar','inspector','Bhadravathi','994949499'),
 (1,'ravi','ravi','police','shimoga','8585949494');
/*!40000 ALTER TABLE `officer` ENABLE KEYS */;


--
-- Table structure for table `crime`.`victim`
--

DROP TABLE IF EXISTS `victim`;
CREATE TABLE `victim` (
  `vname` varchar(50) default NULL,
  `aliasname` varchar(50) default NULL,
  `offecnetype` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `offencelocation` varchar(50) default NULL,
  `photo` varchar(50) default NULL,
  `addedby` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`victim`
--

/*!40000 ALTER TABLE `victim` DISABLE KEYS */;
INSERT INTO `victim` (`vname`,`aliasname`,`offecnetype`,`age`,`address`,`gender`,`offencelocation`,`photo`,`addedby`) VALUES 
 ('sati','motte','robbery','40','bangalore','radio','vijayanagara','images/Penguins.jpg','admin'),
 ('kali','kalibhai','robery','40','bangalore','male','bangalore','images/Chrysanthemum.jpg','Ram'),
 ('sfjgskdfg','dkjfgskdj','qdkjgkbqfdljfj','qdfjbskdjf','qsdlfjgkdj','male','sdsdfg','images/null','null'),
 ('sfjgskdfg','dkjfgskdj','qdkjgkbqfdljfj','qdfjbskdjf','qsdlfjgkdj','male','sdsdfg','images/null','null'),
 ('fghfg','fghfg','fghdgh','dfghsfg','dfghfgh','male','fghdfg','images/Tulips.jpg','admin');
/*!40000 ALTER TABLE `victim` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
