-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema etawahhindi
--

CREATE DATABASE IF NOT EXISTS etawahhindi;
USE etawahhindi;

--
-- Definition of table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `description` varchar(500) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `dateofupload` date NOT NULL,
  PRIMARY KEY  USING BTREE (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


--
-- Definition of table `regisrtation`
--

DROP TABLE IF EXISTS `regisrtation`;
CREATE TABLE `regisrtation` (
  `userid` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `phonenum` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regisrtation`
--

/*!40000 ALTER TABLE `regisrtation` DISABLE KEYS */;
INSERT INTO `regisrtation` (`userid`,`firstname`,`lastname`,`city`,`phonenum`,`gender`,`regdate`) VALUES 
 ('adi@mail.com','aditi','agrawal','allahabad','8907778900','Female','2013-11-12'),
 ('alok@gmail.com','alok','singh','LKO','5757886869','Male','2013-11-08'),
 ('alok_singh','Alok','Singh','sultanpur','8967123456','Male','2013-04-15'),
 ('anjali123','anjali','yadabv','Lucknow','908876543334','Female','2013-04-20'),
 ('anu123','anu','gupta','Lucknow','90123457789','Female','2013-04-18'),
 ('archi@gmail.com','archi','gupta','lalganj','8776543347789','Female','2013-11-12'),
 ('bavu@gmail.com','bhavu','thakur','patna','98764322346','Male','2013-11-12'),
 ('bhbjbbj','alkok','gkgkgi','ukhihk','68758','Male','2013-11-12'),
 ('deep','deepali','shukla','kanpur','89999999999','Female','2013-04-16'),
 ('dfghj@b.com','fgh','ghj','ghjkk','56789','Male','2013-11-12'),
 ('er.priya','priyanka','singh','Lucknow','987654321','Female','2013-04-16'),
 ('harshi@','harshika','singh','lko','3456789','Female','2013-11-12'),
 ('harshika','harshika','Singh','Lucknow','945262888888','Female','2013-04-23'),
 ('hj@c.com','vbn','ghj','ty','456789','Female','2013-11-12'),
 ('Jass@gmail','Jas','Geoge','US','678905433221','Male','2013-11-08'),
 ('jyots@123','jyotshana','kapoor','Lucknow','098776554433','Female','2013-04-23'),
 ('karu@gmail.com','karu','gupta','lko','99864345678','Female','2013-11-12'),
 ('kkjkhkkkhk','alok','kumar','jhansi','797897897','Male','2013-11-08'),
 ('kolop@','kolp','fghjk','lko','09876543212345','Male','2013-11-12'),
 ('kunal_gupta','Kunal','Gupta','Lucknow','9044323709','Male','2013-04-15'),
 ('meghna_chha','Meghna','Chhaparia','Devaria','9415591794','Female','2013-04-15'),
 ('Nikhil_niks','Nikhil','Gupta','allahabad','90123456789','Male','2013-04-27'),
 ('op@gmail','OP ','Srivastava','LKO','9087654321','Male','2013-11-08'),
 ('parul_rastogi','Parul','Rastogi','Lucknow','7893456123','Female','2013-04-15'),
 ('popat123','popat','lal','surat','099876654433','Male','2013-04-21'),
 ('radhey@mail.com','radhey','gupta','Lko','98767890','Male','2013-11-09'),
 ('raja123','raja','Gupta','Lucknow','0976544333433','Male','2013-04-18'),
 ('renu12','Renu','Gupta','renugupta@gmail.com','9087766432','Female','2013-06-21'),
 ('sadfghj@','sxcvb','sdcfvgbn','sdfghj','23456789','Male','2013-11-12'),
 ('sdf@gjk.com','asfgh','asdfgyu','asdfghj','2345678','Male','2013-11-12'),
 ('sdfg@d.co.in','dfg','sdfgh','dfgh','345678','Male','2013-11-12'),
 ('sdfgh@','sdfghj','fghjk','dfghj','34567890','Male','2013-11-12'),
 ('sdfgh@mail.com','asdfgh','dfghj','dfgh','345678','Male','2013-11-12'),
 ('sdfgh@w.com','sdf','dfg','dfg','345678','Male','2013-11-12'),
 ('sdfghjk@w.com','asdfg','dfgh','fghj','234567890','Male','2013-11-12'),
 ('singh_akash','Akash','Singh','Lucknow','8400039305','Male','2013-04-25'),
 ('usman12','usman','khan','usman@gmail.com','9044323709','Male','2013-06-17'),
 ('vivi92','Vivek','Yadav','sikandrabhad','908765432','Male','2013-06-12'),
 ('West@','radhey','gupta','Lko','09876543212345','Male','2013-11-12'),
 ('z@w.co.in','ghj','ghjuj','hjkl','90887678','Male','2013-11-12');
/*!40000 ALTER TABLE `regisrtation` ENABLE KEYS */;


--
-- Definition of table `tbllogin`
--

DROP TABLE IF EXISTS `tbllogin`;
CREATE TABLE `tbllogin` (
  `Userid` varchar(20) NOT NULL,
  `Userpass` varchar(45) NOT NULL,
  `Usertype` varchar(45) NOT NULL,
  PRIMARY KEY  (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

/*!40000 ALTER TABLE `tbllogin` DISABLE KEYS */;
INSERT INTO `tbllogin` (`Userid`,`Userpass`,`Usertype`) VALUES 
 ('admin','kcreations','admin');
/*!40000 ALTER TABLE `tbllogin` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
