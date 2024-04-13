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
-- Table structure for table `crime`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `feedback` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`place`,`feedback`) VALUES 
 ('ravi','shimoga','feed back'),
 ('kumar','bangalore','police need to get more alert new adays, and be un'),
 ('ravi','shimoga','feed back');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `crime`.`fir`
--

DROP TABLE IF EXISTS `fir`;
CREATE TABLE `fir` (
  `name` varchar(50) default NULL,
  `crime` varchar(50) default NULL,
  `complaint given by` varchar(50) default NULL,
  `crime place` varchar(50) default NULL,
  `photo` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`fir`
--

/*!40000 ALTER TABLE `fir` DISABLE KEYS */;
INSERT INTO `fir` (`name`,`crime`,`complaint given by`,`crime place`,`photo`) VALUES 
 ('subbu','murder','sidramaiya','gfgc college','images/Tulips.jpg'),
 ('subbu','murder','sidramaiya','gfgc college','images/Tulips.jpg');
/*!40000 ALTER TABLE `fir` ENABLE KEYS */;


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
 ('ravi','Mon Mar 05 02:36:02 IST 2018'),
 ('admin','Fri Mar 09 15:52:31 IST 2018'),
 ('ravi','Fri Mar 09 15:53:14 IST 2018'),
 ('admin','Fri Mar 09 16:00:23 IST 2018'),
 ('admin','Sat Mar 10 01:49:24 IST 2018'),
 ('ravi','Sat Mar 10 01:49:54 IST 2018'),
 ('ravi','Sat Mar 10 01:56:27 IST 2018'),
 ('admin','Sat Mar 10 23:42:14 IST 2018'),
 ('kumar','Sat Mar 10 23:42:38 IST 2018'),
 ('admin','Sun Mar 11 14:07:01 IST 2018'),
 ('admin','Tue Mar 13 04:45:28 IST 2018'),
 ('ravi','Tue Mar 13 04:46:22 IST 2018'),
 ('ravi','Tue Mar 13 05:16:43 IST 2018'),
 ('admin','Tue Mar 13 15:40:10 IST 2018'),
 ('ravi','Tue Mar 13 15:40:23 IST 2018'),
 ('ravi','Wed Mar 14 04:45:43 IST 2018'),
 ('admin','Wed Mar 14 15:55:05 IST 2018'),
 ('ravi','Wed Mar 14 15:55:24 IST 2018'),
 ('admin','Wed Mar 14 16:39:45 IST 2018'),
 ('ravi','Wed Mar 14 16:47:17 IST 2018'),
 ('admin','Thu Mar 15 09:31:13 IST 2018'),
 ('admin','Thu Mar 15 09:32:00 IST 2018'),
 ('ravi','Thu Mar 15 09:32:23 IST 2018'),
 ('admin','Thu Mar 15 22:23:24 IST 2018');
INSERT INTO `logs` (`officer`,`date`) VALUES 
 ('admin','Fri Mar 16 17:42:07 IST 2018'),
 ('admin','Fri Mar 16 17:57:38 IST 2018'),
 ('ravi','Fri Mar 16 17:58:41 IST 2018'),
 ('admin','Fri Mar 16 18:01:29 IST 2018'),
 ('ravi','Fri Mar 16 18:03:08 IST 2018'),
 ('admin','Sat Mar 17 16:01:18 IST 2018'),
 ('ravi','Sat Mar 17 16:03:41 IST 2018');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


--
-- Table structure for table `crime`.`missing`
--

DROP TABLE IF EXISTS `missing`;
CREATE TABLE `missing` (
  `name` varchar(50) default NULL,
  `color` varchar(50) default NULL,
  `height` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `photo` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`missing`
--

/*!40000 ALTER TABLE `missing` DISABLE KEYS */;
INSERT INTO `missing` (`name`,`color`,`height`,`place`,`photo`) VALUES 
 ('subbu','whilte','5.7','shioga','images/Penguins.jpg');
/*!40000 ALTER TABLE `missing` ENABLE KEYS */;


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
 (2,'kumar','kumar','inspector','Bhadravathi','99494949999'),
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


--
-- Table structure for table `crime`.`wanted`
--

DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `name` varchar(50) NOT NULL default '',
  `age` varchar(50) default NULL,
  `height` varchar(50) default NULL,
  `crime` varchar(200) default NULL,
  `photo` varchar(150) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`wanted`
--

/*!40000 ALTER TABLE `wanted` DISABLE KEYS */;
INSERT INTO `wanted` (`name`,`age`,`height`,`crime`,`photo`) VALUES 
 ('dauud','60','5.8','smaglling,and all illigal activities','images/Penguins.jpg'),
 ('subbu','60','5.8','all crimes','images/logo.png');
/*!40000 ALTER TABLE `wanted` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
