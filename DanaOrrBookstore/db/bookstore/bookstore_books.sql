-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id_books` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author_name` varchar(80) NOT NULL,
  `translator_name` varchar(80) DEFAULT NULL,
  `publisher_name` varchar(45) NOT NULL,
  `year_of_distribution` year NOT NULL,
  `pages_count` int unsigned NOT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `location` varchar(45) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `price` float unsigned DEFAULT NULL,
  `weight` float unsigned DEFAULT NULL,
  PRIMARY KEY (`id_books`)
) ENGINE=InnoDB AUTO_INCREMENT=12670 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (12647,'Dani Din Who Sees And Cannot Be Seen','Shraga Dafni',NULL,'M.Mizrahi',1961,138,'good','Warehouse','2018-01-03',20,0.32),(12648,'Harry Potter and the Philosopher\'s Stone','J. K Rolling','Gili Bar Hillel','Phroza',1997,318,'Poor','Store','2018-05-22',35,1.2),(12649,'Harry Potter and the Philosopher\'s Stone','J. K Rolling','Gili Bar Hillel','Bloomsbury',1997,223,'As new','out of stock','2018-05-22',45,0.89),(12650,'Harry Potter and the Order of the Phoenix','J. K Rolling','Gili Bar Hillel','Phroza',2003,887,'medium','out of stock','2018-12-12',50,1.7),(12651,'Yael\'s house','Miriam Ruth',NULL,'Workers\' Library',1977,30,'Brand new','Warehouse','2019-01-17',60,0.12),(12652,'Diary of a Wimpy Kid','Jeff Kinney','Julius Caesar','Kinneret Zmora Pavilion',2008,217,'medium','out of stock',NULL,54,0.86),(12653,'The Monk Who Sold His Ferrari','Robin Sharma','Ben Zion Herman','Harper Collins',1999,187,'medium','Warehouse','2019-03-01',50,0.6),(12654,'The lion that loved strawberry','Tirza Atar',NULL,'The United Kibbutz',2003,22,'As new','Store','2019-04-16',20,0.11),(12655,'A Song of Fire and Ice Game of Thrones','George R.R. Martin','Idit Shurer','Opus',1999,772,'good','Warehouse','2019-08-21',90,1.55),(12656,'A song of fire and ice confronting the kings','George R.R. Martin','Yael Sela-Shapiro','Opus',2000,896,'Brand new','out of stock','2019-09-30',100,1.82),(12657,'Yael\'s house','Miriam Ruth','','Workers\' Library',1977,30,'medium','out of stock','2019-09-30',45,0.12),(12658,'a tale of five balloons','Marina Rotenberg',NULL,'Workers\' Library',1974,32,'Poor','out of stock','2019-11-24',20,0.13),(12659,'Twilight','Stephanie Meyer',NULL,'Small and brown',2005,498,'As new','out of stock','2019-12-03',70,1.42),(12660,'new Moon','Stefan Lager',NULL,'Small and brown',2006,563,'good','out of stock','2020-01-12',66,1.46),(12661,'Ora the duplicated','Erich Kasztner','Cyrus Brooks','Publisher Ltd.',1949,87,'As new','out of stock',NULL,30,0.62),(12662,'Grimm\'s Fairy Tales','The Grimm Brothers','Enlightened score','Opus',2012,182,'As new','out of stock',NULL,50,0.87),(12663,'Alice in Wonderland','Lewis Carroll','Nissim Martin','McMillan',1917,387,'medium','Store','2020-06-24',45,0.64),(12664,'A Song of Fire and Ice Game of Thrones','George R.R. Martin','Ishyi Ribo','Opus',1999,772,'good','Store','2020-07-01',90,1.55),(12665,'The Hobbit','John Ronald','Moshe Naomi','George Allen',1937,389,'As new','out of stock','2019-08-02',80,1.2),(12666,'The Hobbit','John Ronald','Yael Achmon','Anvin',1950,389,'As new','out of stock','2019-08-03',80,1.2);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02 21:03:53
