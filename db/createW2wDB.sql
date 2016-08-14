-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: w2w
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` text,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `set_word_relation`
--

DROP TABLE IF EXISTS `set_word_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `set_word_relation` (
  `wpsID` int(11) NOT NULL,
  `wpID` int(11) NOT NULL,
  UNIQUE KEY `set_word_relation_set` (`wpsID`,`wpID`),
  KEY `set_word_relation_foreignWordPair` (`wpID`),
  CONSTRAINT `set_word_relation_foreignWPS` FOREIGN KEY (`wpsID`) REFERENCES `wordpairset` (`wpsID`),
  CONSTRAINT `set_word_relation_foreignWordPair` FOREIGN KEY (`wpID`) REFERENCES `wordpair` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `bio` text,
  `lastLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_category_word`
--

DROP TABLE IF EXISTS `user_category_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_category_word` (
  `uID` int(11) NOT NULL,
  `cID` int(11) NOT NULL,
  `wpID` int(11) NOT NULL,
  UNIQUE KEY `relate_U_C_W` (`uID`,`cID`,`wpID`),
  KEY `cID` (`cID`),
  KEY `wpID` (`wpID`),
  CONSTRAINT `user_category_word_ibfk_1` FOREIGN KEY (`uID`) REFERENCES `user` (`uID`),
  CONSTRAINT `user_category_word_ibfk_2` FOREIGN KEY (`cID`) REFERENCES `category` (`cID`),
  CONSTRAINT `user_category_word_ibfk_3` FOREIGN KEY (`wpID`) REFERENCES `wordpair` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wordpair`
--

DROP TABLE IF EXISTS `wordpair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wordpair` (
  `wpID` int(11) NOT NULL AUTO_INCREMENT,
  `langFrom` varchar(3) NOT NULL,
  `langTo` varchar(3) NOT NULL,
  `wordFrom` text NOT NULL,
  `wordTo` text NOT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wordpairset`
--

DROP TABLE IF EXISTS `wordpairset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wordpairset` (
  `wpsID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `langFrom` varchar(3) NOT NULL,
  `langTo` varchar(3) NOT NULL,
  `description` text,
  `level` enum('beginner','intermediate','advanced') DEFAULT NULL,
  PRIMARY KEY (`wpsID`),
  KEY `uID` (`uID`),
  CONSTRAINT `wordpairset_ibfk_1` FOREIGN KEY (`uID`) REFERENCES `user` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wordstats`
--

DROP TABLE IF EXISTS `wordstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wordstats` (
  `wpID` int(11) NOT NULL AUTO_INCREMENT,
  `timesViewed` int(11) DEFAULT '0',
  `lastResult` tinyint(1) DEFAULT NULL,
  `lastViewed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timesWrong` int(11) DEFAULT '0',
  `uID` int(11) NOT NULL,
  UNIQUE KEY `uID` (`uID`,`wpID`),
  KEY `wpID` (`wpID`),
  CONSTRAINT `wordstats_ibfk_1` FOREIGN KEY (`wpID`) REFERENCES `wordpair` (`wpID`),
  CONSTRAINT `wordstats_ibfk_2` FOREIGN KEY (`uID`) REFERENCES `user` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-14 11:41:16
