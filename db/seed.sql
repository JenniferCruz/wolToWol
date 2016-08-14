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
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'verb',NULL),(2,'nationality',NULL),(3,'feelings','ways in which I can feel'),(4,'qualities','words to describe someone'),(5,'needs','things I desire');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `set_word_relation`
--

LOCK TABLES `set_word_relation` WRITE;
/*!40000 ALTER TABLE `set_word_relation` DISABLE KEYS */;
INSERT INTO `set_word_relation` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(2,32),(2,33),(2,34);
/*!40000 ALTER TABLE `set_word_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ricardo','Pacheco','ricardodpsx@gmail.com','12345','1987-09-26',NULL,'2016-08-14 15:37:33'),(2,'Jennifer','Cruz','jennifer.cruzz@gmail.com','12345','1987-06-21',NULL,'2016-08-14 15:37:33'),(3,'Anastasia','Pacheco','anathecat@cutecat.meow','12345','2014-09-19',NULL,'2016-08-14 15:37:33');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_category_word`
--

LOCK TABLES `user_category_word` WRITE;
/*!40000 ALTER TABLE `user_category_word` DISABLE KEYS */;
INSERT INTO `user_category_word` VALUES (1,1,8),(2,1,22),(2,1,25),(2,1,27),(2,1,31),(2,2,29),(2,2,30),(1,3,5),(1,3,6),(1,3,12),(1,3,13),(2,3,23),(1,4,2),(1,4,3),(1,4,7),(2,4,18),(2,4,21),(3,5,33),(3,5,34);
/*!40000 ALTER TABLE `user_category_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `wordpair`
--

LOCK TABLES `wordpair` WRITE;
/*!40000 ALTER TABLE `wordpair` DISABLE KEYS */;
INSERT INTO `wordpair` VALUES (1,'EN','SP','ramshackle','Destartalado'),(2,'EN','SP','pundits','Expertos'),(3,'EN','SP','Poignancy','Patetismo'),(4,'EN','SP','bric-a-brac','Baratijas'),(5,'EN','SP','Bleak','Sombrío'),(6,'EN','SP','Bleak','Desolado'),(7,'EN','SP','trenchant','Incisivo'),(8,'EN','SP','Confute','Refutar'),(9,'EN','SP','hoopla','Alboroto'),(10,'EN','SP','trifle','Minucia'),(11,'EN','SP','trifle','tontería'),(12,'EN','SP','befuddled','Perplejo'),(13,'EN','SP','tethered','Atado'),(14,'EN','SP','fiendishly','Diabólicamente'),(15,'EN','SP','boilerplate','Repetitivo'),(16,'EN','SP','caveat','Advertencia'),(17,'EN','SP','Foray','incursión'),(18,'EN','SP','Mawkish','empalagoso'),(19,'EN','SP','Punning','juegos de palabras'),(20,'EN','SP','Turf','Césped'),(21,'EN','SP','Lowbrow','de poca cultura'),(22,'EN','SP','Vaunt','Jactarse'),(23,'EN','SP','Sheepish','Vergonzoso'),(24,'EN','SP','Rote','rutina'),(25,'EN','SP','purvey','Proveer'),(26,'FR','EN','programming','programmation'),(27,'FR','EN','code','programmer'),(28,'FR','EN','hiking','Promenade'),(29,'FR','EN','Israel','Israël'),(30,'FR','EN','arab','arabe'),(31,'FR','EN','choose','choisir'),(32,'CAT','SP','Meow','Hola'),(33,'CAT','SP','Meeeeeeeow','Comida'),(34,'CAT','SP','Meoooooow','Atencion a mi');
/*!40000 ALTER TABLE `wordpair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `wordpairset`
--

LOCK TABLES `wordpairset` WRITE;
/*!40000 ALTER TABLE `wordpairset` DISABLE KEYS */;
INSERT INTO `wordpairset` VALUES (1,1,'Talk nicely','EN','SP',NULL,NULL),(2,3,'Cat to human','CAT','SP',NULL,'intermediate'),(3,2,'From Books','EN','SP','Vocabulary from books I read',NULL),(4,2,'B1 Level 1','FR','EN','Vocabulary from french classes','intermediate');
/*!40000 ALTER TABLE `wordpairset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `wordstats`
--

LOCK TABLES `wordstats` WRITE;
/*!40000 ALTER TABLE `wordstats` DISABLE KEYS */;
INSERT INTO `wordstats` VALUES (1,1,0,'2016-08-14 16:27:24',1,1),(2,3,0,'2016-08-14 16:35:35',3,1),(3,2,1,'2016-08-14 16:35:35',0,1),(4,0,0,'2016-08-14 16:36:05',0,1),(5,0,0,'2016-08-14 16:36:05',0,1),(6,4,1,'2016-08-14 16:36:05',3,1),(17,4,1,'2016-08-14 16:37:34',3,2),(18,4,1,'2016-08-14 16:37:34',3,2),(19,4,0,'2016-08-14 16:37:34',4,2),(25,4,0,'2016-08-14 16:37:34',4,2),(26,4,0,'2016-08-14 16:37:34',2,2),(27,0,NULL,'2016-08-14 16:37:34',0,2),(32,0,NULL,'2016-08-14 16:38:46',0,3),(33,4,0,'2016-08-14 16:38:46',4,3),(34,4,1,'2016-08-14 16:38:46',2,3);
/*!40000 ALTER TABLE `wordstats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-14 11:40:36
