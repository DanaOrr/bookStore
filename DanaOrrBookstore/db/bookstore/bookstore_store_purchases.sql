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
-- Table structure for table `store_purchases`
--

DROP TABLE IF EXISTS `store_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_purchases` (
  `id_store_purchases` int unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_books` int unsigned NOT NULL,
  `price` int unsigned NOT NULL,
  `origin` varchar(45) NOT NULL,
  PRIMARY KEY (`id_store_purchases`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_purchases`
--

LOCK TABLES `store_purchases` WRITE;
/*!40000 ALTER TABLE `store_purchases` DISABLE KEYS */;
INSERT INTO `store_purchases` VALUES (1,'2018-01-03',12647,10,'Client'),(2,'2018-05-22',12648,15,'Library'),(3,'2018-05-22',12649,25,'Library'),(4,'2018-12-12',12650,20,'Client'),(5,'2019-01-17',12651,30,'Client'),(6,'2019-02-03',12652,20,'Client'),(7,'2019-03-01',12653,30,'Library'),(8,'2019-04-16',12654,10,'Library'),(9,'2019-08-21',12655,45,'Client'),(10,'2019-09-30',12656,50,'Library'),(11,'2019-09-30',12657,20,'Library'),(12,'2019-11-24',12658,5,'Client'),(13,'2019-12-03',12659,30,'Client'),(14,'2020-01-12',12660,40,'Library'),(15,'2020-07-01',12664,40,'Client'),(16,'2019-08-02',12665,20,'Library'),(17,'2019-08-03',12666,22,'Client');
/*!40000 ALTER TABLE `store_purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02 21:03:54
