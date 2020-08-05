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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id_employees` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(75) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `join_date` date NOT NULL,
  `currently_working` varchar(3) NOT NULL,
  `leave_date` date DEFAULT NULL,
  PRIMARY KEY (`id_employees`),
  UNIQUE KEY `id_employees_UNIQUE` (`id_employees`)
) ENGINE=InnoDB AUTO_INCREMENT=565 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Dana Orr','0503233702','Katzenelson 15 Kfar Saba','2018-01-01','Yes',NULL),(2,'Nicole Kapleyan','0508948199','Aharonovitch 17 Kfar Saba','2018-11-18','Yes',NULL),(3,'Yuval Orr','0546598760','Katzenelson 14 Kfar Saba','2019-01-01','Yes',NULL),(4,'Shai Ben David','0525801250','Hateena 8 Neve Yamin','2019-04-21','No','2019-11-30'),(5,'Aviv Kristal','0526490940','Bar Kochba 46 Herzliya','2019-05-20','No','2019-11-27'),(6,'Nir Hazan','0522263617','Tel Hai 93 Ramat Gan','2019-07-12','Yes',NULL),(7,'Lior Basil','0526998721','Tel Hai 77 Kfar Saba','2019-07-12','No','2020-01-02'),(8,'Judah Halevi','0539989899','Ahuza 18 Raanana','2019-09-25','No','2020-01-02'),(9,'Mai Edgar','0583357141','Weizmann 52 Raanana','2020-02-11','No','2020-02-18'),(10,'Einat Aharoni','0522589317','King\'s Road 75 Hod Hasharon','2020-07-01','Yes',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
