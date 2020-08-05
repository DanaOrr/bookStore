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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customers` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `id_card` int unsigned NOT NULL,
  `mobile_number` varchar(45) NOT NULL,
  `telephone_number` varchar(45) DEFAULT NULL,
  `join_date` date NOT NULL,
  PRIMARY KEY (`id_customers`),
  UNIQUE KEY `idcustomers_UNIQUE` (`id_customers`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (154,'Daniella','Orr',222,'0503233702','097677107','2018-01-20'),(155,'Youval','Orr',333,'0503233875','087821546','2018-02-06'),(156,'Nirush','Hazanush',434,'0548951254',NULL,'2018-04-17'),(157,'Liran','Dafadi',895,'0542178563',NULL,'2018-05-31'),(158,'Mor','Tahar',676,'0548125448','087863244','2018-09-14'),(159,'Adi','Aloni',874,'0524345458','095478312','2018-09-15'),(160,'Itzik','Cohen',173,'0545863214','094154574','2018-10-01'),(161,'Ilana','Ron',965,'0545877952','093556741','2018-10-01'),(162,'Haim','Gal',992,'0554789312','032615879','2018-10-26'),(163,'Ben','Hayak',823,'0550458711',NULL,'2018-12-14'),(164,'Ran','Dank',766,'0545478877','040694565','2019-03-22'),(165,'Bar','Brola',307,'0522358787','084514646','2019-04-20');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02 21:03:52
